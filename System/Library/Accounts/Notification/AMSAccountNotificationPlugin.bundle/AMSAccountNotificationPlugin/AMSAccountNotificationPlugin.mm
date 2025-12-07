uint64_t sub_29C87B948()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29C87B988()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C87B9C0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

id sub_29C87B9FC(void *a1, const char *a2)
{
  v2 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"lastAuthenticated");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_29C87BEF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v64 = *MEMORY[0x29EDCA608];
  v6 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v6)
  {
    v6 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v4, v5);
  }

  v7 = objc_msgSend_OSLogObject(v6, v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v60 = 138543618;
    v61 = v8;
    v62 = 2114;
    v63 = v9;
    _os_log_impl(&dword_29C87A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing the change.", &v60, 0x16u);
  }

  v11 = *(a1 + 64);
  switch(v11)
  {
    case 3:
      objc_msgSend__processAccountDeletion_inStore_(*(a1 + 32), v10, *(a1 + 56), *(a1 + 48));
      break;
    case 2:
      objc_msgSend__processAccountModification_oldAccount_inStore_(*(a1 + 32), v10, *(a1 + 40), *(a1 + 56), *(a1 + 48));
      break;
    case 1:
      objc_msgSend__processAccountAddition_inStore_(*(a1 + 32), v10, *(a1 + 40), *(a1 + 48));
      break;
  }

  objc_msgSend__processPrivacyAcknowledgementForAccount_oldAccount_(*(a1 + 32), v10, *(a1 + 40), *(a1 + 56));
  v12 = *(a1 + 40);
  if (!v12)
  {
    v12 = *(a1 + 56);
  }

  v13 = v12;
  if (objc_msgSend_ams_isiTunesAccount(v13, v14, v15))
  {
    v18 = objc_opt_class();
    objc_msgSend__postAccountsChangedNotificationsIfNeededForAccount_oldAccount_changeType_(v18, v19, *(a1 + 40), *(a1 + 56), *(a1 + 64));
    isActive = objc_msgSend_isActive(*(a1 + 56), v20, v21);
    if (isActive != objc_msgSend_isActive(*(a1 + 40), v23, v24))
    {
      v25 = objc_opt_class();
      objc_msgSend__postActiveAccountChangedNotification(v25, v26, v27);
      v30 = objc_msgSend_registerTokensIfNeeded(MEMORY[0x29EDBFA20], v28, v29);
    }

    v31 = objc_opt_class();
    objc_msgSend__postStorefontChangedNotificationIfNeededForAccount_oldAccount_store_(v31, v32, *(a1 + 40), *(a1 + 56), *(a1 + 48));
    if (*(a1 + 64) != 3)
    {
      v33 = objc_opt_class();
      objc_msgSend__updateLocalAccountStorefrontIfNeededForAccount_store_(v33, v34, *(a1 + 40), *(a1 + 48));
      if (*(a1 + 64) == 2)
      {
        v35 = objc_opt_class();
        objc_msgSend__postEligibilityOverrideNotificationIfNeededForAccount_oldAccount_(v35, v36, *(a1 + 40), *(a1 + 56));
      }
    }

    v37 = NSClassFromString(&cfstr_Amsaccountscha.isa);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_performSelector_withObject_(v37, v38, sel__processChangedAccount_, v13);
    }

    else
    {
      v50 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v38, v39);
      if (!v50)
      {
        v50 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v48, v49);
      }

      v51 = objc_msgSend_OSLogObject(v50, v48, v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = AMSLogKey();
        v60 = 138543618;
        v61 = v52;
        v62 = 2114;
        v63 = v53;
        _os_log_impl(&dword_29C87A000, v51, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to notify AMSAccountsChangedObservables of the change.", &v60, 0x16u);
      }
    }
  }

  else if (objc_msgSend_ams_isiCloudAccount(v13, v16, v17))
  {
    v42 = objc_msgSend_isActive(*(a1 + 56), v40, v41);
    if (v42 != objc_msgSend_isActive(*(a1 + 40), v43, v44))
    {
      v45 = objc_opt_class();
      objc_msgSend__postActiveiCloudAccountChangedNotification(v45, v46, v47);
    }
  }

  v56 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v40, v41);
  if (!v56)
  {
    v56 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v54, v55);
  }

  v57 = objc_msgSend_OSLogObject(v56, v54, v55);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = objc_opt_class();
    v59 = AMSLogKey();
    v60 = 138543618;
    v61 = v58;
    v62 = 2114;
    v63 = v59;
    _os_log_impl(&dword_29C87A000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished processing account:didChange:.", &v60, 0x16u);
  }
}

uint64_t sub_29C87CC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isActive(v3, v4, v5))
  {
    isDuplicate = 0;
  }

  else
  {
    isDuplicate = objc_msgSend_ams_isDuplicate_(*(a1 + 32), v6, v3);
  }

  return isDuplicate;
}

void sub_29C87D0D4(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = a2;
  if ((objc_msgSend_isActive(v5, v6, v7) & 1) == 0 && objc_msgSend_ams_isDuplicate_(*(a1 + 32), v8, v5))
  {
    v13 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v9, v10);
    if (!v13)
    {
      v13 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v11, v12);
    }

    v14 = objc_msgSend_OSLogObject(v13, v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSHashIfNeeded();
      v18 = AMSHashIfNeeded();
      v20 = 138544130;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_29C87A000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found a non-active account that is a duplicate of the account we’re trying to save. Ignoring. account = %{public}@ | existingAccount = %{public}@", &v20, 0x2Au);
    }

    objc_msgSend_removeObjectAtIndex_(*(a1 + 48), v19, a3);
  }
}

