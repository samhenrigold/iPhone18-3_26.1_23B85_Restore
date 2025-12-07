void sub_10005F000(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && [v4 cad_matchesDeviceIdentifier:*(a1 + 192)])
  {
    v6 = cps_session_log();
    if (sub_10000FADC(v6))
    {
      sub_10000F97C();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    v12 = *(a1 + 200);
    if (v12 == 2)
    {
      if ([v5 deviceActionType] == 28)
      {
        goto LABEL_10;
      }
    }

    else if (v12 != 1 || [v5 deviceActionType] == 34)
    {
      goto LABEL_10;
    }

    v13 = cps_session_log();
    if (sub_10000FADC(v13))
    {
      sub_10000F97C();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    sub_10005E3C0(a1);
  }

LABEL_10:
}

void sub_10005F13C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && [v4 cad_matchesDeviceIdentifier:*(a1 + 192)])
  {
    v6 = cps_session_log();
    if (sub_10000FADC(v6))
    {
      sub_10000F97C();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    sub_10005E3C0(a1);
  }
}

id *sub_10005F204(id *result)
{
  if (result)
  {
    v2 = result;
    v3 = [result[5] screenOn];
    v4 = cps_session_log();
    if (sub_10000FADC(v4))
    {
      sub_10000F97C();
      _os_log_impl(v5, v6, v7, v8, v9, 8u);
    }

    if (v3)
    {
      v10 = cps_session_log();
      if (sub_10000FA34(v10))
      {
        sub_10000F894();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
      }

      return [v2[7] cancel];
    }

    else
    {
      return sub_10005F400(v2);
    }
  }

  return result;
}

void sub_10005F2FC(uint64_t a1)
{
  if (a1 && [*(a1 + 40) meDeviceValid])
  {
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      [*(a1 + 40) meDeviceIsMe];
      sub_10000F894();
      _os_log_impl(v4, v5, v6, v7, v8, 8u);
    }

    [*(a1 + 64) invalidate];
    v9 = *(a1 + 64);
    *(a1 + 64) = 0;

    v10 = *(a1 + 168);
    if (v10)
    {
      v11 = [v10 authType];
      if (v11 == 15)
      {
        sub_100008324(a1);
      }

      else if (v11 == 19)
      {
        sub_1000086D4(a1);
      }

      else if (v11 == 18)
      {
        sub_100008564(a1);
      }
    }
  }
}

void *sub_10005F400(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      v12[0] = 0;
      sub_10000F944(&_mh_execute_header, v4, v5, "Starting screen sleep timer.", v12);
    }

    if (!v2[7])
    {
      v6 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDProviderSession.screenSleepTimer"];
      v7 = v2[7];
      v2[7] = v6;
    }

    sub_10000F850();
    sub_10000F960();
    v9 = sub_10005F4D4;
    v10 = &unk_10008A298;
    v11 = v2;
    return [v8 scheduleWithFireInterval:60.0 leewayInterval:1.0 queue:? handler:?];
  }

  return result;
}

void sub_10005F4D4(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(*(a1 + 32));
}

void *sub_10005F538(void *result)
{
  if (result)
  {
    v2 = result;
    v3 = cps_session_log();
    if (sub_10000FA34(v3))
    {
      v12[0] = 0;
      sub_10000F944(&_mh_execute_header, v4, v5, "Starting Me device timer.", v12);
    }

    if (!v2[8])
    {
      v6 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"CDProviderSession.meDeviceTimer"];
      v7 = v2[8];
      v2[8] = v6;
    }

    sub_10000F850();
    sub_10000F960();
    v9 = sub_10005F608;
    v10 = &unk_10008A298;
    v11 = v2;
    return [v8 scheduleWithFireInterval:10.0 leewayInterval:1.0 queue:? handler:?];
  }

  return result;
}

void sub_10005F608(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(*(a1 + 32));
}

void sub_10005F66C(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v3 = v2;
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v6 = objc_alloc_init(CDGetInfoRequest);
    [*(v3 + 96) ams_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v9];

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_10005F744(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[AMSDelegatePurchaseTask bagSubProfile];
    v8 = +[AMSDelegatePurchaseTask bagSubProfileVersion];
    v9 = [AMSBag bagForProfile:v7 profileVersion:v8];

    v10 = [[AMSDelegatePurchaseTask alloc] initWithDelegatePurchaseRequest:v5 bag:v9 account:a1[12]];
    v11 = a1[17];
    a1[17] = v10;

    v12 = cps_session_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Submitting purchase request: %@", buf, 0xCu);
    }

    objc_initWeak(buf, a1);
    v13 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A1F4;
    block[3] = &unk_10008A360;
    block[4] = a1;
    objc_copyWeak(&v16, buf);
    v15 = v6;
    dispatch_async(v13, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void sub_10005F938(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  v9 = +[AMSDelegatePurchaseTask bagSubProfile];
  +[AMSDelegatePurchaseTask bagSubProfileVersion];
  objc_claimAutoreleasedReturnValue();
  v10 = [sub_10000FA8C() bagForProfile:? profileVersion:?];

  v11 = [[AMSOpenManageDevices alloc] initWithBag:v10];
  v12 = [v11 open];
  sub_10005E3C0(*(a1 + 32));
}

void sub_10005FA14(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = v1;
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];

    v5 = +[CPSDevice currentDevice];
    v6 = objc_alloc_init(CDGetInfoRequest);
    v7 = [*(v2 + 96) ams_altDSID];
    v8 = sub_100009BF0(v7, v4);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v8];

    [(CDGetInfoRequest *)v6 setNonce:v4];
    [v5 buildVersion];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceBuildVersion:?];

    [v5 model];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceModel:?];

    sub_10000F850();
    sub_10000F960();
    v9 = sub_10000F8A4();
    sub_100008C2C(v9, v6, v10);

    sub_10000FAF4();
  }
}

