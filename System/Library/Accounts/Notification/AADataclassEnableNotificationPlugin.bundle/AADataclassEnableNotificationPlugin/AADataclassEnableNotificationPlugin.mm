id sub_29C8570F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_mutableCopy(a1, v5, v6);
  objc_msgSend_removeObject_(v7, v8, v4);

  v11 = objc_msgSend_copy(v7, v9, v10);

  return v11;
}

id sub_29C85715C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    sub_29C85C25C();
  }

  v5 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = sub_29C85726C;
  v21 = &unk_29F32A318;
  v22 = v10;
  v23 = v4;
  v11 = v10;
  v12 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v13, &v18);
  v16 = objc_msgSend_copy(v11, v14, v15, v18, v19, v20, v21);

  return v16;
}

void sub_29C85726C(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v4);
  }
}

id sub_29C8572EC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    sub_29C85C2D0();
  }

  v6 = objc_msgSend_indexOfObjectPassingTest_(a1, v4, v5);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(a1, v7, v6);
  }

  return v8;
}

id sub_29C857380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    sub_29C85C344();
  }

  v5 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = sub_29C857494;
  v21 = &unk_29F32A340;
  v22 = v10;
  v23 = v4;
  v11 = v4;
  v12 = v10;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v13, &v18);
  v16 = objc_msgSend_copy(v12, v14, v15, v18, v19, v20, v21);

  return v16;
}

void sub_29C857494(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = (*(*(a1 + 40) + 16))();
  objc_msgSend_addObject_(v1, v2, v3);
}

id sub_29C8574F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    sub_29C85C3B8();
  }

  v5 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v8 = objc_msgSend_count(a1, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = sub_29C857600;
  v21 = &unk_29F32A318;
  v22 = v10;
  v23 = v4;
  v11 = v10;
  v12 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v13, &v18);
  v16 = objc_msgSend_copy(v11, v14, v15, v18, v19, v20, v21);

  return v16;
}

uint64_t sub_29C857600(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    objc_msgSend_addObject_(*(a1 + 32), v2, v2);
  }

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_29C857668(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x29EDB8E50];
  v5 = a3;
  v6 = [v4 alloc];
  v8 = objc_msgSend_initWithArray_(v6, v7, a1);
  v9 = objc_alloc(MEMORY[0x29EDB8E50]);
  v11 = objc_msgSend_initWithArray_(v9, v10, v5);

  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v8, v12, v11);
  return isSubsetOfSet;
}

id sub_29C8576E8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(a1, a2, a3))
  {
    v5 = objc_msgSend_objectAtIndex_(a1, v4, 0);
    objc_msgSend_removeObjectAtIndex_(a1, v6, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_29C85774C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_lastObject(a1, a2, a3);
  objc_msgSend_removeLastObject(a1, v5, v6);

  return v4;
}

id sub_29C8577AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_mutableCopy(a1, v5, v6);
  objc_msgSend_removeObject_(v7, v8, v4);

  v11 = objc_msgSend_copy(v7, v9, v10);

  return v11;
}

id sub_29C857810(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_mutableCopy(a1, v5, v6);
  objc_msgSend_minusSet_(v7, v8, v4);

  v11 = objc_msgSend_copy(v7, v9, v10);

  return v11;
}

void sub_29C857D58(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_29C856000, v7, OS_LOG_TYPE_DEFAULT, "Successfully enabled mail dataclass for account %@", &v9, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C85C42C();
    }

    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_29C8582B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEnabledForDataclass_(*(a1 + 32), v4, v3))
  {
    canAutoEnableDataclass_forAccount = 0;
  }

  else
  {
    v8 = objc_msgSend_sharedManager(AADataclassManager, v5, v6);
    canAutoEnableDataclass_forAccount = objc_msgSend_canAutoEnableDataclass_forAccount_(v8, v9, v3, *(a1 + 32));
  }

  return canAutoEnableDataclass_forAccount;
}

void sub_29C85832C(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_29C856000, v9, OS_LOG_TYPE_DEFAULT, "Successfully enabled BYOE dataclass for account %@", buf, 0xCu);
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_29C85C4C8();
    }
  }

LABEL_8:
  v11 = objc_msgSend_mutableCopy(*(a1 + 40), v6, v7);
  objc_msgSend_removeObject_(v11, v12, *MEMORY[0x29EDB80C8]);
  if (objc_msgSend_count(v11, v13, v14))
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_29C85C530();
    }

    v18 = objc_msgSend_sharedManager(AADataclassManager, v16, v17);
    v19 = *(a1 + 32);
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = sub_29C8584FC;
    v21[3] = &unk_29F32A368;
    v22 = v19;
    objc_msgSend_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion_(v18, v20, v11, v22, v21);
  }
}

