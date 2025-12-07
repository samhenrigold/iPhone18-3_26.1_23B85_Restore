void sub_164C(uint64_t a1)
{
  [*(a1 + 32) saveNotesInBackground:*(a1 + 40)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16DC;
  block[3] = &unk_307D0;
  block[4] = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_16DC(uint64_t a1)
{
  [*(a1 + 32) _enableButtons];
  v2 = [*(a1 + 32) parentController];
  [v2 dismiss];
}

uint64_t sub_312C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_42C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int buf, __int128 a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v13, v14))
    {
      buf = 138412546;
      WORD2(a12) = 2112;
      *(&a12 + 6) = v12;
      _os_log_impl(&dword_0, v13, v14, "Parsing host string %@ led to exception %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x41E4);
  }

  _Unwind_Resume(a1);
}

id sub_4B78(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = DALoggingwithCategory();
    v3 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v2, v3, "Couldn't remove the account: %@", &v6, 0xCu);
    }
  }

  [*(a1 + 40) setTaskCompletionAssertionEnabled:0];
  return [*(a1 + 40) performSelector:"_dismissAndUpdateParent" withObject:0 afterDelay:1.0];
}

id sub_4F6C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = DALoggingwithCategory();
  v4 = v3;
  if (v2)
  {
    v5 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v5))
    {
      LOWORD(v13) = 0;
      v6 = "ACAccountStore saved my account, dismissing";
      v7 = v4;
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v7, v8, v6, &v13, v9);
    }
  }

  else
  {
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v3, v10))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      v6 = "Couldn't save the account: %@";
      v7 = v4;
      v8 = v10;
      v9 = 12;
      goto LABEL_6;
    }
  }

  return [*(a1 + 40) _finishSaveAccountDismissWhenDone:1];
}

id *sub_56AC(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] _deleteAccount];
  }

  return result;
}

id DAAccountDescriptionFromHostname(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"."];
  if ([v2 count] == &dword_0 + 1 || objc_msgSend(v2, "count") != &dword_0 + 2)
  {
    v4 = v1;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 capitalizedString];
  }

  return v4;
}

void *sub_B01C(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v13 = 0;
        if (([v2 fileExistsAtPath:v9 isDirectory:&v13] & 1) == 0)
        {
          if (!v6)
          {
            v6 = [v3 mutableCopy];
          }

          [v6 removeObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v10;
}

void sub_B184(uint64_t a1)
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"DIAG_LOG_SAVED_MESSAGE" value:&stru_30C98 table:@"Diagnostic"];
  v4 = [*(a1 + 32) lastPathComponent];
  v8 = [NSString stringWithFormat:v3, v4];

  v5 = *(a1 + 40);
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DIAG_LOG_SAVED_TITLE" value:&stru_30C98 table:@"Diagnostic"];
  [v5 runSimpleAlertWithTitle:v7 message:v8];
}

void sub_D3B0(id a1, __SecTrust *a2, CertUITrustManager *a3, NSString *a4)
{
  v7 = a3;
  v6 = a4;
  if ([(CertUITrustManager *)v7 actionForSMIMETrust:a2 sender:v6]== 2)
  {
    [(CertUITrustManager *)v7 addSMIMETrust:a2 sender:v6];
  }
}

void sub_DBFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  [a3 statusCode];
  v8 = [v6 copy];

  (*(*(a1 + 40) + 16))();
  v7 = [*(a1 + 32) autoDV2RedirectSession];
  [v7 invalidateAndCancel];

  [*(a1 + 32) setAutoDV2RedirectSession:0];
}

void sub_100F4(uint64_t a1)
{
  ADClientAddValueForScalarKey();
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, v3, "Trying on-prem AutoDiscvoer-V2", v5, 2u);
  }

  *(*(a1 + 32) + 162) = 1;
  v4 = [*(a1 + 32) account];
  [v4 autodiscoverOnPremOAuthAccountWithConsumer:*(a1 + 32)];
}

id sub_101B8(uint64_t a1)
{
  ADClientAddValueForScalarKey();
  v2 = *(a1 + 32);

  return [v2 _reallyStartAutoDiscoverAccount];
}

