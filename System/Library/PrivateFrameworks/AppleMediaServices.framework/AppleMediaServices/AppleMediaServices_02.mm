id sub_10004F358(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [a1[4] queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004F464;
  v11[3] = &unk_1002B0380;
  v12 = a1[5];
  v13 = v3;
  v6 = v4;
  v14 = v6;
  v15 = a1[6];
  v7 = v3;
  dispatch_async(v5, v11);

  v8 = v15;
  v9 = v6;

  return v6;
}

void sub_10004F464(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(a1 + 40);
  v4 = +[NSFileManager defaultManager];
  v5 = [AMSCookieDatabase cleanUpCookieDatabasesWithValidIdentifiers:v3 fileManager:v4];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004F55C;
  v6[3] = &unk_1002AFD88;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v5 addFinishBlock:v6];
}

id sub_10004F55C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [NSNumber numberWithBool:a2];
  [v5 finishWithResult:v7 error:v6];

  v8 = *(a1 + 40);

  return [AMSDTransactionStore releaseKeepAliveTransaction:v8];
}

void sub_10004F698(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, a2, v5);
}

void sub_10004F7F4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _cookieDatabaseForAccount:v3 error:&v9];
  v5 = v9;
  v6 = a1[6];
  v7 = [v4 dbPath];
  v8 = [v5 ams_sanitizedForSecureCoding];
  (*(v6 + 16))(v6, v7, v8);
}

void sub_10004FACC(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = AMSLogKey();
    v5 = objc_opt_class();
    v6 = v5;
    if (v4)
    {
      v7 = AMSLogKey();
      v8 = [NSString stringWithFormat:@"%@: [%@] ", v6, v7];
    }

    else
    {
      v8 = [NSString stringWithFormat:@"%@: ", v5];
      v7 = v8;
    }

    v9 = NSStringFromSelector(*(a1 + 56));
    *buf = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@ - performing block", buf, 0x16u);
    if (v4)
    {
    }
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004FD60;
  v20[3] = &unk_1002B0358;
  v10 = *(a1 + 56);
  v20[4] = *(a1 + 32);
  v20[5] = v10;
  v11 = objc_retainBlock(v20);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 64);
  v19 = 0;
  v15 = [v12 getCookiePropertiesForAccount:v13 cookieDatabaseOnly:v14 error:&v19];
  v16 = v19;
  v17 = *(a1 + 48);
  v18 = [v16 ams_sanitizedForSecureCoding];
  (*(v17 + 16))(v17, v15, v18);

  (v11[2])(v11);
}

void sub_10004FD60(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
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
    v9 = NSStringFromSelector(*(a1 + 40));
    *buf = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@ - finishing block", buf, 0x16u);
    if (v5)
    {

      v8 = v1;
    }
  }
}

void sub_10005097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000509A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000509C0(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = AMSLogKey();
    v5 = objc_opt_class();
    v6 = v5;
    if (v4)
    {
      v7 = AMSLogKey();
      v8 = [NSString stringWithFormat:@"%@: [%@] ", v6, v7];
    }

    else
    {
      v8 = [NSString stringWithFormat:@"%@: ", v5];
      v7 = v8;
    }

    v9 = NSStringFromSelector(*(a1 + 80));
    *buf = 138543618;
    v32 = v8;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@ - performing block", buf, 0x16u);
    if (v4)
    {
    }
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100050CC4;
  v30[3] = &unk_1002B0358;
  v10 = *(a1 + 80);
  v30[4] = *(a1 + 32);
  v30[5] = v10;
  v11 = objc_retainBlock(v30);
  v12 = [*(a1 + 40) identifier];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) identifier];
    [v14 _cacheCookieProperties:0 forIdentifier:v15];
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v29 = 0;
  v18 = [v16 _cookieDatabaseForAccount:v17 error:&v29];
  v19 = v29;
  v20 = v19;
  if (v18)
  {
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v28 = v19;
    v23 = [v18 updateCookiesWithCookiePropertiesToAdd:v21 cookiePropertiesToRemove:v22 error:&v28];
    v24 = v28;

    v20 = v24;
  }

  else
  {
    v23 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v23;
  v25 = *(*(a1 + 72) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v20;
  v27 = v20;

  (v11[2])(v11);
}

void sub_100050CC4(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
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
    v9 = NSStringFromSelector(*(a1 + 40));
    *buf = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@ - finishing block", buf, 0x16u);
    if (v5)
    {

      v8 = v1;
    }
  }
}

void sub_100050E50(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 24);
  v3 = [*(*(a1[6] + 8) + 40) ams_sanitizedForSecureCoding];
  (*(v1 + 16))(v1, v2, v3);
}

void sub_100051514(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = [*(a1 + 32) connections];
  [v2 removeObject:*(a1 + 40)];

  v3 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v3);
}

void sub_100051578(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = [*(a1 + 32) connections];
  [v2 removeObject:*(a1 + 40)];

  v3 = (*(a1 + 32) + 24);

  os_unfair_lock_unlock(v3);
}

void sub_1000517D0(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
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
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully cleared dangling cookie databases", buf, 0xCu);
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
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Error clearing dangling cookie databases: %{public}@", buf, 0x16u);
      if (v14)
      {

        v17 = v3;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100051BE8(uint64_t a1)
{
  v2 = objc_alloc_init(AMSDataMigratorOptions);
  v3 = +[AMSDevice buildVersion];
  [v2 setCurrentBuildVersion:v3];

  v4 = [*(a1 + 32) _previousBuildVersion];
  [v2 setPreviousBuildVersion:v4];

  [v2 setScenario:4];
  [AMSDataMigrator performMigrationWithOptions:v2];
  v5 = [*(a1 + 32) _previousBuildVersion];

  if (!v5)
  {
    v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running clean install tasks", buf, 0x16u);
    }

    +[AMSUniversalLinks update];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100051EDC;
  v19[3] = &unk_1002B04C0;
  v19[4] = *(a1 + 32);
  v10 = v19;
  v11 = AMSLogKey();
  v12 = dispatch_get_global_queue(0, 0);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100053760;
  v21 = &unk_1002B05B8;
  v22 = v11;
  v23 = v10;
  v13 = v11;
  dispatch_async(v12, buf);

  v14 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100051EE4;
  v18[3] = &unk_1002B04C0;
  v18[4] = v14;
  [v14 _clearDanglingCookieDatabasesWithCompletion:v18];
  v15 = [AMSDPrivateIdentifiersXPCServerCreator serverWithError:0];
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = v15;
}

void sub_100051EE4(uint64_t a1)
{
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Complete cookie database cleanup and start XPC", buf, 0xCu);
    if (v5)
    {

      v8 = v1;
    }
  }

  [*(a1 + 32) _setupNotifications];
  [*(a1 + 32) _setupPollJobs];
  v9 = +[AMSDDeviceMessengerService sharedService];
  v10 = +[AMSDPushService sharedService];
  [*(a1 + 32) _startXPC];
  [*(a1 + 32) _setupAccountDataSync];
  [*(a1 + 32) _setupTSDataSync];
  [*(a1 + 32) _updateRegulatoryEligibility];
  v11 = +[AssetsJetpackFetcherWrapper shared];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100052114;
  v12[3] = &unk_1002AFDD8;
  v12[4] = *(a1 + 32);
  [v11 performOnStartupWithCompletionHandler:v12];
}

void sub_100052114(void *a1, void *a2)
{
  v3 = a2;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduled assets Jetpack fetcher; error %{public}@", buf, 0x16u);
    if (v6)
    {

      v9 = a1;
    }
  }
}

AMSPromise *__cdecl sub_10005234C(id a1, ACAccount *a2)
{
  v2 = a2;
  v3 = [(ACAccount *)v2 ams_cookies];
  v4 = [v3 ams_anyWithTest:&stru_1002B0540];

  if (v4)
  {
    v5 = +[AMSBinaryPromise promiseWithSuccess];
    v6 = [(AMSDSecurityService *)v5 promiseAdapter];
  }

  else
  {
    v5 = objc_alloc_init(AMSDSecurityService);
    v7 = objc_alloc_init(AMSBinaryPromise);
    v8 = [v7 completionHandlerAdapter];
    [(AMSDSecurityService *)v5 performBiometricTokenUpdateWithAccount:v2 clientInfo:0 additionalDialogMetrics:0 shouldGenerateKeysOnly:0 shouldRequestConfirmation:0 userInitiated:0 completion:v8];

    v6 = [v7 promiseAdapter];
  }

  return v6;
}

BOOL sub_10005244C(id a1, NSHTTPCookie *a2)
{
  v2 = [(NSHTTPCookie *)a2 name];
  v3 = [v2 hasPrefix:@"mt-tid-"];

  return v3;
}

void sub_100052C0C(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    v10 = v9;
    if (v8)
    {
      a1 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v10, a1];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    if (a2)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = AMSLogableError();
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Daemon startup completed Multi-User Databse Notification Subscriptin check. success = %{public}@ | error = %{public}@", buf, 0x20u);
    if (v8)
    {

      v11 = a1;
    }
  }
}

id sub_100052EB4(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Acting on first device unlock notification", &v7, 0x16u);
  }

  return [*(a1 + 32) _updateRegulatoryEligibility];
}

void sub_100053108(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSLogableError();
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] TSDataSync started with error %{public}@", &v8, 0x20u);
  }
}

uint64_t sub_1000532F0(uint64_t a1)
{
  v2 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Received SIGTERM...", &v6, 0xCu);
  }

  dispatch_source_cancel(*(*(a1 + 32) + 8));
  [*(a1 + 32) _tearDownMultiUser];
  +[AMSLiveTransactionStore shutdown];
  +[AMSDTransactionStore shutdown];
  v4 = [*(a1 + 32) listener];
  [v4 invalidate];

  return xpc_transaction_exit_clean();
}

uint64_t sub_100053760(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000537F0(id a1)
{
  qword_1002E31E8 = objc_alloc_init(AMSDDeviceMessengerService);

  _objc_release_x1();
}

void sub_100053CA0(uint64_t a1)
{
  v3 = [*(a1 + 32) delegates];
  v2 = [NSValue valueWithWeakObject:*(a1 + 40)];
  [v3 addObject:v2];
}

void sub_100053F0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _getSavedMessages];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100054134(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000541E0;
  v7[3] = &unk_1002B0628;
  v7[4] = v3;
  v8 = v2;
  v4 = [v3 _sendMessage:v8 withReplyHandler:v7];
  (*(a1[6] + 16))(a1[6], v4, 0, v5, v6);
}

void sub_1000541E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = [*(a1 + 40) logKey];
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error sending message. Error: %{public}@", &v15, 0x20u);
LABEL_10:
    }
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v11 = [*(a1 + 40) logKey];
      v13 = [v5 origin];
      v14 = [v13 identifier];
      v15 = 138544130;
      v16 = v12;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received reply for: %{public}@ from: %{public}@", &v15, 0x2Au);

      goto LABEL_10;
    }
  }
}

void sub_100057254(id a1)
{
  qword_1002E31F8 = objc_alloc_init(AMSDDismissQRDialogService);

  _objc_release_x1();
}

void sub_100057384(uint64_t a1)
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
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] QR code dialog start listening for push notifications with identifier: %@", &v10, 0x20u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v8 = objc_retainBlock(*(a1 + 48));
  v9 = [*(a1 + 32) dismissalCompletionQueue];
  [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

uint64_t sub_1000575E8(uint64_t a1)
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
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] QR code dialog stop listening for push notifications with identifier: %@", &v10, 0x20u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v8 = [*(a1 + 32) dismissalCompletionQueue];
  [v8 setObject:0 forKeyedSubscript:*(a1 + 40)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  return (*(*(a1 + 48) + 16))();
}

void sub_100057820(uint64_t a1)
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
    v7 = *(a1 + 40);
    v12 = 138543874;
    v13 = v4;
    v14 = 2114;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] QR code dialog notified for dismissal with identifier: %@", &v12, 0x20u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v8 = [*(a1 + 32) dismissalCompletionQueue];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];
  v10 = [v9 copy];

  v11 = [*(a1 + 32) dismissalCompletionQueue];
  [v11 setObject:0 forKeyedSubscript:*(a1 + 40)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if (v10)
  {
    v10[2](v10);
  }
}

id sub_100057C3C(uint64_t a1, void *a2)
{
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v43 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = [*(a1 + 32) home];
    v8 = AMSHashIfNeeded();
    v9 = [*(a1 + 32) user];
    AMSHashIfNeeded();
    v10 = v45 = a2;
    v11 = [*(a1 + 32) database];
    v12 = AMSHashIfNeeded();
    v13 = [*(a1 + 32) createIfMissing];
    *buf = 138544642;
    v14 = @"false";
    v50 = v43;
    v51 = 2114;
    if (v13)
    {
      v14 = @"true";
    }

    v52 = v6;
    v53 = 2114;
    v54 = v8;
    v55 = 2114;
    v56 = v10;
    v57 = 2114;
    v58 = v12;
    v59 = 2114;
    v60 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Fetching a record zone. home = %{public}@ | user = %{public}@ | database = %{public}@ | createIfMissing = %{public}@", buf, 0x3Eu);

    a2 = v45;
  }

  [*(a1 + 32) enqueBeginMetrics];
  v15 = *(a1 + 32);
  v48 = 0;
  v16 = [v15 _fetchRecordZoneWithError:&v48];
  v17 = v48;
  v18 = v17;
  if (v16)
  {
    v19 = v16;
    goto LABEL_31;
  }

  if ([v17 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7])
  {
    if ([*(a1 + 32) createIfMissing])
    {
      v20 = [*(a1 + 32) database];
      v21 = [v20 isPrivateDatabase];

      if (v21)
      {
        v22 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v22)
        {
          v22 = +[AMSLogConfig sharedConfig];
        }

        v23 = [v22 OSLogObject];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = objc_opt_class();
          v25 = AMSLogKey();
          *buf = 138543618;
          v50 = v24;
          v51 = 2114;
          v52 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] The record zone doesn't exist. Creating it.", buf, 0x16u);
        }

        v26 = *(a1 + 32);
        v47 = 0;
        v19 = [v26 _createRecordZoneWithError:&v47];
        v27 = v47;
        v28 = v27;
        if (v27)
        {
          if (a2)
          {
            v29 = v27;
            *a2 = v28;
          }

          [*(a1 + 32) enqueFailedMetrics:v28];
        }

        goto LABEL_31;
      }
    }
  }

  else
  {
    v30 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v30)
    {
      v30 = +[AMSLogConfig sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v32 = AMSLogKey();
      v44 = [*(a1 + 32) home];
      v33 = AMSHashIfNeeded();
      v42 = [*(a1 + 32) user];
      v34 = AMSHashIfNeeded();
      v35 = [*(a1 + 32) database];
      v36 = AMSHashIfNeeded();
      v46 = a2;
      v37 = v36;
      *buf = 138544642;
      v38 = @"true";
      v50 = v41;
      v51 = 2114;
      if (!v18)
      {
        v38 = @"false";
      }

      v52 = v32;
      v53 = 2114;
      v54 = v33;
      v55 = 2114;
      v56 = v34;
      v57 = 2114;
      v58 = v36;
      v59 = 2114;
      v60 = v38;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch a record zone. home = %{public}@ | user = %{public}@ | database = %{public}@ | error = %{public}@", buf, 0x3Eu);

      a2 = v46;
    }
  }

  if (a2)
  {
    v39 = v18;
    *a2 = v18;
  }

  [*(a1 + 32) enqueFailedMetrics:{v18, v41}];
  v19 = 0;
LABEL_31:

  return v19;
}

