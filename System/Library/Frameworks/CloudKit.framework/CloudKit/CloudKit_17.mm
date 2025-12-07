uint64_t sub_18864E50C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v15 = 138543618;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Received completion handler for activity %{public}@ with result %d", &v15, 0x12u);
  }

  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    if (!xpc_activity_set_state(*(a1 + 40), 3))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = 138543362;
        v16 = v14;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Failed to set state to DEFER for activity %{public}@", &v15, 0xCu);
      }
    }
  }

  else if (v5 == 1)
  {
    if (!xpc_activity_set_state(*(a1 + 40), 5))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v8 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v15 = 138543362;
        v16 = v13;
        _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Failed to set state to DONE for activity %{public}@", &v15, 0xCu);
      }
    }

    v9 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 48), v6, v7);
    objc_msgSend_removeObjectForKey_(v9, v10, *(a1 + 32));
  }

  return xpc_activity_remove_eligibility_changed_handler();
}

uint64_t sub_18864E864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18864E87C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_18864F51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18864F540(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = qword_1ED4B6000;
  v17 = qword_1ED4B6000;
  if (!qword_1ED4B6000)
  {
    v4 = sub_18865080C(a1, a2, a3);
    v15[3] = dlsym(v4, "_DASOverrideRateLimitingKey");
    qword_1ED4B6000 = v15[3];
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v3)
  {
    v7 = *v3;

    v8 = v7;
  }

  else
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, "NSString *get_DASOverrideRateLimitingKey(void)");
    v12 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v9, v13, v11, @"CKScheduler.m", 30, @"%s", v12);

    __break(1u);
  }
}

void sub_18864F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18864F6A4(void *a1, const char *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v6 = a3;
  v7 = xpc_dictionary_get_value(v5, a2);

  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v23 = a1[5];
      v24 = v8;
      v27 = objc_msgSend_identifier(v23, v25, v26);
      v28 = 138543618;
      v29 = v27;
      v30 = 2082;
      v31 = a2;
      _os_log_debug_impl(&dword_1883EA000, v24, OS_LOG_TYPE_DEBUG, "Overriding existing XPC activity criterion %{public}@ for key %{public}s", &v28, 0x16u);
    }
  }

  v9 = a1[4];
  v10 = xpc_copy(v6);
  xpc_dictionary_set_value(v9, a2, v10);

  v11 = a1[6];
  v12 = xpc_copy(v6);
  xpc_dictionary_set_value(v11, a2, v12);

  v13 = xpc_copy_short_description();
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    v16 = a1[5];
    v17 = v14;
    v20 = objc_msgSend_identifier(v16, v18, v19);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v21, v13);
    v28 = 138543874;
    v29 = v20;
    v30 = 2082;
    v31 = a2;
    v32 = 2112;
    v33 = v22;
    _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Adding additional XPC activity criterion for %{public}@: %{public}s %@", &v28, 0x20u);
  }

  free(v13);
  return 1;
}

void sub_188650354(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v7 = objc_opt_class();
    v9 = objc_msgSend_activityFromXPCActivity_(v7, v8, v6);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = 138543362;
      v15 = v13;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Couldn't find XPC activity for CK activity %{public}@", &v14, 0xCu);
    }
  }
}

void sub_18865056C(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v7 = xpc_activity_copy_criteria(v6);
    v8 = v7;
    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_int64(v7, "ck_scheduler_priority");
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 40);
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&dword_1883EA000, v11, OS_LOG_TYPE_INFO, "No criteria in XPC activity for %{public}@", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "Couldn't find XPC activity for CK activity %{public}@", &v13, 0xCu);
    }
  }
}

void *sub_1886507BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18865080C(a1, a2, a3);
  result = dlsym(v4, "_DASOverrideRateLimitingKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6000 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18865080C(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  if (!qword_1ED4B6008)
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = sub_188650960;
    v9[4] = &unk_1E70BC418;
    v9[5] = v9;
    v10 = xmmword_1E70C01B8;
    v11 = 0;
    qword_1ED4B6008 = _sl_dlopen();
  }

  v3 = qword_1ED4B6008;
  if (!qword_1ED4B6008)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *DuetActivitySchedulerLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v8, v7, @"CKScheduler.m", 27, @"%s", v9[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v9[0];
  if (v9[0])
  {
LABEL_7:
    free(v4);
  }

  return v3;
}

uint64_t sub_188650960(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED4B6008 = result;
  return result;
}

void *sub_1886509D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18865080C(a1, a2, a3);
  result = dlsym(v4, "_DASRateLimitConfigurationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B62F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_188650A24(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18865080C(a1, a2, a3);
  result = dlsym(v4, "_DASCKRateLimitConfigurationName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_188651198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = xpc_copy_short_description();
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, v5);
  v8 = *(a1 + 32);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, a2);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v11, v7, v10);

  free(v5);
  return 1;
}

void sub_18865182C(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  value = a3;
  v9 = objc_msgSend_UTF8String(a2, v7, v8);
  xpc_dictionary_set_value(v5, v9, value);
}

uint64_t sub_188651968(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v8 = objc_msgSend_stringWithUTF8String_(v5, v7, a2);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v9, v6, v8);

  return 1;
}

uint64_t CKSyncEngineDelegateShouldFetchChanges(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    ChangesForZoneID = objc_msgSend_syncEngine_shouldFetchChangesForZoneID_(v5, v8, v6, v7);
  }

  else
  {
    ChangesForZoneID = 1;
  }

  return ChangesForZoneID;
}

uint64_t CKSyncEngineDataSourceShouldFetchAssetContents(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    AssetContentsForZoneID = objc_msgSend_syncEngine_shouldFetchAssetContentsForZoneID_(v5, v8, v6, v7);
  }

  else
  {
    AssetContentsForZoneID = 1;
  }

  return AssetContentsForZoneID;
}

uint64_t sub_18865311C(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_CKClientSuitableError(a1, a2, a3);
  v7 = objc_msgSend_domain(v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x1E696A250]))
  {
    if (objc_msgSend_code(v4, v9, v10) == 4099)
    {

      goto LABEL_22;
    }

    v27 = objc_msgSend_code(v4, v11, v12);

    if (v27 == 4097)
    {
LABEL_22:
      v26 = 1;
      if (a2)
      {
        *a2 = 1;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v15 = objc_msgSend_domain(v4, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"CKErrorDomain");

  if (isEqualToString)
  {
    if (objc_msgSend_code(v4, v18, v19) == 2)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v22 = objc_msgSend_userInfo(v4, v20, v21);
      v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"CKPartialErrors");

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_188655734;
      v41[3] = &unk_1E70C02C8;
      v41[4] = &v42;
      v41[5] = a2;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v24, v25, v41);
      v26 = *(v43 + 24);

      _Block_object_dispose(&v42, 8);
      goto LABEL_26;
    }

    if (objc_msgSend_code(v4, v20, v21) == 1)
    {
      v30 = objc_msgSend_userInfo(v4, v28, v29);
      v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, *MEMORY[0x1E696AA08]);

      v35 = objc_msgSend_domain(v32, v33, v34);
      v37 = objc_msgSend_isEqualToString_(v35, v36, @"CKErrorDomain");

      if (v37)
      {
        v38 = v32;

        v4 = v38;
      }
    }

    v39 = objc_msgSend_code(v4, v28, v29);
    if (v39 <= 0x24)
    {
      if (((1 << v39) & 0x1000A002D8) != 0)
      {
        goto LABEL_22;
      }

      if (v39 == 20)
      {
        if (a2)
        {
          *a2 = 0;
        }

        v26 = 1;
        goto LABEL_26;
      }
    }

    if (v39 - 110 <= 5 && ((1 << (v39 - 110)) & 0x23) != 0)
    {
      goto LABEL_22;
    }
  }

  v26 = 0;
  if (a2)
  {
    *a2 = 0;
  }

LABEL_26:

  return v26 & 1;
}

void sub_1886533BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886533D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v11 = a2;
  objc_msgSend_syncEngine_failedToDeleteRecordWithID_error_(v5, v8, v6, v11, v7);
  objc_msgSend_addObject_(*(a1 + 48), v9, v11);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v10, v7, v11);
}

uint64_t sub_1886537DC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_recordID(a2, a2, a3);
  v6 = objc_msgSend_containsRecordID_(v3, v5, v4);

  return v6;
}

id sub_188653824(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_syncEngine_recordToSaveForRecordID_(*(a1 + 32), v4, *(a1 + 40), v3);
  if (!v5)
  {
    v6 = *(a1 + 48);
    v7 = [CKSyncEnginePendingRecordZoneChange alloc];
    v9 = objc_msgSend_initWithRecordID_type_(v7, v8, v3, 0);
    objc_msgSend_addObject_(v6, v10, v9);
  }

  return v5;
}

__CFString *CKStringFromSyncReason(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Manual";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Scheduled";
  }
}

uint64_t sub_188655734(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = sub_18865311C(a3, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

__CFString *CKStringFromSyncEngineAccountChangeType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C0308[a1];
  }
}

__CFString *CKStringFromZoneDeletionReason(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C0320[a1];
  }
}

uint64_t sub_18865B0F8(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 72), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 8), v4, v5);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 96), v6, v7);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 104), v8, v9);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 80), v10, v11);
  result = objc_msgSend_count(*(*(a1 + 32) + 120), v12, v13);
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void sub_18865B3E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AD98];
  DatabaseChanges = objc_msgSend_needsToFetchDatabaseChanges(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_numberWithBool_(v4, v6, DatabaseChanges);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, v7, @"needsToFetchDatabaseChanges");

  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_needsToSaveDatabaseSubscription(*(a1 + 40), v10, v11);
  v14 = objc_msgSend_numberWithBool_(v9, v13, v12);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v15, v14, @"needsToSaveDatabaseSubscription");

  if (objc_msgSend_hasPendingUntrackedChanges(*(a1 + 40), v16, v17))
  {
    v20 = MEMORY[0x1E696AD98];
    hasPendingUntrackedChanges = objc_msgSend_hasPendingUntrackedChanges(*(a1 + 40), v18, v19);
    v23 = objc_msgSend_numberWithBool_(v20, v22, hasPendingUntrackedChanges);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v24, v23, @"hasPendingUntrackedChanges");
  }

  if (objc_msgSend_hasInFlightUntrackedChanges(*(a1 + 40), v18, v19))
  {
    v27 = MEMORY[0x1E696AD98];
    v28 = objc_msgSend_hasInFlightUntrackedChanges(*(a1 + 40), v25, v26);
    v30 = objc_msgSend_numberWithBool_(v27, v29, v28);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v31, v30, @"hasInFlightUntrackedChanges");
  }

  v32 = *(a1 + 32);
  v33 = objc_msgSend_serverChangeTokenForDatabase(*(a1 + 40), v25, v26);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v32, v34, @"serverChangeTokenForDatabase", v33);

  v35 = *(a1 + 32);
  v38 = objc_msgSend_lastFetchDatabaseChangesDate(*(a1 + 40), v36, v37);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v35, v39, @"lastFetchDatabaseChangesDate", v38);

  v40 = *(a1 + 32);
  v43 = objc_msgSend_existingDatabaseSubscriptionID(*(a1 + 40), v41, v42);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v40, v44, @"existingDatabaseSubscriptionID", v43);

  v45 = *(a1 + 32);
  v48 = objc_msgSend_lastAccount(*(a1 + 40), v46, v47);
  v50 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v48, v49, *(a1 + 48), *(a1 + 49), *(a1 + 50));
  objc_msgSend_CKAddPropertySafelyForKey_value_(v45, v51, @"lastAccount", v50);

  v52 = *(a1 + 32);
  v55 = objc_msgSend_lastKnownUserRecordID(*(a1 + 40), v53, v54);
  v57 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v55, v56, *(a1 + 48), *(a1 + 49), *(a1 + 50));
  objc_msgSend_CKAddPropertySafelyForKey_value_(v52, v58, @"lastKnownUserRecordID", v57);

  v59 = *(a1 + 40);
  if (*(a1 + 50) == 1)
  {
    v60 = *(a1 + 32);
    if (v59)
    {
      v59 = v59[9];
    }

    v61 = v59;
    v64 = objc_msgSend_array(v61, v62, v63);
    v66 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v64, v65, *(a1 + 48), *(a1 + 49), *(a1 + 50));
    objc_msgSend_CKAddPropertySafelyForKey_value_(v60, v67, @"zoneIDsWithUnfetchedServerChanges", v66);

    v68 = *(a1 + 32);
    v71 = objc_msgSend_zoneState(*(a1 + 40), v69, v70);
    v73 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v71, v72, *(a1 + 48), *(a1 + 49), *(a1 + 50));
    objc_msgSend_CKAddPropertySafelyForKey_value_(v68, v74, @"zoneState", v73);

    v76 = *(a1 + 32);
    v75 = *(a1 + 40);
    if (v75)
    {
      v75 = v75[12];
    }

    v77 = *(a1 + 48);
    v78 = *(a1 + 49);
    v79 = *(a1 + 50);
    v80 = v75;
    v82 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v80, v81, v77, v78, v79);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v76, v83, @"pendingRecordZoneChanges", v82);

    v86 = *(a1 + 40);
    if (v86)
    {
      v87 = objc_msgSend_count(*(v86 + 104), v84, v85);
    }

    else
    {
      v87 = objc_msgSend_count(0, v84, v85);
    }

    if (v87)
    {
      v89 = *(a1 + 32);
      v88 = *(a1 + 40);
      if (v88)
      {
        v88 = v88[13];
      }

      v90 = *(a1 + 48);
      v91 = *(a1 + 49);
      v92 = *(a1 + 50);
      v93 = v88;
      v95 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v93, v94, v90, v91, v92);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v89, v96, @"inFlightRecordZoneChanges", v95);
    }

    v98 = *(a1 + 32);
    v97 = *(a1 + 40);
    if (v97)
    {
      v97 = v97[10];
    }

    v99 = *(a1 + 48);
    v100 = *(a1 + 49);
    v101 = *(a1 + 50);
    v102 = v97;
    v104 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v102, v103, v99, v100, v101);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v98, v105, @"pendingDatabaseChanges", v104);

    v108 = *(a1 + 40);
    if (v108)
    {
      v109 = objc_msgSend_count(*(v108 + 88), v106, v107);
    }

    else
    {
      v109 = objc_msgSend_count(0, v106, v107);
    }

    if (v109)
    {
      v111 = *(a1 + 32);
      v110 = *(a1 + 40);
      if (v110)
      {
        v110 = v110[11];
      }

      v112 = *(a1 + 48);
      v113 = *(a1 + 49);
      v114 = *(a1 + 50);
      v115 = v110;
      v117 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v115, v116, v112, v113, v114);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v111, v118, @"inFlightDatabaseChanges", v117);
    }

    v120 = *(a1 + 32);
    v119 = *(a1 + 40);
    if (v119)
    {
      v119 = v119[15];
    }

    v121 = *(a1 + 48);
    v122 = *(a1 + 49);
    v123 = *(a1 + 50);
    v124 = v119;
    v126 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v124, v125, v121, v122, v123);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v120, v127, @"pendingAssetSyncs", v126);

    v130 = *(a1 + 40);
    if (v130)
    {
      v131 = objc_msgSend_count(*(v130 + 128), v128, v129);
    }

    else
    {
      v131 = objc_msgSend_count(0, v128, v129);
    }

    if (v131)
    {
      v133 = *(a1 + 32);
      v132 = *(a1 + 40);
      if (v132)
      {
        v132 = v132[16];
      }

      v134 = *(a1 + 48);
      v135 = *(a1 + 49);
      v136 = *(a1 + 50);
      v137 = v132;
      v223 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v137, v138, v134, v135, v136);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v133, v139, @"inFlightAssetSyncs");
LABEL_56:
    }
  }

  else
  {
    v140 = MEMORY[0x1E696AD98];
    if (v59)
    {
      v59 = v59[9];
    }

    v141 = v59;
    v144 = objc_msgSend_count(v141, v142, v143);
    v146 = objc_msgSend_numberWithUnsignedInteger_(v140, v145, v144);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v147, v146, @"zoneIDsWithUnfetchedServerChanges.count");

    v148 = MEMORY[0x1E696AD98];
    v151 = objc_msgSend_zoneState(*(a1 + 40), v149, v150);
    v154 = objc_msgSend_count(v151, v152, v153);
    v156 = objc_msgSend_numberWithUnsignedInteger_(v148, v155, v154);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v157, v156, @"serverChangeTokensByZoneID.count");

    v158 = MEMORY[0x1E696AD98];
    v159 = *(a1 + 40);
    if (v159)
    {
      v159 = v159[12];
    }

    v160 = v159;
    v163 = objc_msgSend_count(v160, v161, v162);
    v165 = objc_msgSend_numberWithUnsignedInteger_(v158, v164, v163);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v166, v165, @"pendingRecordZoneChanges.count");

    v169 = *(a1 + 40);
    if (v169)
    {
      v170 = objc_msgSend_count(*(v169 + 104), v167, v168);
    }

    else
    {
      v170 = objc_msgSend_count(0, v167, v168);
    }

    if (v170)
    {
      v173 = MEMORY[0x1E696AD98];
      v174 = *(a1 + 40);
      if (v174)
      {
        v174 = v174[13];
      }

      v175 = v174;
      v178 = objc_msgSend_count(v175, v176, v177);
      v180 = objc_msgSend_numberWithUnsignedInteger_(v173, v179, v178);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v181, v180, @"inFlightRecordZoneChanges.count");
    }

    v182 = MEMORY[0x1E696AD98];
    v183 = objc_msgSend_pendingDatabaseChanges(*(a1 + 40), v171, v172);
    v186 = objc_msgSend_count(v183, v184, v185);
    v188 = objc_msgSend_numberWithUnsignedInteger_(v182, v187, v186);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v189, v188, @"pendingDatabaseChanges.count");

    v192 = *(a1 + 40);
    if (v192)
    {
      v193 = objc_msgSend_count(*(v192 + 88), v190, v191);
    }

    else
    {
      v193 = objc_msgSend_count(0, v190, v191);
    }

    if (v193)
    {
      v194 = MEMORY[0x1E696AD98];
      v195 = *(a1 + 40);
      if (v195)
      {
        v195 = v195[11];
      }

      v196 = v195;
      v199 = objc_msgSend_count(v196, v197, v198);
      v201 = objc_msgSend_numberWithUnsignedInteger_(v194, v200, v199);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v202, v201, @"inFlightDatabaseChanges.count");
    }

    v203 = MEMORY[0x1E696AD98];
    v204 = *(a1 + 40);
    if (v204)
    {
      v204 = v204[15];
    }

    v205 = v204;
    v208 = objc_msgSend_count(v205, v206, v207);
    v210 = objc_msgSend_numberWithUnsignedInteger_(v203, v209, v208);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v211, v210, @"pendingAssetSyncs.count");

    v214 = *(a1 + 40);
    if (v214)
    {
      v215 = objc_msgSend_count(*(v214 + 128), v212, v213);
    }

    else
    {
      v215 = objc_msgSend_count(0, v212, v213);
    }

    if (v215)
    {
      v216 = MEMORY[0x1E696AD98];
      v217 = *(a1 + 40);
      if (v217)
      {
        v217 = v217[16];
      }

      v137 = v217;
      v220 = objc_msgSend_count(v137, v218, v219);
      v223 = objc_msgSend_numberWithUnsignedInteger_(v216, v221, v220);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v222, v223, @"inFlightAssetSyncs.count");
      goto LABEL_56;
    }
  }
}

