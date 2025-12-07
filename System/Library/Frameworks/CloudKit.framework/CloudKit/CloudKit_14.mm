void sub_188541878(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_1883ED874;
    v27 = sub_1883EF590;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1883ED874;
    v21 = sub_1883EF590;
    v22 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_188541C5C;
    block[3] = &unk_1E70BCA58;
    block[4] = a1;
    block[5] = &v23;
    block[6] = &v17;
    block[7] = a2;
    dispatch_sync(qword_1ED4B60E0, block);
    if (!v18[5])
    {
      objc_initWeak(&location, a1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v7 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = a1;
        _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Will fetch user record ID for container: %@", buf, 0xCu);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_188541CD0;
      v13[3] = &unk_1E70BC540;
      v8 = v5;
      v14 = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_188541D5C;
      v10[3] = &unk_1E70BCAA8;
      objc_copyWeak(v12, &location);
      v12[1] = a2;
      v11 = v8;
      sub_1885397D0(a1, 0, 1, 0, v13, v10);

      objc_destroyWeak(v12);
      objc_destroyWeak(&location);
      goto LABEL_13;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v9 = v24[5];
      *buf = 138412290;
      v30 = v9;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Have cached user IDs, returning %@", buf, 0xCu);
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    else if (!v5)
    {
LABEL_13:
      _Block_object_dispose(&v17, 8);

      _Block_object_dispose(&v23, 8);
      goto LABEL_14;
    }

    (*(v5 + 2))(v5, v24[5], 0);
    goto LABEL_13;
  }

LABEL_14:
}

void sub_188541C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188541C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_188541820(*(a1 + 32), *(a1 + 56), a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = sub_188541820(*(a1 + 32), 0, v7);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x1EEE66BB8](v8, v10);
}

void sub_188541CD0(uint64_t a1, void *a2)
{
  v8 = a2;
  if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
  {
    v5 = objc_msgSend_CKClientSuitableError(v8, v3, v4);

    v6 = v5;
  }

  else
  {
    v6 = v8;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v9 = v6;
    (*(v7 + 16))(v7, 0);
    v6 = v9;
  }
}

void sub_188541D5C(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188541E2C;
  v5[3] = &unk_1E70BCA80;
  objc_copyWeak(v7, a1 + 5);
  v7[1] = a1[6];
  v6 = a1[4];
  objc_msgSend_importantUserIDsWithCompletionHandler_(v3, v4, v5);

  objc_destroyWeak(v7);
}

void sub_188541E2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    v11 = [CKRecordID alloc];
    v13 = objc_msgSend_initWithRecordName_(v11, v12, v7);
    if (v8)
    {
LABEL_3:
      v14 = [CKRecordID alloc];
      v16 = objc_msgSend_initWithRecordName_(v14, v15, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = qword_1ED4B60E0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188542188;
  block[3] = &unk_1E70BC360;
  block[4] = WeakRetained;
  v18 = v13;
  v32 = v18;
  v19 = v16;
  v33 = v19;
  dispatch_sync(v17, block);
  if (*(a1 + 48))
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v22 = v20;
  if (!(v9 | v22))
  {
    v36[0] = *MEMORY[0x1E696A578];
    v36[1] = @"CKErrorDescription";
    v37[0] = @"Failed to obtain the necessary user record ID";
    v37[1] = @"Failed to obtain the necessary user record ID";
    v36[2] = @"CKRetryAfter";
    v37[2] = &unk_1EFA85098;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v37, v36, 3);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_(CKPrettyError, v24, @"CKErrorDomain", 6, v23);
  }

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error fetching user record ID: %@", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v26 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v22;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Fetched user record ID: %@", buf, 0xCu);
    }
  }

  if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
  {
    v29 = objc_msgSend_CKClientSuitableError(v9, v27, v28);

    v9 = v29;
  }

  v30 = *(a1 + 32);
  if (v30)
  {
    (*(v30 + 16))(v30, v22, v9);
  }
}

uint64_t sub_188542188(uint64_t a1)
{
  sub_1885417B4(*(a1 + 32), *(a1 + 40), 0);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return sub_1885417B4(v2, v3, 1);
}

uint64_t sub_188542494(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void sub_1885424B8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = [CKDiscoverUserIdentitiesOperation alloc];
    v31[0] = v9;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v31, 1);
    v17 = objc_msgSend_initWithUserIdentityLookupInfos_(v13, v16, v15);

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_1883ED874;
    v29[4] = sub_1883EF590;
    v30 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1885426F4;
    v28[3] = &unk_1E70BCB20;
    v28[4] = v29;
    objc_msgSend_setUserIdentityDiscoveredBlock_(v17, v18, v28);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_188542704;
    v24 = &unk_1E70BCB48;
    v26 = v12;
    v27 = v29;
    v25 = v9;
    objc_msgSend_setDiscoverUserIdentitiesCompletionBlock_(v17, v19, &v21);
    objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(a1, v20, v17, v10, v11, v21, v22, v23, v24);

    _Block_object_dispose(v29, 8);
  }
}

void sub_1885426D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188542704(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = a1[4];
    v5 = a2;
    v10 = objc_msgSend_lookupValue(v4, v6, v7);
    v9 = objc_msgSend_CKItemErrorForID_(v5, v8, v10);

    (*(v2 + 16))(v2, v3, v9);
  }
}

void sub_188542C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188542C44(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = objc_msgSend_CKItemErrorForID_(a2, a2, a1[4]);
    (*(v2 + 16))(v2, v3, v4);
  }
}

void sub_188543360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188543380(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (objc_msgSend_isEqual_(a2, v6, *(a1 + 32)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void sub_1885433F8(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = objc_msgSend_CKItemErrorForID_(a2, a2, a1[4]);
    (*(v2 + 16))(v2, v3, v4);
  }
}

void sub_188543754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188543774(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (objc_msgSend_isEqual_(*(a1 + 32), v6, a2))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

void sub_1885437EC(void *a1, void *a2)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = a1[4];
    v5 = a2;
    v13 = objc_msgSend_share(v4, v6, v7);
    v10 = objc_msgSend_URL(v13, v8, v9);
    v12 = objc_msgSend_CKItemErrorForID_(v5, v11, v10);

    (*(v2 + 16))(v2, v3, v12);
  }
}

void sub_188543A44(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_188543ABC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_188543B4C;
  v5[3] = &unk_1E70BCBE8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_msgSend_decryptPersonalInfoOnShare_completionHandler_(a2, v4, v3, v5);
}

void sub_188543B4C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_188543D78(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Failed to request access to share %@: %@", &v7, 0x16u);
    }
  }
}

uint64_t sub_188543E80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_188543FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_18854406C(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1885440F8;
  v4[3] = &unk_1E70BC858;
  v5 = *(a1 + 32);
  objc_msgSend_getNewWebSharingIdentityDataWithCompletionHandler_(a2, v3, v4);
}

void sub_1885440F8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
  (*(v4 + 16))(v4, v5, v8);
}

void sub_188544174()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.cloudkit.accountInfoFetchQueue.bypassesPCS", v2);
  v1 = qword_1ED4B60E8;
  qword_1ED4B60E8 = v0;
}

void sub_1885442DC(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = v2;
    v25 = objc_msgSend_containerID(v21, v23, v24);
    *buf = 138412290;
    v33 = v25;
    _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "Checking account access authorization for container %@", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 256);
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);

  v31 = 0;
  if (objc_msgSend___preflightAccountAccessAuthorization_(*(a1 + 32), v6, &v31))
  {
    v7 = v31;
    if (v31 != v5)
    {
      v8 = *(a1 + 32);
      objc_sync_enter(v8);
      v9 = *(a1 + 32);
      if (v9)
      {
        *(v9 + 256) = v31;
      }

      objc_sync_exit(v8);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v31;
        v12 = v10;
        v13 = CKTernaryDescription(v11);
        v14 = CKTernaryDescription(v5);
        *buf = 138412546;
        v33 = v13;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEFAULT, "In-process account access authorization check returned: %@, previously: %@", buf, 0x16u);
      }
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v7 != v5);
      return;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
LABEL_36:
      _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "No completion handler", buf, 2u);
    }
  }

  else if (v5 == -1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "No previous account access authorization.", buf, 2u);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, 1);
      return;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      goto LABEL_36;
    }
  }

  else
  {
    objc_initWeak(buf, *(a1 + 32));
    v16 = *(a1 + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1885447C4;
    v29[3] = &unk_1E70BC540;
    v30 = *(a1 + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_18854493C;
    v26[3] = &unk_1E70BCC58;
    v26[4] = *(a1 + 32);
    v28[1] = v5;
    objc_copyWeak(v28, buf);
    v17 = *(a1 + 40);
    v27 = v17;
    if (v16)
    {
      sub_1885397D0(v16, 0, 1, 0, v29, v26);
      v17 = v27;
    }

    objc_destroyWeak(v28);
    objc_destroyWeak(buf);
  }
}

void sub_1885447A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1885447C4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Couldn't access daemon to fetch account access authorization: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "No completion handler", &v7, 2u);
    }
  }
}

void sub_18854493C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Fetching account access authorization from daemon.", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188544A8C;
  v7[3] = &unk_1E70BCC30;
  v5 = *(a1 + 56);
  v7[4] = *(a1 + 32);
  v9[1] = v5;
  objc_copyWeak(v9, (a1 + 48));
  v8 = *(a1 + 40);
  objc_msgSend_accountAccessAuthorizationWithCompletionHandler_(v3, v6, v7);

  objc_destroyWeak(v9);
}

void sub_188544A8C(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v18 = v6;
    v19 = CKTernaryDescription(a2);
    v20 = *(a1 + 32);
    v21 = 138412546;
    v22 = v19;
    v23 = 2114;
    v24 = v20;
    _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Retrieved account access authorization '%@' for container %{public}@", &v21, 0x16u);
  }

  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch account access authorization: %@", &v21, 0xCu);
    }

    v8 = 1;
  }

  else if (*(a1 + 56) == a2)
  {
    v8 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    v8 = WeakRetained != 0;
    if (WeakRetained)
    {
      v11 = WeakRetained;
      objc_sync_enter(v11);
      v11[32] = a2;
      objc_sync_exit(v11);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = CKTernaryDescription(a2);
        v15 = CKTernaryDescription(*(a1 + 56));
        v21 = 138543874;
        v22 = v11;
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "Account access authorization updated for container %{public}@: %@, previous: %@", &v21, 0x20u);
      }
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "No completion handler", &v21, 2u);
    }
  }
}

void sub_188544FCC(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (!v7)
  {
    objc_msgSend_accountStatus(a2, v5, v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_188545388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, ...)
{
  va_start(va, state);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1885453C8(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188545830;
  aBlock[3] = &unk_1E70BCCA8;
  v55 = *(a1 + 64);
  v43 = *(a1 + 48);
  v2 = v43;
  v54 = v43;
  v3 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v53 = v3;
  v4 = _Block_copy(aBlock);
  v7 = objc_msgSend_setupInfo(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_hashString(v7, v8, v9);
  v13 = objc_msgSend_options(*(a1 + 32), v11, v12);
  IsDisabled = objc_msgSend_accountInfoCacheIsDisabled(v13, v14, v15);

  if (IsDisabled)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Account info cache disabled.", buf, 2u);
    }

    goto LABEL_17;
  }

  v20 = sub_1885323CC(CKAccountInfo, v10);
  if (!v20)
  {
LABEL_17:
    v29 = objc_msgSend_accountInfoFetchQueue(*(a1 + 32), v18, v19, v43);
    dispatch_suspend(v29);

    v32 = *(a1 + 40);
    if (v32)
    {
      v33 = objc_msgSend_log(v32, v30, v31);
      v36 = objc_msgSend_identifier(*(a1 + 40), v34, v35);
      if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = v36;
        if (os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1883EA000, v33, OS_SIGNPOST_EVENT, v37, "accountStatus", "Fetching account info", buf, 2u);
        }
      }
    }

    v38 = *(a1 + 32);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_188545B78;
    v50[3] = &unk_1E70BCAF8;
    v39 = v4;
    v50[4] = *(a1 + 32);
    v51 = v39;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_188545CA8;
    v44[3] = &unk_1E70BCCF8;
    v40 = *(a1 + 40);
    v41 = *(a1 + 32);
    v45 = v40;
    v46 = v41;
    v49 = IsDisabled;
    v47 = v10;
    v42 = v39;
    v48 = v42;
    if (v38)
    {
      sub_1885397D0(v38, 0, 1, 0, v50, v44);
      v42 = v48;
    }

    v21 = v51;
    goto LABEL_25;
  }

  v21 = v20;
  v22 = *(a1 + 40);
  if (v22)
  {
    v23 = objc_msgSend_log(v22, v18, v19);
    v26 = objc_msgSend_identifier(*(a1 + 40), v24, v25);
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = v26;
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v23, OS_SIGNPOST_EVENT, v27, "accountStatus", "Returning cached account info", buf, 2u);
      }
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v28 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v57 = v21;
    _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, "Found cached account info: %@", buf, 0xCu);
  }

  (*(v4 + 2))(v4, v21, 0);
LABEL_25:
}

void sub_188545830(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_msgSend_lock(*(*(*(a1 + 56) + 8) + 40), v7, v8);
  v11 = *(*(a1 + 64) + 8);
  if (*(v11 + 40) != 1)
  {
    *(v11 + 40) = 1;
    objc_msgSend_unlock(*(*(*(a1 + 56) + 8) + 40), v9, v10);
    if (*(a1 + 48))
    {
      v17 = objc_msgSend_fakeDeviceToDeviceEncryptionAvailability(*(a1 + 32), v15, v16);
      v20 = v17;
      if (v17)
      {
        v21 = objc_msgSend_integerValue(v17, v18, v19);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v22 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v24 = v22;
          v25 = CKStringFromDeviceToDeviceEncryptionStatus(v21);
          v41 = 138543362;
          v42 = v25;
          _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Overriding device-to-device encryption availability with a fake one: %{public}@", &v41, 0xCu);
        }

        v26 = objc_msgSend_copyWithFakeDeviceToDeviceEncryptionAvailability_(v5, v23, v21);

        v5 = v26;
      }

      (*(*(a1 + 48) + 16))();
    }

    v27 = *(a1 + 40);
    if (v6)
    {
      if (!v27)
      {
        goto LABEL_26;
      }

      v28 = objc_msgSend_log(v27, v15, v16);
      v31 = objc_msgSend_identifier(*(a1 + 40), v29, v30);
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        if (os_signpost_enabled(v28))
        {
          v41 = 138412290;
          v42 = v6;
          v33 = "Error: %@";
          v34 = v28;
          v35 = v32;
          v36 = 12;
LABEL_24:
          _os_signpost_emit_with_name_impl(&dword_1883EA000, v34, OS_SIGNPOST_INTERVAL_END, v35, "accountStatus", v33, &v41, v36);
        }
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_26;
      }

      v28 = objc_msgSend_log(v27, v15, v16);
      v39 = objc_msgSend_identifier(*(a1 + 40), v37, v38);
      if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = v39;
        if (os_signpost_enabled(v28))
        {
          LOWORD(v41) = 0;
          v33 = "";
          v34 = v28;
          v35 = v40;
          v36 = 2;
          goto LABEL_24;
        }
      }
    }

    goto LABEL_26;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v41 = 138412546;
    v42 = v5;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Warn: Completion handler has already been invoked, ignoring this callback. accountInfo: %@, error: %@", &v41, 0x16u);
  }

  objc_msgSend_unlock(*(*(*(a1 + 56) + 8) + 40), v13, v14);
LABEL_26:
}

void sub_188545B78(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Error fetching account info: %@", &v11, 0xCu);
  }

  v7 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
  (*(*(a1 + 40) + 16))();
  v10 = objc_msgSend_accountInfoFetchQueue(*(a1 + 32), v8, v9);
  dispatch_resume(v10);
}

void sub_188545CA8(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188545D8C;
  v12[3] = &unk_1E70BCCD0;
  v4 = (a1 + 40);
  v5 = *(a1 + 32);
  v15 = *(a1 + 64);
  *&v6 = v5;
  *(&v6 + 1) = *v4;
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  objc_msgSend_accountInfoWithCompletionHandler_(a2, v10, v12);
}