id sub_100058FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDefaultRecordZone])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) database];
    v6 = +[AMSDHomeManager identifiersForRecordZone:inDatabase:qualityOfService:](AMSDHomeManager, "identifiersForRecordZone:inDatabase:qualityOfService:", v3, v5, [*(a1 + 32) qualityOfService]);
    v20 = 0;
    v7 = [v6 resultWithError:&v20];
    v8 = v20;

    if (v7)
    {
      v9 = [*(a1 + 32) home];
      v10 = [v9 identifier];
      v11 = [v7 first];
      if ([v10 isEqual:v11])
      {
        v12 = [*(a1 + 32) user];
        v13 = [v12 identifier];
        v14 = [v7 second];
        v4 = [v13 isEqual:v14];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        v17 = AMSHashIfNeeded();
        v18 = AMSHashIfNeeded();
        *buf = 138544130;
        v22 = v15;
        v23 = 2114;
        v24 = v16;
        v25 = 2114;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch home/home user identifiers for a record zone. recordZone = %{public}@ | error = %{public}@", buf, 0x2Au);
      }

      v4 = 0;
    }
  }

  return v4;
}

Class sub_1000597A0(uint64_t a1)
{
  sub_1000597F8();
  result = objc_getClass("ODISession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3200 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B1C0();
    return sub_1000597F8();
  }

  return result;
}

uint64_t sub_1000597F8()
{
  v3[0] = 0;
  if (!qword_1002E3208)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000598F8;
    v3[4] = &unk_1002B0760;
    v3[5] = v3;
    v4 = off_1002B0748;
    v5 = 0;
    qword_1002E3208 = _sl_dlopen();
  }

  v0 = qword_1002E3208;
  v1 = v3[0];
  if (!qword_1002E3208)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000598F8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E3208 = result;
  return result;
}

void *sub_10005996C(uint64_t a1)
{
  v2 = sub_1000597F8();
  result = dlsym(v2, "ODIServiceProviderIdTDMTrustedInference");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E3210 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100059B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = AMSSetLogKeyIfNeeded();
  v5 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    *buf = 138543874;
    v34 = v7;
    v35 = 2114;
    v36 = v4;
    v37 = 2112;
    v38 = v8;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running fraud report blinding message task. (transactionId: %@)", buf, 0x20u);
  }

  v10 = [*(a1 + 32) bag];
  v11 = [v10 URLForKey:AMSBagKeyFraudReportPKSService];
  v12 = [v11 valuePromise];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100059E50;
  v29[3] = &unk_1002B0788;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v30 = v13;
  v31 = v14;
  v15 = v4;
  v32 = v15;
  v16 = [v12 continueWithBlock:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005A078;
  v27[3] = &unk_1002B07B0;
  v27[4] = *(a1 + 32);
  v17 = v15;
  v28 = v17;
  v18 = [v16 continueWithBlock:v27];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005A1F4;
  v23[3] = &unk_1002B07D8;
  v19 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v17;
  v25 = v19;
  v26 = *(a1 + 48);
  v20 = v17;
  v21 = [v18 continueWithBlock:v23];

  return v21;
}

id sub_100059E50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (*(a1 + 32))
    {
      v8 = [v5 URLByAppendingPathComponent:?];

      v5 = v8;
    }

    v9 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 48);
      *buf = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fraud report blinding message - obtaining keys", buf, 0x16u);
    }

    v14 = [AMSURLRequestEncoder alloc];
    v15 = [*(a1 + 40) bag];
    v16 = [v14 initWithBag:v15];

    [v16 setDialogOptions:1];
    [v16 setRequestEncoding:1];
    [v16 setUrlKnownToBeTrusted:1];
    [v16 setLogUUID:*(a1 + 48)];
    v17 = [v16 requestWithMethod:2 URL:v5 parameters:0];
  }

  else
  {
    v20 = v6;
    v18 = AMSErrorWithFormat();
    v17 = [AMSPromise promiseWithError:v18, v20];
  }

  return v17;
}

id sub_10005A078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[AMSURLSession defaultSession];
    v8 = [v7 dataTaskPromiseWithRequest:v5];
  }

  else
  {
    v9 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error fraud report blinding message, cannot create request: %{public}@", &v14, 0x20u);
    }

    v8 = [AMSPromise promiseWithError:v6];
  }

  return v8;
}

id sub_10005A1F4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedFraudReportConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = a1[5];
      *buf = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fraud report blinding message - obtaining keys success", buf, 0x16u);
    }

    v13 = a1[6];
    v14 = [v5 data];
    v15 = a1[7];
    v23 = 0;
    v16 = [AMSDFraudReportPrivacyTask _blindedTransactionWithTransactionID:v13 pks:v14 keyID:v15 error:&v23];
    v17 = v23;

    if (v16)
    {
      [AMSPromise promiseWithResult:v16];
    }

    else
    {
      [AMSPromise promiseWithError:v17];
    }
    v21 = ;
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v8 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = a1[5];
      *buf = 138543874;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Error fraud report blinding message, cannot fetch the pks key: %{public}@", buf, 0x20u);
    }

    v21 = [AMSPromise promiseWithError:v6];
  }

  return v21;
}

void sub_10005AC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v7)
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
    v50 = v9;
    v51 = 2114;
    v52 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished blinding transaction.", buf, 0x16u);
  }

  if (v5)
  {
    v12 = [*(a1 + 40) fsrData];
    v48 = 0;
    v13 = [AMSDFraudReportService _reportedScoreFromFSRDataString:v12 error:&v48];
    v14 = v48;

    if (v13)
    {
      v15 = [AMSDFraudReportServiceRequest alloc];
      v16 = [*(a1 + 40) nameSpace];
      v17 = [v13 unsignedCharValue];
      [v5 blindedMessage];
      v43 = v14;
      v18 = v13;
      v20 = v19 = v6;
      v21 = [v5 keyID];
      v22 = -[AMSDFraudReportServiceRequest initWithNameSpace:reportedScore:blindedMessage:keyID:authenticationTokenType:shouldIncludeODIAssessment:](v15, "initWithNameSpace:reportedScore:blindedMessage:keyID:authenticationTokenType:shouldIncludeODIAssessment:", v16, v17, v20, v21, [*(a1 + 40) authenticationTokenType], objc_msgSend(*(a1 + 40), "shouldIncludeODIAssessment"));

      v6 = v19;
      v13 = v18;
      v14 = v43;

      v23 = [AMSDFraudReportServiceTask alloc];
      v24 = [*(a1 + 40) account];
      v25 = [(AMSDFraudReportServiceTask *)v23 initWithAccount:v24 bag:*(a1 + 48)];

      v26 = [(AMSDFraudReportServiceTask *)v25 performReceiveFraudReportForServiceRequest:v22];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10005B1A0;
      v45[3] = &unk_1002B0828;
      v47 = *(a1 + 56);
      v46 = v5;
      [v26 resultWithCompletion:v45];
    }

    else
    {
      v28 = +[AMSUnitTests isRunningUnitTests];
      v29 = +[AMSLogConfig sharedFraudReportConfig];
      v30 = v29;
      if (v28)
      {
        if (!v29)
        {
          v30 = +[AMSLogConfig sharedConfig];
        }

        v31 = [v30 OSLogObject];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v42 = v32;
          v33 = AMSLogKey();
          [v14 ams_title];
          v35 = v34 = v6;
          *buf = 138543874;
          v50 = v32;
          v51 = 2114;
          v52 = v33;
          v53 = 2114;
          v54 = v35;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to parse reported score from fsrData: %{public}@", buf, 0x20u);

          v6 = v34;
          v13 = 0;
        }

        v30 = +[NSNotificationCenter defaultCenter];
        v36 = +[AMSLogConfig sharedFraudReportConfig];
        [v30 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v36 userInfo:0];
      }

      else
      {
        if (!v29)
        {
          v30 = +[AMSLogConfig sharedConfig];
        }

        v36 = [v30 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          v37 = objc_opt_class();
          v44 = v37;
          v38 = AMSLogKey();
          [v14 ams_title];
          v40 = v39 = v6;
          *buf = 138543874;
          v50 = v37;
          v51 = 2114;
          v52 = v38;
          v53 = 2114;
          v54 = v40;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Unable to parse reported score from fsrData: %{public}@", buf, 0x20u);

          v6 = v39;
        }
      }

      v41 = *(a1 + 56);
      v22 = AMSError();
      (*(v41 + 16))(v41, 0, v22);
    }
  }

  else
  {
    v27 = *(a1 + 56);
    v14 = [v6 ams_sanitizedForSecureCoding];
    (*(v27 + 16))(v27, 0, v14);
  }
}

void sub_10005B1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [*(a1 + 32) tdmToken];
    v7 = [*(a1 + 32) pks];
    v13 = 0;
    v8 = [AMSDFraudReportPrivacyTask performUnBlindingFraudReportForResponse:v5 tdmToken:v6 pks:v7 error:&v13];
    v9 = v13;

    v10 = *(a1 + 40);
    v11 = [v9 ams_sanitizedForSecureCoding];
    (*(v10 + 16))(v10, v8, v11);
  }

  else
  {
    v12 = *(a1 + 40);
    v8 = [a3 ams_sanitizedForSecureCoding];
    (*(v12 + 16))(v12, 0, v8);
  }
}

void sub_10005B844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

AMSPromise *__cdecl sub_10005B860(id a1, ACAccount *a2, NSString *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(ACAccount *)v5 accountStore];
  v7 = [v6 ams_fetchGrandSlamTokenForAccount:v5 withIdentifier:v4];

  return v7;
}

AMSDFraudReportODIAssessmentProvider *__cdecl sub_10005B8EC(id a1)
{
  v10 = 0;
  v1 = [[AMSDFraudReportODIAssessmentProvider alloc] initWithError:&v10];
  v2 = v10;
  if (!v1)
  {
    v3 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = AMSLogKey();
      v8 = AMSLogableError();
      *buf = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot create ODI assessment provider: %{public}@.", buf, 0x20u);
    }
  }

  return v1;
}

id sub_10005BA6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained bag];
    AMSFraudReportAddDeviceIdentityCertificateAndSignatureToRequest();
  }

  else
  {
    v9 = AMSError();
    [AMSPromise promiseWithError:v9];
  }
  v10 = ;

  return v10;
}

id sub_10005BBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = AMSSetLogKeyIfNeeded();
  v5 = +[AMSLogConfig sharedFraudReportConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = objc_opt_class();
    v26 = 2114;
    v27 = v4;
    v7 = v25;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running fraud report service request.", buf, 0x16u);
  }

  v8 = [*(a1 + 32) bag];
  v9 = [v8 URLForKey:AMSBagKeyFraudReportService];

  v10 = +[AMSDFraudReportServiceTask grandSlamTokenIdentifierForAuthenticationTokenType:](AMSDFraudReportServiceTask, "grandSlamTokenIdentifierForAuthenticationTokenType:", [*(a1 + 40) authenticationTokenType]);
  v11 = [*(a1 + 32) account];
  v12 = [AMSDFraudReportServiceTask determineAccountForAccount:v11];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005BE48;
  v19[3] = &unk_1002B0A30;
  v13 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v9;
  v21 = v10;
  v22 = v13;
  v23 = v4;
  v14 = v4;
  v15 = v10;
  v16 = v9;
  v17 = [v12 thenWithBlock:v19];

  return v17;
}

id sub_10005BE48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) requestEncoderWithAccount:v3];
  v5 = [v4 requestWithMethod:4 bagURL:*(a1 + 40) parameters:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005C008;
  v19[3] = &unk_1002B0940;
  v19[4] = *(a1 + 32);
  v6 = v3;
  v20 = v6;
  v21 = *(a1 + 48);
  v7 = [v5 thenWithBlock:v19];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005C01C;
  v13[3] = &unk_1002B0A08;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 64);
  v17 = v6;
  v18 = *(a1 + 48);
  v10 = v6;
  v11 = [v7 thenWithBlock:v13];

  return v11;
}

id sub_10005C01C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AADeviceInfo currentInfo];
  v5 = [v4 clientInfoHeader];

  [v3 setValue:v5 forHTTPHeaderField:AMSHTTPHeaderMMeClientInfo];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10005C328;
  v36 = sub_10005C338;
  v6 = [*(a1 + 32) shouldIncludeODIAssessment];
  v7 = 0;
  if (v6)
  {
    v7 = (*(*(*(a1 + 40) + 32) + 16))();
  }

  v37 = v7;
  v8 = [AMSDFraudReportServiceTask requestBodyParametersForRequest:*(a1 + 32) odiAssessmentProvider:v33[5]];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005C340;
  v30[3] = &unk_1002B0968;
  v30[4] = *(a1 + 40);
  v9 = v3;
  v31 = v9;
  v10 = [v8 thenWithBlock:v30];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005C360;
  v27[3] = &unk_1002B09B8;
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = *(a1 + 40);
  v21 = v11;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v28 = v21;
  v29 = v14;
  v15 = [v10 thenWithBlock:v27];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005C50C;
  v22[3] = &unk_1002B09E0;
  v26 = &v32;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v19 = [v15 continueWithBlock:v22];

  _Block_object_dispose(&v32, 8);

  return v19;
}

uint64_t sub_10005C328(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10005C360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMSURLSession defaultSession];
  v5 = [v4 dataTaskPromiseWithRequest:v3];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005C484;
  v12[3] = &unk_1002B0990;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v15 = v3;
  v16 = v8;
  v17 = *(a1 + 56);
  v9 = v3;
  v10 = [v5 continueWithBlock:v12];

  return v10;
}

id sub_10005C484(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = AMSSetLogKey();
  v8 = [*(a1 + 40) handleExpiredAuthenticationTokenErrorWithResult:v6 error:v5 forRequest:*(a1 + 48) account:*(a1 + 56) tokenIdentifier:*(a1 + 64)];

  return v8;
}

id sub_10005C50C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) provideFeedbackWithOutcome:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = [v5 object];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v23 = [AMSFraudReportResponse alloc];
        v24 = [*(a1 + 32) nameSpace];
        v25 = [*(a1 + 32) reportedScore];
        v26 = [*(a1 + 32) keyID];
        v50 = 0;
        v27 = [v23 initWithResponseDictionary:v12 expectedNamespace:v24 expectedReportedScore:v25 keyID:v26 error:&v50];
        v28 = v50;

        if (v27)
        {
          v29 = +[AMSLogConfig sharedFraudReportConfig];
          if (!v29)
          {
            v29 = +[AMSLogConfig sharedConfig];
          }

          v30 = [v29 OSLogObject];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = objc_opt_class();
            v32 = *(a1 + 48);
            *buf = 138543618;
            v52 = v31;
            v53 = 2114;
            v54 = v32;
            v33 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fraud report received service result", buf, 0x16u);
          }

          v21 = [AMSPromise promiseWithResult:v27];
        }

        else
        {
          v35 = +[AMSUnitTests isRunningUnitTests];
          v36 = +[AMSLogConfig sharedFraudReportConfig];
          v37 = v36;
          if (v35)
          {
            if (!v36)
            {
              v37 = +[AMSLogConfig sharedConfig];
            }

            v38 = [v37 OSLogObject];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = objc_opt_class();
              v46 = *(a1 + 48);
              v48 = v39;
              v40 = [v28 ams_title];
              *buf = 138543874;
              v52 = v39;
              v53 = 2114;
              v54 = v46;
              v55 = 2114;
              v56 = v40;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to parse fraud report response: %{public}@", buf, 0x20u);
            }

            v37 = +[NSNotificationCenter defaultCenter];
            v41 = +[AMSLogConfig sharedFraudReportConfig];
            [v37 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v41 userInfo:0];
          }

          else
          {
            if (!v36)
            {
              v37 = +[AMSLogConfig sharedConfig];
            }

            v41 = [v37 OSLogObject];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              v42 = objc_opt_class();
              v47 = *(a1 + 48);
              v49 = v42;
              v43 = [v28 ams_title];
              *buf = 138543874;
              v52 = v42;
              v53 = 2114;
              v54 = v47;
              v55 = 2114;
              v56 = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Failed to parse fraud report response: %{public}@", buf, 0x20u);
            }
          }

          v44 = AMSError();
          v21 = [AMSPromise promiseWithError:v44];
        }
      }

      else
      {
        v34 = AMSError();
        v21 = [AMSPromise promiseWithError:v34];
      }
    }

    else
    {
      v22 = AMSError();
      v21 = [AMSPromise promiseWithError:v22];
    }
  }

  else
  {
    v13 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 48);
      v17 = v15;
      v18 = AMSLogableError();
      *buf = 138543874;
      v52 = v15;
      v53 = 2114;
      v54 = v16;
      v55 = 2114;
      v56 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fraud report request failed with error: %{public}@", buf, 0x20u);
    }

    [*(*(*(a1 + 56) + 8) + 40) provideFeedbackWithOutcome:1];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    v21 = [AMSPromise promiseWithError:v6];
  }

  return v21;
}

