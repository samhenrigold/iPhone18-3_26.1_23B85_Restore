uint64_t sub_10007F054(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E3418 = result;
  return result;
}

void sub_10007F0C8(uint64_t a1)
{
  sub_10007EF58();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSAuthenticationSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3420 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B490();
    [(AMSDPushParsableDismissQRDialog *)v2 handleNotificationPayload:v3 config:v4 bag:v5, v6];
  }
}

void sub_10007F8AC(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = 138544130;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Data cache update result: %d error: %{public}@", &v9, 0x26u);
  }
}

void sub_10007F9DC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[AMSLogConfig sharedAccountsConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Account data sync returned error: %{public}@", &v7, 0x20u);
    }
  }
}

void sub_10007FB00(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[AMSLogConfig sharedAccountsConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] TS data sync returned error: %{public}@", &v7, 0x20u);
    }
  }
}

void sub_10007FEC0(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v8 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated the multi-user tokens.", &v12, 0xCu);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSHashIfNeeded();
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update the multi-user tokens. error = %{public}@", &v12, 0x16u);
    }
  }
}

id sub_100080850(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = AMSLogKey();
    v5 = objc_opt_class();
    v6 = v5;
    v31 = v4;
    if (v4)
    {
      v29 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v6, v29];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v5];
    }
    v7 = ;
    v30 = [*(a1 + 32) account];
    v8 = [v30 ams_DSID];
    v9 = AMSHashIfNeeded();
    v10 = [*(a1 + 32) environment];
    v11 = [*(a1 + 32) token];
    v12 = [v11 base64EncodedStringWithOptions:0];
    v13 = AMSHashIfNeeded();
    *buf = 138544130;
    v35 = v7;
    v36 = 2114;
    v37 = v9;
    v38 = 2114;
    v39 = v10;
    v40 = 2114;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Performing token registration. account: %{public}@ | environment: %{public}@ | token: %{public}@", buf, 0x2Au);

    if (v31)
    {

      v7 = v29;
    }
  }

  v14 = [*(a1 + 32) token];
  if (v14 && (v15 = v14, [*(a1 + 32) bag], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    v17 = objc_opt_class();
    v18 = [*(a1 + 32) account];
    v19 = [*(a1 + 32) environment];
    v20 = [*(a1 + 32) token];
    v21 = [v17 shouldPerformForAccount:v18 environment:v19 token:v20];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100080C08;
    v32[3] = &unk_1002B1EA8;
    v32[4] = *(a1 + 32);
    v33 = 0;
    v22 = [v21 thenWithBlock:v32];
  }

  else
  {
    v23 = [*(a1 + 32) bag];
    if (v23)
    {
      v24 = @"true";
    }

    else
    {
      v24 = @"false";
    }

    v25 = [*(a1 + 32) token];
    if (v25)
    {
      v26 = @"true";
    }

    else
    {
      v26 = @"false";
    }

    v28 = v26;
    v18 = AMSErrorWithFormat();

    v22 = [AMSPromise promiseWithError:v18, v24, v28];
  }

  return v22;
}

id sub_100080C08(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [AMSPushRegisterTask alloc];
    v4 = [*(a1 + 32) account];
    v5 = [*(a1 + 32) token];
    v6 = [*(a1 + 32) environment];
    v7 = [*(a1 + 32) bag];
    v8 = [v3 initWithAccount:v4 token:v5 environment:v6 bag:v7];

    v9 = [v8 performTask];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100080E38;
    v15[3] = &unk_1002AFDD8;
    v15[4] = *(a1 + 32);
    [v9 addErrorBlock:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100080FD0;
    v14[3] = &unk_1002B1E58;
    v14[4] = *(a1 + 32);
    [v9 addSuccessBlock:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100081158;
    v12[3] = &unk_1002B1E80;
    v13 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    [v9 addFinishBlock:v12];
  }

  else
  {
    v10 = AMSError();
    v9 = [AMSPromise promiseWithError:v10];
  }

  return v9;
}

void sub_100080E38(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSLogableError();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Token registration failed with error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

void sub_100080FD0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 token];
  [v2 _updateCachedCriteriaWithToken:v3];

  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    *buf = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Token registration succeeded", buf, 0xCu);
    if (v6)
    {

      v9 = v1;
    }
  }
}

void sub_100081158(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = objc_opt_class();
    v5 = [*(a1 + 32) account];
    v4 = [*(a1 + 32) environment];
    [v3 _updateThrottleForAccount:v5 environment:v4];
  }
}

id sub_1000815EC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 BOOLValue] & 1) == 0)
  {
    v11 = v4;
LABEL_21:
    v23 = [AMSPromise promiseWithResult:v11];
    goto LABEL_22;
  }

  if ([*(a1 + 56) _shouldThrottleForAccount:*(a1 + 32) environment:*(a1 + 40)])
  {
    v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AMSLogKey();
      v8 = objc_opt_class();
      v9 = v8;
      if (v7)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v9, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v8];
      }
      v10 = ;
      v24 = AMSHashIfNeeded();
      v25 = AMSHashIfNeeded();
      *buf = 138543874;
      v28 = v10;
      v29 = 2114;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Throttling registration. account: %{public}@ | environment: %{public}@", buf, 0x20u);
      if (v7)
      {

        v10 = v2;
      }
    }

    v11 = &__kCFBooleanFalse;
    goto LABEL_21;
  }

  v12 = [*(a1 + 56) _createCriteriaWithToken:*(a1 + 48)];
  v13 = [*(a1 + 32) ams_registerSuccessCriteria];
  v14 = [v13 objectForKeyedSubscript:*(a1 + 40)];

  v15 = [v14 isEqualToString:v12];
  if (v15)
  {
    v16 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = [*(a1 + 32) username];
      v21 = AMSHashIfNeeded();
      *buf = 138543874;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Already posted registration for %{public}@", buf, 0x20u);
    }
  }

  v22 = [NSNumber numberWithInt:v15 ^ 1];
  v23 = [AMSPromise promiseWithResult:v22];

LABEL_22:

  return v23;
}

void sub_1000824F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100082534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceNameChanged];
}

void sub_100082574(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _startConnectionWithEnvironment:a2];
  if (*(a1 + 40))
  {
    v4 = v3;
    [v3 addFinishBlock:?];
    v3 = v4;
  }
}

void sub_100082660(id a1)
{
  qword_1002E3430 = [[AMSDPushService alloc] initWithCompletion:0];

  _objc_release_x1();
}

void sub_100082AD8(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSLogableError();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish connections. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

void sub_100083C44(SEL *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    if (v6)
    {
      v8 = AMSLogKey();
      a1 = NSStringFromSelector(a1[5]);
      [NSString stringWithFormat:@"%@: [%@] %@ ", v7, v8, a1];
    }

    else
    {
      v8 = NSStringFromSelector(a1[5]);
      [NSString stringWithFormat:@"%@: %@ ", v7, v8];
    }
    v9 = ;
    v10 = AMSLogableError();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to post push tokens. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

void sub_100084328(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSLogableError();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to post push tokens after device name change. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

void sub_1000846A0(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSLogableError();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish connections. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

AMSPromise *__cdecl sub_100084AA8(id a1, NSArray *a2)
{
  v2 = [AMSBoolean BOOLeanWithBool:[(NSArray *)a2 count]!= 0];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

AMSPromise *__cdecl sub_100084B20(id a1, NSArray *a2)
{
  v2 = [AMSBoolean BOOLeanWithBool:[(NSArray *)a2 count]!= 0];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id sub_100084B98(uint64_t a1, void *a2)
{
  if ([a2 value])
  {
    v3 = *(a1 + 32);
    v4 = +[AMSDBag defaultBag];
    v5 = [v3 _pushEnvironmentFromBag:v4];
    v6 = [v5 thenWithBlock:&stru_1002B1FF0];
  }

  else
  {
    v4 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v4];
  }

  return v6;
}

AMSPromise *__cdecl sub_100084C5C(id a1, NSString *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id sub_100084CC4(uint64_t a1, void *a2)
{
  if ([a2 value])
  {
    v3 = *(a1 + 32);
    v4 = [AMSDBag bagForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    v5 = [v3 _pushEnvironmentFromBag:v4];
    v6 = [v5 thenWithBlock:&stru_1002B2038];
  }

  else
  {
    v4 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v4];
  }

  return v6;
}

AMSPromise *__cdecl sub_100084D94(id a1, NSString *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

AMSPromise *__cdecl sub_100084DFC(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) value];
        [v3 ams_addNullableObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [NSSet setWithArray:v3];
  v11 = [v10 allObjects];
  v12 = [AMSPromise promiseWithResult:v11];

  return v12;
}

id sub_100084F98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [*(*(a1 + 32) + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if (([v3 containsObject:v10] & 1) == 0)
        {
          v11 = *(a1 + 32);
          v12 = [v11[4] objectForKeyedSubscript:v10];
          [v11 _shutDownConnection:v12 forEnvironment:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * j);
        v19 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v18];

        if (!v19)
        {
          [v4 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  os_unfair_lock_assert_owner((*(a1 + 32) + 8));
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if ([v4 count])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000852BC;
    v24[3] = &unk_1002B2080;
    v24[4] = *(a1 + 32);
    v20 = [v13 ams_mapWithTransform:v24];
    v21 = [AMSPromise promiseWithAll:v20];
  }

  else
  {
    v22 = +[AMSBinaryPromise promiseWithSuccess];
    v21 = [v22 promiseAdapter];
  }

  return v21;
}

id sub_1000852BC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _startConnectionWithEnvironment:a2];
  v3 = [v2 promiseAdapter];

  return v3;
}

id sub_1000856C8(uint64_t a1, void *a2)
{
  v2 = [a2 ams_filterUsingTest:*(a1 + 32)];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id sub_10008572C(uint64_t a1, void *a2)
{
  v2 = [a2 ams_filterUsingTest:*(a1 + 32)];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

AMSPromise *__cdecl sub_100085790(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = [(NSArray *)v2 objectAtIndexedSubscript:1];

  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

void sub_100085844(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSLogableError();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to post push tokens. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

AMSPromise *__cdecl sub_100085A98(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 ams_filterUsingTest:&stru_1002B2170];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void sub_100085D40(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = objc_opt_class();
    v8 = v7;
    if (v6)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v8, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    v10 = AMSHashIfNeeded();
    *buf = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine the push environment. Error: %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

id sub_1000861A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _pushEnvironmentForAccount:v3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100086284;
  v9[3] = &unk_1002B21C0;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 thenWithBlock:v9];

  return v7;
}

id sub_100086284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _connectionForEnvironment:v3];

  if (v4)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100086750;
    v38 = sub_100086760;
    v39 = 0;
    v5 = [*(a1 + 32) registerTaskQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100086768;
    v29[3] = &unk_1002B2198;
    v6 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v6;
    v31 = v3;
    v32 = &v34;
    v33 = *(a1 + 48);
    v7 = v29;
    v8 = v5;
    v9 = AMSLogKey();
    *block = _NSConcreteStackBlock;
    *&block[8] = 3221225472;
    *&block[16] = sub_100087790;
    v41 = &unk_1002B05B8;
    v42 = v9;
    v43 = v7;
    v10 = v9;
    dispatch_sync(v8, block);

    v11 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = AMSLogKey();
      if (v13)
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v16 = [NSString stringWithFormat:@"%@: [%@] ", v14, v15];
      }

      else
      {
        v16 = [NSString stringWithFormat:@"%@: ", objc_opt_class()];
        v15 = v16;
      }

      v24 = AMSHashIfNeeded();
      *block = 138543618;
      *&block[4] = v16;
      *&block[12] = 2114;
      *&block[14] = v24;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Task promise: %{public}@", block, 0x16u);
      if (v13)
      {
      }
    }

    v25 = v35[5];
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v17 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = AMSLogKey();
      v20 = objc_opt_class();
      v21 = v20;
      if (v19)
      {
        v22 = AMSLogKey();
        v23 = [NSString stringWithFormat:@"%@: [%@] ", v21, v22];
      }

      else
      {
        v23 = [NSString stringWithFormat:@"%@: ", v20];
        v22 = v23;
      }

      v26 = AMSHashIfNeeded();
      *block = 138543618;
      *&block[4] = v23;
      *&block[12] = 2114;
      *&block[14] = v26;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@No active connection for this environment. Starting connection. environment = %{public}@", block, 0x16u);
      if (v19)
      {
      }
    }

    v27 = [*(a1 + 32) _startConnectionWithEnvironment:v3];
    v25 = [v27 promiseAdapter];
  }

  return v25;
}

void sub_100086724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100086750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100086768(uint64_t a1)
{
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AMSLogKey();
    v8 = objc_opt_class();
    v9 = v8;
    if (v7)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v2 = ;
    v10 = AMSHashIfNeeded();
    v3 = AMSHashIfNeeded();
    *buf = 138543874;
    v51 = v2;
    v52 = 2114;
    v53 = v10;
    v54 = 2114;
    v55 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Starting push registration. account = %{public}@ | environment = %{public}@", buf, 0x20u);
    if (v7)
    {

      v2 = v1;
    }
  }

  v11 = [*(a1 + 32) _pushTokenForEnvironment:*(a1 + 48)];
  if (!v11 || !*(a1 + 48))
  {
    v12 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = AMSLogKey();
      v15 = objc_opt_class();
      v16 = v15;
      if (v14)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v16, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v23 = AMSHashIfNeeded();
      v24 = AMSHashIfNeeded();
      *buf = 138543874;
      v51 = v17;
      v52 = 2114;
      v53 = v23;
      v54 = 2114;
      v55 = v24;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Either the token or environment is nil. token = %{public}@ | environment = %{public}@", buf, 0x20u);
      if (v14)
      {

        v17 = v2;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if (*(a1 + 64))
  {
    v18 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = AMSLogKey();
      v21 = objc_opt_class();
      v3 = v21;
      if (v20)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v3, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v21];
      }
      v22 = ;
      *buf = 138543362;
      v51 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Checking to see if we should perform push registration.", buf, 0xCu);
      if (v20)
      {

        v22 = v2;
      }
    }

    if ([*(a1 + 40) ams_isLocalAccount])
    {
      goto LABEL_30;
    }

    v29 = [AMSDPushRegisterTask shouldPerformForAccount:*(a1 + 40) environment:*(a1 + 48) token:v11];

    v30 = +[AMSLogConfig sharedAccountsDaemonConfig];
    v12 = v30;
    if (v29)
    {
      if (!v30)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v31 = [v12 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = AMSLogKey();
        v33 = objc_opt_class();
        v3 = v33;
        if (v32)
        {
          v2 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v3, v2];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v33];
        }
        v34 = ;
        *buf = 138543362;
        v51 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%{public}@We should perform push registration.", buf, 0xCu);
        if (v32)
        {

          v34 = v2;
        }
      }

      goto LABEL_53;
    }

    if (!v30)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v35 = AMSLogKey();
      v36 = objc_opt_class();
      v37 = v36;
      if (v35)
      {
        v2 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v37, v2];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v36];
      }
      v38 = ;
      *buf = 138543362;
      v51 = v38;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@We should not perform push registration. Returning success.", buf, 0xCu);
      if (v35)
      {

        v38 = v2;
      }
    }

    goto LABEL_29;
  }

  if ([*(a1 + 40) ams_isLocalAccount])
  {
LABEL_30:
    v25 = +[AMSBinaryPromise promiseWithSuccess];
    v26 = [v25 promiseAdapter];
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
    goto LABEL_31;
  }