CKTuple2 *sub_18865CB70(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKTuple2 alloc];
  v6 = objc_msgSend_zoneID(v2, v4, v5);
  v8 = objc_msgSend_initWithObject1_object2_(v3, v7, v6, v2);

  return v8;
}

CKSyncEngineZoneState *sub_18865CBF0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [CKSyncEngineZoneState alloc];
  v8 = objc_msgSend_initWithZoneID_(v6, v7, v5);

  objc_msgSend_setServerChangeToken_(v8, v9, v4);

  return v8;
}

CKSyncEnginePendingZoneSave *sub_18865CC6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKSyncEnginePendingZoneSave alloc];
  v4 = [CKRecordZone alloc];
  v6 = objc_msgSend_initWithZoneID_(v4, v5, v2);

  v8 = objc_msgSend_initWithZone_(v3, v7, v6);

  return v8;
}

CKSyncEnginePendingZoneDelete *sub_18865CCF0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKSyncEnginePendingZoneDelete alloc];
  v5 = objc_msgSend_initWithZoneID_(v3, v4, v2);

  return v5;
}

void sub_18865CF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18865CF9C(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (v3)
  {
    v3 = *(v3 + 144);
  }

  *(*(a1[5] + 8) + 24) = v3;
  v4 = a1[4];
  v10 = 0;
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, v4, 1, &v10);
  v6 = v10;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Error serializing sync engine metadata: %@", buf, 0xCu);
    }
  }
}

void sub_18865D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865D328(uint64_t a1, const char *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 96), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v5, v8, v7);

  if ((isSubsetOfSet & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a1 + 40);
      v44 = v17;
      v47 = objc_msgSend_shortDescription(v43, v45, v46);
      v48 = *(a1 + 32);
      *buf = 138543618;
      v55 = v47;
      v56 = 2112;
      v57 = v48;
      _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "%{public}@ adding pending record zone changes: %@", buf, 0x16u);
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_msgSend_recordChangesWithOppositeTypeFromRecordChanges_(CKSyncEnginePendingRecordZoneChange, v18, *(a1 + 32));
    v12 = objc_msgSend_setWithArray_(v19, v21, v20);

    v23 = *(a1 + 40);
    if (v23)
    {
      objc_msgSend_minusSet_(*(v23 + 96), v22, v12);
    }

    else
    {
      objc_msgSend_minusSet_(0, v22, v12);
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      objc_msgSend_addObjectsFromArray_(*(v25 + 96), v24, *(a1 + 32));
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(0, v24, *(a1 + 32));
    }

    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v26, v27))
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v28 = *(a1 + 32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v49, v53, 16);
      if (v30)
      {
        v33 = v30;
        v34 = *v50;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v50 != v34)
            {
              objc_enumerationMutation(v28);
            }

            v36 = *(a1 + 40);
            v37 = objc_msgSend_recordID(*(*(&v49 + 1) + 8 * i), v31, v32, v49);
            v40 = objc_msgSend_zoneID(v37, v38, v39);
            objc_msgSend_trackPendingZoneIDDuringAutomaticSync_(v36, v41, v40);
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v49, v53, 16);
        }

        while (v33);
      }
    }

    v42 = *(a1 + 40);
    if (v42)
    {
      ++*(v42 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_28;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v15 = objc_msgSend_shortDescription(v11, v13, v14);
    v16 = *(a1 + 32);
    *buf = 138543618;
    v55 = v15;
    v56 = 2112;
    v57 = v16;
    _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new record zone changes to add: %@", buf, 0x16u);

LABEL_28:
  }
}

void sub_18865D770(uint64_t a1)
{
  *&v71[13] = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v51 = *(a1 + 32);
    v52 = v2;
    v55 = objc_msgSend_shortDescription(v51, v53, v54);
    v56 = *(a1 + 48);
    v57 = *(a1 + 40);
    v68 = 138543874;
    v69 = v55;
    v70 = 1024;
    *v71 = v56;
    v71[2] = 2112;
    *&v71[3] = v57;
    _os_log_debug_impl(&dword_1883EA000, v52, OS_LOG_TYPE_DEBUG, "%{public}@ marking record zone changes inFlight=%d: %@", &v68, 0x1Cu);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v6 = *(a1 + 48);
  v10 = objc_msgSend_count(v5, v7, v8);
  v11 = *(a1 + 32);
  if (v6 == 1)
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 96));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v14 = objc_msgSend_count(v5, v12, v13);
    v16 = v14 - v10;
    if (v14 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(a1 + 32);
        v59 = v17;
        v62 = objc_msgSend_shortDescription(v58, v60, v61);
        v68 = 138543618;
        v69 = v62;
        v70 = 2048;
        *v71 = v16;
        _os_log_debug_impl(&dword_1883EA000, v59, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld record zone changes in flight that aren't pending", &v68, 0x16u);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      objc_msgSend_minusOrderedSet_(*(v18 + 96), v15, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v15, v5);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      objc_msgSend_unionOrderedSet_(*(v20 + 104), v19, v5);
    }

    else
    {
      objc_msgSend_unionOrderedSet_(0, v19, v5);
    }
  }

  else
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 104));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v23 = objc_msgSend_count(v5, v21, v22);
    v25 = v23 - v10;
    if (v23 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v26 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v63 = *(a1 + 32);
        v64 = v26;
        v67 = objc_msgSend_shortDescription(v63, v65, v66);
        v68 = 138543618;
        v69 = v67;
        v70 = 2048;
        *v71 = v25;
        _os_log_debug_impl(&dword_1883EA000, v64, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld record zone changes as no longer in flight that aren't in flight", &v68, 0x16u);
      }
    }

    v27 = *(a1 + 32);
    if (v27)
    {
      objc_msgSend_minusOrderedSet_(*(v27 + 104), v24, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v24, v5);
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = *(a1 + 32);
    if (v31)
    {
      objc_msgSend_array(*(v31 + 96), v28, v29);
    }

    else
    {
      objc_msgSend_array(0, v28, v29);
    }
    v32 = ;
    v34 = objc_msgSend_recordChangesWithOppositeTypeFromRecordChanges_(CKSyncEnginePendingRecordZoneChange, v33, v32);
    v36 = objc_msgSend_setWithArray_(v30, v35, v34);

    objc_msgSend_minusSet_(v5, v37, v36);
    v38 = *(a1 + 32);
    if (v38)
    {
      v38 = v38[12];
    }

    v39 = v38;
    v42 = objc_msgSend_array(v5, v40, v41);
    v43 = MEMORY[0x1E696AC90];
    v46 = objc_msgSend_count(v5, v44, v45);
    v48 = objc_msgSend_indexSetWithIndexesInRange_(v43, v47, 0, v46);
    objc_msgSend_insertObjects_atIndexes_(v39, v49, v42, v48);
  }

  v50 = *(a1 + 32);
  if (v50)
  {
    ++*(v50 + 144);
  }
}

void sub_18865DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865DDAC(uint64_t a1, const char *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 96), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  v9 = objc_msgSend_intersectsSet_(v5, v8, v7);

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v10;
      v16 = objc_msgSend_shortDescription(v12, v14, v15);
      v17 = *(a1 + 32);
      *buf = 138543618;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending record zone changes: %@", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      objc_msgSend_minusSet_(*(v18 + 96), v11, v5);
    }

    else
    {
      objc_msgSend_minusSet_(0, v11, v5);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      ++*(v21 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v19, v20))
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = v5;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v40, 16);
      if (v24)
      {
        v27 = v24;
        v28 = *v37;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(a1 + 40);
            v31 = objc_msgSend_recordID(*(*(&v36 + 1) + 8 * i), v25, v26, v36);
            v34 = objc_msgSend_zoneID(v31, v32, v33);
            objc_msgSend_unTrackPendingZoneIDDuringAutomaticSync_(v30, v35, v34);
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v36, v40, 16);
        }

        while (v27);
      }
    }
  }
}

void *sub_18865E0F8(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v2;
    v11 = objc_msgSend_shortDescription(v7, v9, v10);
    v12 = *(a1 + 40);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ removing in flight record zone changes: %@", &v13, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    result = objc_msgSend_removeObjectsInArray_(*(v4 + 104), v3, *(a1 + 40));
  }

  else
  {
    result = objc_msgSend_removeObjectsInArray_(0, v3, *(a1 + 40));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    ++*(v6 + 144);
  }

  return result;
}

void sub_18865E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865E34C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v5 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v5, v4, v3);
}

void sub_18865E4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865E4C4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = a1[5];
  v5 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v5, v4, v3);
}

void sub_18865E6C8(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = v2;
    v25 = objc_msgSend_shortDescription(v21, v23, v24);
    v26 = *(a1 + 40);
    *buf = 138543618;
    v33 = v25;
    v34 = 2112;
    v35 = v26;
    _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ setting pending record zone changes: %@", buf, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_reverseObjectEnumerator(*(a1 + 40), v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (objc_msgSend_containsObject_(v5, v11, v15))
        {
          v17 = objc_msgSend_oppositeTypeChange(v15, v11, v16);
          objc_msgSend_removeObject_(v5, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v27, v31, 16);
    }

    while (v12);
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 96);
  *(v19 + 96) = v5;
}

void sub_18865E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865EA00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_18865EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865EBC4(uint64_t a1, const char *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 8), a2, *(a1 + 40));
  if (!v5)
  {
    if (*(a1 + 48))
    {
      v6 = [CKSyncEngineZoneState alloc];
      v5 = objc_msgSend_initWithZoneID_(v6, v7, *(a1 + 40));
      objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v8, v5, *(a1 + 40));
    }

    else
    {
      v5 = 0;
    }
  }

  v9 = objc_msgSend_serverChangeToken(v5, v3, v4);
  v10 = CKObjectsAreBothNilOrEqual(v9, *(a1 + 48));

  if ((v10 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = v11;
      v17 = objc_msgSend_shortDescription(v13, v15, v16);
      v18 = *(a1 + 48);
      v21 = objc_msgSend_ckShortDescription(*(a1 + 40), v19, v20);
      v24 = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "%{public}@ setting server change token %@ for zone ID %@", &v24, 0x20u);
    }

    objc_msgSend_setServerChangeToken_(v5, v12, *(a1 + 48));
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v22, v5, *(a1 + 40));
    v23 = *(a1 + 32);
    if (v23)
    {
      ++*(v23 + 144);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

id sub_18865EDAC(uint64_t a1, const char *a2, void *a3)
{
  v3 = objc_msgSend_copy(a3, a2, a3);

  return v3;
}

id sub_18865EDD8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_serverChangeToken(v3, v4, v5);

  if (v6)
  {
    v6 = objc_msgSend_serverChangeToken(v3, v7, v8);
  }

  return v6;
}

void sub_18865EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865EFA8(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a1[5]);
  if (v3)
  {
    v6 = a1[7];
    if (v6)
    {
      *v6 = 1;
    }

    v10 = v3;
    v7 = objc_msgSend_serverChangeToken(v3, v4, v5);
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void *sub_18865F1B8(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v8 = objc_msgSend_shortDescription(v4, v6, v7);
    v9 = *(a1 + 48);
    v12 = objc_msgSend_ckShortDescription(*(a1 + 40), v10, v11);
    v26 = 138543874;
    v27 = v8;
    v28 = 1024;
    v29 = v9;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setting needs to fetch changes %d for zone %@", &v26, 0x1Cu);
  }

  v13 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (v13)
    {
      result = objc_msgSend_containsObject_(*(v13 + 72), v3, *(a1 + 40));
    }

    else
    {
      result = objc_msgSend_containsObject_(0, v3, *(a1 + 40));
    }

    if ((result & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        objc_msgSend_addObject_(*(v16 + 72), v15, *(a1 + 40));
      }

      else
      {
        objc_msgSend_addObject_(0, v15, *(a1 + 40));
      }

      result = objc_msgSend_scheduledSyncInProgress(*(a1 + 32), v17, v18);
      if (result)
      {
        result = objc_msgSend_trackPendingZoneIDDuringAutomaticSync_(*(a1 + 32), v19, *(a1 + 40));
      }

LABEL_20:
      v25 = *(a1 + 32);
      if (v25)
      {
        ++*(v25 + 144);
      }
    }
  }

  else
  {
    if (v13)
    {
      result = objc_msgSend_containsObject_(*(v13 + 72), v3, *(a1 + 40));
    }

    else
    {
      result = objc_msgSend_containsObject_(0, v3, *(a1 + 40));
    }

    if (result)
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        objc_msgSend_removeObject_(*(v21 + 72), v20, *(a1 + 40));
      }

      else
      {
        objc_msgSend_removeObject_(0, v20, *(a1 + 40));
      }

      result = objc_msgSend_scheduledSyncInProgress(*(a1 + 32), v22, v23);
      if (result)
      {
        result = objc_msgSend_unTrackPendingZoneIDDuringAutomaticSync_(*(a1 + 32), v24, *(a1 + 40));
      }

      goto LABEL_20;
    }
  }

  return result;
}

void sub_18865F4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865F4C0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = a1[5];
  v5 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v5, v4, v3);
}

void sub_18865F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865F648(void *a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a1[5]);
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v7 = v4;
      v10 = objc_msgSend_shortDescription(v6, v8, v9);
      v13 = objc_msgSend_ckShortDescription(a1[5], v11, v12);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "%{public}@ handling deleted record zone %@", &v15, 0x16u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 8), v5, 0, a1[5]);
    v14 = a1[4];
    if (v14)
    {
      ++*(v14 + 144);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_18865F95C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = v2;
    v25 = objc_msgSend_shortDescription(v21, v23, v24);
    v26 = *(a1 + 40);
    *buf = 138543618;
    v33 = v25;
    v34 = 2112;
    v35 = v26;
    _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ setting pending database changes: %@", buf, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_reverseObjectEnumerator(*(a1 + 40), v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (objc_msgSend_containsObject_(v5, v11, v15))
        {
          v17 = objc_msgSend_oppositeTypeChange(v15, v11, v16);
          objc_msgSend_removeObject_(v5, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v27, v31, 16);
    }

    while (v12);
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 80);
  *(v19 + 80) = v5;
}

void sub_18865FD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865FD68(uint64_t a1, const char *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 80), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v5, v8, v7);

  if ((isSubsetOfSet & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v10;
      v16 = objc_msgSend_shortDescription(v12, v14, v15);
      v17 = *(a1 + 32);
      *buf = 138543618;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ adding pending database changes: %@", buf, 0x16u);
    }

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_msgSend_databaseChangesWithOppositeTypeFromDatabaseChanges_(CKSyncEnginePendingDatabaseChange, v11, *(a1 + 32));
    v21 = objc_msgSend_setWithArray_(v18, v20, v19);

    v23 = *(a1 + 40);
    if (v23)
    {
      objc_msgSend_minusSet_(*(v23 + 80), v22, v21);
    }

    else
    {
      objc_msgSend_minusSet_(0, v22, v21);
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      objc_msgSend_addObjectsFromArray_(*(v25 + 80), v24, *(a1 + 32));
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(0, v24, *(a1 + 32));
    }

    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v26, v27))
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v28 = *(a1 + 32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v40, v44, 16);
      if (v30)
      {
        v33 = v30;
        v34 = *v41;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v41 != v34)
            {
              objc_enumerationMutation(v28);
            }

            v36 = *(a1 + 40);
            v37 = objc_msgSend_zoneID(*(*(&v40 + 1) + 8 * i), v31, v32, v40);
            objc_msgSend_trackPendingZoneIDDuringAutomaticSync_(v36, v38, v37);
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v40, v44, 16);
        }

        while (v33);
      }
    }

    v39 = *(a1 + 40);
    if (v39)
    {
      ++*(v39 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_188660210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188660230(uint64_t a1, const char *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 80), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  v9 = objc_msgSend_intersectsSet_(v5, v8, v7);

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v10;
      v16 = objc_msgSend_shortDescription(v12, v14, v15);
      v17 = *(a1 + 32);
      *buf = 138543618;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending database changes: %@", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      objc_msgSend_minusSet_(*(v18 + 80), v11, v5);
    }

    else
    {
      objc_msgSend_minusSet_(0, v11, v5);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      ++*(v21 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v19, v20))
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = v5;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v33, v37, 16);
      if (v24)
      {
        v27 = v24;
        v28 = *v34;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(a1 + 40);
            v31 = objc_msgSend_zoneID(*(*(&v33 + 1) + 8 * i), v25, v26, v33);
            objc_msgSend_unTrackPendingZoneIDDuringAutomaticSync_(v30, v32, v31);
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v33, v37, 16);
        }

        while (v27);
      }
    }
  }
}

void sub_188660568(uint64_t a1)
{
  *&v71[13] = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v51 = *(a1 + 32);
    v52 = v2;
    v55 = objc_msgSend_shortDescription(v51, v53, v54);
    v56 = *(a1 + 48);
    v57 = *(a1 + 40);
    v68 = 138543874;
    v69 = v55;
    v70 = 1024;
    *v71 = v56;
    v71[2] = 2112;
    *&v71[3] = v57;
    _os_log_debug_impl(&dword_1883EA000, v52, OS_LOG_TYPE_DEBUG, "%{public}@ marking database changes inFlight=%d: %@", &v68, 0x1Cu);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v6 = *(a1 + 48);
  v10 = objc_msgSend_count(v5, v7, v8);
  v11 = *(a1 + 32);
  if (v6 == 1)
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 80));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v14 = objc_msgSend_count(v5, v12, v13);
    v16 = v14 - v10;
    if (v14 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(a1 + 32);
        v59 = v17;
        v62 = objc_msgSend_shortDescription(v58, v60, v61);
        v68 = 138543618;
        v69 = v62;
        v70 = 2048;
        *v71 = v16;
        _os_log_debug_impl(&dword_1883EA000, v59, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld database changes in flight that aren't pending", &v68, 0x16u);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      objc_msgSend_minusOrderedSet_(*(v18 + 80), v15, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v15, v5);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      objc_msgSend_unionOrderedSet_(*(v20 + 88), v19, v5);
    }

    else
    {
      objc_msgSend_unionOrderedSet_(0, v19, v5);
    }
  }

  else
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 88));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v23 = objc_msgSend_count(v5, v21, v22);
    v25 = v23 - v10;
    if (v23 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v26 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v63 = *(a1 + 32);
        v64 = v26;
        v67 = objc_msgSend_shortDescription(v63, v65, v66);
        v68 = 138543618;
        v69 = v67;
        v70 = 2048;
        *v71 = v25;
        _os_log_debug_impl(&dword_1883EA000, v64, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld database changes as no longer in flight that aren't in flight", &v68, 0x16u);
      }
    }

    v27 = *(a1 + 32);
    if (v27)
    {
      objc_msgSend_minusOrderedSet_(*(v27 + 88), v24, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v24, v5);
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = *(a1 + 32);
    if (v31)
    {
      objc_msgSend_array(*(v31 + 80), v28, v29);
    }

    else
    {
      objc_msgSend_array(0, v28, v29);
    }
    v32 = ;
    v34 = objc_msgSend_databaseChangesWithOppositeTypeFromDatabaseChanges_(CKSyncEnginePendingDatabaseChange, v33, v32);
    v36 = objc_msgSend_setWithArray_(v30, v35, v34);

    objc_msgSend_minusSet_(v5, v37, v36);
    v38 = *(a1 + 32);
    if (v38)
    {
      v38 = v38[10];
    }

    v39 = v38;
    v42 = objc_msgSend_array(v5, v40, v41);
    v43 = MEMORY[0x1E696AC90];
    v46 = objc_msgSend_count(v5, v44, v45);
    v48 = objc_msgSend_indexSetWithIndexesInRange_(v43, v47, 0, v46);
    objc_msgSend_insertObjects_atIndexes_(v39, v49, v42, v48);
  }

  v50 = *(a1 + 32);
  if (v50)
  {
    ++*(v50 + 144);
  }
}