void sub_188545D8C(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_msgSend_log(v9, v6, v7);
    v13 = objc_msgSend_identifier(*(a1 + 32), v11, v12);
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v10))
      {
        *v50 = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v10, OS_SIGNPOST_EVENT, v14, "accountStatus", "Fetched account info", v50, 2u);
      }
    }
  }

  v15 = objc_msgSend_deviceContext(*(a1 + 40), v6, v7);
  v18 = objc_msgSend_testDeviceReferenceProtocol(v15, v16, v17);

  if (v18)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = v19;
      v26 = objc_msgSend_deviceContext(v22, v24, v25);
      v29 = objc_msgSend_testDeviceReferenceProtocol(v26, v27, v28);
      v32 = objc_msgSend_deviceID(v29, v30, v31);
      v33 = @". Error was ";
      *v50 = 138413058;
      v34 = &stru_1EFA32970;
      *&v50[4] = v32;
      *&v50[12] = 2112;
      if (v8)
      {
        v34 = v8;
      }

      else
      {
        v33 = &stru_1EFA32970;
      }

      *&v50[14] = v5;
      v51 = 2114;
      v52 = v33;
      v53 = 2112;
      v54 = v34;
      _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "For test device %@, account info is %@%{public}@%@", v50, 0x2Au);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v43 = @". Error was ";
      }

      else
      {
        v43 = &stru_1EFA32970;
      }

      if (v8)
      {
        v44 = v8;
      }

      else
      {
        v44 = &stru_1EFA32970;
      }

      v45 = *(a1 + 40);
      v46 = v35;
      v49 = objc_msgSend_containerID(v45, v47, v48);
      *v50 = 138413314;
      *&v50[4] = v5;
      *&v50[12] = 2114;
      *&v50[14] = v43;
      v51 = 2112;
      v52 = v44;
      v53 = 2048;
      v54 = v45;
      v55 = 2112;
      v56 = v49;
      _os_log_debug_impl(&dword_1883EA000, v46, OS_LOG_TYPE_DEBUG, "Account info is %@%{public}@%@ for CKContainerImplementation %p, containerID %@", v50, 0x34u);
    }
  }

  if (!v8)
  {
    v36 = *(a1 + 40);
    objc_sync_enter(v36);
    if (v5)
    {
      v37 = v5[7];
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a1 + 40);
    if (v38)
    {
      *(v38 + 256) = v37;
    }

    objc_sync_exit(v36);

    if ((*(a1 + 64) & 1) == 0)
    {
      objc_msgSend_setAsCachedAccountInfoForSetupInfoHash_(v5, v20, *(a1 + 48));
    }
  }

  v39 = objc_msgSend_CKClientSuitableError(v8, v20, v21, *v50, *&v50[8]);
  (*(*(a1 + 56) + 16))();
  v42 = objc_msgSend_accountInfoFetchQueue(*(a1 + 40), v40, v41);
  dispatch_resume(v42);
}

void sub_188546304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  os_activity_scope_leave((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_188546328(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error getting daemon to reload account: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_msgSend_CKClientSuitableError(v3, v5, v6);
    (*(v7 + 16))(v7, v8);
  }
}

void sub_188546444(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18854650C;
  v5[3] = &unk_1E70BCD48;
  objc_copyWeak(&v7, (a1 + 40));
  v6 = *(a1 + 32);
  objc_msgSend_reloadAccountWithCompletionHandler_(v3, v4, v5);

  objc_destroyWeak(&v7);
}

void sub_18854650C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error reloading account: %@", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "Reloaded account", buf, 2u);
    }
  }

  objc_msgSend_invalidateCachedAccountInfo(CKAccountInfo, v5, v6);
  v8 = qword_1ED4B60E0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188546734;
  block[3] = &unk_1E70BC680;
  objc_copyWeak(&v16, (a1 + 40));
  dispatch_async(v8, block);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setPushEnvironment_(WeakRetained, v10, 0);

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = objc_msgSend_CKClientSuitableError(v3, v11, v12);
    (*(v13 + 16))(v13, v14);
  }

  objc_destroyWeak(&v16);
}

void sub_188546734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setContainerScopedUserID_(WeakRetained, v1, 0);
  objc_msgSend_setOrgAdminUserID_(WeakRetained, v2, 0);
}

void sub_188546A5C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 1, v6);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_msgSend_log(v8, v4, v5);
      v12 = objc_msgSend_identifier(*(a1 + 32), v10, v11);
      if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      v13 = v12;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_13;
      }

      v22 = 138412290;
      v23 = v6;
      v14 = "Error: %@";
      v15 = v9;
      v16 = v13;
      v17 = 12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_INTERVAL_END, v16, "statusForApplicationPermission", v14, &v22, v17);
LABEL_13:
    }
  }

  else if (v8)
  {
    v9 = objc_msgSend_log(v8, v4, v5);
    v20 = objc_msgSend_identifier(*(a1 + 32), v18, v19);
    if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    v21 = v20;
    if (!os_signpost_enabled(v9))
    {
      goto LABEL_13;
    }

    LOWORD(v22) = 0;
    v14 = "";
    v15 = v9;
    v16 = v21;
    v17 = 2;
    goto LABEL_12;
  }
}

void sub_188546BD0(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188546C80;
  v6[3] = &unk_1E70BCD98;
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  objc_msgSend_statusForApplicationPermission_completionHandler_(a2, v5, v4, v6);
}

void sub_188546C80(uint64_t a1, unint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    if (a2 > 3)
    {
      v27 = @"Unknown status";
    }

    else
    {
      v27 = off_1E70BCFF0[a2];
    }

    *v31 = 138543874;
    *&v31[4] = v27;
    if (v5)
    {
      v28 = @". Error was ";
    }

    else
    {
      v28 = &stru_1EFA32970;
    }

    if (v5)
    {
      v29 = v5;
    }

    else
    {
      v29 = &stru_1EFA32970;
    }

    *&v31[12] = 2114;
    *&v31[14] = v28;
    *&v31[22] = 2112;
    v32 = v29;
    v30 = v6;
    _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Application permission status is %{public}@%{public}@%@", v31, 0x20u);
  }

  v11 = objc_msgSend_CKClientSuitableError(v5, v7, v8, *v31, *&v31[8], v32);
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v11);
  }

  v13 = *(a1 + 32);
  if (v11)
  {
    if (v13)
    {
      v14 = objc_msgSend_log(v13, v9, v10);
      v17 = objc_msgSend_identifier(*(a1 + 32), v15, v16);
      if ((v17 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_16;
      }

      v18 = v17;
      if (!os_signpost_enabled(v14))
      {
        goto LABEL_16;
      }

      *v31 = 138412290;
      *&v31[4] = v11;
      v19 = "Error: %@";
      v20 = v14;
      v21 = v18;
      v22 = 12;
LABEL_15:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v20, OS_SIGNPOST_INTERVAL_END, v21, "statusForApplicationPermission", v19, v31, v22);
LABEL_16:
    }
  }

  else if (v13)
  {
    v14 = objc_msgSend_log(v13, v9, v10);
    v25 = objc_msgSend_identifier(*(a1 + 32), v23, v24);
    if ((v25 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_16;
    }

    v26 = v25;
    if (!os_signpost_enabled(v14))
    {
      goto LABEL_16;
    }

    *v31 = 0;
    v19 = "";
    v20 = v14;
    v21 = v26;
    v22 = 2;
    goto LABEL_15;
  }
}

void sub_1885471C0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 1, v6);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_msgSend_log(v8, v4, v5);
      v12 = objc_msgSend_identifier(*(a1 + 32), v10, v11);
      if ((v12 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      v13 = v12;
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_13;
      }

      v22 = 138412290;
      v23 = v6;
      v14 = "Error: %@";
      v15 = v9;
      v16 = v13;
      v17 = 12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_INTERVAL_END, v16, "requestApplicationPermission", v14, &v22, v17);
LABEL_13:
    }
  }

  else if (v8)
  {
    v9 = objc_msgSend_log(v8, v4, v5);
    v20 = objc_msgSend_identifier(*(a1 + 32), v18, v19);
    if ((v20 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    v21 = v20;
    if (!os_signpost_enabled(v9))
    {
      goto LABEL_13;
    }

    LOWORD(v22) = 0;
    v14 = "";
    v15 = v9;
    v16 = v21;
    v17 = 2;
    goto LABEL_12;
  }
}

void sub_188547334(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1885473E4;
  v6[3] = &unk_1E70BCD98;
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  objc_msgSend_requestApplicationPermission_completionHandler_(a2, v5, v4, v6);
}

void sub_1885473E4(uint64_t a1, const char *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v7);
  }

  v9 = *(a1 + 32);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_msgSend_log(v9, v5, v6);
      v13 = objc_msgSend_identifier(*(a1 + 32), v11, v12);
      if ((v13 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      v14 = v13;
      if (!os_signpost_enabled(v10))
      {
        goto LABEL_13;
      }

      v23 = 138412290;
      v24 = v7;
      v15 = "Error: %@";
      v16 = v10;
      v17 = v14;
      v18 = 12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_INTERVAL_END, v17, "requestApplicationPermission", v15, &v23, v18);
LABEL_13:
    }
  }

  else if (v9)
  {
    v10 = objc_msgSend_log(v9, v5, v6);
    v21 = objc_msgSend_identifier(*(a1 + 32), v19, v20);
    if ((v21 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    v22 = v21;
    if (!os_signpost_enabled(v10))
    {
      goto LABEL_13;
    }

    LOWORD(v23) = 0;
    v15 = "";
    v16 = v10;
    v17 = v22;
    v18 = 2;
    goto LABEL_12;
  }
}

void sub_18854755C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_1885475D4(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188547684;
  v6[3] = &unk_1E70BCDE8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  objc_msgSend_fetchLongLivedOperationsWithIDs_completionHandler_(a2, v5, v4, v6);
}

void sub_188547684(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v34, v38, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = *(a1 + 32);
        v18 = objc_msgSend_resolvedConfiguration(v16, v11, v12, v34);
        objc_msgSend_setContainer_(v18, v19, v17);

        v22 = objc_msgSend_ckOperationClassName(v16, v20, v21);
        v23 = NSClassFromString(v22);

        v24 = objc_alloc_init(v23);
        objc_msgSend_fillFromOperationInfo_(v24, v25, v16);
        v28 = objc_msgSend_operationID(v16, v26, v27);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v29, v24, v28);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v34, v38, 16);
    }

    while (v13);
  }

  v32 = *(a1 + 40);
  if (v32)
  {
    v33 = objc_msgSend_CKClientSuitableError(v6, v30, v31);
    (*(v32 + 16))(v32, v7, v33);
  }
}

void sub_1885479B4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_CKClientSuitableError(a2, a2, a3);
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_188547A2C(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188547AB8;
  v4[3] = &unk_1E70BC6A8;
  v5 = *(a1 + 32);
  objc_msgSend_fetchAllLongLivedOperationIDsWithCompletionHandler_(a2, v3, v4);
}

void sub_188547AB8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a2;
    v8 = objc_msgSend_CKClientSuitableError(a3, v6, v7);
    (*(v3 + 16))(v3, v5, v8);
  }
}

void sub_188547DE8(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v11 = objc_msgSend_allValues(a2, v6, v7);
    v10 = objc_msgSend_firstObject(v11, v8, v9);
    (*(v3 + 16))(v3, v10, v5);
  }
}

uint64_t sub_188547F84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  objc_msgSend_setAssetRequestCallback_(v4, v5, v3);
  objc_msgSend_setMachServiceName_(v4, v6, *(a1 + 32));
  objc_msgSend_registerForItemRequests(v4, v7, v8);

  return 0;
}

uint64_t sub_1885480D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  objc_msgSend_setPackageRequestCallback_(v4, v5, v3);
  objc_msgSend_setMachServiceName_(v4, v6, *(a1 + 32));
  objc_msgSend_registerForItemRequests(v4, v7, v8);

  return 0;
}

uint64_t sub_1885485C4(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v6 = a1[5];
  if (v6)
  {
    objc_msgSend_setAssetRequestCallback_(v3, v4, v6);
  }

  else
  {
    v8 = objc_msgSend_assetRequestCallback(v3, v4, 0);
    objc_msgSend_setAssetRequestCallback_(v5, v9, v8);
  }

  v10 = a1[6];
  if (v10)
  {
    objc_msgSend_setPackageRequestCallback_(v5, v7, v10);
  }

  else
  {
    v12 = objc_msgSend_packageRequestCallback(v5, v7, 0);
    objc_msgSend_setPackageRequestCallback_(v5, v13, v12);
  }

  objc_msgSend_setMachServiceName_(v5, v11, a1[4]);
  objc_msgSend_registerForItemRequests(v5, v14, v15);

  return 0;
}

void sub_1885487B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1885487C8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to begin content access with error: %@", &v4, 0xCu);
  }
}

uint64_t sub_1885488A8(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18854891C;
  v3[3] = &unk_1E70BCEF8;
  v3[4] = *(a1 + 32);
  return objc_msgSend_beginContentAccess_(a2, a2, v3);
}

void sub_18854891C(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      v7 = "Failed to begin content access with error: %@";
      v8 = v6;
      v9 = 12;
LABEL_15:
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    if (a2)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Successfully began content access", &v12, 2u);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        v7 = "Failed to begin content access";
        v8 = v11;
        v9 = 2;
        goto LABEL_15;
      }
    }
  }
}

void sub_188548BB0(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to end content access with error: %@", &v4, 0xCu);
  }
}

void sub_188548C90(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_endContentAccess(a2, a2, a3);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Successfully ended content access", v4, 2u);
  }
}

void sub_188548DF8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to discard content with error: %@", &v4, 0xCu);
  }
}

void sub_188548ED8(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_discardContentIfPossible(a2, a2, a3);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Successfully discarded content if possible", v4, 2u);
  }
}

void sub_188549040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188549058(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to check if content is discarded with error: %@", &v4, 0xCu);
  }
}

uint64_t sub_188549138(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1885491AC;
  v3[3] = &unk_1E70BCEF8;
  v3[4] = *(a1 + 32);
  return objc_msgSend_isContentDiscarded_(a2, a2, v3);
}

void sub_1885491AC(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Failed to check if content is discarded with error: %@", &v7, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_188549AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v28 - 120));
  _Unwind_Resume(a1);
}

void sub_188549B04(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting scoped CKIdentityUpdateNotification for service named %{public}@", &v9, 0xCu);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_postNotificationName_object_(v5, v7, @"CKIdentityUpdateNotification", WeakRetained);
}

void sub_188549C1C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting scoped CKIdentityUpdateNotification for view named %{public}@", &v9, 0xCu);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_postNotificationName_object_(v5, v7, @"CKIdentityUpdateNotification", WeakRetained);
}

void sub_188549D34(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Posting scoped CKAccountChangedNotification for service named %{public}@", &v10, 0xCu);
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  v6 = CKNotificationKey(@"CKAccountChangedNotification", 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_postNotificationName_object_(v5, v8, v6, WeakRetained);
}

void sub_188549F04(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_implementation(a1, v5, v6);
    v9 = v8;
    if (v8)
    {
      sub_1885397D0(v8, 0, 1, 0, v10, v7);
    }
  }
}