LABEL_53:
  v25 = [*(a1 + 32) _bagForAccount:*(a1 + 40)];
  v28 = [[AMSDPushRegisterTask alloc] initWithAccount:*(a1 + 40) token:v11 environment:*(a1 + 48) bag:v25];
  v39 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v39)
  {
    v39 = +[AMSLogConfig sharedConfig];
  }

  v40 = [v39 OSLogObject];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = AMSLogKey();
    v42 = objc_opt_class();
    v43 = v42;
    if (v41)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v43, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v42];
    }
    v44 = ;
    v45 = AMSHashIfNeeded();
    *buf = 138543618;
    v51 = v44;
    v52 = 2114;
    v53 = v45;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%{public}@Created task: %{public}@", buf, 0x16u);
    if (v41)
    {

      v44 = v3;
    }
  }

  v46 = [(AMSDPushRegisterTask *)v28 perform];
  v47 = [v46 promiseAdapter];
  v48 = *(*(a1 + 56) + 8);
  v49 = *(v48 + 40);
  *(v48 + 40) = v47;

LABEL_31:
}

uint64_t sub_100087790(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100087DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100087DC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    result = [v2 isScheduled];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

AMSDRefreshMultiUserResult *sub_1000881E8(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = [*(a1 + 32) homes];
    v7 = AMSHashIfNeeded();
    v8 = [*(a1 + 32) options];
    v9 = AMSHashIfNeeded();
    v27 = 138544130;
    v28 = v4;
    v29 = 2114;
    v30 = v5;
    v31 = 2114;
    v32 = v7;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting a Multi-User refresh. homes = %{public}@ | options = %{public}@", &v27, 0x2Au);
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = [*(a1 + 32) metrics];

  if (!v11)
  {
    v12 = objc_alloc_init(AMSDMultiUserMetrics);
    [*(a1 + 32) setMetrics:v12];
  }

  v13 = [*(a1 + 32) metrics];
  v14 = [*(a1 + 32) options];
  v15 = [v13 enqueueMultiUserRefreshBeginEventWithOptions:v14];

  [*(a1 + 32) _createMultiUserTokensWithErrors:v10];
  [*(a1 + 32) _reconcileiTunesAccountsWithErrors:v10];
  [*(a1 + 32) _reconcileRecordZonesWithErrors:v10];
  [*(a1 + 32) _refreshCloudDatabasesWithErrors:v10];
  [*(a1 + 32) _configurePreferredMediaUser:v10];
  [*(a1 + 32) _transferHomeSettingsToAccountsWithErrors:v10];
  if ([v10 count])
  {
    v16 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = AMSLogableErrors();
      v27 = 138543874;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The refresh failed. errors = %{public}@", &v27, 0x20u);

LABEL_16:
    }
  }

  else
  {
    [*(a1 + 32) _removeRenewCredentialsFollowUp];
    v16 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v19 = AMSLogKey();
      v27 = 138543618;
      v28 = v21;
      v29 = 2114;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The refresh succeeded.", &v27, 0x16u);
      goto LABEL_16;
    }
  }

  v22 = [AMSDRefreshMultiUserResult alloc];
  v23 = [*(a1 + 32) homes];
  v24 = [*(a1 + 32) options];
  v25 = [(AMSDRefreshMultiUserResult *)v22 initWithHomes:v23 options:v24];

  [(AMSDRefreshMultiUserResult *)v25 setErrors:v10];

  return v25;
}

void sub_100089254(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a1;
  v6 = *(a1 + 32);
  v9 = 0;
  [v6 _createMultiUserTokenForHome:a2 error:&v9];
  v7 = v9;
  [*(v5 + 40) ams_addNullableObject:v7];
  LODWORD(v5) = sub_100048940(*(v5 + 40), v8);

  if (v5)
  {
    *a4 = 1;
  }
}

void sub_100089568(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 isDefaultRecordZone] & 1) == 0)
  {
    v65 = a4;
    v7 = [AMSDHomeManager identifiersForRecordZone:v6 inDatabase:*(a1 + 32)];
    v74 = 0;
    v8 = [v7 resultWithError:&v74];
    v9 = v74;

    if (v9)
    {
      v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = AMSLogKey();
        AMSHashIfNeeded();
        v15 = v14 = v9;
        AMSLogableError();
        v17 = v16 = v8;
        *buf = 138544130;
        v77 = v12;
        v78 = 2114;
        v79 = v13;
        v80 = 2114;
        v81 = v15;
        v82 = 2114;
        v83 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch a home/user identifiers from a record zone. recordZone = %{public}@ | error = %{public}@", buf, 0x2Au);

        v8 = v16;
        v9 = v14;
      }

      if ([v9 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7])
      {
        if (!v8)
        {
          goto LABEL_30;
        }

        v66 = v9;
        v18 = 1;
LABEL_13:
        v19 = [v8 first];
        v67 = [v8 second];
        v20 = [*(a1 + 40) homes];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_100089DC8;
        v72[3] = &unk_1002B1038;
        v21 = v19;
        v73 = v21;
        v22 = [v20 ams_firstObjectPassingTest:v72];

        if (v21 && v22)
        {
          v23 = v8;
          v24 = [v22 users];
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_100089E0C;
          v70[3] = &unk_1002B0248;
          v71 = v67;
          v25 = [v24 ams_anyWithTest:v70];

          if ((v25 & 1) == 0)
          {
            v26 = [*(a1 + 40) options];
            v27 = [v26 reasonType];

            if (v27)
            {
              v28 = +[AMSLogConfig sharedAccountsMultiUserConfig];
              if (!v28)
              {
                v28 = +[AMSLogConfig sharedConfig];
              }

              v29 = [v28 OSLogObject];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v61 = objc_opt_class();
                v63 = AMSLogKey();
                v30 = AMSHashIfNeeded();
                v31 = AMSHashIfNeeded();
                v32 = AMSHashIfNeeded();
                *buf = 138544386;
                v77 = v61;
                v78 = 2114;
                v79 = v63;
                v80 = 2114;
                v81 = v30;
                v82 = 2114;
                v83 = v31;
                v84 = 2114;
                v85 = v32;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Remove record zone, user not found in home. homeIdentifier = %{public}@ | userIdentifier = %{public}@ | recordZone = %{public}@", buf, 0x34u);
              }

              v18 = 1;
            }
          }

          v8 = v23;
          goto LABEL_29;
        }

        v33 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v33)
        {
          v33 = +[AMSLogConfig sharedConfig];
        }

        v34 = [v33 OSLogObject];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v62 = a1;
          v35 = v18;
          v36 = v8;
          v37 = objc_opt_class();
          v38 = AMSLogKey();
          v39 = AMSHashIfNeeded();
          AMSHashIfNeeded();
          v40 = v64 = v22;
          *buf = 138544130;
          v77 = v37;
          v8 = v36;
          v18 = v35;
          a1 = v62;
          v78 = 2114;
          v79 = v38;
          v80 = 2114;
          v81 = v39;
          v82 = 2114;
          v83 = v40;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A record zone is associated with a non-existent home. homeIdentifier = %{public}@ | recordZone = %{public}@", buf, 0x2Au);

          v22 = v64;
        }

        if (!v21)
        {
LABEL_29:

          v9 = v66;
          if (v18)
          {
            goto LABEL_30;
          }

LABEL_41:
          v54 = v9;
LABEL_42:

          goto LABEL_43;
        }

        v41 = [[AMSDLeaveMultiUserHomeTask alloc] initWithHomeIdentifier:v21];
        [(AMSDLeaveMultiUserHomeTask *)v41 setRunMode:1];
        v42 = [(AMSDLeaveMultiUserHomeTask *)v41 performTask];
        v69 = 0;
        [v42 resultWithError:&v69];
        v43 = v69;

        [*(a1 + 48) ams_addNullableObject:v43];
        v9 = v66;
LABEL_30:
        v44 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v44)
        {
          v44 = +[AMSLogConfig sharedConfig];
        }

        v45 = [v44 OSLogObject];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = objc_opt_class();
          v47 = AMSLogKey();
          v48 = AMSHashIfNeeded();
          *buf = 138543874;
          v77 = v46;
          v78 = 2114;
          v79 = v47;
          v80 = 2114;
          v81 = v48;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing the record zone. recordZone = %{public}@", buf, 0x20u);
        }

        v49 = *(a1 + 32);
        v50 = [v6 identifier];
        v75 = v50;
        v51 = [NSArray arrayWithObjects:&v75 count:1];
        v52 = [v49 deleteRecordZonesWithRecordZoneIdentifiers:v51];
        v68 = v9;
        v53 = [v52 resultWithError:&v68];
        v54 = v68;

        if (!v53)
        {
          v55 = +[AMSLogConfig sharedAccountsMultiUserConfig];
          if (!v55)
          {
            v55 = +[AMSLogConfig sharedConfig];
          }

          v56 = [v55 OSLogObject];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = objc_opt_class();
            v58 = AMSLogKey();
            v59 = AMSLogableError();
            *buf = 138543874;
            v77 = v57;
            v78 = 2114;
            v79 = v58;
            v80 = 2114;
            v81 = v59;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove the record zone. error = %{public}@", buf, 0x20u);
          }

          [*(a1 + 48) ams_addNullableObject:v54];
          if (sub_100048940(*(a1 + 48), v60))
          {
            *v65 = 1;
          }
        }

        goto LABEL_42;
      }

      [*(a1 + 48) addObject:v9];
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    v66 = v9;
    v18 = 0;
    goto LABEL_13;
  }

LABEL_43:
}

id sub_100089DC8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id sub_100089E0C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100089F9C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppleMediaServices.AMSDSecurityService", v3);
  v2 = qword_1002E3440;
  qword_1002E3440 = v1;
}

void sub_10008A174(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10008AC7C(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    *buf = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running biometric token update", buf, 0x16u);
  }

  v7 = [[AMSDBiometricsTokenUpdateTask alloc] initWithAccount:*(a1 + 40)];
  [(AMSDBiometricsTokenUpdateTask *)v7 setAdditionalDialogMetrics:*(a1 + 48)];
  [(AMSDBiometricsTokenUpdateTask *)v7 setClientInfo:*(a1 + 56)];
  v8 = [*(a1 + 32) delegate];
  [(AMSDBiometricsTokenUpdateTask *)v7 setDelegate:v8];

  [(AMSDBiometricsTokenUpdateTask *)v7 setShouldGenerateKeysOnly:*(a1 + 72)];
  [(AMSDBiometricsTokenUpdateTask *)v7 setShouldRequestConfirmation:*(a1 + 73)];
  [(AMSDBiometricsTokenUpdateTask *)v7 setUserInitiated:*(a1 + 74)];
  v9 = [(AMSDBiometricsTokenUpdateTask *)v7 performUpdate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008AE88;
  v10[3] = &unk_1002B0498;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 64);
  [v9 addFinishBlock:v10];
}

void sub_10008AE88(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics token update completed successfully.", buf, 0x16u);
LABEL_10:
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v10 = v12;
      v11 = AMSLogKey();
      v13 = AMSLogableError();
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Biometrics token update failed with error: %{public}@", buf, 0x20u);

      goto LABEL_10;
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10008B180;
    v19[3] = &unk_1002B2310;
    v21 = v14;
    v22 = a2;
    v20 = v5;
    v15 = v19;
    v16 = AMSLogKey();
    v17 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008EFC0;
    v24 = &unk_1002B05B8;
    v25 = v16;
    v26 = v15;
    v18 = v16;
    dispatch_async(v17, buf);
  }
}

void sub_10008B180(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008B2B0(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = objc_opt_class();
    v7 = v6;
    if (v5)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v7, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v6];
    }
    v8 = ;
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Verifying device passcode.", buf, 0xCu);
    if (v5)
    {

      v8 = v1;
    }
  }

  v9 = +[AMSProcessInfo currentProcess];
  v10 = [[_TtC12amsaccountsd28AMSDVerifyDevicePasscodeTask alloc] initWithClientInfo:v9];
  v11 = [(AMSDVerifyDevicePasscodeTask *)v10 perform];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008B4C8;
  v13[3] = &unk_1002B0498;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v11 addFinishBlock:v13];
}

void sub_10008B4C8(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (a2)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = objc_opt_class();
      v12 = v11;
      if (v10)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v12, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Device passcode verification completed successfully.", buf, 0xCu);
      if (v10)
      {

        v13 = v3;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSLogKey();
      v15 = objc_opt_class();
      v16 = v15;
      if (v14)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v16, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v18 = AMSLogableError();
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Device passcode verification failed with error: %{public}@", buf, 0x16u);
      if (v14)
      {

        v17 = v3;
      }
    }
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10008B864;
    v24[3] = &unk_1002B2310;
    v26 = v19;
    v27 = a2;
    v25 = v6;
    v20 = v24;
    v21 = AMSLogKey();
    v22 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008EFC0;
    v29 = &unk_1002B05B8;
    v30 = v21;
    v31 = v20;
    v23 = v21;
    dispatch_async(v22, buf);
  }
}