void sub_10440(uint64_t a1, uint64_t a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_104E4;
  block[3] = &unk_30970;
  v7 = a3;
  v8 = a2;
  block[4] = *(a1 + 32);
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_104E4(uint64_t a1)
{
  if (*(a1 + 48) == 302)
  {
    v2 = DALoggingwithCategory();
    v3 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v2, v3))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, v3, "#EASTrafficSuccessful Re-direct response received. Starting AutoDV2 flow...", buf, 2u);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 162);
    if (v5 == 1)
    {
      v6 = [v4 account];
      [v6 autodiscoverOnPremOAuthAccountWithConsumer:*(a1 + 32)];
      goto LABEL_15;
    }

    if (!v5)
    {
      v6 = [v4 account];
      [v6 autodiscoverOAuthAccountWithConsumer:*(a1 + 32)];
LABEL_15:

      return;
    }

    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v11, v12))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v11, v12, "Invalid state. Not performing AutoDV2.", v15, 2u);
    }
  }

  else
  {
    v7 = [*(a1 + 32) _isNetworkOfflineError:*(a1 + 40)];
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    v10 = os_log_type_enabled(v8, v9);
    if (v7)
    {
      if (v10)
      {
        *v14 = 0;
        _os_log_impl(&dword_0, v8, v9, "Received an Internet Offline Error duing AutoDV2. Presenting Internet Offline Alert", v14, 2u);
      }

      +[DAEASOAuthWebViewController presentInternetOfflineError];
      [*(a1 + 32) stopValidationWithPrompt:0 showButtons:1];
    }

    else
    {
      if (v10)
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v8, v9, "#EASTrafficRe-direct Failed. Falling-back to AutoDV1 flow...", v13, 2u);
      }

      [*(a1 + 32) _fallBackToAutoDiscoverV1];
    }
  }
}

void sub_11960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1198C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11A74;
  v11[3] = &unk_309C0;
  objc_copyWeak(v15, (a1 + 40));
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = *(a1 + 56);
  v15[1] = *(a1 + 48);
  v15[2] = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(v15);
}

