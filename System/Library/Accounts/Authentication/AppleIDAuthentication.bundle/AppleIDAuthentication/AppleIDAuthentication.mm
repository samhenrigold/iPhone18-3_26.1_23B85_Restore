void sub_29C7FF808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C7FF828(uint64_t a1)
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C7FE000, v2, OS_LOG_TYPE_DEFAULT, "We timed out waiting on the server", v3, 2u);
  }

  [*(a1 + 32) cancelAllOperations];
  dispatch_source_cancel(*(a1 + 40));
}

void sub_29C7FF8A4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [v3 error];
  if (!v3)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      v7 = "Something went wrong and we couldn't contact the server. %@";
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_12;
  }

  v5 = _AALogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v16 = v4;
      v7 = "Got an error, may still be in Grey Mode. %@";
LABEL_7:
      _os_log_impl(&dword_29C7FE000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v5, OS_LOG_TYPE_DEFAULT, "Server auth was successful, not in Grey Mode anymore", buf, 2u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  [*(a1 + 32) aa_updateWithProvisioningResponse:v3];
  [*(a1 + 32) aa_setNeedsToVerifyTerms:0];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C7FFAAC;
  v12[3] = &unk_29F3255E0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = v10;
  v14 = v11;
  [v8 saveVerifiedAccount:v9 withCompletionHandler:v12];

LABEL_12:
  dispatch_source_cancel(*(a1 + 48));
}

void sub_29C7FFAAC(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "Failed to save account after marking it as not in grey mode anymore. %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_29C800428(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_29C7FE000, v5, OS_LOG_TYPE_DEFAULT, "Account save failed: %@", &v6, 0xCu);
    }
  }
}

uint64_t sub_29C800584()
{
  qword_2A1A109A0 = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A23C89B8];

  return MEMORY[0x2A1C71028]();
}

void sub_29C801148(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a2;
  Nanoseconds = _AASignpostGetNanoseconds();
  v8 = _AASignpostLogSystem();
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = _AAErrorUnderlyingError();
    v17 = 67240192;
    LODWORD(v18) = [v11 code];
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v9, OS_SIGNPOST_INTERVAL_END, v10, "DiscoverProperties", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[5];
    v15 = _AAErrorUnderlyingError();
    v16 = [v15 code];
    v17 = 134218496;
    v18 = v14;
    v19 = 2048;
    v20 = v13;
    v21 = 1026;
    v22 = v16;
    _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DiscoverProperties  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
}

void sub_29C80131C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AALogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_29C80A13C();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_29C80A0D4();
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDB8408]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_29C80A170();
    }

    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = sub_29C8014A4;
    v13[3] = &unk_29F325698;
    v16 = *(a1 + 56);
    v14 = *(a1 + 40);
    v15 = v5;
    [v11 saveVerifiedAccount:v12 withCompletionHandler:v13];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_29C8014A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AALogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_29C80A20C();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_29C80A1A4();
  }

  (*(*(a1 + 48) + 16))();
}

void sub_29C801C74(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a2;
  Nanoseconds = _AASignpostGetNanoseconds();
  v8 = _AASignpostLogSystem();
  v9 = v8;
  v10 = a1[5];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = _AAErrorUnderlyingError();
    v17 = 67240192;
    LODWORD(v18) = [v11 code];
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v9, OS_SIGNPOST_INTERVAL_END, v10, "VerifyCredentials", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 8u);
  }

  v12 = _AASignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[5];
    v15 = _AAErrorUnderlyingError();
    v16 = [v15 code];
    v17 = 134218496;
    v18 = v14;
    v19 = 2048;
    v20 = v13;
    v21 = 1026;
    v22 = v16;
    _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: VerifyCredentials  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v17, 0x1Cu);
  }

  (*(a1[4] + 16))();
}

uint64_t sub_29C801E48(uint64_t a1, int a2)
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

uint64_t sub_29C801E6C(uint64_t a1, int a2)
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