void sub_10008B864(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008BA2C(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = objc_opt_class();
    v7 = v6;
    if (v5)
    {
      v1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v7, v1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v6];
    }
    v8 = ;
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Perform Remote Sign In Task", buf, 0xCu);
    if (v5)
    {

      v8 = v1;
    }
  }

  v9 = [[_TtC12amsaccountsd20AMSDRemoteSignInTask alloc] initWithAuthenticationResults:*(a1 + 40) signInContext:*(a1 + 48) serviceTypes:*(a1 + 56) clientInfo:*(a1 + 64)];
  v10 = [(AMSDRemoteSignInTask *)v9 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008BC34;
  v11[3] = &unk_1002B2388;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 72);
  [v10 resultWithCompletion:v11];
}

void sub_10008BC34(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = +[AMSLogConfig sharedConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = objc_opt_class();
      v14 = v13;
      if (v12)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@%@ finished successfully", buf, 0x16u);
      if (v12)
      {

        v15 = v3;
      }
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = objc_opt_class();
      v19 = v18;
      if (v17)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v19, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      v21 = AMSLogableError();
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2114;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@%@ failed with error: %{public}@", buf, 0x20u);
      if (v17)
      {

        v20 = v3;
      }
    }
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10008C020;
    v27[3] = &unk_1002B2360;
    v30 = v22;
    v28 = v6;
    v29 = v7;
    v23 = v27;
    v24 = AMSLogKey();
    v25 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008EFC0;
    v32 = &unk_1002B05B8;
    v33 = v24;
    v34 = v23;
    v26 = v24;
    dispatch_async(v25, buf);
  }
}

void sub_10008C020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008C2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10008C320(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v5 = qword_1002E3448;
  v44 = qword_1002E3448;
  if (!qword_1002E3448)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008F00C;
    v46 = &unk_1002B0728;
    v47 = &v41;
    sub_10008F00C(buf);
    v5 = v42[3];
  }

  v6 = v5;
  _Block_object_dispose(&v41, 8);
  v7 = objc_alloc_init(v5);
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2050;
      v46 = 4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] calling paymentServicesMerchantURLForAPIType. APIType = %{public}ld", buf, 0x20u);
    }

    v12 = NSStringFromSelector("paymentServicesMerchantURLForAPIType:completion:");
    v13 = [AMSDeallocGuard alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10008C8E8;
    v37[3] = &unk_1002B0298;
    v40 = *(a1 + 48);
    v37[4] = WeakRetained;
    v38 = v12;
    v14 = v3;
    v39 = v14;
    v15 = v12;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10008CB6C;
    v32[3] = &unk_1002B23D8;
    v33 = [v13 initWithDeallocGuardBlock:v37];
    v34 = WeakRetained;
    v35 = *(a1 + 32);
    v36 = v14;
    v16 = v33;
    [v7 paymentServicesMerchantURLForAPIType:4 completion:v32];
  }

  else
  {
    v17 = +[AMSUnitTests isRunningUnitTests];
    v18 = +[AMSLogConfig sharedConfig];
    v19 = v18;
    if (v17)
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = AMSLogKey();
        v22 = v21 == 0;
        v23 = objc_opt_class();
        v24 = v23;
        if (v21)
        {
          v22 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v24, v22];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v23];
        }
        v25 = ;
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to load PKInAppPaymentService", buf, 0xCu);
        if (v21)
        {

          v25 = v22;
        }
      }

      v19 = +[NSNotificationCenter defaultCenter];
      v26 = +[AMSLogConfig sharedConfig];
      [v19 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v18)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v19 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = AMSLogKey();
        v28 = v27 == 0;
        v29 = objc_opt_class();
        v30 = v29;
        if (v27)
        {
          v28 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v30, v28];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v29];
        }
        v31 = ;
        *buf = 138543362;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "%{public}@Failed to load PKInAppPaymentService", buf, 0xCu);
        if (v27)
        {

          v31 = v28;
        }
      }
    }

    v15 = AMSError();
    [v3 finishWithError:v15];
  }
}

void sub_10008C8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008C8E8(uint64_t a1)
{
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 40);
      *buf = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v10 = +[AMSLogConfig sharedConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v10 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v4 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = *(a1 + 40);
      *buf = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }
  }

  v15 = [NSString stringWithFormat:@"Completion handler for %@ deallocated without being invoked", *(a1 + 40)];
  v16 = AMSError();

  [*(a1 + 48) finishWithError:v16];
}

void sub_10008CB6C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) invalidate];
  v6 = +[AMSLogConfig sharedConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [v5 absoluteString];
      v12 = AMSHashIfNeeded();
      v17 = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Payment services call succeeded with Merchant URL: %{public}@", &v17, 0x20u);
    }

    [*(a1 + 56) finishWithResult:v5];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v7 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = 138543618;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Payment services call failed", &v17, 0x16u);
    }

    v16 = AMSError();
    [*(a1 + 56) finishWithError:v16];
  }
}

void sub_10008CD70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a3 ams_sanitizedForSecureCoding];
  (*(v3 + 16))(v3, v4, v5);
}

void sub_10008D330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008D370(void *a1, id a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = a1[5];
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Performing biometric/ACL check", buf, 0x16u);
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v11 = qword_1002E3458;
    v19 = qword_1002E3458;
    if (!qword_1002E3458)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10008F1D4;
      v21 = &unk_1002B0728;
      v22 = &v16;
      sub_10008F1D4(buf);
      v11 = v17[3];
    }

    v12 = v11;
    _Block_object_dispose(&v16, 8);
    a2 = [v11 canPerformPSD2StyleBuyForAccessControlRef:{*(*(a1[7] + 8) + 24), v16}];
  }

  v13 = *(*(a1[7] + 8) + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[6];
  v15 = [v5 ams_sanitizedForSecureCoding];
  (*(v14 + 16))(v14, a2, v15);
}

void sub_10008D914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D950(uint64_t a1, void *a2)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v4 = qword_1002E3468;
  v47 = qword_1002E3468;
  if (!qword_1002E3468)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10008F38C;
    v49 = &unk_1002B0728;
    v50[0] = &v44;
    sub_10008F38C(buf);
    v4 = v45[3];
  }

  v5 = v4;
  _Block_object_dispose(&v44, 8);
  v6 = objc_alloc_init(v4);
  if (v6)
  {
    v7 = [NSSet setWithObject:*(a1 + 32)];
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = AMSHashIfNeeded();
      *buf = 138544130;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2050;
      v49 = 13;
      LOWORD(v50[0]) = 2114;
      *(v50 + 2) = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] calling hasInAppPaymentPasses. capabilities = %{public}ld | issuerCountryCodes = %{public}@", buf, 0x2Au);
    }

    v13 = NSStringFromSelector("hasInAppPaymentPassesForNetworks:capabilities:issuerCountryCodes:withHandler:");
    v14 = [AMSDeallocGuard alloc];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10008DF48;
    v40[3] = &unk_1002B0298;
    v43 = *(a1 + 64);
    v40[4] = WeakRetained;
    v41 = v13;
    v15 = v35;
    v42 = v15;
    v16 = v13;
    v17 = [v14 initWithDeallocGuardBlock:v40];
    v18 = *(a1 + 48);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10008E1CC;
    v36[3] = &unk_1002B2478;
    v37 = v17;
    v38 = WeakRetained;
    v39 = v15;
    v19 = v17;
    [v6 hasInAppPaymentPassesForNetworks:v18 capabilities:13 issuerCountryCodes:v7 withHandler:v36];
  }

  else
  {
    v20 = +[AMSUnitTests isRunningUnitTests];
    v21 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    v22 = +[AMSLogConfig sharedConfig];
    v23 = v22;
    if (v20)
    {
      if (!v22)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = AMSLogKey();
        v26 = v25 == 0;
        v27 = objc_opt_class();
        v28 = v27;
        if (v25)
        {
          v26 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v28, v26];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v27];
        }
        v29 = ;
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to load PKPassLibrary", buf, 0xCu);
        if (v25)
        {

          v29 = v26;
        }
      }

      v23 = +[NSNotificationCenter defaultCenter];
      v30 = +[AMSLogConfig sharedConfig];
      [v23 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v30 userInfo:0];
    }

    else
    {
      if (!v22)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v23 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = AMSLogKey();
        v32 = objc_opt_class();
        v33 = v32;
        if (v31)
        {
          v21 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v33, v21];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v32];
        }
        v34 = ;
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "%{public}@Failed to load PKPassLibrary", buf, 0xCu);
        if (v31)
        {

          v34 = v21;
        }
      }
    }

    v7 = AMSError();
    [v35 finishWithError:v7];
  }
}

void sub_10008DF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008DF48(uint64_t a1)
{
  v2 = +[AMSUnitTests isRunningUnitTests];
  v3 = +[AMSLogConfig sharedConfig];
  v4 = v3;
  if (v2)
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 40);
      *buf = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    v10 = +[AMSLogConfig sharedConfig];
    [v4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v10 userInfo:0];
  }

  else
  {
    if (!v3)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v4 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = *(a1 + 40);
      *buf = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "[%{public}@ %{public}@]: Completion handler for %{public}@ deallocated without being invoked", buf, 0x20u);
    }
  }

  v15 = [NSString stringWithFormat:@"Completion handler for %@ deallocated without being invoked", *(a1 + 40)];
  v16 = AMSError();

  [*(a1 + 48) finishWithError:v16];
}

void sub_10008E1CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) invalidate];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = AMSSetLogKeyIfNeeded();
    v8 = [NSNumber numberWithBool:a2];
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] hasInAppPaymentPasses completed with value: %{public}@", &v11, 0x20u);
  }

  v9 = *(a1 + 48);
  v10 = [NSNumber numberWithBool:a2];
  [v9 finishWithResult:v10];
}

void sub_10008E448(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = +[AMSDBag defaultBag];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008E50C;
  v6[3] = &unk_1002B24C8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 _absintheHeadersForRequest:v3 bag:v4 buyParams:v5 completion:v6];
}

void sub_10008E50C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10008E674(uint64_t a1)
{
  v2 = [[AMSBiometricsSignatureTask alloc] initWithRequest:*(a1 + 32)];
  v3 = [v2 performSignatureFromService];
  v4 = [v3 promiseWithTimeout:60.0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E74C;
  v5[3] = &unk_1002B2518;
  v6 = *(a1 + 40);
  [v4 addFinishBlock:v5];
}

void sub_10008E74C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008E8B8;
    v12[3] = &unk_1002B2360;
    v15 = v7;
    v13 = v5;
    v14 = v6;
    v8 = v12;
    v9 = AMSLogKey();
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008EFC0;
    block[3] = &unk_1002B05B8;
    v17 = v9;
    v18 = v8;
    v11 = v9;
    dispatch_async(v10, block);
  }
}

void sub_10008E8B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) ams_sanitizedForSecureCoding];
  (*(v2 + 16))(v2, v1, v3);
}

void sub_10008EAF8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = a1[5];
      v25 = 138543874;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed with error: %{public}@", &v25, 0x20u);
    }

    v11 = v6;
    v12 = 0;
  }

  else
  {
    v13 = [v5 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v15 = +[AMSLogConfig sharedConfig];
    v16 = v15;
    if (isKindOfClass)
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = a1[5];
        v25 = 138543618;
        v26 = v18;
        v27 = 2114;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent-enrollment payment session completed successfully", &v25, 0x16u);
      }

      v12 = v13;
      v11 = 0;
    }

    else
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v16 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = a1[5];
        v25 = 138543618;
        v26 = v21;
        v27 = 2114;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed to deserialize JSON response", &v25, 0x16u);
      }

      v11 = AMSError();
      v12 = 0;
    }
  }

  v23 = a1[6];
  if (v23)
  {
    v24 = [v11 ams_sanitizedForSecureCoding];
    (*(v23 + 16))(v23, v12, v24);
  }
}

uint64_t sub_10008EFC0(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10008F00C(uint64_t a1)
{
  sub_10008F064();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKInAppPaymentService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3448 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B364();
    sub_10008F064();
  }
}

void sub_10008F064()
{
  v1[0] = 0;
  if (!qword_1002E3450)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10008F160;
    v1[4] = &unk_1002B0760;
    v1[5] = v1;
    v2 = off_1002B2560;
    v3 = 0;
    qword_1002E3450 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002E3450)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10008F160(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E3450 = result;
  return result;
}

Class sub_10008F1D4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E3460)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10008F318;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B2578;
    v6 = 0;
    qword_1002E3460 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E3460)
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
  result = objc_getClass("PKAuthenticator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B4E0();
  }

  qword_1002E3458 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10008F318(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E3460 = result;
  return result;
}

AMSDServiceConnection *sub_10008F38C(uint64_t a1)
{
  sub_10008F064();
  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3468 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B508();
    return [(AMSDServiceConnection *)v3 initWithConnection:v4, v5];
  }

  return result;
}

void sub_10008FFB4(id a1)
{
  qword_1002E3478 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_10008FFF0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.amsaccountsd.AMSDTransactionStore.transactions", v3);
  v2 = qword_1002E3488;
  qword_1002E3488 = v1;
}

void sub_100090054(id a1)
{
  qword_1002E3498 = objc_alloc_init(NSCountedSet);

  _objc_release_x1();
}

void sub_10009023C(uint64_t a1)
{
  v2 = [*(a1 + 40) transactionsCount];
  [v2 removeObject:*(a1 + 32)];
}

