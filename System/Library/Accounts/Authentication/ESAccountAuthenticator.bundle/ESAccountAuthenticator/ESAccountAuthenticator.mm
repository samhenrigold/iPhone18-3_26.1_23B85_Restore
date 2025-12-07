uint64_t sub_29C821348(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x29EDBA108]) initWithTarget:*(a1 + 32) selector:sel_parkBackgroundThread_ object:0];
  v2 = qword_2A1794BF8;
  qword_2A1794BF8 = v1;

  v3 = qword_2A1794BF8;

  return MEMORY[0x2A1C70FE8](v3, sel_start);
}

void sub_29C821E34(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x29EDC0F38] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_29C820000, v2, v3, "Delaying release of account %@ by terrible means", &v5, 0xCu);
  }
}

void sub_29C822314(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (a2 != 1)
  {
    v6 = [v3 isAuthenticated];
    v59[0] = MEMORY[0x29EDCA5F8];
    v59[1] = 3221225472;
    v59[2] = sub_29C822A00;
    v59[3] = &unk_29F3273C0;
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = *(a1 + 48);
    v47 = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v60 = v47;
    v61 = v10;
    v63 = v6;
    v62 = *(a1 + 64);
    v11 = MEMORY[0x29ED451F0](v59);
    if (a2 == 2)
    {
      if ((*(a1 + 72) & 1) == 0)
      {
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x29EDC0F38] + 3);
        if (!os_log_type_enabled(v12, v13))
        {
LABEL_24:

          (*(*(a1 + 64) + 16))();
          goto LABEL_25;
        }

        v14 = *(a1 + 32);
        *buf = 138412290;
        v65 = v14;
        v15 = "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@ Networking Error";
LABEL_23:
        _os_log_impl(&dword_29C820000, v12, v13, v15, buf, 0xCu);
        goto LABEL_24;
      }
    }

    else if ((*(a1 + 72) & 1) == 0)
    {
      if (![*(a1 + 32) isAuthenticated])
      {
        if ((*(a1 + 73) & 1) == 0)
        {
          v32 = *MEMORY[0x29EDC10D8];
          v33 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC10D8]];
          v34 = [*(a1 + 48) _currentDateString];
          v35 = DALoggingwithCategory();
          v36 = MEMORY[0x29EDC0F38];
          v37 = *(MEMORY[0x29EDC0F38] + 7);
          if (os_log_type_enabled(v35, v37))
          {
            v38 = *(a1 + 32);
            *buf = 138412802;
            v65 = v38;
            v66 = 2112;
            v67 = v33;
            v68 = 2112;
            v69 = v34;
            _os_log_impl(&dword_29C820000, v35, v37, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Last prompt date %@. Current date %@", buf, 0x20u);
          }

          if (v33 && [v34 isEqualToString:v33])
          {
            v39 = DALoggingwithCategory();
            v40 = *(v36 + 3);
            if (os_log_type_enabled(v39, v40))
            {
              v41 = *(a1 + 32);
              *buf = 138412290;
              v65 = v41;
              _os_log_impl(&dword_29C820000, v39, v40, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Not presenting an Auth prompt.", buf, 0xCu);
            }

            (*(*(a1 + 64) + 16))();
          }

          else
          {
            v42 = DALoggingwithCategory();
            v43 = *(v36 + 3);
            if (os_log_type_enabled(v42, v43))
            {
              v44 = *(a1 + 32);
              *buf = 138412290;
              v65 = v44;
              _os_log_impl(&dword_29C820000, v42, v43, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Presenting an Auth prompt.", buf, 0xCu);
            }

            [*(a1 + 32) setObject:v34 forKeyedSubscript:v32];
            v45 = *(a1 + 56);
            v46 = *(a1 + 32);
            v48[0] = MEMORY[0x29EDCA5F8];
            v48[1] = 3221225472;
            v48[2] = sub_29C822C00;
            v48[3] = &unk_29F327438;
            v49 = v11;
            [v45 saveAccount:v46 withHandler:v48];
          }

          goto LABEL_25;
        }

        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x29EDC0F38] + 3);
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_24;
        }

        v31 = *(a1 + 32);
        *buf = 138412290;
        v65 = v31;
        v15 = "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Reporting Credential failed error back.";
        goto LABEL_23;
      }

      v26 = DALoggingwithCategory();
      v27 = *(MEMORY[0x29EDC0F38] + 3);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(a1 + 32);
        *buf = 138412290;
        v65 = v28;
        _os_log_impl(&dword_29C820000, v26, v27, "Authenticator FAILED Trying To Refresh OAuth2 credentials for account %@. Marking Account as UnAuthenticated and Saving.", buf, 0xCu);
      }

      [*(a1 + 32) setAuthenticated:0];
      v29 = *(a1 + 56);
      v30 = *(a1 + 32);
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 3221225472;
      v50[2] = sub_29C822BD0;
      v50[3] = &unk_29F327410;
      v53 = *(a1 + 73);
      v51 = v11;
      v52 = *(a1 + 64);
      [v29 saveAccount:v30 withHandler:v50];

      v25 = v51;