void sub_11A74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) accessToken];
  if (v3 && (v4 = v3, [*(a1 + 32) refreshToken], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [*(a1 + 32) oauthURI];
    if (!v6 || (v7 = v6, [*(a1 + 32) tokenRequestURI], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      sub_1BF38(a1);
    }

    v9 = [*(a1 + 32) oauthURI];
    v10 = [WeakRetained account];
    v11 = [v10 backingAccountInfo];
    [v11 setObject:v9 forKeyedSubscript:kESExchangeOAuthURI];

    v12 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    v13 = [WeakRetained account];
    v14 = [v13 backingAccountInfo];
    [v14 setObject:v12 forKeyedSubscript:kESExchangeOAuthType];

    v15 = [*(a1 + 32) tokenRequestURI];
    v16 = [WeakRetained account];
    v17 = [v16 backingAccountInfo];
    [v17 setObject:v15 forKeyedSubscript:kESExchangeTokenRequestURI];

    v18 = [*(a1 + 32) jwksURI];

    if (v18)
    {
      v19 = [*(a1 + 32) jwksURI];
      v20 = [WeakRetained account];
      v21 = [v20 backingAccountInfo];
      [v21 setObject:v19 forKeyedSubscript:kESExchangeOAuthJWKSURI];
    }

    v22 = [*(a1 + 32) issuer];

    if (v22)
    {
      v23 = [*(a1 + 32) issuer];
      v24 = [WeakRetained account];
      v25 = [v24 backingAccountInfo];
      [v25 setObject:v23 forKeyedSubscript:kESExchangeOAuthTokenIssuer];
    }

    v26 = [WeakRetained account];
    v27 = [v26 backingAccountInfo];
    [v27 setObject:@"2" forKeyedSubscript:kESExchangeOAuthVersion];

    v28 = [*(a1 + 32) jwksData];

    if (v28)
    {
      v29 = [*(a1 + 32) jwksData];
      v30 = [WeakRetained account];
      v31 = [v30 backingAccountInfo];
      [v31 setObject:v29 forKeyedSubscript:kESExchangeOAuthJWKSData];
    }

    v32 = +[NSDate date];
    [v32 timeIntervalSince1970];
    v33 = [NSNumber numberWithDouble:?];
    v34 = [WeakRetained account];
    v35 = [v34 backingAccountInfo];
    [v35 setObject:v33 forKeyedSubscript:kESExchangeOAuthJWKSDataCacheDate];

    if (*(*(a1 + 40) + 162) == 1)
    {
      v36 = [WeakRetained account];
      v37 = [v36 backingAccountInfo];
      [v37 setObject:&__kCFBooleanTrue forKeyedSubscript:kESExchangeOAuthOnPremKey];
    }

    v38 = [WeakRetained account];
    v39 = [v38 backingAccountInfo];
    [v39 setObject:&stru_30C98 forKeyedSubscript:kESExchangePasswordPromptDate];

    v40 = [WeakRetained account];
    v41 = [v40 backingAccountInfo];
    [v41 setObject:&stru_30C98 forKeyedSubscript:kESExchangePendingClaimsChallenge];

    v42 = [*(a1 + 32) username];
    v43 = v42;
    if (!v42)
    {
      v41 = [WeakRetained account];
      v43 = [v41 emailAddress];
    }

    v44 = [WeakRetained account];
    [v44 setUsername:v43];

    if (!v42)
    {
    }

    v45 = [WeakRetained account];
    v46 = [v45 backingAccountInfo];
    v47 = [WeakRetained account];
    v48 = [v47 username];
    v49 = [*(a1 + 32) accessToken];
    v50 = [*(a1 + 32) refreshToken];
    [WeakRetained _validateUniquenessAndAddAccount:v46 username:v48 token:v49 refreshToken:v50 completion:0];
  }

  else
  {
    v51 = DALoggingwithCategory();
    v52 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(a1 + 48);
      v56 = 138412290;
      v57 = v53;
      _os_log_impl(&dword_0, v51, v52, "Error retrieving an OAuth identity. Error %@", &v56, 0xCu);
    }

    v54 = [NSError errorWithDomain:DAAccountValidationDomain code:100 userInfo:0];
    v55 = [WeakRetained account];
    [WeakRetained account:v55 isValid:0 validationError:v54];

    [WeakRetained _fallBackToAutoDiscoverV1];
  }
}

void sub_12618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_12678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v2, v3))
  {
    v5 = 134217984;
    v6 = [WeakRetained backgroundTaskID];
    _os_log_impl(&dword_0, v2, v3, "Background task %lu expired. End task", &v5, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskID")}];

  [WeakRetained setBackgroundTaskID:UIBackgroundTaskInvalid];
}

void sub_12788(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 134217984;
    v9 = [WeakRetained backgroundTaskID];
    _os_log_impl(&dword_0, v5, v6, "Received redirect URL. Ending background task %lu", &v8, 0xCu);
  }

  v7 = +[UIApplication sharedApplication];
  [v7 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskID")}];

  [WeakRetained setBackgroundTaskID:UIBackgroundTaskInvalid];
  [WeakRetained handleRedirectURL:v3];
}

void sub_128B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 webAuthenticationSession];
    [v8 cancel];

    if ([*(a1 + 32) backgroundTaskID] != UIBackgroundTaskInvalid)
    {
      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [*(a1 + 32) backgroundTaskID];
        v19 = 134217984;
        v20 = v11;
        _os_log_impl(&dword_0, v9, v10, "Sign in canceled. Ending background task %lu", &v19, 0xCu);
      }

      v12 = +[UIApplication sharedApplication];
      [v12 endBackgroundTask:{objc_msgSend(*(a1 + 32), "backgroundTaskID")}];

      [*(a1 + 32) setBackgroundTaskID:UIBackgroundTaskInvalid];
    }

    [*(a1 + 32) _fallBackToAutoDiscoverV1];
    v13 = +[PSOAuthAccountRedirectURLController sharedInstance];
    v14 = [DAEASOAuthClient clientRedirectForOAuthType:*(a1 + 40)];
    [v13 unRegisterOAuthClientForRedirectURL:v14];

    if ([v6 code] == &dword_0 + 2 || objc_msgSend(v6, "code") == &dword_0 + 3)
    {
      v15 = DALoggingwithCategory();
      v16 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v15, v16))
      {
        v17 = [v6 code];
        v19 = 134217984;
        v20 = v17;
        _os_log_impl(&dword_0, v15, v16, "ExchangeSync Login UI WindowContext is not valid! ASWebAuthenticationSessionErrorCode:  %lu", &v19, 0xCu);
      }
    }

    [*(a1 + 32) setWebAuthenticationSession:0];
  }

  else
  {
    v18 = [v7 redirectHandlerBlock];
    (v18)[2](v18, v5);
  }
}