void *sub_188660A64(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v2;
    v11 = objc_msgSend_shortDescription(v7, v9, v10);
    v12 = *(a1 + 40);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ removing in flight database changes: %@", &v13, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    result = objc_msgSend_removeObjectsInArray_(*(v4 + 88), v3, *(a1 + 40));
  }

  else
  {
    result = objc_msgSend_removeObjectsInArray_(0, v3, *(a1 + 40));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    ++*(v6 + 144);
  }

  return result;
}

void sub_188660F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188660F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[15];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_188661090(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v2;
    v12 = objc_msgSend_shortDescription(v8, v10, v11);
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ setting pending asset syncs: %@", &v14, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = v5;
}

void sub_1886613A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886613C8(uint64_t a1, const char *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 120), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v5, v8, v7);

  if (isSubsetOfSet)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v15 = objc_msgSend_shortDescription(v11, v13, v14);
      v16 = *(a1 + 32);
      *buf = 138543618;
      v42 = v15;
      v43 = 2112;
      v44 = v16;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new pending asset syncs to add: %@", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 40);
      v31 = v17;
      v34 = objc_msgSend_shortDescription(v30, v32, v33);
      v35 = *(a1 + 32);
      *buf = 138543618;
      v42 = v34;
      v43 = 2112;
      v44 = v35;
      _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ adding pending asset syncs: %@", buf, 0x16u);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      objc_msgSend_addObjectsFromArray_(*(v19 + 120), v18, *(a1 + 32));
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(0, v18, *(a1 + 32));
    }

    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v20, v21))
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = *(a1 + 32);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v36, v40, 16);
      if (v24)
      {
        v26 = v24;
        v27 = *v37;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v37 != v27)
            {
              objc_enumerationMutation(v22);
            }

            objc_msgSend_trackPendingAssetSyncDuringAutomaticSync_(*(a1 + 40), v25, *(*(&v36 + 1) + 8 * i), v36);
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v36, v40, 16);
        }

        while (v26);
      }
    }

    v29 = *(a1 + 40);
    if (v29)
    {
      ++*(v29 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_18866189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886618BC(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 120), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  v9 = objc_msgSend_intersectsSet_(v5, v8, v7);

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = v12;
      v18 = objc_msgSend_shortDescription(v14, v16, v17);
      v19 = *(a1 + 32);
      *buf = 138543618;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending asset syncs: %@", buf, 0x16u);
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      objc_msgSend_minusSet_(*(v20 + 120), v13, v5);
    }

    else
    {
      objc_msgSend_minusSet_(0, v13, v5);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      ++*(v21 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v10, v11))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v5;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v29, v33, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v30;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(v22);
          }

          objc_msgSend_unTrackPendingAssetSyncDuringAutomaticSync_(*(a1 + 40), v25, *(*(&v29 + 1) + 8 * i), v29);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v29, v33, 16);
      }

      while (v26);
    }
  }
}

void *sub_188661BD4(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = v2;
    v15 = objc_msgSend_shortDescription(v11, v13, v14);
    v16 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = 138543874;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ marking asset sync inFlight=%d: %@", &v18, 0x1Cu);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (v4)
    {
      objc_msgSend_removeObject_(*(v4 + 120), v3, *(a1 + 40));
    }

    else
    {
      objc_msgSend_removeObject_(0, v3, *(a1 + 40));
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      result = objc_msgSend_addObject_(*(v6 + 128), v5, *(a1 + 40));
    }

    else
    {
      result = objc_msgSend_addObject_(0, v5, *(a1 + 40));
    }
  }

  else
  {
    if (v4)
    {
      objc_msgSend_removeObject_(*(v4 + 128), v3, *(a1 + 40));
    }

    else
    {
      objc_msgSend_removeObject_(0, v3, *(a1 + 40));
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      result = objc_msgSend_insertObject_atIndex_(*(v9 + 120), v8, *(a1 + 40), 0);
    }

    else
    {
      result = objc_msgSend_insertObject_atIndex_(0, v8, *(a1 + 40), 0);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    ++*(v10 + 144);
  }

  return result;
}

void sub_188661FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866200C(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = objc_msgSend_pendingAutomaticSyncAssetSyncs(*(a1 + 32), v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = objc_msgSend_asset(v15, v10, v11);

        if (v16)
        {
          v17 = objc_msgSend_asset(v15, v10, v11);
          objc_msgSend_addObject_(v4, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v24, v28, 16);
    }

    while (v12);
  }

  v21 = objc_msgSend_copy(v4, v19, v20);
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;
}

void sub_18866228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886622A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = objc_msgSend_pendingAssetSyncs(*(a1 + 32), v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = objc_msgSend_asset(v15, v10, v11);

        if (v16)
        {
          v17 = objc_msgSend_asset(v15, v10, v11);
          objc_msgSend_addObject_(v4, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v24, v28, 16);
    }

    while (v12);
  }

  v21 = objc_msgSend_copy(v4, v19, v20);
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;
}

void sub_188662524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866253C(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[16];
  }

  v6 = v5;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = objc_msgSend_asset(v14, v9, v10, v23);

        if (v15)
        {
          v16 = objc_msgSend_asset(v14, v9, v10);
          objc_msgSend_addObject_(v4, v17, v16);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
    }

    while (v11);
  }

  v20 = objc_msgSend_copy(v4, v18, v19);
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

void sub_188662B30(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 24);
  v4 = *(a1 + 40);
  if (v4 != v3 && (objc_msgSend_isEqual_(v4, v2, v3) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v11 = objc_msgSend_shortDescription(v7, v9, v10);
      v12 = *(a1 + 40);
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ setting server change token for database: (%@)", &v13, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v6 = *(a1 + 32);
    if (v6)
    {
      ++*(v6 + 144);
    }
  }
}

void sub_188662D34(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 16))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v8 = objc_msgSend_shortDescription(v4, v6, v7);
      v9 = *(a1 + 40);
      v10 = *(a1 + 41);
      v11 = 138543874;
      v12 = v8;
      v13 = 1024;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ setting needs to fetch database changes %d with postStateUpdate %d", &v11, 0x18u);
    }

    *(*(a1 + 32) + 16) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }
}

void sub_188662F28(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 17))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v8 = objc_msgSend_shortDescription(v4, v6, v7);
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ setting needs to save database subscription %d", &v10, 0x12u);
    }

    *(*(a1 + 32) + 17) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }
}

void sub_188663130(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if ((objc_msgSend_isEqual_(*(a1 + 40), v3, v2) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = objc_msgSend_shortDescription(v5, v7, v8);
      v10 = *(a1 + 40);
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting lastAccount %@", &v14, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    v13 = *(a1 + 32);
    if (v13)
    {
      ++*(v13 + 144);
      objc_msgSend_purgeLegacyLastKnownUserRecordIDIfNecessary(*(a1 + 32), v11, v12);
    }

    else
    {
      objc_msgSend_purgeLegacyLastKnownUserRecordIDIfNecessary(0, v11, v12);
    }
  }
}

void sub_1886633A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886634AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886634C4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v8 = objc_msgSend_shortDescription(v4, v6, v7);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ purging legacy lastKnownUserRecordID %@", &v12, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v11 = *(a1 + 32);
    if (v11)
    {
      ++*(v11 + 144);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1886636F4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  if ((objc_msgSend_isEqual_(*(a1 + 40), v3, v2) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v4;
      v11 = objc_msgSend_shortDescription(v7, v9, v10);
      v14 = objc_msgSend_recordName(*(a1 + 40), v12, v13);
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setting lastKnownUserRecordID %@", &v18, 0x16u);
    }

    v15 = objc_msgSend_copy(*(a1 + 40), v5, v6);
    v16 = *(a1 + 32);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void sub_188663938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188663950(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != *(*(a1 + 32) + 18))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v7 = objc_msgSend_shortDescription(v3, v5, v6);
      v8 = *(a1 + 48);
      v11 = 138543618;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ setting has pending untracked changes %d", &v11, 0x12u);
    }

    v9 = *(a1 + 48);
    *(*(a1 + 32) + 18) = v9;
    v10 = *(a1 + 32);
    if (v10)
    {
      ++*(v10 + 144);
    }

    *(*(*(a1 + 40) + 8) + 24) = v9;
  }
}

void sub_188663B38(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 19))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v8 = objc_msgSend_shortDescription(v4, v6, v7);
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ setting has in-flight untracked changes %d", &v10, 0x12u);
    }

    *(*(a1 + 32) + 19) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }
}

void sub_188663D30(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    ++*(v2 + 144);
  }
}

void sub_188663EB4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 20))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v8 = objc_msgSend_shortDescription(v4, v6, v7);
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ setting scheduledSyncInProgress %d", &v10, 0x12u);
    }

    *(*(a1 + 32) + 20) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }
}

void sub_1886640CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188664224(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[14];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_1886643F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    return objc_msgSend_removeAllObjects(*(v3 + 112), a2, a3);
  }

  else
  {
    return objc_msgSend_removeAllObjects(0, a2, a3);
  }
}

void sub_188664524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866453C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[17];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_188664710(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    return objc_msgSend_removeAllObjects(*(v3 + 136), a2, a3);
  }

  else
  {
    return objc_msgSend_removeAllObjects(0, a2, a3);
  }
}

__CFString *CKSyncEnginePendingRecordZoneChangeTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"Delete";
  }

  else
  {
    return @"Save";
  }
}

__CFString *CKSyncEnginePendingDatabaseChangeTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"Delete";
  }

  else
  {
    return @"Save";
  }
}

id sub_188665F80(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_path(v3, v5, v6);
    v10 = objc_msgSend_CKSanitizedPath(v7, v8, v9);
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Vacuuming database at %{public}@", &v13, 0xCu);
  }

  result = sqlite3_exec(*(*(a1 + 32) + 136), "VACUUM", 0, 0, 0);
  if (result)
  {
    return objc_msgSend_handleDatabaseError_(*(a1 + 32), v12, @"Vacuum failed");
  }

  return result;
}

uint64_t sub_188666578(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3[32])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_invalid(v3, a2, a3);
  }
}

void sub_188666850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_188666884(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1886668B8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (*(v3 + 136))
    {
      v4 = objc_msgSend__performDatabaseOperation_locked_withErrorHandler_(v3, a2, *(a1 + 40), *(a1 + 48));
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (objc_msgSend_invalid(*(a1 + 32), v7, v8))
      {
        objc_msgSend__forceClosed_locked(*(a1 + 32), v9, v10);
        v13 = objc_msgSend_invalidationHandler(*(a1 + 32), v11, v12);
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        objc_msgSend_setInvalidationHandler_(*(a1 + 32), v16, 0);
      }

      v17 = *(a1 + 32);
      if (v17[64] == 1)
      {
        objc_msgSend_markCorrupt(v17, v9, v10);
        v17 = *(a1 + 32);
      }

      if (v17[65] == 1)
      {
        objc_msgSend_remove(v17, v9, v10);
      }
    }

    else
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 1, @"Database is closed");
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }
  }

  else
  {
    v18 = _Block_copy(*(v3 + 24));
    v19 = _Block_copy(*(a1 + 48));
    v20 = *(a1 + 32);
    v21 = *(v20 + 24);
    *(v20 + 24) = v19;

    (*(*(a1 + 40) + 16))();
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 40));
    v22 = _Block_copy(v18);
    v23 = *(a1 + 32);
    v24 = *(v23 + 24);
    *(v23 + 24) = v22;
  }

  *(*(a1 + 32) + 32) = 0;
  v28 = *(a1 + 32);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;
}

uint64_t sub_188666A88(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3[32])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_invalid(v3, a2, a3);
  }
}

void sub_188666D6C(uint64_t a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = objc_msgSend_select_from_where_bindings_(*(a1 + 32), v7, &unk_1EFA85B60, @"sqlite_master", @"type = ? AND name = ?", &unk_1EFA85B78);
  if (!objc_msgSend_count(v8, v9, v10))
  {
    objc_msgSend_executeSQL_(v5, v11, @"create table if not exists Properties (\n    key    text primary key,\n    value  text\n);\n");
  }

  v13 = objc_msgSend_dbUserVersion(*(a1 + 32), v11, v12);
  if ((v6[2](v6) & 1) == 0)
  {
    v17 = objc_msgSend_propertyForKey_(*(a1 + 32), v14, @"SchemaVersion");
    if (v17)
    {
      v18 = objc_msgSend_schemaVersion(*(a1 + 32), v15, v16);
      if (objc_msgSend_isEqualToString_(v17, v19, v18))
      {
        if (!objc_msgSend_userVersion(*(a1 + 32), v20, v21))
        {

LABEL_34:
          goto LABEL_35;
        }

        v24 = objc_msgSend_userVersion(*(a1 + 32), v22, v23);

        if (v13 == v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      v39 = objc_msgSend_delegate(*(a1 + 32), v25, v26);
      if (v39)
      {
        v42 = v39;
        v43 = objc_msgSend_delegate(*(a1 + 32), v40, v41);
        v45 = objc_msgSend_migrateDatabase_fromVersion_(v43, v44, *(a1 + 32), v13);

        if (v45)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v46 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v47 = *(a1 + 32);
            v48 = v47[10];
            loga = v46;
            v108 = objc_msgSend_CKSanitizedPath(v48, v49, v50);
            v53 = objc_msgSend_schemaVersion(*(a1 + 32), v51, v52);
            v56 = objc_msgSend_userVersion(*(a1 + 32), v54, v55);
            *buf = 134219266;
            v114 = v47;
            v115 = 2114;
            v116 = v108;
            v117 = 2114;
            v118 = v17;
            v119 = 2048;
            v120 = v13;
            v121 = 2114;
            v122 = v53;
            v123 = 2048;
            v124 = v56;
            _os_log_impl(&dword_1883EA000, loga, OS_LOG_TYPE_INFO, "Successfully migrated db (%p) at %{public}@ from schema/user version (%{public}@/0x%lx) to schema/user version (%{public}@/0x%lx)", buf, 0x3Eu);
          }

          *(*(a1 + 32) + 66) = 1;
        }
      }

      if (*(*(a1 + 32) + 66))
      {
        goto LABEL_29;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v57 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v60 = *(a1 + 32);
        v61 = v60[10];
        logb = v57;
        v109 = objc_msgSend_CKSanitizedPath(v61, v62, v63);
        v66 = objc_msgSend_schemaVersion(*(a1 + 32), v64, v65);
        v69 = objc_msgSend_userVersion(*(a1 + 32), v67, v68);
        *buf = 134219266;
        v114 = v60;
        v115 = 2114;
        v116 = v109;
        v117 = 2114;
        v118 = v17;
        v119 = 2114;
        v120 = v66;
        v121 = 2048;
        v122 = v13;
        v123 = 2048;
        v124 = v69;
        _os_log_impl(&dword_1883EA000, logb, OS_LOG_TYPE_INFO, "Re-creating db (%p) at %{public}@ because the schema-version (%{public}@/%{public}@) or the user-version (0x%lx/0x%lx) changed", buf, 0x3Eu);
      }

      objc_msgSend__dropAllTables(*(a1 + 32), v58, v59);
      *(*(a1 + 32) + 66) = 1;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v27 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 32);
        v29 = v28[10];
        log = v27;
        v32 = objc_msgSend_CKSanitizedPath(v29, v30, v31);
        v35 = objc_msgSend_schemaVersion(*(a1 + 32), v33, v34);
        v38 = objc_msgSend_userVersion(*(a1 + 32), v36, v37);
        *buf = 134218754;
        v114 = v28;
        v115 = 2114;
        v116 = v32;
        v117 = 2114;
        v118 = v35;
        v119 = 2048;
        v120 = v38;
        _os_log_debug_impl(&dword_1883EA000, log, OS_LOG_TYPE_DEBUG, "Creating a new db (%p) at %{public}@ with schema-version:%{public}@ and user-version:0x%lx", buf, 0x2Au);
      }
    }

    if (v6[2](v6))
    {
LABEL_30:
      if ((v6[2](v6) & 1) == 0)
      {
        v89 = *(a1 + 32);
        v90 = objc_msgSend_schemaVersion(v89, v87, v88);
        objc_msgSend_setProperty_forKey_(v89, v91, v90, @"SchemaVersion");

        if (objc_msgSend_userVersion(*(a1 + 32), v92, v93))
        {
          v13 = *(a1 + 32);
          v96 = objc_msgSend_userVersion(v13, v94, v95);
          objc_msgSend_executeSQL_(v13, v97, @"pragma user_version = %ld", v96);
          LODWORD(v13) = objc_msgSend_userVersion(*(a1 + 32), v98, v99);
        }
      }

      goto LABEL_35;
    }

    objc_msgSend_willCreateDatabase(*(a1 + 32), v70, v71);
    objc_msgSend_executeSQL_(*(a1 + 32), v72, @"create table if not exists Properties (\n    key    text primary key,\n    value  text\n);\n");
    v73 = *(a1 + 32);
    v76 = objc_msgSend_schema(v73, v74, v75);
    objc_msgSend_executeSQL_(v73, v77, @"%@", v76);

    v78 = MEMORY[0x1E696AEC0];
    v81 = objc_msgSend_date(MEMORY[0x1E695DF00], v79, v80);
    objc_msgSend_timeIntervalSinceReferenceDate(v81, v82, v83);
    v17 = objc_msgSend_stringWithFormat_(v78, v84, @"%f", v85);

    objc_msgSend_setProperty_forKey_(*(a1 + 32), v86, v17, @"Created");
LABEL_29:

    goto LABEL_30;
  }

LABEL_35:
  if ((v6[2](v6) & 1) == 0)
  {
    *(*(a1 + 32) + 144) = 1;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v100 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v101 = v100;
      v102 = objc_opt_class();
      v103 = NSStringFromClass(v102);
      v104 = *(a1 + 32);
      v107 = objc_msgSend_CKSanitizedPath(v104[10], v105, v106);
      *buf = 138544130;
      v114 = v103;
      v115 = 2048;
      v116 = v104;
      v117 = 2114;
      v118 = v107;
      v119 = 2048;
      v120 = v13;
      _os_log_impl(&dword_1883EA000, v101, OS_LOG_TYPE_INFO, "Opened db %{public}@<%p> at %{public}@ (user-version:0x%lx)", buf, 0x2Au);
    }
  }
}

void sub_188667584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866759C(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 80);
  v5 = *(a1 + 32);
  v6 = v5[18];
  if (v6)
  {
    if (!v5[17])
    {
      v76 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v76, v77, *(a1 + 48), *(a1 + 32), @"CKSQLite.m", 424, @"Missing handle for open cache db");

      v5 = *(a1 + 32);
      v6 = v5[18];
    }

    v7 = 0;
    v5[18] = v6 + 1;
    goto LABEL_14;
  }

  if (objc_msgSend_invalid(v5, v2, v3))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 1, @"Cannot reopen invalidated %@ instance", v11);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v7 = 0;