LABEL_15:

LABEL_25:
      return;
    }

    if (![*(a1 + 32) migrationStatus])
    {
      [*(a1 + 32) setMigrationStatus:3];
    }

    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(a1 + 32);
      v19 = [v18 migrationStatusString];
      *buf = 138412802;
      v65 = v18;
      v66 = 2048;
      v67 = a2;
      v68 = 2112;
      v69 = v19;
      _os_log_impl(&dword_29C820000, v16, v17, "Authenticator FAILED to migrate the account %@, saving with status %lu, migration state: %@", buf, 0x20u);
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v54[0] = MEMORY[0x29EDCA5F8];
    v54[1] = 3221225472;
    v54[2] = sub_29C822AAC;
    v54[3] = &unk_29F3273E8;
    v22 = v21;
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v55 = v22;
    v56 = v23;
    v57 = v24;
    v58 = *(a1 + 64);
    [v20 saveAccount:v22 withHandler:v54];

    v25 = v55;
    goto LABEL_15;
  }

  [v3 setCredential:?];
  v4 = *(*(a1 + 64) + 16);

  v4();
}

void sub_29C822A00(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDB8440]];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) client];
  v5 = [v4 localizedAppName];
  [v2 _displayBadCredentialsAlertForAccount:v3 clientName:v5 reason:v6 accountStore:*(a1 + 56) resetAuthenticatedOnAlertFailure:*(a1 + 72) handler:*(a1 + 64)];
}

void sub_29C822AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x29EDC0F38] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = @"with";
    if (!v4)
    {
      v7 = @"without";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_29C820000, v5, v6, "Account saved %@ error: %@", &v8, 0x16u);
  }

  if ([*(a1 + 32) migrationStatus] == 1)
  {
    [*(a1 + 40) _displayMigrationPendingAlertForAccount:*(a1 + 32) accountStore:*(a1 + 48) handler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_29C822BD0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_29C8232A0(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC0EA0] openIDrequestURLFor:*(a1 + 32)];
  v3 = [v2 mutableCopy];

  [v3 _setNonAppInitiated:1];
  v4 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) identifier];
  [v5 _assignConnectionPropertiesToSessionConfiguration:v4 withAccountId:v6];

  v7 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v4];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C8233DC;
  v9[3] = &unk_29F327488;
  v10 = *(a1 + 56);
  v8 = [v7 dataTaskWithRequest:v3 completionHandler:v9];
  [v8 resume];
}

void sub_29C8233DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x29EDC0EA8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v21 = [[v7 alloc] initWithData:v10 urlResponse:v9 error:v8];

  v11 = [v21 error];
  if (v11)
  {
    goto LABEL_2;
  }

  v14 = [v21 tokenRequestURI];
  if (!v14)
  {
    goto LABEL_3;
  }

  v11 = v14;
  v15 = [v21 jwksURI];
  if (!v15)
  {
LABEL_2:

LABEL_3:
    v12 = *(a1 + 32);
    v13 = [v21 error];
    (*(v12 + 16))(v12, 0, 0, 0, v13);
    goto LABEL_4;
  }

  v16 = v15;
  v17 = [v21 issuer];

  if (!v17)
  {
    goto LABEL_3;
  }

  v18 = *(a1 + 32);
  v13 = [v21 tokenRequestURI];
  v19 = [v21 jwksURI];
  v20 = [v21 issuer];
  (*(v18 + 16))(v18, v13, v19, v20, 0);

LABEL_4:
}

void sub_29C823678(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x29EDBA058]);
  v3 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:*(a1 + 32)];
  v4 = [v2 initWithURL:v3];

  [v4 _setNonAppInitiated:1];
  v5 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) identifier];
  [v6 _assignConnectionPropertiesToSessionConfiguration:v5 withAccountId:v7];

  v8 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v5];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = sub_29C8237CC;
  v10[3] = &unk_29F327488;
  v11 = *(a1 + 56);
  v9 = [v8 dataTaskWithRequest:v4 completionHandler:v10];
  [v9 resume];
}

void sub_29C8238F8(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC0EB0] emptyBearerRequestForHost:*(a1 + 32)];
  v3 = [v2 mutableCopy];

  [v3 _setNonAppInitiated:1];
  v4 = [MEMORY[0x29EDBA138] ephemeralSessionConfiguration];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) identifier];
  [v5 _assignConnectionPropertiesToSessionConfiguration:v4 withAccountId:v6];

  v7 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v4];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C823A34;
  v9[3] = &unk_29F327488;
  v10 = *(a1 + 56);
  v8 = [v7 dataTaskWithRequest:v3 completionHandler:v9];
  [v8 resume];
}