void sub_29C8584FC(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_29C856000, v7, OS_LOG_TYPE_DEFAULT, "Successfully enabled dataclasses for account %@", &v9, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C85C564();
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_29C8585F4(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_29C856000, v7, OS_LOG_TYPE_DEFAULT, "Successfully enabled dataclasses for account %@", &v9, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C85C564();
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_29C858C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C858C70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C858C88(void *a1, int a2, void *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C85C6B8();
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = a1[4];
    if (v9)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v5, @"Account save with dataclass action had success (%@) for account (%@) with dataclass actions: %@", v8, a1[5], v9);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v5, @"Account save without any dataclass action had success (%@) for account (%@)", v8, a1[5]);
    }
    v10 = ;
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_29C856000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
  }

  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_29C858EF8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_29C858F24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

uint64_t sub_29C8598F0()
{
  qword_2A1A10CD8 = objc_alloc_init(AADataclassManager);

  return MEMORY[0x2A1C71028]();
}

void sub_29C859A48()
{
  v19 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v0, @"com.apple.mobilesafari", *MEMORY[0x29EDB8088]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v1, @"com.apple.mobilecal", *MEMORY[0x29EDB80B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v2, @"com.apple.MobileAddressBook", *MEMORY[0x29EDB80C0]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v3, @"com.apple.freeform", *MEMORY[0x29EDB80E0]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v4, @"com.apple.Home", *MEMORY[0x29EDB80F0]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v5, @"com.apple.mobilemail", *MEMORY[0x29EDB8110]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v6, @"com.apple.news", *MEMORY[0x29EDB8130]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v7, @"com.apple.mobilenotes", *MEMORY[0x29EDB8138]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v8, @"com.apple.reminders", *MEMORY[0x29EDB8158]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v9, @"com.apple.stocks", *MEMORY[0x29EDB8178]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v10, @"com.apple.MobileSMS", *MEMORY[0x29EDB8120]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v11, @"com.apple.Health", *MEMORY[0x29EDB80E8]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v12, @"com.apple.DocumentsApp", *MEMORY[0x29EDB8180]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v13, @"com.apple.GenerativePlaygroundApp", *MEMORY[0x29EDB80F8]);
  objc_msgSend_setObject_forKeyedSubscript_(v19, v14, @"com.apple.journal", *MEMORY[0x29EDB8128]);
  v17 = objc_msgSend_copy(v19, v15, v16);
  v18 = qword_2A17951A8;
  qword_2A17951A8 = v17;
}

void sub_29C859DA0(uint64_t a1, const char *a2)
{
  v18[11] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDC5898];
  v3 = *MEMORY[0x29EDB8118];
  v17[0] = *MEMORY[0x29EDB8100];
  v17[1] = v3;
  v4 = *MEMORY[0x29EDC58D0];
  v18[0] = v2;
  v18[1] = v4;
  v5 = *MEMORY[0x29EDC58D8];
  v6 = *MEMORY[0x29EDB8168];
  v17[2] = *MEMORY[0x29EDB8160];
  v17[3] = v6;
  v7 = *MEMORY[0x29EDC5888];
  v18[2] = v5;
  v18[3] = v7;
  v8 = *MEMORY[0x29EDC5890];
  v9 = *MEMORY[0x29EDB80D0];
  v17[4] = *MEMORY[0x29EDB8080];
  v17[5] = v9;
  v10 = *MEMORY[0x29EDC58A0];
  v18[4] = v8;
  v18[5] = v10;
  v11 = *MEMORY[0x29EDC58A8];
  v12 = *MEMORY[0x29EDB80F0];
  v17[6] = *MEMORY[0x29EDB80E8];
  v17[7] = v12;
  v13 = *MEMORY[0x29EDC58B0];
  v18[6] = v11;
  v18[7] = v13;
  v14 = *MEMORY[0x29EDB8180];
  v17[8] = *MEMORY[0x29EDB8130];
  v17[9] = v14;
  v18[8] = *MEMORY[0x29EDC58C8];
  v18[9] = v2;
  v17[10] = *MEMORY[0x29EDB80F8];
  v18[10] = *MEMORY[0x29EDC58C0];
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], a2, v18, v17, 11);
  v16 = qword_2A1A10CE8;
  qword_2A1A10CE8 = v15;
}

void sub_29C85A310(uint64_t a1, const char *a2)
{
  v7[6] = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDB80C0];
  v7[0] = *MEMORY[0x29EDB80B0];
  v7[1] = v2;
  v3 = *MEMORY[0x29EDB80F0];
  v7[2] = *MEMORY[0x29EDB80E8];
  v7[3] = v3;
  v4 = *MEMORY[0x29EDB8180];
  v7[4] = *MEMORY[0x29EDB8158];
  v7[5] = v4;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v7, 6);
  v6 = qword_2A17951B8;
  qword_2A17951B8 = v5;
}