uint64_t sub_18854A5F0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], a2, &unk_1EFAC8B00);
  v3 = qword_1ED4B6150;
  qword_1ED4B6150 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_18854A7E0(void *a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v56 = a3;
  v8 = a4;
  v54 = v8;
  if (a1)
  {
    if (v8)
    {
      v10 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v9, v8, 0);
      objc_msgSend_applyDefaultParametersToServiceURLComponents_(CKCodeFunctionInvokeOperationInfo, v11, v10);
      v14 = objc_msgSend_URL(v10, v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v16 = a1;
    objc_sync_enter(v16);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v16;
    v19 = objc_msgSend_codeServices(v16, v17, v18);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v57, v61, 16);
    if (v23)
    {
      v24 = *v58;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v57 + 1) + 8 * v25);
        v27 = objc_msgSend_serviceName(v26, v21, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v27, v28, v7);

        if (isEqualToString)
        {
          v30 = objc_msgSend_boxedDatabaseScope(v26, v21, v22);
          v33 = v30;
          if (v30 == v56)
          {

LABEL_16:
            v37 = objc_msgSend_serviceInstanceURL(v26, v21, v22);
            v40 = v37;
            if (v37 == v14)
            {

LABEL_24:
              inited = v26;
              goto LABEL_25;
            }

            v41 = objc_msgSend_serviceInstanceURL(v26, v38, v39);
            isEqual = objc_msgSend_isEqual_(v41, v42, v14);

            if (isEqual)
            {
              goto LABEL_24;
            }

            goto LABEL_18;
          }

          v34 = objc_msgSend_boxedDatabaseScope(v26, v31, v32);
          v36 = objc_msgSend_isEqual_(v34, v35, v56);

          if (v36)
          {
            goto LABEL_16;
          }
        }

LABEL_18:
        if (v23 == ++v25)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v57, v61, 16);
          if (v23)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v46 = obj;
    if (!obj[7])
    {
      v47 = objc_opt_new();
      v48 = obj[7];
      obj[7] = v47;

      v46 = obj;
    }

    v49 = objc_msgSend_implementation(v46, v44, v45);
    v19 = sub_1885381D4(v49, v7, v56, v54);

    v50 = [CKCodeService alloc];
    inited = objc_msgSend_initInternalWithImplementation_container_(v50, v51, v19, obj);
    objc_msgSend_addObject_(obj[7], v52, inited);
LABEL_25:

    objc_sync_exit(obj);
  }

  else
  {
    inited = 0;
  }

  return inited;
}

void sub_18854BB1C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = objc_msgSend_CKClientSuitableError(v3, v7, v8);
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v9;
      _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "Failed to register CKSystemSharingUIObserver %@: %@", &v10, 0x16u);
    }
  }
}

void sub_18854BC3C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Successfully got a daemon proxy for CKSystemSharingUIObserver %@", &v6, 0xCu);
  }
}

uint64_t CKDatabaseScopeFromString(void *a1)
{
  v1 = a1;
  v2 = 1;
  if (objc_msgSend_compare_options_(v1, v3, @"Public", 1))
  {
    if (objc_msgSend_compare_options_(v1, v4, @"Private", 1))
    {
      if (objc_msgSend_compare_options_(v1, v5, @"Shared", 1))
      {
        v2 = 4 * (objc_msgSend_compare_options_(v1, v6, @"Organization", 1) == 0);
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  return v2;
}

void sub_18854D5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18854D5C4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while counting asset cache items, check your syslog.  Error %@", &v4, 0xCu);
  }
}

void sub_18854D6A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_scope(v3, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18854D748;
  v9[3] = &unk_1E70BD020;
  v9[4] = *(a1 + 40);
  objc_msgSend_countAssetCacheItemsWithDatabaseScope_completionHandler_(v4, v8, v7, v9);
}

void sub_18854D748(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Error while counting asset cache items, check your syslog %@", &v7, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_18854D8EC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing asset cache, check your syslog", v4, 2u);
  }
}

void sub_18854D994(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_scope(v2, v3, v4);
  objc_msgSend_clearAssetCacheWithDatabaseScope_completionHandler_(v7, v6, v5, &unk_1EFA2E948);
}

void sub_18854D9F4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error while clearing record cache, check your syslog %@", &v4, 0xCu);
    }
  }
}

void sub_18854DB7C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while showing asset cache, check your syslog", v4, 2u);
  }
}

void sub_18854DC24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_scope(v2, v3, v4);
  objc_msgSend_showAssetCacheWithDatabaseScope_(v7, v6, v5);
}

void sub_18854DD20(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854DDC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_scope(v2, v3, v4);
  objc_msgSend_clearRecordCacheWithDatabaseScope_(v7, v6, v5);
}

void sub_18854DEE4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while getting Record PCS diagnostics for zones. Check your syslog", v4, 2u);
  }
}

void sub_18854E06C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854E114(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_clearCachesWithOptions_databaseScope_completionHandler_(v9, v8, v3, v7, a1[5]);
}

void sub_18854E274(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854E31C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_clearCachesForRecordWithRecordID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854E478(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while clearing record cache, check your syslog", v4, 2u);
  }
}

void sub_18854E520(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_clearCachesForZoneWithZoneID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854E6AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching zone PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854E754(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_fetchPCSFromCacheForZoneWithZoneID_databaseScope_localCacheOnly_unitTestOverrides_completionHandler_(v9, v8, v3, v7, *(a1 + 64), *(a1 + 48), *(a1 + 56));
}

void sub_18854E8B4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching share PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854E95C(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_fetchPCSFromCacheForShareWithRecordID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854EAB8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching record PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854EB60(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = a2;
  v7 = objc_msgSend_scope(v4, v5, v6);
  objc_msgSend_fetchPCSFromCacheForRecordWithRecordID_databaseScope_completionHandler_(v9, v8, v3, v7, a1[6]);
}

void sub_18854EC2C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Couldn't talk to daemon while fetching zone PCS from cache, check your syslog", v4, 2u);
  }
}

void sub_18854F194(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_allValues(v5, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12 >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v15;
      v27 = objc_msgSend_allValues(v5, v25, v26);
      v28 = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = v27;
      _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Fetching record %@, got too many results %@", &v28, 0x16u);
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = objc_msgSend_allValues(v5, v13, v14);
    v20 = objc_msgSend_firstObject(v17, v18, v19);
    v22 = objc_msgSend_CKItemErrorForID_(v6, v21, *(a1 + 32));
    (*(v16 + 16))(v16, v20, v22);
  }
}

void sub_18854F558(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = v12;
      v24 = objc_msgSend_recordID(v20, v22, v23);
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v6;
      _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "Saving record %@, got too many results %@", &v25, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v17 = objc_msgSend_recordID(*(a1 + 32), v15, v16);
    v19 = objc_msgSend_CKItemErrorForID_(v7, v18, v17);
    (*(v13 + 16))(v13, v14, v19);
  }
}

void sub_18854F90C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Deleting record with id %@, got too many results %@", &v18, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v16 = objc_msgSend_CKItemErrorForID_(v7, v15, *(a1 + 32));
    (*(v13 + 16))(v13, v14, v16);
  }
}

void sub_18854FCC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    objc_msgSend_addObject_(*(a1 + 32), v10, v7);
    objc_sync_exit(v9);
  }
}

uint64_t sub_18854FD6C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_18854FE84(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_allValues(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_188550124(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v11 = objc_msgSend_objectForKeyedSubscript_(a2, v8, v6);
    v10 = objc_msgSend_CKItemErrorForID_(v7, v9, *(a1 + 32));

    (*(v3 + 16))(v3, v11, v10);
  }
}

void sub_1885503F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v15 = objc_msgSend_firstObject(a2, v8, v9);
    v12 = objc_msgSend_zoneID(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_CKItemErrorForID_(v7, v13, v12);

    (*(v4 + 16))(v4, v15, v14);
  }
}

void sub_1885506CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v12 = objc_msgSend_firstObject(a3, v8, v9);
    v11 = objc_msgSend_CKItemErrorForID_(v7, v10, *(a1 + 32));

    (*(v4 + 16))(v4, v12, v11);
  }
}

void sub_18855098C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = 138412546;
      v22 = v20;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Saving subscription %@, got too many results %@", &v21, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v17 = objc_msgSend_subscriptionID(*(a1 + 32), v15, v16);
    v19 = objc_msgSend_CKItemErrorForID_(v7, v18, v17);
    (*(v13 + 16))(v13, v14, v19);
  }
}

void sub_188550E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188550E50(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (!(v11 | v12))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
        _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Handler called wihout both result and error.", &v17, 2u);
      }

      v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Unknown failure.");
    }

    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Warn: Not invoking completion handler for zoneID: %@", &v17, 0xCu);
    }
  }
}

void sub_188551058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (v5)
    {
      v9 = objc_msgSend_zoneID(*(a1 + 32), v6, v7);
      v11 = objc_msgSend_objectForKey_(v5, v10, v9);

      if (v11)
      {
        v13 = objc_msgSend_objectForKey_(v11, v12, *(a1 + 40));
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (!(v8 | v13))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Handler called wihout both result and error.", v16, 2u);
      }

      v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Unknown failure.");
    }

    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1885513FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, "Deleting subscription %@, got too many results %@", &v18, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = objc_msgSend_firstObject(v6, v10, v11);
    v16 = objc_msgSend_CKItemErrorForID_(v7, v15, *(a1 + 32));
    (*(v13 + 16))(v13, v14, v16);
  }
}

void sub_188551778(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8) >= 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Fetching subscription with id %@, got too many results %@", &v16, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v5, v9, *(a1 + 32));
    v14 = objc_msgSend_CKItemErrorForID_(v6, v13, *(a1 + 32));
    (*(v11 + 16))(v11, v12, v14);
  }
}

void sub_1885519E4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_allValues(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_188552F7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18855326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v12 != v13)
  {
  }

  _Unwind_Resume(a1);
}

void sub_188553538(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_18855447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3 + a2 - 1;
    v5 = [CKDistributedTimestamp alloc];
    v8 = objc_msgSend_identifier(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_initWithSiteIdentifier_clockValue_(v5, v9, v8, v4);

    objc_msgSend_addTimestamp_(*(a1 + 40), v10, v11);
  }
}

void sub_188554644(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1885548E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188554910(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_msgSend_siteIdentifier(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v7, v8, *(a1 + 32));

  if (isEqual)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_188554B2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_siteIdentifier(a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

void sub_188554D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188554D50(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v8 = objc_msgSend_clockValue(v18, v6, v7);
  v9 = *(a1 + 32);
  v12 = objc_msgSend_siteIdentifier(v18, v10, v11);
  v14 = objc_msgSend_timestampForSiteIdentifier_(v9, v13, v12);
  v17 = objc_msgSend_clockValue(v14, v15, v16);

  if (v8 > v17)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_18855512C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_timestampAtIndex_(*(a1 + 40), a2, a3);
  objc_msgSend_addTimestamp_(v3, v4, v5);
}

void sub_188555330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = v3;
  v7 = objc_msgSend_siteIdentifier(v3, v5, v6);
  v9 = objc_msgSend_timestampForSiteIdentifier_(v4, v8, v7);

  if (v9)
  {
    v12 = objc_msgSend_clockValue(v18, v10, v11);
    v16 = objc_msgSend_clockValue(v9, v13, v14);
    v17 = *(a1 + 40);
    if (v12 >= v16)
    {
      objc_msgSend_addTimestamp_(v17, v15, v9);
    }

    else
    {
      objc_msgSend_addTimestamp_(v17, v15, v18);
    }
  }
}

void sub_188555570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188555594(uint64_t a1, void *a2)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v5, v3, v4);
}

void sub_188555758(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1885557C4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_siteIdentifier(a2, v5, v6);
  v10 = objc_msgSend_siteIdentifier(v4, v8, v9);
  v12 = objc_msgSend_CKCompare_(v7, v11, v10);

  return v12;
}

void sub_188555834(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_188555860(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  v9 = objc_msgSend_description(v5, v7, v8);
  objc_msgSend_appendString_(v6, v10, v9);

  if ((objc_msgSend_count(*(a1 + 40), v11, v12) - 1) != a3)
  {
    objc_msgSend_appendString_(*(a1 + 32), v13, @"|");
  }
}

void sub_188555DD0(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188555F2C(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_188556068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_188556098(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v10, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v5, v8, v9);
}

void sub_1885561C4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1885562B4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_188556408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188556464(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (objc_msgSend_containsObject_(*(a1 + 32), v6, v14))
  {
    v9 = objc_msgSend_mutableCopy(v5, v7, v8);
    v12 = objc_msgSend_clockValues(*(a1 + 40), v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v9, v14);
  }
}

void sub_188556500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_188556650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_1885566AC(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v8 = objc_msgSend_modifier(v18, v6, v7);
  isEqual = objc_msgSend_isEqual_(v8, v9, *(a1 + 32));

  if (isEqual)
  {
    v13 = objc_msgSend_mutableCopy(v5, v11, v12);
    v16 = objc_msgSend_clockValues(*(a1 + 40), v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v13, v18);
  }
}

void sub_18855675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id sub_188556820(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_conformsToProtocol_(v2, v3, &unk_1EFA934A0))
  {
    v6 = objc_msgSend_mutableCopy(v2, v4, v5);
  }

  else
  {
    v6 = objc_msgSend_copy(v2, v4, v5);
  }

  v7 = v6;

  return v7;
}

void sub_188556904(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188556A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v15);

  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_188556A5C(uint64_t a1, void *a2, int a3, int a4)
{
  v24 = a2;
  if (a3 && a4)
  {
    v9 = objc_msgSend_clockValues(*(a1 + 32), v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v24);

    v14 = objc_msgSend_clockValues(*(a1 + 40), v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v24);
    objc_msgSend_removeIndexes_(v11, v17, v16);

    if (!objc_msgSend_count(v11, v18, v19))
    {
      v22 = objc_msgSend_clockValues(*(a1 + 32), v20, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v23, 0, v24);
    }
  }
}

void sub_188556C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v15);

  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_188556CD4(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (a3)
  {
    v27 = v7;
    v10 = *(a1 + 32);
    if (a4)
    {
      v11 = objc_msgSend_clockValues(v10, v8, v9);
      v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v27);

      v16 = objc_msgSend_clockValues(*(a1 + 40), v14, v15);
      v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v27);
      objc_msgSend_CKIntersectIndexes_(v13, v19, v18);

      if (!objc_msgSend_count(v13, v20, v21))
      {
        v24 = objc_msgSend_clockValues(*(a1 + 32), v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v24, v25, 0, v27);
      }
    }

    else
    {
      v13 = objc_msgSend_clockValues(v10, v8, v9);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v26, 0, v27);
    }

    v7 = v27;
  }
}

void sub_188556ED4(uint64_t a1, void *a2, int a3, int a4)
{
  v24 = a2;
  if (a3)
  {
    if (!a4)
    {
      goto LABEL_6;
    }

    v9 = objc_msgSend_clockValues(*(a1 + 32), v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v24);
    v14 = objc_msgSend_clockValues(*(a1 + 40), v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v24);
    objc_msgSend_addIndexes_(v11, v17, v16);
  }

  else
  {
    v9 = objc_msgSend_clockValues(*(a1 + 40), v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v18, v24);
    v14 = objc_msgSend_mutableCopy(v11, v19, v20);
    v16 = objc_msgSend_clockValues(*(a1 + 32), v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v23, v14, v24);
  }

LABEL_6:
}

void sub_188556FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_188557150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_188557294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_188557704(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188557864(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_1885579A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_1885579D0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v10, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) ^= objc_msgSend_hash(v5, v8, v9);
}

void sub_188557B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_188557B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_timestampCount(v6, v4, v5);
}

void sub_188557CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_188557D28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_timestampCountForSiteIdentifier_(v5, v4, *(a1 + 32));
}

void sub_188557F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_1885580E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188558124(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_clockValuesForSiteIdentifier_(a3, a2, *(a1 + 40));
  objc_msgSend_addIndexes_(v3, v4, v5);
}

void sub_188558444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, id obj, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 184), 8);
  _Block_object_dispose((v29 - 152), 8);

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1885584E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = objc_msgSend_clockValuesForSiteIdentifier_(a3, v6, *(a1 + 32));
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885585E8;
  v12[3] = &unk_1E70BD3D0;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v10 = v5;
  v13 = v10;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v7, v11, v8, v9, 0, v12);
}

void *sub_1885585E8(void *result, const char *a2, uint64_t a3, _BYTE *a4)
{
  v7 = result;
  v8 = *(*(result + 5) + 8);
  if ((*(v8 + 24) & 1) != 0 || a2 < *(*(*(result + 6) + 8) + 48))
  {
    result = objc_msgSend_unsignedShortValue(*(result + 4), a2, a3);
    *(*(v7[7] + 8) + 24) = result;
    v9 = *(v7[6] + 8);
    *(v9 + 48) = a2;
    *(v9 + 56) = a3;
    v8 = *(v7[5] + 8);
  }

  *(v8 + 24) = 0;
  *a4 = 1;
  return result;
}

void sub_188558848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

uint64_t sub_1885588A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_188558A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188558A88(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = objc_msgSend_vectorFilteredBySiteIdentifiers_(a3, v5, *(a1 + 32));
  if (objc_msgSend_timestampCount(v6, v7, v8))
  {
    v11 = objc_msgSend_mutableCopy(v6, v9, v10);
    v14 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 40), v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v11, v16);
  }
}