void sub_13244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_13270(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_0, v6, v7, "Can save account failed with error : %@", &v10, 0xCu);
    }

    v8 = [v5 domain];
    if ([v8 isEqualToString:ACErrorDomain])
    {
      v9 = [v5 code];

      if (v9 == &dword_4 + 1)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_147B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [ASSettingsAccountsUIController usernameFromAccessToken:*(a1 + 32)];
  if (([*(a1 + 40) _storeHasDuplicateForUsername:*(a1 + 48)] & 1) != 0 || v3 && objc_msgSend(*(a1 + 40), "_storeHasDuplicateForUsername:", v3))
  {
    [*(a1 + 40) showIdenticalAccountFailureView];
    [*(a1 + 40) stopValidationWithPrompt:0 showButtons:1];
    v4 = *(a1 + 72);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0);
    }
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_0, v5, v6, "Successfuly received an OAuth identity. Creating and saving an account with the credential info", &v28, 2u);
    }

    [*(a1 + 56) setUsername:*(a1 + 48)];
    [*(a1 + 56) setObject:*(a1 + 48) forKeyedSubscript:kDAAccountEmailAddress];
    if (_os_feature_enabled_impl())
    {
      ACUIDescriptionFromEmailAddress();
    }

    else
    {
      [WeakRetained _defaultAccountDescription];
    }
    v7 = ;
    v8 = [*(a1 + 56) accountDescription];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;

    if ([v11 isEqualToString:v7])
    {
      v12 = [WeakRetained accountStore];
      v13 = [v12 hasAccountWithDescription:v7];

      if (v13)
      {
        v14 = *(a1 + 48);

        v11 = v14;
      }
    }

    [*(a1 + 56) setAccountDescription:v11];
    v15 = [*(a1 + 56) username];
    v16 = [WeakRetained account];
    [v16 setObject:v15 forKeyedSubscript:ACAccountPropertyIdentityEmailAddress];

    v17 = [ACAccountCredential alloc];
    v18 = *(a1 + 32);
    v19 = *(a1 + 64);
    v20 = +[NSDate distantFuture];
    v21 = [v17 initWithOAuth2Token:v18 refreshToken:v19 expiryDate:v20];

    v22 = [WeakRetained account];
    v23 = [v22 backingAccountInfo];
    [v23 setCredential:v21];

    v24 = [*(a1 + 40) account];
    [v24 discoverInitialPropertiesWithConsumer:*(a1 + 40)];

    v25 = DALoggingwithCategory();
    if (os_log_type_enabled(v25, v6))
    {
      v26 = [*(a1 + 56) username];
      v27 = [*(a1 + 56) accountDescription];
      v28 = 138412546;
      v29 = v26;
      v30 = 2112;
      v31 = v27;
      _os_log_impl(&dword_0, v25, v6, "OAuth Account setup successfuly with username/emailaddress : %@ and description : %@", &v28, 0x16u);
    }
  }
}

