__CFString *sub_1BAF0B660(uint64_t a1)
{
  if ((a1 - 18001) > 5)
  {
    return @"setup started";
  }

  else
  {
    return off_1E7F1CF08[a1 - 18001];
  }
}

void sub_1BAF0BD70(int8x16_t *a1)
{
  v1 = a1[3].u8[0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1BAF0BE0C;
  v5[3] = &unk_1E7F1CE48;
  v4 = a1[2];
  v2 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  objc_msgSend_setupWithCompletion_completion_(v2, v3, v1, v5);
}

uint64_t sub_1BAF0BE0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_retryLevel(*(a1 + 32), a2, a3, a4))
  {
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_retryStartTime(*(a1 + 32), v8, v9, v10);
    v12 = Current - v11;
    v13 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 134218496;
      v28 = v17;
      v29 = 2048;
      v30 = objc_msgSend_retryLevel(v17, v14, v15, v16);
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "Pool manager %p retry %ld took %.3f seconds", buf, 0x20u);
    }

    v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, v20, v12, @"retryTimes");
    v26 = v21;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v26, &v25, 1);
    AnalyticsSendEvent();
  }

  return objc_msgSend__handleCompletedSigningAuthority_(*(a1 + 32), v5, *(a1 + 40), v6);
}

void sub_1BAF0C6D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_setupCompletion(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v13 = objc_msgSend_setupCompletion(*(a1 + 32), v6, v7, v8);
    v12 = objc_msgSend_state(*(a1 + 32), v9, v10, v11);
    v13[2](v13, v12);
  }
}

void sub_1BAF0D3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF0D400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF0D418(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_localizedDescription(v4, v6, v7, v8);
      v19 = 138543362;
      v20 = v9;
      _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Encountered error when attempting to perform XPC rotation to promotedcontentd %{public}@", &v19, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_refillStartTime(*(a1 + 32), v15, v16, v17);
    v19 = 134218752;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = Current - v18;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_INFO, "Pool manager %p finished rotating after calling daemon %p (%.6f) (%.6f)", &v19, 0x2Au);
  }
}

id sub_1BAF0E1EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31[0] = @"correlation_uuid";
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *(a1 + 48), a4);
  v32[0] = v8;
  v31[1] = @"authorityState";
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = objc_msgSend_finalState(v9, v5, v6, v7);
    objc_msgSend_numberWithUnsignedInteger_(v10, v12, v11, v13);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x1E695DFB0], v5, v6, v7);
  }
  v17 = ;
  v32[1] = v17;
  v31[2] = @"duration";
  v18 = *(a1 + 32);
  if (v18)
  {
    objc_msgSend_stageDurationIntervals(v18, v14, v15, v16);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x1E695DFB0], v14, v15, v16);
  }
  v19 = ;
  v32[2] = v19;
  v31[3] = @"poolState";
  v20 = MEMORY[0x1E696AD98];
  v24 = objc_msgSend_state(*(a1 + 40), v21, v22, v23);
  v27 = objc_msgSend_numberWithInteger_(v20, v25, v24, v26);
  v32[3] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v32, v31, 4);

  return v29;
}

void sub_1BAF0EC84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setTimerSet_(WeakRetained, v3, 0, v4);

  v15 = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_now(MEMORY[0x1E695DF00], v5, v6, v7);
  objc_msgSend_timeIntervalSince1970(v8, v9, v10, v11);
  objc_msgSend__onTimer_(v15, v12, v13, v14);
}

void sub_1BAF0EF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

uint64_t sub_1BAF0EF6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF0F080(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_invalidateSessionAndCancelTasks_(v4, v5, *(a1 + 32), v6);
  v7 = APLogForCategory(0x22uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = objc_msgSend_name(v4, v8, v9, v10);
    v12 = v11;
    v13 = ".";
    if (*(a1 + 32))
    {
      v13 = " and all pending tasks are canceled.";
    }

    v14 = 138543618;
    v15 = v11;
    v16 = 2082;
    v17 = v13;
    _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_INFO, "Service %{public}@ is invalidated%{public}s", &v14, 0x16u);
  }
}

void sub_1BAF0FED8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__timerFired(WeakRetained, v1, v2, v3);
}

uint64_t CreateDiagnosticReport(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v8, v9, v10))
  {
    v11 = objc_alloc(MEMORY[0x1E695E000]);
    v14 = objc_msgSend_initWithSuiteName_(v11, v12, @"com.apple.AdPlatforms", v13);
    v17 = objc_msgSend_objectForKey_(v14, v15, @"APDiagnosticSettings.enableDiagnosticReporting", v16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v17;
      v25 = objc_msgSend_BOOLValue(v21, v22, v23, v24);
    }

    else
    {
      v21 = MEMORY[0x1E695E118];
      v25 = objc_msgSend_BOOLValue(MEMORY[0x1E695E118], v18, v19, v20);
    }

    if (v25)
    {
      v27 = objc_alloc_init(APDiagnosticReporter);
      v31 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v28, v29, v30);
      v35 = objc_msgSend_processName(v31, v32, v33, v34);

      v36 = APLogForCategory(0x12uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138478595;
        v53 = v38;
        v54 = 2114;
        v55 = v5;
        v56 = 2114;
        v57 = v6;
        v58 = 2112;
        v59 = v35;
        _os_log_impl(&dword_1BADC1000, v36, OS_LOG_TYPE_DEFAULT, "Diagnostic Reporter Taking an %{private}@ snapshot, description:%{public}@, payload:%{public}@, process:%@", buf, 0x2Au);
      }

      v49 = v35;
      v40 = objc_msgSend_signatureWithDomain_type_subType_detectedProcess_triggerThresholdValues_(v27, v39, @"PromotedContent", *MEMORY[0x1E69D50F0], v7, v35, 0);
      v42 = v40;
      if (v5)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v40, v41, v5, *MEMORY[0x1E69D50E8]);
      }

      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_1BAF10D64;
      v50[3] = &unk_1E7F1D000;
      v43 = v27;
      v51 = v43;
      v26 = objc_msgSend_snapshotWithSignature_duration_event_payload_reply_(v43, v44, v42, 0, v6, v50, 0.0);
      if ((v26 & 1) == 0)
      {
        v45 = APLogForCategory(0x12uLL);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          v48 = NSStringFromClass(v46);
          *buf = 138478083;
          v53 = v48;
          v54 = 2114;
          v55 = v5;
          _os_log_impl(&dword_1BADC1000, v45, OS_LOG_TYPE_ERROR, "Diagnostic Reporter Failed to send a %{private}@ snapshot,description:%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void sub_1BAF10D64(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = APLogForCategory(0x12uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138478083;
    v7 = v5;
    v8 = 2114;
    v9 = v2;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_INFO, "Diagnostic Reporter Received a response from %{private}@: %{public}@", &v6, 0x16u);
  }
}

void APDatabaseError(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413314;
    v63 = v11;
    v64 = 2048;
    v65 = a3;
    v66 = 1024;
    v67 = a1;
    v68 = 1024;
    v69 = a2;
    v70 = 2112;
    v71 = v12;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "Error, Database:%@, Version:%ld, Type:%d, Error code: %d, Description: %@", buf, 0x2Cu);
  }

  v18 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v15, v16, v17);
  isRunningTests = objc_msgSend_isRunningTests(v18, v19, v20, v21);

  if ((isRunningTests & 1) == 0)
  {
    v25 = MEMORY[0x1E695DF90];
    v60[0] = @"ErrorType";
    v26 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v23, a1, v24);
    v61[0] = v26;
    v60[1] = @"ErrorCode";
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v27, a2, v28);
    v29 = v12;
    v31 = v30 = v13;
    v61[1] = v31;
    v60[2] = @"Version";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v32, a3, v33);
    v61[2] = v34;
    v61[3] = v11;
    v60[3] = @"Name";
    v60[4] = @"Description";
    v57 = v29;
    v61[4] = v29;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v61, v60, 5);
    v39 = objc_msgSend_dictionaryWithDictionary_(v25, v37, v36, v38);

    v13 = v30;
    if (v30)
    {
      objc_msgSend_addEntriesFromDictionary_(v39, v40, v30, v41);
    }

    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"Error, Database:%@, Version:%ld, Type:%d, Error code: %d", v41, v11, a3, a1, a2);
    CreateDiagnosticReport(v42, v39, @"Database");

    v12 = v57;
    if (objc_msgSend_isEqualToString_(v11, v43, @"APDatabase", v44))
    {
      v47 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v45, 0, v46);
      v58[0] = @"ErrorType";
      v50 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, a1, v49);
      v59[0] = v50;
      v58[1] = @"Version";
      v53 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v51, a3, v52);
      v58[2] = @"Name";
      v59[1] = v53;
      v59[2] = v47;
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, v59, v58, 3);

      objc_msgSend_sendEvent_customPayload_(APAnalytics, v56, @"Database", v55);
    }

    else
    {
      v47 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v63 = v11;
        _os_log_impl(&dword_1BADC1000, v47, OS_LOG_TYPE_ERROR, "Error, Unkown database Name: %@", buf, 0xCu);
      }
    }
  }
}

uint64_t sub_1BAF111E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  if (objc_msgSend_isEqualToString_(v8, v9, @"com.apple.AppStore", v10) & 1) != 0 || (objc_msgSend_isEqualToString_(v8, v11, @"com.apple.AppStore.ProductPageExtension", v12))
  {
    v15 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v8, v13, @"com.apple.news", v14))
  {
    v15 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v8, v17, @"com.apple.stocks", v18))
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_1BAF11298(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"com.apple.ap.promotedcontentd", v10);
  return isEqualToString;
}

uint64_t sub_1BAF112F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"com.apple.AppStore.ProductPageExtension", v5))
  {
    v8 = 979;
  }

  else if (objc_msgSend_isEqualToString_(v3, v6, @"com.apple.AppStore", v7))
  {
    v8 = 978;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"com.apple.news", v10))
  {
    v8 = 976;
  }

  else if (objc_msgSend_isEqualToString_(v3, v11, @"com.apple.stocks", v12))
  {
    v8 = 977;
  }

  else
  {
    v8 = 975;
  }

  return v8;
}

id sub_1BAF11390(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x400000) != 0)
  {
    objc_msgSend_apUTCSharedFormatter(MEMORY[0x1E696AC80], a2, a3, a4);
  }

  else
  {
    objc_msgSend_apLocalSharedFormatter(MEMORY[0x1E696AC80], a2, a3, a4);
  }
  v5 = ;
  v8 = objc_msgSend_stringFromDate_(v5, v6, a1, v7);

  return v8;
}

__CFString *sub_1BAF113FC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  objc_msgSend_doubleValue(a1, a2, a3, a4);
  if (fabs(v5) == INFINITY)
  {
    v7 = APLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543619;
      v11 = a1;
      v12 = 2113;
      v13 = objc_opt_class();
      v8 = v13;
      _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_ERROR, "Unable to serialize the following number into JSON. Please file a radar against PEP Advertising | 1.0: %{public}@ (%{private}@).", &v10, 0x16u);
    }

    v6 = @"∞";
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

id sub_1BAF11590(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_initWithCapacity_(v5, v6, 4, v7);
  v12 = objc_msgSend_domain(a1, v9, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v13, v12, @"domain");

  v14 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_code(a1, v15, v16, v17);
  v21 = objc_msgSend_numberWithInteger_(v14, v19, v18, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v22, v21, @"code");

  v26 = objc_msgSend_localizedDescription(a1, v23, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v27, v26, @"localizedDescription");

  v31 = objc_msgSend_userInfo(a1, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_userInfo(a1, v32, v33, v34);
    v38 = objc_msgSend_jsonRepresentationWithOptions_(v35, v36, a3, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v39, v38, @"userInfo");
  }

  return v8;
}

id sub_1BAF129CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v34, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_msgSend_jsonRepresentationWithOptions_(v13, v14, a3, v15);
          objc_msgSend_addObject_(v6, v17, v16, v18);
        }

        else
        {
          v16 = APLogForCategory(0x1DuLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = 138478083;
            v31 = v20;
            v32 = 2113;
            v33 = v13;
            _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "ERROR: Unable to serialize the object into JSON. Please file a radar against PEP Advertising | 1.0.\n%{private}@ (%{private}@)", buf, 0x16u);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v21, &v26, v34, 16);
    }

    while (v10);
  }

  v24 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v22, v6, v23);

  return v24;
}

id sub_1BAF12BC8(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_jsonRepresentationWithOptions_(a1, v6, a3, v7);
  v18 = 0;
  v10 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v9, v8, a3 & 0xF, &v18);
  v11 = v18;
  if (v11)
  {
    v12 = APLogForCategory(0x1DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_msgSend_localizedDescription(v11, v13, v14, v15);
      *buf = 138478083;
      v20 = v16;
      v21 = 2113;
      v22 = v8;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "Error serializing array into JSON (%{private}@):\n%{private}@", buf, 0x16u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

__CFString *sub_1BAF12E2C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_jsonDataWithOptions_(a1, a2, a3, a4);
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_initWithData_encoding_(v5, v6, v4, 4);
  }

  else
  {
    v7 = @"[]";
  }

  return v7;
}

uint64_t sub_1BAF15A70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF15B10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_locationEnabled(*(a1 + 32), a2, a3, a4))
  {
    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v49 = 138477827;
      v50 = objc_opt_class();
      v9 = v50;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_DEBUG, "[%{private}@] Location services is currently enabled, not stopping location updates.", &v49, 0xCu);
    }

LABEL_17:

    return;
  }

  if (!objc_msgSend_isLocationInitialized(*(a1 + 32), v5, v6, v7) || !objc_msgSend_isLocationUpdating(*(a1 + 32), v10, v11, v12))
  {
    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v38 = *(a1 + 32);
      v39 = v37;
      if (objc_msgSend_isLocationInitialized(v38, v40, v41, v42))
      {
        v46 = @"NO";
      }

      else
      {
        v46 = @"YES";
      }

      isLocationUpdating = objc_msgSend_isLocationUpdating(*(a1 + 32), v43, v44, v45);
      v49 = 138478339;
      if (isLocationUpdating)
      {
        v48 = @"NO";
      }

      else
      {
        v48 = @"YES";
      }

      v50 = v37;
      v51 = 2114;
      v52 = v46;
      v53 = 2112;
      v54 = v48;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_INFO, "[%{private}@] LocationManager has not yet initialized (%{public}@) or location is already stopped (%@{public}).", &v49, 0x20u);
    }

    goto LABEL_17;
  }

  v13 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v49 = 138477827;
    v50 = objc_opt_class();
    v14 = v50;
    _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "[%{private}@] Stopping location updates.", &v49, 0xCu);
  }

  objc_msgSend_setIsLocationUpdating_(*(a1 + 32), v15, 0, v16);
  v20 = objc_msgSend_clLocationManager(*(a1 + 32), v17, v18, v19);
  objc_msgSend_stopMonitoringSignificantLocationChanges(v20, v21, v22, v23);

  v27 = objc_msgSend_clLocationManager(*(a1 + 32), v24, v25, v26);
  objc_msgSend_stopUpdatingLocation(v27, v28, v29, v30);

  objc_msgSend_setLastPlacemarkLocation_(*(a1 + 32), v31, 0, v32);
  objc_msgSend_setCurrentPlacemark_(*(a1 + 32), v33, 0, v34);
  objc_msgSend_setLocation_(*(a1 + 32), v35, 0, v36);
}

void sub_1BAF15D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF15E58;
  block[3] = &unk_1E7F1CCE8;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_1BAF15E58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  objc_msgSend_setUpdatingPlacemark_(*(a1 + 32), a2, 0, a4);
  if (*(a1 + 40))
  {
    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v29 = 138478083;
      v30 = v9;
      v31 = 2114;
      v32 = v10;
      v11 = v9;
      v12 = "[%{private}@] Error updating placemark %{public}@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_1BADC1000, v13, v14, v12, &v29, v15);
    }
  }

  else
  {
    v16 = objc_msgSend_firstObject(*(a1 + 48), v5, v6, v7);
    objc_msgSend_setCurrentPlacemark_(*(a1 + 32), v17, v16, v18);

    v22 = objc_msgSend_currentPlacemark(*(a1 + 32), v19, v20, v21);
    v26 = objc_msgSend_location(v22, v23, v24, v25);
    objc_msgSend_setLastPlacemarkLocation_(*(a1 + 32), v27, v26, v28);

    v8 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v29 = 138477827;
      v30 = objc_opt_class();
      v11 = v30;
      v12 = "[%{private}@] Updated placemark";
      v13 = v8;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
      goto LABEL_6;
    }
  }
}

uint64_t sub_1BAF160BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_authorizationStatus(*(a1 + 32), a2, a3, a4);
  v6 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = MEMORY[0x1E696AD98];
    v9 = v7;
    v12 = objc_msgSend_numberWithInt_(v8, v10, v5, v11);
    *buf = 138478083;
    v42 = v7;
    v43 = 2114;
    v44 = v12;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_DEBUG, "[%{private}@] Core Location AuthorizationStatus: %{public}@", buf, 0x16u);
  }

  v16 = objc_msgSend_callerStatus(*(a1 + 40), v13, v14, v15);
  v19 = objc_msgSend_locationEnabledFor_(APLocationManager, v17, v16, v18);
  v25 = objc_msgSend_locationEnabledFor_(APLocationManager, v20, v5, v21);
  if (v19 != v25)
  {
    v26 = objc_msgSend__authorizationChangedBlocks(APLocationManager, v22, v23, v24);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1BAF162EC;
    v39[3] = &unk_1E7F1D070;
    v40 = v25;
    objc_msgSend_enumerateObjectsUsingBlock_(v26, v27, v39, v28);
  }

  objc_msgSend_setCallerStatus_(*(a1 + 40), v22, v5, v24);
  if (v25)
  {
    return objc_msgSend_start(*(a1 + 40), v29, v30, v31);
  }

  v33 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = objc_opt_class();
    *buf = 138477827;
    v42 = v34;
    v35 = v34;
    _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_DEBUG, "[%{private}@] Location is disabled for the app importing PromotedContent Framework.", buf, 0xCu);
  }

  return objc_msgSend_stop(*(a1 + 40), v36, v37, v38);
}