id sub_10005CE54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedFraudReportConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v22 = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Retrieved new authentication token after silent auth, retrying fraud report request.", &v22, 0x16u);
    }

    v13 = [*(a1 + 56) mutableCopy];
    [v13 setValue:v5 forHTTPHeaderField:AMSHTTPHeaderAuthorization];
    v14 = +[AMSURLSession defaultSession];
    v15 = [v14 dataTaskPromiseWithRequest:v13];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v8 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 40);
      v19 = v17;
      v20 = AMSLogableError();
      v22 = 138543874;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve updated authentication token after silent auth, not retrying request. Error: %{public}@.", &v22, 0x20u);
    }

    v15 = [AMSPromise promiseWithError:*(a1 + 48)];
  }

  return v15;
}

id sub_10005D1F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[AMSLogConfig sharedFraudReportConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = AMSSetLogKeyIfNeeded();
      v16 = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v4;
      v10 = "%{public}@: [%{public}@] No iTunes account found for the given account | error = %{public}@";
      v11 = v7;
      v12 = 32;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v9 = AMSSetLogKeyIfNeeded();
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v9;
      v10 = "%{public}@: [%{public}@] iTunes backing account for given account found.";
      v11 = v7;
      v12 = 22;
      goto LABEL_10;
    }
  }

  v14 = [AMSPromise promiseWithResult:*(a1 + 32)];

  return v14;
}

AMSPromise *sub_10005D7F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setValue:a2 forHTTPHeaderField:AMSHTTPHeaderAuthorization];
    [*(a1 + 32) setValue:*(a1 + 40) forHTTPHeaderField:@"X-Apple-Auth-Token-Identifier"];
  }

  v3 = *(a1 + 32);

  return [AMSPromise promiseWithResult:v3];
}

id sub_10005D98C(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedFraudReportConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Token with identifier '%{public}@' found without authentication", &v12, 0x20u);
    }

    v9 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v9 = (*(*(a1[4] + 16) + 16))();
  }

  v10 = v9;

  return v10;
}

id sub_10005DD2C(id *a1)
{
  v2 = [a1[4] accountStore];
  v3 = [v2 ams_fetchGrandSlamTokenForAccount:a1[4] withIdentifier:a1[5]];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005DE2C;
  v6[3] = &unk_1002B0B20;
  v7 = a1[4];
  v8 = a1[6];
  v9 = a1[5];
  v4 = [v3 catchWithBlock:v6];

  return v4;
}

id sub_10005DE2C(uint64_t a1)
{
  v2 = [[AMSAuthKitUpdateTask alloc] initWithAccount:*(a1 + 32) options:*(a1 + 40)];
  v3 = [v2 performAuthKitUpdate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005DF08;
  v6[3] = &unk_1002B0AF8;
  v7 = *(a1 + 48);
  v4 = [v3 thenWithBlock:v6];

  return v4;
}

id sub_10005DF08(uint64_t a1, void *a2)
{
  v3 = [a2 authenticationResults];
  v4 = [v3 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v7 = AMSError();
    v8 = [AMSPromise promiseWithError:v7];
LABEL_11:
    v9 = v8;
    goto LABEL_13;
  }

  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [AMSPromise promiseWithResult:v7];
    goto LABEL_11;
  }

  v12 = *(a1 + 32);
  v10 = AMSErrorWithFormat();
  v9 = [AMSPromise promiseWithError:v10, v12];

LABEL_13:

  return v9;
}

void sub_10005E448(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[AMSLogConfig sharedFraudReportConfig];
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
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] ODI assessment successfully obtained.", &v16, 0x16u);
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
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = AMSLogableError();
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain ODI assessment, proceeding without one: %{public}@.", &v16, 0x20u);
    }
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"odiAssessment"];
  [*(a1 + 48) finishWithResult:*(a1 + 40)];
}

void sub_10005E890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString **sub_10005E8AC(uint64_t a1, __CFString **a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_alloc_init(AMSDMultiUserMetrics);
  [WeakRetained setMetrics:v4];

  v5 = [WeakRetained metrics];
  v6 = [v5 enqueueGenerateMultiUserTokenBeginEvent];

  v7 = +[ACAccountStore ams_sharedAccountStore];
  v8 = [v7 ams_activeiCloudAccount];

  v9 = [WeakRetained tokenNeedsRegeneration];
  v10 = @"accept";
  if (v9)
  {
    v10 = @"tokenRefresh";
  }

  v139 = v10;
  v11 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    v15 = AMSHashIfNeeded();
    [WeakRetained account];
    v16 = v137 = a2;
    v17 = AMSHashIfNeeded();
    [WeakRetained home];
    v134 = WeakRetained;
    v19 = v18 = v8;
    v20 = AMSHashIfNeeded();
    *buf = 138544642;
    v147 = v13;
    v148 = 2114;
    v149 = v14;
    v150 = 2114;
    v151 = v139;
    v152 = 2114;
    v153 = v15;
    v154 = 2114;
    v155 = v17;
    v156 = 2114;
    v157 = v20;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Generating a multi-user token. action = %{public}@ | iCloudAccount = %{public}@ | iTunesAccount = %{public}@ | home = %{public}@", buf, 0x3Eu);

    v8 = v18;
    WeakRetained = v134;

    a2 = v137;
  }

  if (v8)
  {
    v21 = [WeakRetained home];
    v22 = [v21 isCurrentUserRestrictedGuest];

    if (v22)
    {
      v23 = AMSError();
      v24 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        *buf = 138543874;
        v147 = v26;
        v148 = 2114;
        v149 = v27;
        v150 = 2114;
        v151 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Restricted Guest Error: %{public}@", buf, 0x20u);
      }

      if (a2)
      {
        v28 = v23;
        *a2 = v23;
      }

      a2 = 0;
      goto LABEL_87;
    }

    v135 = v8;
    v35 = [WeakRetained controller];
    v36 = [v35 cloudContainer];
    v37 = [v36 privateDatabase];

    v38 = [AMSDFetchMultiUserRecordZoneTask alloc];
    v39 = [WeakRetained home];
    v40 = [WeakRetained home];
    v41 = [v40 currentUser];
    v42 = [WeakRetained metrics];
    v43 = [(AMSDFetchMultiUserRecordZoneTask *)v38 initWithHome:v39 homeUser:v41 database:v37 metrics:v42];

    v44 = v43;
    v45 = [(AMSDFetchMultiUserRecordZoneTask *)v43 performTask];
    v144 = 0;
    v46 = [v45 resultWithError:&v144];
    v47 = v144;

    v133 = v37;
    if (!v46)
    {
      v57 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      v58 = [v57 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = AMSLogKey();
        v61 = AMSHashIfNeeded();
        *buf = 138543874;
        v147 = v59;
        v148 = 2114;
        v149 = v60;
        v150 = 2114;
        v151 = v61;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a multi-user token. We couldn't fetch the record zone. error = %{public}@", buf, 0x20u);
      }

      v8 = v135;
      if (a2)
      {
        *a2 = AMSError();
      }

      v50 = [WeakRetained metrics];
      v62 = [v50 enqueueGenerateMultiUserTokenFailedEventWithError:v47];
      a2 = 0;
      goto LABEL_86;
    }

    v48 = [v46 identifier];
    v49 = [v37 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v48];
    v143 = v47;
    v50 = [v49 resultWithError:&v143];
    v51 = v143;

    if (!v50)
    {
      v128 = v46;
      v77 = v44;
      v78 = a2;
      v79 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      v8 = v135;
      if (!v79)
      {
        v79 = +[AMSLogConfig sharedConfig];
      }

      v80 = [v79 OSLogObject];
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = objc_opt_class();
        v82 = AMSLogKey();
        v83 = AMSHashIfNeeded();
        *buf = 138543874;
        v147 = v81;
        v148 = 2114;
        v149 = v82;
        v150 = 2114;
        v151 = v83;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a multi-user token. We couldn't fetch the home participant. error = %{public}@", buf, 0x20u);

        v8 = v135;
      }

      if (v78)
      {
        *v78 = AMSError();
      }

      v56 = [WeakRetained metrics];
      v84 = [(__CFString *)v56 enqueueGenerateMultiUserTokenFailedEventWithError:v51];
      a2 = 0;
      v44 = v77;
      v46 = v128;
      goto LABEL_85;
    }

    v52 = [WeakRetained metrics];
    v53 = [v52 enqueueCloudKitFetchSuccessEvent];

    v8 = v135;
    if (([WeakRetained tokenNeedsRegeneration] & 1) != 0 || !objc_msgSend(WeakRetained, "_shouldGenerateInviteToken"))
    {
      v56 = 0;
    }

    else
    {
      v142 = 0;
      v54 = [WeakRetained _shareRecord:v50 withError:&v142];
      v55 = v142;
      v56 = v55;
      if (!v54)
      {
        v127 = v44;
        v131 = v46;
        v112 = a2;
        v113 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v113)
        {
          v113 = +[AMSLogConfig sharedConfig];
        }

        v114 = [v113 OSLogObject];
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = objc_opt_class();
          AMSLogKey();
          v117 = v116 = v56;
          v118 = AMSHashIfNeeded();
          *buf = 138543874;
          v147 = v115;
          v148 = 2114;
          v149 = v117;
          v150 = 2114;
          v151 = v118;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a multi-user token. We couldn't generate an invite token. error = %{public}@", buf, 0x20u);

          v8 = v135;
          v56 = v116;
        }

        if (v112)
        {
          v119 = v56;
          *v112 = v56;
        }

        v63 = [WeakRetained metrics];
        v120 = [v63 enqueueGenerateMultiUserTokenFailedEventWithError:v56];
        a2 = 0;
        v44 = v127;
        v46 = v131;
        goto LABEL_84;
      }

      v56 = v54;
    }

    v141 = v51;
    v63 = [WeakRetained _generateMultiUserTokenWithAction:v139 iCloudAccount:v135 inviteToken:v56 error:&v141];
    v64 = v141;

    v65 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v66 = v65;
    v138 = a2;
    if (v63)
    {
      if (!v65)
      {
        v66 = +[AMSLogConfig sharedConfig];
      }

      v125 = v44;
      v67 = [v66 OSLogObject];
      v132 = v50;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v64;
        v69 = objc_opt_class();
        AMSLogKey();
        v71 = v70 = v56;
        v72 = AMSHashIfNeeded();
        *buf = 138543874;
        v147 = v69;
        v64 = v68;
        v148 = 2114;
        v149 = v71;
        v150 = 2114;
        v151 = v72;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully generated a multi-user token. Saving it. token = %{public}@", buf, 0x20u);

        v8 = v135;
        v56 = v70;
        v50 = v132;
      }

      v140 = v64;
      v73 = v64;
      v74 = [WeakRetained _saveMultiUserToken:v63 forHomeParticipant:v50 iCloudAccount:v8 error:&v140];
      v51 = v140;

      if (v74)
      {
        v75 = [WeakRetained metrics];
        v76 = [v75 enqueueGenerateMultiUserTokenSuccessEvent];

        v63 = v63;
        a2 = v63;
        v44 = v125;
      }

      else
      {
        v92 = v63;
        v93 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        v44 = v125;
        if (!v93)
        {
          v93 = +[AMSLogConfig sharedConfig];
        }

        v94 = [v93 OSLogObject];
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v95 = objc_opt_class();
          AMSLogKey();
          v96 = v123 = v56;
          v97 = AMSLogableError();
          *buf = 138543874;
          v147 = v95;
          v148 = 2114;
          v149 = v96;
          v150 = 2114;
          v151 = v97;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to save the multi-user token. error = %{public}@", buf, 0x20u);

          v8 = v135;
          v56 = v123;
        }

        if (v138)
        {
          *v138 = AMSError();
        }

        v98 = [WeakRetained metrics];
        v99 = [v98 enqueueGenerateMultiUserTokenFailedEventWithError:v51];

        a2 = 0;
        v63 = v92;
        v50 = v132;
      }
    }

    else
    {
      if (!v65)
      {
        v66 = +[AMSLogConfig sharedConfig];
      }

      v85 = [v66 OSLogObject];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v129 = objc_opt_class();
        AMSLogKey();
        v87 = v86 = v56;
        v88 = AMSLogableError();
        *buf = 138543874;
        v147 = v129;
        v148 = 2114;
        v149 = v87;
        v150 = 2114;
        v151 = v88;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a multi-user token. error = %{public}@", buf, 0x20u);

        v8 = v135;
        v56 = v86;
        v63 = 0;
      }

      v136 = v64;
      v130 = [v64 ams_underlyingErrorWithDomain:@"com.apple.AppleIDAuthSupport"];
      v89 = [v130 userInfo];
      v90 = [v89 objectForKeyedSubscript:@"Status"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      v100 = [v91 objectForKeyedSubscript:@"ec"];
      objc_opt_class();
      v126 = v91;
      if (objc_opt_isKindOfClass())
      {
        v101 = v100;
      }

      else
      {
        v101 = 0;
      }

      if (v101 && [v101 integerValue] == -26091)
      {
        v102 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v102)
        {
          v102 = +[AMSLogConfig sharedConfig];
        }

        v124 = v56;
        v103 = [v102 OSLogObject];
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          log = v103;
          v104 = objc_opt_class();
          v105 = AMSLogKey();
          *buf = 138543618;
          v147 = v104;
          v103 = log;
          v148 = 2114;
          v149 = v105;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The user isn't part of the home. Deleting the record zone.", buf, 0x16u);
        }

        v106 = [v46 identifier];
        v145 = v106;
        v107 = [NSArray arrayWithObjects:&v145 count:1];
        v108 = [v133 deleteRecordZonesWithRecordZoneIdentifiers:v107];

        v56 = v124;
      }

      v109 = v101;
      v51 = v136;
      if (v138)
      {
        *v138 = AMSError();
      }

      v110 = [WeakRetained metrics];
      v111 = [v110 enqueueGenerateMultiUserTokenFailedEventWithError:v136];

      a2 = 0;
    }

LABEL_84:

LABEL_85:
    v47 = v51;
LABEL_86:

    goto LABEL_87;
  }

  v29 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v29)
  {
    v29 = +[AMSLogConfig sharedConfig];
  }

  v30 = [v29 OSLogObject];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    v32 = AMSLogKey();
    *buf = 138543618;
    v147 = v31;
    v148 = 2114;
    v149 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate a multi-user token. There's no active iCloud account.", buf, 0x16u);
  }

  if (a2)
  {
    v33 = AMSError();
    v34 = a2;
    a2 = 0;
    *v34 = v33;
  }

LABEL_87:

  return a2;
}

id sub_10005FFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7])
  {
    [*(a1 + 32) _saveRecord:*(a1 + 40) database:*(a1 + 48)];
  }

  else
  {
    [AMSPromise promiseWithError:v3];
  }
  v4 = ;

  return v4;
}