void sub_29C802084(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Oops, something went wrong with password-less auth! %@", &v15, 0xCu);
    }

    [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDBFB18]];
    if (v8)
    {
      v9 = _AALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) username];
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, "Password-less auth succeeded! Time for login with Apple ID %@...", &v15, 0xCu);
      }

      [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:v8 store:*(a1 + 48) completion:*(a1 + 64)];
    }

    else
    {
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDBFB10]];
      v12 = [v11 allKeys];

      if ([*(a1 + 56) count] && objc_msgSend(v12, "count") && objc_msgSend(*(a1 + 56), "aaf_isSubsetOfArray:", v12))
      {
        v13 = _AALogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "Password-less auth returned all the requested tokens!", &v15, 2u);
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v14 = _AALogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_29C7FE000, v14, OS_LOG_TYPE_DEFAULT, "Password-less auth appeared to succeed, but auth results do not have a value for AKAuthenticationPasswordKey or AKAuthenticationIDMSTokenKey!", &v15, 2u);
        }

        [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
      }
    }
  }
}

void sub_29C802600(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:a2 store:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "Both password-less and password auth have failed. Login has officially failed. Error: %@", &v7, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_29C802994(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (v5)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "Oops, something went wrong with password-based auth! %@", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [a2 objectForKeyedSubscript:*MEMORY[0x29EDBFB18]];
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_29C7FE000, v8, OS_LOG_TYPE_DEFAULT, "Password-based auth succeeded! Time for login with Apple ID %@...", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_29C803050(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = a3;
  Nanoseconds = _AASignpostGetNanoseconds();
  v10 = _AASignpostLogSystem();
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v18 = 67240448;
    *v19 = a2;
    *&v19[4] = 1026;
    *&v19[6] = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v11, OS_SIGNPOST_INTERVAL_END, v12, "LoginAndUpdateAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0xEu);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = *(a1 + 64);
    v16 = [v7 code];
    v18 = 134218752;
    *v19 = v15;
    *&v19[8] = 2048;
    v20 = v14;
    v21 = 1026;
    v22 = a2;
    v23 = 1026;
    v24 = v16;
    _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LoginAndUpdateAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v18, 0x22u);
  }

  v17 = [v8 convertToLoginDelegatesResponse];

  [*(a1 + 32) _handleDelegatesResponseForAccount:*(a1 + 40) store:*(a1 + 48) response:v17 error:v7 handler:*(a1 + 56)];
}

void sub_29C80322C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = a4;
  Nanoseconds = _AASignpostGetNanoseconds();
  v8 = _AASignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v16 = 67240448;
    *v17 = a2;
    *&v17[4] = 1026;
    *&v17[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SignInRegisterAccount", " Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v16, 0xEu);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 64);
    v14 = [v6 code];
    v16 = 134218752;
    *v17 = v13;
    *&v17[8] = 2048;
    v18 = v12;
    v19 = 1026;
    v20 = a2;
    v21 = 1026;
    v22 = v14;
    _os_log_impl(&dword_29C7FE000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignInRegisterAccount  Authenticated=%{public,signpost.telemetry:number1,name=Authenticated}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v16, 0x22u);
  }

  v15 = _AALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_29C7FE000, v15, OS_LOG_TYPE_DEFAULT, "Login succeeded! Fetching tokens...", &v16, 2u);
  }

  [*(a1 + 32) _fetchTokenForAccount:*(a1 + 40) accountStore:*(a1 + 48) withHandler:*(a1 + 56)];
}