LABEL_14:

    return;
  }

  v7 = objc_msgSend_stringByDeletingLastPathComponent(*(*(a1 + 32) + 80), v8, v9);
  if (objc_msgSend_isCorrupt(*(a1 + 32), v16, v17))
  {
    v20 = objc_msgSend_CKSanitizedPath(v7, v18, v19);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 1, @"Database is corrupt: %@", v20);
    v37 = LABEL_13:;
    v38 = *(*(a1 + 40) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    goto LABEL_14;
  }

  v22 = *(*(a1 + 40) + 8);
  obj = *(v22 + 40);
  v23 = CKCreateDirectoryAtPathWithAttributes(v7, 0, &obj);
  objc_storeStrong((v22 + 40), obj);
  if ((v23 & 1) == 0)
  {
    v20 = objc_msgSend_CKSanitizedPath(v7, v24, v25);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v36, @"CKErrorDomain", 1, @"Error creating db dir at %@: %@", v20, *(*(*(a1 + 40) + 8) + 40));
    goto LABEL_13;
  }

  v26 = objc_msgSend_fileSystemRepresentation(v4, v24, v25);
  v27 = sqlite3_open_v2(v26, (*(a1 + 32) + 136), 3145734, 0);
  if (v27)
  {
    v30 = v27;
    v31 = objc_msgSend_CKSanitizedPath(*(*(a1 + 32) + 80), v28, v29);
    v33 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v32, @"CKErrorDomain", 1, @"Error opening db at %@, rc=%d(0x%x)", v31, v30, v30);
    v34 = *(*(a1 + 40) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    goto LABEL_14;
  }

  sqlite3_extended_result_codes(*(*(a1 + 32) + 136), 1);
  if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_busy_timeout(*(*(a1 + 32) + 136), 300000))
  {
    v42 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v40, *(*(a1 + 32) + 136), @"Error setting the db busy timeout");
    v43 = *(*(a1 + 40) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;
  }

  if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_exec(*(*(a1 + 32) + 136), "pragma journal_mode = WAL", 0, 0, 0))
  {
    v45 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v40, *(*(a1 + 32) + 136), @"Error setting pragma journal_mode = WAL");
    v46 = *(*(a1 + 40) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v45;
  }

  v48 = objc_msgSend_synchronousMode(*(a1 + 32), v40, v41);
  if (v48 < 3)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v51 = off_1E70C08D0[v48];
      if (sqlite3_exec(*(*(a1 + 32) + 136), v51, 0, 0, 0))
      {
        v52 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v49, *(*(a1 + 32) + 136), @"Error setting %s", v51);
        v53 = *(*(a1 + 40) + 8);
        v54 = *(v53 + 40);
        *(v53 + 40) = v52;
      }
    }

    if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_exec(*(*(a1 + 32) + 136), "pragma auto_vacuum = FULL", 0, 0, 0))
    {
      v55 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v49, *(*(a1 + 32) + 136), @"Error setting pragma auto_vacuum = FULL");
      v56 = *(*(a1 + 40) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = v55;
    }

    if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_exec(*(*(a1 + 32) + 136), "pragma foreign_keys = 1", 0, 0, 0))
    {
      v58 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v49, *(*(a1 + 32) + 136), @"Error setting pragma foreign_keys = 1");
      v59 = *(*(a1 + 40) + 8);
      v60 = *(v59 + 40);
      *(v59 + 40) = v58;
    }

    if (*(*(*(a1 + 40) + 8) + 40) || (objc_msgSend__prepareDatabase(*(a1 + 32), v49, v50), v61 = objc_claimAutoreleasedReturnValue(), v62 = *(*(a1 + 40) + 8), v63 = *(v62 + 40), *(v62 + 40) = v61, v63, *(*(*(a1 + 40) + 8) + 40)))
    {
      objc_msgSend__forceClosed_locked(*(a1 + 32), v49, v50);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v64 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        v68 = v64;
        v69 = objc_opt_class();
        v70 = NSStringFromClass(v69);
        v71 = *(a1 + 32);
        v74 = objc_msgSend_CKSanitizedPath(*(v71 + 80), v72, v73);
        v75 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138413058;
        v80 = v70;
        v81 = 2048;
        v82 = v71;
        v83 = 2112;
        v84 = v74;
        v85 = 2112;
        v86 = v75;
        _os_log_error_impl(&dword_1883EA000, v68, OS_LOG_TYPE_ERROR, "Failed to open db %@<%p> at %@. Error: %@", buf, 0x2Au);
      }
    }

    if (objc_msgSend_shouldVacuum(*(a1 + 32), v49, v50) && !*(*(*(a1 + 40) + 8) + 40) && _sqlite3_maintain_load_factor())
    {
      v66 = objc_msgSend_sqlErrorWithMessage_(*(a1 + 32), v65, @"_sqlite3_maintain_load_factor failed");
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v67 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v80 = v66;
        _os_log_fault_impl(&dword_1883EA000, v67, OS_LOG_TYPE_FAULT, "Failed to enable automatic incremental vacuum: %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_188667FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188667FDC(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 136))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(*(a1 + 32) + 80);
      v16 = v2;
      v19 = objc_msgSend_CKSanitizedPath(v15, v17, v18);
      *buf = 138543362;
      v26 = v19;
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Removing db at %{public}@", buf, 0xCu);
    }

    v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
    objc_msgSend_removeItemAtPath_error_(v5, v6, *(*(a1 + 32) + 80), 0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85B48, v7, &v20, v24, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(&unk_1EFA85B48);
          }

          v13 = objc_msgSend_stringByAppendingString_(*(*(a1 + 32) + 80), v9, *(*(&v20 + 1) + 8 * i));
          objc_msgSend_removeItemAtPath_error_(v5, v14, v13, 0);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EFA85B48, v9, &v20, v24, 16);
      }

      while (v10);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_188668260(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2080;
    v13 = a4;
    _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "%@ sql stmt:'%s'", &v10, 0x16u);
    if ((a1 & 8) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_10;
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "%@ sql close", &v10, 0xCu);
  }

LABEL_10:

  return 0;
}

void sub_1886687B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18866885C;
  v9[3] = &unk_1E70C05B8;
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v5;
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v8, @"select name from sqlite_master where type = 'table'", v9);
}

void sub_18866885C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    do
    {
      if (!sub_188400120(v6))
      {
        break;
      }

      v4 = sub_188680A00(v6, 0, v3);
      objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v5, v4);
    }

    while (!(*(*(a1 + 32) + 16))());
  }
}

uint64_t sub_188668900(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  return 1;
}

void sub_1886689A8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = objc_msgSend_allTableNames(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v13, v17, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_executeSQL_(v3, v9, @"drop table %@", *(*(&v13 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v13, v17, 16);
    }

    while (v10);
  }
}

void sub_188668C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188668C44(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188668CE0;
  v7[3] = &unk_1E70C0630;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v6, @"select value from Properties where key = ?", v7);
}

void sub_188668CE0(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_msgSend_bindText_atIndex_(v8, v3, *(a1 + 32), 0);
  if (sub_188400120(v8))
  {
    v5 = sub_188680A00(v8, 0, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_188668E84(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188668F30;
  v5[3] = &unk_1E70C0680;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v4, @"insert or replace into Properties (key, value) values (?,?)", v5);
}

void sub_188668F30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_bindText_atIndex_(v6, v4, v3, 0);
  objc_msgSend_bindText_atIndex_(v6, v5, *(a1 + 40), 1);
  sub_188400120(v6);
}

void sub_1886691BC(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188669250;
  v4[3] = &unk_1E70C06D0;
  v5 = *(a1 + 32);
  objc_msgSend_usingStatementForSQL_performBlock_(a2, v3, @"delete from Properties where key = ?", v4);
}

void sub_188669250(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_bindText_atIndex_(v4, v3, v2, 0);
  sub_188400120(v4);
}

void sub_1886694C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"pragma table_info(%@)", *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1886695A8;
  v10[3] = &unk_1E70C0720;
  v12 = v4;
  v7 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = v4;
  objc_msgSend_usingStatementForSQL_performBlock_(v7, v9, v6, v10);
}

void sub_1886695A8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    do
    {
      if (!sub_188400120(v7))
      {
        break;
      }

      v4 = *(a1 + 32);
      v5 = sub_188680A00(v7, 1, v3);
      objc_msgSend_addObject_(v4, v6, v5);
    }

    while (!(*(*(a1 + 40) + 16))());
  }
}

void sub_188669A80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    sub_18868089C(v3, v5);
  }

  if (sub_188400120(v4))
  {
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v9 = sub_188400C40(v4, v7, v8);
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = 0;
        (*(v10 + 16))(v10, v9, &v11);
        if (v11)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v6);
      if ((sub_188400120(v4) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    objc_autoreleasePoolPop(v6);
  }

LABEL_9:
}

void sub_188669D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188669D9C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188669E70;
  v14[3] = &unk_1E70C0748;
  v11 = a1[8];
  v10 = a1[9];
  v15 = v5;
  v16 = v10;
  v12 = v5;
  objc_msgSend_select_from_where_bindings_orderBy_limit_block_(a2, v13, v6, v7, v8, v9, v11, 0, v14);
}

void sub_188669E70(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    *a3 = 1;
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v5, v8);
  }
}

void sub_18866A110(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_18868089C(v4, *(a1 + 32));
  while (1)
  {
    if (v4)
    {
      v3 = v4[5];
      if (v3)
      {
        break;
      }
    }

    if ((sub_188400120(v4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
}

void sub_18866A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866A4F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_18868089C(v4, v3);
  sub_188400120(v4);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_lastInsertRowID(*(a1 + 40), v7, v8);
  }
}

void sub_18866A954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866A96C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_18868089C(v4, v3);
  sub_188400120(v4);
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_lastInsertRowID(*(a1 + 40), v7, v8);
  }
}

void sub_18866AAE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  sub_18868089C(v3, v2);
  sub_188400120(v3);
}

void sub_18866AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866B000(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = a2;
  v10 = objc_msgSend__tableNameForClass_(v6, v9, v7);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"delete from %@ where %@", v10, *(a1 + 40));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_18866B120;
  v18[3] = &unk_1E70C07C0;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v21 = v5;
  v22 = v14;
  v15 = *(a1 + 32);
  v19 = v13;
  v20 = v15;
  v16 = v5;
  objc_msgSend_usingStatementForSQL_performBlock_(v8, v17, v12, v18);
}

uint64_t sub_18866B120(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_18868089C(v4, v3);
  sub_188400120(v4);

  result = (*(*(a1 + 48) + 16))();
  if ((result & 1) == 0)
  {
    result = objc_msgSend_changes(*(a1 + 40), v6, v7);
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

void sub_18866B3EC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18866B4EC;
  v17[3] = &unk_1E70C0810;
  v10 = a1[8];
  v11 = a1[9];
  v20 = v5;
  v17[4] = v10;
  v12 = v11;
  v14 = a1[10];
  v13 = a1[11];
  v18 = v12;
  v21 = v13;
  v19 = v14;
  v15 = v5;
  objc_msgSend_selectFrom_where_bindings_orderBy_limit_block_(a2, v16, v6, v7, v9, 0, v8, v17);
}

void sub_18866B4EC(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if ((*(*(a1 + 56) + 16))())
  {
    *a3 = 1;
  }

  else
  {
    v6 = objc_msgSend__boxedPropertyDictionary_forObjCClass_(*(a1 + 32), v5, v11, *(a1 + 40));
    v7 = objc_alloc(*(a1 + 64));
    v9 = objc_msgSend_initWithPropertyDictionary_(v7, v8, v6);
    objc_msgSend_addObject_(*(a1 + 48), v10, v9);
  }
}

void sub_18866B71C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v8 = objc_msgSend__boxedPropertyDictionary_forObjCClass_(*(a1 + 32), v7, v5, *(a1 + 40));
  v9 = objc_alloc(*(a1 + 56));
  v11 = objc_msgSend_initWithPropertyDictionary_(v9, v10, v8);
  v14 = 0;
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, &v14);
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;

  objc_autoreleasePoolPop(v6);
}

id sub_18866BA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v8 = objc_msgSend_propertyForName_(v5, v7, a2);
  v10 = objc_msgSend__boxedValue_forObjcCProperty_(v4, v9, v6, v8);

  return v10;
}

void sub_18866BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866BE04(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18866BE80;
  v3[3] = &unk_1E70C08B0;
  v3[4] = *(a1 + 32);
  return objc_msgSend_usingStatementForSQL_performBlock_(a2, a2, @"pragma user_version", v3);
}

void sub_18866BE80(uint64_t a1, void *a2)
{
  v4 = a2;
  if (sub_188400120(v4))
  {
    do
    {
      *(*(*(a1 + 32) + 8) + 24) = sub_18868093C(v4, 0, v3);
    }

    while ((sub_188400120(v4) & 1) != 0);
  }
}

id *sub_18866C204(id *result, const char *a2, char a3)
{
  if (a3 < 0)
  {
    return objc_msgSend_addObject_(result[4], a2, a2);
  }

  return result;
}

void sub_18866C938(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_msgSend_orderAscendingByProperty_(v3, v4, @"expirationDate");
  v7 = objc_msgSend_primaryKey(*(a1 + 32), v5, v6);
  v11[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v11, 1);
  objc_msgSend_setFetchedProperties_(v3, v10, v9);
}

void sub_18866CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866CCE8(void *a1, const char *a2)
{
  v3 = a1[4];
  v9 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18866CD98;
  v8[3] = &unk_1E70C0940;
  v4 = a1[6];
  v8[4] = v3;
  v8[5] = v4;
  v5 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(v3, a2, 0, 0, &v9, v8);
  v6 = v9;
  *(*(a1[5] + 8) + 24) = v5;

  return 0;
}

id sub_18866CD98(uint64_t a1, const char *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_primaryKey(*(a1 + 32), a2, a3);
  v25[0] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v25, 1);

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_18866CEFC;
  v22 = &unk_1E70C0918;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v23 = v6;
  v24 = v7;
  v9 = v6;
  v11 = objc_msgSend_entriesWithValues_label_setupBlock_(v8, v10, 0, 0, &v19);
  v12 = MEMORY[0x1E696AE18];
  v15 = objc_msgSend_primaryKey(*(a1 + 32), v13, v14);
  v17 = objc_msgSend_predicateWithFormat_(v12, v16, @"%@ IN %@", v15, v11, v19, v20, v21, v22);

  return v17;
}

void sub_18866CEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_orderAscendingByProperty_(v3, v4, @"expirationDate");
  objc_msgSend_setFetchedProperties_(v3, v5, *(a1 + 32));
  v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, *(a1 + 40));
  objc_msgSend_setLimit_(v3, v7, v8);
}

void sub_18866D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866D1B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_oldestFirstEnumerator(*(a1 + 32), a2, a3);
  v7 = 0;
  do
  {
    v8 = v7;
    v7 = objc_msgSend_nextObject(v6, v4, v5);

    if (!v7)
    {
      break;
    }

    v10 = objc_msgSend_deleteObject_(*(a1 + 32), v9, v7);
    v12 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 80), v11, *(a1 + 40));
    ++*(*(*(a1 + 48) + 8) + 24);
    v15 = objc_msgSend_dataSize(*(a1 + 40), v13, v14);
    v18 = objc_msgSend_unsignedLongLongValue(v15, v16, v17);
    v19 = *(*(a1 + 32) + 104);
  }

  while (v18 > v19);

  return 0;
}

void sub_18866D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18866D4AC(void *a1, const char *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v11 = @"EXPIRE_DATE";
  v12[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  v5 = a1[5];
  v10 = 0;
  v7 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(v5, v6, v4, off_1EA910BD8, &v10, &unk_1EFA2FEA8);
  v8 = v10;
  *(*(a1[6] + 8) + 24) = v7;

  return 0;
}

void sub_18866D6CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_trackingEntry(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);
  if (*(v5 + 96))
  {
    v6 = v5;
    v9 = objc_msgSend_entryCount(v4, v7, v8);
    v12 = objc_msgSend_unsignedLongLongValue(v9, v10, v11);
    v13 = v6[12];

    if (v12 > v13)
    {
      goto LABEL_9;
    }

    v5 = *(a1 + 32);
  }

  if (*(v5 + 112) == 0.0)
  {
LABEL_7:
    if (!*(v5 + 104))
    {
      goto LABEL_14;
    }

    v21 = v5;
    v24 = objc_msgSend_dataSize(v4, v22, v23);
    v27 = objc_msgSend_unsignedLongLongValue(v24, v25, v26);
    v28 = v21[13];

    if (v27 <= v28)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v14 = *(a1 + 40);
  v17 = objc_msgSend_oldestExpireDate(v4, v15, v16);
  objc_msgSend_timeIntervalSinceDate_(v17, v18, v14);
  v20 = v19;

  if (v20 >= 0.0)
  {
    v5 = *(a1 + 32);
    goto LABEL_7;
  }

LABEL_9:
  v29 = *(a1 + 32);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_18866D91C;
  v40[3] = &unk_1E70C09B8;
  v40[4] = v29;
  v30 = v4;
  v41 = v30;
  v42 = *(a1 + 40);
  v32 = objc_msgSend_performTransaction_(v29, v31, v40);
  v34 = *(a1 + 32);
  if (v34[14] != 0.0)
  {
    v35 = objc_msgSend_minimumValueOfProperty_label_error_(v34, v33, @"expirationDate", off_1EA910BF0, 0);
    v37 = objc_msgSend_updateEntryOldestExpireDate_oldestExpirationDate_(*(*(a1 + 32) + 80), v36, v30, v35);
    if (v35)
    {
      v39 = objc_msgSend_requestCallbackWithDate_coalescingInterval_minimumSeparation_(*(a1 + 32), v38, v35, *(*(a1 + 32) + 120), *(*(a1 + 32) + 120));
    }
  }

LABEL_14:
}

uint64_t sub_18866D91C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 112) == 0.0 || (v3 = *(a1 + 40), v4 = *(a1 + 48), objc_msgSend_oldestExpireDate(v3, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceDate_(v7, v8, v4), v10 = v9, v4, v7, v2 = *(a1 + 32), v10 >= 0.0))
  {
    v12 = 0;
  }

  else
  {
    objc_msgSend_expireByTime_(v2, v11, *(a1 + 48));
    v2 = *(a1 + 32);
    v12 = 1;
  }

  if (*(v2 + 96))
  {
    v13 = *(a1 + 40);
    v14 = v2;
    v17 = objc_msgSend_entryCount(v13, v15, v16);
    v20 = objc_msgSend_unsignedLongLongValue(v17, v18, v19);
    v21 = v14[12];

    if (v20 > v21)
    {
      if (v12)
      {
        v23 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 80), v22, *(a1 + 40));
      }

      objc_msgSend_expireByCount_(*(a1 + 32), v22, *(a1 + 40));
      v12 = 1;
    }
  }

  v24 = *(a1 + 32);
  if (v24[13])
  {
    v25 = *(a1 + 40);
    v26 = v24;
    v29 = objc_msgSend_dataSize(v25, v27, v28);
    v32 = objc_msgSend_unsignedLongLongValue(v29, v30, v31);
    v33 = v26[13];

    if (v32 > v33)
    {
      if (v12)
      {
        v35 = objc_msgSend_fetchAllProperties_(*(*(a1 + 32) + 80), v34, *(a1 + 40));
      }

      objc_msgSend_expireByDataSize_(*(a1 + 32), v34, *(a1 + 40));
    }
  }

  return 0;
}

void *sub_18866DB48(uint64_t a1, const char *a2)
{
  result = objc_msgSend_expire_(*(a1 + 32), a2, *(a1 + 40));
  *(*(a1 + 32) + 89) = 0;
  return result;
}

id sub_18866DE10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = CKSQLiteCacheTable;
  v5 = objc_msgSendSuper2(&v7, sel_insertObject_, v2);
  if (!v5)
  {
    objc_msgSend_transactionExpireCheck(*(a1 + 40), v3, v4);
  }

  return v5;
}

id sub_18866DFB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9.receiver = *(a1 + 48);
  v9.super_class = CKSQLiteCacheTable;
  v7 = objc_msgSendSuper2(&v9, sel_insertObject_orUpdateProperties_label_, v2, v3, v4);
  if (!v7)
  {
    objc_msgSend_transactionExpireCheck(*(a1 + 48), v5, v6);
  }

  return v7;
}