id sub_100060068(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___AMSDCloudDataShare])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 participants];
    v6 = [v5 ams_firstObjectPassingTest:&stru_1002B0BD8];

    if (v6 && [v6 participantStatus] == 1)
    {
      v7 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        v14 = 138543618;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing the home owner as a share participant.", &v14, 0x16u);
      }

      [v4 removeParticipant:v6];
      v11 = [*(a1 + 32) _saveRecord:v4 database:*(a1 + 40)];
    }

    else
    {
      v11 = [AMSPromise promiseWithResult:v4];
    }
  }

  else
  {
    v6 = AMSCustomError();
    v11 = [AMSPromise promiseWithError:v6];
  }

  v12 = v11;

  return v12;
}

id sub_1000602B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___AMSDCloudDataShare])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [*(a1 + 32) controller];
    v6 = [v5 homeManager];
    v7 = [*(a1 + 32) controller];
    v8 = [v7 cloudContainer];
    v9 = [*(a1 + 32) home];
    v10 = [v6 sendCloudShare:v4 inContainer:v8 toOwnerOfHome:v9];
  }

  else
  {
    v5 = AMSCustomError();
    v10 = [AMSPromise promiseWithError:v5];
  }

  return v10;
}

AMSPromise *__cdecl sub_100060524(id a1, AMSAuthKitUpdateResult *a2)
{
  v2 = [(AMSAuthKitUpdateResult *)a2 authenticationResults];
  v3 = [v2 objectForKeyedSubscript:@"AKIDMSToken"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"com.apple.gs.itunes.mu.idmsws"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [AMSPromise promiseWithResult:v6];
  }

  else
  {
    v8 = AMSError();
    v7 = [AMSPromise promiseWithError:v8];
  }

  return v7;
}

void sub_100060910(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [*(a1 + 32) metrics];
  v5 = [v4 enqueueCloudKitSaveRecordFinishEventWithError:v6];
}

void sub_100060C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100060D60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100060E38;
  v8[3] = &unk_1002B0CB8;
  v8[4] = WeakRetained;
  v5 = [v3 ams_mapWithTransform:v8];

  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

AMSDHomeKitHome *sub_100060E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AMSDHomeKitHome alloc] initWithHome:v3 dataSource:*(a1 + 32)];

  return v4;
}

id sub_1000612C8(uint64_t a1, void *a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000613D4;
  v7[3] = &unk_1002B0D30;
  v8 = *(a1 + 32);
  v3 = [a2 ams_firstObjectPassingTest:v7];
  if (v3)
  {
    v4 = [AMSPromise promiseWithResult:v3];
  }

  else
  {
    v5 = AMSError();
    v4 = [AMSPromise promiseWithError:v5];
  }

  return v4;
}

id sub_1000613D4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100061ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100061AF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSSetLogKey();
  if (!v3)
  {
    v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v15 = objc_opt_class();
      v16 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully registered to receive CloudKit shares via HomeKit.", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v5 = qword_1002E3230;
  v20 = qword_1002E3230;
  if (!qword_1002E3230)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100063F58;
    v22 = &unk_1002B0728;
    v23 = &v17;
    v6 = sub_100063DE4();
    v7 = dlsym(v6, "HMErrorDomain");
    *(v23[1] + 24) = v7;
    qword_1002E3230 = *(v23[1] + 24);
    v5 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v5)
  {
    sub_10021B19C();
    __break(1u);
  }

  if (([v3 ams_hasDomain:*v5 code:{1, v17}] & 1) == 0)
  {
    v8 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = AMSLogableError();
      *buf = 138543874;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to register to accept CloudKit shares. error = %{public}@", buf, 0x20u);
    }

LABEL_14:
  }
}

id sub_1000620B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100062184;
  v9[3] = &unk_1002B0E00;
  v7 = v4;
  v10 = v7;
  [v3 establishShareWithHomeOwner:v6 container:v5 completionHandler:v9];

  return v7;
}

void sub_100062184(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v9)
  {
    [v7 finishWithResult:v9];
  }

  else if (v5)
  {
    [v7 finishWithError:v5];
  }

  else
  {
    v8 = AMSError();
    [v7 finishWithError:v8];
  }
}

AMSPromise *__cdecl sub_100062244(id a1, HMHomeCloudShareResponse *a2)
{
  v2 = [(HMHomeCloudShareResponse *)a2 clientInfo];
  v3 = [v2 accountAuthToken];

  if (!v3)
  {
    v4 = AMSError();
    v5 = [AMSPromise promiseWithError:v4];
    goto LABEL_5;
  }

  v4 = [[NSString alloc] initWithData:v3 encoding:4];
  if (v4)
  {
    v5 = [AMSPromise promiseWithResult:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v7 = AMSError();
  v6 = [AMSPromise promiseWithError:v7];

LABEL_7:

  return v6;
}

id sub_100062780(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100063018(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 dataUsingEncoding:4];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v8 = qword_1002E3238;
    v15 = qword_1002E3238;
    if (!qword_1002E3238)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100063FA8;
      v11[3] = &unk_1002B0728;
      v11[4] = &v12;
      sub_100063FA8(v11);
      v8 = v13[3];
    }

    v9 = v8;
    _Block_object_dispose(&v12, 8);
    v10 = [[v8 alloc] initWithAccountAuthToken:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10006316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100063580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000635CC(uint64_t a1, void *a2)
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
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSLogableError();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Failed to fetch the device's homes. error = %{public}@", &v10, 0x20u);
  }

  [*(a1 + 32) finishWithError:v3];
}

void sub_100063720(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained homeManager];
  v4 = [v3 homes];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000637E0;
  v5[3] = &unk_1002B0F08;
  v5[4] = WeakRetained;
  [v4 enumerateObjectsUsingBlock:v5];
  [*(a1 + 32) finishWithResult:v4];
}

id sub_100063C9C(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

Class sub_100063D8C(uint64_t a1)
{
  sub_100063DE4();
  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3220 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B1E8();
    return sub_100063DE4();
  }

  return result;
}

uint64_t sub_100063DE4()
{
  v3[0] = 0;
  if (!qword_1002E3228)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100063EE4;
    v3[4] = &unk_1002B0760;
    v3[5] = v3;
    v4 = off_1002B0F78;
    v5 = 0;
    qword_1002E3228 = _sl_dlopen();
  }

  v0 = qword_1002E3228;
  v1 = v3[0];
  if (!qword_1002E3228)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100063EE4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E3228 = result;
  return result;
}

void *sub_100063F58(uint64_t a1)
{
  v2 = sub_100063DE4();
  result = dlsym(v2, "HMErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E3230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

AMSDHomeKitHome *sub_100063FA8(uint64_t a1)
{
  sub_100063DE4();
  result = objc_getClass("HMUserCloudShareClientInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3238 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B210();
    return [(AMSDHomeKitHome *)v3 initWithHome:v4 dataSource:v5, v6];
  }

  return result;
}

id sub_1000645F8(id a1, HMUser *a2)
{
  v2 = a2;
  v3 = [[AMSDHomeKitHomeUser alloc] initWithUser:v2];

  return v3;
}

id sub_10006496C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_100064C08(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_100064D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

id sub_100064E34(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id sub_100064FE4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_100065B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) homeIdentifierForRecord:v3];
  if (v4)
  {
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v6 = [v3 hashedDescription];
    v7 = AMSErrorWithFormat();
    v5 = [AMSPromise promiseWithError:v7, v6];
  }

  return v5;
}

id sub_100065DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) homeUserIdentifierForRecord:v3];
  if (v4)
  {
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v6 = [v3 hashedDescription];
    v7 = AMSErrorWithFormat();
    v5 = [AMSPromise promiseWithError:v7, v6];
  }

  return v5;
}

id sub_1000660B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiersForRecord:v3];
  if (v4)
  {
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v6 = [v3 hashedDescription];
    v7 = AMSErrorWithFormat();
    v5 = [AMSPromise promiseWithError:v7, v6];
  }

  return v5;
}

id sub_1000665A8(uint64_t a1, void *a2)
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000666E8;
  v12 = &unk_1002B1038;
  v13 = *(a1 + 32);
  v4 = [a2 ams_firstObjectPassingTest:&v9];
  if (v4)
  {
    v5 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"There's no home with the specified home identifier. homeIdentifier = %@", *(a1 + 32), v9, v10, v11, v12];
    v7 = AMSError();
    v5 = [AMSPromise promiseWithError:v7];
  }

  return v5;
}

id sub_1000666E8(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100066D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

BOOL sub_100066D60(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[ACAccountStore ams_sharedAccountStore];
  v4 = [v3 ams_activeiCloudAccount];

  v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    AMSHashIfNeeded();
    v10 = v9 = a2;
    v11 = [WeakRetained homeIdentifier];
    v12 = AMSHashIfNeeded();
    *buf = 138544130;
    v44 = v7;
    v45 = 2114;
    v46 = v8;
    v47 = 2114;
    v48 = v10;
    v49 = 2114;
    v50 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Leaving a home. iCloudAccount = %{public}@ | homeIdentiifer = %{public}@", buf, 0x2Au);

    a2 = v9;
  }

  if (v4)
  {
    v13 = [WeakRetained _generateAppProvidedData];
    v14 = [AMSAuthenticateOptions amsd_multiUserAuthenticateOptionsWithAppProvidedData:v13];

    v15 = [[AMSAuthKitUpdateTask alloc] initWithAccount:v4 options:v14];
    [v15 setRunMode:1];
    v16 = [v15 performAuthKitUpdate];
    v42 = 0;
    v17 = [v16 resultWithError:&v42];
    v18 = v42;

    v19 = +[ACAccountStore ams_sharedAccountStore];
    v20 = [v19 ams_iTunesAccountForAccount:v4];

    if (!v20 || ([v20 isActive] & 1) == 0)
    {
      [v4 ams_setInUse:0];
    }

    v21 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v22 = v21;
    if (v17)
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v18;
        v25 = v14;
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        *buf = 138543618;
        v44 = v26;
        v14 = v25;
        v18 = v24;
        v45 = 2114;
        v46 = v27;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully left the home.", buf, 0x16u);
      }
    }

    else
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v33 = [v22 OSLogObject];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v39 = v14;
        v34 = objc_opt_class();
        v35 = AMSLogKey();
        AMSHashIfNeeded();
        v36 = v40 = a2;
        *buf = 138543874;
        v44 = v34;
        v14 = v39;
        v45 = 2114;
        v46 = v35;
        v47 = 2114;
        v48 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to leave the home. error = %{public}@", buf, 0x20u);

        a2 = v40;
      }

      if (a2)
      {
        v37 = v18;
        *a2 = v18;
      }
    }

    v32 = v17 != 0;
  }

  else
  {
    v28 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      *buf = 138543618;
      v44 = v30;
      v45 = 2114;
      v46 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to leave the home. There's no active iCloud account.", buf, 0x16u);
    }

    if (a2)
    {
      AMSError();
      *a2 = v32 = 0;
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

void sub_10006749C(uint64_t a1)
{
  v2 = [[AMSDBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.amsaccountsd.refresh"];
  v3 = [*(a1 + 32) _scheduledRefreshActivityBlock];
  [(AMSDBackgroundActivityScheduler *)v2 setActivityBlock:v3];

  [(AMSDBackgroundActivityScheduler *)v2 checkIn];
  v4 = objc_alloc_init(AMSDCloudKitDataSource);
  v5 = [[AMSDCloudDataManager alloc] initWithDataSource:v4];
  v6 = objc_alloc_init(AMSDHomeKitDataSource);
  v7 = [[AMSDHomeManager alloc] initWithDataSource:v6];
  v8 = [objc_alloc(*(a1 + 32)) initWithCloudDataManager:v5 homeManager:v7];
  [(AMSDCloudKitDataSource *)v4 setDelegate:v8];
  [(AMSDHomeKitDataSource *)v6 setDelegate:v8];

  v9 = qword_1002E3248;
  qword_1002E3248 = v8;
}

id sub_1000678C4(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100067E5C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.amsaccountsd.AMSDMultiUserController.refresh", v3);
  v2 = qword_1002E3258;
  qword_1002E3258 = v1;
}

void sub_100067EC0(uint64_t a1)
{
  v2 = [*(a1 + 32) _isRefreshThrottlingDisabledWithOptions:*(a1 + 40)];
  v3 = [v2 promiseAdapter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100068034;
  v15[3] = &unk_1002B10A8;
  v15[4] = *(a1 + 32);
  v4 = [v3 thenWithBlock:v15];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100068084;
  v11 = &unk_1002B10D0;
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 48);
  v6 = [v4 thenWithBlock:&v8];
  v7 = [v6 promiseWithTimeout:{300.0, v8, v9, v10, v11, v12}];

  [v7 waitUntilFinished];
  [*(a1 + 56) finishWithPromise:v7];
}

id sub_100068034(uint64_t a1)
{
  v1 = [*(a1 + 32) homeManager];
  v2 = [v1 allHomes];

  return v2;
}

id sub_100068084(uint64_t a1, void *a2)
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100068374;
  v19[3] = &unk_1002B1038;
  v19[4] = *(a1 + 32);
  v3 = [a2 ams_filterUsingTest:v19];
  v4 = [*(a1 + 40) copy];
  if (([v4 shouldUseCloudData] & 1) == 0)
  {
    [v4 setShouldUseCloudData:{objc_msgSend(*(a1 + 32), "_refreshShouldUseCloudDataWithHomes:", v3)}];
    if ([v4 shouldUseCloudData])
    {
      v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = AMSLogKey();
        *buf = 138543618;
        v21 = v7;
        v22 = 2114;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding shouldUseCloudData with true.", buf, 0x16u);
      }
    }
  }

  v9 = [*(a1 + 32) _isCloudDataAvailable];
  v10 = [v9 resultWithError:0];

  if ([v4 shouldUseCloudData] && (v10 & 1) == 0)
  {
    [v4 setShouldUseCloudData:0];
    v11 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding shouldUseCloudData with false. isCloudDataAvailable = false", buf, 0x16u);
    }
  }

  v15 = [[AMSDRefreshMultiUserTask alloc] initWithMultiUserController:*(a1 + 32) homes:v3 options:v4];
  v16 = v15;
  if (*(a1 + 48))
  {
    [(AMSDRefreshMultiUserTask *)v15 setMetrics:?];
  }

  v17 = [(AMSDRefreshMultiUserTask *)v16 performTask];

  return v17;
}

uint64_t sub_100068374(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isMultiUserEnabled] & 1) == 0)
  {
    v3 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v11 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded();
    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    v8 = "%{public}@: [%{public}@] Skipping a home. Multi-User isn't enabled. home = %{public}@";
LABEL_13:
    v9 = v4;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

  if (+[AMSDMultiUserController deviceSupportsMultipleUsers](AMSDMultiUserController, "deviceSupportsMultipleUsers") && ([v2 isCurrentDeviceAccessory] & 1) == 0)
  {
    v3 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded();
    v15 = 138543874;
    v16 = v14;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    v8 = "%{public}@: [%{public}@] Skipping a home. The current device isn't an accessory of it. home = %{public}@";
    goto LABEL_13;
  }

  if (![v2 isCurrentUserRestrictedGuest])
  {
    v12 = 1;
    goto LABEL_16;
  }

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
    v15 = 138543874;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    v8 = "%{public}@: [%{public}@] Current user is Restricted Guest in home, not updating multi-user token for home = %{public}@";
    v9 = v4;
    v10 = OS_LOG_TYPE_ERROR;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v9, v10, v8, &v15, 0x20u);
  }

LABEL_15:

  v12 = 0;
LABEL_16:

  return v12;
}