void sub_29C87D984(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = sub_29C87DDF4;
  v45[3] = &unk_29F32BB18;
  v5 = v3;
  v46 = v5;
  v7 = objc_msgSend_ams_firstObjectPassingTest_(v4, v6, v45);
  v8 = *(a1 + 40);
  v40 = MEMORY[0x29EDCA5F8];
  v41 = 3221225472;
  v42 = sub_29C87DE00;
  v43 = &unk_29F32BB18;
  v9 = v5;
  v44 = v9;
  v13 = objc_msgSend_ams_firstObjectPassingTest_(v8, v10, &v40);
  if (v7 && (objc_msgSend_containsObject_(*(a1 + 48), v11, v7, v40, v41, v42, v43) & 1) != 0 || v13 && (objc_msgSend_containsObject_(*(a1 + 48), v11, v13) & 1) != 0)
  {
    goto LABEL_33;
  }

  v14 = 0x29EDBF000uLL;
  if (!v7)
  {
    v19 = objc_msgSend_sharedAccountsOversizeConfig(MEMORY[0x29EDBF9F0], v11, v12);
    if (!v19)
    {
      v19 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v25, v26);
    }

    v20 = objc_msgSend_OSLogObject(v19, v25, v26, v40, v41, v42, v43);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v27 = objc_opt_class();
    v22 = AMSLogKey();
    v23 = AMSHashIfNeeded();
    *buf = 138543874;
    v48 = v27;
    v14 = 0x29EDBF000uLL;
    v49 = 2114;
    v50 = v22;
    v51 = 2114;
    v52 = v23;
    _os_log_impl(&dword_29C87A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cookie ADDED. cookie = %{public}@", buf, 0x20u);
    goto LABEL_15;
  }

  if (objc_msgSend_isEqual_(v7, v11, v13))
  {
    goto LABEL_17;
  }

  v19 = objc_msgSend_sharedAccountsOversizeConfig(MEMORY[0x29EDBF9F0], v15, v16);
  if (!v19)
  {
    v19 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v17, v18);
  }

  v20 = objc_msgSend_OSLogObject(v19, v17, v18, v40, v41, v42, v43);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = AMSLogKey();
    v23 = AMSHashIfNeeded();
    v24 = AMSHashIfNeeded();
    *buf = 138544130;
    v48 = v21;
    v14 = 0x29EDBF000;
    v49 = 2114;
    v50 = v22;
    v51 = 2114;
    v52 = v23;
    v53 = 2114;
    v54 = v24;
    _os_log_impl(&dword_29C87A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cookie MODIFIED. oldCookie = %{public}@ | newCookie = %{public}@", buf, 0x2Au);

LABEL_15:
  }

LABEL_16:

LABEL_17:
  if ((objc_msgSend_ams_isExpired(v13, v15, v16, v40, v41, v42, v43) & 1) != 0 || objc_msgSend_ams_isDeleted(v13, v28, v29))
  {
    if (objc_msgSend_ams_isDeleted(v13, v28, v29))
    {
      v32 = @"DELETED";
    }

    else if (objc_msgSend_ams_isExpired(v13, v30, v31))
    {
      v32 = @"EXPIRED";
    }

    else
    {
      v32 = @"UNKNOWN";
    }

    v35 = objc_msgSend_sharedAccountsOversizeConfig(*(v14 + 2544), v30, v31);
    if (!v35)
    {
      v35 = objc_msgSend_sharedConfig(*(v14 + 2544), v33, v34);
    }

    v36 = objc_msgSend_OSLogObject(v35, v33, v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = AMSLogKey();
      v39 = AMSHashIfNeeded();
      *buf = 138544130;
      v48 = v37;
      v49 = 2114;
      v50 = v38;
      v51 = 2114;
      v52 = v32;
      v53 = 2114;
      v54 = v39;
      _os_log_impl(&dword_29C87A000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cookie DELETED. reason = %{public}@ | cookie = %{public}@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    objc_msgSend_addObject_(*(a1 + 48), v28, v7);
  }

  if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 48), v28, v13);
  }

LABEL_33:
}

void sub_29C87DED0(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v5 = a3;
  if ((objc_msgSend_isEqualToString_(v4, v6, @"cookies") & 1) == 0)
  {
    v11 = objc_msgSend_sharedAccountsOversizeConfig(MEMORY[0x29EDBF9F0], v7, v8);
    if (!v11)
    {
      v11 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v9, v10);
    }

    v12 = objc_msgSend_OSLogObject(v11, v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v17 = objc_msgSend_first(v5, v15, v16);
      v18 = AMSHashIfNeeded();
      v21 = objc_msgSend_second(v5, v19, v20);
      v22 = AMSHashIfNeeded();
      v23 = 138544386;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v4;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = v22;
      _os_log_impl(&dword_29C87A000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@: value = %{public}@ | oldValue = %{public}@", &v23, 0x34u);
    }
  }
}

id sub_29C87E234(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDB9FC0];
  v3 = a2;
  v4 = [v2 alloc];
  v6 = objc_msgSend_initWithProperties_(v4, v5, v3);

  return v6;
}

void sub_29C87E28C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x29EDB9FC0];
  v4 = a2;
  v5 = [v3 alloc];
  v7 = objc_msgSend_initWithProperties_(v5, v6, v4);

  v8 = *(a1 + 32);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C87E35C;
  v12[3] = &unk_29F32BB18;
  v13 = v7;
  v9 = v7;
  objc_msgSend_ams_removeObjectsPassingTest_(v8, v10, v12);
  objc_msgSend_addObject_(*(a1 + 32), v11, v9);
}