void sub_10005FB44(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setPurchaseResult:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v42, v46);
    v15 = +[CPSDevice currentDevice];
    v16 = [v15 flags];
    sub_10000FAAC(v16, v17, v18, v19, v20, v21, v22, v23, v43, v47);
    v24 = [v15 model];
    [sub_10000F884(v24 v25];

    v32 = [v15 name];
    [sub_10000F884(v32 v33];

    v40 = sub_10000F9F0();
    sub_100008E10(v40, v41);
  }
}

void sub_10005FC18(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v3 = v2;
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];

    v6 = objc_alloc_init(CDGetInfoRequest);
    [*(v3 + 96) ams_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v9];

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_10005FCF0(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = v1;
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];

    v5 = +[CPSDevice currentDevice];
    v6 = objc_alloc_init(CDGetInfoRequest);
    v7 = [*(v2 + 96) ams_altDSID];
    v8 = sub_100009BF0(v7, v4);
    [(CDGetInfoRequest *)v6 setStoreAccountToken:v8];

    [(CDGetInfoRequest *)v6 setNonce:v4];
    [v5 buildVersion];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceBuildVersion:?];

    [v5 model];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F900() setDeviceModel:?];

    sub_10000F850();
    sub_10000F960();
    v9 = sub_10000F8A4();
    sub_100008C2C(v9, v6, v10);

    sub_10000FAF4();
  }
}

void sub_10005FE20(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setAuthenticationResult:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v42, v46);
    v15 = +[CPSDevice currentDevice];
    v16 = [v15 flags];
    sub_10000FAAC(v16, v17, v18, v19, v20, v21, v22, v23, v43, v47);
    v24 = [v15 model];
    [sub_10000F884(v24 v25];

    v32 = [v15 name];
    [sub_10000F884(v32 v33];

    v40 = sub_10000F9F0();
    sub_100008E10(v40, v41);
  }
}

void sub_10005FEF4(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_10005FFE8(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008820(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_1000600DC(uint64_t a1)
{
  if (a1)
  {
    sub_10000F850();
    sub_10000F960();
    v3 = sub_10000BC3C;
    v4 = &unk_10008A0D0;
    v5 = v1;
    sub_100008C2C(v1, 0, v2);
  }
}

void sub_100060138(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = objc_alloc_init(CDAppSignInDidFinishAuthRequest);
    v9 = objc_opt_self();
    v10 = sub_10000FA58(v9);

    if (v10)
    {
      [v6 authorization];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F900() setAppleIDAuthorization:?];
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_10000FA58(v11);

      if ((v12 & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = sub_10000FA58(v16);

        if (v17)
        {
          [(CDAppSignInDidFinishAuthRequest *)v8 setPlatformKeyCredentialAssertion:v6];
        }

        else
        {
          v18 = objc_opt_self();
          v19 = sub_10000FA58(v18);

          if (v19)
          {
            [(CDAppSignInDidFinishAuthRequest *)v8 setPlatformKeyCredentialRegistration:v6];
          }

          else
          {
            if (v6)
            {
              v20 = cps_session_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                v21 = 138412290;
                v22 = v6;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Unexpected credential type: %@", &v21, 0xCu);
              }
            }

            [(CDAppSignInDidFinishAuthRequest *)v8 setError:v7];
          }
        }

        goto LABEL_7;
      }

      v13 = [CASPasswordCredential alloc];
      v14 = [v6 user];
      v15 = [v6 password];
      v3 = [v13 initWithUser:v14 password:v15];

      [(CDAppSignInDidFinishAuthRequest *)v8 setPasswordCredential:v3];
    }

LABEL_7:
    sub_100008E10(a1, v8);
  }
}

void sub_100060360(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setWebCallbackURL:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
    v15 = sub_10000F9F0();
    sub_100008E10(v15, v16);
  }
}