void sub_100090290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = AMSSetLogKey();
  v4 = [WeakRetained transactionsCount];
  v5 = [v4 countForObject:*(a1 + 40)];

  if (!v5)
  {
    v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = *(a1 + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Releasing a keep alive transaction. transactionID = %{public}@", &v12, 0x20u);
    }

    v11 = [WeakRetained transactions];
    [v11 setObject:0 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_1000904C0(uint64_t a1)
{
  if (byte_1002E34A0 == 1)
  {
    v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v2)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = AMSLogKey();
      v6 = *(a1 + 32);
      v15 = 138543874;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not taking a transaction or doing work because we are shutting down (transactionID: %{public}@)", &v15, 0x20u);
    }
  }

  else
  {
    v7 = [*(a1 + 40) transactionsCount];
    [v7 addObject:*(a1 + 32)];

    v8 = [*(a1 + 40) transactionsCount];
    v9 = [v8 countForObject:*(a1 + 32)];

    if (v9 != 1)
    {
      return;
    }

    v10 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = *(a1 + 32);
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Taking a keep alive transaction. transactionID = %{public}@", &v15, 0x20u);
    }

    [*(a1 + 32) UTF8String];
    v2 = os_transaction_create();
    v3 = [*(a1 + 40) transactions];
    [v3 setObject:v2 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_1000908D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = AMSSetLogKey();
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 48) + 16))();
  objc_autoreleasePoolPop(v3);
  [WeakRetained releaseKeepAliveTransaction:*(a1 + 40)];
}

void sub_100090AB0(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 56) + 16))();
  objc_autoreleasePoolPop(v3);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090B98;
  v7[3] = &unk_1002B2648;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v10 = v5;
  v11 = v6;
  v9 = *(a1 + 48);
  dispatch_async(v4, v7);
}

id sub_100090B98(void *a1)
{
  v2 = AMSSetLogKey();
  v3 = objc_autoreleasePoolPush();
  (*(a1[6] + 16))();
  objc_autoreleasePoolPop(v3);
  v4 = a1[7];
  v5 = a1[5];

  return [v4 releaseKeepAliveTransaction:v5];
}

void sub_100090D00(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100090EF0(uint64_t a1, void *a2)
{
  v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSLogKey();
    *buf = 138543618;
    v54 = v4;
    v55 = 2114;
    v56 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting update device language task", buf, 0x16u);
  }

  v62 = AMSAccountMediaTypeProduction;
  [NSArray arrayWithObjects:&v62 count:1];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v52 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (!v8)
  {

    v11 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    goto LABEL_34;
  }

  v9 = v8;
  v10 = 0;
  v45 = *v50;
  v11 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  obj = v7;
  do
  {
    v12 = 0;
    do
    {
      if (*v50 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [v11[95] sharedAccountsDaemonConfig];
      if (!v14)
      {
        v14 = [v11[95] sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        v18 = AMSLogKey();
        *buf = 138543874;
        v54 = v16;
        v55 = 2114;
        v56 = v18;
        v57 = 2114;
        v58 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating language code. mediaType = %{public}@", buf, 0x20u);
      }

      v19 = [ACAccountStore ams_sharedAccountStoreForMediaType:v13];
      v20 = [v19 ams_activeiTunesAccount];
      if (v20)
      {
        v21 = v20;
LABEL_18:
        v24 = [*(a1 + 32) _updateLanguageForAccount:v21 mediaType:v13];
        v47 = v10;
        [v24 resultWithError:&v47];
        v25 = v47;

        v10 = v25;
        v11 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
        goto LABEL_19;
      }

      v22 = [v19 ams_fetchLocaliTunesAccount];
      v48 = v10;
      v21 = [v22 resultWithError:&v48];
      v23 = v48;

      if (v21)
      {
        v10 = v23;
        goto LABEL_18;
      }

      v21 = [v11[95] sharedAccountsDaemonConfig];
      if (!v21)
      {
        v21 = [v11[95] sharedConfig];
      }

      v24 = [v21 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        v28 = AMSLogableError();
        *buf = 138544130;
        v54 = v26;
        v55 = 2114;
        v56 = v27;
        v57 = 2114;
        v58 = v13;
        v59 = 2114;
        v60 = v28;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch either the active or local accounts. mediaType = %{public}@ | error = %{public}@", buf, 0x2Au);

        v11 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
      }

      v10 = v23;
LABEL_19:

      v12 = v12 + 1;
    }

    while (v9 != v12);
    v7 = obj;
    v29 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    v9 = v29;
  }

  while (v29);

  if (v10)
  {
    v30 = [v11[95] sharedAccountsDaemonConfig];
    if (!v30)
    {
      v30 = [v11[95] sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = v32;
      v34 = AMSLogKey();
      v35 = AMSLogableError();
      *buf = 138543874;
      v54 = v32;
      v55 = 2114;
      v56 = v34;
      v57 = 2114;
      v58 = v35;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to send the network request in response to the device's language code changing. Error = %{public}@", buf, 0x20u);

      v7 = obj;
    }

    v36 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v30 = [v11[95] sharedAccountsDaemonConfig];
  if (!v30)
  {
    v30 = [v11[95] sharedConfig];
  }

  v31 = [v30 OSLogObject];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v37 = objc_opt_class();
    v38 = v37;
    AMSLogKey();
    v40 = v39 = v7;
    *buf = 138543618;
    v54 = v37;
    v55 = 2114;
    v56 = v40;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully sent network request in response to the device's language code changing", buf, 0x16u);

    v7 = v39;
  }

  v10 = 0;
  v36 = 1;
LABEL_39:

  if (a2)
  {
    v41 = v10;
    *a2 = v10;
  }

  return v36;
}

id sub_1000916CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ams_storefrontForMediaType:*(a1 + 40)];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[AMSURLSession defaultSession];
    v7 = [v6 dataTaskPromiseWithRequest:v3];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"The device is missing a storefront for the specified media type. mediaType = %@", *(a1 + 40)];
    v8 = AMSError();
    v7 = [AMSPromise promiseWithError:v8];
  }

  return v7;
}

AMSBinaryPromise *__cdecl sub_1000917CC(id a1, NSError *a2)
{
  v2 = AMSError();
  v3 = [AMSBinaryPromise promiseWithError:v2];

  return v3;
}

void sub_100091880(id a1)
{
  qword_1002E34B0 = objc_alloc_init(AMSDAutoBugCaptureService);

  _objc_release_x1();
}

id sub_100091BD0(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v38 = objc_opt_class();
    v39 = AMSLogKey();
    v4 = [*(a1 + 32) account];
    v5 = AMSHashIfNeeded();
    v6 = [*(a1 + 32) home];
    v7 = AMSHashIfNeeded();
    v8 = [*(a1 + 32) home];
    v9 = [v8 currentUser];
    v10 = AMSHashIfNeeded();
    *buf = 138544386;
    *&buf[4] = v38;
    *&buf[12] = 2114;
    *&buf[14] = v39;
    *&buf[22] = 2114;
    v50 = v5;
    *v51 = 2114;
    *&v51[2] = v7;
    *&v51[10] = 2114;
    *&v51[12] = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating a home's multi-user token. account = %{public}@ | home = %{public}@ | home.currentUser = %{public}@", buf, 0x34u);
  }

  v11 = [*(a1 + 32) metrics];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = objc_alloc_init(AMSDMultiUserMetrics);
    [*(a1 + 32) setMetrics:v13];
  }

  v14 = [*(a1 + 32) metrics];
  [v14 homeKitRepairRequestUpdateTokenBegin];

  v15 = [*(a1 + 32) home];
  v16 = [v15 isCurrentUserRestrictedGuest];

  if (v16)
  {
    v17 = AMSError();
    v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      *&buf[22] = 2114;
      v50 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Restricted Guest Error: %{public}@", buf, 0x20u);
    }

    v22 = [AMSPromise promiseWithError:v17];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = sub_100092258;
    *v51 = sub_100092268;
    *&v51[8] = 0;
    v23 = [*(a1 + 32) controller];
    v24 = [v23 cloudContainer];
    v25 = [v24 privateDatabase];

    v26 = [AMSDFetchMultiUserRecordZoneTask alloc];
    v27 = [*(a1 + 32) home];
    v28 = [*(a1 + 32) home];
    v29 = [v28 currentUser];
    v30 = [*(a1 + 32) metrics];
    v31 = [(AMSDFetchMultiUserRecordZoneTask *)v26 initWithHome:v27 homeUser:v29 database:v25 metrics:v30];

    v32 = [*(a1 + 32) account];
    [(AMSDFetchMultiUserRecordZoneTask *)v31 setCreateIfMissing:v32 != 0];

    v33 = [(AMSDFetchMultiUserRecordZoneTask *)v31 performTask];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100092270;
    v48[3] = &unk_1002AFDD8;
    v48[4] = *(a1 + 32);
    [v33 addErrorBlock:v48];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000923A4;
    v45[3] = &unk_1002B2718;
    v45[4] = *(a1 + 32);
    v47 = buf;
    v34 = v25;
    v46 = v34;
    v35 = [v33 continueWithBlock:v45];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100092934;
    v42[3] = &unk_1002B2830;
    v42[4] = *(a1 + 32);
    v36 = v34;
    v43 = v36;
    v44 = buf;
    v22 = [v35 thenWithBlock:v42];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100093724;
    v41[3] = &unk_1002B2858;
    v41[4] = *(a1 + 32);
    [v22 addSuccessBlock:v41];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100093880;
    v40[3] = &unk_1002AFDD8;
    v40[4] = *(a1 + 32);
    [v22 addErrorBlock:v40];

    _Block_object_dispose(buf, 8);
  }

  return v22;
}

uint64_t sub_100092258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100092270(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded();
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the record zone. error = %{public}@", &v8, 0x20u);
  }
}

id sub_1000923A4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ([v7 code] == 7 && (objc_msgSend(*(a1 + 32), "account"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = AMSHashIfNeeded();
      *buf = 138543874;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Home participant record zone not found and an account was not provided. error = %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v7)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      v14 = *(a1 + 40);
      v15 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      v16 = [v14 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v15];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000926FC;
      v22[3] = &unk_1002B1620;
      v22[4] = *(a1 + 32);
      v17 = [v16 continueWithBlock:v22];

      goto LABEL_15;
    }

    v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = AMSHashIfNeeded();
      *buf = 138543874;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the home participant record zone. error = %{public}@", buf, 0x20u);
    }
  }

  v15 = AMSError();
  v17 = [AMSPromise promiseWithError:v15];
LABEL_15:

  return v17;
}

id sub_1000926FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) metrics];
    v9 = [v8 enqueueCloudKitFetchSuccessEvent];

    v10 = [AMSOptional optionalWithValue:v5];
LABEL_7:
    v13 = v10;
    v14 = [AMSPromise promiseWithResult:v10];

    goto LABEL_8;
  }

  if ([v6 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7])
  {
    if (v7)
    {
      v11 = [*(a1 + 32) metrics];
      v12 = [v11 enqueueCloudKitFetchFailedEventWithError:v7];
    }

    v10 = +[AMSOptional optionalWithNil];
    goto LABEL_7;
  }

  v16 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    v20 = AMSHashIfNeeded();
    v21 = 138543874;
    v22 = v18;
    v23 = 2114;
    v24 = v19;
    v25 = 2114;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the home participant record. error = %{public}@", &v21, 0x20u);
  }

  v14 = [AMSPromise promiseWithError:v7];
LABEL_8:

  return v14;
}

id sub_100092934(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  v4 = [*(a1 + 32) account];
  if (v4)
  {
    v5 = v4;
LABEL_3:
    v6 = [AMSDGenerateMultiUserTokenTask alloc];
    v7 = [*(a1 + 32) controller];
    v8 = [*(a1 + 32) home];
    v9 = [(AMSDGenerateMultiUserTokenTask *)v6 initWithController:v7 account:v5 home:v8];

    v10 = [v3 fieldForKey:@"AMSHomeParticipant_MultiUserToken"];
    [(AMSDGenerateMultiUserTokenTask *)v9 setTokenNeedsRegeneration:v10 != 0];

    v11 = [(AMSDGenerateMultiUserTokenTask *)v9 performTask];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100092C40;
    v24[3] = &unk_1002B2808;
    v25 = v3;
    v26 = v5;
    v12 = *(a1 + 40);
    v27 = *(a1 + 32);
    v13 = v12;
    v14 = *(a1 + 48);
    v28 = v13;
    v29 = v14;
    v15 = v5;
    v16 = [v11 continueWithBlock:v24];

    goto LABEL_11;
  }

  if (v3)
  {
    v17 = +[ACAccountStore ams_sharedAccountStore];
    v5 = [v17 amsd_iTunesAccountForHomeParticipant:v3 createEphemeral:1];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = AMSLogKey();
    v22 = AMSHashIfNeeded();
    *buf = 138543874;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    v34 = 2114;
    v35 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The caller didn't provide an account, and the home participant record isn't associated with one. homeParticipant = %{public}@", buf, 0x20u);
  }

  v15 = AMSError();
  v16 = [AMSPromise promiseWithError:v15];
LABEL_11:

  return v16;
}

id sub_100092C40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [AMSPromise promiseWithResult:v6];
    goto LABEL_17;
  }

  if (*(a1 + 32))
  {
    v9 = +[ACAccountStore ams_sharedAccountStore];
    v10 = [v9 amsd_iTunesAccountForHomeParticipant:*(a1 + 32) createEphemeral:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 ams_altDSID];
  v12 = [v10 ams_DSID];
  v13 = v12;
  if (v11)
  {
    v3 = [*(a1 + 40) ams_altDSID];
    if ([v3 isEqualToString:v11])
    {
      v14 = 1;
LABEL_15:

      goto LABEL_16;
    }

    if (!v13)
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  else if (!v12)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v15 = [*(a1 + 40) ams_DSID];
  v14 = [v15 isEqualToNumber:v13];

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_16:

  v16 = [AMSPromise promiseWithError:v7];
  v8 = v16;
  if (!v14)
  {
    v31 = v16;
    v32 = v31;
    goto LABEL_25;
  }

LABEL_17:
  v17 = v6 == 0;
  v18 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v18)
  {
    v18 = +[AMSLogConfig sharedConfig];
  }

  v19 = [v18 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v6 == 0;
    v21 = v6;
    v22 = v8;
    v23 = v7;
    v24 = v20;
    v25 = objc_opt_class();
    v26 = AMSLogKey();
    *buf = 138544130;
    v42 = v25;
    v43 = 2114;
    v44 = v26;
    v45 = 1024;
    v46 = v24;
    v47 = 1024;
    v48 = v24;
    v7 = v23;
    v8 = v22;
    v6 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting repair flags. multiUserTokenInvalid = %d | currentUserNeedsTokenRepair = %d", buf, 0x22u);
  }

  v27 = *(a1 + 56);
  v28 = [*(*(*(a1 + 64) + 8) + 40) identifier];
  v29 = [v27 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v28];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100093034;
  v37[3] = &unk_1002B2790;
  v37[4] = *(a1 + 48);
  v38 = v7;
  v40 = v17;
  v39 = *(a1 + 56);
  v30 = [v29 continueWithBlock:v37];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10009347C;
  v34[3] = &unk_1002B27E0;
  v34[4] = *(a1 + 48);
  v36 = v17;
  v31 = v8;
  v35 = v31;
  v32 = [v30 continueWithBlock:v34];

LABEL_25:

  return v32;
}