uint64_t sub_29C87E368(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_ams_isExpired(v2, v3, v4))
  {
    isDeleted = 1;
  }

  else
  {
    isDeleted = objc_msgSend_ams_isDeleted(v2, v5, v6);
  }

  return isDeleted;
}

void sub_29C87F95C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x29EDB83C8], a2, a3);
  objc_msgSend_removeAccount_withCompletionHandler_(v5, v4, *(a1 + 32), &unk_2A23CFC48);
}

void sub_29C87FA6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x29EDB83C8], a2, a3);
  v5 = objc_msgSend_ams_saveAccount_(v6, v4, *(a1 + 32));
}

void sub_29C880630(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v5)
  {
    v5 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v3, v4);
  }

  v6 = objc_msgSend_OSLogObject(v5, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_29C87A000, v6, OS_LOG_TYPE_DEFAULT, "AMSAccountNotificationPlugin: [%{public}@] Successfully authenticated the iCloud account with iTunes.", &v8, 0xCu);
  }
}

void sub_29C880718(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v3, v4);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = AMSLogKey();
    v10 = AMSLogableError();
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_ERROR, "AMSAccountNotificationPlugin: [%{public}@] Failed to authenticate the iCloud account with iTunes. error = %{public}@", &v11, 0x16u);
  }
}

id sub_29C880834()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_2A17957A0;
  v7 = qword_2A17957A0;
  if (!qword_2A17957A0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = sub_29C884B40;
    v3[3] = &unk_29F32BD18;
    v3[4] = &v4;
    sub_29C884B40(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_29C88A324();
  }

  v1 = *v0;

  return v1;
}

void sub_29C8808FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C880914(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v5)
  {
    v5 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v3, v4);
  }

  v6 = objc_msgSend_OSLogObject(v5, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_29C87A000, v6, OS_LOG_TYPE_DEFAULT, "AMSAccountNotificationPlugin: [%{public}@] Apple ID GDPR acknowledgement recorded.", &v8, 0xCu);
  }
}

void sub_29C8809FC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v3, v4);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = AMSLogKey();
    v10 = AMSLogableError();
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_ERROR, "AMSAccountNotificationPlugin: [%{public}@] Failed to recording Apple ID GDPR acknowledgement.. error = %{public}@", &v11, 0x16u);
  }
}

void sub_29C881B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29C881B98(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v6 = objc_msgSend_domain(v3, v4, v5);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x29EDBF968]))
  {
    v10 = objc_msgSend_code(v3, v8, v9);

    if (v10 == 7)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v11, v12);
  if (!v15)
  {
    v15 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v13, v14);
  }

  v16 = objc_msgSend_OSLogObject(v15, v13, v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v18 = objc_opt_class();
    v19 = v18;
    v20 = AMSLogKey();
    v21 = 138543618;
    v22 = v18;
    v23 = 2114;
    v24 = v20;
    _os_log_impl(&dword_29C87A000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove follow-ups after signing out of an account.", &v21, 0x16u);
  }

LABEL_10:
}

void sub_29C881D10(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = objc_msgSend_identifier(v11, v6, v7);
        v16 = objc_msgSend_account(v11, v14, v15);
        v18 = objc_msgSend_clearFollowUpWithIdentifier_account_(v12, v17, v13, v16);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v19, v23, 16);
    }

    while (v8);
  }
}

void sub_29C881F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C882444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C884AF4(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void *sub_29C884B40(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!qword_2A17957A8)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = sub_29C884C80;
    v5[4] = &unk_29F32BD50;
    v5[5] = v5;
    v6 = xmmword_29F32BD38;
    v7 = 0;
    qword_2A17957A8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_2A17957A8;
    if (qword_2A17957A8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_2A17957A8;
LABEL_5:
  result = dlsym(v2, "OBPrivacyAppleIDIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A17957A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C884C80(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A17957A8 = result;
  return result;
}

Class sub_29C884CF4(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A17957B8)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = sub_29C884E38;
    v4[4] = &unk_29F32BD50;
    v4[5] = v4;
    v5 = xmmword_29F32BD70;
    v6 = 0;
    qword_2A17957B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_2A17957B8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("RadioModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A348();
  }

  qword_2A17957B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C884E38(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A17957B8 = result;
  return result;
}

Class sub_29C884EAC(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A17957C8)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = sub_29C884FF0;
    v4[4] = &unk_29F32BD50;
    v4[5] = v4;
    v5 = xmmword_29F32BD88;
    v6 = 0;
    qword_2A17957C8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_2A17957C8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SSVSubscriptionStatusCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A370();
  }

  qword_2A17957C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C884FF0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A17957C8 = result;
  return result;
}

Class sub_29C885064(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A17957D8)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = sub_29C8851A8;
    v4[4] = &unk_29F32BD50;
    v4[5] = v4;
    v5 = xmmword_29F32BDA0;
    v6 = 0;
    qword_2A17957D8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_2A17957D8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A398();
  }

  qword_2A17957D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C8851A8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A17957D8 = result;
  return result;
}