void sub_1000603E4(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_1000604D8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [CDUserNotificationContent notificationContentForSystemService:*(a1 + 104)];
    if (v5)
    {
      v6 = *(a1 + 104);
      if (v6 == 2)
      {
        [v4 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];

        v6 = *(a1 + 104);
      }

      if (v6 == 3)
      {
        v2 = +[ACAccountStore defaultStore];
        v7 = [v2 aa_primaryAppleAccount];

        [v7 username];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];

        [v4 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];

        v6 = *(a1 + 104);
      }

      if (v6 == 4)
      {
        [v4 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F8F0() addBodyArgument:?];
      }

      v8 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v8 setDispatchQueue:*(a1 + 208)];
      sub_10000F8D4();
      sub_10000F98C();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100060674(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v44 = objc_alloc_init(CDSystemAuthenticationDidFinishAuthRequest);
    v5 = [(CDSystemAuthenticationDidFinishAuthRequest *)v44 setEnabled:a2];
    sub_10000FAC4(v5, v6, v7, v8, v9, v10, v11, v12, v40, v44);

    v13 = +[CPSDevice currentDevice];
    v14 = [v13 flags];
    sub_10000FAAC(v14, v15, v16, v17, v18, v19, v20, v21, v41, v45);
    v22 = [v13 model];
    [sub_10000F884(v22 v23];

    v30 = [v13 name];
    [sub_10000F884(v30 v31];

    v38 = sub_10000F9F0();
    sub_100008E10(v38, v39);
  }
}

void sub_100060760(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100060854(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = GestaltCopyAnswer();
    v5 = v4;
    if (!v4)
    {
      v5 = +[NSNull null];
    }

    v11[0] = v5;
    v6 = [v3 deviceName];
    v7 = v6;
    if (!v6)
    {
      v7 = +[NSNull null];
    }

    v11[1] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    if (!v6)
    {
    }

    if (!v4)
    {
    }

    v9 = objc_alloc_init(CUUserNotificationSession);
    [v9 setFlags:1];
    [v9 setIdentifier:*(a1 + 192)];
    [v9 setBundleID:@"com.apple.CompanionNotifications"];
    [v9 setCategoryID:@"CDUserNotificationCategoryGeneric"];
    [v9 setTitleKey:@"Apple TV"];
    [v9 setBodyKey:@"Use your %@ to share from “%@”."];
    [v9 setBodyArguments:v8];
    [v9 setDispatchQueue:*(a1 + 208)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100060A04(uint64_t a1, void *a2)
{
  if (a1)
  {
    v5 = a2;
    sub_100008A04(a1);
    v3 = sub_10000F9F0();
    sub_10000CD10(v3, v4);
  }
}

void sub_100060A60(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = sub_10000F9F0();
    sub_100008E10(v6, v7);
  }
}

void sub_100060AD0(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100060BC4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = +[CDUserNotificationContent restrictedAccessContentForRestrictionType:](CDUserNotificationContent, "restrictedAccessContentForRestrictionType:", [v4 restrictionType]);
    if (v6)
    {
      [v5 currentUserName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F8F0() addBodyArgument:?];

      [v5 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F8F0() addBodyArgument:?];

      v7 = [CUUserNotificationSession cad_sessionWithContent:v6];
      [v7 setDispatchQueue:*(a1 + 208)];
      sub_10000F8D4();
      sub_10000F98C();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100060CE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v44 = objc_alloc_init(CDRestrictedAccesssDidFinishAuthRequest);
    v5 = [(CDRestrictedAccesssDidFinishAuthRequest *)v44 setApproved:a2];
    sub_10000FAC4(v5, v6, v7, v8, v9, v10, v11, v12, v40, v44);

    v13 = +[CPSDevice currentDevice];
    v14 = [v13 flags];
    sub_10000FAAC(v14, v15, v16, v17, v18, v19, v20, v21, v41, v45);
    v22 = [v13 model];
    [sub_10000F884(v22 v23];

    v30 = [v13 name];
    [sub_10000F884(v30 v31];

    v38 = sub_10000F9F0();
    sub_100008E10(v38, v39);
  }
}

void sub_100060ED8(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(CDGetInfoRequest);
    sub_10000F850();
    sub_10000F960();
    v2 = sub_10000F8A4();
    sub_100008C2C(v2, v1, v3);
  }
}

id sub_100060F50(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[CDUserNotificationContent tvProviderContent];
    if (v5)
    {
      [v4 providerName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      [v4 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      v6 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v6 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100061020(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(CDGetInfoRequest);
    sub_10000F850();
    sub_10000F960();
    v2 = sub_10000F8A4();
    sub_100008C2C(v2, v1, v3);
  }
}

id sub_100061098(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[CDUserNotificationContent learnMoreContent];
    if (v4)
    {
      v5 = [v3 URL];
      v6 = [v5 host];
      v7 = [v5 path];
      v8 = [v6 stringByAppendingString:v7];

      [v4 addBodyArgument:v8];
      v9 = [v3 deviceName];
      [v4 addBodyArgument:v9];

      v10 = [CUUserNotificationSession cad_sessionWithContent:v4];
      [v10 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1000611BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_10000FB08();
  a20 = v22;
  a21 = v25;
  if (v23)
  {
    v26 = v23;
    v27 = v24;
    [sub_10000FA4C() defaultWorkspace];
    objc_claimAutoreleasedReturnValue();
    v28 = [sub_10000FB80() URL];

    a11 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
    a12 = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:&a12 forKeys:&a11 count:1];
    objc_claimAutoreleasedReturnValue();
    v29 = [sub_10000FA4C() openURL:v28 withOptions:v21];

    if ((v29 & 1) == 0)
    {
      v30 = cps_session_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = 0;
        sub_10000FA08(&_mh_execute_header, v30, v31, "Failed to open Learn More URL: %@", &a9);
      }
    }

    sub_1000612F4(v26);
  }

  sub_10000FAF4();
}

void sub_1000612F4(uint64_t a1)
{
  if (a1)
  {
    v32 = objc_alloc_init(CDLearnMoreDidFinishRequest);
    v2 = +[CPSDevice currentDevice];
    v3 = [v2 flags];
    sub_10000FAAC(v3, v4, v5, v6, v7, v8, v9, v10, v29, v32);
    v11 = [v2 model];
    [sub_10000F884(v11 v12];

    v19 = [v2 name];
    [sub_10000F884(v19 v20];

    v27 = sub_10000F9F0();
    sub_100008E10(v27, v28);
  }
}

id sub_1000613A8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = +[CDUserNotificationContent dedicatedCameraContentForDeviceType:](CDUserNotificationContent, "dedicatedCameraContentForDeviceType:", [v4 deviceType]);
    if (v6)
    {
      [v5 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F8F0() addBodyArgument:?];

      v7 = [CUUserNotificationSession cad_sessionWithContent:v6];
      [v7 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100061468(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  sub_10005E3C0(v2);
}

void sub_1000615E8(uint64_t a1)
{
  if (a1)
  {
    v3 = +[CPSDevice currentDevice];
    v4 = objc_alloc_init(CDGetInfoRequest);
    -[CDGetInfoRequest setDeviceFlags:](v4, "setDeviceFlags:", [v3 flags]);
    [v3 model];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F8F0() setDeviceModel:?];

    [v3 name];
    objc_claimAutoreleasedReturnValue();
    [sub_10000F8F0() setDeviceName:?];

    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];

    v7 = +[ACAccountStore defaultStore];
    v8 = [v7 aa_primaryAppleAccount];

    v9 = [v8 aa_altDSID];
    v10 = sub_100009BF0(v9, v6);
    [(CDGetInfoRequest *)v4 setAppleAccountToken:v10];

    [(CDGetInfoRequest *)v4 setNonce:v6];
    sub_10000F850();
    sub_10000F960();
    v12 = sub_10000DF7C;
    v13 = &unk_10008A0D0;
    v14 = a1;
    sub_100008C2C(a1, v4, v11);
  }
}

id sub_10006176C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[CDUserNotificationContent continueOnContent];
    if (v7)
    {
      v8 = [v5 notificationTitleOverride];

      if (v8)
      {
        [v5 notificationTitleOverride];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F900() setTitleKey:?];
      }

      else
      {
        [v5 deviceName];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F900() addTitleArgument:?];
      }

      v10 = [v5 notificationBodyOverride];

      if (v10)
      {
        [v5 notificationBodyOverride];
        objc_claimAutoreleasedReturnValue();
        [sub_10000F900() setBodyKey:?];
      }

      else
      {
        v10 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];
        v11 = [v10 localizedName];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = &stru_10008C138;
        }

        [v7 addBodyArgument:v13];
      }

      v14 = [v5 deviceModel];

      if (v14)
      {
        v15 = [v5 deviceModel];
        v16 = [UTType _typeWithDeviceModelCode:v15];

        v17 = [v16 identifier];
        v18 = [ISSymbol symbolForTypeIdentifier:v17 error:0];
        v19 = [v18 name];

        if (v19)
        {
          [v7 setIconSystemName:v19];
        }
      }

      v9 = [CUUserNotificationSession cad_sessionWithContent:v7];
      [v9 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100061988(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = sub_10000F9F0();
    sub_100008E10(v6, v7);
  }
}

void sub_1000619F8(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100061AEC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[CDUserNotificationContent unrecognizedUserContent];
    if (v5)
    {
      [v4 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      v6 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v6 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100061B9C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = +[CPSDevice currentDevice];
    v7 = [v6 flags];
    sub_10000FAAC(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36);
    v15 = [v6 model];
    [sub_10000F884(v15 v16];

    v23 = [v6 name];
    [sub_10000F884(v23 v24];

    v31 = sub_10000F9F0();
    sub_100008E10(v31, v32);
  }
}

void sub_100061C5C(uint64_t a1)
{
  v4 = cps_session_log();
  if (sub_10000FA34(v4))
  {
    sub_10000F894();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  [*(*(a1 + 32) + 48) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  v14 = NSDebugDescriptionErrorKey;
  v15 = @"User canceled on notification.";
  [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  objc_claimAutoreleasedReturnValue();
  [sub_10000FA8C() errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v12 = sub_10000FA9C();
  sub_100061B9C(v12, v13);
}

void sub_100061D78(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

void sub_100061E6C(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB3C();
    v3 = v2;
    v4 = v1;
    v5 = objc_alloc_init(sub_10000FB80());
    sub_10000FB1C();
    [v6 setValues:?];

    sub_10000FAC4(v7, v8, v9, v10, v11, v12, v13, v14, v42, v46);
    v15 = +[CPSDevice currentDevice];
    v16 = [v15 flags];
    sub_10000FAAC(v16, v17, v18, v19, v20, v21, v22, v23, v43, v47);
    v24 = [v15 model];
    [sub_10000F884(v24 v25];

    v32 = [v15 name];
    [sub_10000F884(v32 v33];

    v40 = sub_10000F9F0();
    sub_100008E10(v40, v41);
  }
}

void sub_100061F40(uint64_t a1)
{
  if (a1)
  {
    sub_10000FB08();
    v2 = +[NSUUID UUID];
    v3 = [v2 UUIDString];

    v4 = objc_alloc_init(CDGetInfoRequest);
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    [v6 aa_altDSID];
    objc_claimAutoreleasedReturnValue();
    sub_10000F9FC();
    v9 = sub_100009BF0(v7, v8);
    sub_10000F9B8(v9);

    sub_10000FA74();
    sub_10000F850();
    sub_10000F960();
    v10 = sub_10000F870();
    sub_100008C2C(v10, v11, v12);

    sub_10000FAF4();
  }
}

id sub_100062034(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[CDUserNotificationContent incomingCallsContent];
    if (v5)
    {
      [v4 deviceName];
      objc_claimAutoreleasedReturnValue();
      [sub_10000F96C() addBodyArgument:?];

      v6 = [CUUserNotificationSession cad_sessionWithContent:v5];
      [v6 setDispatchQueue:*(a1 + 208)];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000620E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(sub_10000FA4C());
    sub_10000FB68(v4, v5);

    v6 = +[CPSDevice currentDevice];
    v7 = [v6 flags];
    sub_10000FAAC(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36);
    v15 = [v6 model];
    [sub_10000F884(v15 v16];

    v23 = [v6 name];
    [sub_10000F884(v23 v24];

    v31 = sub_10000F9F0();
    sub_100008E10(v31, v32);
  }
}

void sub_1000621A4(uint64_t a1)
{
  v4 = cps_session_log();
  if (sub_10000FA34(v4))
  {
    sub_10000F894();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  [*(*(a1 + 32) + 48) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  v14 = NSDebugDescriptionErrorKey;
  v15 = @"User canceled on notification.";
  [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  objc_claimAutoreleasedReturnValue();
  [sub_10000FA8C() errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v12 = sub_10000FA9C();
  sub_1000620E4(v12, v13);
}

void sub_1000622C0()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000623CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10000FA08(&_mh_execute_header, a3, a3, "Received unknown auth type: %ld", a1);
}

void sub_10006240C()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062448(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEFAULT, "Continue On session: Me device is not this device.", v2, 2u);
  }
}

void sub_1000624A4(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_100062508(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_10006256C(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_1000625D0(void *a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if (!a1[8])
  {
    sub_10005F538(a1);
  }
}

void sub_100062640(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_1000626A4(uint64_t a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_10005E3C0(a1);
}

void sub_100062708(void *a1)
{
  v3 = cps_session_log();
  if (sub_10000FA34(v3))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  if (!a1[8])
  {
    sub_10005F538(a1);
  }
}

void sub_100062848(NSObject *a1, void *a2)
{
  if (sub_10000FA34(a1))
  {
    sub_10000F894();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = v2;
}

void sub_10006289C()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062940(uint64_t a1, uint64_t a2)
{
  v3 = [[CPSStorePurchaseResponse alloc] initWithPurchaseResult:a1];
  sub_10005ED54(a2, v3);
}

void sub_100062BAC(char *a1, uint64_t a2)
{
  v4 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"webRequest != ((void*)0)"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    sub_10000FB80();
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138544642;
    v9 = a1;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CDProviderSession.m";
    v16 = 1024;
    v17 = 1794;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_100062DB0()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062DEC()
{
  sub_10000FA28();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062E90(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 64));
    if ((*(a1 + 49) & 1) == 0)
    {
      *(a1 + 49) = 1;
      v2 = [*(a1 + 24) remoteObjectProxyWithErrorHandler:&stru_10008A670];
      [v2 cancel];

      [*(a1 + 16) invalidate];
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;

      [*(a1 + 24) invalidate];
      v4 = *(a1 + 24);
      *(a1 + 24) = 0;

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 32);
      *(a1 + 32) = 0;

      if (*(a1 + 56))
      {
        sub_100010AA4();
        v6();
        v7 = *(a1 + 56);
        *(a1 + 56) = 0;
      }

      v8 = *(a1 + 128);
      if (v8)
      {
        v9 = NSErrorF();
        (*(v8 + 16))(v8, 0, v9);

        v10 = *(a1 + 128);
        *(a1 + 128) = 0;
      }

      if (*(a1 + 72))
      {
        sub_100010AA4();
        v11();
        v12 = *(a1 + 72);
        *(a1 + 72) = 0;
      }
    }
  }
}

void sub_100062FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    *(a1 + 48) = 1;
    if (*(a1 + 88))
    {
      sub_100063090(a1);
      sub_100063100(a1);
      sub_100010AA4();
      v6();
    }

    else
    {
      v4 = NSErrorWithOSStatusF();
      sub_100010AA4();
      v5();
    }

    v3 = v7;
  }
}

id sub_100063090(id result)
{
  if (result)
  {
    v1 = result;
    v2 = +[NSXPCListener anonymousListener];
    v3 = *(v1 + 2);
    *(v1 + 2) = v2;

    [*(v1 + 2) _setQueue:*(v1 + 8)];
    [*(v1 + 2) setDelegate:v1];
    v4 = *(v1 + 2);

    return [v4 resume];
  }

  return result;
}

void sub_100063100(uint64_t a1)
{
  if (a1)
  {
    v7 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.CompanionViewService" viewControllerClassName:*(a1 + 88)];
    v2 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v3 = [*(a1 + 16) endpoint];
    v4 = [v3 _endpoint];
    [v2 setXpcEndpoint:v4];

    sub_10006323C(a1);
    objc_claimAutoreleasedReturnValue();
    [sub_100010AB0() setUserInfo:?];

    v5 = [SBSRemoteAlertHandle newHandleWithDefinition:v7 configurationContext:v2];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;

    [*(a1 + 32) registerObserver:a1];
    [*(a1 + 32) activateWithContext:0];
  }
}

id *sub_100063200(id *a1)
{
  if (a1)
  {
    a1 = [a1[3] remoteObjectProxyWithErrorHandler:&stru_10008A670];
    v1 = vars8;
  }

  return a1;
}

void *sub_10006323C(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = sub_1000632C0(v1);
    [v2 setObject:v3 forKeyedSubscript:@"presentationContextData"];

    v1 = [v2 copy];
  }

  return v1;
}

void *sub_1000632C0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(CPSViewServicePresentationContext);
    [v2 setDeviceName:v1[10]];
    [v2 setSystemAuthenticationRequest:v1[13]];
    [v2 setWebAuthenticationRequest:v1[14]];
    [v2 setProxiedAppDomains:v1[15]];
    [v2 setSharingData:v1[12]];
    [v2 setRestrictedAccessRequest:v1[17]];
    [v2 setStoreAuthenticationRequest:v1[18]];
    [v2 setTvProviderRequest:v1[20]];
    [v2 setDedicatedCameraRequest:v1[21]];
    v6 = 0;
    v1 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v6];
    v3 = v6;
    if (!v1)
    {
      v4 = cps_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to encode presentation context: %@", buf, 0xCu);
      }
    }
  }

  return v1;
}

void sub_100063440(uint64_t a1)
{
  if (sub_100010AC0(a1))
  {
    sub_100010A94();
    v3();
    sub_100010AD0();
    v2 = *(v1 + 32);
  }

  sub_100062E90(v2);
}

void sub_10006352C(uint64_t a1)
{
  if (sub_100010AC0(a1))
  {
    sub_100010A94();
    v3();
    sub_100010AD0();
    v2 = *(v1 + 32);
  }

  sub_100062E90(v2);
}

void sub_100063578(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 128))
  {
    sub_100010AA4();
    v3();
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;

    v2 = *(a1 + 32);
  }

  sub_100062E90(v2);
}

void sub_1000635DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 128))
  {
    sub_100010A94();
    v3();
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;

    v2 = *(a1 + 32);
  }

  sub_100062E90(v2);
}

void sub_100063640(uint64_t a1)
{
  if (sub_100010AC0(a1))
  {
    sub_100010A94();
    v3();
    sub_100010AD0();
    v2 = *(v1 + 32);
  }

  sub_100062E90(v2);
}

void sub_10006368C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "remoteViewService proxy error: %@", &v2, 0xCu);
}

void sub_100063704(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "View service invalidated: %@, error: %@", &v3, 0x16u);
}

void sub_1000637E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to start rapport discovery: %@", &v2, 0xCu);
}

void sub_10006385C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Device found with nil IDS identifier: %@", &v2, 0xCu);
}

void sub_1000638D4(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to archive: %@", &v1, 0xCu);
}

void sub_100063954(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to unarchive: %@", &v1, 0xCu);
}

id sub_1000639D4(id a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = [a1 request];
    v8 = [v7 appleAccountAltDSID];
    v9 = v8;
    v10 = 0;
    if (v5 && v8)
    {
      v11 = [NSString stringWithFormat:@"%@+%@", v8, v5];
      v12 = [v11 dataUsingEncoding:4];
      if (v12)
      {
        v13 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
        [v12 bytes];
        [v12 length];
        CryptoHashOneShot();
        v10 = [NSData dataWithBytesNoCopy:v13 length:64 freeWhenDone:1];
      }

      else
      {
        v10 = 0;
      }
    }

    a1 = [v10 isEqualToData:v6];
  }

  return a1;
}

uint64_t sub_100063B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 request];
    v8 = [v7 approversAppleAccountAltDSIDs];

    v17 = sub_10001AC2C(v9, v10, v11, v12, v13, v14, v15, v16);
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(v8);
          }

          v21 = 0;
          if (v6 && *(8 * i))
          {
            v22 = [NSString stringWithFormat:@"%@+%@", *(8 * i), v6];
            v23 = [v22 dataUsingEncoding:4];
            if (v23)
            {
              v24 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
              [v23 bytes];
              [v23 length];
              CryptoHashOneShot();
              v21 = [NSData dataWithBytesNoCopy:v24 length:64 freeWhenDone:1];
            }

            else
            {
              v21 = 0;
            }
          }

          if ([v21 isEqualToData:v5])
          {

            a1 = 1;
            goto LABEL_18;
          }
        }

        v18 = sub_10001AC2C(v25, v26, v27, v28, v29, v30, v31, v32);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    a1 = 0;
  }

