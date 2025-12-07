void ServerAuthUIInitLogging(uint64_t result, uint64_t a2)
{
  if (qword_10000CF58 != -1)
  {
    sub_100003B9C();
  }
}

void sub_100000F5C(id a1)
{
  serverAuthUILogHandle = os_log_create("com.apple.FileProviderUI.ServerAuthUIExtension", "ServerAuthUI");

  _objc_release_x1();
}

void sub_100001BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001C88;
  v10[3] = &unk_100008378;
  v11 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v8 = v5;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_100001C88(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 32))
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 56) count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = *(v1 + 56);
    v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    v7 = *v32;
    v25 = v4;
    v26 = v1;
    v24 = *v32;
    while (1)
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [v10 setType:{objc_msgSend(v9, "unsignedIntegerValue")}];
        if ([v10 type] == 1)
        {
          v11 = *(v1 + 48);
          v12 = *(v11 + 32);
          v29 = 0;
          v30 = 0;
          [v12 getUsername:&v30 password:&v29 forServerURL:*(v11 + 24)];
          v13 = v30;
          v14 = v29;
          v15 = [NSURLComponents componentsWithURL:*(*(v1 + 48) + 24) resolvingAgainstBaseURL:0];
          v16 = [v15 user];
          v17 = [v16 copy];

          if (v13 && v14)
          {
            if (v17 && ![v17 isEqualToString:v13])
            {
              v20 = 0;
              v19 = v17;
              v18 = v17;
            }

            else
            {
              v18 = v13;
              v19 = v14;
              v20 = v14;
            }

LABEL_19:
            v23 = v19;
            v21 = v20;
            v22 = v18;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v19 = v17;
            v18 = v17;
            if (v17)
            {
              goto LABEL_19;
            }
          }

          [v10 setUsername:v22];
          [v10 setPassword:v21];

          v4 = v25;
          v1 = v26;
          v7 = v24;
          v6 = v27;
        }

        [v4 addObject:v10];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v6)
      {
LABEL_23:

        [*(v1 + 40) authenticationDelegate:*(v1 + 48) didReceiveCredentialDescriptors:v4];
        return;
      }
    }
  }

  v2 = *(a1 + 40);
  v3 = *(v1 + 48);

  [v2 authenticationDelegate:v3 didEncounterError:?];
}

void sub_100002084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000020A0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = a1[4];
    if (v6)
    {
      [a1[4] authenticationDelegate:WeakRetained didEncounterError:v6];
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000021C8;
      v9[3] = &unk_1000083C8;
      objc_copyWeak(&v12, a1 + 6);
      v10 = a1[5];
      v11 = v5;
      [v8 authenticationDelegate:WeakRetained didFinishWithError:0 completionHandler:v9];

      objc_destroyWeak(&v12);
    }
  }
}

void sub_1000021C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] storeCredentialsFromServerURL:*(a1 + 32)];
    [v3 _updateRecentServersListWithServer:*(a1 + 32)];
    if ([*(a1 + 40) length])
    {
      v4 = [@"com.apple.SMBClientProvider.FileProvider" stringByAppendingPathComponent:*(a1 + 40)];
      v7 = FPUIAuthenticationProviderDomainIdentifier;
      v8 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    }

    else
    {
      v5 = &__NSDictionary0__struct;
    }

    v6 = [v3 extensionContext];
    [v6 completeRequestWithUserInfo:v5];
  }
}

void sub_100002538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000255C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000264C;
  v10[3] = &unk_100008440;
  v11 = v6;
  v12 = *(a1 + 32);
  v8 = v6;
  objc_copyWeak(&v14, (a1 + 40));
  v13 = v7;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v14);
}

void sub_10000264C(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002744;
  v7[3] = &unk_100008418;
  v6 = v2;
  v8 = v6;
  objc_copyWeak(&v9, (a1 + 56));
  [v3 authenticationDelegate:WeakRetained didFinishWithError:v5 completionHandler:v7];

  objc_destroyWeak(&v9);
}

void sub_100002744(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [@"com.apple.SMBClientProvider.FileProvider" stringByAppendingPathComponent:?];
    v7 = FPUIAuthenticationProviderDomainIdentifier;
    v8 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateRecentServersListWithServer:WeakRetained[3]];
    v6 = [v5 extensionContext];
    [v6 completeRequestWithUserInfo:v3];
  }
}

void sub_100003B60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100003B80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_100003BB0(void *a1, uint64_t a2)
{
  v2 = a1;
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = objc_opt_class();
  sub_100003B60(&_mh_execute_header, v3, v4, "Unexpected item in keychain of type %@", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_100003C3C(void *a1, uint64_t a2)
{
  v2 = a1;
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = objc_opt_class();
  sub_100003B60(&_mh_execute_header, v3, v4, "Unexpected type %@ for username", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_100003CC8(void *a1, uint64_t a2)
{
  v2 = a1;
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = objc_opt_class();
  sub_100003B60(&_mh_execute_header, v3, v4, "Unexpected type %@ for password data", v5, v6, v7, v8, v9, DWORD2(v9));
}

void sub_100003D98(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100003B80(&_mh_execute_header, a2, a3, "Failed to update keychain entry (status: %d)", a5, a6, a7, a8, v8);
}

void sub_100003E04(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100003B80(&_mh_execute_header, a2, a3, "Failed to add keychain entry (status: %d)", a5, a6, a7, a8, v8);
}

void sub_100003E70(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_100003B80(&_mh_execute_header, a2, a3, "Failed to delete keychain entry (status: %d)", a5, a6, a7, a8, v8);
}