void sub_18866E1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18866E1BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  v12.receiver = *(a1 + 56);
  v12.super_class = CKSQLiteCacheTable;
  v13 = 0;
  v7 = objc_msgSendSuper2(&v12, sel_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_, v2, v3, v4, v5, &v13, v6);
  v10 = v13;
  *(*(*(a1 + 72) + 8) + 24) = v7;
  if (!v10)
  {
    objc_msgSend_transactionExpireCheck(*(a1 + 56), v8, v9);
  }

  return v10;
}

void *sub_18866E5D4(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return objc_msgSend_setObject_forKey_(*(result[4] + 16), a2, a4, a2);
  }

  return result;
}

void sub_18866F29C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a1)
  {
    *(a1 + 80) = 1;
    v8 = a2;
    v5 = objc_opt_class();
    v6 = (class_getInstanceSize(v5) + a1);
    v7 = *(a1 + 80);
    *v6 = v8;
    LODWORD(v6[v7]) = a3;
  }
}

void sub_18866F4F0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  CFRetain(v6);
  *(*(a1 + 32) + 8 * a3) = v6;
  *(*(a1 + 40) + 4 * a3) = objc_msgSend_propertyInfo_(*(a1 + 48), v5, v6);
}

id sub_188670784(uint64_t a1, SEL aSelector)
{
  v2 = NSStringFromSelector(aSelector);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v5, @"CKErrorDomain", 1, @"%@ not implemented for %@", v2, v4);

  return v6;
}

id sub_1886708A4(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  objc_msgSend_appendString_(v4, v5, @"(");
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    v12 = 1;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ((v12 & 1) == 0)
        {
          objc_msgSend_appendString_(v4, v9, @",", v19);
        }

        v15 = objc_msgSend_cksqlcs_appendSQLConstantValueToString_(v14, v9, v4, v19);
        if (v15)
        {
          v17 = v15;

          goto LABEL_13;
        }

        v12 = 0;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
      v12 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_appendString_(v4, v16, @""));
  v17 = 0;
LABEL_13:

  return v17;
}

id sub_188670A3C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_selector(a1, v8, v9) == sel_bitwiseAnd_with_)
  {
    v12 = objc_msgSend_arguments(a1, v10, v11);
    v15 = v6;
    v16 = v7;
    objc_msgSend_appendString_(v15, v17, @"(");
    v19 = objc_msgSend_objectAtIndexedSubscript_(v12, v18, 0);
    v14 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v19, v20, v15, v16);

    if (!v14)
    {
      objc_msgSend_appendString_(v15, v21, @"&");
      v23 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, 1);
      v14 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v23, v24, v15, v16);

      if (!v14)
      {
        objc_msgSend_appendString_(v15, v25, @""));
      }
    }
  }

  else
  {
    v12 = objc_msgSend_function(a1, v10, v11);
    v14 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 1, @"Unhandled expression function: %@", v12);
  }

  return v14;
}

id sub_188670BCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_expressionType(a1, v8, v9);
  if (v10 > 2)
  {
    if (v10 == 4)
    {
      v19 = objc_msgSend_cksqlcs_appendFunctionExpressionSQLToString_statement_(a1, v11, v6, v7);
      goto LABEL_12;
    }

    if (v10 == 3)
    {
      v13 = objc_msgSend_keyPath(a1, v11, v12);
      objc_msgSend_appendFormat_(v6, v17, @"%@", v13);
      goto LABEL_8;
    }
  }

  else
  {
    if (!v10)
    {
      v20 = objc_msgSend_constantValue(a1, v11, v12);
      v18 = objc_msgSend_cksqlcs_appendSQLConstantValueToString_(v20, v21, v6);

      goto LABEL_13;
    }

    if (v10 == 2)
    {
      v13 = objc_msgSend_variable(a1, v11, v12);
      v15 = objc_msgSend_sqlValueForVariable_(v7, v14, v13);
      objc_msgSend_appendString_(v6, v16, v15);

LABEL_8:
      v18 = 0;
      goto LABEL_13;
    }
  }

  v19 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 1, @"Unhandled expression type %lu", v10);
LABEL_12:
  v18 = v19;
LABEL_13:

  return v18;
}

id sub_188670D34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_leftExpression(a1, v8, v9);
  if (objc_msgSend_cksqlcs_isNil(v10, v11, v12))
  {
    v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 1, @"nil cannot appear as the left operand");
    goto LABEL_30;
  }

  v16 = objc_msgSend_rightExpression(a1, v13, v14);
  isNil = objc_msgSend_cksqlcs_isNil(v16, v17, v18);
  v22 = objc_msgSend_predicateOperatorType(a1, v20, v21);
  objc_msgSend_appendString_(v6, v23, @"(");
  v25 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v10, v24, v6, v7);
  if (v25)
  {
    goto LABEL_29;
  }

  if (isNil)
  {
    if (v22 == 4)
    {
      objc_msgSend_appendString_(v6, v26, @" IS NULL");
      goto LABEL_17;
    }

    if (v22 == 5)
    {
      objc_msgSend_appendString_(v6, v26, @" IS NOT NULL");
LABEL_17:
      objc_msgSend_appendString_(v6, v27, @""));
      v31 = objc_msgSend_expressionType(v10, v29, v30);
      v34 = objc_msgSend_expressionType(v16, v32, v33);
      if (v31 == 3 && v34 == 2)
      {
        v37 = objc_msgSend_keyPath(v10, v35, v36);
        goto LABEL_20;
      }

      if (v31 == 2 && v34 == 3)
      {
        v42 = objc_msgSend_variable(v10, v35, v36);
        v45 = objc_msgSend_keyPath(v16, v43, v44);
      }

      else
      {
        if (!v31 && v34 == 2)
        {
          v37 = objc_msgSend_constantValue(v10, v35, v36);
LABEL_20:
          v40 = v37;
          v42 = objc_msgSend_variable(v16, v38, v39);
          if (!v40)
          {
            goto LABEL_28;
          }

LABEL_26:
          if (v42)
          {
            v46 = objc_msgSend_addBindingVariable_withAssociatedProperty_(v7, v41, v42, v40);
          }

          goto LABEL_28;
        }

        v42 = 0;
        if (v31 != 2)
        {
          v40 = 0;
          goto LABEL_28;
        }

        v40 = 0;
        if (v34)
        {
LABEL_28:

          v25 = 0;
          goto LABEL_29;
        }

        v42 = objc_msgSend_variable(v10, v35, v36);
        v45 = objc_msgSend_constantValue(v16, v48, v49);
      }

      v40 = v45;
      if (v45)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKErrorDomain", 1, @"invalid nil operand");
    goto LABEL_14;
  }

  if (v22 >= 0xB || ((0x43Fu >> v22) & 1) == 0)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKErrorDomain", 1, @"Unhandled operator type %lu", v22);
    v25 = LABEL_14:;
    if (v25)
    {
      goto LABEL_29;
    }

    objc_msgSend_appendString_(v6, v28, &stru_1EFA32970);
    if (isNil)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  objc_msgSend_appendString_(v6, v26, off_1E70C0AC0[v22]);
LABEL_16:
  v25 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v16, v27, v6, v7);
  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_29:
  v15 = v25;

LABEL_30:

  return v15;
}

id sub_188671030(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1883EE1DC;
  v38 = sub_1883EF794;
  v39 = 0;
  v10 = objc_msgSend_compoundPredicateType(a1, v8, v9);
  v14 = objc_msgSend_subpredicates(a1, v11, v12);
  if (v10)
  {
    if (v10 == 1)
    {
      v15 = @" AND ";
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_8;
      }

      v15 = @" OR ";
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_188671244;
    v29 = &unk_1E70C0AA0;
    v16 = v6;
    v30 = v16;
    v31 = v15;
    v33 = &v34;
    v32 = v7;
    objc_msgSend_enumerateObjectsUsingBlock_(v14, v17, &v26);
    objc_msgSend_appendString_(v16, v18, @""), v26, v27, v28, v29);
  }

  else
  {
    objc_msgSend_appendString_(v6, v13, @" NOT (");
    v20 = objc_msgSend_objectAtIndex_(v14, v19, 0);
    v22 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v20, v21, v6, v7);

    objc_msgSend_appendString_(v6, v23, @" "));
  }

LABEL_8:
  v24 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v24;
}

void sub_188671224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188671244(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a1[4];
  if (a3)
  {
    objc_msgSend_appendString_(v8, v7, a1[5]);
  }

  else
  {
    objc_msgSend_appendString_(v8, v7, @"(");
  }

  v10 = objc_msgSend_cksqlcs_appendSQLToString_statement_(v13, v9, a1[4], a1[6]);
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(a1[7] + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t sub_1886712F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 1, @"No int64 binding value for %@", v5);

    v8 = v7;
    *a3 = v7;
  }

  return 0;
}

id sub_18867138C(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v3, @"CKErrorDomain", 1, @"No generic binding value for %@", v2);

  return v4;
}

id sub_188671418(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v14 = 0;
  v10 = objc_msgSend_cksqlcs_int64BindingValue_(a1, v9, &v14);
  v11 = v14;
  if (!v11)
  {
    if (sqlite3_bind_int64(a3, a4, v10))
    {
      v11 = objc_msgSend_sqlErrorWithMessage_(v8, v12, @"Failed to bind int64 value");
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

double sub_1886714D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 1, @"No double binding value for %@", v5);

    v8 = v7;
    *a3 = v7;
  }

  return 0.0;
}

id sub_188671568(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v15 = 0;
  objc_msgSend_cksqlcs_doubleBindingValue_(a1, v9, &v15);
  v11 = v10;
  v12 = v15;
  if (!v12)
  {
    if (sqlite3_bind_double(a3, a4, v11))
    {
      v12 = objc_msgSend_sqlErrorWithMessage_(v8, v13, @"Failed to bind double value");
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

const char *sub_188671620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 1, @"No text binding value for %@", v7);

    v10 = v9;
    *a5 = v9;
  }

  return "";
}

id sub_1886716BC(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v10 = objc_msgSend_cksqlcs_textBindingValue_destructor_error_(a1, v9, &v16, &v15, &v14);
  v11 = v14;
  if (!v11)
  {
    if (sqlite3_bind_text16(a3, a4, v10, v16, v15))
    {
      v11 = objc_msgSend_sqlErrorWithMessage_(v8, v12, @"Failed to bind text value");
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t sub_188671788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 1, @"No blob binding value for %@", v7);

    v10 = v9;
    *a5 = v9;
  }

  return 0;
}

id sub_188671820(void *a1, uint64_t a2, sqlite3_stmt *a3, int a4, void *a5)
{
  v8 = a5;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v10 = objc_msgSend_cksqlcs_blobBindingValue_destructor_error_(a1, v9, &v16, &v15, &v14);
  v11 = v14;
  if (!v11)
  {
    if (sqlite3_bind_blob64(a3, a4, v10, v16, v15))
    {
      v11 = objc_msgSend_sqlErrorWithMessage_(v8, v12, @"Failed to bind blob value");
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t sub_1886718E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 1, @"No archived object binding value for %@", v5);

    v8 = v7;
    *a3 = v7;
  }

  return 0;
}

id sub_188671980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v15 = 0;
  v11 = objc_msgSend_databaseArchiveWithObject_error_(CKSQLiteDatabase, v10, a1, &v15);
  v13 = v15;
  if (!v13)
  {
    v13 = objc_msgSend_cksqlcs_bindBlob_index_db_(v11, v12, a3, a4, v8);
  }

  objc_autoreleasePoolPop(v9);

  return v13;
}

uint64_t sub_188671A40(void *a1, const char *a2, uint64_t *a3)
{
  v6 = objc_msgSend_length(a1, a2, a3);
  *a3 = v6;
  v7 = a1;
  result = objc_msgSend_bytes(v7, v8, v9);
  if (!result)
  {
    if (v6)
    {
      v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, a1, @"CKSQLiteCompiledStatementBindings.m", 165, @"failed to get bytes pointer for non-empty data");
    }

    return 1;
  }

  return result;
}

void *sub_188671AD0(void *a1, const char *a2, _DWORD *a3, void *a4, void *a5)
{
  v9 = objc_msgSend_length(a1, a2, a3);
  v11 = malloc_type_malloc(2 * v9, 0x8C4CEA14uLL);
  if (v11)
  {
    objc_msgSend_getCharacters_range_(a1, v10, v11, 0, v9);
    *a3 = 2 * v9;
    *a4 = MEMORY[0x1E69E9B38];
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKErrorDomain", 1, @"malloc() failed");
    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }
  }

  return v11;
}

id sub_188671BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v13 = *objc_msgSend_objCType(v9, v10, v11) - 66;
  if (v13 <= 0x31)
  {
    if (((1 << v13) & 0x2848200028483) != 0)
    {
      v14 = objc_msgSend_cksqlcs_bindInt64_index_db_(a1, v12, a3, a4, v8);
LABEL_4:
      v15 = v14;
      goto LABEL_5;
    }

    if (((1 << v13) & 0x1400000000) != 0)
    {
      v14 = objc_msgSend_cksqlcs_bindDouble_index_db_(a1, v12, a3, a4, v8);
      goto LABEL_4;
    }
  }

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKErrorDomain", 1, @"No generic binding value for %@", v18);

LABEL_5:

  return v15;
}

void *sub_188671CE4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  objc_msgSend_getUUIDBytes_(a1, v8, v7);
  *a3 = 16;
  *a4 = MEMORY[0x1E69E9B38];
  return v7;
}