LABEL_18:

  return a1;
}

void sub_100063DC4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_10000F8B4();
    v4[1] = 3221225472;
    v4[2] = sub_10001AF18;
    v4[3] = &unk_10008A7A8;
    v4[4] = a1;
    v5 = v3;
    [a1 _prepareForActivationWithCompletionHandler:v4];
  }
}

void sub_100063E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1 _requireOwnerDevice];
    v4 = objc_alloc_init(RPCompanionLinkClient);
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;

    [*(a1 + 16) setDispatchQueue:*(a1 + 64)];
    [a1 _configureRapportClient:*(a1 + 16)];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10001B078;
    v31 = &unk_10008A780;
    v32 = a1;
    sub_10001C0FC();
    [v6 cad_registerRequestID:? options:? requireOwnerDevice:? handler:?];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10001B444;
    v26 = &unk_10008A7D0;
    v27 = a1;
    sub_10001C0FC();
    [v7 cad_registerEventID:? options:? requireOwnerDevice:? handler:?];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10001B644;
    v21 = &unk_10008A780;
    v22 = a1;
    sub_10001C0FC();
    [v8 cad_registerRequestID:? options:? requireOwnerDevice:? handler:?];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10001B870;
    v16 = &unk_10008A7D0;
    v17 = a1;
    sub_10001C0FC();
    [v9 cad_registerEventID:? options:? requireOwnerDevice:? handler:?];
    v10 = *(a1 + 16);
    sub_10000F8B4();
    v11[1] = 3221225472;
    v11[2] = sub_10001BA44;
    v11[3] = &unk_10008A7A8;
    v11[4] = a1;
    v12 = v3;
    [v10 activateWithCompletion:v11];
  }
}