void sub_29C803878(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = a3;
  Nanoseconds = _AASignpostGetNanoseconds();
  v7 = _AASignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 72);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = _AAErrorUnderlyingError();
    v16 = 67240192;
    LODWORD(v17) = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v8, OS_SIGNPOST_INTERVAL_END, v9, "RenewCredentials", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v16, 8u);
  }

  v11 = _AASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 72);
    v14 = _AAErrorUnderlyingError();
    v15 = [v14 code];
    v16 = 134218496;
    v17 = v13;
    v18 = 2048;
    v19 = v12;
    v20 = 1026;
    v21 = v15;
    _os_log_impl(&dword_29C7FE000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RenewCredentials  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v16, 0x1Cu);
  }

  if (a2 == 2)
  {
    [*(a1 + 32) _handleRenewFailure:v5 forAccount:*(a1 + 40) accountStore:*(a1 + 48) options:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_29C803D4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C803DF0;
  v6[3] = &unk_29F325800;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _beginPETBasedLoginWithAccount:v4 PET:a2 store:v5 completion:v6];
}

void sub_29C803E14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v4, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: Exchanging raw password from companion for PET...", buf, 2u);
    }

    v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDB8448]];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) username];
    v8 = [*(a1 + 48) aa_altDSID];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = sub_29C803F90;
    v9[3] = &unk_29F325850;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    [v6 _convertPasswordToPETForAppleID:v7 altDSID:v8 password:v3 services:v5 completion:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_29C803F90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_29C7FE000, v4, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: Password from companion was successfully exchanged for PET. Logging in...", v5, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_29C804544(uint64_t a1, char a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  if (*(a1 + 56))
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, "Dismissing renew-credentials prompt.", &v21, 2u);
    }

    CFUserNotificationCancel(*(a1 + 56));
    CFRelease(*(a1 + 56));
  }

  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  v11 = *(*(a1 + 32) + 8);
  v12 = [*(a1 + 40) identifier];
  [v11 removeObject:v12];

  if ((a2 & 1) == 0)
  {
    v16 = _AALogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v17 = *(a1 + 40);
    v21 = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v8;
    v18 = "Failed to obtain a password from ACRemoteDeviceProxy for account %@! Error: %@";
    v19 = v16;
    v20 = 22;
LABEL_17:
    _os_log_impl(&dword_29C7FE000, v19, OS_LOG_TYPE_DEFAULT, v18, &v21, v20);
    goto LABEL_18;
  }

  if (!v7)
  {
    v16 = _AALogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v21) = 0;
    v18 = "ACRemoteDeviceProxy reports that renewCredentials succeeded, but no password is in the response!";
    v19 = v16;
    v20 = 2;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v7;
      v18 = "ACRemoteDeviceProxy reports that renewCredentials succeeded, but response is not a string! %@";
      v19 = v16;
      v20 = 12;
      goto LABEL_17;
    }

LABEL_18:

    (*(*(a1 + 48) + 16))();
    goto LABEL_19;
  }

  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "ACRemoteDeviceProxy successfully provided us with a password for %@", &v21, 0xCu);
  }

  v15 = v7;
  (*(*(a1 + 48) + 16))();

LABEL_19:
  objc_sync_exit(v10);
}

void sub_29C804C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C804CBC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5 && (a2 & 1) == 0)
  {
LABEL_3:
    v7 = *(*(a1 + 72) + 16);
LABEL_18:
    v7();
    goto LABEL_19;
  }

  if (!a2)
  {
LABEL_17:
    v7 = *(*(a1 + 72) + 16);
    goto LABEL_18;
  }

  if ([v5 code] != 401)
  {
    if ([v6 code] == 409 || objc_msgSend(v6, "code") == 403)
    {
      v9 = _AALogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, "Got a 409/403, the account really is in Grey Mode", v14, 2u);
      }

      v10 = [*(a1 + 32) _frontmostApplicationId];
      v11 = [v10 isEqualToString:@"com.apple.Preferences"];

      if (v11)
      {
        goto LABEL_3;
      }

      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "Failing due to out of date terms...", v13, 2u);
      }
    }

    goto LABEL_17;
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v8, OS_LOG_TYPE_DEFAULT, "Auth was bad, re-authenticate...", buf, 2u);
  }

  [*(a1 + 32) _authenticateAccount:*(a1 + 40) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 72)];
LABEL_19:
}