id sub_29C88521C(void *a1, uint64_t a2, void *a3)
{
  v66 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (objc_msgSend_ams_isLocalAccount(v4, v5, v6))
  {
    v9 = MEMORY[0x29EDBF9B8];
    v10 = AMSError();
    v12 = objc_msgSend_promiseWithError_(v9, v11, v10);
  }

  else
  {
    v15 = objc_msgSend_sharedPrivacyConfig(MEMORY[0x29EDBF9F0], v7, v8);
    if (!v15)
    {
      v15 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v13, v14);
    }

    v16 = objc_msgSend_OSLogObject(v15, v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = AMSHashIfNeeded();
      v22 = objc_msgSend_ams_privacyAcknowledgement(v4, v20, v21);
      *buf = 138544130;
      v59 = v17;
      v60 = 2114;
      v61 = v18;
      v62 = 2114;
      v63 = v19;
      v64 = 2114;
      v65 = v22;
      _os_log_impl(&dword_29C87A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Syncing privacy acknowledgement. account = %{public}@ | privacyAcknowledgement = %{public}@", buf, 0x2Au);
    }

    v53 = objc_msgSend_ams_bagForProcessInfo_(MEMORY[0x29EDBF9B0], v23, 0);
    v24 = objc_alloc(MEMORY[0x29EDBFA38]);
    v26 = objc_msgSend_initWithBag_(v24, v25, v53);
    objc_msgSend_setAccount_(v26, v27, v4);
    objc_msgSend_setDialogOptions_(v26, v28, 1);
    v29 = AMSLogKey();
    objc_msgSend_setLogUUID_(v26, v30, v29);

    v31 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v34 = objc_msgSend_deviceGUID(MEMORY[0x29EDBF9D0], v32, v33);
    objc_msgSend_ams_setNullableObject_forKey_(v31, v35, v34, *MEMORY[0x29EDBF980]);

    v38 = objc_msgSend_ams_privacyAcknowledgement(v4, v36, v37);
    objc_msgSend_ams_setNullableObject_forKey_(v31, v39, v38, @"privacyAcknowledgement");

    v41 = objc_msgSend_URLForKey_(v53, v40, @"privacyAcknowledgementUrl");
    v43 = objc_msgSend_requestWithMethod_bagURL_parameters_(v26, v42, 4, v41, v31);
    v45 = objc_msgSend_thenWithBlock_(v43, v44, &unk_2A23CFCE8);
    v46 = AMSLogKey();
    objc_initWeak(buf, a1);
    v54[0] = MEMORY[0x29EDCA5F8];
    v54[1] = 3221225472;
    v54[2] = sub_29C885668;
    v54[3] = &unk_29F32BE08;
    v47 = v46;
    v55 = v47;
    objc_copyWeak(&v57, buf);
    v56 = v4;
    v49 = objc_msgSend_thenWithBlock_(v45, v48, v54);
    v12 = objc_msgSend_binaryPromiseAdapter(v49, v50, v51);

    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);
  }

  return v12;
}

void sub_29C8855D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_29C8855F8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDBFA40];
  v3 = a2;
  v6 = objc_msgSend_defaultSession(v2, v4, v5);
  v8 = objc_msgSend_dataTaskPromiseWithRequest_(v6, v7, v3);

  return v8;
}

id sub_29C885668(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = AMSSetLogKey();
  v7 = objc_msgSend_object(v3, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v11 = objc_msgSend_sharedPrivacyConfig(MEMORY[0x29EDBF9F0], v9, v10);
  v14 = v11;
  if (v8)
  {
    if (!v11)
    {
      v14 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v12, v13);
    }

    v15 = objc_msgSend_OSLogObject(v14, v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v47 = 138543618;
      v48 = v17;
      v49 = 2114;
      v50 = v18;
      _os_log_impl(&dword_29C87A000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully synced the privacy acknowledgement.", &v47, 0x16u);
    }

    if (objc_msgSend_ams_mergePrivacyAcknowledgement_(*(a1 + 40), v19, v8))
    {
      v24 = objc_msgSend_sharedPrivacyConfig(MEMORY[0x29EDBF9F0], v20, v21);
      if (!v24)
      {
        v24 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v22, v23);
      }

      v25 = objc_msgSend_OSLogObject(v24, v22, v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_loadWeakRetained((a1 + 48));
        v27 = objc_opt_class();
        v28 = AMSLogKey();
        v47 = 138543618;
        v48 = v27;
        v49 = 2114;
        v50 = v28;
        _os_log_impl(&dword_29C87A000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The server sent updated privacy acknowledgement.", &v47, 0x16u);
      }

      objc_msgSend_ams_setDisablePrivacyAcknowledgementSync_(*(a1 + 40), v29, 1);
      v32 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x29EDB83C8], v30, v31);
      v34 = objc_msgSend_ams_saveAccount_verifyCredentials_(v32, v33, *(a1 + 40), 0);
    }

    v35 = objc_msgSend_promiseWithResult_(MEMORY[0x29EDBFA18], v20, MEMORY[0x29EDB8EB0]);
  }

  else
  {
    if (!v11)
    {
      v14 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v12, v13);
    }

    v36 = objc_msgSend_OSLogObject(v14, v12, v13);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_loadWeakRetained((a1 + 48));
      v38 = objc_opt_class();
      v39 = AMSLogKey();
      v42 = objc_msgSend_object(v3, v40, v41);
      v47 = 138543874;
      v48 = v38;
      v49 = 2114;
      v50 = v39;
      v51 = 2114;
      v52 = v42;
      _os_log_impl(&dword_29C87A000, v36, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The response was invalid. response = %{public}@", &v47, 0x20u);
    }

    v43 = MEMORY[0x29EDBFA18];
    v44 = AMSError();
    v35 = objc_msgSend_promiseWithError_(v43, v45, v44);
  }

  return v35;
}

