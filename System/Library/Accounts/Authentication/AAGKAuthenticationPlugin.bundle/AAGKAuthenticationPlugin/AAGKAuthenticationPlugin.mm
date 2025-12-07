void sub_1230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_124C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1264(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_15C8(uint64_t a1)
{
  v2 = +[AASetupAssistantService urlConfiguration];
  (*(*(a1 + 32) + 16))();
}

void sub_16E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [AASetupAssistantAuthenticateRequest alloc];
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 initWithAccount:v4[5]];
    v6 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 32) + 40)];
    [v6 addProvisioningInfoToAARequest:v5];
  }

  else
  {
    v6 = [v4 appleID];
    v7 = [*(a1 + 32) password];
    v5 = [v3 initWithUsername:v6 password:v7];
  }

  [v5 setCookieStorage:*(*(a1 + 32) + 48)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_181C;
  v8[3] = &unk_145E8;
  v9 = *(a1 + 40);
  [v5 performRequestWithHandler:v8];
}

void sub_181C(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18CC;
  v5[3] = &unk_145C0;
  v6 = a3;
  v7 = *(a1 + 32);
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_18CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 error];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_19E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a4, a6);
  }

  return result;
}

void sub_1B24(id *a1)
{
  v2 = [a1[4] mutableCopy];
  v3 = [a1[5] appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [a1[5] password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v5 forKey:@"client-id"];

  v6 = [AASetupAssistantCreateRequest alloc];
  v7 = a1[5];
  v8 = v7[5];
  v9 = [v7 _signingSession];
  v10 = [v6 initWithAccount:v8 withAppleIDParameters:v2 signingSession:v9];

  v11 = *(a1[5] + 5);
  if (v11)
  {
    v12 = [v11 aa_personID];

    if (v12)
    {
      v13 = [[AADeviceProvisioningSession alloc] initWithAccount:*(a1[5] + 5)];
      [v13 addProvisioningInfoToAARequest:v10];
    }
  }

  [v10 setCookieStorage:*(a1[5] + 6)];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1CE8;
  v14[3] = &unk_145E8;
  v15 = a1[6];
  [v10 performRequestWithHandler:v14];
}

void sub_1CE8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([v6 statusCode] != &stru_158.reloff + 1)
  {
    if (!v6)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v8 = v7;
      goto LABEL_13;
    }

    v12 = v6;
    v13 = [v12 status];
    if (v13 && (v14 = v13, [v12 status], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v14, !v16))
    {
      v10 = [v12 personID];
      v9 = [v12 appleID];
      v11 = 1;
    }

    else
    {
      v10 = [v12 statusMessage];

      if (v10)
      {
        v17 = +[NSMutableDictionary dictionary];
        v18 = [v12 statusMessage];
        [v17 setObject:v18 forKey:NSLocalizedDescriptionKey];

        v19 = [v12 status];
        v8 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.appleaccount", [v19 intValue], v17);

        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_12;
      }

      v9 = 0;
      v11 = 0;
    }

    v8 = v7;
    goto LABEL_12;
  }

  v8 = [NSError errorWithDomain:@"com.apple.appleaccount" code:401 userInfo:0];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7;
LABEL_12:

LABEL_13:
  v20 = _AALogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67109378;
    v21[1] = v11;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "createAppleIDWithParameters calling handler with success %d error %@", v21, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_20A4(id *a1)
{
  v2 = [a1[4] mutableCopy];
  v3 = [a1[5] appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [a1[5] password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v5 forKey:@"client-id"];

  v6 = [AASetupAssistantUpdateRequest alloc];
  v7 = a1[5];
  v8 = v7[5];
  v9 = [v7 _signingSession];
  v10 = [v6 initWithAccount:v8 withAppleIDParameters:v2 signingSession:v9];

  v11 = a1[5];
  if (v11[5])
  {
    v12 = [[AADeviceProvisioningSession alloc] initWithAccount:*(a1[5] + 5)];
    [v12 addProvisioningInfoToAARequest:v10];

    v11 = a1[5];
  }

  [v10 setCookieStorage:v11[6]];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2254;
  v13[3] = &unk_145E8;
  v14 = a1[6];
  [v10 performRequestWithHandler:v13];
}

void sub_2254(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v21 = 0;
    v16 = 0;
    v22 = 0;
    v20 = v9;
    goto LABEL_11;
  }

  v11 = v8;
  v12 = [v11 status];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 status];
    v15 = [v14 intValue];

    if (!v15)
    {
      v16 = [v11 personID];
      v21 = [v11 appleID];
      v22 = 1;
      goto LABEL_9;
    }
  }

  v16 = [v11 statusMessage];

  if (!v16)
  {
    v21 = 0;
    v22 = 0;
LABEL_9:
    v20 = v10;
    goto LABEL_10;
  }

  v17 = +[NSMutableDictionary dictionary];
  v18 = [v11 statusMessage];
  [v17 setObject:v18 forKey:NSLocalizedDescriptionKey];

  v19 = [v11 status];
  v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.appleaccount", [v19 intValue], v17);

  v21 = 0;
  v16 = 0;
  v22 = 0;
LABEL_10:

LABEL_11:
  v23 = _AALogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67109378;
    v24[1] = v22;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "updateAppleIDWithParameters calling handler with success %d error %@", v24, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_25DC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setValue:*(a1 + 32) forKey:@"delegates"];
  v3 = [*(a1 + 40) appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [*(a1 + 40) password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = [*(a1 + 40) emailChoice];
  [v2 setValue:v5 forKey:@"email-choice"];

  v6 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v6 forKey:@"client-id"];

  v7 = [AASetupAssistantSetupDelegatesRequest alloc];
  v8 = *(a1 + 40);
  v9 = v8[5];
  v10 = [v8 _signingSession];
  v11 = [v7 initWithAccount:v9 withSetupParameters:v2 signingSession:v10];

  v12 = *(a1 + 40);
  if (*(v12 + 40))
  {
    v13 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 40) + 40)];
    [v13 addProvisioningInfoToAARequest:v11];

    v12 = *(a1 + 40);
  }

  [v11 setCookieStorage:*(v12 + 48)];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_27C8;
  v14[3] = &unk_145E8;
  v15 = *(a1 + 48);
  [v11 performRequestWithHandler:v14];
}

void sub_27C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v21 = 0;
    v20 = v9;
    goto LABEL_11;
  }

  v11 = v8;
  v12 = [v11 status];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 status];
    v15 = [v14 intValue];

    if (!v15)
    {
      v21 = [v11 responseParameters];
      goto LABEL_9;
    }
  }

  v16 = [v11 statusMessage];

  if (!v16)
  {
    v21 = 0;
LABEL_9:
    v20 = v10;
    goto LABEL_10;
  }

  v17 = +[NSMutableDictionary dictionary];
  v18 = [v11 statusMessage];
  [v17 setObject:v18 forKey:NSLocalizedDescriptionKey];

  v19 = [v11 status];
  v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.appleaccount", [v19 intValue], v17);

  v21 = 0;
LABEL_10:

LABEL_11:
  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v20;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "setupDelegateAccountsWithParameters calling handler with error %@", &v23, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2B08(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setValue:*(a1 + 32) forKey:@"delegates"];
  v3 = [*(a1 + 40) appleID];
  [v2 setValue:v3 forKey:@"apple-id"];

  v4 = [*(a1 + 40) password];
  [v2 setValue:v4 forKey:@"password"];

  v5 = [*(a1 + 40) emailChoice];
  [v2 setValue:v5 forKey:@"email-choice"];

  v6 = +[AADeviceInfo appleIDClientIdentifier];
  [v2 setValue:v6 forKey:@"client-id"];

  v7 = [AALoginOrCreateDelegatesRequest alloc];
  v8 = *(a1 + 40);
  v9 = v8[5];
  v10 = [v8 _signingSession];
  v11 = [v7 initWithAccount:v9 parameters:v2 signingSession:v10];

  v12 = *(a1 + 40);
  if (*(v12 + 40))
  {
    v13 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 40) + 40)];
    [v13 addProvisioningInfoToAARequest:v11];

    v12 = *(a1 + 40);
  }

  [v11 setCookieStorage:*(v12 + 48)];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2CF4;
  v14[3] = &unk_145E8;
  v15 = *(a1 + 48);
  [v11 performRequestWithHandler:v14];
}