void sub_29C8053D0(uint64_t a1)
{
  v46[2] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc_init(MEMORY[0x29EDBFB48]);
  v3 = [*(a1 + 32) username];
  [v2 setUsername:v3];

  [v2 setIsUsernameEditable:0];
  [v2 setReason:*(a1 + 40)];
  v4 = [*(a1 + 32) aa_personID];
  [v2 setDSID:v4];

  v5 = [*(a1 + 32) aa_altDSID];
  [v2 setAltDSID:v5];

  [v2 setAnticipateEscrowAttempt:1];
  if ((*(a1 + 120) & 1) != 0 || ([*(a1 + 32) _aa_rawPassword], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v6 = 0;
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v8, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will try auth with cached password first...", buf, 2u);
    }

    v9 = [*(a1 + 32) _aa_rawPassword];
    [v2 _setPassword:v9];

    v6 = 1;
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
    goto LABEL_17;
  }

  if (*(a1 + 120) == 1)
  {
    v14 = v2;
    v15 = 2;
  }

  else
  {
    if (*(a1 + 121) != 1)
    {
      goto LABEL_17;
    }

    v14 = v2;
    v15 = 1;
  }

  [v14 setAuthenticationType:v15];
LABEL_17:
  v16 = *(a1 + 32);
  v45[0] = @"account";
  v45[1] = @"accountStore";
  v17 = *(a1 + 48);
  v46[0] = v16;
  v46[1] = v17;
  v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  [v2 setClientInfo:v18];

  v19 = *(a1 + 112);
  if (!v19)
  {
    if (*(a1 + 122) != 1)
    {
      goto LABEL_21;
    }

    v19 = 1;
  }

  [v2 setServiceType:v19];
LABEL_21:
  if (*(a1 + 72))
  {
    v20 = _AALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 72);
      *buf = 138412290;
      v44 = v21;
      _os_log_impl(&dword_29C7FE000, v20, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will request GS service tokens for %@.", buf, 0xCu);
    }

    [v2 setServiceIdentifiers:*(a1 + 72)];
    if (*(a1 + 72))
    {
      goto LABEL_26;
    }
  }

  v22 = [*(a1 + 32) accountType];
  v23 = [v22 identifier];
  v24 = [v23 isEqual:*MEMORY[0x29EDB81C8]];

  if (v24)
  {
LABEL_26:
    v25 = _AALogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v25, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will persist GS service tokens resulting from auth.", buf, 2u);
    }

    [v2 setShouldUpdatePersistentServiceTokens:1];
  }

  v26 = _AALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v26, OS_LOG_TYPE_DEFAULT, "Calling out to AKAppleIDAuthenticationController...", buf, 2u);
  }

  v27 = [*(a1 + 80) _authController];
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 3221225472;
  v32[2] = sub_29C8058D0;
  v32[3] = &unk_29F325990;
  v40 = v6;
  v28 = *(a1 + 32);
  v29 = *(a1 + 80);
  v33 = v28;
  v34 = v29;
  v35 = *(a1 + 48);
  v36 = *(a1 + 88);
  v37 = *(a1 + 96);
  v30 = *(a1 + 104);
  v41 = *(a1 + 120);
  v38 = v2;
  v39 = v30;
  v42 = *(a1 + 123);
  v31 = v2;
  [v27 authenticateWithContext:v31 completion:v32];
}