void sub_29C885B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C885C68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29C885C84(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = AMSSetLogKey();
  v9 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v5, v6);
  if (!v9)
  {
    v9 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v7, v8);
  }

  v10 = objc_msgSend_OSLogObject(v9, v7, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543618;
    v120 = v11;
    v121 = 2114;
    v122 = v12;
    _os_log_impl(&dword_29C87A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Running the logout task.", buf, 0x16u);
  }

  v14 = objc_msgSend_ams_bagForProcessInfo_(MEMORY[0x29EDBF9B0], v13, 0);
  v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v18 = objc_msgSend_account(*(a1 + 40), v16, v17);
  isLocalAccount = objc_msgSend_ams_isLocalAccount(v18, v19, v20);

  if (isLocalAccount)
  {
    v26 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v22, v23);
    if (!v26)
    {
      v26 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v24, v25);
    }

    v27 = objc_msgSend_OSLogObject(v26, v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = AMSLogKey();
      v32 = objc_msgSend_account(*(a1 + 40), v30, v31);
      v33 = AMSHashIfNeeded();
      *buf = 138543874;
      v120 = v28;
      v121 = 2114;
      v122 = v29;
      v123 = 2114;
      v124 = v33;
      _os_log_impl(&dword_29C87A000, v27, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Preventing attempted logout of local account. account = %{public}@", buf, 0x20u);
    }

    AMSError();
    *a2 = v34 = 0;
    goto LABEL_45;
  }

  v118 = 0;
  v34 = objc_msgSend__revokeMusicKitUserTokensWithError_(WeakRetained, v22, &v118);
  v37 = v118;
  if ((v34 & 1) == 0)
  {
    v40 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v35, v36);
    if (!v40)
    {
      v40 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v38, v39);
    }

    v41 = objc_msgSend_OSLogObject(v40, v38, v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      AMSLogKey();
      v43 = v113 = v14;
      v44 = AMSLogableError();
      *buf = 138543874;
      v120 = v42;
      v121 = 2114;
      v122 = v43;
      v123 = 2114;
      v124 = v44;
      _os_log_impl(&dword_29C87A000, v41, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error revoking user music token. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v15, v45, v37);
    v37 = 0;
  }

  v117 = v37;
  v46 = objc_msgSend__disableAutomaticDownloadKindsWithError_(WeakRetained, v35, &v117, v113);
  v47 = v117;

  if ((v46 & 1) == 0)
  {
    v52 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v48, v49);
    if (!v52)
    {
      v52 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v50, v51);
    }

    v53 = objc_msgSend_OSLogObject(v52, v50, v51);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = objc_opt_class();
      v55 = AMSLogKey();
      v56 = AMSLogableError();
      *buf = 138543874;
      v120 = v54;
      v121 = 2114;
      v122 = v55;
      v123 = 2114;
      v124 = v56;
      _os_log_impl(&dword_29C87A000, v53, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error disabling automatic download kinds. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v15, v57, v47);
    v34 = 0;
    v47 = 0;
  }

  v116 = v47;
  v58 = objc_msgSend__disableBookkeeperWithBag_error_(WeakRetained, v48, v14, &v116);
  v59 = v116;

  if ((v58 & 1) == 0)
  {
    v64 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v60, v61);
    if (!v64)
    {
      v64 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v62, v63);
    }

    v65 = objc_msgSend_OSLogObject(v64, v62, v63);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = objc_opt_class();
      v67 = AMSLogKey();
      v68 = AMSLogableError();
      *buf = 138543874;
      v120 = v66;
      v121 = 2114;
      v122 = v67;
      v123 = 2114;
      v124 = v68;
      _os_log_impl(&dword_29C87A000, v65, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error disabling bookkeeper. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v15, v69, v59);
    v34 = 0;
    v59 = 0;
  }

  v115 = v59;
  v70 = objc_msgSend__sendLogoutRequestWithBag_error_(WeakRetained, v60, v14, &v115);
  v71 = v115;

  if ((v70 & 1) == 0)
  {
    v76 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v72, v73);
    if (!v76)
    {
      v76 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v74, v75);
    }

    v77 = objc_msgSend_OSLogObject(v76, v74, v75);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      v78 = objc_opt_class();
      v79 = AMSLogKey();
      v80 = AMSLogableError();
      *buf = 138543874;
      v120 = v78;
      v121 = 2114;
      v122 = v79;
      v123 = 2114;
      v124 = v80;
      _os_log_impl(&dword_29C87A000, v77, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error sending logout request. error = %{public}@", buf, 0x20u);
    }

    objc_msgSend_ams_addNullableObject_(v15, v81, v71);
    v34 = 0;
    v71 = 0;
  }

  if (objc_msgSend_count(v15, v72, v73) >= 2)
  {
    v84 = AMSErrorWithMultipleUnderlyingErrors();
LABEL_39:
    v86 = v84;

    v71 = v86;
    goto LABEL_40;
  }

  if (objc_msgSend_count(v15, v82, v83) == 1)
  {
    v84 = objc_msgSend_objectAtIndexedSubscript_(v15, v85, 0);
    goto LABEL_39;
  }

