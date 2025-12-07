uint64_t sub_1368(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_14B00;
  v6 = qword_14B00;
  if (!qword_14B00)
  {
    v7 = *off_10540;
    v8 = *off_10550;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_14B00 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1494(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_152C()
{
  v3 = 0;
  v0 = sub_1368(&v3);
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

uint64_t sub_1588()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_14B08;
  v6 = qword_14B08;
  if (!qword_14B08)
  {
    v1 = sub_152C();
    v4[3] = dlsym(v1, "BYSetupAssistantIsRunningSilentTokenUpgrade");
    qword_14B08 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1674(uint64_t a1)
{
  v2 = sub_152C();
  result = dlsym(v2, "BYSetupAssistantIsRunningSilentTokenUpgrade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_16C4()
{
  v0 = sub_1588();
  if (v0)
  {

    return v0();
  }

  else
  {
    sub_8074();
    return sub_16F4();
  }
}

uint64_t sub_16F4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_14B10;
  v6 = qword_14B10;
  if (!qword_14B10)
  {
    v1 = sub_152C();
    v4[3] = dlsym(v1, "BYSetupAssistantHasCompletedInitialRun");
    qword_14B10 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_17C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_17E0(uint64_t a1)
{
  v2 = sub_152C();
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1830()
{
  v0 = sub_16F4();
  if (v0)
  {

    return v0();
  }

  else
  {
    sub_8074();
    return sub_1860();
  }
}

id sub_1860()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_14B18;
  v7 = qword_14B18;
  if (!qword_14B18)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1940;
    v3[3] = &unk_10598;
    v3[4] = &v4;
    sub_1940(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1940(uint64_t a1)
{
  sub_152C();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_14B18 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_8098();
    return sub_1998();
  }

  return result;
}

uint64_t sub_1998()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_14B20;
  v6 = qword_14B20;
  if (!qword_14B20)
  {
    v1 = sub_152C();
    v4[3] = dlsym(v1, "BYFlowSkipIdentifierAppleID");
    qword_14B20 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A84(uint64_t a1)
{
  v2 = sub_152C();
  result = dlsym(v2, "BYFlowSkipIdentifierAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

AAIDSAuthenticationPlugin *sub_1AD4()
{
  v0 = sub_1998();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_8074();
    return [(AAIDSAuthenticationPlugin *)v3 init];
  }
}

void sub_1ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1EF4(uint64_t a1)
{
  if (qword_14B40 != -1)
  {
    sub_8130();
  }

  v2 = qword_14B38;

  return v2;
}

void sub_1F38(uint64_t a1)
{
  v2 = sub_1EF4(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "We timed out waiting on the server", v3, 2u);
  }

  [*(a1 + 32) cancelAllOperations];
  dispatch_source_cancel(*(a1 + 40));
}

void sub_1FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = v4;
  if (!v3)
  {
    v7 = sub_1EF4(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_81AC();
    }

    goto LABEL_7;
  }

  v6 = sub_1EF4(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_8144();
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
  v12[2] = sub_2160;
  v12[3] = &unk_105E8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = v10;
  v14 = v11;
  [v8 saveVerifiedAccount:v9 withCompletionHandler:v12];

LABEL_11:
  dispatch_source_cancel(*(a1 + 48));
}

void sub_2160(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = sub_1EF4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8214();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2240(id a1)
{
  qword_14B28 = [[NSSet alloc] initWithArray:&off_10EA0];

  _objc_release_x1();
}

uint64_t sub_2AD0(uint64_t a1, int a2)
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

uint64_t sub_2AF4(uint64_t a1, int a2)
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

void sub_2CBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_1EF4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_84D8();
    }

    [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v10 = v9;
    if (v9)
    {
      v11 = sub_1EF4(v9);
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
        v19 = sub_1EF4(v15);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Password-less auth returned all the requested tokens!", &v21, 2u);
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v20 = sub_1EF4(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_8540();
        }

        [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
      }
    }
  }
}

void sub_31C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:a2 store:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v7 = sub_1EF4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8690();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_3500(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = sub_1EF4(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_86F8();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v9 = sub_1EF4(v8);
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

id sub_3908(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_3C28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3CCC;
  v6[3] = &unk_10768;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _beginPETBasedLoginWithAccount:v4 PET:a2 store:v5 completion:v6];
}

void sub_3CF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1EF4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_8840();
    }

    v6 = [*(a1 + 32) objectForKeyedSubscript:kACRenewCredentialsServicesKey];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) username];
    v9 = [*(a1 + 48) aa_altDSID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3E50;
    v10[3] = &unk_107B8;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    [v7 _convertPasswordToPETForAppleID:v8 altDSID:v9 password:v4 services:v6 completion:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_3E50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1EF4(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: Password from companion was successfully exchanged for PET. Logging in...", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_43B0(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (*(a1 + 56))
  {
    v10 = sub_1EF4(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_8930();
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
    v18 = sub_1EF4(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_896C();
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    v18 = sub_1EF4(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_8A5C();
    }

    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = isKindOfClass;
  v17 = sub_1EF4(isKindOfClass);
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_89F4();
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

void sub_4924(uint64_t a1, int a2, void *a3)
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
      v9 = sub_1EF4(v8);
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

      v14 = sub_1EF4(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_8A98();
      }
    }

LABEL_17:
    v13 = *(*(a1 + 72) + 16);
    goto LABEL_18;
  }

  v7 = sub_1EF4(401);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Auth was bad, re-authenticate...", buf, 2u);
  }

  [*(a1 + 32) _authenticateAccount:*(a1 + 40) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 72)];
LABEL_19:
}

void sub_4E90(uint64_t a1)
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
    v8 = sub_1EF4(v7);
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
    v18 = sub_1EF4(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_8B4C();
    }

    [v2 setServiceIdentifiers:*(a1 + 72)];
    v17 = [v2 setShouldUpdatePersistentServiceTokens:1];
  }

  v19 = sub_1EF4(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_8BC4();
  }

  v20 = v6 != 0;

  v21 = [*(a1 + 80) _authController];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_52B4;
  v25[3] = &unk_108A8;
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

void sub_52B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && (*(a1 + 96) & 1) != 0)
  {
    v8 = sub_1EF4(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8C00();
    }

    [*(a1 + 32) _aa_clearRawPassword];
    [*(a1 + 40) _authenticateAccount:*(a1 + 32) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 88)];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_5570;
    v24[3] = &unk_10858;
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
    v17[2] = sub_5710;
    v17[3] = &unk_10880;
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

void sub_5554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_5570(uint64_t a1, uint64_t a2, void *a3)
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
    v11 = sub_1EF4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8C68(a1, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = [*(a1 + 56) _userInfoForRenewCredentialsFollowUpWithAccountStore:*(a1 + 64) proxiedDevice:*(a1 + 72)];
    if (WeakRetained)
    {
      v19 = [AAFollowUpUtilities followUpPostAnalyticsInfoWithContext:*(a1 + 80) identifier:AAFollowUpIdentifierRenewCredentials error:*(a1 + 40)];
      [WeakRetained[3] setAnalyticsInfo:v19];

      [WeakRetained[3] postFollowUpWithIdentifier:AAFollowUpIdentifierRenewCredentials forAccount:*(a1 + 48) userInfo:v18 completion:0];
    }
  }

LABEL_15:
  (*(*(a1 + 88) + 16))();
}

id sub_5710(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: Continue authenticating...", v10, 2u);
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

void sub_5CC8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: loginDelegates succeeded!", &v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: loginDelegates failed with error: %@", &v8, 0xCu);
    }

    [*(a1 + 32) _aa_clearRawPassword];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_5F7C(uint64_t a1)
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

void sub_62DC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_1EF4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v15[0]) = a2;
    WORD2(v15[0]) = 2112;
    *(v15 + 6) = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: saving raw password result was %d. Error: %@", buf, 0x12u);
  }

  if (*(a1 + 32))
  {
    v8 = sub_1EF4(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15[0] = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin setting raw password for iCloud account %@", buf, 0xCu);
    }

    [*(a1 + 32) _aa_setRawPassword:*(a1 + 40)];
    v10 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_6488;
    v12[3] = &unk_10768;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v11 saveVerifiedAccount:v10 withCompletionHandler:v12];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_6488(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_1EF4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: saving raw password result was %d. Error: %@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_6784(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 status];
  v10 = [v9 integerValue];

  if (v7 || v10)
  {
    v17 = [v8 statusMessage];
    v18 = v17;
    if (v17)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = v17;
      v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.appleaccount" code:v10 userInfo:v19];

      v7 = v20;
    }

    v21 = [*(a1 + 32) credential];
    [v21 setPassword:0];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [v8 responseParameters];
    v13 = *(a1 + 48);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_69B8;
    v22[3] = &unk_10998;
    v23 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v24 = v14;
    v25 = v15;
    v26 = v8;
    v16 = *(a1 + 64);
    v27 = 0;
    v28 = v16;
    [v11 _processAuthenticationResponseParameters:v12 accountStore:v13 completion:v22];

    v7 = v23;
  }
}

void sub_69B8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectID];

  if (v3)
  {
    v4 = [*v2 dirtyProperties];
    v5 = [v4 count];

    if (v5)
    {
      v7 = sub_1EF4(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_8CD8(v2, v7);
      }
    }

    [*(a1 + 32) refresh];
    v8 = [ACDKeychainManager credentialForAccount:*(a1 + 32) clientID:0];
    [v8 setPassword:*(a1 + 40)];
    [*(a1 + 32) setCredential:v8];
  }

  v9 = +[AAIDSAuthenticationPlugin _doesRelyOnCompanionAccounts];
  if (v9 && ([*(a1 + 48) _parametersForIDSAlertFromLoginResponse:*(a1 + 56)], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [NSError errorWithDomain:@"com.apple.appleaccount" code:-6 userInfo:v9];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v12 = sub_1EF4(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Completed storing tokens", v13, 2u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

id sub_70D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"uri"];
  v5 = [v4 _stripFZIDPrefix];

  v6 = [v3 objectForKey:@"status"];
  v7 = [v6 intValue];

  v8 = [v3 objectForKey:@"is-user-visible"];

  if (v8 && ([v8 BOOLValue] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }

  if (v7 == 5051)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_7B94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1EF4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) identifier];
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "Setting account property (%@) for key (%@) on account with identifier (%@).", &v9, 0x20u);
  }

  [*(a1 + 32) setAccountProperty:v6 forKey:v5];
}