id CKSQLiteContainerAttribution_Backup(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Bluetooth(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_CloudPhotos(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_HomeKit(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iAD(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iWorkPages(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iWorkNumbers(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_iWorkKeynote(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_KeyboardServices(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_KeychainSync(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_KeyValueService(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_MailDrop(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Memoji(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Messages(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Moments(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_News(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Notes(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_PhoneFaceTimeCallHistory(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_PhoneFaceTimeMessageStore(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_ProactivePredictions(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Reminders(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SafariBookmarks(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SafariHistory(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SafariTabGroups(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Freeform(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Sharingd(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Siri(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SocialGaming(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_TTYCallHistory(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Wallet(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_SiriProfile(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_DugongTesting(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_DeviceEnrollments(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_Events(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

void sub_188672464(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_fault_impl(&dword_1883EA000, v2, OS_LOG_TYPE_FAULT, "No container attribution function for attributionName=%@. Using None instead.", &v4, 0xCu);
  }
}

id sub_1886727C8(uint64_t a1, void *a2, void *a3)
{
  value[2] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6);
  value[0] = 0;
  value[1] = 0;
  objc_msgSend_getUUIDBytes_(v7, v8, value);
  v9 = v4;
  v12 = objc_msgSend_fileSystemRepresentation(v9, v10, v11);

  v13 = setxattr(v12, "CKSQLiteDatabaseUUID", value, 0x10uLL, 0, 0);
  if (a3 && v13)
  {
    v14 = __error();
    v15 = strerror(*v14);
    *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 1, @"Unable to set database UUID: %s", v15);

    v7 = 0;
  }

  return v7;
}

char *sub_188673C14(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (getxattr(v3, "CKSQLiteDatabaseIsOpening", 0, 0, 0, 0) == -1)
    {
      if (*__error() != 93)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v7 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          v26 = v7;
          v27 = __error();
          v28 = strerror(*v27);
          *buf = 134218498;
          v30 = v2;
          v31 = 2080;
          v32 = v3;
          v33 = 2080;
          v34 = v28;
          _os_log_error_impl(&dword_1883EA000, v26, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: getxattr() failed checking for open crash at path: %s. error = %s", buf, 0x20u);
        }
      }
    }

    else
    {
      v6 = objc_msgSend_databaseCorruptError(CKPrettyError, v4, v5);
      if (v6)
      {
        goto LABEL_21;
      }
    }

    if (setxattr(v3, "CKSQLiteDatabaseIsOpening", "1", 1uLL, 0, 0) == -1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v8 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        v23 = v8;
        v24 = __error();
        v25 = strerror(*v24);
        *buf = 134218498;
        v30 = v2;
        v31 = 2080;
        v32 = v3;
        v33 = 2080;
        v34 = v25;
        _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: setxattr() failed setting opening attribute at path: %s. error = %s", buf, 0x20u);
      }
    }
  }

  v11 = sqlite3_open_v2(*(a1 + 40), (*(a1 + 32) + 80), *(a1 + 48), 0);
  v12 = *(a1 + 32);
  if (v11)
  {
    v6 = objc_msgSend_sqlErrorWithMessage_(v12, v9, @"Error opening db %@, rc=%d", *(a1 + 32), v11);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v13 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *buf = 134218498;
      v30 = v14;
      v31 = 2114;
      v32 = v15;
      v33 = 2114;
      v34 = v6;
      _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: Could not open existing database at %{public}@ - %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v6 = objc_msgSend_validateOpenDatabase(v12, v9, v10);
  }

LABEL_21:
  v16 = *(a1 + 32);
  if (v16)
  {
    if ((*(v16 + 152) & 0x10) == 0)
    {
      v17 = *(a1 + 40);
      if (removexattr(v17, "CKSQLiteDatabaseIsOpening", 0))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v18 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          v20 = v18;
          v21 = __error();
          v22 = strerror(*v21);
          *buf = 134218498;
          v30 = v16;
          v31 = 2082;
          v32 = v17;
          v33 = 2082;
          v34 = v22;
          _os_log_error_impl(&dword_1883EA000, v20, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: removexattr() failed removing opening attribute attribute %{public}s - %{public}s", buf, 0x20u);
        }
      }
    }
  }

  return v6;
}

id sub_1886740B0(uint64_t a1, const char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v34 = 0;
  v4 = objc_msgSend_migrationTOCInDatabase_error_(CKSQLiteTOCTableGroup, a2, v3, &v34);
  v5 = v34;
  if (!v5)
  {
    objc_storeWeak((*(a1 + 32) + 96), v4);
    v6 = *(a1 + 32);
    v33 = 0;
    v8 = objc_msgSend_genericTOCTableGroupInDatabase_error_(CKSQLiteTOCTableGroup, v7, v6, &v33);
    v9 = v33;
    if (v9)
    {
      goto LABEL_4;
    }

    v9 = objc_msgSend_migrateDataFromGroup_(v4, v10, v8);
    if (v9)
    {
      goto LABEL_4;
    }

    v14 = objc_msgSend_allTables(v8, v11, v12);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v29, v35, 16);
    if (v16)
    {
      v19 = v16;
      v5 = 0;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v14);
          }

          if (!v5)
          {
            v22 = *(a1 + 32);
            v23 = objc_msgSend_dbTableName(*(*(&v29 + 1) + 8 * i), v17, v18);
            v5 = objc_msgSend_dropTable_(v22, v24, v23);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v29, v35, 16);
      }

      while (v19);

      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v9 = objc_msgSend_createNewTOCInDatabase_(CKSQLiteTOCTableGroup, v25, *(a1 + 32));
    if (v9)
    {
LABEL_4:
      v5 = v9;
    }

    else
    {
      v27 = objc_msgSend_TOCTableGroupInDatabase_(CKSQLiteTOCTableGroup, v26, *(a1 + 32));
      v5 = objc_msgSend_migrateDataFromGroup_(v27, v28, v4);
      if (!v5)
      {
        objc_storeWeak((*(a1 + 32) + 96), v27);
      }
    }

LABEL_5:
  }

  return v5;
}

id sub_18867517C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForFetchingAllTableNamesInDatabase_(CKSQLiteCompiledStatement, a2, *(a1 + 32));
  v19 = 0;
  v5 = objc_msgSend_step_(v3, v4, &v19);
  v6 = v19;
  v9 = v6;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = MEMORY[0x1E69E9820];
    do
    {
      v17[0] = v11;
      v17[1] = 3221225472;
      v17[2] = sub_1886752B8;
      v17[3] = &unk_1E70C0A30;
      v18 = *(a1 + 40);
      objc_msgSend_enumerateResultColumnsWithBlock_(v3, v12, v17);

      v19 = 0;
      v14 = objc_msgSend_step_(v3, v13, &v19);
      v15 = v19;
      v9 = v15;
    }

    while (v14 && !v15);
  }

  objc_msgSend_invalidate(v3, v7, v8);

  return v9;
}

uint64_t sub_188675740(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218242;
      v9 = a2;
      v10 = 2080;
      v11 = a4;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "SQLitDatabase(%p) statement executing: %s", &v8, 0x16u);
    }
  }

  return 0;
}

void sub_188676204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, pthread_mutex_t *a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v15 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v13, v14);
    v16 = [CKSignificantIssue alloc];
    v17 = [CKSourceCodeLocation alloc];
    v19 = objc_msgSend_initWithFilePath_lineNumber_(v17, v18, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteDatabase.m", 994);
    v21 = objc_msgSend_initWithSourceCodeLocation_format_(v16, v20, v19, @"Exception during database transaction: %@");
    objc_msgSend_handleSignificantIssue_actions_(v15, v22, v21, 0);

    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"Exception during database transaction: %@");
    objc_msgSend_UTF8String(v24, v25, v26);
    _os_crash();
    __break(1u);
    JUMPOUT(0x1886762E4);
  }

  if (a12)
  {
    a12[1].__sig = 0;
    pthread_mutex_unlock(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1886763BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18867658C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188677118(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v3 = a2;
  v6 = objc_msgSend_predicateWithFormat_(v2, v4, @"databaseUUID = $UUID");
  objc_msgSend_setSearchPredicate_(v3, v5, v6);
}

void sub_188677358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188677370(uint64_t a1, const char *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v13 = @"DATE";
  v14[0] = v3;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v14, &v13, 1);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v5, v4, off_1EA910C50, &unk_1EFA30010);
  v9 = objc_msgSend_allObjects(v6, v7, v8);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return 0;
}

void sub_188677448(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v8 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"activityEarliestDate < $DATE");
  objc_msgSend_setSearchPredicate_(v8, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v8, v6, @"databaseID");
  objc_msgSend_orderAscendingByProperty_(v8, v7, @"groupID");
}

void sub_188677798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1886777B0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 32), a2, 0, off_1EA910CC8, &unk_1EFA30070);
  v6 = objc_msgSend_nextObject(v3, v4, v5);
  *(*(*(a1 + 40) + 8) + 24) = v6 != 0;

  return 0;
}

void sub_18867781C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_setLimit_(v2, v3, &unk_1EFA852D8);
  objc_msgSend_setFetchedProperties_(v2, v4, MEMORY[0x1E695E0F0]);
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v5, @"activityEarliestDate != NULL");
  objc_msgSend_setSearchPredicate_(v2, v6, v7);
}

void sub_188677E14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_runActivities(WeakRetained, v1, v2);
}

void sub_188677F98(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v2);
}

id sub_188678550(uint64_t a1, const char *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v43 = 0;
  v5 = objc_msgSend_activityEntryForTarget_error_(v3, a2, v4, &v43);
  v8 = v43;
  if (!v8)
  {
    v9 = objc_msgSend_activityEarliestDate(v5, v6, v7);
    v10 = *(a1 + 48);
    v13 = objc_msgSend_activityNotBeforeDate(v5, v11, v12);
    v15 = objc_msgSend_laterDate_(v10, v14, v13);

    if (v9 && objc_msgSend_compare_(v9, v16, v15) != 1)
    {
LABEL_9:
      v8 = 0;
LABEL_19:

      goto LABEL_20;
    }

    objc_msgSend_setSchedulingDataInActivity_date_coalescingInterval_minimumSeparation_(*(a1 + 32), v16, v5, v15, *(a1 + 56), *(a1 + 64));
    v19 = objc_msgSend_activityStartDate(v5, v17, v18);

    if (v19)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        v32 = v21;
        v35 = objc_msgSend_targetDescription(v5, v33, v34);
        *buf = 138543618;
        v45 = v15;
        v46 = 2114;
        v47 = v35;
        _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager scheduled repeating activity: %{public}@ for %{public}@", buf, 0x16u);
      }

      goto LABEL_9;
    }

    v8 = objc_msgSend_insertOrUpdateActivityDate_(*(*(a1 + 32) + 144), v20, v5);
    v22 = *(*(a1 + 32) + 144);
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = sub_188678938;
    v41 = &unk_1E70BC048;
    v42 = *(a1 + 40);
    objc_msgSend_addTransactionCompletionHandler_(v22, v23, &v38);
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v25 = ck_log_facility_sql;
      if (!os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v26 = v25;
      v29 = objc_msgSend_targetDescription(v5, v27, v28, v38, v39, v40, v41);
      *buf = 138543874;
      v45 = v15;
      v46 = 2114;
      v47 = v29;
      v48 = 2112;
      v49 = v8;
      _os_log_error_impl(&dword_1883EA000, v26, OS_LOG_TYPE_ERROR, "CKSQLiteDatabaseManager failed scheduling: %{public}@ for %{public}@ error = %@", buf, 0x20u);
    }

    else
    {
      objc_msgSend_scheduleActivityDate_(*(a1 + 32), v24, v15, v38, v39, v40, v41);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v30 = ck_log_facility_sql;
      if (!os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v26 = v30;
      v29 = objc_msgSend_targetDescription(v5, v36, v37);
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      v47 = v29;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabaseManager scheduled: %{public}@ for %{public}@", buf, 0x16u);
    }

LABEL_18:
    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

uint64_t sub_188678938(uint64_t result, const char *a2)
{
  if (a2)
  {
    v2 = result;
    objc_msgSend_setDatabaseManagerData_(*(result + 32), a2, 0);
    v4 = *(v2 + 32);

    return MEMORY[0x1EEE66B58](v4, sel_activityTriggerWasRolledBack, v3);
  }

  return result;
}

void sub_188678AE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188678DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188678EC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18867955C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188679724(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_db(*(a1 + 32), a2, a3);
  v5 = _CKSQLDBSerializerLock(v4 + 8);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v18 = 0;
  v9 = objc_msgSend_activityEntryForTarget_error_(v6, v8, v7, &v18);
  v12 = v18;
  if (v12)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, *(a1 + 56), *(a1 + 32), @"CKSQLiteDatabaseManager.m", 769, @"Unexpected error: %@", v12);
  }

  v13 = objc_msgSend_activityEarliestDate(v9, v10, v11);
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v5)
  {
    v5[1].__sig = 0;
    pthread_mutex_unlock(v5);
  }
}

void sub_18867981C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_18867A03C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], a2, a3);
  objc_msgSend_runActivities_(v3, v4, v5);
}

uint64_t CKSQLDBSerializerInit(pthread_mutex_t *a1)
{
  result = pthread_mutex_init(a1, 0);
  a1[1].__sig = 0;
  return result;
}

pthread_mutex_t *_CKSQLDBSerializerUnlock(pthread_mutex_t **a1)
{
  result = *a1;
  if (result)
  {
    result[1].__sig = 0;
    return pthread_mutex_unlock(result);
  }

  return result;
}

void sub_18867A3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  v12 = MEMORY[0x1E696AD98];
  v13 = v6[9];
  v14 = a2;
  v16 = objc_msgSend_numberWithUnsignedInteger_(v12, v15, v13);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18867A4F4;
  v19[3] = &unk_1E70C0CA0;
  v19[4] = *(a1 + 32);
  v20 = v5;
  v17 = v5;
  objc_msgSend_select_from_where_bindings_orderBy_limit_offset_block_(v14, v18, v7, v8, v9, v10, v11, &unk_1EFA85308, v16, v19);
}

void sub_18867A4F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    *a3 = 1;
  }

  else
  {
    objc_msgSend_addObject_(*(*(a1 + 32) + 56), v5, v6);
  }
}

BOOL sub_18867A644(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7) == 11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A690(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7);
    v10 = v8 == 13 || v8 == 10;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A6E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_domain(v3, v4, v5);
    v10 = v9 == @"CKInternalErrorDomain" && objc_msgSend_code(v6, v7, v8) == 1050;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A760(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_domain(v3, v4, v5);
    v10 = v9 == @"CKInternalErrorDomain" && objc_msgSend_code(v6, v7, v8) == 1051;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A7E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_domain(v3, v4, v5);
    v10 = v9 == @"CKInternalErrorDomain" && objc_msgSend_code(v6, v7, v8) == 1052;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_18867A860(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7) == 19;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A8AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_CKIsConstraintError_(a1, v5, v4))
  {
    v8 = ((objc_msgSend_CKSQLiteExtendedCode(v4, v6, v7) - 1555) & 0xFFFFFDFF) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A908(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_CKIsConstraintError_(a1, v5, v4))
  {
    v8 = objc_msgSend_CKSQLiteExtendedCode(v4, v6, v7) == 787;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_18867A960(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5))
  {
    v8 = objc_msgSend_CKSQLiteCode(v3, v6, v7) == 5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_18867A9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_code(v3, v4, v5) == 1028)
  {
    v8 = objc_msgSend_domain(v3, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"CKInternalErrorDomain");
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_18867AA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_CKIsCKSQLiteError(v3, v4, v5) && objc_msgSend_CKSQLiteCode(v3, v6, v7) == 1 && objc_msgSend_CKSQLiteExtendedCode(v3, v8, v9) == 1)
  {
    v12 = objc_msgSend_CKSQLiteErrorMessage(v3, v10, v11);
    hasPrefix = objc_msgSend_hasPrefix_(v12, v13, @"no such table");
  }

  else
  {
    hasPrefix = 0;
  }

  return hasPrefix;
}

uint64_t sub_18867B068(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_code(a1, a2, a3) != 1027)
  {
    return 0;
  }

  v6 = objc_msgSend_domain(a1, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"CKInternalErrorDomain");

  return isEqualToString;
}

uint64_t sub_18867B0C8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"SQLCode");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  return v8;
}

uint64_t sub_18867B120(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"SQLExtendedCode");
  v8 = objc_msgSend_intValue(v5, v6, v7);

  return v8;
}

id sub_18867B178(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"SQLErrorMessage");

  return v5;
}

id sub_18867D4B8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tableGroup(a1, a2, a3);
  v5 = sub_188441668(v3, v4);

  return v5;
}

id sub_18867D504(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v7 = objc_msgSend_logicalTableName(a1, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@.%@", v7, v4);

  return v9;
}

id sub_18867E150(uint64_t a1, const char *a2)
{
  objc_msgSend_setIsDeletingReferent_(*(a1 + 32), a2, 1);
  v4 = objc_msgSend_deletePrimaryKeyValue_(*(a1 + 32), v3, *(a1 + 40));
  if (objc_msgSend_CKIsForeignKeyConstraintError_(MEMORY[0x1E696ABC0], v5, v4))
  {

    v4 = 0;
  }

  objc_msgSend_setIsDeletingReferent_(*(a1 + 32), v6, 0);

  return v4;
}

void sub_18867E9E8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v7 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"collectionID = $COLLECTION_ID");
  objc_msgSend_setSearchPredicate_(v7, v5, v4);

  objc_msgSend_orderAscendingByProperty_(v7, v6, @"elementIndex");
}

void sub_18867EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18867ECB8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  objc_msgSend_setReferenceID_(v7, v9, 0);
  objc_msgSend_setElement_(*(a1 + 32), v10, v8);

  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v11, a3);
  objc_msgSend_setElementIndex_(*(a1 + 32), v13, v12);

  v15 = objc_msgSend_insertObject_(*(a1 + 40), v14, *(a1 + 32));
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

id sub_18867EE60(uint64_t a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CKSQLiteReferencedCollectionTableEntry);
  objc_msgSend_setReferenceID_(v2, v3, *(a1 + 32));
  v7 = objc_msgSend_fetchProperties_inObject_label_(*(a1 + 40), v4, &unk_1EFA85D28, v2, *(a1 + 56));
  if (!v7)
  {
    v8 = objc_msgSend_collectionID(v2, v5, v6);
    v38 = @"COLLECTION_ID";
    v39[0] = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v39, &v38, 1);
    v12 = objc_msgSend_entriesWithValues_label_setupBlock_(*(a1 + 40), v11, v10, off_1ED4B5EB8, &unk_1EFA300D0);
    v15 = objc_msgSend_nextObject(v12, v13, v14);
    v7 = objc_msgSend_error(v12, v16, v17);
    objc_msgSend_invalidate(v12, v18, v19);
    if (!v7)
    {
      objc_msgSend_setCollectionID_(v15, v20, v8);
      objc_msgSend_setElement_(v15, v21, *(a1 + 48));
      v24 = objc_msgSend_element(v15, v22, v23);

      if (v24)
      {
        objc_msgSend_setReferenceID_(v15, v25, 0);
        v28 = objc_msgSend_elementIndex(v15, v26, v27);
        v31 = objc_msgSend_unsignedLongLongValue(v28, v29, v30);

        v33 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v32, v31 + 1);
        objc_msgSend_setElementIndex_(v15, v34, v33);

        objc_msgSend_insertObject_(*(a1 + 40), v35, v15);
      }

      else
      {
        objc_msgSend_setReferenceID_(v15, v25, *(a1 + 32));
        objc_msgSend_updateProperties_usingObject_label_(*(a1 + 40), v36, &unk_1EFA85D58, v15, off_1ED4B5ED0);
      }
      v7 = ;
    }
  }

  return v7;
}

void sub_18867F07C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE18];
  v9 = a2;
  v4 = objc_msgSend_predicateWithFormat_(v2, v3, @"collectionID = $COLLECTION_ID");
  objc_msgSend_setSearchPredicate_(v9, v5, v4);

  objc_msgSend_orderDescendingByProperty_(v9, v6, @"elementIndex");
  objc_msgSend_setFetchedProperties_(v9, v7, &unk_1EFA85D40);
  objc_msgSend_setLimit_(v9, v8, &unk_1EFA85470);
}

uint64_t sub_18867F800(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_setPrimaryKey_(v3, v5, 0);
  objc_msgSend_setKey_(*(a1 + 32), v6, v4);
  v8 = objc_msgSend_objectForKey_(*(a1 + 40), v7, v4);

  objc_msgSend_setValue_(*(a1 + 32), v9, v8);
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

uint64_t sub_18867FBC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_setReferenceID_(v3, v5, 0);
  objc_msgSend_setDataBlob_(*(a1 + 32), v6, v4);

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_18867FD28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = a3;
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = objc_opt_class();
  v10 = NSStringFromClass(v8);
  if (v11)
  {
    objc_msgSend_raise_format_(v6, v9, v7, @"Can't bind object %p of type %@ in statement %@ at index %ld", a1, v10, v11[3], a4);
  }

  else
  {
    objc_msgSend_raise_format_(v6, v9, v7, @"Can't bind object %p of type %@ in statement %@ at index %ld", a1, v10, 0, a4);
  }
}

uint64_t sub_18867FDDC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a3;
  v7 = a1;
  v12 = *objc_msgSend_objCType(v7, v8, v9) - 66;
  if (v12 > 0x31)
  {
    goto LABEL_20;
  }

  if (((1 << v12) & 0x2009200020083) != 0)
  {
    v13 = objc_msgSend_intValue(a1, v10, v11);
    v15 = v26;
    if (v26)
    {
      v16 = v13;
      if ((v26[8] & 1) == 0)
      {
        v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v14);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, sel_bindInt_atIndex_, v26, @"CKSQLiteStatement.m", 203, @"Statement is not reset: %@", *(v26 + 3));

        v15 = v26;
      }

      v13 = *(v15 + 4);
      if (v13)
      {
        v13 = sqlite3_bind_int(v13, a4 + 1, v16);
        v15 = v26;
        if (v13)
        {
          v13 = objc_msgSend_invalidate_(v26, v26, @"Error binding int at %ld: %@", a4, *(v26 + 3));
LABEL_16:
          v15 = v26;
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

  if (((1 << v12) & 0x840400008400) == 0)
  {
LABEL_20:
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, a1, @"CKSQLiteStatement.m", 51, @"Expected number type to be either integer or floating point");

    goto LABEL_16;
  }

  v13 = objc_msgSend_longLongValue(a1, v10, v11);
  v15 = v26;
  if (v26)
  {
    v18 = v13;
    if ((v26[8] & 1) == 0)
    {
      v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v17);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, sel_bindInt64_atIndex_, v26, @"CKSQLiteStatement.m", 211, @"Statement is not reset: %@", *(v26 + 3));

      v15 = v26;
    }

    v13 = *(v15 + 4);
    if (v13)
    {
      v13 = sqlite3_bind_int64(v13, a4 + 1, v18);
      v15 = v26;
      if (v13)
      {
        v13 = objc_msgSend_invalidate_(v26, v26, @"Error binding int64 at %ld: %@", a4, *(v26 + 3));
        goto LABEL_16;
      }
    }
  }

LABEL_17:

  return MEMORY[0x1EEE66BB8](v13, v15);
}

uint64_t sub_188680018(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (!a1)
  {
    goto LABEL_10;
  }

  v19 = v5;
  if ((*(a1 + 8) & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, sel_bindBlob_atIndex_, a1, @"CKSQLiteStatement.m", 227, @"Statement is not reset: %@", *(a1 + 24));

    if (v19)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = sub_188680218(a1, a3);
    goto LABEL_9;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = sub_188680710(a1, v19);
  v7 = v19;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v19;
    v12 = objc_msgSend_bytes(v19, v10, v11);
    v15 = objc_msgSend_length(v19, v13, v14);
    v5 = sqlite3_bind_blob(v8, a3 + 1, v12, v15, 0);
    v7 = v19;
    if (v5)
    {
      v5 = objc_msgSend_invalidate_(a1, v19, @"Error binding blob at %ld: %@", a3, *(a1 + 24));
LABEL_9:
      v7 = v19;
    }
  }

LABEL_10:

  return MEMORY[0x1EEE66BB8](v5, v7);
}

void sub_188680150(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = 0;
  v6 = a3;
  objc_msgSend_getUUIDBytes_(a1, v7, v10);
  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v8, v10, 16);
  sub_188680018(v6, v9, a4);
}

uint64_t sub_188680218(uint64_t result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = sqlite3_bind_null(result, a2 + 1);
      if (result)
      {

        return objc_msgSend_invalidate_(v2, v3, @"sqlite3_bind_null error");
      }
    }
  }

  return result;
}

uint64_t sub_18868027C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = a3;
  v8 = objc_msgSend_timeIntervalSinceReferenceDate(a1, v6, v7);
  v11 = v16;
  if (v16)
  {
    v12 = v10;
    if ((v16[8] & 1) == 0)
    {
      v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v9);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, sel_bindDouble_atIndex_, v16, @"CKSQLiteStatement.m", 219, @"Statement is not reset: %@", *(v16 + 3));

      v11 = v16;
    }

    v8 = *(v11 + 4);
    if (v8)
    {
      v8 = sqlite3_bind_double(v8, a4 + 1, v12);
      v11 = v16;
      if (v8)
      {
        v8 = objc_msgSend_invalidate_(v16, v16, @"Error binding double at %ld: %@", a4, *(v16 + 3));
        v11 = v16;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v8, v11);
}

void sub_18868037C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = MEMORY[0x1E696ACC8];
  v7 = a3;
  v9 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v6, v8, a1, 1, 0);
  sub_188680018(v7, v9, a4);
}