uint64_t sub_1BAF1639C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_location(*(a1 + 32), a2, a3, a4);

  if (!v5)
  {
    v9 = APLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 138477827;
      *&v22[4] = objc_opt_class();
      v10 = *&v22[4];
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_DEBUG, "[%{private}@] Current Location has been updated for the first time.", v22, 0xCu);
    }
  }

  v11 = objc_msgSend_lastObject(*(a1 + 40), v6, v7, v8, *v22, *&v22[8]);
  objc_msgSend_setLocation_(*(a1 + 32), v12, v11, v13);

  v14 = APLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = *(a1 + 40);
    *v22 = 138478083;
    *&v22[4] = v15;
    *&v22[12] = 2113;
    *&v22[14] = v16;
    v17 = v15;
    _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_DEBUG, "[%{private}@ didUpdateLocations]: locations = %{private}@", v22, 0x16u);
  }

  return objc_msgSend_updatePlacemark(*(a1 + 32), v18, v19, v20);
}

uint64_t sub_1BAF17ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = APLogForCategory(0x26uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "File enumeration error. %{public}@", &v6, 0xCu);
  }

  return 1;
}

id sub_1BAF17B70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *MEMORY[0x1E695DB78];
  while (1)
  {
    v7 = v5;
    v5 = objc_msgSend_nextObject(*(a1 + 32), a2, a3, a4);

    if (!v5)
    {
      break;
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      v13 = 0;
      objc_msgSend_getResourceValue_forKey_error_(v5, a2, &v13, v6, 0);
      if (objc_msgSend_BOOLValue(v13, v8, v9, v10))
      {
        continue;
      }
    }

    v11 = objc_msgSend_relativePath(v5, a2, a3, a4);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

uint64_t sub_1BAF17F64(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = APLogForCategory(0x26uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "File enumeration error. %{public}@", &v6, 0xCu);
  }

  return 1;
}

void sub_1BAF191B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v6 = *(a1 + 32);
  v13 = 0;
  v8 = objc_msgSend_removeItemAtPath_error_(v5, v7, v6, &v13);
  v9 = v13;

  v10 = APLogForCategory(0x33uLL);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_DEBUG, "Successfully removed SFS folder.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_ERROR, "Failed to remove SFS folder: %{public}@", buf, 0xCu);
    }

    objc_msgSend_sendAnalyticError_domain_code_(APStorageManager, v12, @"Failed", @"SFS", 16102);
  }
}

void sub_1BAF19724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAF19758(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = APLogForCategory(0x12uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = objc_opt_class();
    v5 = v17;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Springboard unlock notification received.", buf, 0xCu);
  }

  state64 = 0;
  state = notify_get_state(a2, &state64);
  if (state)
  {
    v7 = state;
    v8 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138478083;
      v17 = v9;
      v18 = 1026;
      v19 = v7;
      v10 = v9;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to get state for _screenLockNotifyToken. Error code %{public}d", buf, 0x12u);
LABEL_9:
    }
  }

  else
  {
    if (state64)
    {
      return;
    }

    notify_cancel(dword_1EDBA1F18);
    dword_1EDBA1F18 = -1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = objc_msgSend_taskHandler(WeakRetained, v12, v13, v14);
      v10[2]();
      goto LABEL_9;
    }
  }
}

uint64_t APDiagnosticsSubmissionAllowed(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], a2, a3, a4);
  isDiagnosticSubmissionAllowed = objc_msgSend_isDiagnosticSubmissionAllowed(v4, v5, v6, v7);

  return isDiagnosticSubmissionAllowed;
}

void APSimulateCrashNoKillProcess(const char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [v10 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v12, v13, v11, &a9);

  APSimulateCrash(a1, v14, 0);
}

void APSimulateCrash(const char *a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = APLogForCategory(0x11uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = v5;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v10 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v7, v8, v9);
  isRunningTests = objc_msgSend_isRunningTests(v10, v11, v12, v13);

  if (isRunningTests)
  {
    v17 = APLogForCategory(0x11uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "We should exit at this point. If you see this log outside of the Unit Tests, Please file a radar...", buf, 2u);
    }
  }

  else
  {
    v26[0] = @"ExceptionCode";
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%lld", v16, a1);
    v26[1] = @"KillProcess";
    v27[0] = v18;
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%d", v20, a3);
    v27[1] = v21;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v27, v26, 2);
    CreateDiagnosticReportSubtypeCrash(v5, v23);

    if (a3)
    {
      sub_1BAF8E214(v5, a1, v24, v25);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1BAF8E188(v5, a1);
    }
  }
}

void sub_1BAF1A718(void *a1, void *a2, void *a3, void *a4)
{
  v76[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v68 = 0;
  v67 = 0;
  v9 = a4;
  v10 = v8;
  v14 = objc_msgSend_date(MEMORY[0x1E695DF00], v11, v12, v13);
  objc_msgSend_timeIntervalSinceDate_(v14, v15, a1[4], v16);
  v18 = llround(v17 * 1000.0);
  v75[0] = @"statusCode";
  v19 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_statusCode(v10, v20, v21, v22);
  v26 = objc_msgSend_numberWithInteger_(v19, v24, v23, v25);
  v76[0] = v26;
  v75[1] = @"requestTime";
  v29 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, v18, v28);
  v76[1] = v29;
  v75[2] = @"requestType";
  v32 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v30, a1[7], v31);
  v76[2] = v32;
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v76, v75, 3);

  v35 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = a1[7];
    *buf = 134218240;
    v70 = v36;
    v71 = 2048;
    v72 = v18 / 1000.0;
    _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_INFO, "FPDI server request type %ld: %.3f", buf, 0x16u);
  }

  objc_msgSend_sendEvent_customPayload_(APAnalytics, v37, @"signingAuthoritySetupRequest", v34);
  v41 = objc_msgSend_statusCode(v10, v38, v39, v40);
  if (!v9 && v7 && v41 == 200)
  {
    v45 = a1[5];
    v66 = 0;
    v46 = objc_msgSend__retrieveResponse_andLength_fromData_error_(v45, v42, &v68, &v67, v7, &v66);
    v47 = v66;
    if ((v46 & 1) == 0)
    {
      v48 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1BADC1000, v48, OS_LOG_TYPE_ERROR, "Signing response translation encountered a failure.", buf, 2u);
      }

      v68 = 0;
      v67 = 0;
    }
  }

  else
  {
    if (v9)
    {
      v49 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v53 = a1[7];
        v54 = objc_msgSend_code(v9, v50, v51, v52);
        v58 = objc_msgSend_localizedDescription(v9, v55, v56, v57);
        *buf = 134218498;
        v70 = v53;
        v71 = 2048;
        v72 = *&v54;
        v73 = 2112;
        v74 = v58;
        _os_log_impl(&dword_1BADC1000, v49, OS_LOG_TYPE_ERROR, "Response error %ld for request type %ld: %@", buf, 0x20u);
      }
    }

    v47 = v9;
    if (objc_msgSend_statusCode(v10, v42, v43, v44) != 200)
    {
      v59 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v63 = a1[7];
        v64 = objc_msgSend_statusCode(v10, v60, v61, v62);
        *buf = 134218240;
        v70 = v63;
        v71 = 2048;
        v72 = *&v64;
        _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_ERROR, "FPDI server request type %ld received %ld response code.", buf, 0x16u);
      }

      v47 = v9;
    }
  }

  v65 = a1[6];
  if (v65)
  {
    (*(v65 + 16))(v65, v68, v67, v47);
  }
}

void sub_1BAF1C000()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.ap.promotedcontentd.xpc-activity", v2);
  v1 = qword_1EDBA41A0;
  qword_1EDBA41A0 = v0;
}

void sub_1BAF1C5D0(uint64_t a1, void *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_msgSend_setActivity_(*(a1 + 32), v4, v3, v5);
  v9 = objc_msgSend_activity(*(a1 + 32), v6, v7, v8);
  state = xpc_activity_get_state(v9);

  v11 = APLogForCategory(0x39uLL);
  v12 = v11;
  if (state != 2)
  {
    if (state)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v55 = objc_opt_class();
        v56 = *(a1 + 32);
        v57 = v55;
        v61 = objc_msgSend_taskID(v56, v58, v59, v60);
        *buf = 138478339;
        v76 = v55;
        v77 = 2114;
        v78 = v61;
        v79 = 2048;
        v80 = state;
        _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Unexpected XPC_ACTIVITY_STATE for activity %{public}@ - %ld", buf, 0x20u);
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      v15 = v13;
      v19 = objc_msgSend_taskID(v14, v16, v17, v18);
      v20 = *(a1 + 40);
      *buf = 138412802;
      v76 = v13;
      v77 = 2114;
      v78 = v19;
      v79 = 2114;
      v80 = v20;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_DEFAULT, "[%@]: launchd checking in with activity %{public}@ and criteria %{public}@", buf, 0x20u);
    }

    v12 = xpc_activity_copy_criteria(v3);
    v24 = objc_msgSend_delegate(*(a1 + 32), v21, v22, v23);
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v29 = objc_msgSend_delegate(*(a1 + 32), v26, v27, v28);
      v32 = objc_msgSend_checkinWithCriteria_(v29, v30, v12, v31);

      if (v32)
      {
        xpc_activity_set_criteria(v3, v32);
        v33 = APLogForCategory(0x39uLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v76 = v32;
          _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_INFO, "Setting the criteria to: %{public}@", buf, 0xCu);
        }

LABEL_21:
      }
    }

    else
    {
      if (v12)
      {
LABEL_23:

        goto LABEL_24;
      }

      v62 = objc_msgSend_delegate(*(a1 + 32), v26, v27, v28);
      v32 = objc_msgSend_criteria(v62, v63, v64, v65);

      if (v32)
      {
        v33 = objc_msgSend__translateCriteria_(APXPCActivity, v66, v32, v67);
        xpc_activity_set_criteria(v3, v33);
        v68 = APLogForCategory(0x39uLL);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v76 = v33;
          _os_log_impl(&dword_1BADC1000, v68, OS_LOG_TYPE_INFO, "Setting the criteria to: %{public}@", buf, 0xCu);
        }

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_opt_class();
    v35 = *(a1 + 32);
    v36 = v34;
    v40 = objc_msgSend_taskID(v35, v37, v38, v39);
    *buf = 138478339;
    v76 = v34;
    v77 = 2114;
    v78 = v40;
    v79 = 2048;
    v80 = 2;
    _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Request to run activity %{public}@ (state: %ld)", buf, 0x20u);
  }

  v44 = objc_msgSend_delegate(*(a1 + 32), v41, v42, v43);
  v47 = objc_msgSend_runActivity_(v44, v45, *(a1 + 32), v46);

  v51 = *(a1 + 32);
  if (v47)
  {
    if (objc_msgSend__continueActivity(v51, v48, v49, v50))
    {
      objc_msgSend__startDeferralCheck(*(a1 + 32), v52, v53, v54);
    }

    else
    {
      v69 = MEMORY[0x1E696AEC0];
      v70 = objc_msgSend_taskID(*(a1 + 32), v52, v53, v54);
      v73 = objc_msgSend_stringWithFormat_(v69, v71, @"Request to continue execution of activity %@ failed. Please file a radar.", v72, v70);

      v74 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v76 = v73;
        _os_log_impl(&dword_1BADC1000, v74, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    objc_msgSend_finished(v51, v48, v49, v50);
  }

LABEL_24:
}

void sub_1BAF1D24C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  shouldDefer = objc_msgSend_shouldDefer(*(a1 + 32), a2, a3, a4);
  v9 = *(a1 + 32);
  if (shouldDefer)
  {
    objc_msgSend__endDeferralCheck(v9, v5, v6, v7);
    v13 = objc_msgSend_delegate(*(a1 + 32), v10, v11, v12);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      objc_initWeak(location, *(a1 + 32));
      v18 = objc_msgSend_delegate(*(a1 + 32), v15, v16, v17);
      v19 = *(a1 + 32);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1BAF1D47C;
      v29[3] = &unk_1E7F1D1F0;
      objc_copyWeak(&v30, location);
      objc_msgSend_deferActivity_completionHandler_(v18, v20, v19, v29);

      objc_destroyWeak(&v30);
      objc_destroyWeak(location);
    }

    else
    {
      v21 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = *(a1 + 32);
        v24 = v22;
        v28 = objc_msgSend_taskID(v23, v25, v26, v27);
        *location = 138478083;
        *&location[4] = v22;
        v32 = 2114;
        v33 = v28;
        _os_log_impl(&dword_1BADC1000, v21, OS_LOG_TYPE_ERROR, "[%{private}@]: Activity %{public}@ was asked to defer but does not support deferral.", location, 0x16u);
      }
    }
  }

  else
  {

    MEMORY[0x1EEE66B58](v9, sel__backgroundDeferralCheck, v6, v7);
  }
}

void sub_1BAF1D450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAF1D47C(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_deferActivity(WeakRetained, v3, v4, v5);
  }

  else
  {
    v6 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = objc_opt_class();
      v9 = v8;
      v10 = objc_loadWeakRetained((a1 + 32));
      v14 = objc_msgSend_taskID(v10, v11, v12, v13);
      *buf = 138478083;
      v17 = v8;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_ERROR, "[%{private}@]: Activity %{public}@ failed to defer.", buf, 0x16u);
    }
  }
}

id sub_1BAF1D74C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  objc_msgSend_getUUIDBytes_(a1, a2, v7, a4);
  v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v4, v7, 16);

  return v5;
}

id sub_1BAF1D7C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc(MEMORY[0x1E695DF88]);
  v9 = objc_msgSend_data(a1, v6, v7, v8);
  v12 = objc_msgSend_initWithData_(v5, v10, v9, v11);

  v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  v16 = objc_msgSend_initWithRandomOfLength_(v13, v14, a3, v15);
  objc_msgSend_appendData_(v12, v17, v16, v18);

  v21 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v19, v12, v20);

  return v21;
}

void sub_1BAF1DEB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v9 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v6, v7, v8);
  v13 = objc_msgSend_UUIDString(v9, v10, v11, v12);

  v14 = NSTemporaryDirectory();
  v17 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, v13, v16);

  v21 = objc_msgSend_databaseFilePath(*(a1 + 32), v18, v19, v20);
  v36 = 0;
  v23 = objc_msgSend_moveItemAtPath_toPath_error_(v5, v22, v21, v17, &v36);
  v24 = v36;

  if ((v23 & 1) == 0)
  {
    v25 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = v26;
      v31 = objc_msgSend_localizedFailureReason(v24, v28, v29, v30);
      v35 = objc_msgSend_userInfo(v24, v32, v33, v34);
      *buf = 138478339;
      v38 = v26;
      v39 = 2114;
      v40 = v31;
      v41 = 2114;
      v42 = v35;
      _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to Move Corrupted File, error: %{public}@, userInfo: %{public}@", buf, 0x20u);
    }
  }
}

void sub_1BAF1E49C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_connectionInterrupted(WeakRetained, v1, v2, v3);
}

void sub_1BAF1E95C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v10, v14, 16);
  if (v3)
  {
    v7 = v3;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_connectionInterrupted(*(*(&v10 + 1) + 8 * v9++), v4, v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v10, v14, 16);
    }

    while (v7);
  }
}

id sub_1BAF20064(void *a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_msgSend_initWithData_encoding_(v2, v3, a1, 4);
  v8 = v4;
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_msgSend_length(a1, v5, v6, v7);
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Binary data, %ld bytes, ...", v12, v10);
  }

  v13 = v9;

  return v13;
}

uint64_t sub_1BAF20140(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, a3, a4);
  if (result)
  {
    qword_1EDBA40F8 = objc_alloc_init(APTestingRig);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void sub_1BAF202C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_firstObject(a2, v6, v7, v8);
  v14 = objc_msgSend_dataUsingEncoding_(v9, v10, 4, v11);

  v13 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v12, v14, 1, 0);
  if (v13)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5[2](v5, 0);
  }
}

id sub_1BAF20620(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_length(a1, a2, a3, a4))
  {
    memset(&strm.avail_in, 0, 104);
    v6 = a1;
    strm.next_in = objc_msgSend_bytes(v6, v7, v8, v9);
    strm.avail_in = objc_msgSend_length(a1, v10, v11, v12);
    if (a3 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (a3 == 2)
    {
      v15 = objc_msgSend_deflateInit2Helper_compressionLevel_(a1, v13, &strm, 9);
    }

    else
    {
      v15 = objc_msgSend_deflateInit2Helper_compressionLevel_(a1, v13, &strm, v14);
    }

    v18 = 0;
    if (!v15)
    {
      v20 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v16, 0x4000, v17);
      do
      {
        v37 = strm;
        if (objc_msgSend_compareDataSizeHelper_data_(a1, v19, &v37, v20))
        {
          objc_msgSend_increaseLengthBy_(v20, v21, 0x4000, v22);
        }

        v23 = v20;
        v27 = objc_msgSend_mutableBytes(v23, v24, v25, v26);
        strm.next_out = (v27 + strm.total_out);
        v31 = objc_msgSend_length(v20, v28, v29, v30);
        strm.avail_out = v31 - LODWORD(strm.total_out);
        deflate(&strm, 4);
      }

      while (!strm.avail_out);
      deflateEnd(&strm);
      objc_msgSend_setLength_(v20, v32, strm.total_out, v33);
      v18 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v34, v20, v35);
    }
  }

  else
  {
    v18 = a1;
  }

  return v18;
}

id sub_1BAF207B0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_length(a1, a2, a3, a4))
  {
    v47 = a1;
    goto LABEL_19;
  }

  v8 = objc_msgSend_length(a1, v5, v6, v7);
  v12 = objc_msgSend_length(a1, v9, v10, v11);
  v15 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v13, v8 + (v12 >> 1), v14);
  memset(&v53[8], 0, 104);
  v16 = a1;
  *v53 = objc_msgSend_bytes(v16, v17, v18, v19);
  *&v53[8] = objc_msgSend_length(a1, v20, v21, v22);
  if (objc_msgSend_inflateInit2Helper_(a1, v23, v53, v24))
  {
    goto LABEL_17;
  }

  v26 = v12 >> 1;
  do
  {
    v58 = *&v53[64];
    v59 = *&v53[80];
    v60 = *&v53[96];
    *buf = *v53;
    v55 = *&v53[16];
    v56 = *&v53[32];
    v57 = *&v53[48];
    if (objc_msgSend_compareDataSizeHelper_data_(a1, v25, buf, v15))
    {
      objc_msgSend_increaseLengthBy_(v15, v27, v26, v28);
    }

    v29 = v15;
    v33 = objc_msgSend_mutableBytes(v29, v30, v31, v32);
    *&v53[24] = v33 + *&v53[40];
    v37 = objc_msgSend_length(v15, v34, v35, v36);
    *&v53[32] = v37 - *&v53[40];
    v40 = objc_msgSend_inflateHelper_(a1, v38, v53, v39);
  }

  while (!v40);
  v42 = v40;
  if (v40 != 1)
  {
    v48 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v42;
      _os_log_impl(&dword_1BADC1000, v48, OS_LOG_TYPE_ERROR, "Error: gzip inflate() failed! (%d)", buf, 8u);
    }

    if (!objc_msgSend_inflateEndHelper_(a1, v49, v53, v50))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (objc_msgSend_inflateEndHelper_(a1, v25, v53, v41))
  {
LABEL_14:
    v51 = APLogForCategory(0x12uLL);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v51, OS_LOG_TYPE_ERROR, "Error: gzip inflatedEnd() failed!", buf, 2u);
    }