id sub_10006863C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      *v41 = 138543874;
      *&v41[4] = v10;
      *&v41[12] = 2114;
      *&v41[14] = v11;
      *&v41[22] = 2114;
      v42 = v12;
      v13 = "%{public}@: [%{public}@] The refresh finished. result = %{public}@";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, v41, 0x20u);
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
      v16 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      *v41 = 138543874;
      *&v41[4] = v16;
      *&v41[12] = 2114;
      *&v41[14] = v11;
      *&v41[22] = 2114;
      v42 = v12;
      v13 = "%{public}@: [%{public}@] The refresh failed. error = %{public}@";
      v14 = v9;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }
  }

  if (v6 || ([v5 errors], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v18))
  {
    v19 = [v5 errors];
    v20 = [v19 ams_firstObjectPassingTest:&stru_1002B10F0];

    v21 = [(AMSDBackgroundActivityScheduler *)v20 userInfo];
    v22 = [v21 objectForKeyedSubscript:@"AMSDCloudDataRetryAfterKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    [v23 doubleValue];
    v25 = v24;

    if (v25 == 0.0)
    {
      v26 = 86400.0;
    }

    else
    {
      v26 = v25;
    }

    if (v25 == 0.0)
    {
      v25 = 0.0;
    }

    v27 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:@"A previous refresh failed."];
    [(AMSDRefreshMultiUserOptions *)v27 setSchedulingInterval:v26];
    [(AMSDRefreshMultiUserOptions *)v27 setThrottlingInterval:v25];
    v28 = [v5 errors];
    v30 = sub_100048940(v28, v29);

    if (v30)
    {
      v31 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        *v41 = 138543618;
        *&v41[4] = v33;
        *&v41[12] = 2114;
        *&v41[14] = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The refresh encountered a fatal cloud data error.", v41, 0x16u);
      }

      [AMSStorage _setValue:0 forKey:@"AMSDLastMultiUserRefresh"];
    }

    v35 = [*(a1 + 32) refreshWithOptions:v27];

    goto LABEL_28;
  }

  v38 = *(a1 + 32);
  v39 = [v5 homes];
  [v38 _setLastSuccessfulRefreshDateWithHomes:v39];

  v40 = [v5 options];
  LODWORD(v39) = [v40 shouldUseCloudData];

  if (v39)
  {
    v20 = [[AMSDBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.amsaccountsd.refresh"];
    [(AMSDBackgroundActivityScheduler *)v20 invalidate];
LABEL_28:
  }

  if (v5)
  {
    [AMSPromise promiseWithResult:v5];
  }

  else
  {
    [AMSPromise promiseWithError:v6];
  }
  v36 = ;

  return v36;
}

void sub_100068E7C(uint64_t a1, void *a2)
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch a cloud container's status. error = %{public}@", &v8, 0x20u);
  }
}

void sub_100068FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) previousCloudContainerStatus];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006906C;
  v7[3] = &unk_1002B1140;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v8 = v3;
  v6 = v3;
  [v4 readWrite:v7];
}

void *sub_10006906C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3 && v4)
  {
    if ([v4 isEqual:v3])
    {
      v5 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = AMSLogKey();
        v9 = *(a1 + 48);
        v10 = [v3 unsignedLongValue];
        v11 = [*(a1 + 32) unsignedLongValue];
        *buf = 138544386;
        v24 = v7;
        v25 = 2114;
        v26 = v8;
        v27 = 2048;
        v28 = v9;
        v29 = 2048;
        v30 = v10;
        v31 = 2048;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Ignoring a cloud data manager change. changeType = %lu | previousCloudContainerStatus = %lu | cloudContainerStatus = %lu", buf, 0x34u);
      }

      goto LABEL_21;
    }

    v4 = *(a1 + 32);
  }

  v12 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  v5 = [NSString stringWithFormat:@"Cloud data manager changed. changeType = %lu | previousCloudContainerStatus = %@ | cloudContainerStatus = %@", *(a1 + 48), v3, v4];
  v6 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:v5];
  [(AMSDRefreshMultiUserOptions *)v6 setShouldUseCloudData:1];
  if ([*(a1 + 40) multiUserRefreshThrottlingActive])
  {
    v13 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = AMSLogKey();
      v16 = objc_opt_class();
      v17 = v16;
      if (v15)
      {
        v12 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v17, v12];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping cloud data manager changed Notification, throttled", buf, 0xCu);
      if (v15)
      {

        v18 = v12;
      }
    }
  }

  else
  {
    v19 = [*(a1 + 40) refreshWithOptions:v6];
  }

LABEL_21:

  v20 = *(a1 + 32);
  v21 = v20;

  return v20;
}

void sub_1000699F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100069A14(id a1)
{
  qword_1002E3270 = +[NSMutableArray array];

  _objc_release_x1();
}

id sub_100069A54(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100069A88(uint64_t a1, void *a2)
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
    *buf = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Beginning queued cloud data repair request. home = %{public}@", buf, 0x20u);
  }

  v9 = [v3 performTask];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100069C68;
  v13[3] = &unk_1002B11B0;
  v12 = *(a1 + 32);
  v10 = *(&v12 + 1);
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = *(a1 + 56);
  v14 = v12;
  v15 = v11;
  [v9 resultWithCompletion:v13];
}

void sub_100069C68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      v12 = AMSHashIfNeeded();
      v16 = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Repair request failed with error. home = %{public}@ error = %{public}@", &v16, 0x2Au);
    }
  }

  os_unfair_lock_lock_with_options();
  [*(a1 + 48) removeObjectAtIndex:0];
  if ([*(a1 + 48) count])
  {
    v13 = [*(a1 + 48) objectAtIndexedSubscript:0];
    os_unfair_lock_unlock(&unk_1002E3260);
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
  }

  else
  {
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    os_unfair_lock_unlock(&unk_1002E3260);
  }
}

id sub_10006A1AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) previousCloudContainerStatus];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10006A4F8;
    v23[3] = &unk_1002B1200;
    v8 = v5;
    v24 = v8;
    [v7 readWrite:v23];

    v9 = [v8 unsignedIntegerValue];
    if (v9 == 1)
    {
      v10 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = AMSLogKey();
        *buf = 138543874;
        v26 = v12;
        v27 = 2114;
        v28 = v13;
        v29 = 2048;
        v30 = 1;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cloud data is available. status = %ld", buf, 0x20u);
      }

      v14 = [AMSPromise promiseWithResult:&__kCFBooleanTrue];
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = AMSLogKey();
    v19 = AMSHashIfNeeded();
    *buf = 138544130;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    v29 = 2048;
    v30 = v9;
    v31 = 2114;
    v32 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cloud data is unavailable. status = %ld | error = %{public}@", buf, 0x2Au);
  }

  v20 = [NSString stringWithFormat:@"Cloud data is unavailable. status = %ld", v9];
  v21 = AMSCustomError();
  v14 = [AMSPromise promiseWithError:v21];

LABEL_14:

  return v14;
}

id sub_10006A8C0(id a1, AMSDHome *a2)
{
  v2 = [(AMSDHome *)a2 identifier];
  v3 = [v2 UUIDString];

  return v3;
}

id sub_10006AA84(id a1, AMSDHome *a2)
{
  v2 = [(AMSDHome *)a2 identifier];
  v3 = [v2 UUIDString];

  return v3;
}

void sub_10006AB88(id a1, id a2)
{
  v2 = a2;
  v3 = AMSSetLogKey();
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AMSDMultiUserController: [%{public}@] Scheduled refresh fired.", buf, 0xCu);
  }

  v7 = [[AMSDRefreshMultiUserOptions alloc] initWithReason:@"Scheduled Refresh"];
  [(AMSDRefreshMultiUserOptions *)v7 setIgnoreThrottling:1];
  [(AMSDRefreshMultiUserOptions *)v7 setShouldUseCloudData:0];
  v8 = +[AMSDMultiUserController sharedController];
  v9 = [v8 refreshWithOptions:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006AD50;
  v11[3] = &unk_1002B12F0;
  v12 = v2;
  v10 = v2;
  [v9 addFinishBlock:v11];
}

uint64_t sub_10006B0DC(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10006B2D0(uint64_t a1)
{
  v1 = +[AMSLogConfig sharedAccountsConfig];
  if (!v1)
  {
    v1 = +[AMSLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = AMSLogKey();
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Flushing Multi-User Metrics", &v5, 0x16u);
  }
}

void sub_10006C414(id a1)
{
  v1 = qword_1002E3280;
  qword_1002E3280 = @"Accounts";
}

void sub_10006C470(id a1)
{
  v1 = qword_1002E3290;
  qword_1002E3290 = @"1";
}

void sub_10006CBE4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else if ([*(a1 + 40) _isTopicDefined:v5])
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = *(a1 + 48);
      *buf = 138544130;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Queue Metrics Event for topic = %{public}@ | userId namespace %{public}@", buf, 0x2Au);
    }

    v11 = [*(a1 + 40) _userIdForBagNamespace:*(a1 + 48)];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006CE1C;
    v16[3] = &unk_1002B1380;
    v15 = *(a1 + 32);
    v12 = v15.i64[0];
    v17 = vextq_s8(v15, v15, 8uLL);
    v18 = *(a1 + 56);
    v19 = v5;
    [v11 resultWithCompletion:v16];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = AMSError();
    [v13 finishWithError:v14];
  }
}

void sub_10006CE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError();
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create metrics event due to an error while fetching userId. error = %{public}@", &v21, 0x20u);
    }

    v19 = *(a1 + 40);
    v20 = AMSError();
    [v19 finishWithError:v20];
  }

  else
  {
    [*(a1 + 48) ams_setNullableObject:a2 forKey:@"userId"];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) _eventTime];
    [v7 ams_setNullableObject:v8 forKey:@"eventTime"];

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = [*(a1 + 48) copy];
    v13 = [v10 _enqueueEventWithTopic:v11 properties:v12];
    [v9 finishWithPromise:v13];
  }
}

void sub_10006D45C(id a1)
{
  v1 = [AMSDMultiUserService alloc];
  v4 = +[AMSDMultiUserController sharedController];
  v2 = [(AMSDMultiUserService *)v1 initWithMultiUserController:v4];
  v3 = qword_1002E32A0;
  qword_1002E32A0 = v2;
}

id sub_10006D9E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 isCurrentUserRestrictedGuest])
    {
      v7 = AMSError();
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
        *buf = 138543874;
        v31 = v10;
        v32 = 2114;
        v33 = v11;
        v34 = 2114;
        v35 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Restricted Guest Error: %{public}@", buf, 0x20u);
      }

      v12 = [AMSPromise promiseWithError:v7];
    }

    else
    {
      v18 = [*(a1 + 40) cloudContainer];
      v19 = [v18 privateDatabase];

      v20 = [AMSDFetchMultiUserRecordZoneTask alloc];
      v21 = [v5 currentUser];
      v7 = [(AMSDFetchMultiUserRecordZoneTask *)v20 initWithHome:v5 homeUser:v21 database:v19 metrics:0];

      [(AMSDFetchMultiUserRecordZoneTask *)v7 setCreateIfMissing:0];
      v22 = [(AMSDFetchMultiUserRecordZoneTask *)v7 performTask];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10006DD84;
      v25[3] = &unk_1002B1440;
      v26 = v19;
      v27 = v5;
      v29 = *(a1 + 48);
      v28 = *(a1 + 40);
      v23 = v19;
      v12 = [v22 continueWithBlock:v25];
    }
  }

  else
  {
    v13 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSLogableError();
      *buf = 138543874;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to export the multi-user token. Failed to find a home matching the given identifier. error = %{public}@", buf, 0x20u);
    }

    v12 = [AMSPromise promiseWithError:v6];
  }

  return v12;
}

id sub_10006DD84(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [a2 identifier];
    v8 = [v6 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v7];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006DFBC;
    v16[3] = &unk_1002B1418;
    v17 = *(a1 + 40);
    v19 = *(a1 + 56);
    v18 = *(a1 + 48);
    v9 = [v8 continueWithBlock:v16];
  }

  else
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
      v14 = AMSLogableError();
      *buf = 138543874;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to export the multi-user token. Failed to fetch the record zone for the current user. error = %{public}@", buf, 0x20u);
    }

    v9 = [AMSPromise promiseWithError:v5];
  }

  return v9;
}

id sub_10006DFBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 fieldForKey:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v43 = v6;
    if (v8)
    {
      v15 = [v5 fieldForKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];
      if (objc_opt_respondsToSelector())
      {
        v16 = [v5 fieldForKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];
        v17 = [v16 BOOLValue];
      }

      else
      {
        v17 = 0;
      }

      v42 = v17;
    }

    else
    {
      v42 = 1;
    }

    v18 = [NSMutableDictionary alloc];
    v54[0] = @"AMSHomeParticipant_HomeIdentifier";
    v19 = [*(a1 + 32) identifier];
    v20 = [v19 UUIDString];
    v55[0] = v20;
    v54[1] = @"AMSHomeParticipant_HomeUserIdentifier";
    v21 = [*(a1 + 32) currentUser];
    v22 = [v21 identifier];
    v23 = [v22 UUIDString];
    v55[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
    v25 = [v18 initWithDictionary:v24];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v52[0] = @"AMSHomeParticipant_iCloudAltDSID";
    v52[1] = @"AMSHomeParticipant_iCloudDSID";
    v52[2] = @"AMSHomeParticipant_iTunesAltDSID";
    v52[3] = @"AMSHomeParticipant_iTunesDSID";
    v52[4] = @"AMSHomeParticipant_iTunesUsername";
    v26 = [NSArray arrayWithObjects:v52 count:5];
    v27 = [v26 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v49;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v48 + 1) + 8 * i);
          v32 = [v5 fieldForKey:v31];
          [v25 ams_setNullableObject:v32 forKey:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v28);
    }

    if (!v8 && (*(a1 + 48) & 1) != 0 || v42 && *(a1 + 49) == 1)
    {
      v33 = +[ACAccountStore ams_sharedAccountStore];
      v34 = [v33 ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10006E634;
      v44[3] = &unk_1002B13F0;
      v45 = *(a1 + 40);
      v46 = *(a1 + 32);
      v47 = v25;
      v14 = [v34 continueWithBlock:v44];

      v6 = v43;
    }

    else
    {
      v6 = v43;
      if (v8)
      {
        [v25 setObject:v8 forKeyedSubscript:@"AMSHomeParticipant_MultiUserToken"];
        v35 = [NSNumber numberWithBool:v42];
        [v25 setObject:v35 forKeyedSubscript:@"AMSHomeParticipant_MultiUserTokenInvalid"];

        v34 = [v25 copy];
        v36 = [AMSPromise promiseWithResult:v34];
      }

      else
      {
        v37 = +[AMSLogConfig sharedAccountsMultiUserConfig];
        if (!v37)
        {
          v37 = +[AMSLogConfig sharedConfig];
        }

        v38 = [v37 OSLogObject];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = AMSLogKey();
          *buf = 138543618;
          v57 = v39;
          v58 = 2114;
          v59 = v40;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to export the multi-user token. Failed to find a valid token.", buf, 0x16u);
        }

        v34 = AMSError();
        v36 = [AMSPromise promiseWithError:v34];
      }

      v14 = v36;
    }
  }

  else
  {
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
      v13 = AMSLogableError();
      *buf = 138543874;
      v57 = v11;
      v58 = 2114;
      v59 = v12;
      v60 = 2114;
      v61 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to export the multi-user token. Failed to fetch the record for the home participant. error = %{public}@", buf, 0x20u);
    }

    v14 = [AMSPromise promiseWithError:v6];
  }

  return v14;
}

id sub_10006E634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[AMSDGenerateMultiUserTokenTask alloc] initWithController:*(a1 + 32) account:v5 home:*(a1 + 40)];
    v8 = [(AMSDGenerateMultiUserTokenTask *)v7 performTask];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10006E854;
    v16[3] = &unk_1002B13C8;
    v17 = *(a1 + 48);
    v9 = [v8 continueWithBlock:v16];
  }

  else
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
      v14 = AMSLogableError();
      *buf = 138543874;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to export the multi-user token. Failed to find the active iTunes account. error = %{public}@", buf, 0x20u);
    }

    v9 = [AMSPromise promiseWithError:v6];
  }

  return v9;
}

