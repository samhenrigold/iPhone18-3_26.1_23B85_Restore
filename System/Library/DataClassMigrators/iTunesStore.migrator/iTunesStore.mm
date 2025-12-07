void sub_2C5C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _logConfig];
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

  v9 = 138543618;
  v10 = objc_opt_class();
  v11 = 2114;
  v12 = v2;
  v7 = v10;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_0, v6, 0, "[%{public}@]: AppStore Migrator scheduled: %{public}@", &v9, 22);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

void sub_2DF8(uint64_t a1)
{
  v1 = [objc_opt_class() _logConfig];
  if (!v1)
  {
    v1 = +[SSLogConfig sharedConfig];
  }

  v2 = [v1 shouldLog];
  if ([v1 shouldLogToDisk])
  {
    LODWORD(v3) = v2 | 2;
  }

  else
  {
    LODWORD(v3) = v2;
  }

  v4 = [v1 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v3;
  }

  else
  {
    v3 &= 2u;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  v7 = 138543362;
  v8 = objc_opt_class();
  v5 = v8;
  v6 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_0, v4, 0, "[%{public}@]: iTunes Migrator Scheduled", &v7, 12);

  if (v6)
  {
    v4 = [NSString stringWithCString:v6 encoding:4];
    free(v6);
    SSFileLog();
LABEL_12:
  }
}

void sub_2F7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedDataMigrationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = NSStringFromSelector(*(a1 + 48));
      v19 = 138544130;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@ Error running the device offer registration. error = %{public}@.", &v19, 0x2Au);
    }
  }

  [AMSDefaults setMigratedDeviceOffers:1];
  v12 = +[AMSLogConfig sharedDataMigrationConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    v16 = NSStringFromSelector(*(a1 + 48));
    v17 = +[NSDate date];
    [v17 timeIntervalSinceDate:*(a1 + 40)];
    v19 = 138544130;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    v25 = 2048;
    v26 = v18;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ finished. executionTime = %f", &v19, 0x2Au);
  }
}

void sub_321C(id a1)
{
  v3 = objc_alloc_init(SSMutableLogConfig);
  [v3 setCategory:@"migrator"];
  [v3 setSubsystem:@"com.apple.itunesstored"];
  v1 = [v3 copy];
  v2 = qword_14538;
  qword_14538 = v1;
}

void sub_52F4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
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

    if (!v8)
    {
      goto LABEL_24;
    }

    v18 = 138543362;
    v19 = objc_opt_class();
    v10 = v19;
    v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_0, v9, 0, "%{public}@: Success migrating the value for AutomaticDownloadKinds to the active account.", &v18, 12);
  }

  else
  {
    v6 = +[SSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v12 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v13) = v12 | 2;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    v16 = v14;
    v17 = [v15 hashedDescription];
    v18 = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v17;
    v22 = 2114;
    v23 = v5;
    v11 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_0, v9, 16, "%{public}@: Failed to save the active account after migrating the AutomaticDownloadKinds default. account = %{public}@ | error = %{public}@", &v18, 32);
  }

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
LABEL_24:
  }
}

void sub_5E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5E50(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
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
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v5;
      v11 = v14;
      v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_0, v9, 16, "%{public}@: We failed to remove the duplicate, unmigrated sandbox account. error = %{public}@", &v13, 22);

      if (!v12)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

void sub_6564(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (!v7)
    {
      goto LABEL_24;
    }

    *v14 = 138543362;
    *&v14[4] = objc_opt_class();
    v9 = *&v14[4];
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_0, v8, 0, "%{public}@: Success saving the active account after migrating ServerPrompt defaults to it.", v14, 12, *v14, *&v14[8]);
  }

  else
  {
    v5 = +[SSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v11 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v12) = v11 | 2;
    }

    else
    {
      LODWORD(v12) = v11;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (!v12)
    {
      goto LABEL_24;
    }

    *v14 = 138543618;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 2114;
    *&v14[14] = v4;
    v9 = *&v14[4];
    v10 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_0, v8, 16, "%{public}@: Failed to save the active account after migrating ServerPrompt defaults to it. error = %{public}@", v14, 22, *v14, *&v14[8]);
  }

  v13 = v10;

  if (v13)
  {
    v8 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_24:
  }
}