LABEL_17:
    v47 = 0;
    goto LABEL_18;
  }

  objc_msgSend_setLength_(v15, v43, *&v53[40], v44);
  v47 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v45, v15, v46);
LABEL_18:

LABEL_19:

  return v47;
}

void sub_1BAF20FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1BAF20FE0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend__createSessionForRequester_httpMaximumConnectionsPerHost_(WeakRetained, v7, v5, a3);

  return v8;
}

id sub_1BAF2193C(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v5 = a3 >> 3;
  v6 = objc_msgSend_data(MEMORY[0x1E695DF88], a2, a3, a4);
  v7 = v5 + 1;
  do
  {
    v8 = arc4random_uniform(0xFFFFFFFF);
    v17 = v8 | (arc4random_uniform(0xFFFFFFFF) << 32);
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    v11 = objc_msgSend_initWithBytes_length_(v9, v10, &v17, 8);
    objc_msgSend_appendData_(v6, v12, v11, v13);

    --v7;
  }

  while (v7);
  v15 = objc_msgSend_subdataWithRange_(v6, v14, 0, a3 - 1);

  return v15;
}

uint64_t sub_1BAF21A10(void *a1, const char *a2, size_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = v13 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    bzero(v13 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  }

  if (!objc_msgSend_copyBytes_withLength_(SecRandomCopyBytesHelper, a2, v5, a3))
  {
    return objc_msgSend_initWithBytes_length_(a1, v6, v5, a3);
  }

  v8 = objc_msgSend_randomWithBytes_(MEMORY[0x1E695DEF0], v6, 16, v7);
  v11 = objc_msgSend_initWithData_(a1, v9, v8, v10);

  return v11;
}

id sub_1BAF21AF4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_base64EncodedStringWithOptions_(a1, a2, 1, a4);
  v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"+", @"-");

  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v6, v7, @"/", @"_");

  return v8;
}

id sub_1BAF22110(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v14, v18, 16);
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v7;
          if (objc_msgSend_state(v9, v10, v11, v12, v14) == 17002)
          {
            goto LABEL_12;
          }
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v8, &v14, v18, 16);
    }

    while (v4);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

uint64_t sub_1BAF224B0()
{
  qword_1EDBA41B0 = objc_alloc_init(APXPCListenerManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1BAF22D08(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_connectionInterrupted(v6, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1BAF22D5C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_connectionInvalidated(v6, v3, v4, v5);
  }

  return result;
}

id sub_1BAF22E6C(uint64_t a1)
{
  if (qword_1EDBA4188 != -1)
  {
    sub_1BAF8E2A4();
  }

  v2 = qword_1EDBA4190;

  return v2;
}

uint64_t sub_1BAF22EB0()
{
  qword_1EDBA4190 = objc_alloc_init(MEMORY[0x1E696AC80]);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF22EEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_localTimeZone(MEMORY[0x1E695DFE8], a2, a3, a4);
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v5 = qword_1EDBA48F8;
  qword_1EDBA48F8 = v4;

  objc_msgSend_setTimeZone_(qword_1EDBA48F8, v6, v10, v7);
  objc_msgSend_setFormatOptions_(qword_1EDBA48F8, v8, 3955, v9);
}

id sub_1BAF22F6C(uint64_t a1)
{
  if (qword_1EDBA4178 != -1)
  {
    sub_1BAF8E2CC();
  }

  v2 = qword_1EDBA4180;

  return v2;
}

void sub_1BAF22FB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x1E695DFE8], a2, @"UTC", a4);
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v5 = qword_1EDBA4180;
  qword_1EDBA4180 = v4;

  objc_msgSend_setTimeZone_(qword_1EDBA4180, v6, v10, v7);
  objc_msgSend_setFormatOptions_(qword_1EDBA4180, v8, 3955, v9);
}

void sub_1BAF23100(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_1EDBA4128;
  qword_1EDBA4128 = v1;

  v5 = objc_msgSend_pathForName_(APDatabasePath, v3, @"APDatabase", v4);
  if (objc_msgSend_deviceUnlockedSinceBoot(APDeviceLockedTask, v6, v7, v8))
  {
    objc_msgSend_setClassCDataAvaliable_(qword_1EDBA4128, v9, 1, v10);
    objc_msgSend__openDBConnectionCanRepeat_databasePath_(qword_1EDBA4128, v11, 1, v5);
  }

  else
  {
    v12 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v23 = objc_opt_class();
      v13 = v23;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@]: APDatabase connection delayed until first unlock.", buf, 0xCu);
    }

    v14 = [APDeviceLockedTask alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1BAF232B8;
    v20[3] = &unk_1E7F1CE98;
    v21 = v5;
    v17 = objc_msgSend_initWithHandler_(v14, v15, v20, v16);
    objc_msgSend_setDeviceLockedTask_(qword_1EDBA4128, v18, v17, v19);
  }
}

uint64_t sub_1BAF232B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setClassCDataAvaliable_(qword_1EDBA4128, a2, 1, a4);
  objc_msgSend__openDBConnectionCanRepeat_databasePath_(qword_1EDBA4128, v5, 1, *(a1 + 32));
  if ((objc_msgSend_setUpDatabaseWithPath_(qword_1EDBA4128, v6, *(a1 + 32), v7) & 1) == 0)
  {
    v11 = objc_msgSend_currentVersion(qword_1EDBA4128, v8, v9, v10);
    APDatabaseError(430, 0xFFFFFFFFLL, v11, @"APDatabase", @"Setup failed after delayed unlock.", 0);
  }

  v12 = qword_1EDBA4128;

  return objc_msgSend_setDeviceLockedTask_(v12, v8, 0, v10);
}

__CFString *signingAuthorityFinalStateToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unauthorized";
  }

  else
  {
    return off_1E7F1D568[a1 - 1];
  }
}

void sub_1BAF26CD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1BAF26CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1BAF26DE0;
    v9[3] = &unk_1E7F1D480;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = v5;
    v9[4] = v6;
    v12 = *(a1 + 64);
    v10 = v7;
    objc_msgSend__sendSetupRequest_forContextRef_withCompletion_(WeakRetained, v8, v3, v5, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1BAF26DE0(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = APPerfLogForCategory(0x30uLL);
    v7 = objc_msgSend_signpostID(*(a1 + 32), v4, v5, v6);
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v3))
      {
        LOWORD(v39) = 0;
        _os_signpost_emit_with_name_impl(&dword_1BADC1000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VerifyNewContext", "", &v39, 2u);
      }
    }

    if (objc_msgSend__verifyContext_(*(a1 + 32), v9, *(a1 + 48), v10))
    {
      v12 = [APSigningContextStorage alloc];
      v13 = *(a1 + 48);
      v17 = objc_msgSend_poolName(*(a1 + 32), v14, v15, v16);
      v19 = objc_msgSend_initWithContextRef_poolName_stashed_(v12, v18, v13, v17, *(a1 + 56));

      v20 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v39 = 134217984;
        v40 = v21;
        _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_INFO, "Successfully set up context for authority %p", &v39, 0xCu);
      }
    }

    else
    {
      objc_msgSend__setFailureStateWithErrorAndDestroyContext_finalState_contextRef_(*(a1 + 32), v11, 7202, 1, *(a1 + 48));
      v19 = 0;
    }

    v22 = APPerfLogForCategory(0x30uLL);
    v26 = objc_msgSend_signpostID(*(a1 + 32), v23, v24, v25);
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v22))
      {
        LOWORD(v39) = 0;
        _os_signpost_emit_with_name_impl(&dword_1BADC1000, v22, OS_SIGNPOST_INTERVAL_END, v27, "VerifyNewContext", " enableTelemetry=YES ", &v39, 2u);
      }
    }

    v28 = MEMORY[0x1E696AD98];
    v29 = CFAbsoluteTimeGetCurrent();
    v33 = objc_msgSend_numberWithDouble_(v28, v30, v31, v32, (v29 - Current) * 1000.0);
    v37 = objc_msgSend_stageDurationIntervals(*(a1 + 32), v34, v35, v36);
    objc_msgSend_setObject_atIndexedSubscript_(v37, v38, v33, 6);
  }

  else
  {
    v19 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1BAF27B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BAF27B50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = APPerfLogForCategory(0x30uLL);
  v10 = objc_loadWeakRetained((a1 + 48));
  v14 = objc_msgSend_signpostID(v10, v11, v12, v13);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v9, OS_SIGNPOST_INTERVAL_END, v14, "ContextInit", " enableTelemetry=YES ", &v31, 2u);
  }

  v15 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  v20 = objc_msgSend_numberWithDouble_(v15, v17, v18, v19, (Current - *(a1 + 56)) * 1000.0);
  v24 = objc_msgSend_stageDurationIntervals(*(a1 + 32), v21, v22, v23);
  objc_msgSend_setObject_atIndexedSubscript_(v24, v25, v20, 4);

  v26 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 32);
    v31 = 134218754;
    v32 = v27;
    v33 = 2048;
    v34 = a2;
    v35 = 1024;
    v36 = a3;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_INFO, "Signing Authority %p received init response %p with length %u\nwith error: %@", &v31, 0x26u);
  }

  v29 = objc_msgSend__handleInitResponse_length_forContextRef_error_(WeakRetained, v28, a2, a3, *(a1 + 64), v7);
  v30 = *(a1 + 40);
  if (v30)
  {
    (*(v30 + 16))(v30, v29);
  }
}

void sub_1BAF27D64(uint64_t a1, const char *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A978];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Simulated init timeout";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, &v8, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, -1001, v5);
  (*(v2 + 16))(v2, 0, 0, v7);
}

void sub_1BAF284E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1BAF28520(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = APPerfLogForCategory(0x30uLL);
  v10 = objc_loadWeakRetained((a1 + 48));
  v14 = objc_msgSend_signpostID(v10, v11, v12, v13);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v30) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BADC1000, v9, OS_SIGNPOST_INTERVAL_END, v14, "ContextInit", " enableTelemetry=YES ", &v30, 2u);
  }

  v15 = MEMORY[0x1E696AD98];
  Current = CFAbsoluteTimeGetCurrent();
  v20 = objc_msgSend_numberWithDouble_(v15, v17, v18, v19, (Current - *(a1 + 56)) * 1000.0);
  v24 = objc_msgSend_stageDurationIntervals(*(a1 + 32), v21, v22, v23);
  objc_msgSend_setObject_atIndexedSubscript_(v24, v25, v20, 5);

  v26 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 32);
    v30 = 134218754;
    v31 = v27;
    v32 = 2048;
    v33 = a2;
    v34 = 1024;
    v35 = a3;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_INFO, "Signing Authority %p received init response %p with length %u\nwith error: %@", &v30, 0x26u);
  }

  objc_msgSend__handleSetupResponse_length_forContextRef_error_(WeakRetained, v28, a2, a3, *(a1 + 64), v7);
  v29 = *(a1 + 40);
  if (v29)
  {
    (*(v29 + 16))();
  }
}

void sub_1BAF28724(uint64_t a1, const char *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A978];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Simulated setup timeout";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, &v8, 1);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, -1001, v5);
  (*(v2 + 16))(v2, 0, 0, v7);
}

void sub_1BAF29CF8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v5 = APPerfLogForCategory(0x30uLL);
  v9 = objc_msgSend_signpostID(*(a1 + 32), v6, v7, v8);
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v5))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BADC1000, v5, OS_SIGNPOST_INTERVAL_END, v10, "TotalSetupTime", " enableTelemetry=YES ", v11, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1BAF2A50C()
{
  qword_1EDBA4148 = objc_alloc_init(APUnfairRecursiveLock);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BAF2AF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BAF2AF40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BAF2AF58(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v9 = objc_msgSend_assignedContexts(APSigningContextStorage, v6, v7, v8);
  v12 = objc_msgSend_containsObject_(v9, v10, v24, v11);

  v15 = objc_msgSend_objectAtIndexedSubscript_(v5, v13, 1, v14);
  if (!objc_msgSend_BOOLValue(v15, v16, v17, v18))
  {
    goto LABEL_5;
  }

  v19 = *(a1 + 40);

  if ((v19 & 1) != 0 || v12 != 1)
  {
    v21 = *(*(*(a1 + 32) + 8) + 40);
    v15 = objc_msgSend_reconstructFromStorage_contextRef_(APSigningContextStorage, v20, v5, v24);
    objc_msgSend_addObject_(v21, v22, v15, v23);
LABEL_5:
  }
}

void sub_1BAF2B154(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = objc_msgSend_longLongValue(a2, a2, a3, a4);
  v7 = objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, v5, &v11, v6);
  if (v7 != -44654 && v7 != 0)
  {
    v9 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 136643331;
      v13 = "+[APSigningContextStorage destroyAndClearAllContextsForPool:]_block_invoke";
      v14 = 2048;
      v15 = v11;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to destroy context %llu for pool %@", buf, 0x20u);
    }
  }
}

void sub_1BAF2B37C(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, 0, v8);
  v13 = objc_msgSend_launchID(APSigningContextStorage, v10, v11, v12);
  if (objc_msgSend_isEqualToString_(v9, v14, v13, v15))
  {

LABEL_4:
    objc_msgSend_setObject_forKey_(*(a1 + 32), v18, v6, v5);
    goto LABEL_5;
  }

  v19 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, 1, v17);
  v23 = objc_msgSend_BOOLValue(v19, v20, v21, v22);

  if (v23)
  {
    goto LABEL_4;
  }

  v30 = objc_msgSend_longLongValue(v5, v18, v24, v25);
  v28 = objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, v26, &v30, v27);
  if (v28 != -44654 && v28)
  {
    v29 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136643075;
      v32 = "+[APSigningContextStorage destroyAndClearAllPreviousLaunchContextsForPool:]_block_invoke";
      v33 = 2048;
      v34 = v30;
      _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Failed to destroy context %llu", buf, 0x16u);
    }
  }

LABEL_5:
}

uint64_t sub_1BAF2B608(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EDBA4170 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1BAF2C048(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_setWithCapacity_(v5, v10, v9, v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1BAF2C128;
  v20[3] = &unk_1E7F1D6B8;
  v13 = v12;
  v21 = v13;
  v22 = v4;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, v20, v16);
  v17 = v22;
  v18 = v13;

  return v13;
}

void sub_1BAF2C128(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v4, v3);
}

id sub_1BAF2C184(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v9 = objc_msgSend_count(a1, v6, v7, v8);
  v12 = objc_msgSend_setWithCapacity_(v5, v10, v9, v11);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1BAF2C268;
  v20[3] = &unk_1E7F1D6E0;
  v22 = v4;
  v13 = v12;
  v21 = v13;
  v14 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v15, v20, v16);
  v17 = v21;
  v18 = v13;

  return v13;
}