id sub_10006406C(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(CDIDSService);
    v3 = *(v1 + 5);
    *(v1 + 5) = v2;

    [*(v1 + 5) setDispatchQueue:*(v1 + 8)];
    v4 = *(v1 + 5);

    return [v4 activate];
  }

  return result;
}

void sub_1000640CC(id *a1)
{
  if (a1)
  {
    v2 = [a1 _idsMessageRecipientUsernames];
    if ([v2 count])
    {
      [a1[5] sendMessage:0 toUsernames:v2];
    }

    else
    {
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v10 = 0;
        sub_10001C108(&_mh_execute_header, v4, v5, "IDS recipient usernames is nil or empty. Will not send message.", v6, v7, v8, v9, v10);
      }
    }
  }
}

void sub_100064160(id *a1)
{
  if (a1)
  {
    v2 = [a1 _idsMessageRecipientUsernames];
    if ([v2 count])
    {
      [a1[5] sendMessage:1 toUsernames:v2];
    }

    else
    {
      v3 = cps_session_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v10 = 0;
        sub_10001C108(&_mh_execute_header, v4, v5, "IDS recipient usernames is nil or empty. Will not send message.", v6, v7, v8, v9, v10);
      }
    }
  }
}

void sub_1000641F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(SFService);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    [*(a1 + 24) setDispatchQueue:*(a1 + 64)];
    [*(a1 + 24) setDeviceActionType:{objc_msgSend(a1, "_deviceActionType")}];
    v6 = *(a1 + 24);
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    [v6 setIdentifier:v8];

    [*(a1 + 24) setAdvertiseRate:50];
    v9 = *(a1 + 24);
    sub_10000F8B4();
    v10[1] = 3221225472;
    v10[2] = sub_10001BAAC;
    v10[3] = &unk_10008A7A8;
    v10[4] = a1;
    v11 = v3;
    [v9 activateWithCompletion:v10];
  }
}