void sub_188558B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_188558C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188558CDC(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v6 = objc_msgSend_vectorFilteredByModifier_(a3, v5, *(a1 + 32));
  if (objc_msgSend_timestampCount(v6, v7, v8))
  {
    v11 = objc_msgSend_mutableCopy(v6, v9, v10);
    v14 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 40), v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v11, v16);
  }
}

void sub_188558D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_188558ED4(_Unwind_Exception *a1)
{
  v9 = v6;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188559060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_1885590BC(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  v9 = objc_msgSend_shortValue(v26, v7, v8);
  v10 = (*(v6 + 16))(v6, v9);
  v13 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v11, v12);
  v15 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v14, v10);
  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v16, v15);

  if (!v17)
  {
    v19 = objc_opt_new();
    v22 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v20, v21);
    v24 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v23, v10);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v25, v19, v24);

    v17 = v19;
  }

  objc_msgSend_unionVector_(v17, v18, v5);
}

id sub_188559258(void *a1, int a2, void *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v53 = a3;
  v8 = v7;
  objc_sync_enter(v8);
  v56 = v8;
  v11 = objc_msgSend_allSiteIdentifiers(v8, v9, v10);
  v50 = objc_msgSend_allObjects(v11, v12, v13);

  v55 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v50;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v70, v75, 16);
  if (v17)
  {
    v18 = *v71;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        if (a2)
        {
          v4 = objc_msgSend_descriptionWithStringSiteIdentifiers(*(*(&v70 + 1) + 8 * i), v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v55, v21, v4, v20);
        }

        else
        {
          v3 = objc_msgSend_description(*(*(&v70 + 1) + 8 * i), v15, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v55, v22, v3, v20);
        }

        if (a2)
        {
          v23 = v4;
        }

        else
        {
          v23 = v3;
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v70, v75, 16);
    }

    while (v17);
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = sub_188560540;
  v68[3] = &unk_1E70BD6D0;
  v24 = v55;
  v69 = v24;
  v49 = objc_msgSend_sortedArrayUsingComparator_(obj, v25, v68);
  v54 = objc_opt_new();
  objc_msgSend_appendFormat_(v54, v26, @"[");
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v51 = v49;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v27, &v64, v74, 16);
  if (v28)
  {
    v29 = *v65;
    v30 = 1;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v65 != v29)
        {
          objc_enumerationMutation(v51);
        }

        v32 = *(*(&v64 + 1) + 8 * j);
        v33 = objc_opt_new();
        v35 = v33;
        if ((v30 & 1) == 0)
        {
          objc_msgSend_appendFormat_(v33, v34, @"|");
        }

        v36 = objc_msgSend_objectForKeyedSubscript_(v24, v34, v32);
        objc_msgSend_appendFormat_(v35, v37, @"%@:", v36);

        if (objc_msgSend_timestampCountForSiteIdentifier_(v56, v38, v32))
        {
          v40 = objc_opt_new();
          v62[0] = 0;
          v62[1] = v62;
          v62[2] = 0x2020000000;
          v63 = 1;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = sub_1885605E8;
          v57[3] = &unk_1E70BD6F8;
          v61 = v62;
          v41 = v40;
          v58 = v41;
          v42 = v53;
          v59 = v32;
          v60 = v42;
          objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v56, v43, v32, v57);
          objc_msgSend_appendString_(v35, v44, v41);

          _Block_object_dispose(v62, 8);
        }

        else
        {
          objc_msgSend_appendFormat_(v35, v39, @"∅");
        }

        objc_msgSend_appendString_(v54, v45, v35);

        v30 = 0;
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v46, &v64, v74, 16);
      v30 = 0;
    }

    while (v28);
  }

  objc_msgSend_appendFormat_(v54, v47, @"]");
  objc_sync_exit(v56);

  return v54;
}

void sub_1885596B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, id obj, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

id sub_1885597D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(%d)", a4, a5);

  return v5;
}

id sub_1885598BC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_conformsToProtocol_(v2, v3, &unk_1EFA934A0))
  {
    v6 = objc_msgSend_mutableCopy(v2, v4, v5);
  }

  else
  {
    v6 = objc_msgSend_copy(v2, v4, v5);
  }

  v7 = v6;

  return v7;
}

void sub_1885599A0(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188559A44(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_188559B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  v13 = v12;

  objc_sync_exit(obj);
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_188559C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188559DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_188559EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_188559FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18855A02C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v8 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v14);

  if (v10)
  {
    objc_msgSend_intersectVector_(v5, v11, v10);
  }

  else
  {
    v12 = objc_opt_new();
    objc_msgSend_intersectVector_(v5, v13, v12);
  }
}

void sub_18855A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18855A2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18855A47C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18855A4C0(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v8 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v18);

  if (v10)
  {
    objc_msgSend_unionVector_(v10, v11, v5);
  }

  else
  {
    v13 = objc_msgSend_mutableCopy(v5, v11, v12);
    v16 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v13, v18);
  }
}

void sub_18855A588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

uint64_t sub_18855A5D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18855AD24(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_18855B3C0(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_18855B4E8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855B5AC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855B668(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_18855B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = objc_opt_new();
  v9 = v7;
  if (a5 & 0xFF00) != 0x200 || (*(a1 + 32))
  {
    if ((a5 & 0xFF00) != 0x200)
    {
      goto LABEL_12;
    }

    if (*(a1 + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    v10 = @"L";
    objc_msgSend_appendString_(v9, v8, @"L");
    goto LABEL_8;
  }

  objc_msgSend_appendString_(v7, v8, @"(");
  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = objc_msgSend_CKSuperscriptForLetter_(MEMORY[0x1E696AEC0], v8, 76);
  v11 = 1;
  objc_msgSend_appendString_(v9, v12, v10);
LABEL_8:
  if (v11)
  {
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    objc_msgSend_appendString_(v9, v13, @""));
  }

LABEL_12:

  return v9;
}

void sub_18855B908(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_18855BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_18855BE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_18855BFE0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_18855C5E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  objc_sync_exit(v3);
  _Unwind_Resume(a1);
}

void sub_18855CD7C(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_18855CEFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855CFC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18855D07C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18855D12C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18855D284(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_18855D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = objc_opt_new();
  v9 = v7;
  if ((*(a1 + 32) & 1) == 0)
  {
    objc_msgSend_appendString_(v7, v8, @"(");
  }

  if ((a5 & 0xFF00) == 0x200)
  {
    v10 = *(a1 + 32);
    if (v10 == 1)
    {
      v11 = objc_msgSend_CKSuperscriptForLetter_(MEMORY[0x1E696AEC0], v8, 76);
      objc_msgSend_appendString_(v9, v12, v11);
    }

    else
    {
      v11 = @"L";
      objc_msgSend_appendString_(v9, v8, @"L");
    }

    if (v10)
    {
    }
  }

  if (*(a1 + 32) == 1)
  {
    objc_msgSend_CKSuperscriptForNumber_(MEMORY[0x1E696AEC0], v8, a5);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%lu", a5);
  }
  v13 = ;
  objc_msgSend_appendString_(v9, v14, v13);

  if ((*(a1 + 32) & 1) == 0)
  {
    objc_msgSend_appendString_(v9, v15, @""));
  }

  return v9;
}

void sub_18855DA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, id a10, uint64_t a11, uint64_t a12)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t sub_18855DBA0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_shortValue(v4, v6, v7) >> 8;
  v11 = objc_msgSend_shortValue(v5, v9, v10) >> 8;
  v14 = objc_msgSend_shortValue(v4, v12, v13);
  v17 = objc_msgSend_shortValue(v5, v15, v16);
  v18 = v8 > v11;
  if (v8 < v11)
  {
    v18 = -1;
  }

  if (v14 > v17)
  {
    v18 = 1;
  }

  if (v14 >= v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_18855DFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, id a11, uint64_t a12, void *a13, uint64_t a14)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t sub_18855E0DC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_shortValue(v4, v6, v7) >> 8;
  v11 = objc_msgSend_shortValue(v5, v9, v10) >> 8;
  v14 = objc_msgSend_shortValue(v4, v12, v13);
  v17 = objc_msgSend_shortValue(v5, v15, v16);
  v18 = v8 > v11;
  if (v8 < v11)
  {
    v18 = -1;
  }

  if (v14 > v17)
  {
    v18 = 1;
  }

  if (v14 >= v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_18855E360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_18855E634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18855E67C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 40) == (objc_msgSend_shortValue(v15, v6, v7) & 0xFF00) >> 8)
  {
    v10 = objc_msgSend_mutableCopy(v5, v8, v9);
    v13 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v10, v15);
  }
}

void sub_18855E720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18855E84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18855E894(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (*(a1 + 40) == objc_msgSend_shortValue(v15, v6, v7))
  {
    v10 = objc_msgSend_mutableCopy(v5, v8, v9);
    v13 = objc_msgSend_mutableAttributeToSparseVector(*(a1 + 32), v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v10, v15);
  }
}

void sub_18855E934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18855EB88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17 = v3;
  v7 = objc_msgSend_modifier(v3, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, v7);

  if (!v9)
  {
    v11 = objc_opt_new();
    v12 = *(a1 + 32);
    v15 = objc_msgSend_modifier(v17, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v16, v11, v15);

    v9 = v11;
  }

  objc_msgSend_addObject_(v9, v10, v17);
}

void sub_18855EC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_18855EC8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a4)
  {
    v10 = *(a1 + 32);
    v34 = v7;
    v11 = objc_msgSend_modifier(v7, v8, v9);
    v13 = objc_msgSend_objectForKeyedSubscript_(v10, v12, v11);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v13;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v35, v39, 16);
    if (v17)
    {
      v18 = a3 + a4;
      v19 = a3 + a4 - 1;
      v20 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          v23 = objc_msgSend_identifier(v22, v15, v16);
          v26 = objc_msgSend_identifier(v34, v24, v25);
          v27 = CKDistributedTimestampLWWCompare(v23, 0, v26, 0);

          if (v27 == -1)
          {
            v29 = v18;
          }

          else
          {
            v29 = v19;
          }

          v30 = *(a1 + 40);
          v31 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v28, 0, v29);
          objc_msgSend_addClockValuesInIndexSet_withAttribute_forSiteIdentifier_(v30, v32, v31, bswap32((*(a1 + 48) << 8) | 2) >> 16, v22);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v35, v39, 16);
      }

      while (v17);
    }

    v7 = v34;
  }
}

uint64_t CKDistributedTimestampLWWCompare(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v9 = a3;
  if (a2 <= a4)
  {
    if (a4 <= a2)
    {
      v10 = objc_msgSend_CKCompare_(v7, v8, v9);
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_18855F04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18855F07C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(a1 + 40) == objc_msgSend_shortValue(v10, v6, v7))
  {
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_timestampCount(v5, v8, v9);
  }
}

void sub_18855F2AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_18855F43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18855F478(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  objc_sync_enter(v8);
  v11 = objc_msgSend_clockValues(v8, v9, v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18855F5B4;
  v15[3] = &unk_1E70BD630;
  v16 = *(a1 + 32);
  v12 = v7;
  v13 = *(a1 + 40);
  v17 = v12;
  v18 = v13;
  v19 = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v14, v15);

  objc_sync_exit(v8);
}

void sub_18855F578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18855F5B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_modifier(a2, a2, a3);
  isEqual = objc_msgSend_isEqual_(v6, v7, *(a1 + 32));

  if (isEqual)
  {
    v11 = objc_msgSend_shortValue(*(a1 + 40), v9, v10);
    v12 = *(a1 + 56);
    *(*(*(a1 + 48) + 8) + 24) = BYTE1(v11);
    *v12 = 1;
    *a4 = 1;
  }
}

void sub_18855F838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose((v37 - 128), 8);
  _Block_object_dispose((v37 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_18855F8A8(void *a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, _BYTE *a6)
{
  v12 = a2;
  if (a4)
  {
    v27 = v12;
    v15 = 6;
    if ((a5 & 0xFF00) == 0x200)
    {
      v15 = 5;
    }

    *(*(a1[v15] + 8) + 24) = 1;
    if ((*(*(a1[5] + 8) + 24) & 1) != 0 && *(*(a1[6] + 8) + 24) == 1)
    {
      v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a1[10], a1[4], @"CKDistributedTimestampVector.mm", 1792, @"It is not possible to mix and match regular and lwwPerModifier clock types for a given site identifier modifier (rdar://84695941)");
    }

    if ((a5 & 0xFF00) == 0x200)
    {
      v16 = a4 + a3 - 1;
      v17 = *(a1[7] + 8);
      v18 = *(v17 + 40);
      if (v18)
      {
        v19 = objc_msgSend_identifier(v18, v13, v14);
        v20 = *(*(a1[8] + 8) + 24);
        v23 = objc_msgSend_identifier(v27, v21, v22);
        v24 = CKDistributedTimestampLWWCompare(v19, v20, v23, v16);

        v12 = v27;
        if (v24 != -1)
        {
          goto LABEL_14;
        }

        v17 = *(a1[7] + 8);
      }

      objc_storeStrong((v17 + 40), a2);
      *(*(a1[8] + 8) + 24) = v16;
      *(*(a1[9] + 8) + 24) = a5;
    }

    else
    {
      *a6 = 1;
    }

    v12 = v27;
  }

LABEL_14:
}

void sub_18855FB44(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18855FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_18855FEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1885601E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *a11, void *a12, void *a13, id obj)
{
  objc_sync_exit(obj);

  objc_sync_exit(a10);
  _Unwind_Resume(a1);
}

void sub_188560384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1885603C0(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v6 = objc_msgSend_mutableCopy(a1, v4, v5);
  objc_msgSend_removeIndexes_(v6, v7, v9);
  objc_msgSend_removeIndexes_(a1, v8, v6);
}

__CFString *sub_188560448(uint64_t a1, const char *a2, unint64_t a3)
{
  if (a3 >= 0xA)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(%lu)", a3);
  }

  else
  {
    v4 = off_1E70BD718[a3];
  }

  return v4;
}

__CFString *sub_1885604B4(uint64_t a1, const char *a2, int a3)
{
  if (a3 - 65) < 0x37 && ((0x7AFFDB007AFFDBuLL >> (a3 - 65)))
  {
    v4 = off_1E70BD768[(a3 - 65)];
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"(%c)", a3);
  }

  return v4;
}

uint64_t sub_188560540(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, a2);
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, v5);
  v11 = objc_msgSend_compare_(v7, v10, v9);

  return v11;
}

void sub_1885605BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1885605E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(*(a1 + 56) + 8);
  if (*(v6 + 24))
  {
    *(v6 + 24) = 0;
  }

  else
  {
    objc_msgSend_appendFormat_(*(a1 + 32), a2, @",");
  }

  if (a3 == 1)
  {
    objc_msgSend_appendFormat_(*(a1 + 32), a2, @"%lu", a2);
  }

  else
  {
    objc_msgSend_appendFormat_(*(a1 + 32), a2, @"%lu-%lu", a2, &a2[a3 - 1]);
  }

  v8 = (*(*(a1 + 48) + 16))();
  if (v8)
  {
    objc_msgSend_appendString_(*(a1 + 32), v7, v8);
  }
}

uint64_t sub_1885627D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E695DF00];
  objc_msgSend_time(a2, a2, a3);

  return objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v3, v4, v5);
}

void sub_188563DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_188563DF0(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_code(v6, v7, v8) == 2)
  {
    if (objc_msgSend_code(v6, v9, v10) == 2)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v13 = objc_msgSend_userInfo(v6, v11, v12);
      v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"CKPartialErrors");

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v5);
        if (objc_msgSend_code(v17, v18, v19) == 2)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v21 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
          {
            v31 = 138412290;
            v32 = v17;
            _os_log_fault_impl(&dword_1883EA000, v21, OS_LOG_TYPE_FAULT, "There are too many layers of nested partial failure errors to fully flatten. Adding this error without flattening: %@", &v31, 0xCu);
          }
        }

        objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v20, v17, v5);
      }
    }
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v9, v6, v5);
    v24 = *(*(a1 + 40) + 8);
    v27 = *(v24 + 40);
    v25 = (v24 + 40);
    v26 = v27;
    if (v27)
    {
      v28 = objc_msgSend_code(v26, v22, v23);
      if (v28 != objc_msgSend_code(v6, v29, v30))
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else
    {
      objc_storeStrong(v25, a3);
    }
  }
}

