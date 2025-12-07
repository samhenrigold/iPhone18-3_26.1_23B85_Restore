uint64_t sub_100001458(uint64_t a1)
{
  [*(a1 + 32) _waitForPromises];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

AMSPromise *__cdecl sub_100001594(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NSMutableArray);
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

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[AMSFollowUpViewController _bag];
        v11 = [v9 postMetricsWithBag:v10];

        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [AMSPromise promiseWithAll:v3];
  }

  else
  {
    [AMSPromise promiseWithResult:&__NSArray0__struct];
  }
  v12 = ;

  return v12;
}

void sub_100001878(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedFollowUpConfig];
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
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 item];
      v13 = [v12 logKey];
      v20 = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Follow up cleared", &v20, 0x16u);
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
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 item];
      v18 = [v17 logKey];
      v19 = AMSLogableError();
      v20 = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v18;
      v24 = 2114;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to clear follow up. Error = %{public}@", &v20, 0x20u);
    }
  }
}

void sub_100001B94(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedFollowUpConfig];
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
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 item];
      v13 = [v12 logKey];
      v20 = 138543618;
      v21 = v9;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully performed the follow up action.", &v20, 0x16u);
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
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 item];
      v18 = [v17 logKey];
      v19 = AMSLogableError();
      v20 = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v18;
      v24 = 2114;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to perform the follow up action. Error = %{public}@", &v20, 0x20u);
    }
  }
}

void sub_100001E84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 item];
      v13 = [v12 logKey];
      v14 = AMSLogableError();
      v21 = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to flush action metrics. Error = %{public}@", &v21, 0x20u);
    }
  }

  else
  {
    v15 = @"skipped";
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 BOOLValue])
    {
      v15 = @"posted";
    }

    v7 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 item];
      v20 = [v19 logKey];
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v20;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Follow up action metrics %{public}@", &v21, 0x20u);
    }
  }
}

void sub_1000021B8(uint64_t a1)
{
  v2 = [*(a1 + 32) activePromises];
  [v2 addObject:*(a1 + 40)];
}

void sub_100002314(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 item];
      v12 = [v11 logKey];
      v13 = AMSLogableError();
      v21 = 138543874;
      v22 = v8;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine URL type. Error = %{public}@", &v21, 0x20u);
    }
  }

  else if ([a2 integerValue] == 1)
  {
    v14 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v17 item];
      v20 = [v19 logKey];
      v21 = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Follow Up is web legacy type@", &v21, 0x16u);
    }

    [*(a1 + 32) _presentLegacyAccountViewController];
  }

  else
  {
    [*(a1 + 32) _presentEngagementAccountViewControllerWithBag:*(a1 + 40)];
  }
}

void sub_10000277C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002794(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000027AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedFollowUpConfig];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v8 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = AMSLogKey();
      v25 = 138543618;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Task finished successfully. Clearing follow up", &v25, 0x16u);
    }

    v19 = *(*(*(a1 + 40) + 8) + 40);
    goto LABEL_18;
  }

  if (!v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v25 = 138543874;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to run engagement task. %{public}@", &v25, 0x20u);
  }

  v12 = [*(a1 + 32) action];
  if (([v12 shouldClear] & 1) == 0)
  {

    goto LABEL_20;
  }

  v13 = [*(a1 + 32) action];
  v14 = [v13 requiresFollowUpUI];

  if (v14)
  {
    v15 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v25 = 138543618;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing follow up due to shouldClear despite error.", &v25, 0x16u);
    }

    v19 = *(a1 + 32);
LABEL_18:
    [v19 _enqueueClearFollowUp];
  }

LABEL_20:
  [*(*(*(a1 + 40) + 8) + 40) _dismiss];
  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;
}

id sub_100002B40(uint64_t a1)
{
  [*(a1 + 32) _waitForPromises];
  v2 = *(a1 + 32);

  return [v2 finishProcessing];
}

void sub_100002DB0(uint64_t a1)
{
  v2 = +[UIColor whiteColor];
  v3 = [*(a1 + 32) accountViewController];
  v4 = [v3 view];
  [v4 setBackgroundColor:v2];

  v5 = [*(a1 + 32) accountViewController];
  [v5 setModalPresentationStyle:2];

  v6 = *(a1 + 32);
  v7 = [v6 accountViewController];
  [v6 presentViewController:v7 animated:1 completion:0];
}

void sub_100003068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100003084(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [WeakRetained item];
    v8 = [v7 logKey];
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dismissing host controller", buf, 0x16u);
  }

  [WeakRetained setAccountViewController:0];
  v9 = [WeakRetained internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000324C;
  block[3] = &unk_1000083A0;
  objc_copyWeak(&v11, (a1 + 32));
  dispatch_async(v9, block);

  objc_destroyWeak(&v11);
}

void sub_10000324C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _waitForPromises];
  [WeakRetained finishProcessing];
}

Class sub_100003430()
{
  if (qword_10000C7B8 != -1)
  {
    sub_1000034BC();
  }

  result = objc_getClass("SKAccountPageViewController");
  qword_10000C7B0 = result;
  off_10000C6E8 = sub_100003484;
  return result;
}