double sub_15184(void *a1, double a2)
{
  v3 = a1;
  v4 = a2 + -20.0;
  [v3 sizeThatFits:{a2 + -20.0, INFINITY}];
  v7 = v6;
  v8 = a2 / 3.0;
  if (v4 >= v8)
  {
    v9 = v5;
    v10 = v4 + -20.0;
    [v3 sizeThatFits:{v10, INFINITY}];
    if (v12 <= v9)
    {
      do
      {
        v7 = v11;
        if (v10 < v8)
        {
          break;
        }

        v10 = v10 + -20.0;
        [v3 sizeThatFits:{v10, INFINITY}];
      }

      while (v13 <= v9);
    }
  }

  return v7;
}

void sub_16A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_16A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412546;
    v87 = v5;
    v88 = 2112;
    v89 = v6;
    _os_log_impl(&dword_0, v7, v8, "Finished OAuth Token refresh with OAuthIdenity %@ and Error %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, v11, "Not saving OAuthIdentity since it is either nil, or an error occurred. Showing validation failure message.", buf, 2u);
    }

    v12 = [WeakRetained account];
    v13 = [v12 accountType];
    v14 = [v13 identifier];
    v15 = [v14 isEqualToString:ACAccountTypeIdentifierHotmail];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = v16;
    if (v15)
    {
      v18 = @"HOTMAIL_ACCOUNT";
    }

    else
    {
      v18 = @"EXCHANGE_ACCOUNT";
    }

    v19 = [v16 localizedStringForKey:v18 value:&stru_30C98 table:@"ASAccountSetup"];

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_30C98 table:@"ASAccountSetup"];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v19, v21, [v22 localizedStringForKey:@"OK" value:&stru_30C98 table:@"ASAccountSetup"]);
  }

  v23 = [v5 accessToken];
  v24 = [ASSettingsAccountsUIController usernameFromAccessToken:v23];

  v25 = [v5 username];
  if (v25)
  {
    v26 = v25;
    v27 = [WeakRetained account];
    v28 = [v27 username];
    v29 = [v5 username];
    v30 = [v28 compare:v29 options:1];

    if (v30)
    {
      v31 = DALoggingwithCategory();
      v32 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v31, v32))
      {
        *buf = 0;
        v33 = "DAEASOAuthWebViewController username mismatch, did not save account";
LABEL_19:
        _os_log_impl(&dword_0, v31, v32, v33, buf, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  if (v24)
  {
    v34 = *(a1 + 32);
    v35 = [WeakRetained account];
    v36 = [v35 identifier];
    v37 = [WeakRetained account];
    v38 = [v37 accountType];
    LODWORD(v34) = [v34 _storeHasDuplicateForUsername:v24 withoutIdentifier:v36 withAccountType:v38];

    if (v34)
    {
      v31 = DALoggingwithCategory();
      v32 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v31, v32))
      {
        *buf = 0;
        v33 = "DAEASOAuthWebViewController found a duplicate account with username, did not save account";
        goto LABEL_19;
      }

LABEL_20:

      +[DAEASOAuthWebViewController presentUsernameMismatchAlert];
      v39 = &off_23000;
      goto LABEL_36;
    }
  }

  v39 = &off_23000;
  if (v5 && !v6)
  {
    v40 = [v5 oauthURI];
    if (!v40 || (v41 = v40, [v5 tokenRequestURI], v42 = objc_claimAutoreleasedReturnValue(), v42, v41, !v42))
    {
      sub_1BFA8(a1);
    }

    v43 = [WeakRetained account];
    v44 = [v43 migrationStatus];

    if (v44 <= 1)
    {
      v45 = [WeakRetained account];
      [v45 setObject:&__kCFBooleanTrue forKeyedSubscript:kESExchangeOAuthSupportedKey];

      v46 = [WeakRetained account];
      v47 = [v46 username];
      v48 = [WeakRetained account];
      [v48 setObject:v47 forKeyedSubscript:ACAccountPropertyIdentityEmailAddress];

      v49 = [WeakRetained account];
      [v49 setMigrationStatus:2];
    }

    v50 = [v5 oauthURI];
    v51 = [WeakRetained account];
    [v51 setObject:v50 forKeyedSubscript:kESExchangeOAuthURI];

    v52 = [v5 tokenRequestURI];
    v53 = [WeakRetained account];
    [v53 setObject:v52 forKeyedSubscript:kESExchangeTokenRequestURI];

    v54 = [v5 jwksURI];

    if (v54)
    {
      v55 = [v5 jwksURI];
      v56 = [WeakRetained account];
      [v56 setObject:v55 forKeyedSubscript:kESExchangeOAuthJWKSURI];
    }

    v57 = [v5 issuer];

    if (v57)
    {
      v58 = [v5 issuer];
      v59 = [WeakRetained account];
      [v59 setObject:v58 forKeyedSubscript:kESExchangeOAuthTokenIssuer];
    }

    v60 = [WeakRetained account];
    [v60 setObject:@"2" forKeyedSubscript:kESExchangeOAuthVersion];

    v61 = [v5 jwksData];

    if (v61)
    {
      v62 = [v5 jwksData];
      v63 = [WeakRetained account];
      [v63 setObject:v62 forKeyedSubscript:kESExchangeOAuthJWKSData];
    }

    v64 = +[NSDate date];
    [v64 timeIntervalSince1970];
    v65 = [NSNumber numberWithDouble:?];
    v66 = [WeakRetained account];
    [v66 setObject:v65 forKeyedSubscript:kESExchangeOAuthJWKSDataCacheDate];

    v67 = [WeakRetained account];
    [v67 setObject:&stru_30C98 forKeyedSubscript:kESExchangePasswordPromptDate];

    v68 = [WeakRetained account];
    [v68 setObject:&stru_30C98 forKeyedSubscript:kESExchangePendingClaimsChallenge];

    v69 = [ACAccountCredential alloc];
    v70 = [v5 accessToken];
    v71 = [v5 refreshToken];
    v72 = [v69 initWithOAuth2Token:v70 refreshToken:v71 expiryDate:0];

    v73 = [WeakRetained account];
    [v73 setCredential:v72];

    v74 = DALoggingwithCategory();
    v75 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v74, v75))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v74, v75, "DAEASOAuthWebViewController will save account with new credential", buf, 2u);
    }

    v76 = dispatch_semaphore_create(0);
    v77 = [WeakRetained accountStore];
    v78 = [WeakRetained account];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_173C8;
    v83[3] = &unk_30AE0;
    v84 = 0;
    v85 = v76;
    v79 = v76;
    [v77 saveAccount:v78 withCompletionHandler:v83];

    dispatch_semaphore_wait(v79, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_36:
  [WeakRetained reloadAccount];
  block[0] = _NSConcreteStackBlock;
  block[1] = *(v39 + 122);
  block[2] = sub_17508;
  block[3] = &unk_307D0;
  v82 = WeakRetained;
  v80 = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);
}