void sub_188564230(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v8 = v5;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = objc_msgSend_userInfo(v5, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"RequestUUID");
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = objc_msgSend_userInfo(v8, v6, v7);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"ContainerID");
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = objc_msgSend_CKClientSuitableError(v8, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v20, v19, v21);
}

uint64_t CKErrorCodeForNSURLErrorCode(uint64_t a1)
{
  result = 3;
  if ((a1 + 1020) > 0x11 || ((1 << (a1 - 4)) & 0x34805) == 0)
  {
    v3 = 4;
    if (a1 == -1)
    {
      v3 = 3;
    }

    if (a1 != -2000)
    {
      return v3;
    }
  }

  return result;
}

BOOL sub_188564390(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain"))
  {
    v14 = objc_msgSend_code(a1, v6, v7) == 2003 || objc_msgSend_code(a1, v8, v9) == 2036 || objc_msgSend_code(a1, v10, v11) == 2042 || objc_msgSend_code(a1, v12, v13) == 2056;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL sub_188564424(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain"))
  {
    v8 = objc_msgSend_code(a1, v6, v7) == 2003;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_188564480(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x1E696AA08]);

  v8 = objc_msgSend_domain(v5, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"CKInternalErrorDomain"))
  {
    v10 = CKTopLevelUnderlyingErrorCodes();
    v11 = MEMORY[0x1E696AD98];
    v14 = objc_msgSend_code(v5, v12, v13);
    v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
    v18 = objc_msgSend_containsObject_(v10, v17, v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_188564550(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_domain(a1, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"CKErrorDomain"))
  {
    v11 = objc_msgSend_code(a1, v9, v10);

    if (v11 == 2)
    {
      v13 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v12, v4);
      v16 = objc_msgSend_userInfo(a1, v14, v15);
      v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"CKPartialErrors");

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = sub_188564734;
      v40[3] = &unk_1E70BDA48;
      v19 = v13;
      v41 = v19;
      v21 = objc_msgSend_CKFilter_(v18, v20, v40);
      if (objc_msgSend_count(v21, v22, v23))
      {
        v26 = objc_msgSend_userInfo(a1, v24, v25);
        v29 = objc_msgSend_mutableCopy(v26, v27, v28);

        objc_msgSend_setObject_forKeyedSubscript_(v29, v30, v21, @"CKPartialErrors");
        v33 = objc_msgSend_domain(a1, v31, v32);
        v36 = objc_msgSend_code(a1, v34, v35);
        v38 = objc_msgSend_errorWithDomain_code_userInfo_(CKPrettyError, v37, v33, v36, v29);
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v38 = a1;
LABEL_9:

  return v38;
}

uint64_t sub_188564734(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_zoneID(v3, v4, v5);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }

    v6 = v3;
  }

  v8 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  v9 = objc_msgSend_containsObject_(*(a1 + 32), v7, v6);

LABEL_8:
  return v9;
}

id sub_1885647DC(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_domain(a1, v4, v5);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"CKErrorDomain");

    if ((isEqualToString & 1) == 0 || objc_msgSend_code(a1, v10, v11) != 2)
    {
      v23 = a1;
      goto LABEL_8;
    }

    v14 = objc_msgSend_userInfo(a1, v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"CKPartialErrors");

    if (v16)
    {
      v19 = objc_msgSend_userInfo(a1, v17, v18);
      v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"CKPartialErrors");
      v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v6);

      goto LABEL_8;
    }
  }

  v23 = 0;
LABEL_8:

  return v23;
}

BOOL CKErrorIsCode(void *a1, void *a2)
{
  v3 = a1;
  v6 = objc_msgSend_code(v3, v4, v5);
  v9 = objc_msgSend_domain(v3, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v14 = objc_msgSend_code(v3, v12, v13);

    v6 = CKErrorCodeForUnderlyingErrorCode(v14, v15, v16);
    return v6 == a2;
  }

  v17 = objc_msgSend_domain(v3, v12, v13);

  v19 = objc_msgSend_isEqualToString_(v17, v18, @"CKErrorDomain");
  if (v19)
  {
    return v6 == a2;
  }

  return 0;
}

uint64_t CKCanRetryForError(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_code(v1, v2, v3);
  v7 = objc_msgSend_domain(v1, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v12 = objc_msgSend_code(v1, v10, v11);

    v4 = CKErrorCodeForUnderlyingErrorCode(v12, v13, v14);
  }

  else
  {
    v15 = objc_msgSend_domain(v1, v10, v11);

    v17 = objc_msgSend_isEqualToString_(v15, v16, @"CKErrorDomain");
    if (!v17)
    {
      return 0;
    }
  }

  result = 1;
  if ((v4 > 0x19 || ((1 << v4) & 0x29002F8) == 0) && v4 != 115)
  {
    return 0;
  }

  return result;
}

void sub_188564A80(uint64_t a1, const char *a2, void *a3)
{
  v4 = objc_msgSend_userInfo(a3, a2, a3);
  obj = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"CKRetryAfter");

  v8 = obj;
  if (obj)
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 40))
    {
      objc_msgSend_doubleValue(obj, v6, v7);
      v11 = v10;
      objc_msgSend_doubleValue(*(*(*(a1 + 32) + 8) + 40), v12, v13);
      v8 = obj;
      if (v11 >= v14)
      {
        goto LABEL_6;
      }

      v9 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v9 + 40), obj);
    v8 = obj;
  }

LABEL_6:
}

void sub_188564B58(uint64_t a1, const char *a2)
{
  v8[11] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E696AA08];
  v8[0] = @"CKPartialErrors";
  v8[1] = v3;
  v8[2] = *MEMORY[0x1E696A750];
  v8[3] = @"CKFunctionError";
  v8[4] = @"AncestorRecord";
  v8[5] = @"ServerRecord";
  v8[6] = @"ClientRecord";
  v8[7] = @"NotFoundItemID";
  v8[8] = @"CKRecordMovedDestinationID";
  v8[9] = @"CKSessionReadinessErrorBox";
  v8[10] = @"CKSessionInvalidationContext";
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v8, 11);
  v6 = objc_msgSend_setWithArray_(v2, v5, v4);
  v7 = qword_1ED4B6168;
  qword_1ED4B6168 = v6;
}

BOOL CKShouldWrapErrorFetchingRecords(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString && ((v9 = objc_msgSend_code(v1, v7, v8), (v9 - 5006) > 8) || ((1 << (v9 + 114)) & 0x10D) == 0))
  {
    v10 = v9 != 2036 && v9 != 10006;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void CKAddResponseHeaderValuesToUserInfoDictionary(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_statusCode(v3, v5, v6);
  if ((v8 - 200) >= 0x64)
  {
    v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"CKHTTPStatus");
  }

  v11 = objc_msgSend_valueForHTTPHeaderField_(v3, v7, @"Retry-After");
  v14 = v11;
  if (v11 || v8 == 503 || v8 == 429)
  {
    v15 = objc_msgSend_intValue(v11, v12, v13);
    if (v15 >= 86400)
    {
      v17 = 86400;
    }

    else
    {
      v17 = v15;
    }

    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    if (v18 != v15)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412546;
        v29 = v14;
        v30 = 1024;
        v31 = v18;
        _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "Invalid or out of range Retry-After header value: %@. Used %d", &v28, 0x12u);
      }
    }

    v20 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v21, v20, @"CKRetryAfter");
  }

  v22 = objc_msgSend_valueForHTTPHeaderField_(v3, v12, @"X-Apple-Request-UUID");
  objc_msgSend_setObject_forKeyedSubscript_(v4, v23, v22, @"RequestUUID");

  v26 = objc_msgSend_allHeaderFields(v3, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v26, @"CKDHTTPHeaders");
}

id CKErrorFromHTTPResponse(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_statusCode(v1, v2, v3);
  if ((v4 - 200) <= 0x63)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v13 = v4;
      _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Expected failure HTTP status code (%ld)", buf, 0xCu);
    }
  }

  if (v4 == 503 || v4 == 429)
  {
    v7 = 2009;
  }

  else
  {
    v7 = 2001;
  }

  v8 = objc_opt_new();
  CKAddResponseHeaderValuesToUserInfoDictionary(v1, v8);

  v10 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v9, @"CKInternalErrorDomain", v7, v8, @"Request failed with http status code %ld", v4);

  return v10;
}

uint64_t CKErrorShouldDefer(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain");

  if (isEqualToString)
  {
    v9 = objc_msgSend_code(v1, v7, v8);
    if ((v9 - 131) >= 3)
    {
      if (v9 == 20)
      {
        v12 = objc_msgSend_userInfo(v1, v10, v11);
        v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x1E696AA08]);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isEqualToString = CKErrorShouldDefer(v14);

          goto LABEL_9;
        }
      }

      isEqualToString = 0;
      goto LABEL_9;
    }

    isEqualToString = 1;
  }

LABEL_9:

  return isEqualToString;
}

id sub_1885679A8(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v4, v12, v6, v7, v8, v9, v10, v11, 0);
  v15 = objc_msgSend_decodeObjectOfClasses_forKey_(a1, v14, v13, v5);

  return v15;
}

void sub_188569E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  objc_sync_exit(v19);
  os_activity_scope_leave((v20 - 80));
  _Unwind_Resume(a1);
}

void sub_188569E74(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting proxy for max mergeable delta size: %@", &v4, 0xCu);
  }
}

void sub_188569F54(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18856A000;
  v5[3] = &unk_1E70BDB98;
  v8 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_msgSend_suggestedMergeableDeltaSizeWithCompletionHandler_(a2, v4, v5);
}

void sub_18856A000(void *a1, const char *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v8 = objc_msgSend_mutableCopy(qword_1ED4B5F40, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v9, *(*(a1[6] + 8) + 40), a1[4]);
  v12 = objc_msgSend_copy(v8, v10, v11);
  v13 = qword_1ED4B5F40;
  qword_1ED4B5F40 = v12;

  v16 = objc_msgSend_mutableCopy(qword_1ED4B5F48, v14, v15);
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v18, v19);
  v22 = objc_msgSend_numberWithDouble_(v17, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v16, v23, v22, a1[4]);

  v26 = objc_msgSend_copy(v16, v24, v25);
  v27 = qword_1ED4B5F48;
  qword_1ED4B5F48 = v26;

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v28 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
  {
    v29 = a1[5];
    v30 = v28;
    v33 = objc_msgSend_containerIdentifier(v29, v31, v32);
    v36 = objc_msgSend_integerValue(*(*(a1[6] + 8) + 40), v34, v35);
    v37 = 138412546;
    v38 = v33;
    v39 = 2048;
    v40 = v36;
    _os_log_impl(&dword_1883EA000, v30, OS_LOG_TYPE_INFO, "Fetched suggested delta size from daemon for container %@: %ld", &v37, 0x16u);
  }
}

void sub_18856F064(uint64_t a1, const char *a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    a4.n128_u64[0] = 134218754;
    v17 = a4;
    do
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v10 = *(a1 + 32);
      v11 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], a2, v8, a5, a6, *&v17);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_18856F2B4;
      v19[3] = &unk_1E70BDC08;
      v20 = *(a1 + 40);
      v21 = &v22;
      objc_msgSend_enumerateObjectsForIndexes_usingBlock_(v10, v12, v11, v19);

      if (!v23[3])
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v13 = ck_log_facility_distributed_sync;
        if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 48);
          v15 = *(a1 + 56);
          v16 = *(a1 + 64);
          *buf = v17.n128_u32[0];
          v27 = v8;
          v28 = 2112;
          v29 = v14;
          v30 = 2112;
          v31 = v15;
          v32 = 2112;
          v33 = v16;
          _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "[Batch Replacement] Could not find causal batch for state changed clock value %lu in batch %@ with eligible removals vector %@ and current state vector %@", buf, 0x2Au);
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
        *a7 = 1;
      }

      _Block_object_dispose(&v22, 8);
      ++v8;
      --v7;
    }

    while (v7);
  }
}

void sub_18856F280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_18856F2B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_addObject_(*(a1 + 32), a2, a4);
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_18856F2F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = objc_msgSend_vectors(v3, v4, v5);
  v9 = objc_msgSend_contents(v6, v7, v8);
  v12 = objc_msgSend_backingVector(v9, v10, v11);
  v15 = objc_msgSend_attributeToSparseVector(v12, v13, v14);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_18856F474;
  v21[3] = &unk_1E70BD358;
  v21[4] = &v22;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v16, v21);

  v17 = *(a1 + 32);
  v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v18, v23[3]);
  objc_msgSend_setObject_forKey_(v17, v20, v19, v3);

  _Block_object_dispose(&v22, 8);
}

void sub_18856F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18856F474(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v8 = objc_msgSend_unsignedShortValue(v11, v6, v7);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_timestampCount(v5, v9, v10) * v8;
}

uint64_t sub_18856F514(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_vectors(v5, v7, v8);
  v12 = objc_msgSend_contents(v9, v10, v11);
  v15 = objc_msgSend_timestampCount(v12, v13, v14);
  v18 = objc_msgSend_vectors(v6, v16, v17);
  v21 = objc_msgSend_contents(v18, v19, v20);
  v24 = objc_msgSend_timestampCount(v21, v22, v23);

  if (v15 < v24)
  {
    v27 = 1;
    goto LABEL_13;
  }

  v28 = objc_msgSend_vectors(v5, v25, v26);
  v31 = objc_msgSend_contents(v28, v29, v30);
  v34 = objc_msgSend_timestampCount(v31, v32, v33);
  v37 = objc_msgSend_vectors(v6, v35, v36);
  v40 = objc_msgSend_contents(v37, v38, v39);
  v43 = objc_msgSend_timestampCount(v40, v41, v42);

  if (v34 > v43)
  {
    v27 = -1;
    goto LABEL_13;
  }

  v45 = objc_msgSend_objectForKey_(*(a1 + 32), v44, v5);
  v47 = objc_msgSend_objectForKey_(*(a1 + 32), v46, v6);
  v50 = v47;
  if (!v45)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v48, v49);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, *(a1 + 40), *(a1 + 48), @"CKMergeableDeltaMetadata+DeltaMetadataCalculations.mm", 305, @"Cached sum for delta1 not found");

    if (v50)
    {
      goto LABEL_7;
    }

LABEL_15:
    v65 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v48, v49);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v65, v66, *(a1 + 40), *(a1 + 48), @"CKMergeableDeltaMetadata+DeltaMetadataCalculations.mm", 306, @"Cached sum for delta2 not found");

    goto LABEL_7;
  }

  if (!v47)
  {
    goto LABEL_15;
  }

LABEL_7:
  v51 = objc_msgSend_unsignedIntegerValue(v45, v48, v49);
  v54 = objc_msgSend_unsignedIntegerValue(v50, v52, v53);
  if (v51 >= v54)
  {
    if (v51 > v54)
    {
      v27 = -1;
    }

    else
    {
      v57 = objc_msgSend_identifier(v5, v55, v56);
      v60 = objc_msgSend_identifier(v6, v58, v59);
      v27 = objc_msgSend_compare_(v57, v61, v60);
    }
  }

  else
  {
    v27 = 1;
  }

LABEL_13:
  return v27;
}

void sub_18856F7D4(id *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = a2;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v44, v48, 16);
  if (v3)
  {
    v41 = *v45;
    do
    {
      v4 = 0;
      do
      {
        if (*v45 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v44 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        v8 = objc_msgSend_objectForKeyedSubscript_(obj, v7, v5);
        v11 = objc_msgSend_vectors(v8, v9, v10);
        v14 = objc_msgSend_contents(v11, v12, v13);
        v16 = objc_msgSend_vectorFilteredByAtomState_(v14, v15, 3);

        v19 = objc_msgSend_vectors(v8, v17, v18);
        v22 = objc_msgSend_contents(v19, v20, v21);
        v25 = objc_msgSend_mutableCopy(v22, v23, v24);

        v28 = objc_msgSend_clockVector(v16, v26, v27);
        objc_msgSend_minusVector_(v25, v29, v28);

        v32 = objc_msgSend_vectors(a1[4], v30, v31);
        v35 = objc_msgSend_contents(v32, v33, v34);
        hasAtomStateNotInStateVector = objc_msgSend_hasAtomStateNotInStateVector_(v25, v36, v35);

        if ((hasAtomStateNotInStateVector & 1) == 0)
        {
          objc_msgSend_addObject_(a1[5], v38, v5);
          objc_msgSend_addObject_(a1[6], v39, v8);
        }

        objc_autoreleasePoolPop(v6);
        ++v4;
      }

      while (v3 != v4);
      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v44, v48, 16);
    }

    while (v3);
  }
}

