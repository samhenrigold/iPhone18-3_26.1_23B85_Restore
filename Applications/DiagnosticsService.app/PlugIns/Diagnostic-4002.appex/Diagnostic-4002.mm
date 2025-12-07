void sub_1000018EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000193C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v7)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100002AB8();
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_18;
    }

    [v6 setDelegate:WeakRetained];
    v10 = [WeakRetained _appletAID];
    v11 = [v6 appletWithIdentifier:v10];

    if (v11)
    {
      if ([v6 setActiveApplet:v11])
      {
        if ([v6 startCardEmulation])
        {
          objc_storeStrong(WeakRetained + 6, a2);
          v12 = 1;
LABEL_17:
          *(*(*(a1 + 32) + 8) + 24) = v12;

LABEL_18:
          dispatch_semaphore_signal(*(WeakRetained + 1));
          goto LABEL_19;
        }

        v13 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100002B68();
        }
      }

      else
      {
        v13 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100002B2C();
        }
      }
    }

    else
    {
      v13 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100002BA4();
      }
    }

    v12 = 0;
    goto LABEL_17;
  }

LABEL_19:
}

void sub_100001BC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[NFHardwareManager sharedHardwareManager];
    v4 = [WeakRetained contactlessSession];

    if (v4)
    {
      v5 = [WeakRetained contactlessSession];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100001D64;
      v10[3] = &unk_100008230;
      v10[4] = WeakRetained;
      [v5 endSessionWithCompletion:v10];
    }

    v6 = *(*(a1 + 32) + 16);
    v7 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100002C24();
      }
    }

    v9 = [WeakRetained contactlessSession];
    [v9 setDelegate:0];

    [WeakRetained setContactlessSession:0];
    [WeakRetained setSessionController:0];
    [v3 invalidateConnection];
  }

  else
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100002C9C();
    }
  }
}

BOOL isValidSerialNumber(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 length] > 3;

  return v2;
}

void sub_100002894(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NSError variable was previously assigned.  New unsaved error: %@", &v2, 0xCu);
}

void sub_10000290C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NSError variable was nil.  New unsaved error: %@", &v2, 0xCu);
}

void sub_100002A00()
{
  sub_100002828();
  sub_10000281C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002B2C()
{
  sub_100002828();
  sub_10000281C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002B68()
{
  sub_100002828();
  sub_10000281C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002C9C()
{
  sub_100002828();
  sub_10000281C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002CD8()
{
  sub_100002828();
  sub_10000281C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002D14(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = 134218242;
  v6 = [a1 userNfcEnabledState];
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to restore NFC radio state to %ld! Error: %@", &v5, 0x16u);
}

void sub_100002E9C()
{
  sub_100002828();
  sub_10000281C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}