void sub_188680404(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v10 = objc_msgSend_absoluteString(a1, v7, v8);
  objc_msgSend_bindText_atIndex_(v6, v9, v10, a4);
}

id *sub_1886805D4(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = CKSQLiteStatement;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeWeak(v9 + 2, v7);
      objc_storeStrong(a1 + 3, a3);
      a1[4] = a4;
      *(a1 + 8) = 1;
    }
  }

  return a1;
}

void *sub_188680710(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = a1[6];
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = a1[6];
      a1[6] = v6;

      v5 = a1[6];
    }

    objc_msgSend_addObject_(v5, v3, v4);
    a1 = v4;
  }

  return a1;
}

uint64_t sub_18868089C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    v12 = v3;
    v3 = objc_msgSend_count(v3, v3, v4);
    v5 = v12;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v5, i);
        objc_msgSend_ck_bindInStatement_atIndex_(v7, v8, a1, i);

        v3 = objc_msgSend_count(v12, v9, v10);
        v5 = v12;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v5);
}

uint64_t sub_18868093C(uint64_t a1, const char *iCol, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = iCol;
  if (*(a1 + 8) == 1)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], iCol, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, sel_intAtIndex_, a1, @"CKSQLiteStatement.m", 293, @"Statement is reset: %@", *(a1 + 24));
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 0;
  }

  return sqlite3_column_int(v5, v3);
}

sqlite3_stmt *sub_188680A00(sqlite3_stmt *a1, const char *iCol, uint64_t a3)
{
  if (a1)
  {
    v4 = iCol;
    v5 = a1;
    if (*(a1 + 8) == 1)
    {
      v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], iCol, a3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, sel_textAtIndex_, v5, @"CKSQLiteStatement.m", 325, @"Statement is reset: %@", *(v5 + 3));
    }

    a1 = *(v5 + 4);
    if (a1)
    {
      a1 = sqlite3_column_text(a1, v4);
      if (a1)
      {
        a1 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, a1);
      }
    }

    v3 = vars8;
  }

  return a1;
}

__CFString *sub_188680BFC(uint64_t *a1, const char *a2)
{
  if (a1)
  {
    v3 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], a2, a1[1], 1);
    v4 = MEMORY[0x1E696AEC0];
    v5 = *a1;
    v8 = objc_msgSend_lastPathComponent(v3, v6, v7);
    v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%s(%@:%d)", v5, v8, *(a1 + 4));
  }

  else
  {
    v10 = @"(unlabeled)";
  }

  return v10;
}

void sub_18868114C(void *a1, void *a2, const char *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (objc_msgSend_shouldLogError_(v6, v7, v5))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v12 = objc_msgSend_logicalTableName(v6, v10, v11);
      v13 = NSStringFromSelector(a3);
      v14 = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      _os_log_error_impl(&dword_1883EA000, v9, OS_LOG_TYPE_ERROR, "Table '%{public}@' failed in %{public}@ - error: %{public}@", &v14, 0x20u);
    }
  }
}

void sub_188681908(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188681998;
  v6[3] = &unk_1E70C0DB8;
  v7 = *(a1 + 32);
  v8 = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v5, v6);
}

void sub_188681998(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = 0;
  v7 = *(a1 + 32);
  v8 = a2;
  v11 = objc_msgSend_unsignedLongValue(a3, v9, v10);
  (*(v7 + 16))(v7, v8, v11, &v13);

  v12 = v13;
  if (v13 == 1)
  {
    *a4 = v13;
    **(a1 + 40) = v12;
  }
}

void sub_188681ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188681AE4(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_count(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_188681C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188681C34(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = objc_msgSend_objectForKey_(a2, a2, *(a1 + 32));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_188681D40(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v9 = objc_msgSend_numberWithUnsignedInt_(v5, v7, a3);
  objc_msgSend_setObject_forKey_(v4, v8, v9, v6);
}

void sub_188682164(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = a2;
  v10 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(v5, v8, v7, a3, v6, 0);
  objc_msgSend_encodeObject_forKey_(*(a1 + 40), v9, v10, v7);
}

void sub_1886822BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v11 = v6;
  if (a3 <= 0x5Fu)
  {
    if (a3 - 1 >= 2 && a3 != 3 && a3 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (a3 - 96 >= 0xD && a3 != 132 && a3 != 134)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v6 = v11;
  if (v7)
  {
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(*(a1 + 32), v5, v7, v11);
    goto LABEL_12;
  }

LABEL_11:
  v8 = objc_msgSend_decodeObjectForKey_(*(a1 + 32), v5, v6);
LABEL_12:
  v10 = v8;
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(*(a1 + 48), v9, v8, v11, a3, *(a1 + 40));
}

void sub_1886824BC(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((a3 & 0x100) == 0)
  {
    v6 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(*(a1 + 48), a2, a2, a3, *(a1 + 32), 0);
    *(*(*(a1 + 40) + 8) + 24) ^= objc_msgSend_hash(v6, v4, v5);
  }
}

void sub_188682644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18868265C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3 & 0x100) == 0 || (*(a1 + 64))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = a2;
    v14 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(v7, v10, v9, a3, v8, 0);
    v12 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(*(a1 + 56), v11, v9, a3, *(a1 + 40), 0);

    if (v14 != v12 && (!v14 || !v12 || (objc_msgSend_isEqual_(v14, v13, v12) & 1) == 0))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void sub_18868282C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  v14 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(v5, v8, v7, a3, v6, 0);
  v9 = *(a1 + 40);
  v12 = objc_msgSend_copy(v14, v10, v11);
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(v9, v13, v12, v7, a3, *(a1 + 32));
}

void sub_188682CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_188682CF0(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v6 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(*(a1 + 64), v5, v16, a3, *(a1 + 32), 1);
  v8 = v6;
  if (v6 == qword_1EA9123A0)
  {
    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 48) + 8) + 40);
    }

    objc_msgSend_addObject_(v10, v7, v16);
    goto LABEL_11;
  }

  if (!v6)
  {
    v8 = @"<nil>";
LABEL_10:
    objc_msgSend_appendFormat_(*(a1 + 40), v16, @"%@%@ = %@", *(*(*(a1 + 56) + 8) + 40), v16, v8);
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = @", ";

LABEL_11:
    goto LABEL_12;
  }

  if (a3 != 8)
  {
    goto LABEL_10;
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"{ %@ }", v6);

  v8 = v9;
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_12:
}

void sub_1886830D4(uint64_t a1, void *a2, __int16 a3)
{
  v6 = a2;
  if ((a3 & 0x100) != 0)
  {
    v10 = v6;
    objc_storeStrong((*(a1 + 32) + 48), a2);
    v6 = v10;
  }

  if (a3 == 8)
  {
    v7 = *(a1 + 32);
    do
    {
      v8 = *(v7 + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit((v7 + 24), &v9, v8 | 0x10, memory_order_relaxed, memory_order_relaxed);
    }

    while (v9 != v8);
  }
}

id *sub_1886834EC(id *result, const char *a2, __int16 a3)
{
  if ((a3 & 0x100) == 0)
  {
    return objc_msgSend_addObject_(result[4], a2, a2);
  }

  return result;
}

void sub_1886835DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v1[1].__sig = 0;
    pthread_mutex_unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_188683E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188683EF8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, unsigned int a5, void *a6)
{
  v17 = a2;
  for (i = a6; a4 <= a5; a4 = (a4 + 1))
  {
    v13 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v10, a4);
    if ((a3 >> a4))
    {
      v15 = objc_msgSend_objectForKey_(v17, v12, v13);
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_msgSend_setObject_forKey_(v17, v16, v15, v13);
      }

      objc_msgSend_addObject_(v15, v14, i);
    }
  }
}

void sub_188683FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a2;
  v6 = *(*(a1 + 80) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = 0;
  }

  else
  {
    objc_msgSend_appendString_(*(a1 + 32), v5, @",");
  }

  objc_msgSend_appendString_(*(a1 + 32), v5, v36);
  objc_msgSend_appendString_(*(a1 + 32), v7, @" ");
  v10 = *(a1 + 32);
  v11 = a3 - 96;
  if (a3 - 96 <= 0x27)
  {
    if (((1 << v11) & 0x7FF) != 0)
    {
LABEL_6:
      objc_msgSend_appendString_(v10, v8, @"INTEGER");
      goto LABEL_16;
    }

    if (((1 << v11) & 0xD000000000) != 0)
    {
      objc_msgSend_appendString_(v10, v8, @"BLOB");
      goto LABEL_16;
    }

    if (((1 << v11) & 0x1800) != 0)
    {
      goto LABEL_15;
    }
  }

  if (a3 > 9u)
  {
    goto LABEL_35;
  }

  if (((1 << a3) & 0x24) != 0)
  {
LABEL_15:
    objc_msgSend_appendString_(v10, v8, @"REAL");
    goto LABEL_16;
  }

  if (((1 << a3) & 0x102) != 0)
  {
    goto LABEL_6;
  }

  if (((1 << a3) & 0x208) != 0)
  {
    objc_msgSend_appendString_(v10, v8, @"STRING");
    goto LABEL_16;
  }

LABEL_35:
  if (a3)
  {
    v24 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v8, v9);
    v25 = [CKSignificantIssue alloc];
    v26 = [CKSourceCodeLocation alloc];
    v28 = objc_msgSend_initWithFilePath_lineNumber_(v26, v27, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 111);
    v30 = objc_msgSend_initWithSourceCodeLocation_format_(v25, v29, v28, @"Unknown type code: %u", a3);
    objc_msgSend_handleSignificantIssue_actions_(v24, v31, v30, 0);

    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32, @"Unknown type code: %u", a3);
    objc_msgSend_UTF8String(v33, v34, v35);
    _os_crash();
    __break(1u);
    return;
  }

  objc_msgSend_appendString_(v10, v8, @"<missing type placeholder>");
LABEL_16:
  if ((a3 & 0x400) != 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), v12, @" UNIQUE");
  }

  if ((a3 & 0x200) != 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), v12, @" NOT NULL");
  }

  v13 = objc_msgSend_checkConstraintForProperty_info_(*(a1 + 40), v12, v36, a3);
  if (objc_msgSend_count(v13, v14, v15))
  {
    v17 = *(a1 + 32);
    v18 = objc_msgSend_componentsJoinedByString_(v13, v16, @" AND ");
    objc_msgSend_appendFormat_(v17, v19, @" CHECK(%@)", v18);
  }

  if ((a3 & 0x800) != 0)
  {
    objc_msgSend_addObject_(*(a1 + 48), v16, v36);
  }

  if ((*(a1 + 96) & a3) != 0)
  {
    (*(*(a1 + 72) + 16))();
  }

  if ((*(a1 + 100) & a3) != 0)
  {
    (*(*(a1 + 72) + 16))();
  }

  if (a3 == 8)
  {
    v20 = *(*(*(a1 + 88) + 8) + 40);
    if (!v20)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = *(*(a1 + 88) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v20 = *(*(*(a1 + 88) + 8) + 40);
    }

    objc_msgSend_addObject_(v20, v16, v36);
  }
}

uint64_t sub_18868432C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_msgSend_appendString_(v4, v6, @", UNIQUE (");
  v7 = *(a1 + 32);
  v9 = objc_msgSend_componentsJoinedByString_(v5, v8, @",");

  objc_msgSend_appendString_(v7, v10, v9);
  v12 = *(a1 + 32);

  return objc_msgSend_appendString_(v12, v11, @""));
}

void sub_1886843BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = a3;
  v14 = objc_msgSend_stringWithFormat_(v5, v8, @"%@.index_%@", v6, a2);
  objc_msgSend_appendFormat_(*(a1 + 40), v14, @"CREATE INDEX '%@' on '%@' ("), v14, *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = objc_msgSend_componentsJoinedByString_(v7, v10, @",");

  objc_msgSend_appendString_(v9, v12, v11);
  objc_msgSend_appendString_(*(a1 + 40), v13, @";"));
}

void sub_188684558(uint64_t a1, void *a2, char a3)
{
  if (a3 == 8)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v11 = objc_msgSend_tableForReferenceProperty_(v5, v7, v6);
    v9 = objc_msgSend_referencedObjectTriggerSQLForProperty_inTable_(v11, v8, v6, *(a1 + 32));

    if (v9)
    {
      objc_msgSend_appendString_(*(a1 + 40), v10, v9);
    }
  }
}

void sub_1886848D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_class();
  v8 = objc_msgSend_propertyInfo_(v6, v7, v5);
  v11 = objc_msgSend_valueForProperty_propertyInfo_inObject_(*(a1 + 32), v9, v5, v8, *(a1 + 40));
  objc_msgSend_setValue_forProperty_propertyInfo_inObject_(*(a1 + 48), v10, v11, v5, a3, *(a1 + 56));
}

void sub_188684C54(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_class();
  v5 = objc_msgSend_propertyInfo_(v3, v4, v8);
  v7 = 40;
  if (!v5)
  {
    v7 = 48;
  }

  objc_msgSend_addObject_(*(a1 + v7), v6, v8);
}

id *sub_188684D24(id *result, const char *a2, char a3)
{
  if (a3 == 8)
  {
    return objc_msgSend_addObject_(result[4], a2, a2);
  }

  return result;
}

void sub_1886858CC(uint64_t a1, void *a2)
{
  v15 = a2;
  v5 = objc_msgSend_predicateForMatchingPrimaryKey(*(a1 + 32), v3, v4);
  objc_msgSend_setSearchPredicate_(v15, v6, v5);
  v9 = objc_msgSend_containsObject_(*(a1 + 40), v7, *(*(a1 + 32) + 48));
  v10 = *(a1 + 40);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_msgSend_arrayByAddingObject_(v10, v8, *(*(a1 + 32) + 48));
  }

  v13 = v11;
  v14 = v11;
  if (!v11)
  {
    v14 = *(a1 + 40);
  }

  objc_msgSend_setFetchedProperties_(v15, v12, v14);
}

void sub_188685B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188685B30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_188685C78;
  v20[3] = &unk_1E70C10C0;
  v21 = *(a1 + 48);
  v6 = objc_msgSend_entriesWithValues_label_setupBlock_(v2, v5, v3, v4, v20);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(*(a1 + 56) + 8) + 40) || (objc_msgSend_nextObject(v6, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14) || (v15 = *(*(a1 + 56) + 8), v16 = *(v15 + 40), *(v15 + 40) = 0, v16, objc_msgSend_noUniqueDatabaseRowErrorIn_(CKPrettyError, v17, *(a1 + 72)), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = objc_msgSend_error(v6, v12, v13);
  }

  return v18;
}

void sub_188685C78(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_msgSend_setLimit_(v5, v3, &unk_1EFA854B8);
  v4 = v5;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
    v4 = v5;
  }
}

id sub_188686184(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188686278;
  v12[3] = &unk_1E70C1138;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(v2, v7, v3, v4, v12);
  v10 = objc_msgSend__fetchPropertiesUsingStatement_inObject_matchingDBProperties_label_(*(a1 + 32), v9, v8, *(a1 + 40), *(a1 + 56), *(a1 + 64));

  return v10;
}

void sub_188686278(void *a1, void *a2)
{
  v16 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v3;
  v6 = a1[4];
  if (v6)
  {
    objc_msgSend_addObjectsFromArray_(v3, v4, v6);
  }

  else
  {
    v8 = objc_opt_class();
    v11 = objc_msgSend_allPropertyNames(v8, v9, v10);
    objc_msgSend_addObjectsFromArray_(v5, v12, v11);
  }

  objc_msgSend_removeObjectsInArray_(v5, v7, a1[6]);
  objc_msgSend_setFetchedProperties_(v16, v13, v5);
  v15 = a1[6];
  if (v15)
  {
    objc_msgSend_setSearchProperties_(v16, v14, v15);
  }

  objc_msgSend_setLimit_(v16, v14, &unk_1EFA854B8);
}

id sub_1886864DC(uint64_t a1, const char *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188686610;
  v13[3] = &unk_1E70C1160;
  v13[4] = v3;
  v5 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(v3, a2, v4, off_1EA911010, v13);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v14[0] = v7[6];
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  v11 = objc_msgSend__fetchPropertiesUsingStatement_inObject_matchingDBProperties_label_(v7, v10, v5, v6, v9, off_1EA911010);

  return v11;
}

void sub_188686610(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v7 = objc_msgSend_nonKeyProperties(v4, v5, v6);
  objc_msgSend_setFetchedProperties_(v3, v8, v7);

  v13[0] = *(*(a1 + 32) + 48);
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v13, 1);
  objc_msgSend_setSearchProperties_(v3, v11, v10);

  objc_msgSend_setLimit_(v3, v12, &unk_1EFA854B8);
}

id *sub_1886869B0(id *result, const char *a2, __int16 a3)
{
  if ((a3 & 0x100) == 0)
  {
    return objc_msgSend_addObject_(result[4], a2, a2);
  }

  return result;
}

void sub_188686BC8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = a2;
    v14 = objc_msgSend_valueForProperty_propertyInfo_inObject_(v6, v9, v8, a3, v7);
    v11 = objc_msgSend_bindValueColumn_type_value_(*(a1 + 48), v10, v8, a3, v14);

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

id sub_188686D58(uint64_t a1, const char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_188686F80;
  v24[3] = &unk_1E70C11D8;
  v24[4] = v3;
  v4 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, a2, off_1EA911040, v24);
  v6 = objc_msgSend__performInsertOrUpdateStatement_usingObject_(*(a1 + 32), v5, v4, *(a1 + 40));
  if (objc_msgSend_logOperations(*(a1 + 32), v7, v8))
  {
    v11 = objc_msgSend_db(*(a1 + 32), v9, v10);
    v14 = objc_msgSend_changeCount(v11, v12, v13);

    v15 = objc_opt_class();
    v17 = objc_msgSend_descriptionOfEntry_(v15, v16, *(a1 + 40));
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = *(a1 + 32);
      *buf = 138544130;
      v26 = v21;
      v27 = 2048;
      v28 = v22;
      v29 = 2114;
      v30 = v17;
      v31 = 2048;
      v32 = v14;
      _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "%{public}@(%p): INSERT (%{public}@) inserted: %lld", buf, 0x2Au);
    }
  }

  objc_msgSend_resetAndClearBindings(v4, v9, v10);
  if (v6)
  {
    sub_18868114C(v6, *(a1 + 32), *(a1 + 48));
  }

  return v6;
}

id sub_188686F80(uint64_t a1)
{
  v2 = objc_opt_class();
  v5 = objc_msgSend_allPropertyNames(v2, v3, v4);
  v7 = objc_msgSend_statementForInserting_inTable_(CKSQLiteCompiledStatement, v6, v5, *(a1 + 32));

  return v7;
}

id sub_1886870DC(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_188687348;
  v30 = &unk_1E70C1228;
  v31 = v2;
  v32 = *(a1 + 40);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, &v27);
  v7 = objc_msgSend__performInsertOrUpdateStatement_usingObject_(*(a1 + 32), v6, v5, *(a1 + 48), v27, v28, v29, v30, v31);
  if (objc_msgSend_logOperations(*(a1 + 32), v8, v9))
  {
    v12 = objc_msgSend_db(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_changeCount(v12, v13, v14);

    v16 = objc_opt_class();
    v18 = objc_msgSend_descriptionOfEntry_(v16, v17, *(a1 + 48));
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = *(a1 + 32);
      v25 = sub_188680BFC(*(a1 + 56), v24);
      *buf = 138544386;
      v34 = v22;
      v35 = 2048;
      v36 = v23;
      v37 = 2114;
      v38 = v18;
      v39 = 2112;
      v40 = v25;
      v41 = 2048;
      v42 = v15;
      _os_log_impl(&dword_1883EA000, v20, OS_LOG_TYPE_INFO, "%{public}@(%p): UPSERT (%{public}@) label: %@ inserted/modified: %lld", buf, 0x34u);
    }
  }

  objc_msgSend_resetAndClearBindings(v5, v10, v11);
  if (v7)
  {
    sub_18868114C(v7, *(a1 + 32), *(a1 + 64));
  }

  return v7;
}