void sub_188570EAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v6, v5) & 1) == 0)
  {
    v9 = *(a1 + 40);
    v10 = objc_msgSend_identifier(v5, v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v9, v11, v10);

    v13 = *(a1 + 48);
    v45 = v12;
    v16 = objc_msgSend_identifier(v5, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v13, v17, v16);

    v20 = objc_msgSend_clockValuesForSiteIdentifier_(v12, v19, *(a1 + 56));
    v22 = objc_msgSend_clockValuesForSiteIdentifier_(v18, v21, *(a1 + 56));
    v24 = objc_msgSend_clockValuesForSiteIdentifier_(*(a1 + 64), v23, *(a1 + 56));
    v25 = objc_opt_new();
    objc_msgSend_addIndexes_(v25, v26, v20);
    objc_msgSend_addIndexes_(v25, v27, v22);
    objc_msgSend_removeIndexes_(v25, v28, v24);
    v31 = objc_msgSend_mutableCopy(v25, v29, v30);
    objc_msgSend_removeIndexes_(v31, v32, *(a1 + 72));
    objc_msgSend_removeIndexes_(v25, v33, v31);
    v36 = objc_msgSend_mutableCopy(v25, v34, v35);
    v37 = *(a1 + 80);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_188571188;
    v46[3] = &unk_1E70BDCD0;
    v47 = *(a1 + 32);
    v38 = *(a1 + 88);
    v39 = *(a1 + 56);
    v48 = v38;
    v49 = v39;
    v40 = v36;
    v50 = v40;
    objc_msgSend_enumerateObjectsForIndexes_usingBlock_(v37, v41, v25, v46);
    if (objc_msgSend_count(v40, v42, v43))
    {
      objc_msgSend_addObject_(*(a1 + 32), v44, v5);
    }
  }
}

void sub_188571188(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a4;
  if ((objc_msgSend_containsObject_(*(a1 + 32), v5, v15) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = objc_msgSend_identifier(v15, v6, v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v8, v10, v9);

    v13 = objc_msgSend_clockValuesForSiteIdentifier_(v11, v12, *(a1 + 48));
    objc_msgSend_removeIndexes_(*(a1 + 56), v14, v13);
  }
}

uint64_t sub_18857189C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_addClockValues_(*(a1 + 32), a2, a2);
  v6 = *(a1 + 32);

  return objc_msgSend_addClockValueLengths_(v6, v5, a3);
}

uint64_t sub_1885718E4(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v6 = objc_msgSend_pClockTypeAndAtomStateFromClockType_atomState_(*(a1 + 40), a2, a4 >> 8, a4);
  objc_msgSend_addStateValues_(*(a1 + 32), v7, v6);
  v9 = *(a1 + 32);

  return objc_msgSend_addStateValueLengths_(v9, v8, a3);
}

void sub_188571E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, id a13, id a14)
{
  objc_sync_exit(v14);
  objc_sync_exit(obj);
  objc_sync_exit(a13);
  objc_sync_exit(a14);
  _Unwind_Resume(a1);
}

void sub_18857557C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_valueID(v3, v5, v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    v11 = 300;
    _os_log_fault_impl(&dword_1883EA000, v4, OS_LOG_TYPE_FAULT, "Mergeable %@ exceeded high limit of %lu site identifiers", &v8, 0x16u);
  }
}

void sub_188575688(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_valueID(v3, v5, v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    v11 = 100;
    _os_log_fault_impl(&dword_1883EA000, v4, OS_LOG_TYPE_FAULT, "Mergeable %@ exceeded medium limit of %lu site identifiers", &v8, 0x16u);
  }
}

void sub_188575794(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_valueID(v3, v5, v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    v11 = 50;
    _os_log_fault_impl(&dword_1883EA000, v4, OS_LOG_TYPE_FAULT, "Mergeable %@ exceeded low limit of %lu site identifiers", &v8, 0x16u);
  }
}

void sub_188577614(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void sub_1885776D8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v11 = objc_msgSend_removableDeltaMetadatas(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_containsObject_(v11, v12, v7);

  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v56 = v7;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Will fold delta %@ into new delta", buf, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v56 = v7;
      v57 = 2112;
      v58 = v8;
      _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Generating replacement for delta %@: %@", buf, 0x16u);
    }

    v17 = *(a1 + 40);
    v18 = *(*(a1 + 64) + 8);
    obj = *(v18 + 40);
    v19 = objc_msgSend_mergeableDeltasForMetadata_error_(v17, v16, v8, &obj);
    objc_storeStrong((v18 + 40), obj);
    if (v19 && !*(*(*(a1 + 64) + 8) + 40))
    {
      v22 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v20, v7);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v23 = v19;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v49, v54, 16);
      if (v25)
      {
        v28 = v25;
        v29 = *v50;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v50 != v29)
            {
              objc_enumerationMutation(v23);
            }

            v31 = objc_msgSend_metadata(*(*(&v49 + 1) + 8 * i), v26, v27, v49);
            objc_msgSend_setReplacedDeltaIdentifiers_(v31, v32, v22);
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v49, v54, 16);
        }

        while (v28);
      }

      v33 = [CKReplaceDeltasRequest alloc];
      v36 = objc_msgSend_valueID(*(a1 + 48), v34, v35);
      v39 = objc_msgSend_allObjects(v22, v37, v38);
      v41 = objc_msgSend_initWithValueID_deltaIdentifiersToReplace_replacementDeltas_replacementDeltasContainNewData_(v33, v40, v36, v39, v23, 1);

      objc_msgSend_addObject_(*(a1 + 56), v42, v41);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 48);
        v44 = v21;
        v47 = objc_msgSend_valueID(v43, v45, v46);
        v48 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v56 = v47;
        v57 = 2112;
        v58 = v48;
        _os_log_error_impl(&dword_1883EA000, v44, OS_LOG_TYPE_ERROR, "Error generating replacement deltas for %@: %@", buf, 0x16u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

__CFString *CKPCSKeyToRemoveKeyTypeString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"INVALID";
  }

  else
  {
    return off_1E70BDE18[a1 - 1];
  }
}

uint64_t CKPCSKeyToRemoveKeyTypeFromString(void *a1)
{
  v1 = a1;
  v2 = 1;
  if (objc_msgSend_compare_options_(v1, v3, @"Primary", 1))
  {
    if (objc_msgSend_compare_options_(v1, v4, @"KeyPair", 1))
    {
      if (objc_msgSend_compare_options_(v1, v5, @"Sharee", 1))
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  return v2;
}

uint64_t sub_18857CA30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_length(v4, v6, v7);
  v11 = objc_msgSend_length(v5, v9, v10);
  if (v8)
  {
    if (v11)
    {
      if (objc_msgSend_isEqualToData_(v4, v12, v5))
      {
        v13 = 0;
        goto LABEL_16;
      }

      v14 = v4;
      v17 = objc_msgSend_bytes(v14, v15, v16);
      v18 = v5;
      v21 = objc_msgSend_bytes(v18, v19, v20);
      v24 = objc_msgSend_length(v4, v22, v23);
      v27 = objc_msgSend_length(v5, v25, v26);
      if (v24 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v24;
      }

      v29 = memcmp(v17, v21, v28);
      if (v29 < 0 || !v29 && (v32 = objc_msgSend_length(v4, v30, v31), v32 < objc_msgSend_length(v5, v33, v34)))
      {
        v13 = -1;
        goto LABEL_16;
      }
    }

    v13 = 1;
    goto LABEL_16;
  }

  if (v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  return v13;
}

id sub_18857D5EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v5 = objc_msgSend_copySortDescriptor_(v3, v4, v2);

  return v5;
}

id sub_18857D640(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v5 = objc_msgSend_copySortDescriptor_(v3, v4, v2);

  return v5;
}

void sub_18857DB38()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E696AE70]);
  v6 = 0;
  v2 = objc_msgSend_initWithPattern_options_error_(v0, v1, @"^                                                      (.{1,255})                                             \\[                                                       (-?\\d{1,8})                                           (\\.\\.\\<|\\.\\.\\.)                                  (-?\\d{1,8})                                        \\]                                                    $", 2, &v6);
  v3 = v6;
  v4 = qword_1ED4B6170;
  qword_1ED4B6170 = v2;

  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v8 = @"^                                                      (.{1,255})                                             \\[                                                       (-?\\d{1,8})                                           (\\.\\.\\<|\\.\\.\\.)                                  (-?\\d{1,8})                                        \\]                                                    $";
      v9 = 2112;
      v10 = v3;
      _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Couldn't initialize indexed list key regular expression with pattern %{public}@: %@", buf, 0x16u);
    }
  }
}

id CKValidateIndexedArrayKeys(void *a1, int a2)
{
  v3 = a1;
  if (!objc_msgSend_count(v3, v4, v5))
  {
    goto LABEL_49;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v61 = 0;
    v62 = 0;
    v9 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, v8);
    v60 = 0;
    v10 = CKProcessIndexedArrayKey(v9, &v60, &v62, &v61);
    v11 = v60;

    if (v10)
    {
      v53 = v10;
LABEL_52:

      goto LABEL_53;
    }

    if (v11)
    {
      v7 = 1;
      if (a2)
      {
        if (!v61)
        {
          v54 = objc_msgSend_objectAtIndexedSubscript_(v3, v12, v8);
          v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v55, @"CKErrorDomain", 12, @"indexed list key (%@) has zero length", v54);

          goto LABEL_52;
        }
      }
    }

    ++v8;
  }

  while (v8 < objc_msgSend_count(v3, v13, v14));
  if ((v7 & 1) == 0)
  {
LABEL_49:
    v53 = 0;
    goto LABEL_54;
  }

  v11 = objc_msgSend_set(MEMORY[0x1E695DFA8], v6, v15);
  v18 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v16, v17);
  if (!objc_msgSend_count(v3, v19, v20))
  {
LABEL_48:

    v53 = 0;
    goto LABEL_53;
  }

  v22 = 0;
  v57 = v18;
  while (1)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v3, v21, v22);
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v24 = CKProcessIndexedArrayKey(v23, &v59, &v62, &v61);
    v25 = v59;
    v26 = v25;
    if (v24)
    {
      v53 = v24;
      goto LABEL_61;
    }

    v27 = v25 ? v25 : v23;
    v28 = v27;

    if (!v26)
    {
      break;
    }

    if (objc_msgSend_containsObject_(v11, v29, v26))
    {
      goto LABEL_60;
    }

    v31 = objc_msgSend_objectForKey_(v18, v30, v26);

    if (!v31)
    {
      v34 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v32, v33);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v35, v34, v26);
    }

    v36 = objc_msgSend_objectForKeyedSubscript_(v18, v32, v26);
    v38 = v36;
    v39 = 2 * v62;
    if (v62 < 0)
    {
      if (v61 >= ~v62)
      {
        v45 = ~v62;
      }

      else
      {
        v45 = v61;
      }

      v46 = v61 + v62;
      if (v61 + v62 < 0 != __OFADD__(v61, v62))
      {
        v46 = -1;
      }

      v47 = v46 + 1;
      v48 = v39 ^ 0x8000000000000000;
      if (v45 < 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2 * v45;
      }

      if (v45 >= 1)
      {
        v41 = 2 * v62 - 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v41 = v48;
      }

      v42 = v47 != 0;
      v58 = 2 * v47;
    }

    else
    {
      v58 = 0;
      if (v61)
      {
        v40 = 2 * v61 - 1;
      }

      else
      {
        v40 = 1;
      }

      if (v61)
      {
        v41 = v39 | 1;
      }

      else
      {
        v41 = 2 * v62;
      }

      v42 = 0;
    }

    if (objc_msgSend_intersectsIndexesInRange_(v36, v37, v41, v40))
    {
LABEL_58:
      v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v49, @"CKErrorDomain", 12, @"Indexed list key (%@) overlaps with existing indexed list key", v23);

      v18 = v57;
      goto LABEL_61;
    }

    objc_msgSend_addIndexesInRange_(v38, v49, v41, v40);
    if (v42)
    {
      if (objc_msgSend_intersectsIndexesInRange_(v38, v50, 0, v58))
      {
        goto LABEL_58;
      }

      objc_msgSend_addIndexesInRange_(v38, v49, 0, v58);
    }

    v18 = v57;
LABEL_47:

    if (++v22 >= objc_msgSend_count(v3, v51, v52))
    {
      goto LABEL_48;
    }
  }

  v43 = objc_msgSend_objectForKey_(v18, v29, v23);
  if (!v43)
  {
    objc_msgSend_addObject_(v11, v44, v23);
    v26 = v23;
    goto LABEL_47;
  }

LABEL_60:
  v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v30, @"CKErrorDomain", 12, @"Cannot mix indexed and non-indexed list keys (%@)", v23);
  v26 = v28;
LABEL_61:

LABEL_53:
LABEL_54:

  return v53;
}

void sub_18857F044(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v10 = objc_msgSend_recordID(v7, v8, v9);

      if (v10)
      {
LABEL_20:

        goto LABEL_21;
      }

      v13 = objc_msgSend_recordID(a1, v11, v12);
      objc_msgSend_setRecordID_(v7, v14, v13);
LABEL_5:

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v17 = objc_msgSend_valueID(v7, v15, v16);

      if (v17)
      {
        goto LABEL_20;
      }

      v18 = [CKMergeableValueID alloc];
      v21 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v19, v20);
      v24 = objc_msgSend_UUIDString(v21, v22, v23);
      v27 = objc_msgSend_recordID(a1, v25, v26);
      isEncrypted = objc_msgSend_isEncrypted(a1, v28, v29);
      v13 = objc_msgSend_initWithName_recordID_key_encrypted_(v18, v31, v24, v27, v6, isEncrypted);

      objc_msgSend_setValueID_(v7, v32, v13);
      objc_msgSend_setIsValueIDKnownToServer_(v7, v33, 0);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v34 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v13;
        _os_log_impl(&dword_1883EA000, v34, OS_LOG_TYPE_INFO, "Assigning new mergeable value ID %@", buf, 0xCu);
      }

      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v7 = v5;
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v35, &v41, v45, 16);
      if (v36)
      {
        v37 = v36;
        v38 = *v42;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v42 != v38)
            {
              objc_enumerationMutation(v7);
            }

            sub_18857F044(a1, *(*(&v41 + 1) + 8 * i), v6);
          }

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v40, &v41, v45, 16);
        }

        while (v37);
      }

      goto LABEL_20;
    }
  }

LABEL_21:
}

uint64_t sub_18857FB98(uint64_t a1)
{
  v2 = 0;
  (*(*(a1 + 32) + 16))();
  return v2;
}

CKEncryptedData *sub_18858078C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKEncryptedData alloc];
  v6 = objc_msgSend_initWithValue_(v4, v5, v3);

  sub_1885807FC(*(a1 + 32), v6, *(a1 + 40));

  return v6;
}

void sub_1885807FC(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_data(v15, v5, v6);
    v11 = objc_msgSend_length(v8, v9, v10);

    if (v11 >= 0x6400001)
    {
      v12 = [CKException alloc];
      v14 = objc_msgSend_initWithName_format_(v12, v13, *MEMORY[0x1E695D940], @"Plaintext is too large in size for key %@", v7);
      objc_exception_throw(v14);
    }
  }
}

void sub_188581EE8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v5 = objc_msgSend_deltasToSave(v17, v3, v4);
  v8 = objc_msgSend_allObjects(v5, v6, v7);
  v11 = objc_msgSend_pendingReplacementRequests(v17, v9, v10);
  v14 = objc_msgSend_copy(v11, v12, v13);
  objc_msgSend_didSaveDeltas_replacementRequests_(v17, v15, v8, v14);

  objc_msgSend_setIsValueIDKnownToServer_(v17, v16, 1);
}

