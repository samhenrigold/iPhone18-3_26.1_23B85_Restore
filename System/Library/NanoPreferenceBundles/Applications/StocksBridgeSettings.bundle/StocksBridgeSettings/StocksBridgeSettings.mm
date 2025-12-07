uint64_t sub_1BD8(uint64_t a1)
{
  qword_11730 = [objc_alloc(*(a1 + 32)) initPrivate];

  return _objc_release_x1();
}

uint64_t sub_20B0(uint64_t a1)
{
  qword_11740 = [NSBundle bundleForClass:objc_opt_class()];

  return _objc_release_x1();
}

id stocks_bridge_log(uint64_t a1)
{
  if (qword_11758 != -1)
  {
    sub_4E98();
  }

  v2 = qword_11750;

  return v2;
}

void sub_2468(id a1)
{
  qword_11750 = os_log_create("com.apple.stocks.watchapp", "bridge");

  _objc_release_x1();
}

void sub_29E4(uint64_t a1)
{
  v2 = [UIWatchKitExtensionRequestAction alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2AF8;
  v6[3] = &unk_C3E8;
  v6[4] = *(a1 + 32);
  v3 = [v2 initWithRequest:&__NSDictionary0__struct withHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2B08;
  v5[3] = &unk_C408;
  v5[4] = *(a1 + 32);
  v4 = objc_retainBlock(v5);
  [*(a1 + 32) _launchAppWithBundleID:@"com.apple.stocks" withAction:v3 completion:v4];
}

void sub_2B08(uint64_t a1, void *a2)
{
  v3 = [a2 pid];
  if (v3)
  {
    v5 = [*(a1 + 32) _createAssertionForTargetWithPid:v3];
    if ([*(a1 + 32) _acquire:?])
    {
      [*(a1 + 32) _invalidateAfterDelay:v5];
    }
  }

  else
  {
    v4 = stocks_sync_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_4EAC(v4);
    }
  }
}

void sub_2E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v2 = [v1 invalidateWithError:&v10];
  v3 = v10;
  v4 = stocks_sync_log(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Unable to release assertion.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Released assertion.";
    v7 = &v8;
    goto LABEL_6;
  }
}

void sub_31A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = stocks_sync_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_4EF0(a1, v7, v8);
    }

    goto LABEL_4;
  }

  v11 = [v5 pid];
  if (v11)
  {
    v8 = stocks_sync_log(v11);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = *(a1 + 32);
    v18 = 138543362;
    v19 = v12;
    v13 = "Successfully launched %{public}@.";
    goto LABEL_12;
  }

  v8 = stocks_sync_log(v11);
  v14 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v14)
    {
      v17 = *(a1 + 32);
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "FrontBoard indicates we successfully launched %{public}@, but we do not have a BSProcessHandle.", &v18, 0xCu);
    }

LABEL_4:

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_15:
      v10();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v14)
  {
    v15 = *(a1 + 32);
    v18 = 138543362;
    v19 = v15;
    v13 = "FrontBoard indicates we successfully launched %{public}@, but we do not have a PID.";
LABEL_12:
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v13, &v18, 0xCu);
  }

LABEL_13:

  v16 = *(a1 + 40);
  if (v16)
  {
    v10 = *(v16 + 16);
    goto LABEL_15;
  }

LABEL_16:
}

void sub_3424(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 persistence];
  [v3 synchronize];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_37BC;
  block[3] = &unk_C350;
  v6 = v2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_44A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 symbol];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id sub_4ADC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[StocksSyncPreferenceKeys symbol];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v2 isEqualToString:v5];
  return v6;
}

id stocks_sync_log(uint64_t a1)
{
  if (qword_11768 != -1)
  {
    sub_4F7C();
  }

  v2 = qword_11760;

  return v2;
}

void sub_4E54(id a1)
{
  qword_11760 = os_log_create("com.apple.stocks.watchapp", "sync");

  _objc_release_x1();
}

void sub_4EF0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error launching %{public}@: %{public}@", &v4, 0x16u);
}