id sub_188687348(uint64_t a1)
{
  v2 = objc_opt_class();
  v6 = objc_msgSend_allPropertyNames(v2, v3, v4);
  v7 = *(a1 + 32);
  if (*(a1 + 40))
  {
    objc_msgSend_statementForInserting_orUpdating_inTable_(CKSQLiteCompiledStatement, v5, v6, *(a1 + 40), v7);
  }

  else
  {
    objc_msgSend_statementForInserting_orUpdating_inTable_(CKSQLiteCompiledStatement, v5, v6, v6, v7);
  }
  v8 = ;

  return v8;
}

void sub_188687A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188687A24(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_188687C80;
  v27[3] = &unk_1E70C1228;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v28 = v4;
  v29 = v5;
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v27);
  v26 = 0;
  v9 = objc_msgSend_step_(v7, v8, &v26);
  v10 = v26;
  v13 = v10;
  if (v9 && !v10)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_188687C94;
    v25[3] = &unk_1E70C1250;
    v25[4] = *(a1 + 48);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v11, v25);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v11, v12) && !v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      v34 = 2114;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH MIN(%{public}@) fetched: %{public}@", buf, 0x2Au);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v14, v15);
  v23 = v13;

  return v13;
}

void sub_188687E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188687E2C(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_188688088;
  v27[3] = &unk_1E70C1228;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v28 = v4;
  v29 = v5;
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v27);
  v26 = 0;
  v9 = objc_msgSend_step_(v7, v8, &v26);
  v10 = v26;
  v13 = v10;
  if (v9 && !v10)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_18868809C;
    v25[3] = &unk_1E70C1250;
    v25[4] = *(a1 + 48);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v11, v25);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v11, v12) && !v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138544130;
      v31 = v19;
      v32 = 2048;
      v33 = v20;
      v34 = 2114;
      v35 = v21;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH MAX(%{public}@) fetched: %{public}@", buf, 0x2Au);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v14, v15);
  v23 = v13;

  return v13;
}

void sub_18868822C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188688244(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_188688554;
  v32[3] = &unk_1E70C12A0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v33 = v5;
  v34 = v6;
  v8 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(v2, v7, v3, v4, v32);
  objc_msgSend_overridePropertyInfoForProperty_newResultType_(v8, v9, *(a1 + 48), 1);
  v31 = 0;
  LODWORD(v4) = objc_msgSend_step_(v8, v10, &v31);
  v11 = v31;
  v14 = v11;
  if (v4 && !v11)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_188688638;
    v30[3] = &unk_1E70C1250;
    v30[4] = *(a1 + 56);
    objc_msgSend_enumerateResultColumnsWithBlock_(v8, v12, v30);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v12, v13))
  {
    v18 = objc_msgSend_searchBindingsDescription(v8, v15, v16);
    if (v14)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"<none>, Error = %@", v14);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"referenceID = %@", *(*(*(a1 + 56) + 8) + 40));
    }
    v19 = ;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = *(a1 + 32);
      v25 = *(a1 + 48);
      v27 = sub_188680BFC(*(a1 + 64), v26);
      *buf = 138544642;
      v36 = v23;
      v37 = 2048;
      v38 = v24;
      v39 = 2114;
      v40 = v25;
      v41 = 2114;
      v42 = v18;
      v43 = 2114;
      v44 = v27;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&dword_1883EA000, v21, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH (%{public}@) WHERE %{public}@, label: %{public}@ fetched: %{public}@", buf, 0x3Eu);
    }
  }

  objc_msgSend_resetAndClearBindings(v8, v15, v16);
  if (v14)
  {
    sub_18868114C(v14, *(a1 + 32), *(a1 + 72));
  }

  v28 = v14;

  return v14;
}

void sub_188688554(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = *(a1 + 32);
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v13, 1);
  objc_msgSend_setFetchedProperties_(v4, v7, v6);

  v12 = *(*(a1 + 40) + 48);
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, &v12, 1);
  objc_msgSend_setSearchProperties_(v4, v10, v9);

  objc_msgSend_setLimit_(v4, v11, &unk_1EFA854D0);
}

id sub_188688770(uint64_t a1)
{
  v2 = objc_alloc_init(CKSQLiteTableSearchEnumeratorSetupHelper);
  v3 = objc_opt_class();
  v6 = objc_msgSend_allPropertyNames(v3, v4, v5);
  objc_msgSend_setFetchedProperties_(v2, v7, v6);
  objc_msgSend_setSearchProperties_(v2, v8, v6);
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v2);
  }

  v12 = *(a1 + 32);
  v13 = objc_msgSend_fetchedProperties(v2, v9, v10);
  v16 = objc_msgSend_distinct(v2, v14, v15);
  v19 = objc_msgSend_searchProperties(v2, v17, v18);
  v21 = objc_msgSend_statementForFetchingProperties_distinct_inEntriesMatchingColumns_(v12, v20, v13, v16, v19);

  objc_msgSend_setupStatement_(v2, v22, v21);

  return v21;
}

id sub_188688990(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  objc_msgSend_entryEnumerator(*(a1 + 32), a2, a3);
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v25, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = objc_autoreleasePoolPush();
        v11 = (*(*(a1 + 40) + 16))(*(a1 + 40));
        if (v11)
        {
          v18 = v11;
          objc_autoreleasePoolPop(v10);

          goto LABEL_12;
        }

        v12 = v24;
        objc_autoreleasePoolPop(v10);
        if (v12)
        {
          goto LABEL_10;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v13, &v20, v25, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_10:

  v18 = objc_msgSend_error(v4, v14, v15, v20);
LABEL_12:
  objc_msgSend_invalidate(v4, v16, v17, v20);

  return v18;
}

id sub_188688D7C(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = sub_1886891D4;
  v64[3] = &unk_1E70C1318;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v65 = v4;
  v66 = v5;
  v67 = *(a1 + 64);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v64);
  v63 = 0;
  LODWORD(v3) = objc_msgSend_step_(v7, v8, &v63);
  v9 = v63;
  v12 = v9;
  if (v3 && !v9)
  {
    do
    {
      v13 = *(a1 + 32);
      v62 = 0;
      v14 = objc_msgSend_newEntryObjectFromStatement_error_(v13, v10, v7, &v62);
      v16 = v62;
      if (v14)
      {
        objc_msgSend_addObject_(*(a1 + 48), v15, v14);
      }

      v63 = v16;
      v18 = objc_msgSend_step_(v7, v17, &v63);
      v12 = v63;
    }

    while (v18 && !v12);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v10, v11))
  {
    v56 = objc_msgSend_fetchedColumns(v7, v19, v20);
    v22 = objc_msgSend_componentsJoinedByString_(v56, v21, @", ");
    v25 = objc_msgSend_searchBindingsDescription(v7, v23, v24);
    v55 = objc_opt_class();
    v57 = NSStringFromClass(v55);
    v26 = &ck_log_initialization_predicate;
    v53 = v12;
    v54 = v7;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 32);
      v29 = *(a1 + 56);
      v30 = v27;
      v32 = sub_188680BFC(v29, v31);
      v35 = objc_msgSend_count(*(a1 + 48), v33, v34);
      *buf = 138544642;
      v70 = v57;
      v71 = 2048;
      v72 = v28;
      v73 = 2114;
      v74 = v22;
      v75 = 2114;
      v76 = v25;
      v77 = 2114;
      v78 = v32;
      v79 = 2048;
      v80 = v35;
      _os_log_impl(&dword_1883EA000, v30, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH (%{public}@) WHERE %{public}@, label: %{public}@ fetched %ld entries:", buf, 0x3Eu);
    }

    v51 = v25;
    v52 = v22;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = *(a1 + 48);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v58, v68, 16);
    if (v38)
    {
      v39 = v38;
      v40 = *v59;
      do
      {
        v41 = 0;
        do
        {
          if (*v59 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v58 + 1) + 8 * v41);
          if (*v26 != -1)
          {
            dispatch_once(v26, ck_log_initialization_block);
          }

          v43 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
          {
            v45 = v26;
            v46 = *(a1 + 32);
            v47 = v43;
            v49 = objc_msgSend_descriptionOfProperties_from_(v55, v48, v56, v42, v51, v52);
            *buf = 138543874;
            v70 = v57;
            v71 = 2048;
            v72 = v46;
            v26 = v45;
            v73 = 2114;
            v74 = v49;
            _os_log_impl(&dword_1883EA000, v47, OS_LOG_TYPE_INFO, "%{public}@(%p):    %{public}@", buf, 0x20u);
          }

          ++v41;
        }

        while (v39 != v41);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v44, &v58, v68, 16);
      }

      while (v39);
    }

    v12 = v53;
    v7 = v54;
  }

  objc_msgSend_resetAndClearBindings(v7, v19, v20, v51);

  return v12;
}

id sub_1886891D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v5 = objc_opt_class();
    v3 = objc_msgSend_allPropertyNames(v5, v6, v7);
  }

  v8 = v3;
  v9 = objc_msgSend_statementForFetchingProperties_distinct_inEntriesMatchingColumns_(*(a1 + 40), v4, v3, *(a1 + 48), 0);

  return v9;
}

void sub_1886893C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1886893E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1886894DC;
  v14[3] = &unk_1E70C1430;
  v14[4] = v2;
  v15 = *(a1 + 48);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, v14);
  objc_msgSend_setSearchValues_(v5, v6, *(a1 + 40));
  v13 = 0;
  LOBYTE(v3) = objc_msgSend_step_(v5, v7, &v13);
  v8 = v13;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  objc_msgSend_resetAndClearBindings(v5, v9, v10);
  v11 = v8;

  return v8;
}

id sub_1886894DC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForFetchingColumns_inTable_(CKSQLiteCompiledStatement, a2, 0, *(a1 + 32));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 32), v4, v3, *(a1 + 40));
  objc_msgSend_setLimit_(v3, v5, &unk_1EFA854D0);

  return v3;
}

void sub_188689758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188689770(uint64_t a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_18868999C;
  v21[3] = &unk_1E70C11D8;
  v21[4] = v3;
  v4 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, a2, off_1EA9110E8, v21);
  v20 = 0;
  objc_msgSend_step_(v4, v5, &v20);
  v8 = v20;
  if (!v8)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1886899B0;
    v19[3] = &unk_1E70C1250;
    v19[4] = *(a1 + 40);
    objc_msgSend_enumerateResultColumnsWithBlock_(v4, v6, v19);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v6, v7))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 32);
      v16 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138543874;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "%{public}@(%p): SELECT COUNT (*) returns: %lld", buf, 0x20u);
    }
  }

  objc_msgSend_resetAndClearBindings(v4, v9, v10);
  v17 = v8;

  return v8;
}

void *sub_1886899B0(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  result = objc_msgSend_unsignedLongValue(a4, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_188689B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v11 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v9, v10);
    v12 = [CKSignificantIssue alloc];
    v13 = [CKSourceCodeLocation alloc];
    v15 = objc_msgSend_initWithFilePath_lineNumber_(v13, v14, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 2065);
    v17 = objc_msgSend_initWithSourceCodeLocation_format_(v12, v16, v15, @"Exception constructing predicate: %@");
    objc_msgSend_handleSignificantIssue_actions_(v11, v18, v17, 0);

    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"Exception constructing predicate: %@");
    objc_msgSend_UTF8String(v20, v21, v22);
    _os_crash();
    __break(1u);
    JUMPOUT(0x188689BD4);
  }

  _Unwind_Resume(exception_object);
}

void sub_188689D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188689D9C(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_18868A064;
  v36[3] = &unk_1E70C1390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v37 = v4;
  v38 = v5;
  v39 = *(a1 + 64);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v36);
  objc_msgSend_setSearchValues_(v7, v8, *(a1 + 48));
  v12 = objc_msgSend__bindProperties_valueObject_inStatement_includePrimaryKey_(*(a1 + 32), v9, *(a1 + 40), *(a1 + 56), v7, 0);
  if (!v12)
  {
    v13 = objc_msgSend_db(*(a1 + 32), v10, v11);
    v35 = 0;
    objc_msgSend_step_(v7, v14, &v35);
    v12 = v35;
    if (!v12)
    {
      *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_changeCount(v13, v15, v16);
    }
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v10, v11))
  {
    v19 = objc_opt_class();
    v21 = objc_msgSend_descriptionOfProperties_from_(v19, v20, *(a1 + 40), *(a1 + 56));
    v24 = objc_msgSend_searchBindingsDescription(v7, v22, v23);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = *(a1 + 32);
      v31 = sub_188680BFC(*(a1 + 80), v30);
      v32 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 138544642;
      v41 = v28;
      v42 = 2048;
      v43 = v29;
      v44 = 2114;
      v45 = v21;
      v46 = 2114;
      v47 = v24;
      v48 = 2114;
      v49 = v31;
      v50 = 2048;
      v51 = v32;
      _os_log_impl(&dword_1883EA000, v26, OS_LOG_TYPE_INFO, "%{public}@(%p): UPDATE SET (%{public}@) WHERE %{public}@, label: %{public}@, changeCount: %lld", buf, 0x3Eu);
    }
  }

  objc_msgSend_resetAndClearBindings(v7, v17, v18);
  v33 = v12;

  return v12;
}

id sub_18868A064(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForUpdatingColumns_inTable_(CKSQLiteCompiledStatement, a2, *(a1 + 32), *(a1 + 40));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 40), v4, v3, *(a1 + 48));

  return v3;
}

void sub_18868A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_18868A21C(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_18868A578;
  v43[3] = &unk_1E70C1430;
  v43[4] = v2;
  v44 = *(a1 + 48);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, v43);
  objc_msgSend_setSearchValues_(v5, v6, *(a1 + 40));
  v42 = 0;
  v8 = objc_msgSend_step_(v5, v7, &v42);
  v9 = v42;
  v12 = v9;
  v13 = 0;
  v14 = v9 == 0;
  if (v8 && !v9)
  {
    v13 = 0;
    do
    {
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v15 = objc_msgSend_fetchedValues(v5, v10, v11);
      objc_msgSend_addObject_(v13, v16, v15);

      v42 = 0;
      v18 = objc_msgSend_step_(v5, v17, &v42);
      v19 = v42;
      v12 = v19;
      v14 = v19 == 0;
    }

    while (v18 && !v19);
  }

  if (v14)
  {
    v20 = objc_msgSend_db(*(a1 + 32), v10, v11);
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_changeCount(v20, v21, v22);
  }

  if (objc_msgSend_logOperations(*(a1 + 32), v10, v11))
  {
    v25 = objc_msgSend_searchBindingsDescription(v5, v23, v24);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = *(a1 + 32);
      v32 = sub_188680BFC(*(a1 + 64), v31);
      v33 = *(*(*(a1 + 56) + 8) + 24);
      *buf = 138544386;
      v46 = v29;
      v47 = 2048;
      v48 = v30;
      v49 = 2114;
      v50 = v25;
      v51 = 2114;
      v52 = v32;
      v53 = 2048;
      v54 = v33;
      _os_log_impl(&dword_1883EA000, v27, OS_LOG_TYPE_INFO, "%{public}@(%p): DELETE WHERE %{public}@, label: %{public}@, removed %lld", buf, 0x34u);
    }
  }

  objc_msgSend_resetAndClearBindings(v5, v23, v24);
  if (v14)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_18868A66C;
    v39[3] = &unk_1E70C1408;
    v34 = v5;
    v35 = *(a1 + 32);
    v40 = v34;
    v41 = v35;
    objc_msgSend_enumerateObjectsUsingBlock_(v13, v36, v39);
  }

  v37 = v12;

  return v12;
}

id sub_18868A578(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_objectReferenceProperties(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_statementForDeletingInTable_returning_(CKSQLiteCompiledStatement, v5, *(a1 + 32), v4);
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 32), v7, v6, *(a1 + 40));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18868A65C;
  v11[3] = &unk_1E70C13E0;
  v8 = v6;
  v12 = v8;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v9, v11);

  return v8;
}

uint64_t sub_18868A66C(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18868A6E4;
  v4[3] = &unk_1E70C0A30;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return objc_msgSend_enumerateResultColumnsWithFetchedValues_block_(v2, a2, a2, v4);
}

void sub_18868A6E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    v8 = objc_msgSend_tableForReferenceProperty_(*(a1 + 32), v7, a2);
    v10 = objc_msgSend_referenceWasDeleted_(v8, v9, v11);

    v6 = v11;
  }
}

id sub_18868A868(uint64_t a1)
{
  v5 = objc_alloc_init(CKSQLiteTableSearchEnumeratorSetupHelper);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = objc_msgSend_fetchedProperties(v5, v3, v4);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_opt_class();
    v9 = objc_msgSend_allPropertyNames(v10, v11, v12);
  }

  v13 = v9;

  v15 = objc_msgSend_statementForFetchingColumns_inTable_(CKSQLiteCompiledStatement, v14, v13, *(a1 + 32));
  v18 = objc_msgSend_searchPredicate(v5, v16, v17);
  v20 = v18;
  v21 = *(a1 + 32);
  if (v18)
  {
    v22 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_18868A9D8;
    v25[3] = &unk_1E70BC1F0;
    v1 = &v26;
    v26 = v18;
  }

  else
  {
    v22 = 0;
  }

  objc_msgSend_addPredicateToStatement_predicate_(v21, v19, v15, v22);
  objc_msgSend_setupStatement_(v5, v23, v15);
  if (v20)
  {
  }

  return v15;
}

void sub_18868AB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18868AB40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18868AC88;
  v15[3] = &unk_1E70C1430;
  v15[4] = v2;
  v16 = *(a1 + 48);
  v5 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v2, v4, v3, v15);
  objc_msgSend_setSearchValues_(v5, v6, *(a1 + 40));
  v14 = 0;
  objc_msgSend_step_(v5, v7, &v14);
  v10 = v14;
  if (!v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_18868ACE0;
    v13[3] = &unk_1E70C1250;
    v13[4] = *(a1 + 56);
    objc_msgSend_enumerateResultColumnsWithBlock_(v5, v8, v13);
  }

  objc_msgSend_resetAndClearBindings(v5, v8, v9);
  v11 = v10;

  return v10;
}

id sub_18868AC88(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_statementForCountingRowsInTable_(CKSQLiteCompiledStatement, a2, *(a1 + 32));
  objc_msgSend_addPredicateToStatement_predicate_(*(a1 + 32), v4, v3, *(a1 + 40));

  return v3;
}

void *sub_18868ACE0(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  result = objc_msgSend_unsignedLongValue(a4, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_18868AE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18868AEA4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18868AFFC;
  v17[3] = &unk_1E70C1390;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v18 = v4;
  v19 = v5;
  v20 = *(a1 + 56);
  v7 = objc_msgSend_compiledStatementWithLabel_creationBlock_(v3, v6, v2, v17);
  objc_msgSend_setSearchValues_(v7, v8, *(a1 + 48));
  v16 = 0;
  objc_msgSend_step_(v7, v9, &v16);
  v12 = v16;
  if (!v12)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_18868B054;
    v15[3] = &unk_1E70C1250;
    v15[4] = *(a1 + 64);
    objc_msgSend_enumerateResultColumnsWithBlock_(v7, v10, v15);
  }

  objc_msgSend_resetAndClearBindings(v7, v10, v11);
  v13 = v12;

  return v12;
}