void sub_29C8058D0(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (v6 && (*(a1 + 88) & 1) != 0)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: auth with cached password failed %@. Clearing and retrying...", buf, 0xCu);
    }

    [*(a1 + 32) _aa_clearRawPassword];
    [*(a1 + 40) _authenticateAccount:*(a1 + 32) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 80)];
  }

  else
  {
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = sub_29C805C4C;
    v28[3] = &unk_29F3258F0;
    v33 = *(a1 + 89);
    v29 = *(a1 + 56);
    v34 = *(a1 + 90);
    v8 = v6;
    v30 = v8;
    *&v9 = *(a1 + 32);
    *(&v9 + 1) = *(a1 + 40);
    v19 = v9;
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v31 = v19;
    v32 = v12;
    v13 = MEMORY[0x29ED447A0](v28);
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = sub_29C805E2C;
    v22[3] = &unk_29F325940;
    v22[4] = *(a1 + 40);
    v23 = *(a1 + 72);
    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    v27 = *(a1 + 91);
    v14 = v13;
    v26 = v14;
    v15 = MEMORY[0x29ED447A0](v22);
    if (v6 && [v8 aa_isXPCError])
    {
      v16 = _AALogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: auth failure with connection error, retrying  ", buf, 2u);
      }

      v17 = [*(a1 + 40) _authController];
      v18 = *(a1 + 72);
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 3221225472;
      v20[2] = sub_29C806040;
      v20[3] = &unk_29F325968;
      v21 = v15;
      [v17 authenticateWithContext:v18 completion:v20];
    }

    else
    {
      (v15)[2](v15, v5, v8);
    }
  }
}

void sub_29C805C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = *(a1 + 80);
  if (!v7)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDB8458]];
    if (([v3 BOOLValue] & 1) == 0 && !*(a1 + 81))
    {
      v9 = 1;
      goto LABEL_5;
    }
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"AARenewShouldPostFollowUp"];
  v9 = [v8 BOOLValue];

  if ((v7 & 1) == 0)
  {
LABEL_5:
  }

  if ([*(a1 + 40) ak_isUnableToPromptError] & 1) != 0 || (objc_msgSend(*(a1 + 40), "ak_isUserCancelError"))
  {
    v10 = 1;
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
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_29C7FE000, v11, OS_LOG_TYPE_DEFAULT, "Failed to renew credentials, posting renew follow up for account: %@", &v15, 0xCu);
    }

    v13 = MEMORY[0x29EDBE2D8];
    v14 = [MEMORY[0x29EDBE348] followUpPostAnalyticsInfoWithContext:*(a1 + 64) identifier:*MEMORY[0x29EDBE2D8] error:*(a1 + 40)];
    [*(*(a1 + 56) + 24) setAnalyticsInfo:v14];

    [*(*(a1 + 56) + 24) postFollowUpWithIdentifier:*v13 forAccount:*(a1 + 48) userInfo:0 completion:0];
  }

LABEL_15:
  (*(*(a1 + 72) + 16))();
}

void sub_29C805E2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = sub_29C805F7C;
  v17[3] = &unk_29F325918;
  v17[4] = v8;
  v18 = v5;
  v19 = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v22 = *(a1 + 72);
  v11 = *(a1 + 40);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v20 = v14;
  v21 = v13;
  v15 = v6;
  v16 = v5;
  [v8 _validateAuthenticationResults:v16 error:v15 forContext:v7 completion:v17];
}

uint64_t sub_29C805F7C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v3, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: Continue authenticating...", buf, 2u);
    }

    return [*(a1 + 32) _handleAuthenticationResults:*(a1 + 40) error:*(a1 + 48) forAccount:*(a1 + 56) inStore:*(a1 + 64) resetAuthenticatedOnAlertFailure:*(a1 + 88) context:*(a1 + 72) completion:*(a1 + 80)];
  }

  else
  {
    v5 = MEMORY[0x29EDBE318];
    v6 = *(a1 + 88);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 80);

    return [v5 handleAuthenticationError:v7 resetAuthenticatedOnAlertFailure:v6 forAccount:v8 inStore:v9 completion:v10];
  }
}