void sub_29C823A34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x29EDC0EB8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v13 = [[v7 alloc] initWithData:v10 urlResponse:v9 error:v8];

  v11 = *(a1 + 32);
  v12 = [v13 authURI];
  (*(v11 + 16))(v11, v12, v8);
}

void sub_29C824464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C8244BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v93 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDC0E90];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = [v11 error];
  if (v12 || [v11 statusCode] != 200)
  {

    goto LABEL_8;
  }

  v13 = [v11 accessToken];
  if (!v13 || (v14 = v13, [v11 idToken], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
LABEL_8:
    if ([v11 statusCode] >= 400 && objc_msgSend(v11, "statusCode") <= 499)
    {
      if ([*(a1 + 32) migrationStatus])
      {
        v20 = *(MEMORY[0x29EDC0F38] + 4);
      }

      else
      {
        v35 = [v11 errorName];
        v36 = [v35 isEqualToString:@"invalid_grant"];

        v37 = DALoggingwithCategory();
        v20 = *(MEMORY[0x29EDC0F38] + 4);
        v38 = os_log_type_enabled(v37, v20);
        if (v36)
        {
          if (v38)
          {
            v39 = [v11 errorName];
            v40 = [v11 errorMessage];
            *buf = 138412546;
            v90 = v39;
            v91 = 2112;
            v92 = v40;
            _os_log_impl(&dword_29C820000, v37, v20, "Received an invalid_grant error. %@ %@", buf, 0x16u);
          }

          v41 = DALoggingwithCategory();
          if (os_log_type_enabled(v41, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_29C820000, v41, v20, "Switching migration status from 'Attempting' to 'Pending'", buf, 2u);
          }

          v42 = *(a1 + 32);
          v43 = 1;
        }

        else
        {
          if (v38)
          {
            v44 = [v11 errorName];
            v45 = [v11 errorMessage];
            *buf = 138412546;
            v90 = v44;
            v91 = 2112;
            v92 = v45;
            _os_log_impl(&dword_29C820000, v37, v20, "Received an error. %@ %@", buf, 0x16u);
          }

          v46 = DALoggingwithCategory();
          if (os_log_type_enabled(v46, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_29C820000, v46, v20, "Switching migration status from 'Attempting' to 'Failure'", buf, 2u);
          }

          v42 = *(a1 + 32);
          v43 = 3;
        }

        [v42 setMigrationStatus:v43];
      }

      [*(a1 + 48) setOauthRefreshToken:0];
      [*(a1 + 32) setCredential:*(a1 + 48)];
      v47 = DALoggingwithCategory();
      if (os_log_type_enabled(v47, v20))
      {
        *buf = 138412290;
        v90 = v7;
        _os_log_impl(&dword_29C820000, v47, v20, "Received an Error: refreshing OAuth Token failed with Error %@", buf, 0xCu);
      }

      v48 = *(a1 + 32);
      v80[0] = MEMORY[0x29EDCA5F8];
      v80[1] = 3221225472;
      v80[2] = sub_29C825980;
      v80[3] = &unk_29F327438;
      v49 = *(a1 + 56);
      v81 = *(a1 + 64);
      [v49 saveAccount:v48 withHandler:v80];
      v34 = v81;
LABEL_46:

      goto LABEL_47;
    }

    v21 = [v11 error];
    if (v21)
    {
    }

    else if ([v11 statusCode] != 200)
    {
      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x29EDC0F38] + 4);
      if (os_log_type_enabled(v29, v30))
      {
        *buf = 138412290;
        v90 = v7;
        _os_log_impl(&dword_29C820000, v29, v30, "Received a response.error nil and response.status != 200. refreshing OAuth Token failed with Error %@", buf, 0xCu);
      }

      if (![*(a1 + 32) migrationStatus])
      {
        v31 = DALoggingwithCategory();
        if (os_log_type_enabled(v31, v30))
        {
          *buf = 0;
          _os_log_impl(&dword_29C820000, v31, v30, "Switching migration status from 'Attempting' to 'Failure'", buf, 2u);
        }

        [*(a1 + 32) setMigrationStatus:3];
      }

      v32 = *(a1 + 32);
      v78[0] = MEMORY[0x29EDCA5F8];
      v78[1] = 3221225472;
      v78[2] = sub_29C825998;
      v78[3] = &unk_29F327438;
      v33 = *(a1 + 56);
      v79 = *(a1 + 64);
      [v33 saveAccount:v32 withHandler:v78];
      v34 = v79;
      goto LABEL_46;
    }

    v22 = *(a1 + 40);
    v23 = [v11 error];
    v24 = [v22 _isTransientNetworkError:v23];

    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x29EDC0F38] + 4);
    v27 = os_log_type_enabled(v25, v26);
    if (v24)
    {
      if (v27)
      {
        *buf = 138412290;
        v90 = v7;
        _os_log_impl(&dword_29C820000, v25, v26, "Received a Transient Network Error: refreshing OAuth Token failed with Error %@", buf, 0xCu);
      }

      v28 = *(*(a1 + 64) + 16);
      goto LABEL_23;
    }

    if (v27)
    {
      *buf = 138412546;
      v90 = v7;
      v91 = 2048;
      v92 = [v7 code];
      _os_log_impl(&dword_29C820000, v25, v26, "Received a unknown error %@ with code %ld. Failing Token refresh", buf, 0x16u);
    }