LABEL_40:
  v87 = v71;
  *a2 = v71;
  v88 = objc_opt_class();
  v91 = objc_msgSend_account(WeakRetained, v89, v90);
  v94 = objc_msgSend_ams_DSID(v91, v92, v93);
  objc_msgSend__resetServerDataCacheForAccountWithDSID_(v88, v95, v94);

  v96 = objc_opt_class();
  v99 = objc_msgSend_account(WeakRetained, v97, v98);
  v102 = objc_msgSend_ams_accountID(v99, v100, v101);
  objc_msgSend__performDaemonSignOutTasksForAccountWithID_(v96, v103, v102);

  v108 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v104, v105);
  if (!v108)
  {
    v108 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v106, v107);
  }

  v109 = objc_msgSend_OSLogObject(v108, v106, v107);
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    v110 = objc_opt_class();
    v111 = AMSLogKey();
    *buf = 138543618;
    v120 = v110;
    v121 = 2114;
    v122 = v111;
    _os_log_impl(&dword_29C87A000, v109, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Finished running the logout task.", buf, 0x16u);
  }

LABEL_45:
  return v34;
}

Class sub_29C88706C(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A17957E8)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = sub_29C8871B0;
    v4[4] = &unk_29F32BD50;
    v4[5] = v4;
    v5 = xmmword_29F32BE78;
    v6 = 0;
    qword_2A17957E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_2A17957E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICCloudServiceStatusMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C88A3C0();
  }

  qword_2A17957E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C8871B0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A17957E8 = result;
  return result;
}

id sub_29C887224(void *a1, const char *a2)
{
  v2 = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"accountFlags");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_29C887298()
{
  v0 = sub_29C88A498();
  sub_29C888C60(v0, qword_2A1795730);
  sub_29C888BE0(v0, qword_2A1795730);
  return sub_29C88A468();
}

void sub_29C8872E4(void *a1)
{
  sub_29C88730C(a1);

  sub_29C887574();
}

uint64_t sub_29C88730C(void *a1)
{
  sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0);
  MEMORY[0x2A1C7C4A8]();
  v4 = &v13 - v3;
  v5 = [a1 ams_DSID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_29C88A508();
    sub_29C888CC4(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v6;
    sub_29C8890A0(0, 0, v4, &unk_29C88B348, v8);
  }

  else
  {
    if (qword_2A1795728 != -1)
    {
      sub_29C888F80(&qword_2A1795728);
    }

    v10 = sub_29C88A498();
    sub_29C888BE0(v10, qword_2A1795730);
    sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
    v11 = sub_29C88A428();
    sub_29C889004(v11);
    sub_29C889094();
    *(swift_allocObject() + 16) = xmmword_29C88B260;
    v12 = AMSSetLogKeyIfNeeded();
    sub_29C88A4B8();

    type metadata accessor for AccountStorefrontChangeResponder();
    sub_29C88A418();

    sub_29C88A3E8();
    sub_29C88A478();
  }
}

void sub_29C887574()
{
  v0 = [objc_opt_self() createBagForSubProfile];
  if (v0)
  {
    v1 = v0;
    if (qword_2A1795728 != -1)
    {
      sub_29C888F80(&qword_2A1795728);
    }

    v2 = sub_29C88A498();
    sub_29C888BE0(v2, qword_2A1795730);
    sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
    v3 = sub_29C88A428();
    sub_29C889004(v3);
    sub_29C889094();
    *(swift_allocObject() + 16) = xmmword_29C88B260;
    v4 = AMSSetLogKeyIfNeeded();
    sub_29C88A4B8();

    type metadata accessor for AccountStorefrontChangeResponder();
    sub_29C88A418();

    sub_29C88A3E8();
    sub_29C88A488();

    v5 = [objc_allocWithZone(MEMORY[0x29EDBF9E0]) init];
    [v5 setOrigin_];
    v7 = [objc_allocWithZone(MEMORY[0x29EDBF9D8]) initWithBag_];
    v6 = [v7 syncWithRequest_];
  }
}

uint64_t sub_29C887810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x2A1C73D48](sub_29C887830, 0, 0);
}

uint64_t sub_29C887830()
{
  sub_29C889014();
  v1 = [objc_allocWithZone(MEMORY[0x29EDBFA28]) init];
  v0[5] = sub_29C888DAC();
  v0[6] = &off_2A23CFD08;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_29C8878FC;
  v3 = v0[16];

  return sub_29C887DE0(v3, (v0 + 2));
}