void sub_188582358(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  if (objc_msgSend_count(*(a1 + 32), v5, v6) > a3)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v7, a3);
    objc_msgSend_copyServerFieldsFromStreamingAsset_(v8, v9, v10);
  }
}

char *sub_188583D6C(char *a1, void *a2, void *a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (qword_1ED4B6188 != -1)
  {
    dispatch_once(&qword_1ED4B6188, &unk_1EFA2ED48);
  }

  v9 = objc_msgSend_length(v8, v6, v7);
  v10 = v9 + 2;
  if (v9 >= 0x80)
  {
    do
    {
      ++v10;
      v11 = v9 >> 14;
      v9 >>= 7;
    }

    while (v11);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_msgSend_length(v5, v12, v13);
    v15 = v14 + 2;
    if (v14 >= 0x80)
    {
      do
      {
        ++v15;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }

LABEL_9:
    v10 += v15;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = objc_msgSend_length(v5, v17, v18);
    v15 = v19 + 2;
    if (v19 >= 0x80)
    {
      do
      {
        ++v15;
        v20 = v19 >> 14;
        v19 >>= 7;
      }

      while (v20);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = qword_1ED4B6180 + v10;
    v24 = objc_msgSend_recordID(a1, v21, v22);
    v27 = objc_msgSend_size(v24, v25, v26);
    v28 = v27 + 2;
    if (v27 >= 0x80)
    {
      do
      {
        ++v28;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }

    v10 = v23 + v28;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 += 92;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v39 = v5;
            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v119, v125, 16);
            if (v41)
            {
              v42 = v41;
              v43 = *v120;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v120 != v43)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v10 += sub_188583D6C(a1, *(*(&v119 + 1) + 8 * i), v8);
                }

                v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v45, &v119, v125, 16);
              }

              while (v42);
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v48 = objc_msgSend_data(v5, v46, v47);
              v51 = objc_msgSend_length(v48, v49, v50);
              v52 = v51 + 2;
              if (v51 >= 0x80)
              {
                do
                {
                  ++v52;
                  v53 = v51 >> 14;
                  v51 >>= 7;
                }

                while (v53);
              }

              v10 += v52 + 26;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v10 += 3;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v56 = objc_msgSend_sectionCount(v5, v54, v55);
                  v57 = 3;
                  if (v56)
                  {
                    v57 = v56;
                  }

                  v10 += v57 * qword_1ED4B6180;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v58 = v5;
                    v61 = objc_msgSend_deltasToSave(v58, v59, v60);
                    v64 = objc_msgSend_allObjects(v61, v62, v63);
                    v67 = objc_msgSend_mutableCopy(v64, v65, v66);
                    v68 = v67;
                    if (v67)
                    {
                      v69 = v67;
                    }

                    else
                    {
                      v69 = objc_opt_new();
                    }

                    v70 = v69;

                    v117 = 0u;
                    v118 = 0u;
                    v115 = 0u;
                    v116 = 0u;
                    v109 = v58;
                    v73 = objc_msgSend_pendingReplacementRequests(v58, v71, v72);
                    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v115, v124, 16);
                    if (v75)
                    {
                      v78 = v75;
                      v79 = *v116;
                      do
                      {
                        for (j = 0; j != v78; ++j)
                        {
                          if (*v116 != v79)
                          {
                            objc_enumerationMutation(v73);
                          }

                          v81 = objc_msgSend_replacementDeltas(*(*(&v115 + 1) + 8 * j), v76, v77);
                          objc_msgSend_addObjectsFromArray_(v70, v82, v81);
                        }

                        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v115, v124, 16);
                      }

                      while (v78);
                    }

                    v113 = 0u;
                    v114 = 0u;
                    v111 = 0u;
                    v112 = 0u;
                    v83 = v70;
                    v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v111, v123, 16);
                    if (v85)
                    {
                      v88 = v85;
                      v89 = *v112;
                      do
                      {
                        for (k = 0; k != v88; ++k)
                        {
                          if (*v112 != v89)
                          {
                            objc_enumerationMutation(v83);
                          }

                          v91 = *(*(&v111 + 1) + 8 * k);
                          v92 = objc_msgSend_asset(v91, v86, v87);

                          v94 = qword_1ED4B6180;
                          if (!v92)
                          {
                            v94 = 0;
                          }

                          v95 = v94 + v10;
                          v110 = 0;
                          v96 = objc_msgSend_protobufSize_error_(v91, v93, &v110, 0);
                          v97 = v110;
                          if (!v96)
                          {
                            v97 = 0;
                          }

                          v10 = v95 + v97;
                        }

                        v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v86, &v111, v123, 16);
                      }

                      while (v88);
                    }

                    v100 = objc_msgSend_valueID(v109, v98, v99);
                    v103 = objc_msgSend_name(v100, v101, v102);
                    v106 = objc_msgSend_length(v103, v104, v105);
                    v107 = v106 + 2;
                    if (v106 >= 0x80)
                    {
                      do
                      {
                        ++v107;
                        v108 = v106 >> 14;
                        v106 >>= 7;
                      }

                      while (v108);
                    }

                    v10 += v107 + 3;
                  }
                }
              }
            }
          }
        }

        goto LABEL_25;
      }

LABEL_11:
      v10 += 10;
      goto LABEL_25;
    }

    v24 = objc_msgSend_recordID(v5, v30, v31);
    v34 = objc_msgSend_size(v24, v32, v33);
    v35 = v34 + 2;
    if (v34 >= 0x80)
    {
      do
      {
        ++v35;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
    }

    v10 += v35;
  }

LABEL_25:
  a1 = (v10 + 2);
  if (v10 >= 0x80)
  {
    do
    {
      ++a1;
      v37 = v10 >> 14;
      v10 >>= 7;
    }

    while (v37);
  }

LABEL_27:

  return a1;
}

void *sub_188585524(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_valueForKey_(*(a1 + 32), a2, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_18858560C(uint64_t a1, const char *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_expressionForBlock_arguments_(MEMORY[0x1E696ABC8], a2, &unk_1EFA2EDC8, 0);
  v10[0] = v2;
  v4 = objc_msgSend_expressionForConstantValue_(MEMORY[0x1E696ABC8], v3, @"cdl");
  v10[1] = v4;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v10, 2);

  v8 = objc_msgSend_expressionForFunction_arguments_(MEMORY[0x1E696ABC8], v7, @"tokenize:using:", v6);
  v9 = qword_1ED4B61A0;
  qword_1ED4B61A0 = v8;
}

uint64_t sub_1885856FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v4, v5);
  }

  else
  {
    hasAssetBackedDeltas = 0;
  }

  return hasAssetBackedDeltas;
}

uint64_t sub_188585944(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_msgSend_firstObject(v1, v3, v4);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

uint64_t sub_188585B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v6, v7);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

BOOL sub_188588380(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_deltasToSave(v3, v4, v5);
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_pendingReplacementRequests(v3, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14) != 0;
  }

  return v11;
}

void sub_1885884EC(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_deltasToSave(v4, v5, v6);
  v10 = objc_msgSend_allObjects(v7, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v16 = objc_msgSend_pendingReplacementRequests(v4, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v60, v69, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v61;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v61 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = objc_msgSend_replacementDeltas(*(*(&v60 + 1) + 8 * i), v19, v20);
        objc_msgSend_addObjectsFromArray_(v13, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v60, v69, 16);
    }

    while (v21);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v13;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v56, v68, 16);
  if (v27)
  {
    v31 = v27;
    v32 = *v57;
    *&v30 = 138412546;
    v54 = v30;
    do
    {
      v33 = 0;
      do
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v56 + 1) + 8 * v33);
        v35 = objc_msgSend_valueID(v34, v28, v29, v54);
        if (!v35 || (v38 = v35, objc_msgSend_valueID(v34, v36, v37), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_valueID(v4, v40, v41), v42 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v39, v43, v42), v42, v39, v38, (isEqual & 1) == 0))
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v45 = ck_log_facility_distributed_sync;
          if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
          {
            v48 = v45;
            v51 = objc_msgSend_valueID(v4, v49, v50);
            *buf = v54;
            v65 = v51;
            v66 = 2112;
            v67 = v34;
            _os_log_impl(&dword_1883EA000, v48, OS_LOG_TYPE_INFO, "Delta was generated with a placeholder (or incorrect) value ID. Assigning value ID %@ to delta: %@", buf, 0x16u);
          }

          v52 = objc_msgSend_valueID(v4, v46, v47);
          objc_msgSend_setValueID_(v34, v53, v52);
        }

        if ((*(a1 + 32) & 1) == 0)
        {
          objc_msgSend_unpopulateAsset(v34, v28, v29);
        }

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v56, v68, 16);
    }

    while (v31);
  }
}

void sub_1885889C4(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ++*(*(a1[4] + 8) + 24);
  v7 = objc_msgSend_unmergedDeltas(v4, v5, v6);
  *(*(a1[5] + 8) + 24) += objc_msgSend_count(v7, v8, v9);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = objc_msgSend_unmergedDeltas(v4, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v25, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = objc_msgSend_asset(*(*(&v21 + 1) + 8 * v19), v15, v16);

        if (v20)
        {
          ++*(*(a1[6] + 8) + 24);
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v21, v25, 16);
    }

    while (v17);
  }
}

void sub_188588D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188588D94(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a4 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

__CFString *CKStringFromCapabilities(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v4 = v2;
    if ((v1 & 2) != 0)
    {
      objc_msgSend_addObject_(v2, v3, @"Atomic");
      if ((v1 & 1) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v1 & 1) == 0)
    {
      goto LABEL_4;
    }

    objc_msgSend_addObject_(v4, v3, @"Sync");
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v5 = MEMORY[0x1E696AEC0];
        v6 = objc_msgSend_componentsJoinedByString_(v4, v3, @",");
        v8 = objc_msgSend_stringWithFormat_(v5, v7, @"(%@)", v6);

        goto LABEL_9;
      }

LABEL_6:
      objc_msgSend_addObject_(v4, v3, @"Zone-Wide Sharing");
      goto LABEL_7;
    }

LABEL_14:
    objc_msgSend_addObject_(v4, v3, @"Share");
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = @"(none)";
LABEL_9:

  return v8;
}

id sub_188589C18(id a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = CKRecordZone;
    v6 = objc_msgSendSuper2(&v22, sel_init);
    a1 = v6;
    if (v6)
    {
      v6[8] = a3;
      v9 = objc_msgSend_copy(v5, v7, v8);
      v10 = *(a1 + 4);
      *(a1 + 4) = v9;

      *(a1 + 13) = 1;
      *(a1 + 11) = 0;
      v11 = [CKRequiredFeatureSet alloc];
      v12 = MEMORY[0x1E695E0F0];
      v14 = objc_msgSend_initWithZoneFeatures_recordFeatures_fieldFeatures_(v11, v13, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
      v15 = *(a1 + 28);
      *(a1 + 28) = v14;

      v16 = [CKRequiredFeatureSet alloc];
      v18 = objc_msgSend_initWithZoneFeatures_recordFeatures_fieldFeatures_(v16, v17, v12, v12, v12);
      v19 = *(a1 + 22);
      *(a1 + 22) = v18;

      v20 = *(a1 + 5);
      *(a1 + 5) = 0;

      *(a1 + 8) = 0;
      *(a1 + 7) = 0;
    }
  }

  return a1;
}

void sub_188589D64()
{
  v0 = [CKRecordZoneID alloc];
  v4 = objc_msgSend_initWithZoneName_ownerName_(v0, v1, @"_systemZone", @"__defaultOwner__");
  v2 = sub_188589C18([CKRecordZone alloc], v4, 0);
  v3 = qword_1ED4B61D0;
  qword_1ED4B61D0 = v2;
}

uint64_t sub_18858BD54(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x1E696AD18], a2, a3);
  v4 = qword_1ED4B61E0;
  qword_1ED4B61E0 = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

__CFString *CKStringFromShareParticipantVisibility(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BE360[a1];
  }
}

__CFString *CKStringFromShareParticipantSelfRemovalBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BE380[a1];
  }
}

uint64_t sub_18858F3A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_participantID(a2, a2, a3);
  LODWORD(v3) = objc_msgSend_containsObject_(v3, v5, v4);

  return v3 ^ 1;
}

void sub_18858FCFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_18858FD24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Error fetching share participant: %@", &v16, 0xCu);
    }
  }

  else if (v8)
  {
    objc_msgSend_setIsApprovedRequester_(v8, v9, 1);
    objc_msgSend_setPermission_(v8, v12, *(a1 + 40));
    objc_msgSend_setRole_(v8, v13, *(a1 + 48));
    v14 = *(a1 + 32);
    objc_sync_enter(v14);
    objc_msgSend_addObject_(*(a1 + 32), v15, v8);
    objc_sync_exit(v14);
  }
}

void sub_18858FEA8(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_error_impl(&dword_1883EA000, v5, OS_LOG_TYPE_ERROR, "Error fetching share participants: %@", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = *(a1 + 32);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_addParticipant_(WeakRetained, v10, *(*(&v18 + 1) + 8 * i), v18);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v18, v22, 16);
      }

      while (v11);
    }

    objc_sync_exit(v7);
    v14 = WeakRetained;
    objc_sync_enter(v14);
    objc_msgSend_removeObjectsInArray_(v14[54], v15, *(a1 + 40));
    objc_msgSend_addObjectsFromArray_(v14[55], v16, *(a1 + 40));
    objc_sync_exit(v14);

    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, 0);
    }
  }
}

id *sub_188590688(id *result, const char *a2)
{
  if (a2)
  {
    return objc_msgSend_addObject_(result[4], a2, a2);
  }

  return result;
}

uint64_t sub_188590FD0(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!*(a1 + 32) || (v6 = *(a1 + 40), v31[0] = *(a1 + 32), v7 = 1, objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v3, v31, 1), v8 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(v6, v9, v5, v8), v8, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = objc_msgSend_participants(*(a1 + 40), v3, v4, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v30, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v26;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if (objc_msgSend_role(v19, v14, v15) == 1)
        {
          v20 = *(a1 + 40);
          v29 = v19;
          v7 = 1;
          v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, &v29, 1);
          v23 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(v20, v22, v5, v21);

          if (v23 != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v30, 16);
          if (v16)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v7 = 0;
    }
  }

  return v7;
}

void sub_1885922F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188592330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_188592444;
  v18 = &unk_1E70BE268;
  v5 = v3;
  v20 = v5;
  v19 = *(a1 + 32);
  v7 = objc_msgSend_CKFilter_(v4, v6, &v15);
  if (objc_msgSend_count(v7, v8, v9, v15, v16, v17, v18) == 1)
  {
    v12 = objc_msgSend_lastObject(v7, v10, v11);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (objc_msgSend_count(v7, v10, v11))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }
}

uint64_t sub_188592468(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_participantID(v4, v6, v7);
  v13 = objc_msgSend_participantID(v5, v9, v10);
  if (v8 == v13)
  {
    isEqualToString = 1;
  }

  else
  {
    v14 = objc_msgSend_participantID(v4, v11, v12);
    v17 = objc_msgSend_participantID(v5, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v18, v17);
  }

  return isEqualToString;
}

void *sub_18859252C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_userIdentity(v4, v6, v7);
  isEqual = objc_msgSend_publicSharingKey(v8, v9, v10);
  if (isEqual)
  {
    v14 = objc_msgSend_userIdentity(v5, v11, v12);
    v17 = objc_msgSend_publicSharingKey(v14, v15, v16);

    if (!v17)
    {
      isEqual = 0;
      goto LABEL_6;
    }

    v8 = objc_msgSend_userIdentity(v4, v18, v19);
    v22 = objc_msgSend_publicSharingKey(v8, v20, v21);
    v25 = objc_msgSend_userIdentity(v5, v23, v24);
    v28 = objc_msgSend_publicSharingKey(v25, v26, v27);
    isEqual = objc_msgSend_isEqual_(v22, v29, v28);
  }

LABEL_6:
  return isEqual;
}