void sub_29C85ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C85ACE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C85ACF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AALogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29C85CDA8();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_29C856000, v6, OS_LOG_TYPE_DEFAULT, "Save without auto-enableable dataclasses successful completed.", v10, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_29C85AFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C85AFDC(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"dataclasses");
    v10 = objc_msgSend_objectForKeyedSubscript_(v5, v9, @"dataclassActions");
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_29C856000, v11, OS_LOG_TYPE_DEFAULT, "Filtered dataclasses: %@", &buf, 0xCu);
    }

    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_29C856000, v12, OS_LOG_TYPE_DEFAULT, "Filtered dataclass actions: %@", &buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      shouldVerifyAccountSave = objc_msgSend__shouldVerifyAccountSave(*(a1 + 32), v13, v14);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x3032000000;
      v37 = sub_29C85ACE0;
      v38 = sub_29C85ACF0;
      v39 = os_transaction_create();
      v27 = MEMORY[0x29EDCA5F8];
      v28 = 3221225472;
      v29 = sub_29C85B344;
      v30 = &unk_29F32A468;
      v18 = *(a1 + 40);
      v17 = a1 + 40;
      v31 = v18;
      v19 = v10;
      v32 = v19;
      v33 = *(v17 + 8);
      p_buf = &buf;
      v20 = MEMORY[0x29ED46520](&v27);
      objc_msgSend_saveAccount_onAccountStore_withDataclassActions_doVerify_completion_(WeakRetained[2], v21, *v17, WeakRetained[1], v19, shouldVerifyAccountSave, v20, v27, v28, v29, v30);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v23 = _AALogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_29C85CF6C(v23);
      }

      v24 = *(a1 + 48);
      v26 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x29EDB9FA0], v25, *MEMORY[0x29EDBE2F0], -8015, 0);
      (*(v24 + 16))(v24, 0, v26);
    }
  }

  else
  {
    v22 = _AALogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_29C85CFB0();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_29C85B324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C85B344(void *a1, int a2, void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = a1[4];
    v9 = a1[5];
    if (a2)
    {
      v7 = @"YES";
    }

    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_29C856000, v6, OS_LOG_TYPE_DEFAULT, "Account save with dataclass actions had success (%@) for account (%@) with dataclass actions: %@", &v13, 0x20u);
  }

  if (v5)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_29C85D018();
    }
  }

  (*(a1[6] + 16))();
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_29C85B7D0(id *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = objc_msgSend_count(v6, v9, v10);
    v12 = _AALogSystem();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 == 1)
    {
      if (v13)
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(v6, v14, 0);
        v31 = 134218242;
        v32 = objc_msgSend_type(v15, v16, v17);
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_29C856000, v12, OS_LOG_TYPE_DEFAULT, "Action %lu available for %@", &v31, 0x16u);
      }

      v20 = objc_msgSend_firstObject(v6, v18, v19);
      if (objc_msgSend_isDataclassActionSafeForAutoEnablement_(a1[4], v21, v20))
      {
        objc_msgSend_setObject_forKey_(a1[5], v22, v20, v5);
      }

      else
      {
        v25 = _ACLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v28 = objc_msgSend_type(v20, v26, v27);
          v31 = 138412546;
          v32 = v5;
          v33 = 2048;
          v34 = v28;
          _os_log_impl(&dword_29C856000, v25, OS_LOG_TYPE_DEFAULT, "Not enabling dataclass %@ as only action %lu is not safe for auto enablement.", &v31, 0x16u);
        }

        objc_msgSend_removeObject_(a1[6], v29, v5);
        objc_msgSend_setEnabled_forDataclass_(a1[7], v30, 0, v5);
      }
    }

    else
    {
      if (v13)
      {
        v31 = 138412290;
        v32 = v5;
        _os_log_impl(&dword_29C856000, v12, OS_LOG_TYPE_DEFAULT, "Unable to auto-enable dataclass %@ as enablement requires a user decision.", &v31, 0xCu);
      }

      objc_msgSend_removeObject_(a1[6], v23, v5);
      objc_msgSend_setEnabled_forDataclass_(a1[7], v24, 0, v5);
    }
  }
}

uint64_t sub_29C85BB0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!objc_msgSend_isProvisionedForDataclass_(*(a1 + 32), v4, v3) || (objc_msgSend_isEnabledForDataclass_(*(a1 + 32), v5, v3) & 1) != 0)
  {
    goto LABEL_6;
  }

  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_29C85D0E8();
  }

  if (objc_msgSend_containsObject_(*(a1 + 40), v7, v3))
  {
LABEL_6:
    canAutoEnableDataclass_forAccount = 0;
  }

  else
  {
    v12 = objc_msgSend_sharedManager(AADataclassManager, v8, v9);
    canAutoEnableDataclass_forAccount = objc_msgSend_canAutoEnableDataclass_forAccount_(v12, v13, v3, *(a1 + 32));
  }

  return canAutoEnableDataclass_forAccount;
}