LABEL_22:
    v28 = *(*(a1 + 64) + 16);
LABEL_23:
    v28();
    goto LABEL_47;
  }

  v16 = [*(a1 + 32) accountType];
  v17 = [v16 identifier];
  v18 = [v17 isEqualToString:*MEMORY[0x29EDB8240]];

  if ((v18 & 1) == 0)
  {
    v50 = [*(a1 + 32) accountType];
    v51 = [v50 identifier];
    v52 = [v51 isEqualToString:*MEMORY[0x29EDB8210]];

    if (v52)
    {
      if (*(a1 + 80) == 1)
      {
        v53 = *MEMORY[0x29EDC10C8];
      }

      else
      {
        v58 = [*(a1 + 40) _accountOAuthVersion:*(a1 + 32)];
        v53 = *MEMORY[0x29EDC10C8];
        if (v58 != 1)
        {
          v59 = MEMORY[0x29EDC0E78];
          v60 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC10C8]];
          v61 = [v59 upgradeAuthorizationEndpoint:v60];
          [*(a1 + 32) setObject:v61 forKeyedSubscript:v53];

          [*(a1 + 32) setObject:@"2" forKeyedSubscript:*MEMORY[0x29EDC10D0]];
        }
      }

      v19 = [*(a1 + 32) objectForKeyedSubscript:v53];
      if (v19)
      {
        goto LABEL_57;
      }

      v55 = *(MEMORY[0x29EDC0F38] + 3);
    }

    else
    {
      v54 = DALoggingwithCategory();
      v55 = *(MEMORY[0x29EDC0F38] + 3);
      if (os_log_type_enabled(v54, v55))
      {
        v56 = [*(a1 + 32) accountType];
        v57 = [v56 identifier];
        *buf = 138412290;
        v90 = v57;
        _os_log_impl(&dword_29C820000, v54, v55, "Account type is neither Hotmail nor Exchange. Account type: %@", buf, 0xCu);
      }
    }

    v77 = DALoggingwithCategory();
    if (os_log_type_enabled(v77, v55))
    {
      *buf = 0;
      _os_log_impl(&dword_29C820000, v77, v55, "Cannot refresh token for account. oauthURI is nil.", buf, 2u);
    }

    goto LABEL_22;
  }

  v19 = @"https://login.microsoftonline.com/consumers/oauth2/v2.0/authorize/";
LABEL_57:
  if (*(a1 + 80))
  {
    v62 = DALoggingwithCategory();
    v63 = *(MEMORY[0x29EDC0F38] + 7);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(a1 + 32);
      *buf = 138412290;
      v90 = v64;
      _os_log_impl(&dword_29C820000, v62, v63, "Successfully refreshed the OAuth token for on prem OAuth account %@", buf, 0xCu);
    }

    v65 = [v11 refreshToken];
    if (!v65)
    {
      v66 = DALoggingwithCategory();
      if (os_log_type_enabled(v66, v63))
      {
        *buf = 0;
        _os_log_impl(&dword_29C820000, v66, v63, "Refresh OAuth token response does not contain a refresh token. Keeping the previous refresh token.", buf, 2u);
      }

      v65 = [*(a1 + 48) oauthRefreshToken];
    }

    v67 = objc_alloc(MEMORY[0x29EDB83C0]);
    v68 = [v11 accessToken];
    v69 = [v11 expiryDate];
    v70 = [v67 initWithOAuth2Token:v68 refreshToken:v65 expiryDate:v69];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v72 = *(a1 + 32);
    v71 = *(a1 + 40);
    v82[0] = MEMORY[0x29EDCA5F8];
    v82[1] = 3221225472;
    v82[2] = sub_29C824F4C;
    v82[3] = &unk_29F327500;
    v87 = *(a1 + 64);
    v83 = *(a1 + 32);
    v73 = v11;
    v74 = *(a1 + 40);
    v84 = v73;
    v85 = v74;
    v75 = *(a1 + 72);
    v86 = v19;
    v88 = v75;
    v76 = v19;
    [v71 _retrieveOpenIDMetadataForAccount:v72 fromURI:v76 withCompletion:v82];
  }