void sub_100064308(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting get notif info request: %@", &v2, 0xCu);
}

void sub_100064380(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Authentication session failed: %@", &v2, 0xCu);
}

void *sub_1000643F8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1[16];
    v7 = a2;
    v8 = [v6 ams_altDSID];
    v9 = v8;
    v10 = 0;
    if (v5 && v8)
    {
      v11 = [NSString stringWithFormat:@"%@+%@", v8, v5];
      v12 = [v11 dataUsingEncoding:4];
      if (v12)
      {
        v13 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
        [v12 bytes];
        [v12 length];
        CryptoHashOneShot();
        v10 = [NSData dataWithBytesNoCopy:v13 length:64 freeWhenDone:1];
      }

      else
      {
        v10 = 0;
      }
    }

    a1 = [v10 isEqualToData:v7];
  }

  return a1;
}

void *sub_1000645BC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a1[16];
    v7 = a2;
    v8 = [v6 ams_altDSID];
    v9 = v8;
    v10 = 0;
    if (v5 && v8)
    {
      v11 = [NSString stringWithFormat:@"%@+%@", v8, v5];
      v12 = [v11 dataUsingEncoding:4];
      if (v12)
      {
        v13 = malloc_type_malloc(0x40uLL, 0xFD9CD80CuLL);
        [v12 bytes];
        [v12 length];
        CryptoHashOneShot();
        v10 = [NSData dataWithBytesNoCopy:v13 length:64 freeWhenDone:1];
      }

      else
      {
        v10 = 0;
      }
    }

    a1 = [v10 isEqualToData:v7];
  }

  return a1;
}