void sub_6B04(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedAccountsMigrationConfig];
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
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = [v11 hashedDescription];
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v5;
      v14 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_0, v9, 16, "%{public}@: Failed to remove a PET from an account. account = %{public}@ | error = %{public}@", &v15, 32);

      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [NSString stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

id sub_7A34(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive])
  {
    v4 = [v3 backingAccount];
    v5 = [v4 identifier];
    v6 = [*(a1 + 32) backingAccount];
    v7 = [v6 identifier];
    v8 = [v5 isEqualToString:v7];
  }

  else
  {
    v8 = &dword_0 + 1;
  }

  return v8;
}

void sub_7ADC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedAccountsMigrationConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 hashedDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v14;
    v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_0, v10, 0, "%{public}@: Successfully deactivated %{public}@.", v21, 22, *v21, *&v21[8], v22);
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v17) = v16 | 2;
    }

    else
    {
      LODWORD(v17) = v16;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = objc_opt_class();
    v19 = *(a1 + 32);
    v13 = v18;
    v14 = [v19 hashedDescription];
    *v21 = 138543874;
    *&v21[4] = v18;
    *&v21[12] = 2114;
    *&v21[14] = v14;
    *&v21[22] = 2112;
    v15 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_0, v10, 16, "%{public}@: Failed to deactivate %{public}@. error = %@", v21, 32, *v21, *&v21[8], v5);
  }

  v20 = v15;

  if (v20)
  {
    v10 = [NSString stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_24:
  }
}

int64_t sub_8170(id a1, SSAccount *a2, SSAccount *a3)
{
  v4 = a3;
  v5 = [(SSAccount *)a2 backingAccount];
  v6 = [(SSAccount *)v4 backingAccount];

  v7 = [v5 creationDate];
  v8 = [v6 creationDate];
  v9 = [v7 compare:v8];

  return v9;
}

int64_t sub_8730(id a1, SSAccount *a2, SSAccount *a3)
{
  v4 = a3;
  v5 = [(SSAccount *)a2 backingAccount];
  v6 = [(SSAccount *)v4 backingAccount];

  v7 = [v5 creationDate];
  v8 = [v6 creationDate];
  v9 = [v7 compare:v8];

  return v9;
}

void sub_87D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedAccountsMigrationConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 hashedDescription];
    *v21 = 138543618;
    *&v21[4] = v11;
    *&v21[12] = 2114;
    *&v21[14] = v14;
    v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_0, v10, 0, "%{public}@: Successfully merged duplicate accounts. The remaining account is %{public}@.", v21, 22, *v21, *&v21[8], v22);
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v16 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v17) = v16 | 2;
    }

    else
    {
      LODWORD(v17) = v16;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = objc_opt_class();
    v19 = *(a1 + 32);
    v13 = v18;
    v14 = [v19 hashedDescription];
    *v21 = 138543874;
    *&v21[4] = v18;
    *&v21[12] = 2114;
    *&v21[14] = v14;
    *&v21[22] = 2114;
    v15 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_0, v10, 16, "%{public}@: Failed to merge duplicate accounts. primaryAccount = %{public}@ | error = %{public}@", v21, 32, *v21, *&v21[8], v5);
  }

  v20 = v15;

  if (v20)
  {
    v10 = [NSString stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_24:
  }
}

void sub_9150(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[SSLogConfig sharedAccountsMigrationConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v4;
      v9 = v12;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_0, v8, 16, "%{public}@: Failed to save the account after converting the NSString to a NSNumber. error = %{public}@", &v11, 22);

      if (!v10)
      {
LABEL_14:

        goto LABEL_15;
      }

      v8 = [NSString stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}