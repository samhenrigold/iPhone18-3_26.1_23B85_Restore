id ISAppleIDPluginLogConfig(uint64_t a1)
{
  if (qword_C798 != -1)
  {
    sub_4BC8();
  }

  v2 = qword_C790;

  return v2;
}

void sub_F64(id a1)
{
  v1 = +[SSLogConfig sharedAccountsConfig];
  v4 = [v1 mutableCopy];

  [v4 setCategory:@"plugins.login"];
  v2 = [v4 copy];
  v3 = qword_C790;
  qword_C790 = v2;
}

void sub_1A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_1A94(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 isMultiUser];

  if ((v4 & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1D3C;
    block[3] = &unk_8388;
    objc_copyWeak(&v23, (a1 + 64));
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v22 = v6;
    dispatch_group_async(v2, v5, block);

    objc_destroyWeak(&v23);
  }

  if (PSIsRunningInAssistant())
  {
    v7 = *(*(a1 + 32) + 8);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1ED4;
    v18[3] = &unk_8388;
    objc_copyWeak(&v20, (a1 + 64));
    v8 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v8;
    dispatch_group_async(v2, v7, v18);
    v9 = *(*(a1 + 32) + 8);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_206C;
    v14[3] = &unk_83B0;
    objc_copyWeak(&v17, (a1 + 64));
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 40);
    dispatch_group_async(v2, v9, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2210;
  v10[3] = &unk_83D8;
  objc_copyWeak(&v12, (a1 + 64));
  v10[4] = *(a1 + 32);
  v13 = *(a1 + 72);
  v11 = *(a1 + 56);
  dispatch_group_notify(v2, &_dispatch_main_q, v10);

  objc_destroyWeak(&v12);
}

void sub_1D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ISAppleIDPluginLogConfig(WeakRetained);
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v9 = 138543362;
  v10 = objc_opt_class();
  v7 = v10;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_0, v6, 0, "%{public}@: Setting up Home Sharing.", &v9, 12);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  [WeakRetained _setupHomeSharingWithParameters:*(a1 + 40)];
}

void sub_1ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ISAppleIDPluginLogConfig(WeakRetained);
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v9 = 138543362;
  v10 = objc_opt_class();
  v7 = v10;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_0, v6, 0, "%{public}@: Setting up iTunes Match.", &v9, 12);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  [WeakRetained _setupITunesMatchWithParameters:*(a1 + 40)];
}

void sub_206C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = ISAppleIDPluginLogConfig(WeakRetained);
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_0, v6, 0, "%{public}@: Setting up iTunes Biometrics.", &v9, 12);

    if (!v8)
    {
      goto LABEL_13;
    }

    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
  }

LABEL_13:
  if ([*(a1 + 40) isActive])
  {
    [WeakRetained _setupiTunesBiometricsWithParameters:*(a1 + 48)];
  }
}

void sub_2210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ISAppleIDPluginLogConfig(WeakRetained);
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v11 = 138543362;
    v12 = objc_opt_class();
    v7 = v12;
    v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_0, v6, 0, "%{public}@: Service setups are complete. Calling the completion handler.", &v11, 12);

    if (!v8)
    {
      goto LABEL_13;
    }

    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
  }

LABEL_13:
  kdebug_trace();
  v9 = [WeakRetained handler];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 56), *(a1 + 40));
  }
}

void sub_23E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v6 authenticatedAccount];

  if (!v8)
  {
    v10 = ISAppleIDPluginLogConfig(v9);
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 accountName];
      v19 = SSHashIfNeeded();
      v21 = 138543874;
      v22 = v15;
      v23 = 2114;
      v24 = v19;
      v25 = 2112;
      v26 = v5;
      v20 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_0, v13, 16, "%{public}@: Failed to authenticate %{public}@. The account won't have all needed tokens. error = %@", &v21, 32);

      if (!v20)
      {
LABEL_14:

        goto LABEL_15;
      }

      v13 = [NSString stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void sub_3740(uint64_t a1)
{
  v2 = +[HSAccountStore defaultStore];
  v3 = [*(a1 + 32) objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v2 setAppleID:v4];
  v5 = [*(a1 + 32) objectForKey:@"password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v2 setPassword:v6];
  v7 = [v2 canDetermineGroupID];
  if ((v7 & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    goto LABEL_22;
  }

  v8 = ISAppleIDPluginLogConfig(v7);
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = v9 | 2;
  }

  else
  {
    LODWORD(v10) = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  v16 = 138543362;
  v17 = objc_opt_class();
  v12 = v17;
  v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_0, v11, 0, "%{public}@: Determining Home Sharing group ID.", &v16, 12);

  if (v13)
  {
    v11 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_19:
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_39E0;
  v14[3] = &unk_8450;
  v15 = *(a1 + 40);
  [v2 determineGroupIDWithCompletionHandler:v14];

LABEL_22:
}

void sub_4008(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ISAppleIDPluginLogConfig(v4);
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (!v8)
    {

      goto LABEL_26;
    }

    v10 = objc_opt_class();
    v11 = v10;
    v12 = [NSNumber numberWithInteger:a2];
    v20 = 138543874;
    v21 = v10;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v4;
    v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_0, v9, 0, "%{public}@: Failed to fetch new Touch ID token, status = %{public}@ | error = %{public}@", &v20, 32);

    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!v5)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v14 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v15) = v14 | 2;
  }

  else
  {
    LODWORD(v15) = v14;
  }

  v16 = [v6 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v17 = objc_opt_class();
  v18 = v17;
  v19 = [NSNumber numberWithInteger:0];
  v20 = 138543618;
  v21 = v17;
  v22 = 2114;
  v23 = v19;
  v13 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_0, v16, 0, "%{public}@: Finished fetching new Touch ID token, status = %{public}@", &v20, 22);

  if (v13)
  {
LABEL_23:
    v16 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_24:
  }

LABEL_26:
}

void sub_495C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (HSCloudClientIsSagaEnabledInURLBag())
  {
    v4 = [v3 objectForKey:@"library-daap"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    v6 = ISAppleIDPluginLogConfig(isKindOfClass);
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = v4;
      v10 = v14;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_0, v9, 0, "%{public}@: library-daap dictionary: %@", &v13, 22);

      if (!v11)
      {
LABEL_15:

        v12 = [v4 objectForKey:@"base-url"];
        *(*(*(a1 + 48) + 8) + 24) = v12 != 0;

        goto LABEL_16;
      }

      v9 = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 40));
}