void sub_29C806408(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: loginDelegates succeeded!", &v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: loginDelegates failed with error: %@", &v8, 0xCu);
    }

    [*(a1 + 32) _aa_clearRawPassword];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_29C806764(uint64_t a1)
{
  if ([*(a1 + 32) _isProxiedAuthenticationWithContext:*(a1 + 40)])
  {
    v2 = _AALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v2, OS_LOG_TYPE_DEFAULT, "Proxied authentication detected, skipping iPhone-based aa_loginAndUpdateiCloudAccount", buf, 2u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v3 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x29EDBFB18]];
    v4 = [*(a1 + 56) credential];

    if (v4)
    {
      v5 = [*(a1 + 56) credential];
      [v5 setPassword:v3];
    }

    else
    {
      v5 = [MEMORY[0x29EDB83C0] credentialWithPassword:v3];
      [*(a1 + 56) setCredential:v5];
    }

    v6 = [*(a1 + 56) accountType];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*MEMORY[0x29EDB81C8]];

    if (v8)
    {
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 3221225472;
      v17[2] = sub_29C806A00;
      v17[3] = &unk_29F325A30;
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v9 = MEMORY[0x29ED447A0](v17);
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = sub_29C806C88;
      v13[3] = &unk_29F325A80;
      v14 = v10;
      v15 = *(a1 + 56);
      v16 = v9;
      v12 = v9;
      [v14 aa_loginAndUpdateiCloudAccount:v11 withCompletion:v13];
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_29C806A00(uint64_t a1, int a2, void *a3)
{
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDBE3F8]];
  v7 = [v6 isEqualToString:*MEMORY[0x29EDBE400]];

  if (v7)
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v8, OS_LOG_TYPE_DEFAULT, "Looks like we need to verify terms", buf, 2u);
    }

    [*(a1 + 32) aa_setNeedsToVerifyTerms:1];
    goto LABEL_6;
  }

  if (a2)
  {
LABEL_6:
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = sub_29C806B84;
    v12[3] = &unk_29F325800;
    v13 = *(a1 + 48);
    [v9 saveVerifiedAccount:v10 withCompletionHandler:v12];

    return;
  }

  v11 = *(*(a1 + 48) + 16);

  v11();
}

void sub_29C806B84(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      v8 = "Account save success";
      v9 = v6;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = v5;
    v8 = "Account was unable to save with error: %@";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
}

void sub_29C806C88(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && (([v7 aa_isAARecoverableError] & 1) != 0 || objc_msgSend(v8, "aa_isXPCError")))
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C7FE000, v9, OS_LOG_TYPE_DEFAULT, "iCloud login in failed with a recoverable error, retrying once...", buf, 2u);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = sub_29C806DC8;
    v12[3] = &unk_29F325A58;
    v13 = *(a1 + 48);
    [v10 aa_loginAndUpdateiCloudAccount:v11 withCompletion:v12];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_29C8070B8(uint64_t a1, int a2, void *a3)
{
  *&v14[5] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14[0] = a2;
    LOWORD(v14[1]) = 2112;
    *(&v14[1] + 2) = v5;
    _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: saving raw password result was %d. Error: %@", buf, 0x12u);
  }

  if (*(a1 + 32))
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      *v14 = v8;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin setting raw password for iCloud account %@", buf, 0xCu);
    }

    [*(a1 + 32) _aa_setRawPassword:*(a1 + 40)];
    v9 = *(a1 + 32);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = sub_29C807264;
    v11[3] = &unk_29F325800;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    [v10 saveVerifiedAccount:v9 withCompletionHandler:v11];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_29C807264(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_29C7FE000, v6, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: saving raw password result was %d. Error: %@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_29C807AC4(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = _AALogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C7FE000, v1, OS_LOG_TYPE_DEFAULT, "building singleton array of auth delegate plugin principal classes", buf, 2u);
  }

  v2 = [MEMORY[0x29EDBE000] pluginBundlesAtSubpath:@"/Authentication/AppleIDAuthenticationDelegates/"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 principalClass];
        if (v9)
        {
          if (qword_2A1A109A8)
          {
            [qword_2A1A109A8 arrayByAddingObject:v9];
          }

          else
          {
            [MEMORY[0x29EDB8D80] arrayWithObject:v9];
          }
          v10 = ;
          v11 = qword_2A1A109A8;
          qword_2A1A109A8 = v10;
        }

        else
        {
          v11 = _AALogSystem();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            *buf = v12;
            v18 = v8;
            _os_log_fault_impl(&dword_29C7FE000, v11, OS_LOG_TYPE_FAULT, "Failed to load principal class for %@", buf, 0xCu);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }
}