id sub_100093034(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NSNumber numberWithBool:*(a1 + 56)];
    [v3 setField:v4 forKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];

    v5 = [*(a1 + 32) metrics];
    v6 = [v5 enqueueCloudKitSaveRecordEvent];

    v7 = [*(a1 + 48) saveRecord:v3];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000932C0;
    v15[3] = &unk_1002B2740;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 56);
    [v7 addErrorBlock:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100093430;
    v14[3] = &unk_1002B2768;
    v14[4] = *(a1 + 32);
    [v7 addSuccessBlock:v14];
  }

  else
  {
    v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      *buf = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to set a repair flag. Failed to fetch the home participant. error = %{public}@", buf, 0x20u);
    }

    v7 = [AMSPromise promiseWithError:*(a1 + 40)];
  }

  return v7;
}

void sub_1000932C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = *(a1 + 40);
    v9 = AMSHashIfNeeded();
    v12 = 138544130;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set the multi-user token's invalid status. status = %d | error = %{public}@", &v12, 0x26u);
  }

  v10 = [*(a1 + 32) metrics];
  v11 = [v10 enqueueCloudKitSaveRecordFailedEventWithError:v3];
}

void sub_100093430(uint64_t a1)
{
  v2 = [*(a1 + 32) metrics];
  v1 = [v2 enqueueCloudKitSaveRecordSucceededEvent];
}

id sub_10009347C(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 setCurrentUserNeedsTokenRepair:*(a1 + 48)];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000935C8;
  v9[3] = &unk_1002B27B8;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  [v3 addFinishBlock:v9];
  v4 = [v3 promiseAdapter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009371C;
  v7[3] = &unk_1002B1228;
  v8 = *(a1 + 40);
  v5 = [v4 continueWithBlock:v7];

  return v5;
}

void sub_1000935C8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = *(a1 + 40);
      v11 = AMSHashIfNeeded();
      v12 = 138544130;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 1024;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set the home's token repair status. status = %d | error = %{public}@", &v12, 0x26u);
    }
  }
}

void sub_100093724(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = AMSHashIfNeeded();
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated the home's multi-user token. token = %{public}@", &v11, 0x20u);
  }

  v9 = [*(a1 + 32) metrics];
  v10 = [v9 enqueueHomeKitRepairRequestCompletedSuccessEvent];
}

void sub_100093880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = AMSHashIfNeeded();
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update the home's multi-user token. error = %{public}@", &v11, 0x20u);
  }

  v9 = [*(a1 + 32) metrics];
  v10 = [v9 enqueueHomeKitRepairRequestCompletedFailedEventWithError:v3];
}

void sub_100093E78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activityIdentifier];
  v5 = [NSString stringWithFormat:@"com.apple.amsaccountsd.registerActivity.%@", v4];
  [v5 UTF8String];

  v6 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = [*(a1 + 32) activityIdentifier];
    *buf = 138544130;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    v36 = 2114;
    v37 = v12;
    v38 = 2048;
    v39 = state;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetched state for %{public}@: %li", buf, 0x2Au);
  }

  if (state == 2)
  {
    v20 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v24 = [*(a1 + 32) activityIdentifier];
      *buf = 138543874;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running activity %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) runActivityQueuedByScheduler:*(a1 + 40)];
  }

  else
  {
    if (state)
    {
      v13 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v13 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        v27 = [*(a1 + 32) activityIdentifier];
        *buf = 138543874;
        v33 = v25;
        v34 = 2114;
        v35 = v26;
        v36 = 2114;
        v37 = v27;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unknown state for %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v13 = xpc_activity_copy_criteria(v3);
      v14 = +[AMSLogConfig sharedAccountsDaemonConfig];
      v15 = v14;
      if (v13)
      {
        if (!v14)
        {
          v15 = +[AMSLogConfig sharedConfig];
        }

        v16 = [v15 OSLogObject];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = AMSLogKey();
          v19 = [*(a1 + 32) activityIdentifier];
          *buf = 138544130;
          v33 = v17;
          v34 = 2114;
          v35 = v18;
          v36 = 2114;
          v37 = v19;
          v38 = 2114;
          v39 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] checkin found criteria for %{public}@: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        if (!v14)
        {
          v15 = +[AMSLogConfig sharedConfig];
        }

        v28 = [v15 OSLogObject];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = AMSLogKey();
          v31 = [*(a1 + 32) activityIdentifier];
          *buf = 138543874;
          v33 = v29;
          v34 = 2114;
          v35 = v30;
          v36 = 2114;
          v37 = v31;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Setting criteria for %{public}@", buf, 0x20u);
        }

        v15 = [*(a1 + 32) criteria];
        xpc_activity_set_criteria(v3, v15);
      }
    }
  }
}

uint64_t sub_1000945F8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___AMSXDProtoMessage__messageData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___AMSXDProtoMessage__logKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100094CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    if ((a2 - 1) > 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_10022E3A0[a2 - 1];
    }

    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    [v6 finishWithResult:v7];
  }
}

id sub_100094EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:{a3, a4}];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

id sub_1000950D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithResult:{a3, a4}];
  }

  else
  {
    return [v4 finishWithError:a4];
  }
}

void sub_1000954FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_1000955D0(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100095784(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 finishWithResult:v10];
  }

  else if (v6)
  {
    [v8 finishWithError:v6];
  }

  else
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
  }
}

AMSPromise *__cdecl sub_100095848(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

id sub_100095980(id a1, AMSDCloudDataRecordZoneIdentifier *a2)
{
  v2 = a2;
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

id sub_1000959F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) scope];
  v6 = [v3 zoneName];

  v7 = [v4 _fetchChangeTokenWithDatabaseScope:v5 recordZoneName:v6];

  return v7;
}

id sub_100095B78(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 amsd_isCKChangeTokenExpiredError])
  {
    [*(a1 + 32) persistChangedRecordZonesChangeToken:0];
    [*(a1 + 32) _fetchChangedRecordZonesWithServerChangeToken:0];
  }

  else
  {
    [AMSPromise promiseWithError:v3];
  }
  v4 = ;

  return v4;
}

AMSPromise *__cdecl sub_100095BF8(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100096028(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) finishWithResult:v5];
  }

  else
  {
    v6 = v14;
    if ([v6 amsd_isCKPartialFailureError])
    {
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v6 = v11;
    }

    v12 = *(a1 + 40);
    if (v6)
    {
      [v12 finishWithError:v6];
    }

    else
    {
      v13 = AMSError();
      [v12 finishWithError:v13];
    }
  }
}

AMSPromise *__cdecl sub_1000961BC(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_1000964A8(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = sub_100048564(a3);
  v6 = v5;
  if (v5 && ![v5 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:4])
  {
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AMSDCloudDataPartialFailureErrorsKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [AMSDCloudDataFetchResult alloc];
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = &__NSDictionary0__struct;
    }

    v12 = [(AMSDCloudDataFetchResult *)v10 initWithResults:v11 failures:v9];
    [*(a1 + 32) finishWithResult:v12];
  }
}

void sub_1000965D8(uint64_t a1, void *a2)
{
  v3 = [a2 failures];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100096668;
  v4[3] = &unk_1002B2AC8;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_100097074(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_100097148(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100097358(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

AMSPromise *__cdecl sub_10009742C(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_100097804(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v10 firstObject];
    [v8 finishWithResult:v9];
LABEL_3:

    goto LABEL_6;
  }

  if (!v6)
  {
    v9 = AMSError();
    [v8 finishWithError:v9];
    goto LABEL_3;
  }

  [v8 finishWithError:v6];
LABEL_6:
}

id sub_1000978D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v42 = v9;
      v43 = 2114;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully setup the database subscription.", buf, 0x16u);
    }

    v11 = [NSNumber numberWithUnsignedInteger:a1[6] + 1];
    v12 = [AMSPromise promiseWithResult:v11];
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v7 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSLogableError();
      *buf = 138543874;
      v42 = v14;
      v43 = 2114;
      v44 = v15;
      v45 = 2114;
      v46 = *&v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to setup the database subscription. error = %{public}@", buf, 0x20u);
    }

    v17 = a1[6];
    if (v17 > 9)
    {
      v31 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        *buf = 138543618;
        v42 = v33;
        v43 = 2114;
        v44 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to setup the database subscription too many times. Refusing to try again.", buf, 0x16u);
      }

      v12 = [AMSPromise promiseWithError:v5];
    }

    else
    {
      v18 = v17 + 1;
      v19 = exp2((v17 + 1));
      v20 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        *buf = 138543874;
        v42 = v22;
        v43 = 2114;
        v44 = v23;
        v45 = 2048;
        v46 = v19;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling another attempt to setup the database subscription. timeInterval = %f", buf, 0x20u);
      }

      v24 = objc_alloc_init(AMSMutablePromise);
      v25 = dispatch_time(0, (v19 * 1000000000.0));
      v26 = dispatch_get_global_queue(0, 0);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100097D64;
      v36[3] = &unk_1002B0298;
      v27 = v24;
      v28 = a1[4];
      v29 = a1[5];
      v37 = v27;
      v38 = v28;
      v39 = v29;
      v40 = v18;
      dispatch_after(v25, v26, v36);

      v30 = v39;
      v12 = v27;
    }
  }

  return v12;
}

void sub_100097D64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _subscribeWithIdentifier:*(a1 + 48) attempt:*(a1 + 56)];
  [v1 finishWithPromise:v2];
}

void sub_100098064(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a4)
  {
    [*(a1 + 32) finishWithError:a4];
  }

  else
  {
    v6 = [[AMSDCloudDataChangedRecordZonesResult alloc] initWithChangedRecordZones:*(a1 + 40) deletedRecordZones:*(a1 + 48) changeToken:v7];
    [*(a1 + 32) finishWithResult:v6];
  }
}

void sub_1000984DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000984FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];

  [v4 setPreviousServerChangeToken:v5];

  return v4;
}

void sub_10009857C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = objc_opt_class();
      v15 = v14;
      if (v13)
      {
        v4 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v15, v4];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v17 = AMSLogableError();
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Error passed to recordWasChangedBlock: %{public}@", buf, 0x16u);
      if (v13)
      {

        v16 = v4;
      }
    }
  }

  if (v9)
  {
    v18 = *(a1 + 40);
    v19 = [v8 zoneID];
    v20 = [v18 objectForKeyedSubscript:v19];

    if (!v20)
    {
      v20 = objc_alloc_init(NSMutableArray);
      v21 = *(a1 + 40);
      v22 = [v8 zoneID];
      [v21 setObject:v20 forKeyedSubscript:v22];
    }

    [v20 addObject:v9];
  }
}

void sub_1000987BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 zoneID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 32);
    v8 = [v9 zoneID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

void sub_10009887C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15 = a6;
  if (v15)
  {
    v9 = *(a1 + 40);
    v10 = a2;
    [v9 setObject:0 forKeyedSubscript:v10];
    [*(a1 + 48) setObject:0 forKeyedSubscript:v10];
    v11 = *(a1 + 56);
    v12 = v15;
    v13 = v10;
  }

  else
  {
    v14 = *(a1 + 32);
    v13 = a2;
    v11 = v14;
    v12 = a3;
  }

  [v11 setObject:v12 forKeyedSubscript:v13];
}

void sub_10009892C(id *a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  if ([a1[5] count] || objc_msgSend(a1[6], "count") || objc_msgSend(a1[7], "count") || (v13 = objc_msgSend(a1[8], "count"), !v3) || v13)
  {
    if (v3)
    {
      v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        WeakRetained = objc_loadWeakRetained(a1 + 10);
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        v10 = AMSHashIfNeeded();
        v14 = 138543874;
        v15 = v8;
        v16 = 2114;
        v17 = v9;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received both valid data and an error when fetching record zone changes. error = %{public}@", &v14, 0x20u);
      }
    }

    v11 = [a1[7] ams_mapWithTransform:&stru_1002B2C38];
    v12 = [[AMSDCloudDataChangedRecordsResult alloc] initWithChangedRecords:a1[5] deletedRecords:a1[6] errors:v11 changeTokens:a1[8]];
    [a1[9] finishWithResult:v12];
  }

  else
  {
    [a1[9] finishWithError:v3];
  }
}

AMSPair *__cdecl sub_100098B18(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = sub_100048564(v4);

  v8 = [v6 initWithFirst:v5 second:v7];

  return v8;
}

AMSPromise *__cdecl sub_100098BA8(id a1, NSError *a2)
{
  v2 = sub_100048564(a2);
  v3 = [AMSPromise promiseWithError:v2];

  return v3;
}

void sub_10009927C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = AMSHashIfNeeded();
  v5 = [*(a1 + 40) encryptedValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"\n  %@ = %@, ", v8, v7];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v1)
    {
      v1 = +[AMSLogConfig sharedConfig];
    }

    v2 = [v1 OSLogObject];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSTemporaryDirectory();
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_set_user_dir_suffix() seems to have failed. NSTemporaryDirectory() = %{public}@", &v6, 0xCu);
    }
  }

  v4 = objc_alloc_init(AMSDDaemonRunLoop);
  [(AMSDDaemonRunLoop *)v4 runUntilIdleExit];

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t variable initialization expression of AMSDVerifyDevicePasscodeTask.viewServiceAction@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AuthenticationViewServiceAction.verifyDevicePasscodeAction(_:);
  v3 = type metadata accessor for AuthenticationViewServiceAction();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of Avro.schema@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xFFFFFFFF00;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