void sub_2CF4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 status];
    if (!v13 || (v14 = v13, [v10 status], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v14, v12 = v11, v16))
    {
      v17 = [v10 statusMessage];

      v12 = v11;
      if (v17)
      {
        v24 = NSLocalizedDescriptionKey;
        v18 = [v10 statusMessage];
        v25 = v18;
        v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

        v20 = [v10 status];
        v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.appleaccount", [v20 intValue], v19);
      }
    }
  }

  v21 = _AALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v12;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "loginDelegatesWithParameters calling completion handler with error %@", &v22, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_3114(uint64_t a1)
{
  v2 = [[AASetupAssistantTermsFetchRequest alloc] initWithAccount:*(*(a1 + 32) + 40)];
  if (*(*(a1 + 32) + 40))
  {
    v3 = [[AADeviceProvisioningSession alloc] initWithAccount:*(*(a1 + 32) + 40)];
    [v3 addProvisioningInfoToAARequest:v2];
  }

  if (*(a1 + 40))
  {
    [v2 setCustomHeaders:?];
  }

  [v2 setCookieStorage:*(*(a1 + 32) + 48)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_321C;
  v4[3] = &unk_145E8;
  v5 = *(a1 + 48);
  [v2 performRequestWithHandler:v4];
}

void sub_321C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 xmlUIData];
    v9 = _AALogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "We got the new iCloud Terms from the server", &v12, 2u);
      }
    }

    else if (v10)
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Terms failed with error: %@", &v12, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Fetching iCloud Terms failed with error: %@", &v12, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_35AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
    v9 = [v8 upgradeStatus];
    v10 = _AALogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "We got the upgrade status from the server", &v14, 2u);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 BOOLValue], v7);
    }

    else
    {
      if (v11)
      {
        v13 = [v8 responseDictionary];
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Fetching upgrade status failed with error: %@ response: %@", &v14, 0x16u);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 1, v7);
    }
  }

  else
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Fetching upgrade status got no response and error: %@", &v14, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_3D8C(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_18E70;
  v6 = qword_18E70;
  if (!qword_18E70)
  {
    v7 = *off_14680;
    v8 = *off_14690;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_18E70 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_3EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3EB8(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_18E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_3F50()
{
  v3 = 0;
  v0 = sub_3D8C(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t sub_3FAC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_18E78;
  v6 = qword_18E78;
  if (!qword_18E78)
  {
    v1 = sub_3F50();
    v4[3] = dlsym(v1, "BYSetupAssistantIsRunningSilentTokenUpgrade");
    qword_18E78 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_4080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_4098(uint64_t a1)
{
  v2 = sub_3F50();
  result = dlsym(v2, "BYSetupAssistantIsRunningSilentTokenUpgrade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_18E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_40E8()
{
  v0 = sub_3FAC();
  if (v0)
  {

    return v0();
  }

  else
  {
    sub_B10C();
    return sub_4118();
  }
}

uint64_t sub_4118()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_18E80;
  v6 = qword_18E80;
  if (!qword_18E80)
  {
    v1 = sub_3F50();
    v4[3] = dlsym(v1, "BYSetupAssistantHasCompletedInitialRun");
    qword_18E80 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_41EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_4204(uint64_t a1)
{
  v2 = sub_3F50();
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_18E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_4254()
{
  v0 = sub_4118();
  if (v0)
  {

    return v0();
  }

  else
  {
    sub_B10C();
    return sub_4284();
  }
}

id sub_4284()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_18E88;
  v7 = qword_18E88;
  if (!qword_18E88)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_4364;
    v3[3] = &unk_146D8;
    v3[4] = &v4;
    sub_4364(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_4364(uint64_t a1)
{
  sub_3F50();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_18E88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_B130();
    return sub_43BC();
  }

  return result;
}

uint64_t sub_43BC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_18E90;
  v6 = qword_18E90;
  if (!qword_18E90)
  {
    v1 = sub_3F50();
    v4[3] = dlsym(v1, "BYFlowSkipIdentifierAppleID");
    qword_18E90 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_4490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_44A8(uint64_t a1)
{
  v2 = sub_3F50();
  result = dlsym(v2, "BYFlowSkipIdentifierAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_18E90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

AAGKAuthenticationPlugin *sub_44F8()
{
  v0 = sub_43BC();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_B10C();
    return [(AAGKAuthenticationPlugin *)v3 init];
  }
}

void sub_48F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_4918(uint64_t a1)
{
  if (qword_18EB0 != -1)
  {
    sub_B1C8();
  }

  v2 = qword_18EA8;

  return v2;
}

void sub_495C(uint64_t a1)
{
  v2 = sub_4918(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "We timed out waiting on the server", v3, 2u);
  }

  [*(a1 + 32) cancelAllOperations];
  dispatch_source_cancel(*(a1 + 40));
}

void sub_49D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = v4;
  if (!v3)
  {
    v7 = sub_4918(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_B24C();
    }

    goto LABEL_7;
  }

  v6 = sub_4918(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_B1DC();
    }

LABEL_7:

    (*(*(a1 + 56) + 16))();
    goto LABEL_11;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Server auth was successful, not in Gray Mode anymore", buf, 2u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  [*(a1 + 32) aa_updateWithProvisioningResponse:v3];
  [*(a1 + 32) aa_setNeedsToVerifyTerms:0];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4B84;
  v12[3] = &unk_14728;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = v10;
  v14 = v11;
  [v8 saveVerifiedAccount:v9 withCompletionHandler:v12];

LABEL_11:
  dispatch_source_cancel(*(a1 + 48));
}

void sub_4B84(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = sub_4918(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_B2BC();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_4C64(id a1)
{
  qword_18E98 = [[NSSet alloc] initWithArray:&off_153B0];

  _objc_release_x1();
}

uint64_t sub_54DC(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

uint64_t sub_5500(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

void sub_56C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_4918(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_B574();
    }

    [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v10 = v9;
    if (v9)
    {
      v11 = sub_4918(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 40) username];
        v21 = 138412290;
        v22 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Password-less auth succeeded! Time for login with Apple ID %@...", &v21, 0xCu);
      }

      [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:v10 store:*(a1 + 48) completion:*(a1 + 64)];
    }

    else
    {
      v13 = [v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
      v14 = [v13 allKeys];

      v15 = [*(a1 + 56) count];
      if (v15 && (v15 = [v14 count]) != 0 && (+[NSSet setWithArray:](NSSet, "setWithArray:", *(a1 + 56)), v16 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v14), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isSubsetOfSet:", v17), v17, v16, v18))
      {
        v19 = sub_4918(v15);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Password-less auth returned all the requested tokens!", &v21, 2u);
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v20 = sub_4918(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_B5E4();
        }

        [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
      }
    }
  }
}

void sub_5BD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:a2 store:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v7 = sub_4918(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_B73C();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_5F0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_4918(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_B7AC();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v9 = sub_4918(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Password-based auth succeeded! Time for login with Apple ID %@...", &v11, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id sub_6314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    return [*(a1 + 32) _handleRenewFailure:a3 forAccount:*(a1 + 40) accountStore:*(a1 + 48) options:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

void sub_6634(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_66D8;
  v6[3] = &unk_148A8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _beginPETBasedLoginWithAccount:v4 PET:a2 store:v5 completion:v6];
}

void sub_66FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_4918(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_B904();
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:kACRenewCredentialsServicesKey];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) username];
    v9 = [*(a1 + 48) aa_altDSID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_685C;
    v10[3] = &unk_148F8;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    [v7 _convertPasswordToPETForAppleID:v8 altDSID:v9 password:v4 services:v6 completion:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_685C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_4918(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin: Password from companion was successfully exchanged for PET. Logging in...", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_6DBC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (*(a1 + 56))
  {
    v10 = sub_4918(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_B9F4();
    }

    CFUserNotificationCancel(*(a1 + 56));
    CFRelease(*(a1 + 56));
  }

  v11 = *(a1 + 32);
  objc_sync_enter(v11);
  v12 = *(*(a1 + 32) + 8);
  v13 = [*(a1 + 40) identifier];
  [v12 removeObject:v13];

  if ((a2 & 1) == 0)
  {
    v18 = sub_4918(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_BA30();
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    v18 = sub_4918(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_BB18();
    }

    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = isKindOfClass;
  v17 = sub_4918(isKindOfClass);
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_BAA8();
    }

LABEL_17:

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    v21 = 138412290;
    v22 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "ACRemoteDeviceProxy successfully provided us with a password for %@", &v21, 0xCu);
  }

  v20 = v7;
  (*(*(a1 + 48) + 16))();

LABEL_18:
  objc_sync_exit(v11);
}

void sub_7330(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5 && !a2)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if ([v5 code] != &stru_158.reloff + 1)
  {
    v8 = [v6 code];
    if (v8 == &stru_158.flags + 1 || (v8 = [v6 code], v8 == &stru_158.reloff + 3))
    {
      v9 = sub_4918(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Got a 409/403, the account really is in Gray Mode", v15, 2u);
      }

      v10 = [*(a1 + 32) _frontmostApplicationId];
      v11 = [v10 isEqualToString:@"com.apple.Preferences"];

      if (v11)
      {
        v13 = *(*(a1 + 72) + 16);
LABEL_18:
        v13();
        goto LABEL_19;
      }

      v14 = sub_4918(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_BB54();
      }
    }

LABEL_17:
    v13 = *(*(a1 + 72) + 16);
    goto LABEL_18;
  }

  v7 = sub_4918(401);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Auth was bad, re-authenticate...", buf, 2u);
  }

  [*(a1 + 32) _authenticateAccount:*(a1 + 40) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 72)];
LABEL_19:
}

void sub_789C(uint64_t a1)
{
  v2 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v3 = [*(a1 + 32) username];
  [v2 setUsername:v3];

  [v2 setIsUsernameEditable:0];
  [v2 setReason:*(a1 + 40)];
  v4 = [*(a1 + 32) aa_personID];
  [v2 setDSID:v4];

  v5 = [*(a1 + 32) aa_altDSID];
  [v2 setAltDSID:v5];

  [v2 setAnticipateEscrowAttempt:1];
  [v2 setAuthenticationType:0];
  v6 = [*(a1 + 32) _aa_rawPassword];

  if (v6)
  {
    v8 = sub_4918(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will try auth with cached password first...", buf, 2u);
    }

    v9 = [*(a1 + 32) _aa_rawPassword];
    [v2 _setPassword:v9];

    [v2 setAuthenticationType:1];
  }

  [v2 _setProxyingForApp:1];
  v10 = [*(a1 + 48) client];
  v11 = [v10 name];
  [v2 _setProxiedAppName:v11];

  if (*(a1 + 56))
  {
    [v2 _setProxiedAppBundleID:?];
  }

  else
  {
    v12 = [*(a1 + 48) client];
    v13 = [v12 bundleID];
    [v2 _setProxiedAppBundleID:v13];
  }

  if (*(a1 + 64))
  {
    [v2 setProxiedDevice:?];
  }

  else if (*(a1 + 120) == 1)
  {
    [v2 setAuthenticationType:1];
  }

  v14 = *(a1 + 32);
  v38[0] = @"account";
  v38[1] = @"accountStore";
  v15 = *(a1 + 48);
  v39[0] = v14;
  v39[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v2 setClientInfo:v16];

  if (*(a1 + 112))
  {
    v17 = [v2 setServiceType:?];
  }

  if (*(a1 + 72))
  {
    v18 = sub_4918(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_BBFC();
    }

    [v2 setServiceIdentifiers:*(a1 + 72)];
    v17 = [v2 setShouldUpdatePersistentServiceTokens:1];
  }

  v19 = sub_4918(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_BC70();
  }

  v20 = v6 != 0;

  v21 = [*(a1 + 80) _authController];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_7CC0;
  v25[3] = &unk_149E8;
  v34 = v20;
  v22 = *(a1 + 32);
  v23 = *(a1 + 80);
  v26 = v22;
  v27 = v23;
  v28 = *(a1 + 48);
  v29 = *(a1 + 88);
  v30 = *(a1 + 96);
  v33 = *(a1 + 104);
  v35 = *(a1 + 120);
  v31 = *(a1 + 64);
  v32 = v2;
  v36 = *(a1 + 121);
  v24 = v2;
  [v21 authenticateWithContext:v24 completion:v25];
}

void sub_7CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && (*(a1 + 96) & 1) != 0)
  {
    v8 = sub_4918(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_BCAC();
    }

    [*(a1 + 32) _aa_clearRawPassword];
    [*(a1 + 40) _authenticateAccount:*(a1 + 32) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 88)];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_7F7C;
    v24[3] = &unk_14998;
    objc_copyWeak(&v33, &location);
    v25 = *(a1 + 56);
    v34 = *(a1 + 97);
    v9 = v7;
    v26 = v9;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = *(a1 + 72);
    v31 = *(a1 + 80);
    v32 = *(a1 + 88);
    v13 = objc_retainBlock(v24);
    v14 = *(a1 + 40);
    v15 = *(a1 + 80);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_811C;
    v17[3] = &unk_149C0;
    v17[4] = v14;
    v18 = v5;
    v19 = v9;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v23 = *(a1 + 98);
    v16 = v13;
    v22 = v16;
    [v14 _validateAuthenticationResults:v18 error:v19 forContext:v15 completion:v17];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

void sub_7F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_7F7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v7 = [*(a1 + 32) objectForKeyedSubscript:kACRenewCredentialsShouldForceKey];
  if (([v7 BOOLValue] & 1) != 0 || *(a1 + 104))
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"AARenewShouldPostFollowUp"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  if ([*(a1 + 40) ak_isUnableToPromptError] & 1) != 0 || (objc_msgSend(*(a1 + 40), "ak_isUserCancelError"))
  {
    v10 = &dword_0 + 1;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = [*(a1 + 40) ak_isAuthenticationErrorWithCode:-7014];
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  if ((v10 & v9) != 0)
  {
    v11 = sub_4918(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_BD1C();
    }

    v12 = [*(a1 + 56) _userInfoForRenewCredentialsFollowUpWithAccountStore:*(a1 + 64) proxiedDevice:*(a1 + 72)];
    if (WeakRetained)
    {
      v13 = [AAFollowUpUtilities followUpPostAnalyticsInfoWithContext:*(a1 + 80) identifier:AAFollowUpIdentifierRenewCredentials error:*(a1 + 40)];
      [WeakRetained[3] setAnalyticsInfo:v13];

      [WeakRetained[3] postFollowUpWithIdentifier:AAFollowUpIdentifierRenewCredentials forAccount:*(a1 + 48) userInfo:v12 completion:0];
    }
  }

LABEL_15:
  (*(*(a1 + 88) + 16))();
}

id sub_811C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_4918(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin: Continue authenticating...", v10, 2u);
    }

    return [*(a1 + 32) _handleAuthenticationResults:*(a1 + 40) error:*(a1 + 48) forAccount:*(a1 + 56) inStore:*(a1 + 64) resetAuthenticatedOnAlertFailure:*(a1 + 80) completion:*(a1 + 72)];
  }

  else
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);

    return [AAAuthenticationErrorHandler handleAuthenticationError:v6 resetAuthenticatedOnAlertFailure:v5 forAccount:v7 inStore:v8 completion:v9];
  }
}

void sub_86D4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_4918(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin: loginDelegates succeeded!", &v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin: loginDelegates failed with error: %@", &v8, 0xCu);
    }

    [*(a1 + 32) _aa_clearRawPassword];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_8988(uint64_t a1)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v2 = [*(a1 + 40) credential];

  if (v2)
  {
    v3 = [*(a1 + 40) credential];
    [v3 setPassword:v4];
  }

  else
  {
    v3 = [ACAccountCredential credentialWithPassword:v4];
    [*(a1 + 40) setCredential:v3];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_8CE8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_4918(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v15[0]) = a2;
    WORD2(v15[0]) = 2112;
    *(v15 + 6) = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin: saving raw password result was %d. Error: %@", buf, 0x12u);
  }

  if (*(a1 + 32))
  {
    v8 = sub_4918(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15[0] = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin setting raw password for iCloud account %@", buf, 0xCu);
    }

    [*(a1 + 32) _aa_setRawPassword:*(a1 + 40)];
    v10 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_8E94;
    v12[3] = &unk_148A8;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v11 saveVerifiedAccount:v10 withCompletionHandler:v12];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_8E94(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_4918(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAGKAuthenticationPlugin: saving raw password result was %d. Error: %@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_9194(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 status];
  v9 = [v8 integerValue];

  if (v6 || v9)
  {
    v15 = [v7 statusMessage];

    if (v15)
    {
      v24 = NSLocalizedDescriptionKey;
      v25 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.appleaccount" code:v9 userInfo:v16];

      v6 = v17;
    }

    v18 = [*(a1 + 32) credential];
    [v18 setPassword:0];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [v7 responseParameters];

    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_93AC;
    v19[3] = &unk_14AB0;
    v20 = v13;
    v21 = *(a1 + 56);
    v14 = *(a1 + 64);
    v22 = 0;
    v23 = v14;
    [v10 _processAuthenticationResponseParameters:v11 accountStore:v12 account:v20 completion:v19];

    v6 = v20;
  }
}

uint64_t sub_93AC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectID];

  if (v3)
  {
    v5 = [*v2 dirtyProperties];
    v6 = [v5 count];

    if (v6)
    {
      v8 = sub_4918(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_BD90(v2);
      }
    }

    [*(a1 + 32) refresh];
    v9 = [ACDKeychainManager credentialForAccount:*(a1 + 32) clientID:0];
    [v9 setPassword:*(a1 + 40)];
    [*(a1 + 32) setCredential:v9];
  }

  v10 = sub_4918(v4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Completed storing tokens", v12, 2u);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v65 - 176), 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A56C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A584(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 username];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    *(*(a1[7] + 8) + 24) = 0;
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    v11 = sub_4918(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_C2BC(v7);
    }

    *a4 = 1;
  }

  if (a1[5])
  {
    v12 = [v7 accountPropertyForKey:@"altDSID"];
    v13 = [v12 isEqualToString:a1[5]];

    if (v13)
    {
      *(*(a1[7] + 8) + 24) = 0;
      objc_storeStrong((*(a1[8] + 8) + 40), a2);
      v15 = sub_4918(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_C348();
      }

      *a4 = 1;
    }
  }

  if (a1[6])
  {
    v16 = [v7 accountPropertyForKey:@"dsid"];
    v17 = [v16 isEqualToString:a1[6]];

    if (v17)
    {
      *(*(a1[7] + 8) + 24) = 0;
      objc_storeStrong((*(a1[8] + 8) + 40), a2);
      v19 = sub_4918(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_C3EC();
      }

      *a4 = 1;
    }
  }
}

void sub_A760(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 credential];
  v5 = [v4 token];

  if (v5)
  {
    if (([v5 isEqualToString:@"<gone>"] & 1) == 0)
    {
      v6 = [NSNumber numberWithInteger:a1[6]];
      v7 = [NSString stringWithFormat:@"GKCredentialScope-%@", v6];
      v8 = [v3 accountPropertyForKey:v7];
      v9 = [v8 unsignedIntegerValue];

      if ((v9 & 4) != 0)
      {
        v11 = sub_4918(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_C490(v3);
        }

        *(*(a1[4] + 8) + 24) = 1;
        *(*(a1[5] + 8) + 24) = 0;
      }
    }
  }
}

void sub_A894(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_4918(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C51C();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_C5AC(a1);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_A920(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_4918(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_C51C();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) shortDebugName];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Saving the game center account %@ succeeded.", &v8, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_AB6C(id a1)
{
  qword_18EA8 = os_log_create("com.apple.appleaccount", "gamecenter");

  _objc_release_x1();
}

void sub_AC18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_AC5C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_AC7C(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_18EB8;
  v6 = qword_18EB8;
  if (!qword_18EB8)
  {
    v7 = *off_14B90;
    v8 = *off_14BA0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_18EB8 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_ADA8(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_18EB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_AE40()
{
  v3 = 0;
  v0 = sub_AC7C(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id sub_AE9C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_18EC0;
  v7 = qword_18EC0;
  if (!qword_18EC0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_AF7C;
    v3[3] = &unk_146D8;
    v3[4] = &v4;
    sub_AF7C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_AF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_AF7C(uint64_t a1)
{
  sub_AE40();
  result = objc_getClass("GKPlayerInternal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_C638();
  }

  qword_18EC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_AFD4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_18EC8;
  v7 = qword_18EC8;
  if (!qword_18EC8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_B0B4;
    v3[3] = &unk_146D8;
    v3[4] = &v4;
    sub_B0B4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_B09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_B0B4(uint64_t a1)
{
  sub_AE40();
  result = objc_getClass("GKPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_C660();
  }

  qword_18EC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_B10C()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return sub_B130();
}

void sub_B158()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B1DC()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B24C()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B2BC()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B340()
{
  sub_AC38();
  v1 = [v0 accountType];
  v2 = [v1 accountTypeDescription];
  sub_ABB0();
  sub_AC18(&dword_0, v3, v4, "Unable to get credential for %@ account! Error = %@", v5, v6, v7, v8);
}

void sub_B3E0()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B41C()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B458()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B494()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B504()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B574()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B5E4()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B620()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B65C()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B6CC()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B73C()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B7AC()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B81C()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B858()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B8C8()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B904()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B940()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B97C()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B9B8()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B9F4()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BAA8()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BB18()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BB54()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BBFC()
{
  sub_AC50();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BC70()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BCAC()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BD1C()
{
  sub_AC50();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BD90(id *a1)
{
  v6 = [*a1 dirtyProperties];
  sub_ABD0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_BE3C()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BE78()
{
  sub_ABC4();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BEE8()
{
  sub_ABEC();
  sub_ABE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_BF24()
{
  sub_ABB0();
  sub_AC44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_BF9C()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C00C()
{
  sub_AC50();
  sub_AC44();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_C0BC()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_C0F8(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_AC44();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_C14C()
{
  sub_ABEC();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_C188(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_AC44();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_C1DC()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C24C()
{
  sub_ABC4();
  sub_ABF8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_C2BC(void *a1)
{
  v1 = [a1 username];
  sub_ABC4();
  sub_ABD0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_C348()
{
  sub_AC38();
  v1 = [v0 username];
  sub_ABC4();
  sub_ABD0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_C3EC()
{
  sub_AC38();
  v1 = [v0 username];
  sub_ABC4();
  sub_ABD0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_C490(void *a1)
{
  v1 = [a1 username];
  sub_ABC4();
  sub_ABD0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_C51C()
{
  sub_AC38();
  v1 = [sub_AC04(v0) shortDebugName];
  sub_ABB0();
  sub_AC18(&dword_0, v2, v3, "Saving the game center account %@ failed. Error: %@", v4, v5, v6, v7);
}

void sub_C5AC(uint64_t a1)
{
  v1 = [sub_AC04(a1) shortDebugName];
  sub_ABC4();
  sub_ABD0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}