void sub_29C807CB4(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = objc_opt_class();
    v3 = v18;
    _os_log_impl(&dword_29C7FE000, v2, OS_LOG_TYPE_DEFAULT, "finished with delegate %@", &v17, 0xCu);
  }

  Nanoseconds = _AASignpostGetNanoseconds();
  v5 = _AASignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 64);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"status"];
    v9 = [v8 intValue];
    v17 = 67240192;
    LODWORD(v18) = v9;
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v6, OS_SIGNPOST_INTERVAL_END, v7, "InvokeDelegateWithAuthResponse", " error=%{public,signpost.telemetry:number2,name=error}d ", &v17, 8u);
  }

  v10 = _AASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 40) objectForKeyedSubscript:@"status"];
    v13 = [v12 intValue];
    v17 = 134218496;
    v18 = v11;
    v19 = 2048;
    v20 = Nanoseconds / 1000000000.0;
    v21 = 1026;
    v22 = v13;
    _os_log_impl(&dword_29C7FE000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: InvokeDelegateWithAuthResponse  error=%{public,signpost.telemetry:number2,name=error}d ", &v17, 0x1Cu);
  }

  v14 = *(a1 + 48);
  objc_sync_enter(v14);
  [*(a1 + 48) removeObject:objc_opt_class()];
  v15 = [*(a1 + 48) count];
  objc_sync_exit(v14);

  if (!v15)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_29C7FE000, v16, OS_LOG_TYPE_DEFAULT, "_invokeDelegatesWithAuthenticationResponse completing – last delegate finished", &v17, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_29C808168(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  v7 = [v5 httpResponse];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 data];
    if (v9)
    {
      v10 = v9;
      v11 = [v5 mediaType];

      if (v11)
      {
        v12 = _AALogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v5;
          _os_log_impl(&dword_29C7FE000, v12, OS_LOG_TYPE_DEFAULT, "Fetched cached response (%@) and attempting to use for delegates", buf, 0xCu);
        }

        v13 = objc_alloc(MEMORY[0x29EDBE360]);
        v14 = [v5 httpResponse];
        v15 = [v5 data];
        v16 = [v5 mediaType];
        v17 = [v13 initWithHTTPResponse:v14 data:v15 mediaType:v16];

        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
        v20 = *(a1 + 48);
        v24[0] = MEMORY[0x29EDCA5F8];
        v24[1] = 3221225472;
        v24[2] = sub_29C8083E8;
        v24[3] = &unk_29F325B48;
        v25 = v18;
        v29 = *(a1 + 56);
        v21 = v6;
        v22 = *(a1 + 32);
        v26 = v21;
        v27 = v22;
        v28 = *(a1 + 48);
        [v19 _handleDelegatesResponseForAccount:v25 store:v20 response:v17 error:0 handler:v24];

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v23 = _AALogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_29C80A3F0();
  }

  [*(a1 + 32) _performLoginDelegatesRequestForAccount:*(a1 + 40) store:*(a1 + 48) handler:*(a1 + 56)];
LABEL_11:
}

void sub_29C8083E8(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = _AALogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_29C7FE000, v7, OS_LOG_TYPE_DEFAULT, "Successfully used cached login response for account (%@) to authenticate", &v9, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29C80A458(a1, v5, v7);
    }

    [*(a1 + 48) _fetchTokenForAccount:*(a1 + 32) accountStore:*(a1 + 56) forceFetch:1 withHandler:*(a1 + 64)];
  }
}