uint64_t variable initialization expression of Avro.infoKey@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DA5E0, &qword_10022E420);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  CodingUserInfoKey.init(rawValue:)();
  v5 = type metadata accessor for CodingUserInfoKey();
  result = sub_100004DFC(v4, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100099DF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

NSString sub_100099E58@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10009AA64(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100099EA4@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100099EEC@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100099F1C(uint64_t a1)
{
  v2 = sub_10000FFF0(&qword_1002DA648, type metadata accessor for AMSAccountFlag, byte_10022E648);
  v3 = sub_10000FFF0(&unk_1002DA650, type metadata accessor for AMSAccountFlag, "M\v\b");

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_100099FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_10009A4F8(sub_10009A7F4, v5, a1, a2);
}

uint64_t sub_10009A02C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000D170(v7, v6);
      *v5 = xmmword_10022E410;
      sub_10000D170(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_10009A55C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000D170(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_10022E410;
      sub_10000D170(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = sub_10009A55C(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_10000D170(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_10009A3F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10009A468(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10009A4B0(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009A4F8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_10009A55C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10009A610(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1000068C8(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_1000068C8(v3);
    return v4 | 8;
  }
}

uint64_t sub_10009A66C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA512();
      sub_10000FFF0(&qword_1002DA5E8, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10009A74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_100099FD8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_10009A7A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000D170(result, a2);
  }

  return result;
}

uint64_t sub_10009A7B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009A4B0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10009A914(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_10009A96C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10009A9E4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10009AA64(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_10009AA9C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

id sub_10009AAD4()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v2 = [v0 ams_iTunesAccountWithDSID:isa];

  return v2;
}

void sub_10009AB58()
{
  sub_100004168();
  sub_10000309C();
  v1 = type metadata accessor for AccountIdentity.DSID();
  __chkstk_darwin(v1 - 8);
  sub_10000306C();
  v2 = sub_10000B96C();
  sub_10000307C();
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = v5 - v4;
  v7 = [objc_opt_self() ams_sharedAccountStore];
  sub_1000049C0();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 ams_iTunesAccountWithAltDSID:v8];

  if (v9)
  {
    v10 = [v9 ams_DSID];
    if (v10)
    {
      v11 = v10;
      [v10 unsignedLongLongValue];

      *(v6 + *(v2 + 20)) = v9;
      AccountIdentity.DSID.init(_:)();
      sub_1000049C0();
      AccountIdentity.init(altDSID:dsid:)();
      sub_100007078(v6, v0);
      sub_100002728(v0, 0, 1, v2);
      sub_1000027F8();
      return;
    }
  }

  sub_100007AC8();
  sub_1000027F8();

  sub_100002728(v12, v13, v14, v15);
}

void sub_10009AD10()
{
  sub_100004168();
  v2 = v1;
  v4 = v3;
  v72 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000308C();
  v67 = v8 - v9;
  __chkstk_darwin(v10);
  v76 = &v60 - v11;
  v12 = sub_100099DF4(&qword_1002DA6C0, &unk_100232C60);
  __chkstk_darwin(v12 - 8);
  v73 = sub_10000B96C();
  sub_100003724();
  v60 = v13;
  __chkstk_darwin(v14);
  sub_10000308C();
  v66 = v15 - v16;
  __chkstk_darwin(v17);
  v62 = &v60 - v18;
  v19 = objc_opt_self();
  v61 = [v19 ams_sharedAccountStore];
  v20 = sub_10009B3D8(v61);
  v21 = v20;
  v68 = v19;
  v74 = v6;
  if ((v4 & 1) == 0)
  {
    LODWORD(v71) = v2;
    v77 = _swiftEmptyArrayStorage;
    v22 = sub_100005DA8(v20);
    v23 = v21;
    v24 = 0;
    v25 = v23 & 0xC000000000000001;
    v75 = v23;
    v26 = v23 & 0xFFFFFFFFFFFFFF8;
    while (v22 != v24)
    {
      if (v25)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v26 + 16))
        {
          goto LABEL_53;
        }

        v27 = *(v75 + 8 * v24 + 32);
      }

      v28 = v27;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_52;
      }

      if ([v27 ams_isLocalAccount])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v24;
    }

    v21 = v77;
    v19 = v68;
    v6 = v74;
    LOBYTE(v2) = v71;
  }

  if ((v2 & 1) == 0)
  {
    v77 = _swiftEmptyArrayStorage;
    v29 = sub_100005DA8(v21);
    v30 = 0;
    v31 = v21 & 0xC000000000000001;
    v32 = v21 & 0xFFFFFFFFFFFFFF8;
    while (v29 != v30)
    {
      if (v31)
      {
        v33 = v21;
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v32 + 16))
        {
          goto LABEL_55;
        }

        v33 = v21;
        v34 = *(v21 + 8 * v30 + 32);
      }

      v35 = v34;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_54;
      }

      if ([v34 ams_isSandboxAccount])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v30;
      v21 = v33;
    }

    v21 = v77;
    v19 = v68;
    v6 = v74;
  }

  v36 = sub_100005DA8(v21);
  v37 = 0;
  v38 = v21 & 0xC000000000000001;
  v64 = (v6 + 16);
  v70 = (v6 + 8);
  v71 = v21 & 0xFFFFFFFFFFFFFF8;
  v63 = _swiftEmptyArrayStorage;
  v65 = v21 & 0xC000000000000001;
  v39 = v67;
  while (1)
  {
    if (v36 == v37)
    {

      sub_10009B4E8(v63);

      sub_1000027F8();
      return;
    }

    if (v38)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v71 + 16))
      {
        goto LABEL_51;
      }

      v40 = *(v21 + 8 * v37 + 32);
    }

    if (__OFADD__(v37, 1))
    {
      break;
    }

    v69 = v37 + 1;
    v74 = v40;
    v41 = [v40 ams_DSID];
    v75 = v37;
    if (v41)
    {
      v42 = v41;
      [v41 unsignedLongLongValue];
    }

    AccountIdentity.DSID.init(_:)();
    v43 = [v19 ams_sharedAccountStore];
    AccountIdentity.DSID.value.getter();
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v45 = [v43 ams_iTunesAccountWithDSID:isa];

    if (!v45)
    {
      v45 = v74;
LABEL_40:
      v52 = v75;

      (*v70)(v76, v72);
      v51 = 1;
      goto LABEL_41;
    }

    sub_10009B9E4(v45);
    if (!v46)
    {

      goto LABEL_40;
    }

    v47 = v66;
    *(v66 + *(v73 + 20)) = v45;
    (*v64)(v39, v76, v72);
    v38 = v65;
    AccountIdentity.init(altDSID:dsid:)();

    v48 = sub_1000049C0();
    v49(v48);
    v50 = v47;
    v19 = v68;
    sub_100007078(v50, v0);
    v51 = 0;
    v52 = v75;
LABEL_41:
    v53 = v73;
    sub_100002728(v0, v51, 1, v73);
    if (sub_100004DFC(v0, 1, v53) == 1)
    {
      sub_100004E24(v0, &qword_1002DA6C0, &unk_100232C60);
      v37 = v52 + 1;
    }

    else
    {
      sub_100007078(v0, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013BC08(0, v63[2] + 1, 1, v63);
        v63 = v58;
      }

      v55 = v63[2];
      v54 = v63[3];
      if (v55 >= v54 >> 1)
      {
        sub_10013BC08(v54 > 1, v55 + 1, 1, v63);
        v63 = v59;
      }

      v56 = v62;
      v57 = v63;
      v63[2] = v55 + 1;
      sub_100007078(v56, v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v55);
      v37 = v69;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void *sub_10009B3D8(void *a1)
{
  if ([a1 ams_activeiTunesAccount])
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100008244();
    if (v2)
    {
      sub_1000071A4();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = [a1 ams_activeiCloudAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 ams_iTunesAccountForAccount:v3];
    if (v5)
    {
      v6 = v5;
      sub_10009B6EC();
      if (v7)
      {
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100008244();
        if (v2)
        {
          sub_1000071A4();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_10009B4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_100107090(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = type metadata accessor for AMPAccount(0);
    v5 = 0;
    v6 = *(v4 - 8);
    v18 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v19 = v6;
    do
    {
      v24 = v4;
      v25 = &off_1002B4510;
      v7 = sub_100007914(v23);
      sub_10009BA48(v18 + *(v19 + 72) * v5, v7);
      v26 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_100107090(v8 > 1, v9 + 1, 1);
        v2 = v26;
      }

      ++v5;
      v10 = sub_100008494(v23, v24);
      v11 = __chkstk_darwin(v10);
      v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13, v11);
      v21 = v4;
      v22 = &off_1002B4510;
      v15 = sub_100007914(&v20);
      sub_100007078(v13, v15);
      v2[2] = v9 + 1;
      sub_10000601C(&v20, &v2[5 * v9 + 4]);
      sub_100004118(v23);
    }

    while (v1 != v5);
  }

  return v2;
}

void sub_10009B6EC()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = sub_100005DA8(v0);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_29;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v6 = *(v1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = sub_10009B9E4(v6);
    v10 = v9;
    v11 = sub_10009B9E4(v3);
    if (!v10)
    {
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    if (v8 == v11 && v10 == v12)
    {

      goto LABEL_29;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_27;
    }

LABEL_17:
    v15 = [v7 ams_DSID];
    v16 = [v3 ams_DSID];
    v17 = v16;
    if (!v15)
    {
      if (!v16)
      {
LABEL_27:

LABEL_29:
        sub_1000027F8();
        return;
      }

      goto LABEL_24;
    }

    if (!v16)
    {
      v17 = v15;
LABEL_24:

      continue;
    }

    sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_10009B8B0()
{
  v2 = sub_10000309C();
  v3 = *(v1 + *(type metadata accessor for AMPAccount(v2) + 20));
  *&v11 = 0xD000000000000011;
  *(&v11 + 1) = 0x8000000100272520;
  v4 = [v3 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast() ^ 1;
    v7 = v0;
    v8 = 1;
    v9 = v5;
  }

  else
  {
    sub_100004E24(v13, &unk_1002DFC10, &qword_10022E6D0);
    type metadata accessor for Date();
    v7 = sub_100007AC8();
  }

  return sub_100002728(v7, v6, v8, v9);
}

uint64_t sub_10009B9E4(void *a1)
{
  v1 = [a1 ams_altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10009BA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMPAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009BAAC(uint64_t a1)
{
  result = type metadata accessor for AccountIdentity();
  if (v2 <= 0x3F)
  {
    result = sub_100003AE0(319, &qword_1002DFC20, ACAccount_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall AMSDBiometricsTokenUpdateTask.prepareMetricsActivity()()
{
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  v2 = MetricsActivity.init(label:)();
  [v0 setActivity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  swift_unknownObjectRelease();
  dispatch thunk of MetricsActivity.activate()();
}

void AMSDBiometricsTokenUpdateTask.completeMetricsActivity(promise:)(uint64_t a1)
{
  if ([v1 activity])
  {
    v2 = objc_allocWithZone(type metadata accessor for MetricsActivity());
    swift_unknownObjectRetain();
    v3 = MetricsActivity.init(activity:)();
    dispatch thunk of MetricsActivity.complete(after:)();
    swift_unknownObjectRelease();
  }
}

void *sub_10009BD38()
{
  v1 = type metadata accessor for BagValueType();
  sub_100003724();
  __chkstk_darwin(v2);
  sub_10000759C(v3, v111);
  __chkstk_darwin(v4);
  sub_100002DD0();
  v127 = v5;
  sub_100005238();
  __chkstk_darwin(v6);
  sub_100002DD0();
  v126 = v7;
  sub_100005238();
  __chkstk_darwin(v8);
  sub_100002DD0();
  v125 = v9;
  sub_100005238();
  __chkstk_darwin(v10);
  sub_100002DD0();
  v124 = v11;
  sub_100005238();
  __chkstk_darwin(v12);
  sub_100002DD0();
  v123 = v13;
  sub_100005238();
  __chkstk_darwin(v14);
  sub_100002DD0();
  v122 = v15;
  sub_100005238();
  __chkstk_darwin(v16);
  sub_100002DD0();
  v121 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  v120 = (&v111 - v19);
  v20 = 0;
  v119 = enum case for BagValueType.string(_:);
  sub_100013BFC();
  v118 = v21;
  v22 = enum case for BagValueType.integer(_:);
  sub_100013BFC();
  v116 = v23;
  v117 = v24;
  sub_100013BFC();
  v114 = v25;
  v115 = v26;
  sub_100013BFC();
  v112 = v27;
  v113 = v28;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    v30 = *(&off_1002B2D40 + v20++ + 32);
    switch(v30)
    {
      case 1:
        v49 = sub_1000068E0(v121, v113);
        v50(v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_10000657C();
          sub_10000B654(v90, v91, v92, v29);
          v29 = v93;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v51);
          v29 = v94;
        }

        break;
      case 2:
        v39 = sub_1000068E0(v122, v114);
        v40(v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_10000657C();
          sub_10000B654(v70, v71, v72, v29);
          v29 = v73;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v41);
          v29 = v74;
        }

        break;
      case 3:
        v42 = sub_1000068E0(v123, v115);
        v43(v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_10000657C();
          sub_10000B654(v75, v76, v77, v29);
          v29 = v78;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v44);
          v29 = v79;
        }

        break;
      case 4:
        v35 = v124;
        *v124 = 0xD00000000000001DLL;
        v36 = sub_1000A183C(v35, v116);
        v37(v36, v22, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_10000657C();
          sub_10000B654(v65, v66, v67, v29);
          v29 = v68;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v38);
          v29 = v69;
        }

        break;
      case 5:
        v52 = sub_1000068E0(v125, v117);
        v53(v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_10000657C();
          sub_10000B654(v95, v96, v97, v29);
          v29 = v98;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v54);
          v29 = v99;
        }

        break;
      case 6:
        v55 = sub_1000068E0(v126, v118);
        v56(v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_10000657C();
          sub_10000B654(v100, v101, v102, v29);
          v29 = v103;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v57);
          v29 = v104;
        }

        break;
      case 7:
        v45 = v127;
        *v127 = 0x755F6769666E6F63;
        v46 = sub_1000A183C(v45, 0xEA00000000006C72);
        v47(v46, v119, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_10000657C();
          sub_10000B654(v80, v81, v82, v29);
          v29 = v83;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v48);
          v29 = v84;
        }

        break;
      case 8:
        v58 = v128;
        *v128 = 0x765F6769666E6F63;
        v59 = sub_1000A183C(v58, 0xEE006E6F69737265);
        v60(v59, v119, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_10000657C();
          sub_10000B654(v105, v106, v107, v29);
          v29 = v108;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v61);
          v29 = v109;
        }

        break;
      default:
        v31 = sub_1000068E0(v120, v112);
        v32(v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_10000657C();
          sub_10000B654(v85, v86, v87, v29);
          v29 = v88;
        }

        sub_1000071C8();
        if (v34)
        {
          sub_100007AD8(v33);
          v29 = v89;
        }

        break;
    }

    v29[2] = v0;
    sub_1000A17F0();
    v63 = sub_1000A1848(v29 + v62);
    v64(v63);
  }

  while (v20 != 9);
  return v29;
}

unint64_t sub_10009C374()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B2D70, v2);
  sub_100008C18();
  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10009C3BC(char a1)
{
  result = 0x755F6769666E6F63;
  switch(a1)
  {
    case 1:
      sub_1000A1880();
      result = v6 + 3;
      break;
    case 2:
      sub_1000A1880();
      result = v4 | 2;
      break;
    case 3:
      sub_1000A1880();
      result = v5 + 1;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      sub_1000A1880();
      result = v7 + 4;
      break;
    case 6:
      sub_1000A1880();
      result = v8 + 9;
      break;
    case 7:
      return result;
    case 8:
      result = 0x765F6769666E6F63;
      break;
    default:
      sub_1000A1880();
      result = v3 + 7;
      break;
  }

  return result;
}

unint64_t sub_10009C538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009C374();
  *a1 = result;
  return result;
}