uint64_t sub_29C8878FC()
{
  sub_29C889014();
  sub_29C889040();
  v3 = v2;
  v4 = *v1;
  sub_29C888FB0();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {
    v6 = sub_29C887BA8;
  }

  else
  {
    sub_29C888EE0((v3 + 16));
    v6 = sub_29C887A08;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29C887A08()
{
  if (qword_2A1795728 != -1)
  {
    sub_29C888F80(&qword_2A1795728);
  }

  v0 = sub_29C88A498();
  sub_29C888BE0(v0, qword_2A1795730);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v1 = sub_29C88A428();
  sub_29C889004(v1);
  sub_29C889094();
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v2 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  type metadata accessor for AccountStorefrontChangeResponder();
  sub_29C88A418();

  sub_29C88A3E8();
  sub_29C88A488();

  sub_29C888FF8();

  return v3();
}

uint64_t sub_29C887BA8()
{
  sub_29C888EE0(v0 + 2);
  if (qword_2A1795728 != -1)
  {
    sub_29C888F80(&qword_2A1795728);
  }

  v1 = v0[18];
  v2 = sub_29C88A498();
  sub_29C888BE0(v2, qword_2A1795730);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v3 = sub_29C88A428();
  sub_29C889004(v3);
  sub_29C889094();
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v4 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  type metadata accessor for AccountStorefrontChangeResponder();
  sub_29C88A418();

  sub_29C88A518();

  swift_getErrorValue();
  v5 = sub_29C88A528();
  MEMORY[0x29ED47170](v5);

  v0[10] = MEMORY[0x29EDC99B0];
  v0[7] = 0xD000000000000016;
  v0[8] = 0x800000029C88BD10;
  sub_29C88A408();
  sub_29C888DF0((v0 + 7));
  sub_29C88A478();

  sub_29C888FF8();

  return v6();
}

uint64_t sub_29C887DE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_29C888FA0();
}

uint64_t sub_29C887DF4()
{
  sub_29C888F2C(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = sub_29C889020(v1);

  return v3(v2);
}

uint64_t sub_29C887F08()
{
  sub_29C889014();
  sub_29C889040();
  v2 = *v1;
  sub_29C888FB0();
  *v3 = v2;

  if (v0)
  {
    sub_29C888FF8();

    return v4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29C888024, 0, 0);
  }
}

uint64_t sub_29C888024()
{
  sub_29C888F2C(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_29C889020(v1);

  return v3(v2);
}

uint64_t sub_29C888138()
{
  sub_29C889014();
  sub_29C889040();
  v1 = *v0;
  sub_29C888FB0();
  *v2 = v1;

  sub_29C888FF8();

  return v3();
}

id sub_29C888218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStorefrontChangeResponder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_29C888270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStorefrontChangeResponder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C8882A4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return sub_29C888FA0();
}

uint64_t sub_29C8882B8()
{
  sub_29C88904C();
  v4 = [sub_29C889058() setUpCacheForAccountDSID_];
  v0[20] = v4;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_29C8883B4;
  swift_continuation_init();
  v5 = sub_29C888C18(&qword_2A1795770, &qword_29C88B368);
  sub_29C888FD8(v5);
  v0[11] = 1107296256;
  sub_29C888FC0();
  [v4 resultWithCompletion_];

  return MEMORY[0x2A1C73CC0](v1);
}

uint64_t sub_29C8883B4()
{
  sub_29C889014();
  sub_29C889040();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 168) = v2;
  if (v2)
  {
    v3 = sub_29C88856C;
  }

  else
  {
    v3 = sub_29C8884BC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29C8884BC()
{
  sub_29C88904C();
  v1 = *(v0 + 176);

  if ((v1 & 1) == 0)
  {
    v3 = sub_29C88A4A8();
    sub_29C889070(v3);

    swift_willThrow();
  }

  sub_29C888FF8();

  return v2();
}

uint64_t sub_29C88856C()
{
  sub_29C88904C();
  v1 = *(v0 + 160);
  swift_willThrow();

  sub_29C888FF8();

  return v2();
}

uint64_t sub_29C8885D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_29C888F2C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_29C888658(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_29C8886C4(v9, v4);
  }
}

uint64_t sub_29C888658(uint64_t a1, uint64_t a2)
{
  sub_29C888C18(&qword_2A1795778, &qword_29C88B370);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x2A1C73CE0](a1, v4);
}

uint64_t sub_29C8886E4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return sub_29C888FA0();
}

uint64_t sub_29C8886F8()
{
  sub_29C88904C();
  v4 = [sub_29C889058() tearDownCacheForAccountDSID_];
  v0[20] = v4;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_29C8887F4;
  swift_continuation_init();
  v5 = sub_29C888C18(&qword_2A1795770, &qword_29C88B368);
  sub_29C888FD8(v5);
  v0[11] = 1107296256;
  sub_29C888FC0();
  [v4 resultWithCompletion_];

  return MEMORY[0x2A1C73CC0](v1);
}

uint64_t sub_29C8887F4()
{
  sub_29C889014();
  sub_29C889040();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 168) = v2;
  if (v2)
  {
    v3 = sub_29C888F7C;
  }

  else
  {
    v3 = sub_29C8888FC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29C8888FC()
{
  sub_29C88904C();
  v1 = *(v0 + 176);

  if ((v1 & 1) == 0)
  {
    v3 = sub_29C88A4A8();
    sub_29C889070(v3);

    swift_willThrow();
  }

  sub_29C888FF8();

  return v2();
}

uint64_t sub_29C8889AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29C888F78;

  return sub_29C8886E4(a1);
}

uint64_t sub_29C888A44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29C888ADC;

  return sub_29C8882A4(a1);
}

uint64_t sub_29C888ADC()
{
  sub_29C889014();
  sub_29C889040();
  v1 = *v0;
  sub_29C888FB0();
  *v2 = v1;

  sub_29C888FF8();

  return v3();
}

uint64_t sub_29C888BE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29C888C18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_29C888C60(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_29C888CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29C888ADC;

  return sub_29C887810(a1, v4, v5, v7, v6);
}

unint64_t sub_29C888DAC()
{
  result = qword_2A1795760;
  if (!qword_2A1795760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1795760);
  }

  return result;
}