intptr_t sub_173C8(uint64_t a1, int a2)
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 32);
    v11 = 67109378;
    LODWORD(v12[0]) = a2;
    WORD2(v12[0]) = 2112;
    *(v12 + 6) = v6;
    _os_log_impl(&dword_0, v4, v5, "DAEASOAuthWebViewController did save account with success %d error %@", &v11, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12[0] = v9;
      _os_log_impl(&dword_0, v7, v8, "DAEASOAuthWebViewController save account FAILED with error %@", &v11, 0xCu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_181DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 200));
  _Unwind_Resume(a1);
}

void sub_18278(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 webAuthenticationSession];
    [v8 cancel];

    if ([*(a1 + 32) backgroundTaskID] != UIBackgroundTaskInvalid)
    {
      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [*(a1 + 32) backgroundTaskID];
        v19 = 134217984;
        v20 = v11;
        _os_log_impl(&dword_0, v9, v10, "Sign in canceled. Ending background task %lu", &v19, 0xCu);
      }

      v12 = +[UIApplication sharedApplication];
      [v12 endBackgroundTask:{objc_msgSend(*(a1 + 32), "backgroundTaskID")}];

      [*(a1 + 32) setBackgroundTaskID:UIBackgroundTaskInvalid];
    }

    v13 = +[PSOAuthAccountRedirectURLController sharedInstance];
    v14 = [DAEASOAuthClient clientRedirectForOAuthType:*(a1 + 40)];
    [v13 unRegisterOAuthClientForRedirectURL:v14];

    if ([v6 code] == &dword_0 + 2 || objc_msgSend(v6, "code") == &dword_0 + 3)
    {
      v15 = DALoggingwithCategory();
      v16 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v15, v16))
      {
        v17 = [v6 code];
        v19 = 134217984;
        v20 = v17;
        _os_log_impl(&dword_0, v15, v16, "ExchangeSync Login UI WindowContext is not valid! ASWebAuthenticationSessionErrorCode:  %lu", &v19, 0xCu);
      }
    }

    [*(a1 + 32) setWebAuthenticationSession:0];
  }

  else
  {
    v18 = [v7 redirectHandlerBlock];
    (v18)[2](v18, v5);
  }
}