void sub_7CA0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  if (v5 && a2 && a3)
  {
    v6 = a2;
    v7 = IDSAccountKeyForServerKey();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v10 = sub_1EF4(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v5 identifier];
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v7;
        v16 = 2112;
        v17 = v11;
        _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Setting %@ for key %@ on account with identifier: %@", &v12, 0x20u);
      }

      [v5 setAccountProperty:v8 forKey:v7];
    }
  }
}

void sub_7DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1EF4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Saved account (%@) with object ID (%@) and error (%@).", &v9, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_7FC4(id a1)
{
  qword_14B38 = os_log_create("com.apple.appleaccount", "ids");

  _objc_release_x1();
}

void sub_8028(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_8074()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return sub_8098();
}

void sub_80C0()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8290(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 accountType];
  v6 = [v5 accountTypeDescription];
  sub_8008();
  v8 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Unable to get credential for %@ account! Error = %@", v7, 0x16u);
}

void sub_8344()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8380()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_83BC()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_83F8()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8468()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8540()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_857C()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_85B8()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8760()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8804()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8840()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_887C()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_88B8()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_88F4()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8930()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8A5C()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8A98()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8AD4()
{
  sub_8008();
  sub_8068();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_8BC4()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8C68(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 48);
  sub_8028(&dword_0, a2, a3, "Failed to renew credentials, posting renew follow up for account: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_8CD8(id *a1, NSObject *a2)
{
  v3 = *a1;
  v4 = [*a1 dirtyProperties];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "AAIDSAuthenticationPlugin about to refresh to pick up changes made by auth delegates, but the account already has the following dirty properties, which might spell t-r-o-u-b-l-e: %@ %@", &v5, 0x16u);
}

void sub_8D8C()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8E64()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8EA0()
{
  sub_8008();
  sub_8068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_8F18()
{
  sub_8008();
  sub_8068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

            v36 =                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            IDSAccountPropertiesFromAuthenticationDictionary();
            v87[0] = _NSConcreteStackBlock;
            v87[1] = 3221225472;
            v87[2] = sub_7B94;
            v87[3] = &unk_10A60;
            v87[4] = v27;
            [v36 enumerateKeysAndObjectsUsingBlock:v87];
            v37 = [NSNumber alloc];
            v38 = +[NSDate now];
            [v38 timeIntervalSince1970];
            v39 = [v37 initWithDouble:?];

            [v27 setAccountProperty:v39 forKey:v71];
            sub_7CA0(v27, v11, v70);
            sub_7CA0(v27, v11, v69);
            sub_7CA0(v27, v11, v68);
            v40 = [v74 objectForKey:v67];
            if (v40)
            {
              v41 = [v34 credentialForAccount:v27];
              if (!v41)
              {
                v41 = objc_alloc_init(ACAccountCredential);
              }

              [v41 setToken:v40];
              [v27 setCredential:v41];
              [v27 setAuthenticated:1];
              +[NSDate timeIntervalSinceReferenceDate];
              v43 = v42;
              v44 = [NSNumber numberWithDouble:?];
              [v27 setAccountProperty:v44 forKey:v65];

              v46 = sub_1EF4(v45);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v48 = [v27 identifier];
                *buf = 138413059;
                v94 = v41;
                v95 = 2112;
                v96 = v48;
                v97 = 2048;
                v98 = v43;
                v99 = 2117;
                v100 = v40;
                _os_log_debug_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "Setting credential (%@) on account with identifier (%@). [receiptTime: %f, token: %{sensitive}@]", buf, 0x2Au);
              }

              v11 = v66;
            }

            else
            {
              v47 = sub_1EF4(0);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v94 = v62;
                _os_log_error_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "No auth token for service type (%@).", buf, 0xCu);
              }

              [v27 setAuthenticated:0];
            }

            v10 = v34;
            v15 = v73;
            v32 = v78;
          }
        }

        v77 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v77);
    }

    v49 = dispatch_group_create();
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v50 = v72;
    v51 = [v50 countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v84;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v84 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v83 + 1) + 8 * j);
          dispatch_group_enter(v49);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_7DE8;
          v81[3] = &unk_10A88;
          v81[4] = v55;
          v82 = v49;
          [v10 saveAccount:v55 pid:0 verify:0 dataclassActions:0 completion:v81];
        }

        v52 = [v50 countByEnumeratingWithState:&v83 objects:v92 count:16];
      }

      while (v52);
    }

    v56 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7ED0;
    block[3] = &unk_10A38;
    v12 = v61;
    v80 = v61;
    dispatch_group_notify(v49, v56, block);

    v9 = v62;
    v11 = v66;
    v15 = v73;
    v16 = v60;
  }

  else
  {
    v57 = sub_1EF4(0);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_8F90();
    }

    v12[2](v12);
  }
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(AKAppleIDAuthenticationController);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

@end