uint64_t sub_188592630(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_userIdentity(a2, v5, v6);
  v10 = objc_msgSend_userRecordID(v7, v8, v9);
  v13 = objc_msgSend_userIdentity(v4, v11, v12);

  v16 = objc_msgSend_userRecordID(v13, v14, v15);
  isEqual = objc_msgSend_isEqual_(v10, v17, v16);

  return isEqual;
}

uint64_t sub_188593170(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_addedParticipantIDs(v2, v4, v5);
  v9 = objc_msgSend_participantID(v3, v7, v8);

  v11 = objc_msgSend_containsObject_(v6, v10, v9);
  return v11;
}

uint64_t sub_1885932B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_removedParticipantIDs(v2, v4, v5);
  v9 = objc_msgSend_participantID(v3, v7, v8);

  v11 = objc_msgSend_containsObject_(v6, v10, v9);
  return v11;
}

void sub_1885941A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_188594490(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (*(a1 + 40))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v7 = a3;
    objc_msgSend_setPermission_(v7, v5, v4);
    objc_msgSend_addParticipant_(*(a1 + 32), v6, v7);
  }
}

void sub_188594500(id *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching share participants UI, failed: %@", buf, 0xCu);
    }

    v6 = a1[6];
    if (v6)
    {
      v6[2](v6, a1[4], v4);
    }
  }

  else
  {
    objc_msgSend__setPublicPermissionNoSideEffects_(a1[4], v3, 1);
    v7 = [CKModifyRecordsOperation alloc];
    v26 = a1[4];
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, &v26, 1);
    v11 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v7, v10, v9, 0);

    v14 = objc_msgSend_resolvedConfiguration(v11, v12, v13);
    objc_msgSend_setRequestOriginator_(v14, v15, 5);

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_188594794;
    v24[3] = &unk_1E70BD138;
    v16 = a1[6];
    v24[4] = a1[4];
    v25 = v16;
    objc_msgSend_setModifyRecordsCompletionBlock_(v11, v17, v24);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v23 = a1[4];
      *buf = 138412290;
      v28 = v23;
      _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Saving share to server for UI: %@", buf, 0xCu);
    }

    v21 = objc_msgSend_privateCloudDatabase(a1[5], v19, v20);
    objc_msgSend_addOperation_(v21, v22, v11);
  }
}

uint64_t sub_188594794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a4);
  }

  return result;
}

__CFString *CKStringFromParticipantPermission(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70BE4A0[a1 - 1];
  }
}

__CFString *CKStringFromParticipantRole(unint64_t a1, const char *a2)
{
  if (a1 >= 5)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"unknown %ld", a1);
  }

  else
  {
    v3 = off_1E70BE478[a1];
  }

  return v3;
}

__CFString *CKStringFromParticipantAcceptanceStatus(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Removed";
  }

  else
  {
    return off_1E70BE4B8[a1];
  }
}

__CFString *CKStringFromParticipantInvitationTokenStatus(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BE4E0[a1 - 1];
  }
}

void sub_18859A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18859A764(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EA919B58;
  v10 = qword_1EA919B58;
  if (!qword_1EA919B58)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_18859B2F4;
    v6[3] = &unk_1E70BBE90;
    v6[4] = &v7;
    sub_18859B2F4(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_18859A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_18859A844(void *a1, const char *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v3, a2, a2, v2, &obj);
  objc_storeStrong((v4 + 40), obj);

  return v5;
}

void sub_18859B2F4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_18859B3BC(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContact");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1EA919B58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNContactClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKShareParticipant.m", 26, @"Unable to find class %s", "CNContact");

    __break(1u);
  }
}

void *sub_18859B3BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  if (!qword_1EA919B60)
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = sub_18859B510;
    v9[4] = &unk_1E70BC418;
    v9[5] = v9;
    v10 = xmmword_1E70BE460;
    v11 = 0;
    qword_1EA919B60 = _sl_dlopen();
  }

  v3 = qword_1EA919B60;
  if (!qword_1EA919B60)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, "void *ContactsLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v8, v7, @"CKShareParticipant.m", 25, @"%s", v9[0]);

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

uint64_t sub_18859B510(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EA919B60 = result;
  return result;
}

void *sub_18859B584(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18859B3BC(a1, a2, a3);
  result = dlsym(v4, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B61F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18859B5D4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_18859B3BC(a1, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4B61F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "Class getCNPhoneNumberClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKShareParticipant.m", 27, @"Unable to find class %s", "CNPhoneNumber");

    __break(1u);
  }
}

void *sub_18859B69C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18859B3BC(a1, a2, a3);
  result = dlsym(v4, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6200 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18859E5AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 8) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18859E730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18859E748(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_18859E878(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 16) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_18859E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18859EA14(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_1885A0128(uint64_t a1)
{
  if (byte_1EA90C538)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = NSClassFromString(&cfstr_Ckdthrottleman.isa);
  }

  v2 = [v1 alloc];
  inited = objc_msgSend_initInternal(v2, v3, v4);
  v6 = qword_1ED4B6208;
  qword_1ED4B6208 = inited;

  return MEMORY[0x1EEE66BB8](inited, v6);
}

void sub_1885A067C(id *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_msgSend_mutableCopy(a1[1], v3, v4);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = v5;
    obj = v5;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v34, v40, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        v11 = 0;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v13 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v15 = v13;
            v18 = objc_msgSend_throttleID(v12, v16, v17);
            v19 = v18;
            v20 = @"<throttleID unset>";
            if (v18)
            {
              v20 = v18;
            }

            *buf = 138543362;
            v39 = v20;
            _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "removing throttle: %{public}@", buf, 0xCu);
          }

          objc_msgSend_throttleWillBeRemoved_(a1, v14, v12);
          objc_msgSend_removeObject_(v6, v21, v12);
          ++v11;
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v34, v40, 16);
      }

      while (v9);
    }

    if (objc_msgSend_count(v6, v23, v24))
    {
      v27 = objc_msgSend_copy(v6, v25, v26);
      v28 = a1[1];
      a1[1] = v27;
    }

    else
    {
      v29 = a1[1];
      a1[1] = 0;

      objc_msgSend_throttleListBecameEmpty(a1, v30, v31);
    }

    v5 = v32;
  }
}

CKUserIdentityLookupInfo *sub_1885A2A7C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKUserIdentityLookupInfo alloc];
  v5 = objc_msgSend_initWithEmailAddress_(v3, v4, v2);

  return v5;
}

CKUserIdentityLookupInfo *sub_1885A2AE4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKUserIdentityLookupInfo alloc];
  v5 = objc_msgSend_initWithUserRecordID_(v3, v4, v2);

  return v5;
}

CKUserIdentityLookupInfo *sub_1885A2B4C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKUserIdentityLookupInfo alloc];
  v5 = objc_msgSend_initWithPhoneNumber_(v3, v4, v2);

  return v5;
}

void sub_1885A3674(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v32 = [CKException alloc];
    v34 = objc_msgSend_initWithName_format_(v32, v33, *MEMORY[0x1E695D940], @"Container cannot be nil");
    objc_exception_throw(v34);
  }

  v13 = v10;
  if (!v9)
  {
    v9 = objc_msgSend_standardOptions(CKAllowedSharingOptions, v11, v12);
  }

  v14 = objc_msgSend_containerID(v8, v11, v12);
  v17 = objc_msgSend_specialContainerType(v14, v15, v16);
  if (v17 <= 0x19 && ((1 << v17) & 0x2200010) != 0)
  {

    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v9, v18, 1);
  }

  else
  {
  }

  v19 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(v8);
  v20 = objc_opt_class();
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1885A391C;
  v42[3] = &unk_1E70BE5D0;
  v21 = v9;
  v43 = v21;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v22, v20, 0, v42);
  v23 = objc_opt_class();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1885A3950;
  v40[3] = &unk_1E70BE5D0;
  v24 = v19;
  v41 = v24;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v25, v23, 0, v40);
  v26 = objc_opt_class();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1885A3984;
  v35[3] = &unk_1E70BE620;
  v36 = v8;
  v37 = v24;
  v38 = v21;
  v39 = v13;
  v27 = v21;
  v28 = v24;
  v29 = v8;
  v30 = v13;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v31, v26, 0, v35);
}

uint64_t sub_1885A3984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1885A3A74;
  v8[3] = &unk_1E70BE5F8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v8);

  return 0;
}

void sub_1885A3A74(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11 && a1[4])
  {
    v6 = [CKPreSharingContext alloc];
    v8 = objc_msgSend_initWithShare_containerSetupInfo_allowedOptions_(v6, v7, v11, a1[5], a1[6]);
    v9 = *(a1[7] + 16);
  }

  else
  {
    v10 = a1[7];
    v8 = CKXPCSuitableError(v5);
    v9 = *(v10 + 16);
  }

  v9();
}

void sub_1885A3B44(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || !v9)
  {
    v34 = [CKException alloc];
    v36 = objc_msgSend_initWithName_format_(v34, v35, *MEMORY[0x1E695D940], @"Non-nil share and container are required");
    objc_exception_throw(v36);
  }

  v13 = v10;
  if (!v10)
  {
    v13 = objc_msgSend_standardOptions(CKAllowedSharingOptions, v11, v12);
  }

  v14 = objc_msgSend_containerID(v9, v11, v12);
  v17 = objc_msgSend_specialContainerType(v14, v15, v16);
  if (v17 <= 0x19 && ((1 << v17) & 0x2200010) != 0)
  {

    objc_msgSend_setSupportAllowingAddedParticipantsToInviteOthers_(v13, v18, 1);
  }

  else
  {
  }

  v19 = objc_opt_class();
  v21 = objc_msgSend_resolvedOptionsFromOptions_forExistingShare_(v19, v20, v13, v8);

  v22 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(v9);
  v23 = objc_opt_class();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1885A3E00;
  v43[3] = &unk_1E70BE5D0;
  v24 = v21;
  v44 = v24;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v25, v23, 0, v43);
  v26 = objc_opt_class();
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1885A3E34;
  v41[3] = &unk_1E70BE5D0;
  v27 = v22;
  v42 = v27;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v28, v26, 0, v41);
  v29 = objc_opt_class();
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1885A3E68;
  v37[3] = &unk_1E70BE648;
  v38 = v8;
  v39 = v27;
  v40 = v24;
  v30 = v24;
  v31 = v27;
  v32 = v8;
  objc_msgSend_registerObjectOfClass_visibility_loadHandler_(a1, v33, v29, 0, v37);
}

uint64_t sub_1885A3E68(void *a1, void *a2)
{
  v3 = a2;
  v4 = [CKPostSharingContext alloc];
  v6 = objc_msgSend_initWithShare_containerSetupInfo_allowedOptions_(v4, v5, a1[4], a1[5], a1[6]);
  v3[2](v3, v6, 0);

  return 0;
}

uint64_t CKCodeProto2AnyReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKCodeProto2Any__typeUrl;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKCodeProto2Any__value;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKCodeProto2ProtectedEnvelopeReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 2;
        v54 = objc_alloc_init(CKCodeProto2Any);
        objc_storeStrong((a1 + 24), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKCodeProto2AnyReadFrom(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
        *(a1 + 32) |= 1u;
        *(a1 + 8) = 1;
        v52 = PBReaderReadData();
        v53 = *(a1 + 16);
        *(a1 + 16) = v52;
      }

      else if (v32)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = 0;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v34 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v34 >= objc_msgSend_position(a2, v35, v36) && (v39 = objc_msgSend_position(a2, v37, v38) + 1, v39 <= objc_msgSend_length(a2, v40, v41)))
          {
            v42 = objc_msgSend_data(a2, v37, v38);
            v45 = objc_msgSend_position(a2, v43, v44);
            objc_msgSend_getBytes_range_(v42, v46, v60, v45, 1);

            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_setPosition_(a2, v50, v49 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v37, v38);
          }

          if ((SLOBYTE(v60[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v33++ > 8)
          {
            goto LABEL_36;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_36:
      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKCodeRecordTransportReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v59 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v59, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v59 & 0x7F) << v10;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 1)
      {
        if (v32 == 2)
        {
          objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
          *(a1 + 40) |= 1u;
          *(a1 + 8) = 2;
          v33 = PBReaderReadData();
          v34 = 32;
        }

        else
        {
          if (v32 != 3)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_37;
          }

          v33 = PBReaderReadData();
          v34 = 16;
        }
      }

      else
      {
        if (!v32)
        {
          v36 = 0;
          while (1)
          {
            v60 = 0;
            v37 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v37 >= objc_msgSend_position(a2, v38, v39) && (v42 = objc_msgSend_position(a2, v40, v41) + 1, v42 <= objc_msgSend_length(a2, v43, v44)))
            {
              v45 = objc_msgSend_data(a2, v40, v41);
              v48 = objc_msgSend_position(a2, v46, v47);
              objc_msgSend_getBytes_range_(v45, v49, &v60, v48, 1);

              v52 = objc_msgSend_position(a2, v50, v51);
              objc_msgSend_setPosition_(a2, v53, v52 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v40, v41);
            }

            if ((v60 & 0x80000000) == 0)
            {
              break;
            }

            if (v36++ > 8)
            {
              goto LABEL_37;
            }
          }

          objc_msgSend_hasError(a2, v32, v9);
          goto LABEL_37;
        }

        if (v32 != 1)
        {
          goto LABEL_24;
        }

        objc_msgSend_clearOneofValuesForContents(a1, v32, v9);
        *(a1 + 40) |= 1u;
        *(a1 + 8) = 1;
        v33 = PBReaderReadData();
        v34 = 24;
      }

      v55 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_37:
      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void *sub_1885A63D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 520) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A65B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A65D0(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 520));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A6760(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 528) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A6944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A695C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 528));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A6AEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 536) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 536);
    *(v7 + 536) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A6CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A6CE8(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 536));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A6E78(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 544) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 544);
    *(v7 + 544) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A7074(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 544));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void *sub_1885A7260(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v5 + 552) != result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 552);
    *(v7 + 552) = v6;

    return MEMORY[0x1EEE66BB8](v6, v8);
  }

  return result;
}

void sub_1885A7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1885A745C(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 552));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

CKCodeRecordTransport *sub_1885A8234(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  objc_msgSend_setWireSerialization_(v6, v7, v5);

  if (objc_msgSend_count(*(a1 + 32), v8, v9) > a3)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v10, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setEncryptedMasterKey_(v6, v12, v11);
    }
  }

  return v6;
}

void sub_1885AA26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  os_activity_scope_leave((v20 - 64));
  _Unwind_Resume(a1);
}

void sub_1885AA298(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error getting proxy for global device identifier: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

uint64_t sub_1885AA394(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1885AA408;
  v3[3] = &unk_1E70BC770;
  v4 = *(a1 + 32);
  return objc_msgSend_globalDeviceIdentifierWithCompletionHandler_(a2, a2, v3);
}

void sub_1885AA408(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Error fetching global device identifier from daemon: %@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "Fetched global device identifier from daemon: %@", &v10, 0xCu);
    }
  }
}

void sub_1885AA68C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1885AA964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1885AA99C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Warn: Connection became invalid: %@", &v4, 0xCu);
    }

    objc_msgSend_setHasValidAdopterProcessScopedDaemonProxyCreator_(WeakRetained, v3, 0);
  }
}

void sub_1885AAA8C(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v12 = objc_msgSend_adopterProcessScopedDaemonProxyCreator(*(a1 + 32), v8, v9);
    if (v12 && (hasValidAdopterProcessScopedDaemonProxyCreator = objc_msgSend_hasValidAdopterProcessScopedDaemonProxyCreator(*(a1 + 32), v10, v11), v12, (hasValidAdopterProcessScopedDaemonProxyCreator & 1) != 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v5;
      v16 = "Ignoring superfluous adopter process scoped proxy for %@: %@";
    }

    else
    {
      objc_msgSend_setAdopterProcessScopedDaemonProxyCreator_(*(a1 + 32), v10, v5);
      objc_msgSend_setHasValidAdopterProcessScopedDaemonProxyCreator_(*(a1 + 32), v17, 1);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v18 = *(a1 + 32);
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v5;
      v16 = "Got an adopter process scoped proxy for %@: %@";
    }

    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, v16, &v21, 0x16u);
LABEL_13:
    objc_sync_exit(v7);

    goto LABEL_18;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v21 = 138412546;
    v22 = v20;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get adopter process scoped proxy for %@: %@", &v21, 0x16u);
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();
}