void sub_184C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v2, v3))
  {
    v5 = 134217984;
    v6 = [WeakRetained backgroundTaskID];
    _os_log_impl(&dword_0, v2, v3, "Background task %lu expired. End task", &v5, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskID")}];

  [WeakRetained setBackgroundTaskID:UIBackgroundTaskInvalid];
}

void sub_185D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 134217984;
    v9 = [WeakRetained backgroundTaskID];
    _os_log_impl(&dword_0, v5, v6, "Exchange OAuth Setup: Received a callBack URL from SafariViewController. Ending background task %lu", &v8, 0xCu);
  }

  v7 = +[UIApplication sharedApplication];
  [v7 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskID")}];

  [WeakRetained setBackgroundTaskID:UIBackgroundTaskInvalid];
  [WeakRetained handleRedirectURL:v3];
}

void sub_18704(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentViewController:v3 animated:1 completion:0];
}

void sub_18768(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [v5 username];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v7, v8, "Wohoo Saved OAuth Updated Password Identity %@, error %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadAccount];
  [WeakRetained reloadSpecifiers];
}

void sub_18A1C(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_18AC8;
  v7[3] = &unk_30BC0;
  v8 = a3;
  v9 = a2;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7[4] = v5;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_18AC8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 302)
  {
    v4 = [v3 daAccount];
    v5 = [v4 backingAccountInfo];
    [v5 setAuthenticated:1];

    LOBYTE(v4) = *(a1 + 56);
    v6 = [*(a1 + 32) daAccount];
    v7 = *(a1 + 32);
    v12 = v6;
    if (v4)
    {
      [v6 autodiscoverOnPremOAuthAccountWithConsumer:v7];
    }

    else
    {
      [v6 autodiscoverOAuthAccountWithConsumer:v7];
    }
  }

  else
  {
    v8 = [v3 _isNetworkOfflineError:*(a1 + 40)];
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    v11 = os_log_type_enabled(v9, v10);
    if (v8)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, v10, "Received an Internet Offline Error duing AutoDV2. Presenting Internet Offline Alert", buf, 2u);
      }

      +[DAEASOAuthWebViewController presentInternetOfflineError];
    }

    else
    {
      if (v11)
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v9, v10, "#EASTrafficRe-direct Failed. Unable to complete OAuth sign in.", v13, 2u);
      }
    }

    [*(a1 + 32) _enableReAuthenticationButton];
    [*(a1 + 32) stopValidationWithPrompt:0 showButtons:1];
  }
}

id sub_19A24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [NSNumber numberWithBool:a2];
  [*(a1 + 32) setIsOofSupported:v4];

  v5 = *(a1 + 32);
  if (v2)
  {

    return [v5 checkAndFetchOutOfOfficeState];
  }

  else
  {

    return [v5 performSelectorOnMainThread:"removeOutOfOfficeSpecifier" withObject:0 waitUntilDone:0];
  }
}