void sub_29C85BD14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_29C85BEA4()
{
  v0 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v1, @"DisableBookmarksiCloudSetting", *MEMORY[0x29EDB8088]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v2, @"DisableFMMiCloudSetting", *MEMORY[0x29EDB80D0]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v3, @"DisableAddressBookiCloudSetting", *MEMORY[0x29EDB80C0]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v4, @"DisableCalendariCloudSetting", *MEMORY[0x29EDB80B0]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v5, @"DisableMailiCloudSetting", *MEMORY[0x29EDB8110]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v6, @"DisableNotesiCloudSetting", *MEMORY[0x29EDB8138]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v7, @"DisableRemindersiCloudSetting", *MEMORY[0x29EDB8158]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v8, @"DisableKeychainCloudSync", *MEMORY[0x29EDB8108]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v9, @"DisableCloudSync", *MEMORY[0x29EDB8180]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v10, @"DisablePhotosiCloudSetting", *MEMORY[0x29EDB8148]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v11, @"DisableFreeformiCloudSetting", *MEMORY[0x29EDB80E0]);
  objc_msgSend_setObject_forKeyedSubscript_(v0, v12, @"DisableImagePlaygroundiCloudSetting", *MEMORY[0x29EDB80F8]);
  v13 = qword_2A17951C8;
  qword_2A17951C8 = v0;
}

uint64_t sub_29C85C21C()
{
  qword_2A1A10CF8 = MGCopyAnswer();

  return MEMORY[0x2A1C71028]();
}

void sub_29C85C25C()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"block");
}

void sub_29C85C2D0()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"predicate");
}

void sub_29C85C344()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"block");
}

void sub_29C85C3B8()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"block");
}

void sub_29C85C42C()
{
  sub_29C858F4C(*MEMORY[0x29EDCA608]);
  sub_29C858EE0();
  sub_29C858EF8(&dword_29C856000, v0, v1, "Failed to enable mail dataclass for account %@ with error %@");
}

void sub_29C85C4C8()
{
  sub_29C858F4C(*MEMORY[0x29EDCA608]);
  sub_29C858EE0();
  sub_29C858EF8(&dword_29C856000, v0, v1, "Failed to enable BYOE dataclass for account %@ with error %@");
}

void sub_29C85C564()
{
  sub_29C858F4C(*MEMORY[0x29EDCA608]);
  sub_29C858EE0();
  sub_29C858EF8(&dword_29C856000, v0, v1, "Failed to enable dataclasses for account %@ with error %@");
}

void sub_29C85C5CC()
{
  sub_29C858F18();
  sub_29C858F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C85C67C()
{
  sub_29C858F18();
  sub_29C858F40();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_29C85C760()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4);
}

void sub_29C85C7CC()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"account");
}

void sub_29C85C840()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"serverProvidedFeatures");
}

void sub_29C85C91C()
{
  sub_29C85BCFC();
  sub_29C85BD08();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_29C85C98C()
{
  sub_29C85BCFC();
  sub_29C85BD08();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_29C85CA10()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"dataclass");
}

void sub_29C85CA84()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"account");
}

void sub_29C85CAF8()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"dataclass");
}

void sub_29C85CB6C()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"account");
}

void sub_29C85CBE0()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"account");
}

void sub_29C85CC54()
{
  sub_29C85BCFC();
  sub_29C85BD08();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_29C85CCC4()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"account");
}

void sub_29C85CD38()
{
  sub_29C85BCFC();
  sub_29C85BD08();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_29C85CE10()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"dataclasses");
}

void sub_29C85CE84()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"account");
}

void sub_29C85CEF8()
{
  sub_29C857794();
  v5 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], v0, v1);
  sub_29C8577A0();
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v2, v3, v4, @"completion");
}

void sub_29C85D17C(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_29C856000, log, OS_LOG_TYPE_DEBUG, "Policy restriction for %@ is %@", &v4, 0x16u);
}

void sub_29C85D21C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_29C856000, a2, OS_LOG_TYPE_DEBUG, "Policy identifier does not exist for %@", &v2, 0xCu);
}

void sub_29C85D2A8(os_log_t log)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = 138412290;
  v2 = qword_2A1A10CF8;
  _os_log_debug_impl(&dword_29C856000, log, OS_LOG_TYPE_DEBUG, "Current device model: %@", &v1, 0xCu);
}