id sub_10006E854(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:@"AMSHomeParticipant_MultiUserToken"];
    [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:@"AMSHomeParticipant_MultiUserTokenInvalid"];
    v6 = [*(a1 + 32) copy];
    v7 = [AMSPromise promiseWithResult:v6];
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
      v12 = AMSLogableError();
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to export the multi-user token. Failed to generate the token. error = %{public}@", &v14, 0x20u);
    }

    v7 = [AMSPromise promiseWithError:v5];
  }

  return v7;
}

void sub_10006EA24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v5)
  {
    (*(v7 + 16))(*(a1 + 40), v5, 0);
  }

  else
  {
    v8 = [AMSDMultiUserService _sanitizeError:v6];
    (*(v7 + 16))(v7, 0, v8);
  }

  if (*(a1 + 64) == 1)
  {
    v9 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 OSLogObject];
    }

    else
    {
      v12 = +[AMSLogConfig sharedConfig];
      v11 = [v12 OSLogObject];
    }

    v13 = *(a1 + 48);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = NSStringFromSelector(*(a1 + 56));
      v15 = 138543362;
      v16 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v13, "exportMultiUserToken", "%{public}@", &v15, 0xCu);
    }
  }

  [AMSDTransactionStore releaseKeepAliveTransaction:*(a1 + 32)];
}

id sub_10006EF54(uint64_t a1, void *a2)
{
  v2 = a2;
  v26 = [v2 objectAtIndexedSubscript:0];
  v3 = [v2 objectAtIndexedSubscript:1];
  v27 = v2;
  v4 = [v2 objectAtIndexedSubscript:2];
  v5 = objc_opt_new();
  [v5 appendString:@"Private Record Zones:\n"];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [v3 results];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v39 + 1) + 8 * i) name];
        [v5 appendFormat:@"  %@\n", v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"\n"];
  [v5 appendString:@"Shared Record Zones:\n"];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [v4 results];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v35 + 1) + 8 * j) name];
        [v5 appendFormat:@"  %@\n", v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v14);
  }

  [v5 appendString:@"\n"];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10006F328;
  v30[3] = &unk_1002B1580;
  v31 = v3;
  v32 = *(a1 + 32);
  v33 = v4;
  v34 = *(a1 + 40);
  v18 = v4;
  v19 = v3;
  v20 = [v26 ams_mapWithTransform:v30];
  v21 = [AMSPromise promiseWithAll:v20];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10007006C;
  v28[3] = &unk_1002B0310;
  v29 = v5;
  v22 = v5;
  v23 = [v21 thenWithBlock:v28];

  return v23;
}

id sub_10006F328(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 appendFormat:@"%@:\n", v5];

  v6 = [v3 identifier];
  v7 = [v6 UUIDString];
  [v4 appendFormat:@"  identifier-> %@\n", v7];

  if ([v3 isCurrentDeviceAccessory])
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  [v4 appendFormat:@"  isCurrentDeviceAccessory-> %@\n", v8];
  v9 = [v3 isCurrentUserOwner];
  v10 = v9;
  if (v9)
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  [v4 appendFormat:@"  isCurrentUserOwner-> %@\n", v11];
  if ([v3 isMultiUserEnabled])
  {
    v12 = @"true";
  }

  else
  {
    v12 = @"false";
  }

  [v4 appendFormat:@"  isMultiUserEnabled-> %@\n", v12];
  if ([v3 isPrimary])
  {
    v13 = @"true";
  }

  else
  {
    v13 = @"false";
  }

  [v4 appendFormat:@"  isPrimary-> %@\n", v13];
  [v4 appendFormat:@"  Record Zones:\n"];
  v14 = [a1[4] results];
  v15 = [v14 allValues];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10006F7D8;
  v48[3] = &unk_1002B14B8;
  v49 = a1[5];
  v16 = v3;
  v50 = v16;
  v17 = [v15 ams_filterUsingTest:v48];
  v18 = [v17 mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = objc_alloc_init(NSMutableArray);
  }

  v21 = v20;

  v22 = [a1[6] results];
  v23 = [v22 allValues];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10006F858;
  v45[3] = &unk_1002B14B8;
  v46 = a1[7];
  v24 = v16;
  v47 = v24;
  v25 = [v23 ams_filterUsingTest:v45];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = &__NSArray0__struct;
  }

  [v21 addObjectsFromArray:v27];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10006F8D8;
  v43[3] = &unk_1002B14E0;
  v28 = v4;
  v44 = v28;
  [v21 enumerateObjectsUsingBlock:v43];
  [v28 appendFormat:@"  Users:\n"];
  v29 = [v24 users];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10006F948;
  v38[3] = &unk_1002B1558;
  v39 = v24;
  v42 = v10;
  v40 = a1[5];
  v41 = a1[7];
  v30 = v24;
  v31 = [v29 ams_mapWithTransform:v38];

  v32 = [AMSPromise promiseWithAll:v31];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006FF50;
  v36[3] = &unk_1002B0310;
  v37 = v28;
  v33 = v28;
  v34 = [v32 thenWithBlock:v36];

  return v34;
}

id sub_10006F7D8(uint64_t a1, uint64_t a2)
{
  v3 = [AMSDHomeManager homeIdentifierForRecordZone:a2 inDatabase:*(a1 + 32)];
  v4 = [v3 resultWithError:0];

  v5 = [*(a1 + 40) identifier];
  v6 = [v5 isEqual:v4];

  return v6;
}

id sub_10006F858(uint64_t a1, uint64_t a2)
{
  v3 = [AMSDHomeManager homeIdentifierForRecordZone:a2 inDatabase:*(a1 + 32)];
  v4 = [v3 resultWithError:0];

  v5 = [*(a1 + 40) identifier];
  v6 = [v5 isEqual:v4];

  return v6;
}

void sub_10006F8D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 identifier];
  v3 = [v4 name];
  [v2 appendFormat:@"    %@\n", v3];
}

id sub_10006F948(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) currentUser];
  v5 = [v4 identifier];
  v6 = [v3 identifier];
  v7 = [v5 isEqual:v6];

  v8 = objc_opt_new();
  v9 = [v3 name];
  [v8 appendFormat:@"    %@:\n", v9];

  v10 = [v3 identifier];
  v11 = [v10 UUIDString];
  [v8 appendFormat:@"      identifier-> %@\n", v11];

  v12 = @"false";
  if (v7)
  {
    v12 = @"true";
  }

  [v8 appendFormat:@"      isCurrentUser-> %@\n", v12];
  if (v7)
  {
    v13 = 40;
LABEL_7:
    v14 = *(a1 + v13);
    v15 = [[AMSDFetchMultiUserRecordZoneTask alloc] initWithHome:*(a1 + 32) homeUser:v3 database:v14 metrics:0];
    [(AMSDFetchMultiUserRecordZoneTask *)v15 setCreateIfMissing:0];
    v16 = [(AMSDFetchMultiUserRecordZoneTask *)v15 performTask];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10006FC08;
    v24[3] = &unk_1002B1508;
    v25 = v14;
    v17 = v8;
    v26 = v17;
    v18 = v14;
    v19 = [v16 thenWithBlock:v24];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10006FF3C;
    v22[3] = &unk_1002B1530;
    v23 = v17;
    v20 = [v19 catchWithBlock:v22];

    goto LABEL_9;
  }

  if (*(a1 + 56) == 1)
  {
    v13 = 48;
    goto LABEL_7;
  }

  v20 = [AMSPromise promiseWithResult:v8];
LABEL_9:

  return v20;
}

id sub_10006FC08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006FD18;
  v10[3] = &unk_1002B0C00;
  v11 = *(a1 + 40);
  v12 = v3;
  v7 = v3;
  v8 = [v6 thenWithBlock:v10];

  return v8;
}

AMSPromise *sub_10006FD18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 identifier];
  v7 = [v6 name];
  [v3 appendFormat:@"      recordZoneName-> %@\n", v7];

  v8 = *(a1 + 32);
  v9 = [v5 fieldForKey:@"AMSHomeParticipant_iCloudAltDSID"];
  [v8 appendFormat:@"      iCloudAltDSID-> %@\n", v9];

  v10 = *(a1 + 32);
  v11 = [v5 fieldForKey:@"AMSHomeParticipant_iCloudDSID"];
  [v10 appendFormat:@"      iCloudDSID-> %@\n", v11];

  v12 = *(a1 + 32);
  v13 = [v5 fieldForKey:@"AMSHomeParticipant_iTunesAltDSID"];
  [v12 appendFormat:@"      iTunesAltDSID-> %@\n", v13];

  v14 = *(a1 + 32);
  v15 = [v5 fieldForKey:@"AMSHomeParticipant_iTunesDSID"];
  [v14 appendFormat:@"      iTunesDSID-> %@\n", v15];

  v16 = *(a1 + 32);
  v17 = [v5 fieldForKey:@"AMSHomeParticipant_iTunesUsername"];
  [v16 appendFormat:@"      iTunesUsername-> %@\n", v17];

  v18 = *(a1 + 32);
  v19 = [v5 fieldForKey:@"AMSHomeParticipant_MultiUserToken"];
  [v18 appendFormat:@"      token-> %@\n", v19];

  v20 = *(a1 + 32);
  v21 = [v5 fieldForKey:@"AMSHomeParticipant_MultiUserTokenInvalid"];

  [v20 appendFormat:@"      tokenIsInvalid-> %@\n", v21];
  v22 = *(a1 + 32);

  return [AMSPromise promiseWithResult:v22];
}

id sub_10006FF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) appendString:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [AMSPromise promiseWithResult:*(a1 + 32)];

  return v8;
}

id sub_10007006C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 componentsJoinedByString:@"\n"];
  [v3 appendString:v4];

  v5 = [*(a1 + 32) copy];
  v6 = [AMSPromise promiseWithResult:v5];

  return v6;
}

id sub_100070100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    (*(v3 + 16))(*(a1 + 40), a2, 0);
  }

  else
  {
    v4 = [AMSDMultiUserService _sanitizeError:?];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *(a1 + 32);

  return [AMSDTransactionStore releaseKeepAliveTransaction:v5];
}

id sub_1000705AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentUser];
    if (v5)
    {
      v6 = [[AMSDFetchMultiUserRecordZoneTask alloc] initWithHome:v4 homeUser:v5 database:*(a1 + 32) metrics:*(a1 + 40)];
      [(AMSDFetchMultiUserRecordZoneTask *)v6 setCreateIfMissing:0];
      v7 = [(AMSDFetchMultiUserRecordZoneTask *)v6 performTask];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000708D8;
      v18[3] = &unk_1002B1530;
      v19 = *(a1 + 40);
      v8 = [v7 catchWithBlock:v18];
    }

    else
    {
      v13 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        *buf = 138543618;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch the account. There's no home user for the current user.", buf, 0x16u);
      }

      v6 = AMSError();
      v8 = [AMSPromise promiseWithError:v6];
    }
  }

  else
  {
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
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch the account. Failed to find a home matching the given identifier.", buf, 0x16u);
    }

    v5 = AMSError();
    v8 = [AMSPromise promiseWithError:v5];
  }

  return v8;
}

id sub_1000708D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) enqueueCloudKitFetchFailedEventWithError:v3];
  }

  v5 = [v3 ams_hasDomain:@"AMSDCloudDataErrorDomain" code:7];
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch the account. The home does not have an iTunes account associated with it.", &v17, 0x16u);
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
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = AMSHashIfNeeded();
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch the account. We failed to fetch the record zone for the home. error = %{public}@", &v17, 0x20u);
    }
  }

  v14 = AMSError();
  v15 = [AMSPromise promiseWithError:v14];

  return v15;
}

id sub_100070B5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  v5 = [v3 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100070C4C;
  v8[3] = &unk_1002B1620;
  v9 = *(a1 + 40);
  v6 = [v5 continueWithBlock:v8];

  return v6;
}

id sub_100070C4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) enqueueCloudKitFetchSuccessEvent];
    v8 = +[ACAccountStore ams_sharedAccountStore];
    v9 = [v8 amsd_iTunesAccountForHomeParticipant:v5 createEphemeral:1];

    if (v9)
    {
      v10 = [AMSPromise promiseWithResult:v9];
    }

    else
    {
      v17 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        v21 = AMSHashIfNeeded();
        v24 = 138543874;
        v25 = v19;
        v26 = 2114;
        v27 = v20;
        v28 = 2114;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch the account. The home participant has no identifiers for the iTunes account. homeParticipant = %{public}@", &v24, 0x20u);
      }

      v22 = AMSError();
      v10 = [AMSPromise promiseWithError:v22];
    }
  }

  else
  {
    v11 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSHashIfNeeded();
      v24 = 138543874;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch the home participant. error = %{public}@", &v24, 0x20u);
    }

    v16 = [*(a1 + 32) enqueueCloudKitFetchFailedEventWithError:v6];
    v10 = [AMSPromise promiseWithError:v6];
  }

  return v10;
}

void sub_100070F4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSHashIfNeeded();
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched the account. account = %{public}@", &v13, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [AMSDMultiUserService _sanitizeError:a3];
    (*(v11 + 16))(v11, 0, v12);
  }

  [AMSDTransactionStore releaseKeepAliveTransaction:*(a1 + 32)];
}

id sub_100071448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 currentUser];
  v6 = [v4 databaseForHome:v3 user:v5];

  if (v6)
  {
    v7 = [AMSDFetchMultiUserRecordZoneTask alloc];
    v8 = [v3 currentUser];
    v9 = [(AMSDFetchMultiUserRecordZoneTask *)v7 initWithHome:v3 homeUser:v8 database:v6 metrics:0];

    v10 = [(AMSDFetchMultiUserRecordZoneTask *)v9 performTask];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007164C;
    v18[3] = &unk_1002B1670;
    v11 = v6;
    v19 = v11;
    v12 = [v10 thenWithBlock:v18];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000716C0;
    v16[3] = &unk_1002B0C28;
    v17 = v11;
    v13 = [v12 thenWithBlock:v16];
  }

  else
  {
    v14 = AMSError();
    v13 = [AMSPromise promiseWithError:v14];
  }

  return v13;
}

id sub_10007164C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v3];

  return v4;
}

id sub_1000716C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setField:@"INVALIDATED FOR TESTING PURPOSES" forKey:@"AMSHomeParticipant_MultiUserToken"];
  v4 = [*(a1 + 32) saveRecord:v3];

  return v4;
}

void sub_100071738(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsMultiUserConfig];
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
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully invalidated the multi-user token.", &v17, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v7 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = AMSHashIfNeeded();
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to invalidate the multi-user token. error = %{public}@", &v17, 0x20u);
    }

    v15 = *(a1 + 40);
    v16 = [AMSDMultiUserService _sanitizeError:v5];
    (*(v15 + 16))(v15, 0, v16);
  }

  [AMSDTransactionStore releaseKeepAliveTransaction:*(a1 + 32)];
}

id sub_100071BC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    (*(v3 + 16))(*(a1 + 40), 1, 0);
  }

  else
  {
    v4 = [AMSDMultiUserService _sanitizeError:?];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *(a1 + 32);

  return [AMSDTransactionStore releaseKeepAliveTransaction:v5];
}

id sub_100072134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[AMSDUpdateMultiUserTokenTask alloc] initWithController:*(a1 + 32) account:*(a1 + 40) home:v3];
    v5 = [(AMSDUpdateMultiUserTokenTask *)v4 performTask];
  }

  else
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
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to set the account. Failed to find a home matching the given identifier.", &v12, 0x16u);
    }

    v4 = AMSError();
    v5 = [AMSPromise promiseWithError:v4];
  }

  v10 = v5;

  return v10;
}

id sub_1000722D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    (*(v3 + 16))(*(a1 + 40), 1, 0);
  }

  else
  {
    v4 = [AMSDMultiUserService _sanitizeError:?];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *(a1 + 32);

  return [AMSDTransactionStore releaseKeepAliveTransaction:v5];
}

