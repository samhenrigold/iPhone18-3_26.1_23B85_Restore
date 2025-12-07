int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id sub_100000F88(uint64_t a1)
{
  if (qword_100008700 != -1)
  {
    sub_100001B44();
  }

  v2 = qword_1000086F8;

  return v2;
}

void sub_100000FCC(uint64_t a1)
{
  v2 = sub_100000F88(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Completed Maps app removal", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v4);
}

void sub_10000114C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100000F88(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Completed Maps Push Daemon processing for Maps app removal", buf, 2u);
  }

  if (v3)
  {
    v6 = sub_100000F88(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001B58(v3, v6);
    }
  }

  v7 = [*(a1 + 32) isolation];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001278;
  v9[3] = &unk_100004198;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v8 = v3;
  dispatch_async(v7, v9);
}

void sub_100001278(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v3 = [*(a1 + 32) error];
    [*(a1 + 32) setError:v3];
  }

  else
  {
    [*(a1 + 32) setError:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v4);
}

void sub_100001414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100000F88(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Completed Analytics processing for Maps app removal", v11, 2u);
  }

  if (v3)
  {
    v6 = sub_100000F88(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001BD0(v3, v6);
    }
  }

  v7 = [*(a1 + 32) error];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 error];
    [*(a1 + 32) setError:v9];
  }

  else
  {
    [v8 setError:v3];
  }

  v10 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v10);
}

void sub_1000015F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 _geo_filtered:&stru_100004200];
    v7 = [v6 count];
    if (v7)
    {
      v8 = sub_100000F88(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v32 = [v6 count];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removing %llu offline subscriptions", buf, 0xCu);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v6;
      obj = v6;
      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = [*(a1 + 32) completionGroup];
            dispatch_group_enter(v14);

            v15 = *(a1 + 40);
            v16 = [v13 identifier];
            v17 = [*(a1 + 32) isolation];
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1000018CC;
            v25[3] = &unk_100004228;
            v25[4] = *(a1 + 32);
            [v15 removeSubscriptionWithIdentifier:v16 callbackQueue:v17 completionHandler:v25];
          }

          v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      v6 = v23;
    }

    v18 = [*(a1 + 32) completionGroup];
    dispatch_group_leave(v18);
  }

  else
  {
    v19 = [*(a1 + 32) error];
    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 error];
      [*(a1 + 32) setError:v21];
    }

    else
    {
      [v20 setError:v5];
    }

    v22 = [*(a1 + 32) completionGroup];
    dispatch_group_leave(v22);
  }
}

void sub_1000018CC(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = [*(a1 + 32) error];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 error];
      [*(a1 + 32) setError:v7];
    }

    else
    {
      [v6 setError:v9];
    }
  }

  v8 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v8);
}

void sub_100001A48(uint64_t a1)
{
  v1 = [*(a1 + 32) completionGroup];
  dispatch_group_leave(v1);
}

void sub_100001B00(id a1)
{
  qword_1000086F8 = os_log_create("com.apple.Maps", "MapsAppRemovalService");

  _objc_release_x1();
}

void sub_100001B58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to process Maps app removal with maps push daemon: %@", &v2, 0xCu);
}

void sub_100001BD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to process Maps app removal for analytics: %@", &v2, 0xCu);
}