void sub_1B570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B5CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v44) = 0;
      _os_log_impl(&dword_0, v8, v9, "Successfuly received an OAuth identity. Creating and saving an account with the credential info", &v44, 2u);
    }

    v10 = [v5 oauthURI];
    v11 = [WeakRetained account];
    v12 = [v11 backingAccountInfo];
    [v12 setObject:v10 forKeyedSubscript:kESExchangeOAuthURI];

    v13 = [v5 tokenRequestURI];
    v14 = [WeakRetained account];
    v15 = [v14 backingAccountInfo];
    [v15 setObject:v13 forKeyedSubscript:kESExchangeTokenRequestURI];

    v16 = [v5 jwksURI];
    v17 = [WeakRetained account];
    v18 = [v17 backingAccountInfo];
    [v18 setObject:v16 forKeyedSubscript:kESExchangeOAuthJWKSURI];

    v19 = [v5 issuer];
    v20 = [WeakRetained account];
    v21 = [v20 backingAccountInfo];
    [v21 setObject:v19 forKeyedSubscript:kESExchangeOAuthTokenIssuer];

    v22 = [WeakRetained account];
    v23 = [v22 backingAccountInfo];
    [v23 setObject:@"2" forKeyedSubscript:kESExchangeOAuthVersion];

    v24 = [v5 jwksData];
    v25 = [WeakRetained account];
    v26 = [v25 backingAccountInfo];
    [v26 setObject:v24 forKeyedSubscript:kESExchangeOAuthJWKSData];

    v27 = +[NSDate date];
    [v27 timeIntervalSince1970];
    v28 = [NSNumber numberWithDouble:?];
    v29 = [WeakRetained account];
    v30 = [v29 backingAccountInfo];
    [v30 setObject:v28 forKeyedSubscript:kESExchangeOAuthJWKSDataCacheDate];

    v31 = [WeakRetained account];
    v32 = [v31 backingAccountInfo];
    [v32 setObject:&stru_30C98 forKeyedSubscript:kESExchangePasswordPromptDate];

    v33 = [WeakRetained account];
    v34 = [v33 backingAccountInfo];
    [v34 setObject:&stru_30C98 forKeyedSubscript:kESExchangePendingClaimsChallenge];

    v35 = [WeakRetained account];
    v36 = [v35 backingAccountInfo];
    v37 = [v5 username];
    v38 = [v5 accessToken];
    v39 = [v5 refreshToken];
    v40 = [WeakRetained completion];
    [WeakRetained _validateUniquenessAndAddAccount:v36 username:v37 token:v38 refreshToken:v39 completion:v40];

LABEL_9:
    goto LABEL_10;
  }

  if (v6)
  {
    v41 = DALoggingwithCategory();
    v42 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v41, v42))
    {
      v44 = 138412290;
      v45 = v6;
      _os_log_impl(&dword_0, v41, v42, "Error retrieving an OAuth identity. Error %@", &v44, 0xCu);
    }

    v35 = [NSError errorWithDomain:DAAccountValidationDomain code:100 userInfo:0];
    v43 = [WeakRetained account];
    [WeakRetained account:v43 isValid:0 validationError:v35];

    v36 = [WeakRetained completion];
    v37 = objc_loadWeakRetained((a1 + 32));
    v38 = [v37 account];
    v39 = [v38 backingAccountInfo];
    (v36)[2](v36, v39, 0, 0);
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1BD1C()
{
  sub_14B30();
  v1 = +[NSAssertionHandler currentHandler];
  sub_14B3C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1BD88()
{
  sub_14B30();
  v1 = +[NSAssertionHandler currentHandler];
  sub_14B3C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1BDF4()
{
  sub_14B30();
  v1 = +[NSAssertionHandler currentHandler];
  sub_14B3C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1BE60()
{
  sub_14B30();
  v1 = +[NSAssertionHandler currentHandler];
  sub_14B3C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1BECC()
{
  sub_14B30();
  v1 = +[NSAssertionHandler currentHandler];
  sub_14B3C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1BF38(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"ASSettingsAccountsUIController.m" lineNumber:709 description:{@"We have used these objects to fetch and verify the tokens, neither of these should be empty"}];
}

void sub_1BFA8(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"ASSettingsDataclassConfigurationViewController.m" lineNumber:333 description:{@"We have used these objects to fetch and verify the tokens, neither of these should be empty"}];
}