LABEL_47:
}

void sub_29C824F4C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v68 = *MEMORY[0x29EDCA608];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x29EDC0F38] + 3);
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_5:

      (*(*(a1 + 64) + 16))();
      goto LABEL_6;
    }

    v15 = *(a1 + 56);
    *buf = 138412546;
    v65 = v15;
    v66 = 2112;
    v67 = v12;
    v16 = "Couldn't retrieve OpenID metadata from URI: %@ Error: %@";
    v17 = v13;
    v18 = v14;
    v19 = 22;
LABEL_4:
    _os_log_impl(&dword_29C820000, v17, v18, v16, buf, v19);
    goto LABEL_5;
  }

  if (!v10)
  {
    v13 = DALoggingwithCategory();
    v39 = *(MEMORY[0x29EDC0F38] + 3);
    if (!os_log_type_enabled(v13, v39))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v16 = "Cannot refresh token for account. jwksURI is nil.";
    v17 = v13;
    v18 = v39;
    v19 = 2;
    goto LABEL_4;
  }

  v20 = sub_29C825510(*(a1 + 32));
  if (!v20)
  {
    v13 = DALoggingwithCategory();
    v45 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v13, v45))
    {
      v46 = *(a1 + 32);
      v52 = [v46 accountType];
      v47 = [v52 identifier];
      *buf = 138412546;
      v65 = v46;
      v66 = 2112;
      v67 = v47;
      _os_log_impl(&dword_29C820000, v13, v45, "Could not find account identifier %@ for account %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  v21 = [MEMORY[0x29EDC0E70] clientIDForOAuthType:v20];
  v22 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC1088]];
  v23 = objc_alloc(MEMORY[0x29EDC0E80]);
  v24 = [*(a1 + 40) idToken];
  v25 = [v23 initWithIdToken:v24];

  v51 = v22;
  if ([*(a1 + 48) _jwksDataCacheValidForAccount:*(a1 + 32)] && objc_msgSend(v25, "idTokenValidWithJWKS:withAudience:withIssuer:", v22, v21, v11))
  {
    v48 = v25;
    v49 = v21;
    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x29EDC0F38] + 7);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(a1 + 32);
      *buf = 138412290;
      v65 = v28;
      _os_log_impl(&dword_29C820000, v26, v27, "Successfully refreshed the OAuth token for Account %@", buf, 0xCu);
    }

    v29 = objc_alloc(MEMORY[0x29EDB83C0]);
    v30 = [*(a1 + 40) accessToken];
    v31 = [*(a1 + 40) refreshToken];
    v32 = [*(a1 + 40) expiryDate];
    v33 = [v29 initWithOAuth2Token:v30 refreshToken:v31 expiryDate:v32];

    if (!v11 || !v9 || !*(a1 + 56) || !v51)
    {
      sub_29C827DC8(a1, (a1 + 48));
    }

    if ([*(a1 + 32) migrationStatus] <= 1)
    {
      [*(a1 + 32) setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:*MEMORY[0x29EDC0F10]];
      v34 = [*(a1 + 32) username];
      [*(a1 + 32) setObject:v34 forKeyedSubscript:*MEMORY[0x29EDB81A0]];

      [*(a1 + 32) setMigrationStatus:2];
    }

    v35 = *(a1 + 32);
    v36 = *(a1 + 48);
    v37 = *(a1 + 56);
    v38 = [v35 objectForKeyedSubscript:*MEMORY[0x29EDC1098]];
    [v36 _addPropertiesToAccount:v35 oauthURI:v37 tokenRequestURI:v9 jwksURI:v10 issuer:v11 oauthVersion:@"2" jwksData:v51 jwksDataCacheDate:v38];

    (*(*(a1 + 64) + 16))();
    v25 = v48;
    v21 = v49;
  }

  else
  {
    v40 = *(a1 + 48);
    v41 = *(a1 + 32);
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 3221225472;
    v53[2] = sub_29C82561C;
    v53[3] = &unk_29F3274D8;
    v54 = v25;
    v55 = v21;
    v56 = v11;
    v57 = *(a1 + 32);
    v58 = *(a1 + 40);
    v59 = *(a1 + 56);
    v60 = v9;
    v42 = v10;
    v43 = *(a1 + 48);
    v61 = v42;
    v62 = v43;
    v50 = *(a1 + 64);
    v44 = v50;
    v63 = v50;
    [v40 _retrieveJWKSDataForAccount:v41 fromURI:v42 withCompletion:v53];

    v33 = v54;
  }

LABEL_6:
}