void sub_29C808884(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = a3;
  Nanoseconds = _AASignpostGetNanoseconds();
  v9 = _AASignpostLogSystem();
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError();
    v18 = 67240192;
    LODWORD(v19) = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_29C7FE000, v10, OS_SIGNPOST_INTERVAL_END, v11, "LoginDelegates", " error=%{public,signpost.telemetry:number2,name=error}d ", &v18, 8u);
  }

  v13 = _AASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = Nanoseconds / 1000000000.0;
    v15 = *(a1 + 64);
    v16 = _AAErrorUnderlyingError();
    v17 = [v16 code];
    v18 = 134218496;
    v19 = v15;
    v20 = 2048;
    v21 = v14;
    v22 = 1026;
    v23 = v17;
    _os_log_impl(&dword_29C7FE000, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LoginDelegates  error=%{public,signpost.telemetry:number2,name=error}d ", &v18, 0x1Cu);
  }

  [*(a1 + 32) _handleDelegatesResponseForAccount:*(a1 + 40) store:*(a1 + 48) response:v7 error:v6 handler:*(a1 + 56)];
}

void sub_29C808CBC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectID];

  if (v3)
  {
    v4 = [*v2 dirtyProperties];
    v5 = [v4 count];

    if (v5)
    {
      v6 = _AALogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_29C80A4E4(v2, v6);
      }
    }

    [*(a1 + 32) refresh];
    v7 = [MEMORY[0x29EDBDFF8] credentialForAccount:*(a1 + 32) clientID:0];
    [v7 setPassword:*(a1 + 40)];
    [*(a1 + 32) setCredential:v7];
  }

  if (+[AppleIDAuthenticationUtil doesRelyOnCompanionAccounts](AppleIDAuthenticationUtil, "doesRelyOnCompanionAccounts") && ([*(a1 + 48) _parametersForIDSAlertFromLoginResponse:*(a1 + 56)], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"com.apple.appleaccount" code:-6 userInfo:v8];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_29C7FE000, v11, OS_LOG_TYPE_DEFAULT, "Completed storing tokens", v12, 2u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void *sub_29C8091B0(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A1A10990)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = sub_29C8092D8;
    v4[4] = &unk_29F325C20;
    v4[5] = v4;
    v5 = xmmword_29F325C08;
    v6 = 0;
    qword_2A1A10990 = _sl_dlopen();
  }

  v2 = qword_2A1A10990;
  if (!qword_2A1A10990)
  {
    sub_29C80A598(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "BYSetupAssistantIsRunningSilentTokenUpgrade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1A10988 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_29C8092D8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A1A10990 = result;
  return result;
}

void sub_29C80934C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_29C809368(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_29C809BEC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:@"date-last-modified"];
  v6 = [v4 objectForKey:@"date-last-modified"];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_29C80A04C()
{
  v2 = *MEMORY[0x29EDCA608];
  sub_29C809390();
  _os_log_debug_impl(&dword_29C7FE000, v0, OS_LOG_TYPE_DEBUG, "Checking if client (%@) is entitled.", v1, 0xCu);
}

void sub_29C80A31C()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_BYSetupAssistantIsRunningSilentTokenUpgrade(void)"];
  [v0 handleFailureInFunction:v1 file:@"AppleIDAuthenticationPlugin.m" lineNumber:73 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_29C80A458(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_29C7FE000, log, OS_LOG_TYPE_ERROR, "Failed to use cached login response for account (%@) with error: %@", &v4, 0x16u);
}

void sub_29C80A4E4(id *a1, NSObject *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = [*a1 dirtyProperties];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_29C7FE000, a2, OS_LOG_TYPE_DEBUG, "AppleIDAuthenticationPlugin about to refresh to pick up changes made by auth delegates, but the account already has the following dirty properties, which might spell t-r-o-u-b-l-e: %@ %@", &v5, 0x16u);
}

void sub_29C80A598(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AppleIDAuthenticationPlugin.m" lineNumber:72 description:{@"%s", *a1}];

  __break(1u);
  CFDictionaryAddValue(v4, v5, v6);
}