id sub_1000726EC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v24 = a3;
  if (v5)
  {
    v6 = +[NSMutableArray array];
    v7 = [v5 results];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100072B30;
    v35[3] = &unk_1002B1790;
    v36 = a1[4];
    v37 = a1[5];
    v38 = a1[6];
    v23 = v6;
    v39 = v23;
    [v7 enumerateKeysAndObjectsUsingBlock:v35];

    if ([v23 count])
    {
      v8 = [AMSThreadSafeObject alloc];
      v9 = +[NSMutableArray array];
      v10 = [v8 initWithObject:v9];

      v25 = objc_alloc_init(AMSMutablePromise);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v42 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v23;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v12)
      {
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_1000733DC;
            v26[3] = &unk_1002B17E0;
            v27 = v10;
            v30 = buf;
            v16 = v11;
            v28 = v16;
            v29 = v25;
            [v15 addFinishBlock:v26];
          }

          v12 = [v16 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v12);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = [AMSPromise promiseWithResult:&__NSArray0__struct];
    }
  }

  else
  {
    v17 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = AMSHashIfNeeded();
      *buf = 138543874;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2114;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the record zones. error = %{public}@", buf, 0x20u);
    }

    v25 = [AMSPromise promiseWithError:v24];
  }

  return v25;
}

void sub_100072B30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([v4 isDefaultRecordZone] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v4 identifier];
    v7 = [v5 fetchRecordWithName:@"AMSHomeParticipant" zoneIdentifier:v6];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100072D28;
    v15[3] = &unk_1002B0C00;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v8 = [v7 thenWithBlock:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007314C;
    v13[3] = &unk_1002AFDD8;
    v14 = v4;
    [v7 addErrorBlock:v13];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000732A8;
    v10[3] = &unk_1002B1768;
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    v9 = [v8 thenWithBlock:v10];
    [*(a1 + 56) addObject:v9];
  }
}

id sub_100072D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fieldForKey:@"AMSHomeParticipant_iTunesDSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && ([*(a1 + 32) ams_DSID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", v5), v6, (v7 & 1) != 0))
  {
    v8 = +[AMSLogConfig sharedAccountsMultiUserConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      v26 = 138543874;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found a home that's using the account. homeParticipant = %{public}@", &v26, 0x20u);
    }

    v13 = [v3 fieldForKey:@"AMSHomeParticipant_HomeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14 && (v16 = [[NSUUID alloc] initWithUUIDString:v14]) != 0)
    {
      v17 = v16;
      v18 = [*(a1 + 40) homeManager];
      v19 = [v18 homeWithHomeIdentifier:v17];
      v15 = [v19 thenWithBlock:&stru_1002B1700];
    }

    else
    {
      v20 = +[AMSLogConfig sharedAccountsMultiUserConfig];
      if (!v20)
      {
        v20 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v20 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        v24 = AMSHashIfNeeded();
        v26 = 138543874;
        v27 = v22;
        v28 = 2114;
        v29 = v23;
        v30 = 2114;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid home identifier. homeIdentifier = %{public}@", &v26, 0x20u);
      }

      v17 = AMSError();
      v15 = [AMSPromise promiseWithError:v17];
    }
  }

  else
  {
    v14 = +[AMSOptional optionalWithNil];
    v15 = [AMSPromise promiseWithResult:v14];
  }

  return v15;
}

AMSPromise *__cdecl sub_1000730E4(id a1, AMSDHome *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void sub_10007314C(uint64_t a1, void *a2)
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
    v8 = AMSHashIfNeeded();
    v9 = 138544130;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the home participant record. recordZone = %{public}@ | error = %{public}@", &v9, 0x2Au);
  }
}

id sub_1000732A8(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if (v3)
  {
    v4 = [[AMSDUpdateMultiUserTokenTask alloc] initWithController:*(a1 + 32) account:*(a1 + 40) home:v3];
    v5 = [(AMSDUpdateMultiUserTokenTask *)v4 performTask];
    v6 = [v5 thenWithBlock:&stru_1002B1740];
  }

  else
  {
    v4 = +[AMSOptional optionalWithNil];
    v6 = [AMSPromise promiseWithResult:v4];
  }

  return v6;
}

AMSPromise *__cdecl sub_100073374(id a1, NSString *a2)
{
  v2 = [AMSOptional optionalWithValue:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void sub_1000733DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000734AC;
  v8[3] = &unk_1002B17B8;
  v5 = *(a1 + 56);
  v9 = v4;
  v12 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v4;
  [v6 readWrite:v8];
}

id sub_1000734AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 addObject:?];
  }

  v5 = ++*(*(*(a1 + 56) + 8) + 24);
  if (v5 == [*(a1 + 40) count])
  {
    [*(a1 + 48) finishWithResult:v4];
  }

  return v4;
}

void sub_10007353C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      v27 = 138543874;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      v31 = 2114;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error occurred before attempt to update multi-user tokens. error = %{public}@", &v27, 0x20u);
    }

    v12 = *(a1 + 40);
    v13 = [AMSDMultiUserService _sanitizeError:v6];
    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    v14 = [v5 count];
    v15 = +[AMSLogConfig sharedAccountsDaemonConfig];
    v16 = v15;
    if (v14)
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        v20 = AMSHashIfNeeded();
        v27 = 138543874;
        v28 = v18;
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to update one or more multi-user tokens. errors = %{public}@", &v27, 0x20u);
      }

      v21 = AMSErrorWithMultipleUnderlyingErrors();
      v22 = *(a1 + 40);
      v23 = [AMSDMultiUserService _sanitizeError:v21];
      (*(v22 + 16))(v22, 0, v23);
    }

    else
    {
      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v16 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        v27 = 138543618;
        v28 = v25;
        v29 = 2114;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully updated all multi-user tokens.", &v27, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  [AMSDTransactionStore releaseKeepAliveTransaction:*(a1 + 32)];
}

void sub_100074DD0(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error posting notification: %{public}@", &v9, 0x20u);
    }
  }
}

id sub_10007526C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002E32A8;
  v7 = qword_1002E32A8;
  if (!qword_1002E32A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100076494;
    v3[3] = &unk_1002B0728;
    v3[4] = &v4;
    sub_100076494(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100075334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007534C(uint64_t a1, void *a2)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000755D4;
  v16[3] = &unk_1002B18B0;
  v17 = *(a1 + 32);
  v4 = [a2 ams_firstObjectPassingTest:v16];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = [v4 familyID];
      *buf = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", buf, 0x20u);
    }

    [*(a1 + 48) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Arcade entitlement found, user is not subscribed.", buf, 0x16u);
    }

    v14 = *(a1 + 48);
    v15 = AMSError();
    [v14 finishWithError:v15];
  }
}

uint64_t sub_1000755D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 familyID];
  v5 = [v4 stringValue];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  v7 = [v3 expiryDate];

  v8 = +[NSDate date];
  v9 = [v7 compare:v8];

  if (v9 == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_100075844(uint64_t a1, void *a2)
{
  v3 = [a2 ams_firstObjectPassingTest:&stru_1002B1918];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = [v3 familyID];
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness+ entitlement found, user is a subscriber. Entitlement.familyID = %{public}@", &v15, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v5 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Fitness+ entitlement found, user is not subscribed.", &v15, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = AMSError();
    [v13 finishWithError:v14];
  }
}

BOOL sub_100075A74(id a1, ASDSubscriptionEntitlement *a2)
{
  v2 = [(ASDSubscriptionEntitlement *)a2 expiryDate];
  v3 = +[NSDate date];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

void sub_100075D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 statusType];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4 == 1)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription enabled, user is a subscriber. StatusType = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 statusType]);
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music subscription not enabled, user is not subscribed. StatusType = %{public}@", &v17, 0x20u);
    }

    v15 = *(a1 + 40);
    v16 = AMSError();
    [v15 finishWithError:v16];
  }
}

void sub_100076208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isTVPlusSubscriber];
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription enabled, user is a subscriber. SubscriptionData.isTVPlusSubscriber = %{public}@", &v17, 0x20u);
    }

    [*(a1 + 40) finishWithResult:&__kCFBooleanTrue];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v6 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTVPlusSubscriber]);
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV subscription not enabled, user is not subscribed. SubscriptionData.isTVPlusSubscriber = %{public}@", &v17, 0x20u);
    }

    v15 = *(a1 + 40);
    v16 = AMSError();
    [v15 finishWithError:v16];
  }
}

Class sub_100076494(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E32B0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000765D8;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B19B0;
    v6 = 0;
    qword_1002E32B0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E32B0)
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
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B2C4();
  }

  qword_1002E32A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000765D8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E32B0 = result;
  return result;
}

Class sub_10007664C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E32C0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100076790;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B19C8;
    v6 = 0;
    qword_1002E32C0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E32C0)
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
  result = objc_getClass("ICMusicSubscriptionStatusController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B2EC();
  }

  qword_1002E32B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100076790(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E32C0 = result;
  return result;
}

Class sub_100076804(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E32D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100076948;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B19E0;
    v6 = 0;
    qword_1002E32D0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E32D0)
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
  result = objc_getClass("WLKSubscriptionStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B314();
  }

  qword_1002E32C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100076948(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E32D0 = result;
  return result;
}

void sub_100076B00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 ams_sanitizedForSecureCoding];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void sub_100076BE4(id a1)
{
  qword_1002E32E0 = objc_alloc_init(AMSDPaymentValidationService);

  _objc_release_x1();
}

void sub_100076C64(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppleMediaServices.AMSDPaymentValidationService", v3);
  v2 = qword_1002E32F0;
  qword_1002E32F0 = v1;
}

void sub_100076E0C(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = qword_1002E32F8;
  v12 = qword_1002E32F8;
  if (!qword_1002E32F8)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000772AC;
    v8[3] = &unk_1002B0728;
    v8[4] = &v9;
    sub_1000772AC(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076F5C;
  v6[3] = &unk_1002B1A40;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 paymentHardwareStatusWithType:1 completion:v6];
}

void sub_100076F5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 canMakeAMPPayments];
    v5 = +[AMSLogConfig sharedPurchaseConfig];
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
      v17 = AMSLogKey();
      v18 = [NSNumber numberWithBool:v4];
      *buf = 138543874;
      v25 = v10;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Get payment hardware status. canUseApplePay = %{public}@", buf, 0x20u);

      if (v7)
      {

        v10 = v2;
      }
    }

    v19 = +[AMSDPaymentValidationService paymentHardwareType];
    v16 = v19;
    v20 = @"false";
    if (v4)
    {
      v20 = @"true";
    }

    v22[0] = AMSHTTPHeaderPaymentHardwareStatus;
    v22[1] = AMSHTTPHeaderPaymentHardwareType;
    v23[0] = v20;
    v23[1] = v19;
    v21 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = +[AMSLogConfig sharedPurchaseConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = AMSLogKey();
      *buf = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get paymentHardwareStatus", buf, 0x16u);
    }

    v16 = AMSError();
    (*(*(a1 + 40) + 16))();
  }
}

Class sub_1000772AC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002E3300)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000773F0;
    v4[4] = &unk_1002B0760;
    v4[5] = v4;
    v5 = off_1002B1A60;
    v6 = 0;
    qword_1002E3300 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002E3300)
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
  result = objc_getClass("PKInAppPaymentService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10021B364();
  }

  qword_1002E32F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000773F0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E3300 = result;
  return result;
}

void sub_1000774A8(id a1)
{
  qword_1002E3310 = objc_alloc_init(AMSDPaymentViewService);

  _objc_release_x1();
}

void sub_100077844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100077864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007787C(void *a1)
{
  v5 = [objc_opt_class() _fdsResultCache];
  v2 = [v5 objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100077B2C(void *a1)
{
  v2 = a1[6];
  v3 = [objc_opt_class() _fdsResultCache];
  [v3 setObject:v2 forKeyedSubscript:a1[5]];
}

void sub_100077E28(uint64_t a1)
{
  v2 = [objc_opt_class() _fdsConsumedCache];
  [v2 setObject:&off_1002C6738 forKey:*(a1 + 40)];
}

void sub_1000781C4(uint64_t a1)
{
  v3 = [objc_opt_class() _fdsConsumedCache];
  v2 = [*(a1 + 40) purchaseIdentifier];
  [v3 setObject:&off_1002C6750 forKey:v2];
}

void sub_10007823C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000782B8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 ams_sanitizedForSecureCoding];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10007870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

void sub_100078748(uint64_t a1)
{
  v2 = [objc_opt_class() _odiSessionCache];
  v3 = [*(a1 + 40) purchaseIdentifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 availablePartialAssessment];
    v6 = *(a1 + 48);
  }

  else
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
      v10 = AMSLogKey();
      v11 = [*(a1 + 40) purchaseIdentifier];
      v12 = AMSHashIfNeeded();
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get ODI assessment, no matching session for id: %@", &v15, 0x20u);
    }

    v5 = AMSError();
    v6 = *(a1 + 56);
  }

  v13 = *(v6 + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
}

void sub_100078D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078D58(void *a1)
{
  v2 = [objc_opt_class() _odiSessionCache];
  [v2 setObject:a1[5] forKey:a1[6]];
}

void sub_100078FD0(uint64_t a1)
{
  v2 = [objc_opt_class() _odiSessionCache];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_alloc_init(AMSPromise);
    v5 = [v4 completionHandlerAdapter];
    [v3 getAssessment:v5];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100079224;
    v13[3] = &unk_1002B1B40;
    v6 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    [v4 addFinishBlock:v13];
  }

  else
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
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      *buf = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get ODI assessment, no matching session for cache identifier: %@", buf, 0x20u);
    }

    v4 = AMSError();
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v4);
    }
  }
}

void sub_100079224(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded();
      v18 = 138544130;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ODI evaluation failed for cache identifier: %@, with error: %{public}@", &v18, 0x2Au);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v8 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSHashIfNeeded();
      v18 = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successful ODI evaluation for cache identifier: %@", &v18, 0x20u);
    }

    v17 = [[AMSODIAssessment alloc] initWithStringValue:v5];
    (*(a1[6] + 16))();
  }
}