uint64_t sub_29C825510(void *a1)
{
  v1 = a1;
  v2 = [v1 accountType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDB8210]];

  if (v4)
  {
    v5 = [v1 objectForKeyedSubscript:*MEMORY[0x29EDC10C0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 unsignedIntegerValue] == 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v7 = [v1 accountType];

    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:*MEMORY[0x29EDB8240]];

    return v9;
  }

  return v6;
}

void sub_29C82561C(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(a1 + 88);
      *buf = 138412546;
      v35 = v9;
      v36 = 2112;
      v37 = v6;
      v10 = "Couldn't retrieve JWKS data from URI: %@ Error: %@";
      v11 = v7;
      v12 = v8;
      v13 = 22;
LABEL_17:
      _os_log_impl(&dword_29C820000, v11, v12, v10, buf, v13);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v14 = [*(a1 + 32) idTokenValidWithJWKS:v5 withAudience:*(a1 + 40) withIssuer:*(a1 + 48)];
  v15 = DALoggingwithCategory();
  v7 = v15;
  if (!v14)
  {
    v31 = *(MEMORY[0x29EDC0F38] + 3);
    if (os_log_type_enabled(v15, *(MEMORY[0x29EDC0F38] + 3)))
    {
      *buf = 0;
      v10 = "Could not validate the id_token received from the server";
      v11 = v7;
      v12 = v31;
      v13 = 2;
      goto LABEL_17;
    }

LABEL_18:

    (*(*(a1 + 104) + 16))();
    goto LABEL_19;
  }

  v16 = *(MEMORY[0x29EDC0F38] + 7);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(a1 + 56);
    *buf = 138412290;
    v35 = v17;
    _os_log_impl(&dword_29C820000, v7, v16, "Successfully refreshed the OAuth token for Account %@", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x29EDB83C0]);
  v19 = [*(a1 + 64) accessToken];
  v20 = [*(a1 + 64) refreshToken];
  v21 = [*(a1 + 64) expiryDate];
  v33 = [v18 initWithOAuth2Token:v19 refreshToken:v20 expiryDate:v21];

  if (!*(a1 + 72) || !*(a1 + 80) || !*(a1 + 88) || !v5 || !*(a1 + 48))
  {
    sub_29C827E2C(a1);
  }

  if ([*(a1 + 56) migrationStatus] <= 1)
  {
    [*(a1 + 56) setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:*MEMORY[0x29EDC0F10]];
    v22 = [*(a1 + 56) username];
    [*(a1 + 56) setObject:v22 forKeyedSubscript:*MEMORY[0x29EDB81A0]];

    [*(a1 + 56) setMigrationStatus:2];
  }

  v23 = *(a1 + 80);
  v32 = *(a1 + 72);
  v25 = *(a1 + 88);
  v24 = *(a1 + 96);
  v27 = *(a1 + 48);
  v26 = *(a1 + 56);
  v28 = MEMORY[0x29EDBA070];
  v29 = [MEMORY[0x29EDB8DB0] date];
  [v29 timeIntervalSince1970];
  v30 = [v28 numberWithDouble:?];
  [v24 _addPropertiesToAccount:v26 oauthURI:v32 tokenRequestURI:v23 jwksURI:v25 issuer:v27 oauthVersion:@"2" jwksData:v5 jwksDataCacheDate:v30];

  (*(*(a1 + 104) + 16))();
LABEL_19:
}

uint64_t sub_29C8259B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C8259C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 72))
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x29EDC10C8]];
    }

    else
    {
      v9 = [MEMORY[0x29EDC0E78] upgradeAuthorizationEndpoint:v5];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:*MEMORY[0x29EDC10C8]];
    }

    [*(a1 + 32) setObject:@"2" forKeyedSubscript:*MEMORY[0x29EDC10D0]];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = sub_29C825B68;
    v14[3] = &unk_29F327550;
    v12 = v10;
    v19 = *(a1 + 72);
    v13 = *(a1 + 64);
    v15 = v12;
    v18 = v13;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    [v11 _retrieveOpenIDMetadataForAccount:v12 fromURI:v5 withCompletion:v14];
  }

  else
  {
    [*(a1 + 32) setMigrationStatus:3];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    dispatch_semaphore_signal(*(a1 + 56));
  }
}