uint64_t sub_10009C568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009C3BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009C5B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009C3B4();
  *a1 = result;
  return result;
}

uint64_t sub_10009C5F8(uint64_t a1)
{
  v2 = sub_1000A1050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009C634(uint64_t a1)
{
  v2 = sub_1000A1050();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10009C670(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 88);
  v8 = *(a2 + 88);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(a1 + 80) == *(a2 + 80) && v7 == v8;
    return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v8;
}

uint64_t sub_10009C788(void *a1)
{
  v3 = sub_100099DF4(&qword_1002DA8F8, &qword_10022F298);
  sub_100003724();
  v5 = v4;
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100008B3C(a1, a1[3]);
  v9 = sub_1000A1050();
  sub_10000A484(&unk_1002B4AD0, v10, v9);
  v12[15] = 0;
  sub_100003B2C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12[14] = 1;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[12] = 3;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[11] = 4;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[10] = 5;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[9] = 6;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[8] = 7;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[7] = 8;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_10009C9C0()
{
  v2 = sub_1000A1800();
  if (v3)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  sub_10000AEF8(*(v0 + 8));
  sub_10000AEF8(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  sub_10000AEF8(*(v0 + 32));
  sub_10000AEF8(*(v0 + 40));
  if (*(v0 + 56) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 48);
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  String.hash(into:)();
  if (*(v0 + 88))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10009CAAC()
{
  sub_100005BE8();
  sub_10009C9C0();
  return Hasher._finalize()();
}

void sub_10009CAE4()
{
  sub_10000A788();
  v2 = v1;
  v4 = v3;
  sub_100099DF4(&qword_1002DA8E8, &qword_10022F290);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100008B3C(v2, v2[3]);
  v6 = sub_1000A1050();
  sub_1000A1818(&unk_1002B4AD0, v7, v6);
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v31[0]) = 0;
    sub_100003B20();
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = v8;
    sub_100007EAC(1);
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    sub_100007EAC(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    sub_100007EAC(3);
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007EAC(4);
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    sub_100007EAC(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    sub_100007EAC(6);
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v20 & 1;
    sub_100007EAC(7);
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v21;
    v37 = 8;
    sub_100003B20();
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v22;
    v24 = sub_10000EF48();
    v25(v24);
    v30[0] = v9;
    v30[1] = v11;
    v30[2] = v13;
    v30[3] = v14;
    v30[4] = v16;
    v30[5] = v18;
    v30[6] = v19;
    v26 = v38;
    LOBYTE(v30[7]) = v38;
    v30[8] = v28;
    v30[9] = v29;
    v30[10] = v27;
    v30[11] = v23;
    sub_1000A0F1C(v30, v31);
    sub_100004118(v2);
    v31[0] = v9;
    v31[1] = v11;
    v31[2] = v13;
    v31[3] = v14;
    v31[4] = v16;
    v31[5] = v18;
    v31[6] = v19;
    v32 = v26;
    v33 = v28;
    v34 = v29;
    v35 = v27;
    v36 = v23;
    sub_1000A0E0C(v31);
    memcpy(v4, v30, 0x60uLL);
  }

  sub_1000A185C();
}

void sub_10009CDE8(void *a1@<X8>)
{
  sub_10009CAE4();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

Swift::Int sub_10009CE54(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10009C9C0();
  return Hasher._finalize()();
}

uint64_t sub_10009CE90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F74657361746164 && a2 == 0xEC000000656D616ELL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10009CF6C(char a1)
{
  if (a1)
  {
    return 0x5F74657361746164;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t static PIPersonalizedPrivateIdentifierMapping.Key.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10009D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v34[0] = v24;
  v34[1] = v25;
  v27 = v26;
  v28 = sub_100099DF4(&qword_1002DA8E0, &qword_10022F288);
  sub_100003724();
  v30 = v29;
  sub_100003774();
  __chkstk_darwin(v31);
  v33 = v34 - v32;
  sub_100008B3C(v27, v27[3]);
  sub_1000A0FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v30 + 8))(v33, v28);
  sub_100005074();
}

uint64_t PIPersonalizedPrivateIdentifierMapping.Key.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10009D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005BE8();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10009D25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v25 = v24;
  sub_100099DF4(&qword_1002DA8D0, &qword_10022F280);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100008B3C(v25, v25[3]);
  sub_1000A0FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v27 = sub_100002960();
    v28(v27);
  }

  sub_100004118(v25);
  sub_100005074();
}

Swift::Int sub_10009D410(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AvroMessageError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_10009D45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009CE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009D4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009CF64();
  *a1 = result;
  return result;
}

uint64_t sub_10009D4CC(uint64_t a1)
{
  v2 = sub_1000A0FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009D508(uint64_t a1)
{
  v2 = sub_1000A0FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10009D5A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  PIPersonalizedPrivateIdentifierMapping.Key.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

char *sub_10009D618()
{
  v2 = type metadata accessor for BagValueType();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000759C(v6, v103);
  __chkstk_darwin(v7);
  sub_100002DD0();
  v117 = v8;
  sub_100005238();
  __chkstk_darwin(v9);
  sub_100002DD0();
  v116 = v10;
  sub_100005238();
  __chkstk_darwin(v11);
  sub_100002DD0();
  v115 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v114 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v113 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_100002DD0();
  v112 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  v21 = (&v103 - v20);
  v22 = 0;
  sub_100013BFC();
  v111 = v23;
  v110 = enum case for BagValueType.dictionary(_:);
  v24 = (v4 + 104);
  v25 = enum case for BagValueType.integer(_:);
  sub_100013BFC();
  v108 = v26;
  v109 = v27;
  sub_100013BFC();
  v106 = v28;
  v107 = v29;
  sub_100013BFC();
  v104 = v30;
  v105 = v31;
  sub_100013BFC();
  v103 = v32;
  v33 = _swiftEmptyArrayStorage;
  do
  {
    v34 = *(&off_1002B2E68 + v22++ + 32);
    switch(v34)
    {
      case 1:
        sub_10000B30C();
        v52 = sub_100003758(v112, v104);
        v53(v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_10000657C();
          sub_10000B654(v87, v88, v89, v33);
          v33 = v90;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v54);
          v33 = v91;
        }

        break;
      case 2:
        sub_10000B30C();
        v43 = sub_100003758(v113, v105);
        v44(v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_10000657C();
          sub_10000B654(v67, v68, v69, v33);
          v33 = v70;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v45);
          v33 = v71;
        }

        break;
      case 3:
        sub_10000B30C();
        v46 = sub_100003758(v114, v106);
        v47(v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_10000657C();
          sub_10000B654(v72, v73, v74, v33);
          v33 = v75;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v48);
          v33 = v76;
        }

        break;
      case 4:
        sub_10000B30C();
        v40 = sub_100003758(v115, v107);
        v41(v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_10000657C();
          sub_10000B654(v62, v63, v64, v33);
          v33 = v65;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v42);
          v33 = v66;
        }

        break;
      case 5:
        sub_10000B30C();
        v55 = sub_100003758(v116, v108);
        v56(v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_10000657C();
          sub_10000B654(v92, v93, v94, v33);
          v33 = v95;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v57);
          v33 = v96;
        }

        break;
      case 6:
        sub_10000B30C();
        v58 = sub_100003758(v117, v109);
        v59(v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_10000657C();
          sub_10000B654(v97, v98, v99, v33);
          v33 = v100;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v60);
          v33 = v101;
        }

        break;
      case 7:
        sub_10000B30C();
        v49 = v118;
        *v118 = v50;
        v49[1] = v111;
        (*v24)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_10000657C();
          sub_10000B654(v77, v78, v79, v33);
          v33 = v80;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v51);
          v33 = v81;
        }

        break;
      default:
        sub_10000B30C();
        v36 = v35 + 13;
        v37 = v103;
        *v21 = v36;
        v21[1] = v37;
        (*v24)(v21, v25, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_10000657C();
          sub_10000B654(v82, v83, v84, v33);
          v33 = v85;
        }

        sub_1000030A8();
        if (v39)
        {
          sub_10000B988(v38);
          v33 = v86;
        }

        break;
    }

    *(v33 + 2) = v0;
    sub_1000A17F0();
    (*(v4 + 32))(&v33[v61 + *(v4 + 72) * v1]);
  }

  while (v22 != 8);
  return v33;
}

unint64_t sub_10009DBAC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B2E90, v2);
  sub_100008C18();
  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10009DBF4(char a1)
{
  result = 0xD000000000000024;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10009DCC8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v9 = v2;
  v10 = v3;
  v7 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v7)
    {
      return (sub_1001442CC() & 1) != 0;
    }

    sub_1000A002C(a2, v8);
  }

  else if (!v7)
  {
    sub_1000A002C(a2, v8);
    return 1;
  }

  return 0;
}

uint64_t sub_10009DDBC(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DA818, &qword_10022EC70);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  sub_100008B3C(a1, a1[3]);
  v11 = sub_1000A0494();
  sub_10000A484(&unk_1002B4808, v12, v11);
  LOBYTE(v15) = 0;
  sub_100003B2C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    sub_10000BF58(1);
    sub_10000BF58(2);
    LOBYTE(v15) = 3;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000BF58(4);
    sub_10000BF58(5);
    LOBYTE(v15) = 6;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 64);
    v14[7] = 7;
    sub_100099DF4(&qword_1002DA800, &qword_10022EC68);
    sub_1000A053C(&qword_1002DA820, sub_1000A05B4, &protocol conformance descriptor for <A> [A]);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_10009DFEC()
{
  v2 = sub_1000A1800();
  if (v3)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  sub_10000AEF8(*(v0 + 8));
  sub_10000AEF8(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  sub_10000AEF8(*(v0 + 32));
  sub_10000AEF8(*(v0 + 40));
  if (*(v0 + 56) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 48);
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  if (*(v0 + 64))
  {
    Hasher._combine(_:)(1u);

    sub_100118390();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10009E0C4()
{
  sub_100005BE8();
  sub_10009DFEC();
  return Hasher._finalize()();
}

void sub_10009E0FC()
{
  sub_10000A788();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA7F0, &qword_10022EC60);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v28[-v9];
  sub_100008B3C(v2, v2[3]);
  v11 = sub_1000A0494();
  sub_1000A1818(&unk_1002B4808, v12, v11);
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_100003B20();
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    sub_100006C40(1);
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    sub_100006C40(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    sub_100006C40(3);
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100006C40(4);
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v20;
    sub_100006C40(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v22;
    sub_100006C40(6);
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v25 & 1;
    sub_100099DF4(&qword_1002DA800, &qword_10022EC68);
    v28[15] = 7;
    sub_1000A053C(&qword_1002DA808, sub_1000A04E8, &protocol conformance descriptor for <A> [A]);
    sub_100003B20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v10, v5);
    v26 = v29;
    v27 = v30;
    sub_100004118(v2);
    *v4 = v14;
    *(v4 + 8) = v16;
    *(v4 + 16) = v18;
    *(v4 + 24) = v19;
    *(v4 + 32) = v21;
    *(v4 + 40) = v23;
    *(v4 + 48) = v24;
    *(v4 + 56) = v27;
    *(v4 + 64) = v26;
  }

  sub_1000A185C();
}

unint64_t sub_10009E39C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBAC();
  *a1 = result;
  return result;
}

unint64_t sub_10009E3CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009DBF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009E414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBEC();
  *a1 = result;
  return result;
}