uint64_t sub_29C888DF0(uint64_t a1)
{
  v2 = sub_29C888C18(&qword_2A1795768, &unk_29C88B3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C888E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29C888EE0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_29C888F2C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29C888F80(uint64_t a1)
{

  return MEMORY[0x2A1C73598](a1, sub_29C887298);
}

void sub_29C888FC0()
{
  v1[12] = sub_29C8885D4;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_29C888FD8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x29EDCA5F8];
  return result;
}

uint64_t sub_29C889070(uint64_t a1)
{

  return AMSError();
}

uint64_t sub_29C8890A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0);
  MEMORY[0x2A1C7C4A8]();
  v10 = v23 - v9;
  sub_29C889DF8(a3, v23 - v9);
  v11 = sub_29C88A508();
  v12 = sub_29C889E68(v10, 1, v11);

  if (v12 == 1)
  {
    sub_29C88A250(v10, &qword_2A1795758, &unk_29C88B3A0);
  }

  else
  {
    sub_29C88A4F8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_29C88A4E8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_29C88A4C8() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_29C88A250(a3, &qword_2A1795758, &unk_29C88B3A0);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29C88A250(a3, &qword_2A1795758, &unk_29C88B3A0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_29C889374()
{
  v0 = sub_29C88A498();
  sub_29C888C60(v0, qword_2A1795780);
  sub_29C888BE0(v0, qword_2A1795780);
  return sub_29C88A468();
}

uint64_t static EmptyUsernameBugReport.reportEmptyUsernameBug()()
{
  sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0);
  MEMORY[0x2A1C7C4A8]();
  v2 = &v9 - v1;
  if (qword_2A1795748 != -1)
  {
    sub_29C88A2B0(&qword_2A1795748);
  }

  v3 = sub_29C88A498();
  sub_29C888BE0(v3, qword_2A1795780);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v4 = sub_29C88A428();
  sub_29C889004(v4);
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v5 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  sub_29C88A300();

  sub_29C88A3E8();
  sub_29C88A488();

  v6 = sub_29C88A508();
  sub_29C888CC4(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  sub_29C8890A0(0, 0, v2, &unk_29C88B3B8, v7);
}

uint64_t sub_29C8895F0()
{
  v1 = objc_allocWithZone(sub_29C88A458());
  *(v0 + 88) = sub_29C88A438();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_29C88971C;
  v3.n128_u64[0] = 0;

  return MEMORY[0x2A1C5F2D8](0, 0, 0, v3);
}

uint64_t sub_29C88971C()
{
  sub_29C889014();
  sub_29C889040();
  v3 = *(v2 + 88);
  v4 = *v1;
  sub_29C888FB0();
  *v5 = v4;
  *(v7 + 104) = v6;

  if (v0)
  {
    v8 = sub_29C8899D8;
  }

  else
  {
    v8 = sub_29C88983C;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29C88983C()
{
  if (qword_2A1795748 != -1)
  {
    sub_29C88A2B0(&qword_2A1795748);
  }

  v1 = *(v0 + 104);
  v2 = sub_29C88A498();
  sub_29C888BE0(v2, qword_2A1795780);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v3 = sub_29C88A428();
  sub_29C889004(v3);
  *(swift_allocObject() + 16) = xmmword_29C88B260;
  v4 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  sub_29C88A300();

  sub_29C88A3E8();
  sub_29C88A488();

  sub_29C888FF8();

  return v5();
}

uint64_t sub_29C8899D8()
{
  v1 = v0[13];
  sub_29C88A19C();
  v2 = swift_allocError();
  *v3 = v1;
  v4 = v2;
  if (qword_2A1795748 != -1)
  {
    sub_29C88A2B0(&qword_2A1795748);
  }

  v5 = sub_29C88A498();
  sub_29C888BE0(v5, qword_2A1795780);
  sub_29C888C18(&qword_2A1795750, &unk_29C88B330);
  v6 = sub_29C88A428();
  sub_29C889004(v6);
  *(swift_allocObject() + 16) = xmmword_29C88B390;
  v7 = AMSSetLogKeyIfNeeded();
  sub_29C88A4B8();

  sub_29C88A418();

  sub_29C88A3E8();
  swift_getErrorValue();
  v8 = v0[6];
  v9 = v0[7];
  v0[5] = v9;
  v10 = sub_29C88A1F0(v0 + 2);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  sub_29C88A3F8();
  sub_29C88A250((v0 + 2), &qword_2A1795768, &unk_29C88B3F0);
  sub_29C88A478();

  sub_29C888FF8();

  return v11();
}

uint64_t sub_29C889C38(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_29C88A2F0(v6);
  *v7 = v8;
  v7[1] = sub_29C888ADC;

  return sub_29C8895D0(a1, v3, v4, v5);
}

id EmptyUsernameBugReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmptyUsernameBugReport.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmptyUsernameBugReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29C889DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C888C18(&qword_2A1795758, &unk_29C88B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C889E90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29C889F88;

  return v6(a1);
}

uint64_t sub_29C889F88()
{
  sub_29C889014();
  sub_29C889040();
  v1 = *v0;
  sub_29C888FB0();
  *v2 = v1;

  sub_29C888FF8();

  return v3();
}

uint64_t sub_29C88A06C()
{
  v0 = swift_task_alloc();
  v1 = sub_29C88A2F0(v0);
  *v1 = v2;
  v3 = sub_29C88A2D0(v1);

  return v4(v3);
}

uint64_t sub_29C88A104()
{
  v0 = swift_task_alloc();
  v1 = sub_29C88A2F0(v0);
  *v1 = v2;
  v3 = sub_29C88A2D0(v1);

  return v4(v3);
}

unint64_t sub_29C88A19C()
{
  result = qword_2A1795798;
  if (!qword_2A1795798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1795798);
  }

  return result;
}

uint64_t *sub_29C88A1F0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_29C88A250(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C888C18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C88A2B0(uint64_t a1)
{

  return MEMORY[0x2A1C73598](a1, sub_29C889374);
}

uint64_t sub_29C88A300()
{

  return sub_29C88A418();
}

void sub_29C88A324()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  sub_29C88A348();
}