void sub_29C825B68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v25 = [MEMORY[0x29EDC0E78] upgradeTokenEndpoint:v3];

    v5 = objc_alloc_init(MEMORY[0x29EDBA110]);
    [v5 setScheme:@"https"];
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDC0F00]];
    [v5 setHost:v6];

    v7 = [v5 URL];
    v8 = [v7 absoluteString];
    v9 = *MEMORY[0x29EDC1078];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:*MEMORY[0x29EDC1078]];

    v10 = [v5 URL];
    v11 = [v10 absoluteString];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:*MEMORY[0x29EDC1070]];

    v12 = sub_29C825510(*(a1 + 32));
    v13 = MEMORY[0x29EDC0E70];
    v14 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v15 = [v13 defaultScopeForOAuthType:v12 withResourceIdentifier:v14 isOnPrem:*(a1 + 64)];

    v16 = MEMORY[0x29EDC0E68];
    v17 = [*(a1 + 32) username];
    v18 = [*(a1 + 40) password];
    v19 = [v16 urlRequestForOAuthTokenFromUsername:v17 tokenRequestURI:v25 password:v18 scope:v15];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    dispatch_semaphore_signal(*(a1 + 48));
  }

  else
  {
    [*(a1 + 32) setMigrationStatus:3];
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = 0;

    v24 = *(a1 + 48);

    dispatch_semaphore_signal(v24);
  }
}

void sub_29C826AC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 backgroundThread];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C826BD4;
  v7[3] = &unk_29F3275C8;
  v7[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v4 = v6;
  v10 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 72);
  v5 = MEMORY[0x29ED451F0](v7);
  [v2 performSelector:sel_invokeAndReleaseBlock_ onThread:v3 withObject:v5 waitUntilDone:0];
}

void sub_29C826BD4(uint64_t a1)
{
  v2 = MEMORY[0x29EDC1060];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = sub_29C826CD4;
  v9[3] = &unk_29F3275A0;
  v3 = *(a1 + 64);
  v8 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v8;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 72);
  [v2 showUserNotification:v3 groupIdentifier:0 withCompletionBlock:v9];
  CFRelease(*(a1 + 64));
}

void sub_29C8273A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a3 == 3)
  {
    if (*(a1 + 56))
    {
      [*(a1 + 32) setAuthenticated:1];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 3221225472;
      v16[2] = sub_29C82764C;
      v16[3] = &unk_29F3275F0;
      v17 = *(a1 + 48);
      v18 = 2;
      [v6 saveAccount:v7 withHandler:v16];

      return;
    }
  }

  else
  {
    if (a3)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x29EDC0F38] + 6);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        _os_log_impl(&dword_29C820000, v8, v9, "User requested transfer to settings from OAuth authentication alert", buf, 2u);
      }

      v10 = MEMORY[0x29EDB8E70];
      v11 = MEMORY[0x29EDBA0F8];
      v12 = [*(a1 + 32) identifier];
      v13 = [v11 stringWithFormat:@"prefs:root=MAIL&path=ACCOUNTS/%@&%@=%@", v12, @"easOAuthAction", @"showAuthSheet"];
      v4 = [v10 URLWithString:v13];

      v14 = DALoggingwithCategory();
      if (os_log_type_enabled(v14, v9))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_29C820000, v14, v9, "Launch URL : %@", buf, 0xCu);
      }

      v15 = [MEMORY[0x29EDB9400] defaultWorkspace];
      [v15 openSensitiveURL:v4 withOptions:0];
    }

    else
    {
      v4 = DALoggingwithCategory();
      v5 = *(MEMORY[0x29EDC0F38] + 7);
      if (os_log_type_enabled(v4, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_29C820000, v4, v5, "User cancelled out of Hotmail authentication alert", buf, 2u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_29C827820(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 40) + 8) + 24), 0.0, &responseFlags);
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_29C827DC8(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 72) object:*a2 file:@"ESAccountAuthenticator.m" lineNumber:570 description:{@"We have used these objects to fetch and verify the tokens, neither of these should be empty"}];
}

void sub_29C827E2C(uint64_t a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 112) object:*(a1 + 96) file:@"ESAccountAuthenticator.m" lineNumber:600 description:{@"We have used these objects to fetch and verify the tokens, neither of these should be empty"}];
}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     v16 = v15;

  v17 = MEMORY[0x29EDBA0F8];
  v18 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:v16 value:&stru_2A23C9A98 table:@"DataAccess"];

  v20 = [v11 username];
  v21 = [v17 stringWithFormat:v19, v20];

  v22 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"EDIT_SETTINGS" value:&stru_2A23C9A98 table:@"DataAccess"];

  v24 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"PASSWORD_CANCEL" value:&stru_2A23C9A98 table:@"DataAccess"];
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = sub_29C8273A8;
  v34[3] = &unk_29F327618;
  v38 = a7;
  v35 = v11;
  v36 = v30;
  v37 = v29;
  v26 = v11;
  v27 = v30;
  v28 = v29;
  [(ESAccountAuthenticator *)self showUserAlertWithTitle:v21 message:v32 cancelButtonTitle:v25 otherButtonTitle:v23 textFieldTitle:0 keyboardType:0 withCompletionBlock:v34];
}