uint64_t sub_10009E45C(uint64_t a1)
{
  v2 = sub_1000A0494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009E498(uint64_t a1)
{
  v2 = sub_1000A0494();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009E4D4(void *a1@<X8>)
{
  sub_10009E0FC();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

Swift::Int sub_10009E540(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10009DFEC();
  return Hasher._finalize()();
}

void *sub_10009E5C0()
{
  v1 = type metadata accessor for BagValueType();
  sub_100003724();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000759C(v5, v45);
  __chkstk_darwin(v6);
  v8 = (&v45 - v7);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v12 = (&v45 - v11);
  v13 = 0;
  v48 = enum case for BagValueType.dictionary(_:);
  v14 = (v3 + 104);
  v47 = enum case for BagValueType.BOOL(_:);
  v15 = _swiftEmptyArrayStorage;
  v46 = enum case for BagValueType.string(_:);
  do
  {
    v16 = *(&off_1002B2F70 + v13++ + 32);
    v17 = 0xE600000000000000;
    v18 = 0x6769666E6F63;
    switch(v16)
    {
      case 1:
        goto LABEL_9;
      case 2:
        v17 = 0xE400000000000000;
        v18 = 1635017060;
LABEL_9:
        *v12 = v18;
        v12[1] = v17;
        (*v14)(v12, v48, v1, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10000657C();
          sub_10000B654(v29, v30, v31, v15);
          v15 = v32;
        }

        sub_1000A17E0();
        if (v20)
        {
          sub_10000B780(v21);
          v15 = v33;
        }

        break;
      case 3:
        v22 = v49;
        *v49 = 0x5F7363697274656DLL;
        v23 = sub_1000A183C(v22, 0xED00006369706F74);
        v24(v23, v46, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_10000657C();
          sub_10000B654(v34, v35, v36, v15);
          v15 = v37;
        }

        sub_1000A17E0();
        if (v20)
        {
          sub_10000B780(v25);
          v15 = v38;
        }

        break;
      default:
        *v8 = 0x64656C62616E65;
        v8[1] = 0xE700000000000000;
        (*v14)(v8, v47, v1, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10000657C();
          sub_10000B654(v39, v40, v41, v15);
          v15 = v42;
        }

        sub_1000A17E0();
        if (v20)
        {
          sub_10000B780(v19);
          v15 = v43;
        }

        break;
    }

    v15[2] = v0;
    sub_1000A17F0();
    v27 = sub_1000A1848(v15 + v26);
    v28(v27);
  }

  while (v13 != 4);
  return v15;
}

unint64_t sub_10009E8B0()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B2F98, v2);
  sub_100008C18();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10009E8F0(char a1)
{
  result = 0x64656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x6769666E6F63;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x5F7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009E974(unsigned __int8 *a1, void *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (sub_10009C670((a1 + 8), (a2 + 1)))
  {
    memcpy(__dst, a2 + 13, sizeof(__dst));
    if (sub_10009DCC8((a1 + 104), __dst))
    {
      v7 = *(a1 + 23);
      v8 = a2[23];
      if (v7)
      {
        if (v8)
        {
          v9 = *(a1 + 22) == a2[22] && v7 == v8;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10009EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  v27 = v24;
  v29 = v28;
  v30 = sub_100099DF4(&qword_1002DA8B8, &qword_10022F278);
  sub_100003724();
  v32 = v31;
  sub_100003774();
  __chkstk_darwin(v33);
  sub_100002970();
  sub_100008B3C(v29, v29[3]);
  sub_1000A0D88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37[0] = 0;
  sub_1000A17B4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v25)
  {
    memcpy(v39, (v27 + 8), 0x60uLL);
    memcpy(v37, (v27 + 8), sizeof(v37));
    sub_1000A0F1C(v39, v36);
    sub_1000A0F54();
    sub_1000A17B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v36, v37, sizeof(v36));
    sub_1000A0E0C(v36);
    memcpy(v38, (v27 + 104), sizeof(v38));
    memcpy(v35, (v27 + 104), sizeof(v35));
    sub_1000A002C(v38, v34);
    sub_1000A0FA8();
    sub_1000A17B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v34, v35, sizeof(v34));
    sub_1000A0DDC(v34);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v32 + 8))(v26, v30);
  sub_100005074();
}

void sub_10009EC70(uint64_t a1)
{
  Hasher._combine(_:)(*v1 & 1);
  sub_10009C9C0();
  sub_10009DFEC();
  if (*(v1 + 184))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

void sub_10009ED14()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  sub_100099DF4(&qword_1002DA898, &qword_10022F270);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100005244();
  v12 = v2;
  sub_100008B3C(v2, v2[3]);
  sub_1000A0D88();
  sub_100005BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    v14 = 0;
    sub_100008C30();
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000A0E3C();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(&v22[7], v20, 0x60uLL);
    sub_1000A0E90();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v21, v19, sizeof(v21));
    sub_100008C30();
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = v8;
    v6 &= 1u;
    v10 = sub_100003780();
    v11(v10);
    LOBYTE(v13[0]) = v6;
    memcpy(v13 + 1, v22, 0x67uLL);
    memcpy(&v13[13], v21, 0x48uLL);
    v13[22] = v7;
    v13[23] = v9;
    sub_1000A0EE4(v13, &v14);
    sub_100004118(v12);
    v14 = v6;
    memcpy(v15, v22, sizeof(v15));
    memcpy(v16, v21, sizeof(v16));
    v17 = v7;
    v18 = v9;
    sub_1000A0464(&v14);
    memcpy(v4, v13, 0xC0uLL);
  }

  sub_100005074();
}

unint64_t sub_10009F040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009E8B0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F070@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009E8F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009F0A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009E8B0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F0EC(uint64_t a1)
{
  v2 = sub_1000A0D88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F128(uint64_t a1)
{
  v2 = sub_1000A0D88();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009F164(void *a1@<X8>)
{
  sub_10009ED14();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

BOOL sub_10009F1D0()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3040, v2);
  sub_100008C18();
  return v1 != 0;
}

void sub_10009F20C()
{
  sub_100004868();
  v2 = v0;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA7E0, &qword_10022EC58);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100002970();
  sub_100008B3C(v4, v4[3]);
  sub_1000A0330();
  sub_100005BDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v10, v2, sizeof(v10));
  sub_1000A03D8(v2, v9);
  sub_1000A0410();
  sub_1000A17B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000A17C4();
  sub_1000A0464(v9);
  (*(v7 + 8))(v1, v5);
  sub_100005074();
}

void sub_10009F350()
{
  sub_100004868();
  v2 = v1;
  v9 = v3;
  sub_100099DF4(&qword_1002DA7C8, &qword_10022EC50);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100005244();
  sub_100008B3C(v2, v2[3]);
  sub_1000A0330();
  sub_100005BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_1000A0384();
    sub_10000BC2C(&unk_1002B4990, v5);
    v6 = sub_10000CF74();
    v7(v6);
    sub_1000A17C4();
    sub_100004118(v2);
    memcpy(v9, v8, 0xC0uLL);
  }

  sub_100005074();
}

BOOL sub_10009F4B4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10009F1D0();
  *a1 = result;
  return result;
}

BOOL sub_10009F524@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10009F1D0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F590(uint64_t a1)
{
  v2 = sub_1000A0330();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F5CC(uint64_t a1)
{
  v2 = sub_1000A0330();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009F608(void *a1@<X8>)
{
  sub_10009F350();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

uint64_t sub_10009F6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagValueType();
  sub_100003724();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  (*(v6 + 104))(v10, enum case for BagValueType.dictionary(_:), v4, v8);
  sub_10000B654(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = v11;
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_10000B654(v13 > 1, v14 + 1, 1, v11);
    v12 = v16;
  }

  *(v12 + 16) = v14 + 1;
  (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v10, v4);
  return v12;
}

BOOL sub_10009F81C()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B30A0, v2);
  sub_100008C18();
  return v1 != 0;
}

uint64_t sub_10009F858(void *a1, void *a2)
{
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v5 = a1[22];
    v4 = a1[23];
    v7 = a2[22];
    v6 = a2[23];
    memcpy(__dst, a1 + 1, sizeof(__dst));
    memcpy(v11, a2 + 1, sizeof(v11));
    if (sub_10009C670(__dst, v11))
    {
      memcpy(v10, a2 + 13, sizeof(v10));
      if (sub_10009DCC8((a1 + 13), v10))
      {
        if (v4)
        {
          if (v6)
          {
            v8 = v5 == v7 && v4 == v6;
            if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v6)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_10009F944()
{
  sub_100004868();
  v2 = v0;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA780, &qword_10022E848);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100002970();
  sub_100008B3C(v4, v4[3]);
  sub_10009FEC8();
  sub_100005BDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v10, v2, sizeof(v10));
  sub_10009FF70(v2, v9);
  sub_10009FFA8();
  sub_1000A17B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000A17C4();
  sub_10009FFFC(v9);
  (*(v7 + 8))(v1, v5);
  sub_100005074();
}

Swift::Int sub_10009FA88()
{
  sub_100005BE8();
  sub_10009EC70(v1);
  return Hasher._finalize()();
}

void sub_10009FAC0()
{
  sub_100004868();
  v2 = v1;
  v9 = v3;
  sub_100099DF4(&qword_1002DA768, &qword_10022E840);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100005244();
  sub_100008B3C(v2, v2[3]);
  sub_10009FEC8();
  sub_100005BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_10009FF1C();
    sub_10000BC2C(&unk_1002B4770, v5);
    v6 = sub_10000CF74();
    v7(v6);
    sub_1000A17C4();
    sub_100004118(v2);
    memcpy(v9, v8, 0xC0uLL);
  }

  sub_100005074();
}

BOOL sub_10009FC20@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10009F81C();
  *a1 = result;
  return result;
}

void sub_10009FC54(uint64_t a1@<X8>)
{
  strcpy(a1, "ts_data_sync");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_10009FC98@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10009F81C();
  *a1 = result;
  return result;
}

uint64_t sub_10009FD08(uint64_t a1)
{
  v2 = sub_10009FEC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009FD44(uint64_t a1)
{
  v2 = sub_10009FEC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009FD80(void *a1@<X8>)
{
  sub_10009FAC0();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

Swift::Int sub_10009FE20(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10009EC70(v2);
  return Hasher._finalize()();
}

unint64_t sub_10009FE74()
{
  result = qword_1002DA760;
  if (!qword_1002DA760)
  {
    result = swift_getWitnessTable("}\t\b", &unk_1002B45C8, v0, v1);
    atomic_store(result, &qword_1002DA760);
  }

  return result;
}

unint64_t sub_10009FEC8()
{
  result = qword_1002DA770;
  if (!qword_1002DA770)
  {
    result = swift_getWitnessTable(asc_10022EC00, &unk_1002B46F8, v0, v1);
    atomic_store(result, &qword_1002DA770);
  }

  return result;
}

unint64_t sub_10009FF1C()
{
  result = qword_1002DA778;
  if (!qword_1002DA778)
  {
    result = swift_getWitnessTable(byte_10022EBD8, &unk_1002B4770, v0, v1);
    atomic_store(result, &qword_1002DA778);
  }

  return result;
}

unint64_t sub_10009FFA8()
{
  result = qword_1002DA788;
  if (!qword_1002DA788)
  {
    result = swift_getWitnessTable(byte_10022EBB0, &unk_1002B4770, v0, v1);
    atomic_store(result, &qword_1002DA788);
  }

  return result;
}

uint64_t sub_1000A006C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A00C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_1000A014C()
{
  result = qword_1002DA790;
  if (!qword_1002DA790)
  {
    result = swift_getWitnessTable(byte_10022E938, &unk_1002B4770, v0, v1);
    atomic_store(result, &qword_1002DA790);
  }

  return result;
}

unint64_t sub_1000A01D4()
{
  result = qword_1002DA7A8;
  if (!qword_1002DA7A8)
  {
    result = swift_getWitnessTable(a1_7, &unk_1002B46F8, v0, v1);
    atomic_store(result, &qword_1002DA7A8);
  }

  return result;
}

unint64_t sub_1000A022C()
{
  result = qword_1002DA7B0;
  if (!qword_1002DA7B0)
  {
    result = swift_getWitnessTable(asc_10022EAF8, &unk_1002B4648, v0, v1);
    atomic_store(result, &qword_1002DA7B0);
  }

  return result;
}

unint64_t sub_1000A0284()
{
  result = qword_1002DA7B8;
  if (!qword_1002DA7B8)
  {
    result = swift_getWitnessTable("1\b\b", &unk_1002B46F8, v0, v1);
    atomic_store(result, &qword_1002DA7B8);
  }

  return result;
}

unint64_t sub_1000A02DC()
{
  result = qword_1002DA7C0;
  if (!qword_1002DA7C0)
  {
    result = swift_getWitnessTable(byte_10022E9C8, &unk_1002B46F8, v0, v1);
    atomic_store(result, &qword_1002DA7C0);
  }

  return result;
}

unint64_t sub_1000A0330()
{
  result = qword_1002DA7D0;
  if (!qword_1002DA7D0)
  {
    result = swift_getWitnessTable(byte_10022F220, &unk_1002B4898, v0, v1);
    atomic_store(result, &qword_1002DA7D0);
  }

  return result;
}

unint64_t sub_1000A0384()
{
  result = qword_1002DA7D8;
  if (!qword_1002DA7D8)
  {
    result = swift_getWitnessTable(byte_10022F1F8, &unk_1002B4990, v0, v1);
    atomic_store(result, &qword_1002DA7D8);
  }

  return result;
}

unint64_t sub_1000A0410()
{
  result = qword_1002DA7E8;
  if (!qword_1002DA7E8)
  {
    result = swift_getWitnessTable(byte_10022F1D0, &unk_1002B4990, v0, v1);
    atomic_store(result, &qword_1002DA7E8);
  }

  return result;
}

unint64_t sub_1000A0494()
{
  result = qword_1002DA7F8;
  if (!qword_1002DA7F8)
  {
    result = swift_getWitnessTable(byte_10022F180, &unk_1002B4808, v0, v1);
    atomic_store(result, &qword_1002DA7F8);
  }

  return result;
}

unint64_t sub_1000A04E8()
{
  result = qword_1002DA810;
  if (!qword_1002DA810)
  {
    result = swift_getWitnessTable(aQ_1, &unk_1002B4910, v0, v1);
    atomic_store(result, &qword_1002DA810);
  }

  return result;
}

uint64_t sub_1000A053C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10009A468(&qword_1002DA800, &qword_10022EC68);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A05B4()
{
  result = qword_1002DA828;
  if (!qword_1002DA828)
  {
    result = swift_getWitnessTable(aI_1, &unk_1002B4910, v0, v1);
    atomic_store(result, &qword_1002DA828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerConfigModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000A0690(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000A0768(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_1000A0810(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A081C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A085C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A08A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}