void sub_10007972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079758(uint64_t a1)
{
  v2 = [objc_opt_class() _odiSessionCache];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [v3 provideFeedbackOnPayloadOutcome:{objc_msgSend(*(a1 + 32), "_outcomeTypeForOutcome:", *(a1 + 56))}];
    if (*(a1 + 64) == 1)
    {
      v4 = [objc_opt_class() _odiSessionCache];
      [v4 setObject:0 forKey:*(a1 + 40)];
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = AMSHashIfNeeded();
      v13 = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to provide ODI assessment, no matching session for id: %@", &v13, 0x20u);
    }

    v10 = AMSError();
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_100079BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079C14(uint64_t a1)
{
  v2 = [objc_opt_class() _odiSessionCache];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v4 = qword_1002E33A8;
    v18 = qword_1002E33A8;
    if (!qword_1002E33A8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10007D0AC;
      v20 = &unk_1002B0728;
      v21 = &v15;
      sub_10007D0AC(buf);
      v4 = v16[3];
    }

    v5 = v4;
    _Block_object_dispose(&v15, 8);
    v6 = objc_alloc_init(v4);
    v7 = [*(a1 + 48) attributes];
    [v6 setAttributes:v7];

    [v3 updateWithAdditionalAttributes:v6];
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
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
      *buf = 138412802;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@{public}@: [%{public}@] Failed to update ODI attributes, no matching session for id: %@", buf, 0x20u);
    }

    v13 = AMSError();
    v14 = *(*(a1 + 56) + 8);
    v6 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void sub_10007A21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 128), 8);
  _Block_object_dispose((v36 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10007A258(void *a1)
{
  v2 = [objc_opt_class() _fdsConsumedCache];
  v4 = [v2 objectForKey:a1[5]];

  v3 = v4;
  if (v4)
  {
    *(*(a1[6] + 8) + 24) = [v4 BOOLValue];
    v3 = v4;
    *(*(a1[7] + 8) + 24) = 1;
  }
}

void sub_10007A2E8(uint64_t a1)
{
  v4 = [objc_opt_class() _odiSessionCache];
  v2 = [*(a1 + 40) stringValue];
  v3 = [v4 objectForKey:v2];
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

void sub_10007A374(void *a1)
{
  v2 = [objc_opt_class() _fdsEvaluatorCache];
  v3 = [v2 objectForKey:a1[5]];

  if (v3)
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = a1[6];
      v8 = [NSNumber numberWithBool:*(*(a1[7] + 8) + 24)];
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Invoking FDS completion SPI with consumption state: %{public}@", &v10, 0x20u);
    }

    v9 = objc_alloc_init(L1vrniCr6VjgMaLl);
    [(L1vrniCr6VjgMaLl *)v9 setConsumed:*(*(a1[7] + 8) + 24)];
    [v3 eVZ8hjC0Tuzwvnqc:v9];
  }
}

void sub_10007A504(uint64_t a1)
{
  v2 = [objc_opt_class() _fdsConsumedCache];
  [v2 setObject:0 forKey:*(a1 + 40)];
}

void sub_10007A560(uint64_t a1)
{
  v2 = [objc_opt_class() _fdsEvaluatorCache];
  [v2 setObject:0 forKey:*(a1 + 40)];
}

void sub_10007AE40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [*(a1 + 32) account];
    v10 = [v9 ams_firstName];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v11 = qword_1002E33B0;
    v43 = qword_1002E33B0;
    if (!qword_1002E33B0)
    {
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_10007D104;
      v38 = &unk_1002B0728;
      v39 = &v40;
      v12 = sub_10007CF38();
      v41[3] = dlsym(v12, "ODIAttributeKeyUserFirstName");
      qword_1002E33B0 = *(v39[1] + 24);
      v11 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (v11)
    {
      [v8 setObject:v10 forKeyedSubscript:*v11];

      v13 = [*(a1 + 32) account];
      v14 = [v13 ams_lastName];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v15 = qword_1002E33B8;
      v43 = qword_1002E33B8;
      if (!qword_1002E33B8)
      {
        v35 = _NSConcreteStackBlock;
        v36 = 3221225472;
        v37 = sub_10007D154;
        v38 = &unk_1002B0728;
        v39 = &v40;
        v16 = sub_10007CF38();
        v41[3] = dlsym(v16, "ODIAttributeKeyUserLastName");
        qword_1002E33B8 = *(v39[1] + 24);
        v15 = v41[3];
      }

      _Block_object_dispose(&v40, 8);
      if (v15)
      {
        [v8 setObject:v14 forKeyedSubscript:*v15];

        v17 = +[AMSDevice phoneNumber];
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v18 = qword_1002E33C0;
        v43 = qword_1002E33C0;
        if (!qword_1002E33C0)
        {
          v35 = _NSConcreteStackBlock;
          v36 = 3221225472;
          v37 = sub_10007D1A4;
          v38 = &unk_1002B0728;
          v39 = &v40;
          v19 = sub_10007CF38();
          v41[3] = dlsym(v19, "ODIAttributeKeyUserPhoneNumber");
          qword_1002E33C0 = *(v39[1] + 24);
          v18 = v41[3];
        }

        _Block_object_dispose(&v40, 8);
        if (v18)
        {
          [v8 setObject:v17 forKeyedSubscript:*v18];

          v20 = [*(a1 + 32) account];
          v21 = [v20 username];
          v40 = 0;
          v41 = &v40;
          v42 = 0x2020000000;
          v22 = qword_1002E33C8;
          v43 = qword_1002E33C8;
          if (!qword_1002E33C8)
          {
            v35 = _NSConcreteStackBlock;
            v36 = 3221225472;
            v37 = sub_10007D1F4;
            v38 = &unk_1002B0728;
            v39 = &v40;
            v23 = sub_10007CF38();
            v41[3] = dlsym(v23, "ODIAttributeKeyUserEmail");
            qword_1002E33C8 = *(v39[1] + 24);
            v22 = v41[3];
          }

          _Block_object_dispose(&v40, 8);
          if (v22)
          {
            [v8 setObject:v21 forKeyedSubscript:*v22];

            v24 = [*(a1 + 32) options];
            v25 = [v24 bundleIdentifier];
            v40 = 0;
            v41 = &v40;
            v42 = 0x2020000000;
            v26 = qword_1002E33D0;
            v43 = qword_1002E33D0;
            if (!qword_1002E33D0)
            {
              v35 = _NSConcreteStackBlock;
              v36 = 3221225472;
              v37 = sub_10007D244;
              v38 = &unk_1002B0728;
              v39 = &v40;
              v27 = sub_10007CF38();
              v41[3] = dlsym(v27, "ODIAttributeKeyCallerID");
              qword_1002E33D0 = *(v39[1] + 24);
              v26 = v41[3];
            }

            _Block_object_dispose(&v40, 8);
            if (v26)
            {
              [v8 setObject:v25 forKeyedSubscript:*v26];

              v28 = [[AMSODIAdditionalAttributes alloc] initWithAttributes:v8];
              v29 = *(a1 + 40);
              v31[0] = _NSConcreteStackBlock;
              v31[1] = 3221225472;
              v31[2] = sub_10007B41C;
              v31[3] = &unk_1002B1BE0;
              v31[4] = v29;
              v32 = v5;
              v34 = *(a1 + 48);
              v33 = *(a1 + 32);
              [v29 updateODIWithAttributes:v28 forCacheIdentifier:v32 completion:v31];

              goto LABEL_20;
            }

LABEL_25:
            v30 = sub_10021B19C();
            _Block_object_dispose(&v40, 8);
            _Unwind_Resume(v30);
          }

LABEL_24:
          sub_10021B19C();
          goto LABEL_25;
        }

LABEL_23:
        sub_10021B19C();
        goto LABEL_24;
      }
    }

    else
    {
      sub_10021B19C();
    }

    sub_10021B19C();
    goto LABEL_23;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_20:
}

void sub_10007B41C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007B500;
    v7[3] = &unk_1002B1BB8;
    v9 = *(a1 + 56);
    v8 = *(a1 + 48);
    [v5 getODIAssessmentForCacheIdentifier:v6 clearCache:0 completion:v7];
  }
}

void sub_10007B500(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = a3;
    v6 = a2;
    v7 = [AMSFDSResult alloc];
    v8 = [v6 stringValue];

    v9 = [*(a1 + 32) options];
    v10 = [v7 initWithValue:v8 action:{objc_msgSend(v9, "action")}];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10007BA2C(uint64_t a1)
{
  v4 = [objc_opt_class() _fdsEvaluatorCache];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) purchaseIdentifier];
  [v4 setObject:v2 forKey:v3];
}

void sub_10007BAA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
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
      v11 = [*(a1 + 32) logKey];
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AMSDSecurityService: [%{public}@] Successfully generated FDS.", &v17, 0xCu);
    }

    [*(a1 + 40) finishWithResult:v6];
  }

  else
  {
    if (!v8)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) logKey];
      v14 = AMSHashIfNeeded();
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "AMSDSecurityService: [%{public}@] Failed to generate FDS, error = %{public}@", &v17, 0x16u);
    }

    v15 = *(a1 + 40);
    if (v7)
    {
      [v15 finishWithError:v7];
    }

    else
    {
      v16 = AMSError();
      [v15 finishWithError:v16];
    }
  }
}

void sub_10007BCBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543618;
    v39 = v9;
    v40 = 2114;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Generating base64-encoded AFDS", buf, 0x16u);
  }

  v11 = objc_alloc_init(NSMutableString);
  v12 = [v5 bytes];
  if ([v5 length])
  {
    v13 = 0;
    do
    {
      [v11 appendFormat:@"%02x", v12[v13++]];
    }

    while ([v5 length] > v13);
  }

  if (*(a1 + 56))
  {
    if (v6)
    {
      v14 = +[AMSLogConfig sharedConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = AMSLogKey();
        *buf = 138543874;
        v39 = v16;
        v40 = 2114;
        v41 = v17;
        v42 = 2114;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] FDS evaluation failed with error: %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_35;
    }

    if ([v11 length])
    {
      v26 = +[AMSLogConfig sharedConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        v30 = AMSHashIfNeeded();
        *buf = 138543874;
        v39 = v28;
        v40 = 2114;
        v41 = v29;
        v42 = 2114;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully generated AFDS = %{public}@", buf, 0x20u);
      }

      v31 = [AMSFDSResult alloc];
      v32 = [v11 copy];
      v33 = [*(a1 + 40) options];
      v20 = [v31 initWithValue:v32 action:{objc_msgSend(v33, "action")}];

      v34 = *(*(a1 + 56) + 16);
    }

    else
    {
      v20 = AMSError();
      v34 = *(*(a1 + 56) + 16);
    }

    v34();
LABEL_34:

    goto LABEL_35;
  }

  v18 = +[AMSUnitTests isRunningUnitTests];
  v19 = +[AMSLogConfig sharedConfig];
  v20 = v19;
  if (!v18)
  {
    if (!v19)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v35 = [v20 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      v36 = objc_opt_class();
      v37 = AMSLogKey();
      *buf = 138543618;
      v39 = v36;
      v40 = 2114;
      v41 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] No completion block, this is probably a programmer error", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (!v19)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    *buf = 138543618;
    v39 = v22;
    v40 = 2114;
    v41 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No completion block, this is probably a programmer error", buf, 0x16u);
  }

  v24 = +[NSNotificationCenter defaultCenter];
  v25 = +[AMSLogConfig sharedConfig];
  [v24 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v25 userInfo:0];

LABEL_35:
}

void sub_10007C290(id a1)
{
  qword_1002E3320 = [[AMSLRUCache alloc] initWithMaxSize:5];

  _objc_release_x1();
}

void sub_10007C318(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AMSDPurchaseService.FDSConsumedCache", v3);
  v2 = qword_1002E3330;
  qword_1002E3330 = v1;
}

void sub_10007C3C0(id a1)
{
  qword_1002E3340 = [[AMSLRUCache alloc] initWithMaxSize:5];

  _objc_release_x1();
}

void sub_10007C448(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AMSDPurchaseService.FDSEvaluatorCache", v3);
  v2 = qword_1002E3350;
  qword_1002E3350 = v1;
}

void sub_10007C4F0(id a1)
{
  qword_1002E3360 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_10007C570(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AMSDPurchaseService.FDSResultCache", v3);
  v2 = qword_1002E3370;
  qword_1002E3370 = v1;
}

id sub_10007CCD0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v1 = qword_1002E3400;
  v9 = qword_1002E3400;
  if (!qword_1002E3400)
  {
    v2 = sub_10007CF38();
    v7[3] = dlsym(v2, "ODIServiceProviderIdTDMTrustedInference");
    qword_1002E3400 = v7[3];
    v1 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v1)
  {
    v5 = sub_10021B19C();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v3 = *v1;

  return v3;
}

void sub_10007CE18(id a1)
{
  qword_1002E3380 = [[AMSLRUCache alloc] initWithMaxSize:5];

  _objc_release_x1();
}

void sub_10007CEA0(id a1)
{
  qword_1002E3390 = dispatch_queue_create("com.apple.AMSDPurchaseService.ODISessionCache", 0);

  _objc_release_x1();
}

Class sub_10007CEE0(uint64_t a1)
{
  sub_10007CF38();
  result = objc_getClass("ODISession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3398 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B1C0();
    return sub_10007CF38();
  }

  return result;
}

uint64_t sub_10007CF38()
{
  v3[0] = 0;
  if (!qword_1002E33A0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10007D038;
    v3[4] = &unk_1002B0760;
    v3[5] = v3;
    v4 = off_1002B1D50;
    v5 = 0;
    qword_1002E33A0 = _sl_dlopen();
  }

  v0 = qword_1002E33A0;
  v1 = v3[0];
  if (!qword_1002E33A0)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10007D038(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002E33A0 = result;
  return result;
}

Class sub_10007D0AC(uint64_t a1)
{
  sub_10007CF38();
  result = objc_getClass("ODIAdditionalAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E33A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10021B440();
    return sub_10007D104(v3);
  }

  return result;
}

void *sub_10007D104(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserFirstName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D154(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserLastName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D1A4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D1F4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyUserEmail");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D244(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIAttributeKeyCallerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D294(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdAmpFreeBuy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D2E4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdAmpPaidBuy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D334(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdApplicationCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D384(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdApplicationSubmit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D3D4(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdIdUpdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E33F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007D424(uint64_t a1)
{
  v2 = sub_10007CF38();
  result = dlsym(v2, "ODIServiceProviderIdTDMTrustedInference");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002E3400 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10007E298(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;
  }

  else
  {
    v10 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
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
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch timeout value from the bag. Will proceed without a timeout. error = %@", buf, 0x16u);
      if (v12)
      {

        v15 = v3;
      }
    }

    v9 = 0.0;
  }

  v16 = [[AMSDelegatePurchaseRequest alloc] initWithCacheKey:a1[4] challenge:a1[5]];
  [v16 setDeviceName:a1[6]];
  [v16 setRequiresDelegateToken:0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v17 = qword_1002E3410;
  v35 = qword_1002E3410;
  if (!qword_1002E3410)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10007EF00;
    v37 = &unk_1002B0728;
    v38 = &v32;
    sub_10007EF00(buf);
    v17 = v33[3];
  }

  v18 = v17;
  _Block_object_dispose(&v32, 8);
  v19 = objc_alloc_init(v17);
  [v19 setAccount:a1[7]];
  [v19 setPurchaseRequest:v16];
  [v19 setDeviceName:a1[6]];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v20 = qword_1002E3420;
  v35 = qword_1002E3420;
  if (!qword_1002E3420)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10007F0C8;
    v37 = &unk_1002B0728;
    v38 = &v32;
    sub_10007F0C8(buf);
    v20 = v33[3];
  }

  v21 = v20;
  _Block_object_dispose(&v32, 8);
  v22 = [[v20 alloc] initWithRequest:v19];
  v23 = [[AMSPromise alloc] initWithTimeout:v9];
  v24 = [v23 completionHandlerAdapter];
  [v22 setSessionCompletionHandler:v24];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v26 = a1[8];
  v25 = (a1 + 8);
  v28[2] = sub_10007E6D4;
  v28[3] = &unk_1002B1DB0;
  v29 = v22;
  v31 = v26;
  v30 = *(v25 - 4);
  v27 = v22;
  [v23 addFinishBlock:v28];
  [*v25 _saveSession:v27 forKey:*(v25 - 4)];
  [v27 start];
}

void sub_10007E6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007E6D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 ams_isTimeoutError])
    {
      [*(a1 + 32) cancel];
    }

    v7 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = objc_opt_class();
      v11 = v10;
      if (v9)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v6;
      v15 = "%{public}@Delegate auth session failed with error: %{public}@";
      v16 = v8;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 22;
      goto LABEL_18;
    }
  }

  else
  {
    v7 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AMSLogKey();
      v13 = objc_opt_class();
      v14 = v13;
      if (v9)
      {
        v3 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v13];
      }
      v12 = ;
      *buf = 138543362;
      v20 = v12;
      v15 = "%{public}@Delegate auth session succeeded";
      v16 = v8;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 12;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
      if (v9)
      {

        v12 = v3;
      }
    }
  }

  [*(a1 + 48) _removeSessionForKey:*(a1 + 40)];
}

void sub_10007EF00(uint64_t a1)
{
  sub_10007EF58();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CPSStorePurchaseRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002E3410 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10021B468();
    sub_10007EF58();
  }
}

void sub_10007EF58()
{
  v1[0] = 0;
  if (!qword_1002E3418)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10007F054;
    v1[4] = &unk_1002B0760;
    v1[5] = v1;
    v2 = off_1002B1DF8;
    v3 = 0;
    qword_1002E3418 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002E3418)
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