- (void)showUserAlertWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 textFieldTitle:(id)a7 keyboardType:(id)a8 withCompletionBlock:(id)a9
{
  v13 = a4;
  v14 = a7;
  v15 = a9;
  v16 = [MEMORY[0x29EDB8E00] dictionaryWithObjectsAndKeys:{a3, *MEMORY[0x29EDB9040], a5, *MEMORY[0x29EDB9060], a6, *MEMORY[0x29EDB9058], 0}];
  v17 = v16;
  if (v13)
  {
    [v16 setObject:v13 forKey:*MEMORY[0x29EDB9048]];
  }

  if (v14)
  {
    [v17 setObject:v14 forKey:*MEMORY[0x29EDB9078]];
  }

  v18 = [v15 copy];

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = CFUserNotificationCreate(*MEMORY[0x29EDB8ED8], 0.0, 0x10000uLL, 0, v17);
  v19 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C827820;
  block[3] = &unk_29F327640;
  v22 = v18;
  v23 = v24;
  v20 = v18;
  dispatch_async(v19, block);

  _Block_object_dispose(v24, 8);
}

- (void)_handlePasswordNotification:(__CFUserNotification *)a3 response:(unint64_t)a4 callback:(id)a5 account:(id)a6 accountStore:(id)a7 resetAuthenticatedOnAlertFailure:(BOOL)a8
{
  v8 = a8;
  v57 = *MEMORY[0x29EDCA608];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = DALoggingwithCategory();
  v17 = MEMORY[0x29EDC0F38];
  v18 = *(MEMORY[0x29EDC0F38] + 6);
  if (os_log_type_enabled(v16, v18))
  {
    v19 = [v14 backingAccountInfo];
    *buf = 134218498;
    v52 = a4;
    v53 = 2112;
    v54 = v14;
    v55 = 2112;
    v56 = v19;
    _os_log_impl(&dword_29C820000, v16, v18, "Authenticator got credential renewal prompt result of %ld for account %@, %@", buf, 0x20u);
  }

  v20 = a4 & 3;
  if (v20 != 3)
  {
    v29 = [v14 identityPersist];
    if (v29)
    {
      v30 = v29;
      v31 = [v14 username];
      if (v31)
      {
      }

      else
      {
        v32 = [v14 password];

        if (!v32)
        {
          v33 = DALoggingwithCategory();
          if (os_log_type_enabled(v33, v18))
          {
            *buf = 0;
            v34 = "User responded to client cert alert";
LABEL_27:
            _os_log_impl(&dword_29C820000, v33, v18, v34, buf, 2u);
          }

LABEL_28:
          v35 = 1;
          goto LABEL_29;
        }
      }
    }

    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_16;
      }

      v33 = DALoggingwithCategory();
      if (!os_log_type_enabled(v33, v18))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v34 = "User rejected password entry.";
      goto LABEL_27;
    }

    v36 = [v14 backingAccountInfo];
    v37 = [v36 accountType];
    v38 = [v37 identifier];
    v39 = [v38 isEqualToString:*MEMORY[0x29EDB8298]];

    v40 = *MEMORY[0x29EDB9080];
    if (v39)
    {
      v41 = CFUserNotificationGetResponseValue(a3, *MEMORY[0x29EDB9080], 0);
      [v14 setUsername:v41];

      v42 = 1;
    }

    else
    {
      v42 = 0;
    }

    v33 = CFUserNotificationGetResponseValue(a3, v40, v42);
    if ([v33 length])
    {
      v43 = [MEMORY[0x29EDB83C0] credentialWithPassword:v33];
      v44 = [v14 backingAccountInfo];
      [v44 setCredential:v43];

      v45 = MEMORY[0x29EDBDFF8];
      v46 = [v14 backingAccountInfo];
      [v45 setCredentialForAccount:v46];

      v35 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v47 = DALoggingwithCategory();
    if (os_log_type_enabled(v47, v18))
    {
      *buf = 0;
      _os_log_impl(&dword_29C820000, v47, v18, "Password rejected because it is blank", buf, 2u);
    }

    goto LABEL_28;
  }

  if (!v8)
  {
LABEL_16:
    v35 = 2;
LABEL_30:
    v13[2](v13, v35, 0);
    goto LABEL_31;
  }

  v21 = DALoggingwithCategory();
  v22 = *(v17 + 4);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = [v14 backingAccountInfo];
    v24 = [v23 identifier];
    v25 = [v14 backingAccountInfo];
    v26 = [v25 username];
    *buf = 138412546;
    v52 = v24;
    v53 = 2112;
    v54 = v26;
    _os_log_impl(&dword_29C820000, v21, v22, "Calling _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", buf, 0x16u);
  }

  v27 = [v14 backingAccountInfo];
  [v27 setAuthenticated:1];

  v28 = [v14 backingAccountInfo];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = sub_29C827D6C;
  v48[3] = &unk_29F3275F0;
  v49 = v13;
  v50 = 2;
  [v15 saveAccount:v28 withHandler:v48];

LABEL_31:
}

@end