void sub_100064754(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load legacy purchase request: %@", &v3, 0xCu);
}

void sub_1000647D0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [v3 domain];
    if ([v4 isEqualToString:CPSErrorDomain])
    {
      v5 = [v8 code];

      if (v5 == 104)
      {
        v6 = 2;
LABEL_7:
        v7 = [a1 request];
        +[CPSMetrics sendSystemSessionCompletedEvent:](CPSMetrics, "sendSystemSessionCompletedEvent:", [v7 service], v6);

        v3 = v8;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = 3;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100064978(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasStorePurchaseEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064A24(uint64_t a1, void *a2)
{
  v21 = sub_100020CFC(a1, a2);
  v5 = v2;
  v6 = v3;
  if (v4)
  {
    v7 = [v5 overrideBundleIdentifier];

    if (v7)
    {
      if ([v21 hasAppSignInOverrideBundleIdentifierEntitlement])
      {
        if (_BSIsInternalInstall())
        {
          goto LABEL_5;
        }

        v16 = CPSErrorDomain;
        v17 = 101;
      }

      else
      {
        v16 = CPSErrorDomain;
        v17 = 103;
      }

      [NSError errorWithDomain:v16 code:v17 userInfo:0];
      objc_claimAutoreleasedReturnValue();
      v18 = sub_100020CC0();
      v19(v18);
      goto LABEL_9;
    }

LABEL_5:
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v20, v21);
LABEL_9:
  }
}

void sub_100064B18(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasSystemAuthenticationEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064BC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v7 = sub_100020D48(a1, a2, a3, a4);
    v8 = v6;
    v9 = v5;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    sub_100020D18(WeakRetained);
  }
}

void sub_100064C3C(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasRestrictedAccessEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064CE8(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasStoreAuthenticationEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064D94(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasDedicatedCameraEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064E40(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasIncomingCallsEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064EEC(uint64_t a1, void *a2)
{
  v20 = sub_100020CFC(a1, a2);
  v6 = v2;
  v7 = v3;
  if (v4)
  {
    if ([v20 hasUserDefaultsEntitlement])
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      sub_100020CD8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    else
    {
      sub_100020D3C();
      [v16 errorWithDomain:? code:? userInfo:?];
      objc_claimAutoreleasedReturnValue();
      v17 = sub_100020CC0();
      v18(v17);
    }
  }
}

void sub_100064F98(void *a1, os_signpost_id_t a2, NSObject *a3)
{
  if (a2 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(a3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, a3, OS_SIGNPOST_INTERVAL_BEGIN, a2, "StartAuthentication", "", v5, 2u);
  }
}

void sub_100065014()
{
  sub_10000F92C();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065104()
{
  sub_10000F92C();
  sub_10000F938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000651FC(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed. Error code: %d, Error: %s", v5, 0x12u);
}

Swift::String __swiftcall CPSLocalizationKey.resolve()()
{
  v0 = CPSLocalizationKey.resolve()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}