uint64_t sub_1BAF2C268(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2, v3);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PrimitiveCountryCodeSource.__allocating_init(dataSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

APFoundation::CountryCode_optional __swiftcall PrimitiveCountryCodeSource.countryCode()()
{
  v2 = v0;
  v3 = sub_1BAF8E3E8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = v1[5];
  v14 = v1[6];
  sub_1BADC8524(v1 + 2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v16)
  {
    goto LABEL_9;
  }

  v18 = v15;
  v19 = v16;

  if (sub_1BAF8ED28() != 2)
  {
    v15 = swift_bridgeObjectRelease_n();
LABEL_9:
    *v2 = 0;
    v2[1] = 0;
    goto LABEL_10;
  }

  if (qword_1EBC36550 != -1)
  {
    swift_once();
  }

  sub_1BADC4BA8(v3, qword_1EBC368D0);
  sub_1BAF8E3A8();
  (*(v4 + 16))(v7, v12, v3);
  v20 = MEMORY[0x1E69680B8];
  sub_1BAF2C664(&qword_1EBC36578, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
  sub_1BAF8F178();
  sub_1BAF2C664(&qword_1EBC36580, v20, MEMORY[0x1E69680C8]);
  v21 = sub_1BAF8EC18();

  v22 = *(v4 + 8);
  v22(v10, v3);
  v15 = (v22)(v12, v3);
  if ((v21 & 1) == 0)
  {

    goto LABEL_9;
  }

  *v2 = v18;
  v2[1] = v19;
LABEL_10:
  result.value.value._object = v16;
  result.value.value._countAndFlagsBits = v15;
  result.is_nil = v17;
  return result;
}

uint64_t PrimitiveCountryCodeSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF2C664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF2C734(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAF2C754(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BAF2C7D8()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF2C820(uint64_t a1)
{
  v2 = *v1;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v2);
  return sub_1BAF8F5E8();
}

uint64_t Date.day.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BAF8E848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BAF8E498();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8E728();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, v11);
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v15 = sub_1BADC4BA8(v4, qword_1EDBA3888);
  swift_beginAccess();
  (*(v5 + 16))(v7, v15, v4);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v16 = sub_1BAF8E888();
  sub_1BADC4BA8(v16, qword_1EDBA3868);
  sub_1BAF8E7F8();
  (*(v5 + 8))(v7, v4);
  result = sub_1BAF8E468();
  if (v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = result;
  result = sub_1BAF8E478();
  if (v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = result;
  result = sub_1BAF8E448();
  if ((v22 & 1) == 0)
  {
    v23 = result;
    (*(v8 + 8))(v10, v24);
    result = (*(v12 + 8))(v14, v11);
    *a1 = v19;
    a1[1] = v21;
    a1[2] = v23;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t ExtendedUUID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BAF8E788();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ExtendedUUID(uint64_t a1)
{
  result = qword_1EDBA3658;
  if (!qword_1EDBA3658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExtendedUUID.base64.getter()
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = sub_1BAF65D94();
  v13 = v1;
  v11 = bswap64(*(v0 + *(type metadata accessor for ExtendedUUID(0) + 20)));
  v2 = sub_1BAF2DA00(&v11, &v12);
  v4 = v3;
  sub_1BAF8E618();
  sub_1BAF2DABC(v2, v4);
  v5 = v12;
  v6 = v13;
  v7 = sub_1BAF8E5D8();
  sub_1BAF2DABC(v5, v6);
  v8 = [v7 base64FilenameSafeEncoded];

  v9 = sub_1BAF8EC38();
  return v9;
}

uint64_t ExtendedUUID.string.getter()
{
  type metadata accessor for ExtendedUUID(0);
  v2 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v0 = sub_1BAF8E748();
  MEMORY[0x1BFB048C0](v0);

  return v2;
}

uint64_t ExtendedUUID.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1BAF8E778();
  v2 = sub_1BAF2CE84();
  result = type metadata accessor for ExtendedUUID(0);
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_1BAF2CE84()
{
  v0 = sub_1BAF8EEE8();
  *(v0 + 16) = 8;
  *(v0 + 32) = 0;
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 8uLL, (v0 + 32)))
  {

    v3 = 0;
    MEMORY[0x1BFB06170](&v3, 8);
    return v3;
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return v1;
}

uint64_t ExtendedUUID.init(uuid:addendum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BAF8E788();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ExtendedUUID(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

unsigned __int8 *ExtendedUUID.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_1BAF2DB10(&qword_1EBC36670, &qword_1BAF95010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1BAF8E788();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExtendedUUID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v48 = a2;
  v45 = 46;
  v46 = 0xE100000000000000;
  sub_1BAF2DB58();
  v16 = sub_1BAF8F138();

  if (v16[2] != 2)
  {

    goto LABEL_5;
  }

  sub_1BAF8E738();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1BAF2DBAC(v7);
LABEL_5:
    v17 = 1;
    v18 = v44;
    return (*(v13 + 56))(v18, v17, 1, v12);
  }

  v20 = *(v9 + 32);
  v20(v11, v7, v8);
  if (!v16[2])
  {
    __break(1u);
LABEL_76:

LABEL_73:
    (*(v9 + 8))(v11, v8);
    goto LABEL_5;
  }

  v43 = v20;
  v22 = v16[4];
  v21 = v16[5];

  v23 = HIBYTE(v21) & 0xF;
  v24 = v22 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_76;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    v27 = sub_1BAF2E214(v22, v21, 10);
    v40 = v42;
LABEL_72:

    if ((v40 & 1) == 0)
    {
      v43(v15, v11, v8);
      *&v15[*(v12 + 20)] = v27;
      v41 = v44;
      sub_1BAF2E798(v15, v44);
      v18 = v41;
      v17 = 0;
      return (*(v13 + 56))(v18, v17, 1, v12);
    }

    goto LABEL_73;
  }

  if ((v21 & 0x2000000000000000) == 0)
  {
    if ((v22 & 0x1000000000000000) != 0)
    {
      result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BAF8F2B8();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v33 = result + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_70;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                goto LABEL_70;
              }

              v30 = __CFADD__(10 * v27, v34);
              v27 = 10 * v27 + v34;
              if (v30)
              {
                goto LABEL_70;
              }

              ++v33;
              if (!--v23)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_70;
      }

      goto LABEL_81;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v27 = 0;
        if (result)
        {
          while (1)
          {
            v37 = *result - 48;
            if (v37 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_70;
            }

            v30 = __CFADD__(10 * v27, v37);
            v27 = 10 * v27 + v37;
            if (v30)
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_70:
      v27 = 0;
      LOBYTE(v23) = 1;
      goto LABEL_71;
    }

    if (v24 >= 1)
    {
      v23 = v24 - 1;
      if (v24 != 1)
      {
        v27 = 0;
        if (result)
        {
          v28 = result + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_70;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_70;
            }

            v30 = 10 * v27 >= v29;
            v27 = 10 * v27 - v29;
            if (!v30)
            {
              goto LABEL_70;
            }

            ++v28;
            if (!--v23)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v23) = 0;
LABEL_71:
        LOBYTE(v45) = v23;
        v40 = v23;
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v47 = v22;
  v48 = v21 & 0xFFFFFFFFFFFFFFLL;
  if (v22 != 43)
  {
    if (v22 != 45)
    {
      if (v23)
      {
        v27 = 0;
        v38 = &v47;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v27, v39);
          v27 = 10 * v27 + v39;
          if (v30)
          {
            break;
          }

          v38 = (v38 + 1);
          if (!--v23)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v23)
    {
      if (--v23)
      {
        v27 = 0;
        v31 = &v47 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v27 >= v32;
          v27 = 10 * v27 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v23)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_80;
  }

  if (v23)
  {
    if (--v23)
    {
      v27 = 0;
      v35 = &v47 + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v36);
        v27 = 10 * v27 + v36;
        if (v30)
        {
          break;
        }

        ++v35;
        if (!--v23)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_82:
  __break(1u);
  return result;
}

BOOL static ExtendedUUID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BAF8E758() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ExtendedUUID(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ExtendedUUID.hash(into:)(uint64_t a1)
{
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BAF8EBC8();
  v2 = type metadata accessor for ExtendedUUID(0);
  return MEMORY[0x1BFB05130](*(v1 + *(v2 + 20)));
}

uint64_t ExtendedUUID.hashValue.getter()
{
  sub_1BAF8F5A8();
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BAF8EBC8();
  v1 = type metadata accessor for ExtendedUUID(0);
  MEMORY[0x1BFB05130](*(v0 + *(v1 + 20)));
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF2D6D0(uint64_t a1)
{
  sub_1BAF8F5A8();
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BAF8EBC8();
  MEMORY[0x1BFB05130](*(v1 + *(a1 + 20)));
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF2D774(uint64_t a1, uint64_t a2)
{
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BAF8EBC8();
  return MEMORY[0x1BFB05130](*(v2 + *(a2 + 20)));
}

uint64_t sub_1BAF2D800(uint64_t a1, uint64_t a2)
{
  sub_1BAF8F5A8();
  sub_1BAF8E788();
  sub_1BAF2E844(&qword_1EBC36678, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BAF8EBC8();
  MEMORY[0x1BFB05130](*(v2 + *(a2 + 20)));
  return sub_1BAF8F5E8();
}

uint64_t ExtendedUUID.debugDescription.getter(uint64_t a1)
{
  v3 = sub_1BAF8E748();
  MEMORY[0x1BFB048C0](58, 0xE100000000000000);
  type metadata accessor for ExtendedUUID(0);
  v1 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v1);

  return v3;
}

uint64_t sub_1BAF2D978(uint64_t a1)
{
  v3 = sub_1BAF8E748();
  MEMORY[0x1BFB048C0](58, 0xE100000000000000);
  v1 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v1);

  return v3;
}

uint64_t sub_1BAF2DA00(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1BADC8524(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BAF6055C(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1BAF2EE34(v3, v4);
    }

    else
    {
      v6 = sub_1BAF2EEB0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1BADC5BE0(v8);
  return v6;
}

uint64_t sub_1BAF2DABC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BAF2DB10(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BAF2DB58()
{
  result = qword_1EDBA3A10;
  if (!qword_1EDBA3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3A10);
  }

  return result;
}

uint64_t sub_1BAF2DBAC(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36670, &qword_1BAF95010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BAF2DC14(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1BAF2DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1BAF8EE08();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BAF2E928(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BAF8F2B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BAF2E214(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1BAF8EE08();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BAF2E928(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BAF8F2B8();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1BAF2E798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtendedUUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF2E844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF2E8B4(uint64_t a1)
{
  result = sub_1BAF8E788();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF2E928(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BAF8EE18();
  v6 = sub_1BAF2E9A8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1BAF2E9A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BAF8F0F8();
    if (!v9 || (v10 = v9, v11 = sub_1BAF2DC14(v9, 0), v12 = sub_1BAF2EB00(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BAF8ED08();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BAF8ED08();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BAF8F2B8();
LABEL_4:

  return sub_1BAF8ED08();
}

unint64_t sub_1BAF2EB00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BAF2ED20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BAF8EDD8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BAF8F2B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BAF2ED20(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BAF8EDA8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1BAF2ED20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BAF8EDE8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB04910](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_1BAF2EDA0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1BAF6055C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1BAF2EE34(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1BAF2EEB0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1BAF2EE34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1BAF8E438();
  swift_allocObject();
  result = sub_1BAF8E3F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BAF8E5C8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1BAF2EEB0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1BAF8E438();
  swift_allocObject();
  result = sub_1BAF8E3F8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BAF2EF34(uint64_t a1)
{
  v9 = sub_1BAF2DB10(&qword_1EBC36690, &qword_1BAF950D8);
  v10 = sub_1BAF2EFE4();
  v8[0] = a1;
  v2 = sub_1BADC8524(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1BAF2EDA0(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1BADC5BE0(v8);
  return v5;
}

unint64_t sub_1BAF2EFE4()
{
  result = qword_1EBC36698;
  if (!qword_1EBC36698)
  {
    sub_1BAF2F048(&qword_1EBC36690, &qword_1BAF950D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36698);
  }

  return result;
}

uint64_t sub_1BAF2F048(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t CohortCandidateKeyValueStore.__allocating_init(keyValueStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

APFoundation::CohortCandidate_optional __swiftcall CohortCandidateKeyValueStore.candidate()()
{
  v2 = v0;
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  v5 = COERCE_DOUBLE((*(*(v4 + 8) + 16))(0x614374726F686F63, 0xEF6574616469646ELL, v3));
  if ((v7 & 1) == 0 && ((v6 = v5, v5 >= 0.0) ? (v8 = v5 < 1.0) : (v8 = 0), v8))
  {
    *v2 = v5;
    *(v2 + 8) = 0;
  }

  else
  {
    *v2 = 0;
    *(v2 + 8) = 1;
  }

  result.value = *&v6;
  result.is_nil = LOBYTE(v5);
  return result;
}

Swift::Void __swiftcall CohortCandidateKeyValueStore.save(candidate:)(APFoundation::CohortCandidate candidate)
{
  v3 = *v1;
  v4 = v2[5];
  v5 = v2[6];
  sub_1BADC8524(v2 + 2, v4);
  (*(v5 + 16))(0x614374726F686F63, 0xEF6574616469646ELL, v4, v5, v3);
}

uint64_t CohortCandidateKeyValueStore.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF2F27C(double *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_1BADC8524((*v1 + 16), v3);
  return (*(v4 + 16))(0x614374726F686F63, 0xEF6574616469646ELL, v3, v4, v2);
}

APFoundation::Cohort_optional __swiftcall Cohort.init(_:)(Swift::Double a1)
{
  v2 = a1 < 0.0;
  if (a1 > 1.0)
  {
    v2 = 1;
  }

  v3 = a1;
  if (v2)
  {
    v3 = 0.0;
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  result.value = *&a1;
  return result;
}

uint64_t getEnumTagSinglePayload for Cohort(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Cohort(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void static SystemInfo.longBuildVersion.getter()
{
  v0 = [objc_opt_self() kBuildVersionString];
  v1 = MGGetStringAnswer();

  if (v1)
  {
    sub_1BAF8EC38();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BAF2F5E8(uint64_t a1, unint64_t a2)
{
  v30 = sub_1BAF8E3E8();
  MEMORY[0x1EEE9AC00](v30);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = (v5 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  v29 = 4 * v8;
  v26[1] = v2;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v11 = (v4 + 8);
  v12 = 15;
  v13 = v5;
  v33 = 4 << v9;
  while (1)
  {
    v15 = v12 & 0xC;
    v16 = (v12 & 1) == 0 || v15 == v10;
    v17 = v16;
    if (!v16)
    {
      break;
    }

    result = v12;
    if (v15 == v10)
    {
      result = sub_1BAF2ED20(v12, v13, a2);
      v5 = v13;
    }

    if (result >> 16 >= v8)
    {
      goto LABEL_53;
    }

    if ((result & 1) == 0)
    {
      sub_1BAF30634(result, v13, a2);
      v5 = v13;
    }

LABEL_24:
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_1BAF8F258();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v31 = v5;
      v32 = v28;
    }

    else if ((v5 & 0x1000000000000000) == 0)
    {
      sub_1BAF8F2B8();
    }

    sub_1BAF8E3C8();
    v19 = sub_1BAF8E3D8();
    result = (*v11)(v7, v30);
    if (v19)
    {
      return v12;
    }

    v5 = v13;
    if (v17)
    {
      v10 = v33;
      if (v15 == v33)
      {
        result = sub_1BAF2ED20(v12, v13, a2);
        v10 = v33;
        v5 = v13;
        v12 = result;
        if (v8 <= result >> 16)
        {
          goto LABEL_54;
        }
      }

      else if (v8 <= v12 >> 16)
      {
        goto LABEL_54;
      }

      if ((v12 & 1) == 0)
      {
        v20 = sub_1BAF30634(v12, v13, a2);
        v10 = v33;
        v5 = v13;
        v12 = v12 & 0xC | v20 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      v10 = v33;
      if (v8 <= v12 >> 16)
      {
        goto LABEL_55;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v14 = sub_1BAF8ECE8();
      v10 = v33;
      v5 = v13;
      v12 = v14;
    }

    else
    {
      v21 = v12 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v31 = v5;
        v32 = v28;
        v23 = *(&v31 + v21);
      }

      else
      {
        v22 = v27;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v22 = sub_1BAF8F2B8();
          v10 = v33;
          v5 = v13;
        }

        v23 = *(v22 + v21);
      }

      v24 = v23;
      v25 = __clz(v23 ^ 0xFF) - 24;
      if (v24 >= 0)
      {
        LOBYTE(v25) = 1;
      }

      v12 = ((v21 + v25) << 16) | 5;
    }

    if (v29 == v12 >> 14)
    {
      return 0;
    }
  }

  result = v12;
  if (v12 >> 16 < v8)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_1BAF2F9C8(uint64_t a1, unint64_t a2)
{
  v30 = sub_1BAF8E3E8();
  MEMORY[0x1EEE9AC00](v30);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = (v5 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  v29 = 4 * v8;
  v26[1] = v2;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v11 = (v4 + 8);
  v12 = 15;
  v13 = v5;
  v33 = 4 << v9;
  while (1)
  {
    v15 = v12 & 0xC;
    v16 = (v12 & 1) == 0 || v15 == v10;
    v17 = v16;
    if (!v16)
    {
      break;
    }

    result = v12;
    if (v15 == v10)
    {
      result = sub_1BAF2ED20(v12, v13, a2);
      v5 = v13;
    }

    if (result >> 16 >= v8)
    {
      goto LABEL_53;
    }

    if ((result & 1) == 0)
    {
      sub_1BAF30634(result, v13, a2);
      v5 = v13;
    }

LABEL_24:
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_1BAF8F258();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v31 = v5;
      v32 = v28;
    }

    else if ((v5 & 0x1000000000000000) == 0)
    {
      sub_1BAF8F2B8();
    }

    sub_1BAF8E3B8();
    v19 = sub_1BAF8E3D8();
    result = (*v11)(v7, v30);
    if ((v19 & 1) == 0)
    {
      return v12;
    }

    v5 = v13;
    if (v17)
    {
      v10 = v33;
      if (v15 == v33)
      {
        result = sub_1BAF2ED20(v12, v13, a2);
        v10 = v33;
        v5 = v13;
        v12 = result;
        if (v8 <= result >> 16)
        {
          goto LABEL_54;
        }
      }

      else if (v8 <= v12 >> 16)
      {
        goto LABEL_54;
      }

      if ((v12 & 1) == 0)
      {
        v20 = sub_1BAF30634(v12, v13, a2);
        v10 = v33;
        v5 = v13;
        v12 = v12 & 0xC | v20 & 0xFFFFFFFFFFFFFFF3 | 1;
      }
    }

    else
    {
      v10 = v33;
      if (v8 <= v12 >> 16)
      {
        goto LABEL_55;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v14 = sub_1BAF8ECE8();
      v10 = v33;
      v5 = v13;
      v12 = v14;
    }

    else
    {
      v21 = v12 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v31 = v5;
        v32 = v28;
        v23 = *(&v31 + v21);
      }

      else
      {
        v22 = v27;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v22 = sub_1BAF8F2B8();
          v10 = v33;
          v5 = v13;
        }

        v23 = *(v22 + v21);
      }

      v24 = v23;
      v25 = __clz(v23 ^ 0xFF) - 24;
      if (v24 >= 0)
      {
        LOBYTE(v25) = 1;
      }

      v12 = ((v21 + v25) << 16) | 5;
    }

    if (v29 == v12 >> 14)
    {
      return 0;
    }
  }

  result = v12;
  if (v12 >> 16 < v8)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t static SystemInfo.bundleIdentifier.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1BAF8EC38();

  return v2;
}

uint64_t static SystemInfo.locale.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BAF8E7C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8E7B8();
  v6 = sub_1BAF8E798();
  (*(v3 + 8))(v5, v2);
  return v6;
}

id sub_1BAF30108(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_1BAF8EC28();

  return v3;
}

uint64_t sub_1BAF30158()
{
  result = sub_1BAF3017C();
  byte_1EDBA3858 = result & 1;
  return result;
}

uint64_t sub_1BAF3017C()
{
  v0 = sub_1BAF8E598();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  sub_1BAF8E508();
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    sub_1BAF8EC38();
  }

  sub_1BAF8E528();

  v12 = *(v1 + 8);
  v12(v4, v0);
  sub_1BAF8E538();
  v12(v7, v0);
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1BAF8E558();
  v15 = sub_1BAF8EC28();

  v16 = [v14 fileExistsAtPath_];

  if ((v16 & 1) == 0)
  {
    v17 = [v13 defaultManager];
    sub_1BAF8E558();
    v18 = sub_1BAF8EC28();

    v19 = [v17 createFileAtPath:v18 contents:0 attributes:0];

    if ((v19 & 1) == 0)
    {
      v20 = sub_1BAF8F018();
      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v21 = sub_1BAF8F0C8();
      sub_1BAF8E8B8(v20, &dword_1BADC1000, v21, "Unable to create temporary file for reboot detection.", 53, 2, MEMORY[0x1E69E7CC0]);
    }
  }

  v12(v9, v0);
  return v16 ^ 1;
}

uint64_t static SystemInfo.firstRunSinceReboot.getter()
{
  if (qword_1EDBA3850 != -1)
  {
    swift_once();
  }

  return byte_1EDBA3858;
}

id SystemInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemInfo.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SystemInfo.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SystemInfo();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1BAF30634(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BAF8F2B8();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t _s12APFoundation10SystemInfoC9osVersionSSvgZ_0()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v1 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v1);

  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v2 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v2);

  return v4;
}

void _s12APFoundation10SystemInfoC17shortBuildVersionSSSgvgZ_0()
{
  v0 = [objc_opt_self() kBuildVersionString];
  v1 = MGGetStringAnswer();

  if (v1)
  {
    v2 = sub_1BAF8EC38();
    v4 = v3;

    sub_1BAF2F5E8(v2, v4);
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      sub_1BAF8ED38();
      v7 = sub_1BAF8EE18();
      v9 = v8;
      v11 = v10;
      v13 = v12;

      MEMORY[0x1BFB04820](v7, v9, v11, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void _s12APFoundation10SystemInfoC17systemDescriptionSSvgZ_0()
{
  v0 = _s12APFoundation10SystemInfoC9osVersionSSvgZ_0();
  MEMORY[0x1BFB048C0](v0);

  MEMORY[0x1BFB048C0](45, 0xE100000000000000);
  v1 = [objc_opt_self() kBuildVersionString];
  v2 = MGGetStringAnswer();

  if (v2)
  {
    v3 = sub_1BAF8EC38();
    v5 = v4;

    MEMORY[0x1BFB048C0](v3, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BAF30A4C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return sub_1BAF8ECF8();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return sub_1BAF8ECF8();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12APFoundation10SystemInfoC11deviceModelSSvgZ_0()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  sysctlbyname("hw.machine", 0, v4, 0, 0);
  v0 = v4[0];
  if ((v4[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v4[0])
  {
    v1 = sub_1BAF8EEE8();
    *(v1 + 16) = v0;
    bzero((v1 + 32), v0);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  sysctlbyname("hw.machine", (v1 + 32), v4, 0, 0);
  v2 = sub_1BAF30A4C(v1);

  return v2;
}

uint64_t _s12APFoundation10SystemInfoC9modelTypeSSvgZ_0()
{
  sub_1BAF30DFC(0, &qword_1EDBA20A8, 0x1E696AE18);
  sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BAF95190;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1BAF30E44();
  *(v0 + 32) = 0xD000000000000025;
  *(v0 + 40) = 0x80000001BAFA21C0;
  v1 = sub_1BAF8EFF8();
  _s12APFoundation10SystemInfoC11deviceModelSSvgZ_0();
  v2 = sub_1BAF8EC98();
  v4 = v3;

  v5 = sub_1BAF8EC28();
  v6 = [v1 evaluateWithObject_];

  if (v6 && (, sub_1BAF2F9C8(v2, v4), v8 = v7, , (v8 & 1) == 0))
  {
    v11 = sub_1BAF8EE18();
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v2 = MEMORY[0x1BFB04820](v11, v13, v15, v17);
  }

  else
  {
    v9 = sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v10 = sub_1BAF8F0C8();
    sub_1BAF8E8B8(v9, &dword_1BADC1000, v10, "Using unknown model type", 24, 2, MEMORY[0x1E69E7CC0]);

    v1 = v10;
  }

  return v2;
}

uint64_t sub_1BAF30DFC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BAF30E44()
{
  result = qword_1EDBA2110;
  if (!qword_1EDBA2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA2110);
  }

  return result;
}

uint64_t SignpostProvider.signposters.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t SignpostProvider.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  swift_beginAccess();
  v4 = sub_1BAF8E8D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SignpostProvider.__allocating_init(defaultCategory:initialID:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BAF2DB10(&qword_1EBC366A0, &qword_1BAF951D0);
  v5 = *(sub_1BAF2DB10(&qword_1EBC366A8, &qword_1BAF951D8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BAF95190;
  v8 = (v7 + v6);
  *v8 = a1;
  v9 = APPerfLogForCategory(a1);
  sub_1BAF8E8E8();
  v10 = sub_1BAF325C4(v7);
  swift_setDeallocating();
  sub_1BAF32F04(v8, &qword_1EBC366A8, &qword_1BAF951D8);
  swift_deallocClassInstance();
  *(v4 + 16) = v10;
  v11 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v12 = sub_1BAF8E8D8();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  return v4;
}

uint64_t SignpostProvider.init(defaultCategory:initialID:)(unint64_t a1, uint64_t a2)
{
  sub_1BAF2DB10(&qword_1EBC366A0, &qword_1BAF951D0);
  v5 = *(sub_1BAF2DB10(&qword_1EBC366A8, &qword_1BAF951D8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BAF95190;
  v8 = (v7 + v6);
  *v8 = a1;
  v9 = APPerfLogForCategory(a1);
  sub_1BAF8E8E8();
  v10 = sub_1BAF325C4(v7);
  swift_setDeallocating();
  sub_1BAF32F04(v8, &qword_1EBC366A8, &qword_1BAF951D8);
  swift_deallocClassInstance();
  *(v2 + 16) = v10;
  v11 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v12 = sub_1BAF8E8D8();
  (*(*(v12 - 8) + 32))(v2 + v11, a2, v12);
  return v2;
}

uint64_t SignpostProvider.update(_:)(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC366B0, &qword_1BAF951E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1BAF8E908();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF2DB10(&qword_1EBC366B8, &qword_1BAF951E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1BAF8E8D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  sub_1BAF32F64(a1, v10, &qword_1EBC366B8, &qword_1BAF951E8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BAF32F04(v10, &qword_1EBC366B8, &qword_1BAF951E8);
    swift_beginAccess();

    sub_1BAF316C8(v18, v4);

    v20 = v27;
    v19 = v28;
    if ((*(v27 + 48))(v4, 1, v28) == 1)
    {
      return sub_1BAF32F04(v4, &qword_1EBC366B0, &qword_1BAF951E0);
    }

    (*(v20 + 32))(v7, v4, v19);
    v24 = v29;
    sub_1BAF8E8F8();
    sub_1BAF8E8C8();
    (*(v20 + 8))(v7, v19);
    v25 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
    swift_beginAccess();
    (*(v12 + 40))(v24 + v25, v15, v11);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v22 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
    v23 = v29;
    swift_beginAccess();
    (*(v12 + 40))(v23 + v22, v17, v11);
  }

  return swift_endAccess();
}

uint64_t sub_1BAF316C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BAF8F1A8();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1BAF32504(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1BAF8E908();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t SignpostProvider.deinit()
{

  v1 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v2 = sub_1BAF8E8D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SignpostProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12APFoundation16SignpostProvider_signpostID;
  v2 = sub_1BAF8E8D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t SignpostProvider.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC366B0, &qword_1BAF951E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1BAF8E908();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (*(v12 + 16) && (v13 = sub_1BAF31E78(a1), (v14 & 1) != 0))
  {
    (*(v9 + 16))(v11, *(v12 + 56) + *(v9 + 72) * v13, v8);
    (*(v9 + 32))(a2, v11, v8);
  }

  else
  {
    swift_endAccess();
    v15 = APPerfLogForCategory(a1);
    sub_1BAF8E8E8();
    (*(v9 + 16))(v7, a2, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_1BAF31A9C(v7, a1);
  }

  return swift_endAccess();
}

uint64_t sub_1BAF31A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BAF2DB10(&qword_1EBC366B0, &qword_1BAF951E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1BAF8E908();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BAF32F04(a1, &qword_1EBC366B0, &qword_1BAF951E0);
    v13 = sub_1BAF31E78(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BAF6742C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1BAF32178(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BAF32F04(v8, &qword_1EBC366B0, &qword_1BAF951E0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BAF66F28(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BAF31CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BADC5B38(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1BAF67090(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1BAF32F04(a1, &qword_1EBC366E0, &qword_1BAF95258);
    sub_1BAF320CC(a2, a3, v9);

    return sub_1BAF32F04(v9, &qword_1EBC366E0, &qword_1BAF95258);
  }

  return result;
}

unint64_t sub_1BAF31DBC(uint64_t a1, uint64_t a2)
{
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  v4 = sub_1BAF8F5E8();

  return sub_1BAF31EE0(a1, a2, v4);
}

unint64_t sub_1BAF31E34(uint64_t a1)
{
  v2 = sub_1BAF8F1D8();

  return sub_1BAF31F98(a1, v2);
}

unint64_t sub_1BAF31E78(uint64_t a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1);
  v2 = sub_1BAF8F5E8();
  return sub_1BAF32060(a1, v2);
}

unint64_t sub_1BAF31EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BAF8F4C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BAF31F98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1BAF32E54(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFB04D40](v9, a1);
      sub_1BAF32EB0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1BAF32060(uint64_t a1, uint64_t a2)
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

double sub_1BAF320CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1BAF31DBC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BAF67694();
      v10 = v12;
    }

    sub_1BADC5B38((*(v10 + 56) + 40 * v8), a3);
    sub_1BAF32348(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1BAF32178(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BAF8F1B8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1BAF8F5A8();
      MEMORY[0x1BFB05110](v9);
      result = sub_1BAF8F5E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1BAF8E908() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BAF32348(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BAF8F1B8() + 1) & ~v5;
    do
    {
      sub_1BAF8F5A8();

      sub_1BAF8ED18();
      v11 = sub_1BAF8F5E8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BAF32504@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 56);
  v7 = sub_1BAF8E908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

unint64_t sub_1BAF325C4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC366A8, &qword_1BAF951D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1BAF2DB10(&qword_1EBC366F8, &qword_1BAF95270);
    v7 = sub_1BAF8F3A8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1BAF32F64(v9, v5, &qword_1EBC366A8, &qword_1BAF951D8);
      v11 = *v5;
      result = sub_1BAF31E78(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1BAF8E908();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for SignpostProvider(uint64_t a1)
{
  result = qword_1EDBA3918;
  if (!qword_1EDBA3918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAF327F4(uint64_t a1)
{
  result = sub_1BAF8E8D8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAF328C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
    v3 = sub_1BAF8F3A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAF32F64(v4, &v13, &unk_1EBC36810, &qword_1BAF95248);
      v5 = v13;
      v6 = v14;
      result = sub_1BAF31DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BAF32E44(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF329F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366E8, &qword_1BAF95260);
    v3 = sub_1BAF8F3A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAF32F64(v4, &v13, &qword_1EBC366F0, &qword_1BAF95268);
      v5 = v13;
      v6 = v14;
      result = sub_1BAF31DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BADC5B38(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF32B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366D8, &qword_1BAF95250);
    v3 = sub_1BAF8F3A8();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1BAF31E78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF32C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC366C0, &qword_1BAF95228);
    v3 = sub_1BAF8F3A8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BAF31DBC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BAF32D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC36970, &qword_1BAF95230);
    v3 = sub_1BAF8F3A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BAF32F64(v4, v13, &qword_1EBC366C8, &qword_1BAF95238);
      result = sub_1BAF31E34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1BAF32E44(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1BAF32E44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BAF32F04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAF2DB10(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BAF32F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAF2DB10(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BAF32FF0()
{
  result = qword_1EBC36700;
  if (!qword_1EBC36700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36700);
  }

  return result;
}

unint64_t sub_1BAF33048()
{
  result = qword_1EBC36708;
  if (!qword_1EBC36708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36708);
  }

  return result;
}

unint64_t sub_1BAF330AC()
{
  result = qword_1EBC36710;
  if (!qword_1EBC36710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36710);
  }

  return result;
}

unint64_t sub_1BAF33104()
{
  result = qword_1EBC36718;
  if (!qword_1EBC36718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36718);
  }

  return result;
}

BOOL sub_1BAF3319C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1BAF331CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BAF331F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1BAF332E8()
{

  return swift_deallocClassInstance();
}

uint64_t ConfigurableIntBucketStrategy.__allocating_init(configurationStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t ConfigurableIntBucketStrategy.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Int __swiftcall ConfigurableIntBucketStrategy.bucketFor(value:)(Swift::Int value)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  (*(v4 + 8))(&v15, v3, v4);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  v8 = sub_1BAF33500(value, &v15);
  if (v9)
  {
    v15 = v6;
    v16 = v5;
    v17 = v7;
    v10 = sub_1BAF33604(value, &v15);
    v12 = v11;

    if (v12)
    {
      return v6;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v14 = v8;

    return v14;
  }
}

uint64_t sub_1BAF33500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    v9 = v6 + 24 * v5;
    v10 = *v9;
    if ((*(v9 + 16) & 1) == 0)
    {
      break;
    }

    v7 = *(v9 + 8);
    if (v10 <= a1 && v7 >= a1)
    {
      return a1;
    }

LABEL_8:
    if (++v5 == v3)
    {
      return 0;
    }
  }

  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = sub_1BAF8F598();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = ~v12;
  while (*(*(v10 + 48) + 8 * v13) != a1)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t sub_1BAF33604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v5);
    v8 = v7[1];
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

LABEL_18:
    if (++v5 == v3)
    {
      return 0;
    }
  }

  v10 = 0;
  v11 = *v7;
  v12 = v8 + 32;
  while (1)
  {
    v15 = v12 + 24 * v10;
    v16 = *v15;
    if ((*(v15 + 16) & 1) == 0)
    {
      break;
    }

    v13 = *(v15 + 8);
    if (v16 <= a1 && v13 >= a1)
    {
      return v11;
    }

LABEL_10:
    if (++v10 == v9)
    {
      goto LABEL_18;
    }
  }

  if (!*(v16 + 16))
  {
    goto LABEL_10;
  }

  v17 = sub_1BAF8F598();
  v18 = -1 << *(v16 + 32);
  v19 = v17 & ~v18;
  if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = ~v18;
  while (*(*(v16 + 48) + 8 * v19) != a1)
  {
    v19 = (v19 + 1) & v20;
    if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  return v11;
}

size_t randomBytes(size:)(size_t a1)
{
  result = sub_1BAF337C0(a1);
  if (v3 >> 60 == 15)
  {
    return sub_1BAF3387C(a1);
  }

  return result;
}

size_t sub_1BAF337C0(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1BAF8EEE8();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      v1 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], v1, (v2 + 32)))
    {

      return 0;
    }

    else
    {
      v3 = sub_1BAF60614((v2 + 32), *(v2 + 16));

      return v3;
    }
  }

  return result;
}

uint64_t sub_1BAF3387C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v8 = MEMORY[0x1E69E7CC0];
      sub_1BAF6FB6C(0, result, 0);
      v2 = v8;
      do
      {
        v7 = 0;
        MEMORY[0x1BFB06170](&v7, 8);
        v3 = v7;
        v8 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1BAF6FB6C((v4 > 1), v5 + 1, 1);
          v2 = v8;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = v3;
        --v1;
      }

      while (v1);
    }

    v6 = sub_1BAF2EF34(v2);

    return v6;
  }

  return result;
}

uint64_t sub_1BAF33964()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    result = sub_1BAF8F048();
  }

  else
  {
    result = sub_1BAF8F028();
  }

  byte_1EDBA20A0 = result;
  return result;
}

uint64_t static os_log_type_t.defaultOnInternalInstall.getter()
{
  if (qword_1EDBA2098 != -1)
  {
    swift_once();
  }

  return byte_1EDBA20A0;
}

uint64_t sub_1BAF33A2C(uint64_t a1)
{
  v37 = a1;
  v2 = sub_1BAF8E958();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BAF8E728();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v5;
  v34 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAF8F098();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF8F078();
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E988();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_transaction_create();
  v36 = result;
  if (result)
  {
    v14 = *(*(*sub_1BADC8524((v1 + 104), *(v1 + 128)) + 16) + 24);
    v15 = sub_1BAF8EC28();
    sub_1BAF30DFC(0, &qword_1EDBA2088, off_1E7F1C150);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = sub_1BAF8EE98();
    [v14 executeQuery:v15 withParameters:v17];

    sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
    v28 = v1;
    sub_1BAF8E978();
    aBlock[0] = v16;
    sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF8F198();
    (*(v31 + 104))(v30, *MEMORY[0x1E69E8090], v32);
    v18 = sub_1BAF8F0B8();
    v20 = v34;
    v19 = v35;
    (*(v4 + 16))(v34, v37, v35);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v22 = swift_allocObject();
    v23 = v28;
    *(v22 + 16) = v36;
    *(v22 + 24) = v23;
    (*(v4 + 32))(v22 + v21, v20, v19);
    aBlock[4] = sub_1BAF3BA48;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAF4CF6C;
    aBlock[3] = &unk_1F38F4E98;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_1BAF8E968();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
    sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
    v25 = v40;
    v26 = v42;
    sub_1BAF8F198();
    MEMORY[0x1BFB04C00](0, v12, v25, v24);
    _Block_release(v24);
    swift_unknownObjectRelease();

    (*(v41 + 8))(v25, v26);
    (*(v38 + 8))(v12, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF34060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BAF8F028();
  sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
  v6 = sub_1BAF8F0C8();
  sub_1BAF8E8B8(v5, &dword_1BADC1000, v6, "Launching...", 12, 2, MEMORY[0x1E69E7CC0]);

  return sub_1BAF3413C(a3, a1);
}

uint64_t sub_1BAF3413C(uint64_t a1, uint64_t a2)
{
  v291 = a2;
  v290 = a1;
  v294 = type metadata accessor for WorkCommand(0);
  v289 = *(v294 - 8);
  v3 = *(v289 + 64);
  v4 = MEMORY[0x1EEE9AC00](v294);
  v296 = &v249 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v261 = &v249 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v260 = &v249 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v274 = &v249 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v254 = &v249 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v255 = &v249 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v265 = &v249 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v253 = &v249 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v252 = &v249 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v288 = &v249 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v259 = &v249 - v23;
  v24 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v269 = &v249 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v279 = &v249 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v283 = &v249 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v258 = &v249 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v268 = &v249 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v273 = &v249 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v257 = &v249 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v249 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v272 = &v249 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v278 = &v249 - v44;
  v298 = sub_1BAF8E728();
  v292 = *(v298 - 8);
  v45 = MEMORY[0x1EEE9AC00](v298);
  v267 = &v249 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v266 = &v249 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v282 = &v249 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v262 = &v249 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v264 = &v249 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v256 = &v249 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v263 = &v249 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v271 = &v249 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v275 = &v249 - v61;
  v62 = type metadata accessor for WorkOrder(0);
  v295 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62);
  v64 = (&v249 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_1BAF2DB10(&unk_1EBC36780, &qword_1BAF955C8);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v67 = &v249 - v66;
  v68 = *(v2 + 128);
  v297 = v2;
  sub_1BADC8524((v2 + 104), v68);
  sub_1BAF55A94(&v301);
  v69 = sub_1BADC8524(&v301, v302);
  MEMORY[0x1EEE9AC00](v69);
  (*(v71 + 16))(&v249 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1BAF3BAAC(&v304);
  sub_1BAF8EE28();
  sub_1BADC5BE0(&v301);
  v295 += 6;
  v287 = v3 + 7;
  v277 = "firstRunSinceReboot";
  v293 = (v292 + 48);
  v286 = (v292 + 32);
  v276 = (v292 + 56);
  v284 = (v292 + 16);
  v280 = (v292 + 8);
  v270 = v41;
  v281 = v62;
  v292 = v67;
  while (1)
  {
    sub_1BAF3BB10(&v304, AssociatedTypeWitness);
    sub_1BAF8F128();
    if ((*v295)(v67, 1, v62) == 1)
    {
      return sub_1BADC5BE0(&v304);
    }

    sub_1BAF3BBC4(v67, v64, type metadata accessor for WorkOrder);
    if (*(v64 + v62[7]))
    {
      if (*(v64 + v62[7]) != 1)
      {
        v81 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
        v82 = v296;
        sub_1BAF3B9E0(v64, v296, type metadata accessor for WorkOrder);
        *(v82 + v81) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
        if (v300)
        {
          sub_1BADC5B38(&v299, &v301);
          v72 = v302;
          v73 = v303;
          v285 = sub_1BADC8524(&v301, v302);
          v74 = v288;
          sub_1BAF3B9E0(v296, v288, type metadata accessor for WorkCommand);
          sub_1BAF3BB60(&v301, &v299);
          v75 = (*(v289 + 80) + 24) & ~*(v289 + 80);
          v76 = (v287 + v75) & 0xFFFFFFFFFFFFFFF8;
          v77 = swift_allocObject();
          *(v77 + 16) = v297;
          sub_1BAF3BBC4(v74, v77 + v75, type metadata accessor for WorkCommand);
          sub_1BADC5B38(&v299, v77 + v76);
          v78 = v73[1];

          v78(v296, sub_1BAF3BC2C, v77, v72, v73);
          v67 = v292;

          sub_1BAF3B6CC(v296, type metadata accessor for WorkCommand);
          sub_1BADC5BE0(&v301);
        }

        else
        {
          sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
          v83 = v296;
          sub_1BAF36F10(v296);
          sub_1BAF3B6CC(v83, type metadata accessor for WorkCommand);
        }

        v79 = sub_1BAF8F038();
        sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
        v80 = sub_1BAF8F0C8();
        sub_1BAF8E8B8(v79, &dword_1BADC1000, v80, "Unexpected state 'done'", 23, 2, MEMORY[0x1E69E7CC0]);
      }

      sub_1BAF3B6CC(v64, type metadata accessor for WorkOrder);
    }

    else
    {
      v84 = v62[9];
      v85 = v278;
      sub_1BAF32F64(v64 + v84, v278, &unk_1EBC36750, &qword_1BAF95590);
      v86 = *v293;
      v87 = (*v293)(v85, 1, v298);
      v88 = v279;
      if (v87 != 1)
      {
        v107 = v85;
        v108 = *v286;
        (*v286)(v275, v107, v298);
        v109 = sub_1BAF8E698();
        v110 = v270;
        if (v109)
        {
          v301 = 0;
          MEMORY[0x1BFB06170](&v301, 8);
          if ((0x20000000000001 * v301) >= 0x1FFFFFFFFFF801)
          {
            v111 = v284;
          }

          else
          {
            v111 = v284;
            do
            {
              v301 = 0;
              MEMORY[0x1BFB06170](&v301, 8);
            }

            while ((0x20000000000001 * v301) < 0x1FFFFFFFFFF801);
          }

          v148 = v271;
          sub_1BAF8E6A8();
          v149 = *v111;
          v150 = v272;
          v151 = v148;
          v152 = v298;
          (*v111)(v272, v151, v298);
          (*v276)(v150, 0, 1, v152);
          v153 = v150;
          v154 = v152;
          v155 = v110;
          sub_1BAF32F64(v153, v110, &unk_1EBC36750, &qword_1BAF95590);
          if (v86(v110, 1, v154) != 1)
          {
            v186 = v263;
            v187 = v298;
            v108(v263, v155, v298);
            v188 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v189 = v259;
            v190 = &v259[*(v188 + 48)];
            v191 = *(v188 + 64);
            v149(v259, v186, v187);
            v192 = v64[1];
            *v190 = *v64;
            *(v190 + 1) = v192;
            *(v189 + v191) = v291;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v300)
            {
              sub_1BADC5B38(&v299, &v301);
              v285 = v302;
              v250 = v303;
              v251 = sub_1BADC8524(&v301, v302);
              v193 = v288;
              sub_1BAF3B9E0(v189, v288, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v301, &v299);
              v194 = (*(v289 + 80) + 24) & ~*(v289 + 80);
              v195 = (v287 + v194) & 0xFFFFFFFFFFFFFFF8;
              v196 = swift_allocObject();
              *(v196 + 16) = v297;
              sub_1BAF3BBC4(v193, v196 + v194, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v299, v196 + v195);
              v197 = v250;
              v198 = v250[1];

              swift_unknownObjectRetain();

              v198(v189, sub_1BAF3C0BC, v196, v285, v197);

              sub_1BAF3B6CC(v189, type metadata accessor for WorkCommand);
              v199 = *v280;
              (*v280)(v263, v187);
              sub_1BAF32F04(v272, &unk_1EBC36750, &qword_1BAF95590);
              v199(v271, v187);
              v199(v275, v187);
              goto LABEL_50;
            }

            swift_unknownObjectRetain();
            sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
            sub_1BAF36F10(v189);
            sub_1BAF3B6CC(v189, type metadata accessor for WorkCommand);
            v214 = *v280;
            (*v280)(v186, v187);
            sub_1BAF32F04(v272, &unk_1EBC36750, &qword_1BAF95590);
            v214(v271, v187);
            v216 = v275;
            v217 = v187;
            goto LABEL_57;
          }

          sub_1BAF32F04(v110, &unk_1EBC36750, &qword_1BAF95590);
          v156 = v64 + v84;
          v157 = v257;
          sub_1BAF32F64(v156, v257, &unk_1EBC36750, &qword_1BAF95590);
          v158 = v86(v157, 1, v298);
          v159 = v256;
          if (v158 != 1)
          {
            v112 = v298;
            v108(v256, v157, v298);
            v218 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v219 = v252;
            v220 = &v252[*(v218 + 48)];
            v221 = *(v218 + 64);
            v149(v252, v159, v112);
            v222 = v64[1];
            *v220 = *v64;
            *(v220 + 1) = v222;
            *(v219 + v221) = v291;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v300)
            {
              sub_1BADC5B38(&v299, &v301);
              v285 = v302;
              v250 = v303;
              v251 = sub_1BADC8524(&v301, v302);
              v223 = v288;
              sub_1BAF3B9E0(v219, v288, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v301, &v299);
              v224 = (*(v289 + 80) + 24) & ~*(v289 + 80);
              v225 = (v287 + v224) & 0xFFFFFFFFFFFFFFF8;
              v226 = swift_allocObject();
              *(v226 + 16) = v297;
              sub_1BAF3BBC4(v223, v226 + v224, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v299, v226 + v225);
              v227 = v250;
              v228 = v250[1];
              swift_unknownObjectRetain();
              v229 = v298;

              v228(v219, sub_1BAF3C0BC, v226, v285, v227);

              sub_1BAF3B6CC(v219, type metadata accessor for WorkCommand);
              v230 = *v280;
              (*v280)(v159, v229);
              sub_1BAF32F04(v272, &unk_1EBC36750, &qword_1BAF95590);
              v230(v271, v229);
              v230(v275, v229);
              goto LABEL_50;
            }

            swift_unknownObjectRetain();

            sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
            sub_1BAF36F10(v219);
            sub_1BAF3B6CC(v219, type metadata accessor for WorkCommand);
            v214 = *v280;
            (*v280)(v159, v112);
            sub_1BAF32F04(v272, &unk_1EBC36750, &qword_1BAF95590);
            v214(v271, v112);
            v215 = &v302;
            goto LABEL_43;
          }

          sub_1BAF32F04(v157, &unk_1EBC36750, &qword_1BAF95590);
          v160 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
          v161 = v253;
          sub_1BAF3B9E0(v64, v253, type metadata accessor for WorkOrder);
          *(v161 + v160) = 0;
          swift_storeEnumTagMultiPayload();
          sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
          if (v300)
          {
            sub_1BADC5B38(&v299, &v301);
            v162 = v303;
            v285 = v302;
            v251 = sub_1BADC8524(&v301, v302);
            v163 = v288;
            sub_1BAF3B9E0(v161, v288, type metadata accessor for WorkCommand);
            sub_1BAF3BB60(&v301, &v299);
            v164 = (*(v289 + 80) + 24) & ~*(v289 + 80);
            v165 = (v287 + v164) & 0xFFFFFFFFFFFFFFF8;
            v166 = v161;
            v167 = swift_allocObject();
            *(v167 + 16) = v297;
            sub_1BAF3BBC4(v163, v167 + v164, type metadata accessor for WorkCommand);
            sub_1BADC5B38(&v299, v167 + v165);
            v168 = v162[1];
            v169 = v298;

            v168(v166, sub_1BAF3C0BC, v167, v285, v162);

            sub_1BAF3B6CC(v166, type metadata accessor for WorkCommand);
            sub_1BAF32F04(v272, &unk_1EBC36750, &qword_1BAF95590);
            v170 = *v280;
            (*v280)(v271, v169);
            goto LABEL_49;
          }

          sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
          sub_1BAF36F10(v161);
          sub_1BAF3B6CC(v161, type metadata accessor for WorkCommand);
          sub_1BAF32F04(v272, &unk_1EBC36750, &qword_1BAF95590);
          v214 = *v280;
          v245 = v298;
          (*v280)(v271, v298);
        }

        else
        {
          v130 = v268;
          if (*(v64 + v62[10]))
          {
            v285 = swift_unknownObjectRetain();
          }

          else
          {
            v285 = 0;
          }

          v171 = v273;
          v172 = v298;
          (*v276)(v273, 1, 1, v298);
          sub_1BAF32F64(v171, v130, &unk_1EBC36750, &qword_1BAF95590);
          if (v86(v130, 1, v172) == 1)
          {
            sub_1BAF32F04(v130, &unk_1EBC36750, &qword_1BAF95590);
            v173 = v64 + v84;
            v174 = v258;
            sub_1BAF32F64(v173, v258, &unk_1EBC36750, &qword_1BAF95590);
            v175 = v86(v174, 1, v298);
            v176 = v262;
            if (v175 == 1)
            {
              sub_1BAF32F04(v174, &unk_1EBC36750, &qword_1BAF95590);
              v177 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
              v178 = v254;
              sub_1BAF3B9E0(v64, v254, type metadata accessor for WorkOrder);
              *(v178 + v177) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
              if (v300)
              {
                sub_1BADC5B38(&v299, &v301);
                v180 = v302;
                v179 = v303;
                v251 = sub_1BADC8524(&v301, v302);
                v181 = v288;
                sub_1BAF3B9E0(v178, v288, type metadata accessor for WorkCommand);
                sub_1BAF3BB60(&v301, &v299);
                v182 = (*(v289 + 80) + 24) & ~*(v289 + 80);
                v183 = (v287 + v182) & 0xFFFFFFFFFFFFFFF8;
                v184 = swift_allocObject();
                *(v184 + 16) = v297;
                sub_1BAF3BBC4(v181, v184 + v182, type metadata accessor for WorkCommand);
                sub_1BADC5B38(&v299, v184 + v183);
                v185 = v179[1];

                v185(v178, sub_1BAF3C0BC, v184, v180, v179);

                swift_unknownObjectRelease();
                sub_1BAF3B6CC(v178, type metadata accessor for WorkCommand);
                sub_1BAF32F04(v273, &unk_1EBC36750, &qword_1BAF95590);
                (*v280)(v275, v298);
                goto LABEL_50;
              }

              sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
              sub_1BAF36F10(v178);
              swift_unknownObjectRelease();
              sub_1BAF3B6CC(v178, type metadata accessor for WorkCommand);
              sub_1BAF32F04(v273, &unk_1EBC36750, &qword_1BAF95590);
              (*v280)(v275, v298);
              goto LABEL_59;
            }

            v231 = v174;
            v232 = v298;
            v108(v262, v231, v298);
            v233 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v202 = v255;
            v234 = &v255[*(v233 + 48)];
            v235 = *(v233 + 64);
            (*v284)(v255, v176, v232);
            v236 = v64[1];
            *v234 = *v64;
            *(v234 + 1) = v236;
            *(v202 + v235) = v285;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v300)
            {
              sub_1BADC5B38(&v299, &v301);
              v237 = v303;
              v251 = v302;
              v250 = sub_1BADC8524(&v301, v302);
              v238 = v288;
              sub_1BAF3B9E0(v202, v288, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v301, &v299);
              v239 = (*(v289 + 80) + 24) & ~*(v289 + 80);
              v240 = (v287 + v239) & 0xFFFFFFFFFFFFFFF8;
              v241 = swift_allocObject();
              *(v241 + 16) = v297;
              v242 = v238;
              v169 = v298;
              sub_1BAF3BBC4(v242, v241 + v239, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v299, v241 + v240);
              v243 = v237[1];
              swift_unknownObjectRetain();

              v244 = v255;
              v243(v255, sub_1BAF3C0BC, v241, v251, v237);
              swift_unknownObjectRelease();

              sub_1BAF3B6CC(v244, type metadata accessor for WorkCommand);
              v170 = *v280;
              (*v280)(v262, v169);
LABEL_48:
              sub_1BAF32F04(v273, &unk_1EBC36750, &qword_1BAF95590);
LABEL_49:
              v170(v275, v169);
LABEL_50:
              sub_1BAF3B6CC(v64, type metadata accessor for WorkOrder);
              sub_1BADC5BE0(&v301);
              goto LABEL_60;
            }
          }

          else
          {
            v176 = v264;
            v200 = v298;
            v108(v264, v130, v298);
            v201 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v202 = v265;
            v203 = &v265[*(v201 + 48)];
            v204 = *(v201 + 64);
            (*v284)(v265, v176, v200);
            v205 = v64[1];
            *v203 = *v64;
            *(v203 + 1) = v205;
            *(v202 + v204) = v285;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v300)
            {
              sub_1BADC5B38(&v299, &v301);
              v251 = v302;
              v249 = v303;
              v250 = sub_1BADC8524(&v301, v302);
              v206 = v288;
              sub_1BAF3B9E0(v202, v288, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v301, &v299);
              v207 = (*(v289 + 80) + 24) & ~*(v289 + 80);
              v208 = (v287 + v207) & 0xFFFFFFFFFFFFFFF8;
              v209 = swift_allocObject();
              *(v209 + 16) = v297;
              v210 = v206;
              v169 = v298;
              sub_1BAF3BBC4(v210, v209 + v207, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v299, v209 + v208);
              v211 = v249;
              v212 = v249[1];
              swift_unknownObjectRetain();

              v213 = v265;
              v212(v265, sub_1BAF3C0BC, v209, v251, v211);
              swift_unknownObjectRelease();

              sub_1BAF3B6CC(v213, type metadata accessor for WorkCommand);
              v170 = *v280;
              (*v280)(v264, v169);
              goto LABEL_48;
            }
          }

          swift_unknownObjectRetain();

          sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
          sub_1BAF36F10(v202);
          swift_unknownObjectRelease();
          sub_1BAF3B6CC(v202, type metadata accessor for WorkCommand);
          v214 = *v280;
          v245 = v298;
          (*v280)(v176, v298);
          sub_1BAF32F04(v273, &unk_1EBC36750, &qword_1BAF95590);
        }

        v216 = v275;
        v217 = v245;
        goto LABEL_57;
      }

      sub_1BAF32F04(v85, &unk_1EBC36750, &qword_1BAF95590);
      do
      {
        v301 = 0;
        MEMORY[0x1BFB06170](&v301, 8);
      }

      while ((0x20000000000001 * v301) < 0x1FFFFFFFFFF801);
      v89 = v282;
      sub_1BAF8E6A8();
      v90 = *v284;
      v91 = v283;
      v92 = v89;
      v93 = v298;
      (*v284)(v283, v92, v298);
      (*v276)(v91, 0, 1, v93);
      sub_1BAF32F64(v91, v88, &unk_1EBC36750, &qword_1BAF95590);
      if (v86(v88, 1, v93) != 1)
      {
        v112 = v298;
        v113 = v266;
        (*v286)(v266, v88, v298);
        v114 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
        v115 = v274;
        v116 = (v274 + *(v114 + 48));
        v117 = *(v114 + 64);
        v90(v274, v113, v112);
        v118 = v64[1];
        *v116 = *v64;
        v116[1] = v118;
        *(v115 + v117) = v291;
        swift_storeEnumTagMultiPayload();
        sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
        if (v300)
        {
          sub_1BADC5B38(&v299, &v301);
          v119 = v115;
          v120 = v302;
          v121 = v303;
          v285 = sub_1BADC8524(&v301, v302);
          v122 = v288;
          sub_1BAF3B9E0(v119, v288, type metadata accessor for WorkCommand);
          sub_1BAF3BB60(&v301, &v299);
          v123 = v297;
          v124 = (*(v289 + 80) + 24) & ~*(v289 + 80);
          v125 = (v287 + v124) & 0xFFFFFFFFFFFFFFF8;
          v126 = swift_allocObject();
          *(v126 + 16) = v123;
          sub_1BAF3BBC4(v122, v126 + v124, type metadata accessor for WorkCommand);
          sub_1BADC5B38(&v299, v126 + v125);
          v127 = v121[1];
          swift_unknownObjectRetain();

          v127(v274, sub_1BAF3C0BC, v126, v120, v121);
          v128 = v298;

          sub_1BAF3B6CC(v274, type metadata accessor for WorkCommand);
          v129 = *v280;
          (*v280)(v113, v128);
          sub_1BAF32F04(v283, &unk_1EBC36750, &qword_1BAF95590);
          v129(v282, v128);
          goto LABEL_50;
        }

        swift_unknownObjectRetain();

        sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
        sub_1BAF36F10(v115);
        sub_1BAF3B6CC(v115, type metadata accessor for WorkCommand);
        v214 = *v280;
        (*v280)(v113, v112);
        sub_1BAF32F04(v283, &unk_1EBC36750, &qword_1BAF95590);
        v215 = &v307;
LABEL_43:
        v216 = *(v215 - 32);
        v217 = v112;
LABEL_57:
        v214(v216, v217);
LABEL_59:
        sub_1BAF3B6CC(v64, type metadata accessor for WorkOrder);
        goto LABEL_60;
      }

      sub_1BAF32F04(v88, &unk_1EBC36750, &qword_1BAF95590);
      v94 = v64 + v84;
      v95 = v269;
      sub_1BAF32F64(v94, v269, &unk_1EBC36750, &qword_1BAF95590);
      v96 = v86(v95, 1, v298);
      v97 = v267;
      if (v96 == 1)
      {
        sub_1BAF32F04(v95, &unk_1EBC36750, &qword_1BAF95590);
        v98 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
        v99 = v261;
        sub_1BAF3B9E0(v64, v261, type metadata accessor for WorkOrder);
        *(v99 + v98) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
        if (v300)
        {
          sub_1BADC5B38(&v299, &v301);
          v100 = v302;
          v101 = v303;
          v285 = sub_1BADC8524(&v301, v302);
          v102 = v288;
          sub_1BAF3B9E0(v99, v288, type metadata accessor for WorkCommand);
          sub_1BAF3BB60(&v301, &v299);
          v103 = (*(v289 + 80) + 24) & ~*(v289 + 80);
          v104 = (v287 + v103) & 0xFFFFFFFFFFFFFFF8;
          v105 = swift_allocObject();
          *(v105 + 16) = v297;
          sub_1BAF3BBC4(v102, v105 + v103, type metadata accessor for WorkCommand);
          sub_1BADC5B38(&v299, v105 + v104);
          v106 = v101[1];

          v106(v99, sub_1BAF3C0BC, v105, v100, v101);

          sub_1BAF3B6CC(v99, type metadata accessor for WorkCommand);
          sub_1BAF32F04(v283, &unk_1EBC36750, &qword_1BAF95590);
          (*v280)(v282, v298);
          goto LABEL_50;
        }

        sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
        sub_1BAF36F10(v99);
        sub_1BAF3B6CC(v99, type metadata accessor for WorkCommand);
        sub_1BAF32F04(v283, &unk_1EBC36750, &qword_1BAF95590);
        (*v280)(v282, v298);
        goto LABEL_59;
      }

      v131 = v95;
      v132 = v298;
      (*v286)(v267, v131, v298);
      v133 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
      v134 = v260;
      v135 = &v260[*(v133 + 48)];
      v136 = *(v133 + 64);
      v90(v260, v97, v132);
      v137 = v64[1];
      *v135 = *v64;
      *(v135 + 1) = v137;
      v138 = v134;
      *(v134 + v136) = v291;
      swift_storeEnumTagMultiPayload();
      sub_1BAF32F64(v297 + 16, &v299, &qword_1EBC367C0, &qword_1BAF955F8);
      if (v300)
      {
        sub_1BADC5B38(&v299, &v301);
        v139 = v303;
        v285 = v302;
        v251 = sub_1BADC8524(&v301, v302);
        v140 = v288;
        sub_1BAF3B9E0(v138, v288, type metadata accessor for WorkCommand);
        sub_1BAF3BB60(&v301, &v299);
        v141 = (*(v289 + 80) + 24) & ~*(v289 + 80);
        v142 = v297;
        v143 = (v287 + v141) & 0xFFFFFFFFFFFFFFF8;
        v144 = swift_allocObject();
        *(v144 + 16) = v142;
        sub_1BAF3BBC4(v140, v144 + v141, type metadata accessor for WorkCommand);
        sub_1BADC5B38(&v299, v144 + v143);
        v145 = v139[1];
        swift_unknownObjectRetain();

        v145(v138, sub_1BAF3C0BC, v144, v285, v139);
        v146 = v298;

        sub_1BAF3B6CC(v138, type metadata accessor for WorkCommand);
        v147 = *v280;
        (*v280)(v97, v146);
        sub_1BAF32F04(v283, &unk_1EBC36750, &qword_1BAF95590);
        v147(v282, v146);
        sub_1BAF3B6CC(v64, type metadata accessor for WorkOrder);
        sub_1BADC5BE0(&v301);
      }

      else
      {
        swift_unknownObjectRetain();

        sub_1BAF32F04(&v299, &qword_1EBC367C0, &qword_1BAF955F8);
        sub_1BAF36F10(v134);
        sub_1BAF3B6CC(v134, type metadata accessor for WorkCommand);
        v246 = *v280;
        v247 = v298;
        (*v280)(v97, v298);
        sub_1BAF32F04(v283, &unk_1EBC36750, &qword_1BAF95590);
        v246(v282, v247);
        sub_1BAF3B6CC(v64, type metadata accessor for WorkOrder);
      }

LABEL_60:
      v62 = v281;
      v67 = v292;
    }
  }
}

uint64_t sub_1BAF36C9C(uint64_t a1)
{
  v3 = type metadata accessor for WorkCommand(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF32F64(v1 + 16, &v14, &qword_1EBC367C0, &qword_1BAF955F8);
  if (v15)
  {
    sub_1BADC5B38(&v14, v16);
    v7 = v17;
    v8 = v18;
    sub_1BADC8524(v16, v17);
    sub_1BAF3B9E0(a1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkCommand);
    sub_1BAF3BB60(v16, &v14);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    sub_1BAF3BBC4(v6, v11 + v9, type metadata accessor for WorkCommand);
    sub_1BADC5B38(&v14, v11 + v10);
    v12 = *(v8 + 8);

    v12(a1, sub_1BAF3C0BC, v11, v7, v8);

    return sub_1BADC5BE0(v16);
  }

  else
  {
    sub_1BAF32F04(&v14, &qword_1EBC367C0, &qword_1BAF955F8);
    return sub_1BAF36F10(a1);
  }
}

uint64_t sub_1BAF36E9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BAF36F10(a2);
  v5 = a3[3];
  v6 = a3[4];
  sub_1BADC8524(a3, v5);
  return (*(v6 + 16))(a2, v5, v6);
}

uint64_t sub_1BAF36F10(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC367A0, &qword_1BAF955D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v87 - v3;
  v5 = sub_1BAF8E728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for WorkOrder(0);
  v9 = MEMORY[0x1EEE9AC00](v97);
  v11 = (&v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  ObjectType = (&v87 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v87 - v14);
  v16 = type metadata accessor for WorkCommand(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v87 - v20);
  sub_1BAF3B9E0(a1, &v87 - v20, type metadata accessor for WorkCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = *v21;
      v48 = v21[1];
      v50 = v21[2];
      if (qword_1EDBA2098 != -1)
      {
        swift_once();
      }

      v51 = byte_1EDBA20A0;
      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v52 = sub_1BAF8F0C8();
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1BAF95190;
      *(v53 + 56) = MEMORY[0x1E69E6158];
      *(v53 + 64) = sub_1BAF30E44();
      *(v53 + 32) = v49;
      *(v53 + 40) = v48;

      sub_1BAF8E8B8(v51, &dword_1BADC1000, v52, "Timer fired for workOrderId: %{public}@", 39, 2, v53);

      sub_1BAF38848(v49, v48, v50);

      return swift_unknownObjectRelease();
    }

    else
    {
      v68 = *(v21 + *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48));
      sub_1BAF3BBC4(v21, v11, type metadata accessor for WorkOrder);
      if (qword_1EDBA2098 != -1)
      {
        swift_once();
      }

      v69 = byte_1EDBA20A0;
      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v70 = sub_1BAF8F0C8();
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1BAF954D0;
      v73 = *v11;
      v72 = v11[1];
      v74 = MEMORY[0x1E69E6158];
      *(v71 + 56) = MEMORY[0x1E69E6158];
      v75 = sub_1BAF30E44();
      *(v71 + 32) = v73;
      *(v71 + 40) = v72;
      v76 = 0x6572756C696166;
      if (v68)
      {
        v76 = 0x73736563637573;
      }

      *(v71 + 96) = v74;
      *(v71 + 104) = v75;
      *(v71 + 64) = v75;
      *(v71 + 72) = v76;
      *(v71 + 80) = 0xE700000000000000;

      sub_1BAF8E8B8(v69, &dword_1BADC1000, v70, "Completing workOrderId: %{public}@ with %{public}@", 50, 2, v71);

      sub_1BAF3AA00(v11);
      return sub_1BAF3B6CC(v11, type metadata accessor for WorkOrder);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
      v24 = (v21 + v23[12]);
      v25 = v24[1];
      v90 = *v24;
      v93 = *(v21 + v23[16]);
      v94 = v25;
      v26 = (v21 + v23[20]);
      v28 = *v26;
      v27 = v26[1];
      v95 = v28;
      v92 = v27;
      sub_1BAF3BBC4(v21, v15, type metadata accessor for WorkOrder);
      if (qword_1EDBA2098 != -1)
      {
        swift_once();
      }

      v91 = byte_1EDBA20A0;
      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v29 = sub_1BAF8F0C8();
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BAF954D0;
      v31 = v97;
      v32 = (v15 + *(v97 + 44));
      v34 = *v32;
      v33 = v32[1];
      v35 = MEMORY[0x1E69E6158];
      *(v30 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1BAF30E44();
      *(v30 + 32) = v34;
      *(v30 + 40) = v33;
      v37 = *v15;
      v38 = v15[1];
      *(v30 + 96) = v35;
      *(v30 + 104) = v36;
      *(v30 + 64) = v36;
      *(v30 + 72) = v37;
      v88 = v37;
      *(v30 + 80) = v38;

      v89 = v38;

      sub_1BAF8E8B8(v91, &dword_1BADC1000, v29, "Running worker %{public}@ workOrderId: %{public}@", 49, 2, v30);

      v39 = v98;
      v40 = sub_1BAF3A820(v34, v33, v98);
      if (!v40)
      {
        v77 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
        sub_1BAF3B9E0(v15, v19, type metadata accessor for WorkOrder);
        v19[v77] = 0;
        swift_storeEnumTagMultiPayload();
        sub_1BAF36C9C(v19);
        sub_1BAEFD9A4(v95, v92);
        sub_1BAF3B6CC(v19, type metadata accessor for WorkCommand);
        swift_unknownObjectRelease();
LABEL_25:
        sub_1BAF3B6CC(v15, type metadata accessor for WorkOrder);
      }

      v42 = v40;
      v43 = v41;
      v44 = v31;
      v45 = v95;
      if (*(v15 + *(v31 + 28)) == 1)
      {
        v46 = v89;

        v47 = v92;
        if (!v45)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v78 = ObjectType;
        sub_1BAF3B9E0(v15, ObjectType, type metadata accessor for WorkOrder);
        *(v78 + *(v44 + 28)) = 1;
        sub_1BADC8524((v39 + 104), *(v39 + 128));
        v46 = v89;

        sub_1BAF55800(v78);
        sub_1BAF3B6CC(v78, type metadata accessor for WorkOrder);
        v47 = v92;
        if (!v45)
        {
LABEL_24:
          ObjectType = swift_getObjectType();
          v79 = (v15 + *(v44 + 32));
          v80 = *v79;
          v81 = v79[1];
          v82 = swift_allocObject();
          v83 = v88;
          v82[2] = v98;
          v82[3] = v83;
          v84 = v43;
          v85 = v93;
          v82[4] = v46;
          v82[5] = v85;
          v86 = *(v84 + 8);

          swift_unknownObjectRetain();
          v86(v80, v81, v90, v94, sub_1BAF3B9B4, v82, ObjectType, v84);
          swift_unknownObjectRelease();
          sub_1BAEFD9A4(v95, v47);
          swift_unknownObjectRelease();

          goto LABEL_25;
        }
      }

      v45(v42, v43);
      sub_1BAEFD9A4(v45, v47);
      goto LABEL_24;
    }

    v55 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
    v56 = (v21 + *(v55 + 48));
    v57 = *v56;
    v58 = v56[1];
    ObjectType = *(v21 + *(v55 + 64));
    v97 = v5;
    v59 = v6;
    (*(v6 + 32))(v8, v21, v5);
    if (qword_1EDBA2098 != -1)
    {
      swift_once();
    }

    LODWORD(v95) = byte_1EDBA20A0;
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v60 = sub_1BAF8F0C8();
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1BAF954D0;
    *(v61 + 56) = MEMORY[0x1E69E6158];
    v62 = sub_1BAF30E44();
    *(v61 + 64) = v62;
    *(v61 + 32) = v57;
    *(v61 + 40) = v58;

    sub_1BAF8E7B8();
    v63 = sub_1BAF8E7C8();
    (*(*(v63 - 8) + 56))(v4, 0, 1, v63);
    v64 = sub_1BAF8E668();
    v65 = v57;
    v67 = v66;
    sub_1BAF32F04(v4, &qword_1EBC367A0, &qword_1BAF955D8);
    *(v61 + 96) = MEMORY[0x1E69E6158];
    *(v61 + 104) = v62;
    *(v61 + 72) = v64;
    *(v61 + 80) = v67;
    sub_1BAF8E8B8(v95, &dword_1BADC1000, v60, "Scheduling workOrderId: %{public}@ for %{public}@", 49, 2, v61);

    sub_1BAF3818C(v8, v65, v58, ObjectType);

    swift_unknownObjectRelease();
    return (*(v59 + 8))(v8, v97);
  }
}

uint64_t sub_1BAF37AB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v65 = a1;
  v66 = a2;
  v6 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v54 - v7;
  v57 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BAF8E728();
  v64 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for WorkResult(0);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF2DB10(&unk_1EBC36780, &qword_1BAF955C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - v12;
  v14 = type metadata accessor for WorkOrder(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - v19;
  v21 = *(v4 + 128);
  v62 = v4;
  v22 = *(*sub_1BADC8524((v4 + 104), v21) + 16);
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 32) = v66;
  v24 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = v24;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = a3;

  sub_1BAF5EA9C(0xD000000000000028, 0x80000001BAFA25F0, inited, v22, v13);
  v25 = v65;
  v66 = v18;
  v27 = v63;
  v26 = v64;
  swift_setDeallocating();
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  swift_arrayDestroy();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1BAF32F04(v13, &unk_1EBC36780, &qword_1BAF955C8);
  }

  v29 = v14;
  v30 = v20;
  sub_1BAF3BBC4(v13, v20, type metadata accessor for WorkOrder);
  v31 = v25;
  v32 = v27;
  sub_1BAF3B9E0(v31, v27, type metadata accessor for WorkResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v27;
    v34 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
    v35 = v55;
    sub_1BAF3B9E0(v20, v55, type metadata accessor for WorkOrder);
    *(v35 + v34) = v33;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v35);
    sub_1BAF3B6CC(v35, type metadata accessor for WorkCommand);
  }

  else
  {
    v36 = *v27;
    v37 = *(v27 + 8);
    v38 = sub_1BAF2DB10(&qword_1EBC367B8, &qword_1BAF955F0);
    v39 = *(v38 + 48);
    v40 = v27 + *(v38 + 64);
    v41 = *v40;
    LODWORD(v65) = *(v40 + 8);
    v42 = v26;
    v43 = *(v26 + 32);
    v44 = v61;
    v45 = v56;
    v43(v61, v32 + v39, v56);
    v20[v29[7]] = 0;
    v46 = &v20[v29[8]];

    *v46 = v36;
    *(v46 + 1) = v37;
    v47 = v29[9];
    sub_1BAF32F04(v30 + v47, &unk_1EBC36750, &qword_1BAF95590);
    (*(v42 + 16))(v30 + v47, v44, v45);
    v48 = *(v42 + 56);
    v48(v30 + v47, 0, 1, v45);
    v49 = v29[10];
    if (v65)
    {
      v41 = *(v30 + v49);
    }

    else
    {
      *(v30 + v49) = v41;
    }

    v50 = v30;
    v51 = v59;
    v52 = v41 << 63 >> 63;
    sub_1BADC8524((v62 + 104), *(v62 + 128));
    sub_1BAF55800(v50);
    v53 = v66;
    sub_1BAF3B9E0(v50, v66, type metadata accessor for WorkOrder);
    v48(v51, 1, 1, v45);
    sub_1BAF398A4(v53, v51, v52 & v58);
    sub_1BAF32F04(v51, &unk_1EBC36750, &qword_1BAF95590);
    sub_1BAF3B6CC(v53, type metadata accessor for WorkOrder);
    (*(v42 + 8))(v61, v45);
    v30 = v50;
  }

  return sub_1BAF3B6CC(v30, type metadata accessor for WorkOrder);
}

uint64_t sub_1BAF3818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = sub_1BAF8E9A8();
  v32 = *(v34 - 8);
  v7 = MEMORY[0x1EEE9AC00](v34);
  v30 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v25 - v9;
  v10 = sub_1BAF8F098();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v27 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BAF8F078();
  MEMORY[0x1EEE9AC00](v26);
  v25[1] = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAF8E988();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1BAF8E958();
  MEMORY[0x1EEE9AC00](v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a3;
  v17 = swift_allocObject();
  v17[2] = sub_1BAF3B92C;
  v17[3] = v16;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_1BAF3B938;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F4E20;
  _Block_copy(aBlock);
  v35 = MEMORY[0x1E69E7CC0];
  sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  sub_1BAF8E9D8();
  swift_allocObject();
  sub_1BAF8E9B8();

  sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
  sub_1BAF8E978();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
  sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
  sub_1BAF8F198();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  v18 = sub_1BAF8F0B8();
  v19 = v30;
  sub_1BAF8E998();
  sub_1BAF8E6B8();
  v20 = v31;
  sub_1BAF8E9F8();
  v21 = *(v32 + 8);
  v22 = v19;
  v23 = v34;
  v21(v22, v34);
  sub_1BAF8F088();

  v21(v20, v23);
}

uint64_t sub_1BAF3873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v11 = a5;
    v11[1] = a6;
    v11[2] = a3;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();

    sub_1BAF36C9C(v11);

    return sub_1BAF3B6CC(v11, type metadata accessor for WorkCommand);
  }

  return result;
}

uint64_t sub_1BAF38848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v27 = a1;
  v4 = sub_1BAF8E958();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BAF8F098();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8F078();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1BAF8E988();
  v30 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  v34 = v4;
  v31 = v13;
  v32 = v7;
  if (a3)
  {
    v25 = a3;
LABEL_5:
    v24 = sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
    swift_unknownObjectRetain();
    sub_1BAF8E968();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF8F198();
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v26);
    v17 = sub_1BAF8F0B8();
    v18 = swift_allocObject();
    v19 = v27;
    v18[2] = v28;
    v18[3] = v19;
    v20 = v25;
    v18[4] = v29;
    v18[5] = v20;
    aBlock[4] = sub_1BAF3B788;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAF4CF6C;
    aBlock[3] = &unk_1F38F4D58;
    v21 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_1BAF8E968();
    v35 = MEMORY[0x1E69E7CC0];
    sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
    sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
    v22 = v32;
    v23 = v34;
    sub_1BAF8F198();
    MEMORY[0x1BFB04C00](0, v15, v22, v21);
    _Block_release(v21);
    swift_unknownObjectRelease();

    (*(v33 + 8))(v22, v23);
    (*(v30 + 8))(v15, v31);
  }

  result = os_transaction_create();
  if (result)
  {
    v25 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF38D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v26 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF2DB10(&unk_1EBC36780, &qword_1BAF955C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for WorkOrder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  sub_1BADC8524((a1 + 104), *(a1 + 128));
  sub_1BAF55CCC(a2, v28, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1BAF32F04(v10, &unk_1EBC36780, &qword_1BAF955C8);
  }

  sub_1BAF3BBC4(v10, v17, type metadata accessor for WorkOrder);
  sub_1BAF3B9E0(v17, v15, type metadata accessor for WorkOrder);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_1BAF3BBC4(v15, v20 + v19, type metadata accessor for WorkOrder);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v21 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v22 = &v7[v21[12]];
  v23 = v21[16];
  v24 = &v7[v21[20]];
  sub_1BAF3B9E0(v17, v7, type metadata accessor for WorkOrder);
  *v22 = sub_1BAF3B848;
  v22[1] = v20;
  *&v7[v23] = v27;
  *v24 = 0;
  *(v24 + 1) = 0;
  swift_storeEnumTagMultiPayload();

  swift_unknownObjectRetain();
  sub_1BAF36C9C(v7);

  sub_1BAF3B6CC(v7, type metadata accessor for WorkCommand);
  return sub_1BAF3B6CC(v17, type metadata accessor for WorkOrder);
}

uint64_t sub_1BAF39078(uint64_t a1, uint64_t a2)
{
  v34 = sub_1BAF8E4F8();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_1BAF8E598();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = (a1 + *(type metadata accessor for WorkOrder(0) + 24));
  v18 = v17[1];
  if (!v18)
  {
    return 0;
  }

  v29 = *v17;
  v30 = v2;
  v19 = *sub_1BADC8524((a2 + 144), *(a2 + 168));
  v20 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  swift_beginAccess();
  sub_1BAF32F64(v19 + v20, v9, &qword_1EBC36CC0, &qword_1BAF955D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BAF32F04(v9, &qword_1EBC36CC0, &qword_1BAF955D0);
    sub_1BAF3B8D8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v32 = v29;
    v33 = v18;
    v22 = v31;
    v23 = v34;
    (*(v31 + 104))(v6, *MEMORY[0x1E6968F70], v34);
    sub_1BAF2DB58();
    sub_1BAF8E578();
    (*(v22 + 8))(v6, v23);
    v24 = v30;
    v25 = sub_1BAF8E5A8();
    if (v24)
    {
      v26 = *(v11 + 8);
      v26(v14, v10);
      return (v26)(v16, v10);
    }

    else
    {
      v27 = *(v11 + 8);
      v28 = v25;
      v27(v14, v10);
      v27(v16, v10);
      return v28;
    }
  }
}

uint64_t sub_1BAF39424()
{
  sub_1BAF32F04((v0 + 2), &qword_1EBC367C0, &qword_1BAF955F8);

  sub_1BADC5BE0(v0 + 8);
  sub_1BADC5BE0(v0 + 13);
  sub_1BADC5BE0(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkCommand(uint64_t a1)
{
  result = qword_1EDBA3708;
  if (!qword_1EDBA3708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF39550(uint64_t a1)
{
  sub_1BAF395EC(319);
  if (v1 <= 0x3F)
  {
    sub_1BAF39738(319);
    if (v2 <= 0x3F)
    {
      sub_1BAF397C0(319);
      if (v3 <= 0x3F)
      {
        sub_1BAF39838(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BAF395EC(uint64_t a1)
{
  if (!qword_1EDBA2298)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for WorkOrder(255);
    sub_1BAF2F048(&qword_1EBC36720, &unk_1BAF95558);
    sub_1BAF2F048(&qword_1EBC36728, &qword_1BAF95568);
    sub_1BAF2F048(&unk_1EBC36730, &qword_1BAF95570);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDBA2298);
    }
  }
}

void sub_1BAF39738(uint64_t a1)
{
  if (!qword_1EDBA38B8)
  {
    sub_1BAF8E728();
    sub_1BAF2F048(&unk_1EBC36740, &qword_1BAF95578);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBA38B8);
    }
  }
}

void sub_1BAF397C0(uint64_t a1)
{
  if (!qword_1EDBA20F8)
  {
    sub_1BAF2F048(&unk_1EBC36740, &qword_1BAF95578);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBA20F8);
    }
  }
}

void sub_1BAF39838(uint64_t a1)
{
  if (!qword_1EDBA22A0[0])
  {
    type metadata accessor for WorkOrder(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBA22A0);
    }
  }
}

uint64_t sub_1BAF398A4(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v4 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = sub_1BAF8E728();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v27 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  sub_1BAF32F64(a2, v12, &unk_1EBC36750, &qword_1BAF95590);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1BAF32F04(v12, &unk_1EBC36750, &qword_1BAF95590);
    v20 = type metadata accessor for WorkOrder(0);
    sub_1BAF32F64(v29 + *(v20 + 36), v10, &unk_1EBC36750, &qword_1BAF95590);
    if (v19(v10, 1, v13) == 1)
    {
      sub_1BAF32F04(v10, &unk_1EBC36750, &qword_1BAF95590);
      v21 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
      sub_1BAF3B9E0(v29, v6, type metadata accessor for WorkOrder);
      v6[v21] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1BAF36C9C(v6);
      return sub_1BAF3B6CC(v6, type metadata accessor for WorkCommand);
    }

    v18 = v27;
    (*(v14 + 32))(v27, v10, v13);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
  }

  v23 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
  v24 = &v6[*(v23 + 48)];
  v25 = *(v23 + 64);
  (*(v14 + 16))(v6, v18, v13);
  v26 = v29[1];
  *v24 = *v29;
  *(v24 + 1) = v26;
  *&v6[v25] = v28;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();

  sub_1BAF36C9C(v6);
  sub_1BAF3B6CC(v6, type metadata accessor for WorkCommand);
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1BAF39C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v87 = a8;
  v94 = a6;
  v81 = a5;
  v93 = a4;
  v90 = a3;
  *&v89 = a2;
  v88 = a1;
  v70 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for WorkOrder(0);
  MEMORY[0x1EEE9AC00](v80);
  v92 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BAF8E788();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BAF8E728();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v69 - v21;
  v23 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v69 - v29;
  v86 = *a12;
  v85 = *(a12 + 8);
  (*(v17 + 16))(&v69 - v29, a7, v16);
  v31 = *(v17 + 56);
  v31(v30, 0, 1, v16);
  type metadata accessor for WorkOrderBuilder(0);
  v32 = swift_allocObject();
  *(v32 + 3) = 0;
  *(v32 + 4) = 0;
  *(v32 + 2) = 0;
  v84 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v31(&v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v16);
  v82 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v33 = &v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v33 = 0;
  v33[1] = 0;
  v83 = v33;
  v34 = &v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v34 = 0;
  *(v34 + 1) = 0;
  v72 = v17 + 56;
  v71 = v31;
  v31(&v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v16);
  v35 = &v32[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v35 = 0;
  *(v35 + 1) = 0;
  v95 = v30;
  sub_1BAF32F64(v30, v28, &unk_1EBC36750, &qword_1BAF95590);
  v36 = *(v17 + 48);
  if (v36(v28, 1, v16) == 1)
  {
    v75 = v36;
    v76 = v17 + 48;
    sub_1BAF32F04(v28, &unk_1EBC36750, &qword_1BAF95590);
    v37 = 1;
    v38 = v95;
    v39 = v16;
  }

  else
  {
    (*(v17 + 32))(v22, v28, v16);
    sub_1BAF8E718();
    v40 = sub_1BAF8E688();
    v41 = *(v17 + 8);
    v41(v20, v16);
    v41(v22, v16);
    if ((v40 & 1) == 0)
    {

      v58 = 0;
      v38 = v95;
LABEL_21:
      sub_1BAF32F04(v38, &unk_1EBC36750, &qword_1BAF95590);
      return v58;
    }

    v39 = v16;
    v75 = v36;
    v76 = v17 + 48;
    v37 = 0;
    v38 = v95;
  }

  v32[v82] = v37;
  v42 = v94 >> 60;
  if (v94 >> 60 != 15)
  {
    v43 = v77;
    sub_1BAF8E778();
    v44 = sub_1BAF8E748();
    v46 = v45;
    (*(v78 + 8))(v43, v79);
    *(v32 + 2) = v44;
    *(v32 + 3) = v46;
    v38 = v95;
  }

  v47 = v84;
  swift_beginAccess();
  sub_1BAF3B5C0(v38, &v32[v47]);
  swift_endAccess();
  v48 = v83;
  *v83 = v87;
  v48[1] = a9;
  *v34 = a10;
  *(v34 + 1) = a11;
  v49 = v86;
  if (v85)
  {
    v49 = 0;
  }

  *(v32 + 4) = v49;

  v50 = v92;
  sub_1BAF7184C(v88, v89, v90, v93, v92);
  v51 = *(v50 + 1);
  v93 = *v50;
  v52 = v91;
  sub_1BADC8524((v91 + 104), *(v91 + 128));

  sub_1BAF553D0(v50);
  if (v42 <= 0xE)
  {
    v53 = &v50[*(v80 + 24)];
    v54 = *(v53 + 1);
    if (v54)
    {
      v90 = v51;
      v55 = *v53;
      sub_1BADC8524((v52 + 144), *(v52 + 168));
      v56 = v81;
      v57 = v94;
      sub_1BAF3B678(v81, v94);
      sub_1BAF5C160(v55, v54, v56, v57);
      sub_1BAF3B72C(v56, v57);
      v51 = v90;
    }
  }

  if (v75(v38, 1, v39) != 1)
  {
    if (v50[*(v80 + 40)])
    {
      result = os_transaction_create();
      v67 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v67 = 0;
    }

    v68 = v73;
    v71(v73, 1, 1, v39);
    sub_1BAF398A4(v50, v68, v67);

    swift_unknownObjectRelease();
    sub_1BAF32F04(v68, &unk_1EBC36750, &qword_1BAF95590);
    goto LABEL_20;
  }

  v90 = v51;
  v59 = swift_allocObject();
  v60 = v81;
  v61 = v94;
  *(v59 + 16) = v81;
  *(v59 + 24) = v61;
  v62 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v63 = v74;
  v64 = (v74 + v62[12]);
  sub_1BAF3B9E0(v50, v74, type metadata accessor for WorkOrder);
  *v64 = sub_1BAF3C0B8;
  v64[1] = v59;
  sub_1BAF3B664(v60, v61);

  result = os_transaction_create();
  if (result)
  {
    v66 = (v63 + v62[20]);
    *(v63 + v62[16]) = result;
    *v66 = 0;
    v66[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v63);

    sub_1BAF3B6CC(v63, type metadata accessor for WorkCommand);
LABEL_20:
    sub_1BAF3B6CC(v50, type metadata accessor for WorkOrder);
    v58 = v93;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BAF3A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = type metadata accessor for WorkCommandProcessor();
  v17[4] = &off_1F38F4CC8;
  v17[0] = a3;

  v6 = sub_1BAF8EC28();
  v7 = NSClassFromString(v6);

  if (v7 && (ObjCClassMetadata = swift_getObjCClassMetadata(), (v9 = swift_conformsToProtocol2()) != 0) && ObjCClassMetadata)
  {
    v10 = v9;
    sub_1BAF3BB60(v17, v16);
    v11 = (*(v10 + 16))(v16, ObjCClassMetadata, v10);
  }

  else
  {
    v12 = sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v13 = sub_1BAF8F0C8();
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BAF95190;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1BAF30E44();
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    sub_1BAF8E8B8(v12, &dword_1BADC1000, v13, "Can't find worker class for %{public}@", 38, 2, v14);

    v11 = 0;
  }

  sub_1BADC5BE0(v17);
  return v11;
}

uint64_t sub_1BAF3AA00(uint64_t *a1)
{
  v3 = a1 + *(type metadata accessor for WorkOrder(0) + 24);
  v4 = *(v3 + 1);
  v5 = MEMORY[0x1E69E6158];
  if (v4)
  {
    v6 = *v3;
    sub_1BADC8524(v1 + 18, v1[21]);
    sub_1BAF5CB00(v6, v4);
  }

  sub_1BADC8524(v1 + 13, v1[16]);
  v8 = *a1;
  v7 = a1[1];
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = v8;
  *(inited + 40) = v7;

  sub_1BADC826C(0xD000000000000026, 0x80000001BAFA2470, inited);
  swift_setDeallocating();
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF3AC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v70 = a8;
  v68 = a7;
  v76 = a6;
  v74 = a5;
  *&v73 = a4;
  v72 = a3;
  v71 = a2;
  v69 = a1;
  v63 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for WorkOrder(0);
  MEMORY[0x1EEE9AC00](v59);
  v75 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BAF8E788();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAF8E728();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v62 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - v18;
  v19 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v67 = *a11;
  v66 = *(a11 + 8);
  v25 = *(v15 + 56);
  v25(&v57 - v23, 1, 1, v14);
  type metadata accessor for WorkOrderBuilder(0);
  v26 = swift_allocObject();
  *(v26 + 3) = 0;
  *(v26 + 4) = 0;
  *(v26 + 2) = 0;
  v65 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v25(&v26[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v14);
  v27 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v26[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v28 = &v26[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v26[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v29 = 0;
  *(v29 + 1) = 0;
  v25(&v26[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v14);
  v30 = &v26[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v30 = 0;
  *(v30 + 1) = 0;
  v78 = v24;
  sub_1BAF32F64(v24, v22, &unk_1EBC36750, &qword_1BAF95590);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_1BAF32F04(v22, &unk_1EBC36750, &qword_1BAF95590);
    v31 = 1;
  }

  else
  {
    v32 = v61;
    (*(v15 + 32))(v61, v22, v14);
    v33 = v62;
    sub_1BAF8E718();
    v34 = sub_1BAF8E688();
    v35 = *(v15 + 8);
    v35(v33, v14);
    v35(v32, v14);
    if ((v34 & 1) == 0)
    {

      v45 = 0;
LABEL_15:
      sub_1BAF32F04(v78, &unk_1EBC36750, &qword_1BAF95590);
      return v45;
    }

    v31 = 0;
  }

  v26[v27] = v31;
  v36 = v76 >> 60;
  if (v76 >> 60 != 15)
  {
    v37 = v60;
    sub_1BAF8E778();
    v38 = sub_1BAF8E748();
    v40 = v39;
    (*(v57 + 8))(v37, v58);
    *(v26 + 2) = v38;
    *(v26 + 3) = v40;
  }

  v41 = v65;
  swift_beginAccess();
  sub_1BAF3B5C0(v78, &v26[v41]);
  swift_endAccess();
  v42 = v70;
  *v28 = v68;
  v28[1] = v42;
  *v29 = a9;
  *(v29 + 1) = a10;
  v43 = v67;
  if (v66)
  {
    v43 = 0;
  }

  *(v26 + 4) = v43;

  v44 = v75;
  sub_1BAF7184C(v69, v71, v72, v73, v75);
  v45 = *v44;
  sub_1BADC8524(v77 + 13, v77[16]);

  sub_1BAF553D0(v44);
  v46 = v76;
  v47 = v74;
  if (v36 <= 0xE)
  {
    v48 = &v44[*(v59 + 24)];
    v49 = *(v48 + 1);
    if (v49)
    {
      v50 = *v48;
      sub_1BADC8524(v77 + 18, v77[21]);
      sub_1BAF3B678(v47, v46);
      sub_1BAF5C160(v50, v49, v47, v46);
      sub_1BAF3B72C(v47, v46);
    }
  }

  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  *(v51 + 24) = v46;
  v52 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v53 = v64;
  v54 = (v64 + v52[12]);
  sub_1BAF3B9E0(v44, v64, type metadata accessor for WorkOrder);
  *v54 = sub_1BAF3B630;
  v54[1] = v51;
  sub_1BAF3B664(v47, v46);

  result = os_transaction_create();
  if (result)
  {
    v56 = (v53 + v52[20]);
    *(v53 + v52[16]) = result;
    *v56 = 0;
    v56[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v53);

    sub_1BAF3B6CC(v53, type metadata accessor for WorkCommand);
    sub_1BAF3B6CC(v44, type metadata accessor for WorkOrder);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF3B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF3B630()
{
  v1 = *(v0 + 16);
  sub_1BAF3B664(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1BAF3B664(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BAF3B678(result, a2);
  }

  return result;
}

uint64_t sub_1BAF3B678(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BAF3B6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAF3B72C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BAF2DABC(result, a2);
  }

  return result;
}

uint64_t sub_1BAF3B740()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1BAF2DABC(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAF3B794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAF3B7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF3B7F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF2F048(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF3B848()
{
  v1 = *(type metadata accessor for WorkOrder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1BAF39078(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1BAF3B8D8()
{
  result = qword_1EBC36790;
  if (!qword_1EBC36790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36790);
  }

  return result;
}

uint64_t sub_1BAF3B96C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAF3B9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAF3BA48()
{
  v1 = *(sub_1BAF8E728() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1BAF34060(v2, v3, v4);
}

uint64_t *sub_1BAF3BAAC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BAF3BB10(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1BAF3BB60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAF3BBC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAF3BC30()
{
  v1 = *(type metadata accessor for WorkCommand(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_15:
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v24 = v4;

      v8 = type metadata accessor for WorkOrder(0);
      v9 = *(v8 + 20);
      v10 = sub_1BAF8E728();
      v11 = *(v10 - 8);
      v12 = v5 + v9;
      v13 = *(v11 + 8);
      v13(v12, v10);

      v14 = *(v8 + 36);
      if (!(*(v11 + 48))(v5 + v14, 1, v10))
      {
        v13(v5 + v14, v10);
      }

      v4 = v24;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_16;
      }

      v7 = sub_1BAF8E728();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);

      goto LABEL_15;
    }

    v25 = v4;

    v15 = type metadata accessor for WorkOrder(0);
    v16 = *(v15 + 20);
    v17 = sub_1BAF8E728();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(v5 + v16, v17);

    v20 = *(v15 + 36);
    if (!(*(v18 + 48))(v5 + v20, 1, v17))
    {
      v19(v5 + v20, v17);
    }

    v21 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);

    swift_unknownObjectRelease();
    v4 = v25;
    if (*(v5 + *(v21 + 80)))
    {
    }
  }

LABEL_16:
  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1BADC5BE0((v0 + v22));

  return MEMORY[0x1EEE6BDD0](v0, v22 + 40, v2 | 7);
}

uint64_t sub_1BAF3C020()
{
  v1 = *(type metadata accessor for WorkCommand(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BAF36E9C(v3, v0 + v2, v4);
}

uint64_t sub_1BAF3C0C8()
{
  v0 = sub_1BAF8E7D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAF8E848();
  sub_1BADC4B44(v4, qword_1EDBA3888);
  sub_1BADC4BA8(v4, qword_1EDBA3888);
  (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
  sub_1BAF8E7E8();
  return (*(v1 + 8))(v3, v0);
}