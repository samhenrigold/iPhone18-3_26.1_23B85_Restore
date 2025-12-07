uint64_t sub_10005FFA8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  v4 = string;
  if (string && !strcmp(string, "Payload"))
  {
    v9 = xpc_dictionary_get_string(v2, "Payload");
    v10 = v9;
    if (v9 && !strcmp(v9, "com.apple.stockholm.lpem.changed"))
    {
      v7 = 1;
      goto LABEL_7;
    }

    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = v10;
      v6 = "Ignoring event %s";
      goto LABEL_5;
    }
  }

  else
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = v4;
      v6 = "Ignoring eventName %s";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v11, 0xCu);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

int64_t sub_100060110(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = xpc_dictionary_get_value(v2, "lpemFeatures");

  value = xpc_int64_get_value(v3);
  return value;
}

void sub_100060170(dispatch_queue_t *a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v2 = a1;
    objc_sync_enter(v2);
    v3 = v2[3];
    objc_sync_exit(v2);

    if (v3 == 4279897)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v4 = dispatch_group_create();
      dispatch_group_enter(v4);
      v5 = +[NFHardwareManager sharedHardwareManager];
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100060B10;
      v17 = &unk_1004C32A8;
      v6 = v4;
      v18 = v6;
      v19 = &v20;
      v7 = [v5 startLPEMConfigSession:&v14];

      dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v8 = v2;
      objc_sync_enter(v8);
      v9 = v21[3];
      objc_opt_self();
      v2[3] = ((v9 & 0xE) != 0);
      v10 = [_TtC10seserviced20SESBootScopedStorage shared:v14];
      v11 = [NSNumber numberWithUnsignedInteger:v2[3]];
      [v10 setNumberFor:@"lpem.state" value:v11];

      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v2[3];
        *buf = 134217984;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "LPEM enabled value %lu", buf, 0xCu);
      }

      objc_sync_exit(v8);
      _Block_object_dispose(&v20, 8);
    }
  }
}

void sub_1000603A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_sync_exit(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000603D4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = [*(a1 + 32) BOOLForKey:@"debug.install.logging.applet"];
    v3 = [*(a1 + 32) stringForKey:@"debug.logging.profile.to.install"];
    v4 = [SESBootUUID isFirstLaunchAfterBootForKey:@"debug.logging.last.check.uuid"];
    if (v4)
    {
      sub_1003B0C90();
    }

    else
    {
      v5 = a1;
      objc_sync_enter(v5);
      if (v5[17] == v2 && (!*(v5 + 3) || v5[16] == 1))
      {
        v8 = SESDefaultLogObject();
        sub_1003B0C30(v8, v5);
        goto LABEL_8;
      }

      objc_sync_exit(v5);
    }

    v6 = os_transaction_create();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006056C;
    v9[3] = &unk_1004C3280;
    v9[4] = a1;
    v12 = v2;
    v13 = v4;
    v10 = v3;
    v11 = v6;
    v7 = v6;
    sub_1003AF710(SecureElementManager, @"Evaluate Conditions for Logging Applet", v9);

LABEL_8:
  }
}

void sub_10006056C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get SE, logging applet pref dropped on the floor", buf, 2u);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006069C;
    block[3] = &unk_1004C3258;
    block[4] = v8;
    v11 = v5;
    v14 = *(a1 + 56);
    v12 = *(a1 + 40);
    v15 = *(a1 + 57);
    v13 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

void sub_1000606B4(dispatch_queue_t *a1, void *a2, int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v11 = a1;
    objc_sync_enter(v11);
    if (a5)
    {
      v12 = [@"A000000704E000010002" hexStringAsData];
      *(v11 + 16) = sub_1003AF34C(v9, v12);

      [v11[4] setBool:*(v11 + 16) forKey:@"debug.have.logging.applet"];
      v13 = [@"A000000704E000010000" hexStringAsData];
      LOBYTE(v12) = sub_1003AF34C(v9, v13);

      v14 = [@"A000000704E000010001" hexStringAsData];
      v15 = sub_1003AF34C(v9, v14);

      *(v11 + 17) = v12 & v15;
      [NSObject setBool:"setBool:forKey:" forKey:?];
    }

    if ((v11[2] & 1) == 0 && (v11[3] || a3))
    {
      v16 = sub_1003B0A20(v11, v9);
      if (v16)
      {
        v17 = SESDefaultLogObject();
        sub_1003B0CA4(v17, v16);
        goto LABEL_23;
      }

      *(v11 + 16) = 1;
      [v11[4] setBool:1 forKey:@"debug.have.logging.applet"];
    }

    if (*(v11 + 17) == a3)
    {
      v16 = SESDefaultLogObject();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v33 = 67109120;
      LODWORD(v34[0]) = a3;
      v18 = "Synced (after checking with SE) at %d";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 8;
      goto LABEL_13;
    }

    if (a3)
    {
      if ([v10 isEqualToString:@"Engineering"])
      {
        v22 = 1;
        v23 = "SLAMInstallLogger_v0_DevelopmentProfile";
LABEL_21:
        v16 = sub_1003AAA98(v9, v23);
        if (v16)
        {
          v25 = SESDefaultLogObject();
          sub_1003B0D34(v25, v16);
          goto LABEL_23;
        }

        v26 = [@"A000000704E000010000" hexStringAsData];
        v27 = sub_1003AF34C(v9, v26);

        v28 = [@"A000000704E000010001" hexStringAsData];
        v29 = sub_1003AF34C(v9, v28);

        v30 = v27 & v29;
        if (v22 == v30)
        {
          v31 = SESDefaultLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Successfully set up or deleted logging instances", &v33, 2u);
          }

          *(v11 + 17) = v30;
          [v11[4] setBool:v30 forKey:@"debug.have.logging.profile"];
          v32 = v11[4];
          if (v30)
          {
            [v32 setObject:v10 forKey:@"debug.logging.profile.did.install"];
          }

          else
          {
            [v32 removeObjectForKey:@"debug.logging.profile.did.install"];
          }

          goto LABEL_24;
        }

        v16 = SESDefaultLogObject();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_23:

LABEL_24:
          objc_sync_exit(v11);

          goto LABEL_25;
        }

        v33 = 67109376;
        LODWORD(v34[0]) = v22;
        WORD2(v34[0]) = 1024;
        *(v34 + 6) = v30;
        v18 = "Failed to set up logging instances shouldInstall %d isAppletInstalled %d; ignoring logging preference";
        v19 = v16;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 14;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v19, v20, v18, &v33, v21);
        goto LABEL_23;
      }

      v24 = SESDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412290;
        v34[0] = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Can't find install script for profile %@", &v33, 0xCu);
      }

      [v11[4] setBool:0 forKey:@"debug.install.logging.applet"];
    }

    v22 = 0;
    v23 = "SLAMDeleteSunspriteLoggingApplets";
    goto LABEL_21;
  }

LABEL_25:
}

void sub_100060B10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to start LPEM session with error: %@", buf, 0xCu);
    }

    v9 = SESEnsureError();
  }

  else
  {
    v12 = 0;
    v8 = [v5 getLPEMFeaturesWithError:&v12];
    v9 = v12;
    *(*(*(a1 + 40) + 8) + 24) = v8;
    if (v9)
    {
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "getLPEMFeatures failed with error: %@", buf, 0xCu);
      }
    }

    [v5 endSession];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100060C88(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [@"A000000704E000010002" hexStringAsData];
    v5 = sub_1003AF34C(v3, v4);

    if (v5)
    {
      v6 = a1;
      objc_sync_enter(v6);
      if (*(v6 + 3) || (*(v6 + 17) & 1) != 0)
      {
        objc_sync_exit(v6);
      }

      else
      {
        objc_sync_exit(v6);

        v7 = SESDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deleting unused Logger Applet", buf, 2u);
        }

        v8 = sub_1003AAA98(v3, "SLAMDeleteLogger");
        if (v8)
        {
          v9 = SESDefaultLogObject();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "SLAM Failed, could not delete logging applet!", v11, 2u);
          }
        }

        v10 = v6;
        objc_sync_enter(v10);
        *(v10 + 16) = 0;
        [v10[4] setBool:0 forKey:@"debug.have.logging.applet"];
        objc_sync_exit(v10);
      }
    }
  }
}

void sub_100060F64(id *a1)
{
  if ([a1[4] isEqualToString:@"com.apple.nfcd.xpc.sesd.events"])
  {
    if (sub_10005FFA8(SESDebugServer, a1[5]))
    {
      v2 = sub_100060110(SESDebugServer, a1[5]);
      v3 = SESDefaultLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received event for LPEM state change value %lu", &v10, 0xCu);
      }

      v4 = a1[6];
      objc_sync_enter(v4);
      v5 = *(a1[6] + 3);
      objc_opt_self();
      *(a1[6] + 3) = (v2 & 0xE) != 0;
      v7 = *(a1[6] + 3) == 1 && v5 == 0;
      objc_sync_exit(v4);

      if (v7)
      {
        sub_1000603D4(a1[6]);
      }
    }
  }

  else
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignoring stream %@", &v10, 0xCu);
    }
  }
}

void sub_100061164(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100061184(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_INFO, a4, va, 2u);
}

uint64_t sub_100061A24(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESAssertion invalidate %@", &v5, 0xCu);
  }

  [*(a1 + 32) stop:0];
  return (*(*(a1 + 40) + 16))();
}

void sub_100062234(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStateDescriptor:v3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000622D4;
  v5[3] = &unk_1004C32D0;
  v5[4] = *(a1 + 40);
  [v4 setUpdateHandler:v5];
}

uint64_t sub_1000633DC(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession endSession %@", &v5, 0xCu);
  }

  [*(a1 + 32) endSessionInternal:0];
  return (*(*(a1 + 40) + 16))();
}

void sub_100063578(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v44 = v3;
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ setActiveKey %@", buf, 0x16u);
  }

  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v9 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);

    return;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  v5 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
  v6 = [*(a1 + 40) hexStringAsData];
  v7 = [v5 isEqualToData:v6];

  if (v7)
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Key already active", buf, 2u);
    }

    goto LABEL_18;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_17:
    v33 = *(a1 + 32);
    v34 = *(v33 + 64);
    *(v33 + 64) = 0;

    *(*(a1 + 32) + 57) = 0;
LABEL_18:
    (*(*(a1 + 48) + 16))();
    return;
  }

  v13 = [v12 hexStringAsData];
  v14 = +[_TtC10seserviced14AlishaExternal shared];
  v15 = [v14 getAllEndpoints];

  v16 = [v15 allObjects];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100063A60;
  v39[3] = &unk_1004C31A8;
  v17 = v13;
  v40 = v17;
  v18 = [v16 find:v39];

  v19 = *(a1 + 32);
  if (v18)
  {
    objc_storeStrong((v19 + 64), v18);
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      *buf = 138412290;
      v44 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Active key set to %@", buf, 0xCu);
    }

    v22 = +[_TtC10seserviced14AlishaExternal shared];
    v23 = [v18 bleUUID];
    v24 = [NSUUID ses_withUUIDString:v23];
    v25 = [v22 isPeerConnectedWithClientUUID:v24];

    v26 = @"com.apple.secureelementservice.dck.event.vehicle.did.disconnect";
    v27 = *(a1 + 32);
    if (v25)
    {
      v26 = @"com.apple.secureelementservice.dck.event.vehicle.did.connect";
    }

    v42[0] = v26;
    v41[0] = @"xpcEventName";
    v41[1] = @"appletIdentifier";
    v28 = [v27[8] appletIdentifier];
    v29 = [v28 asHexString];
    v41[2] = @"keyIdentifier";
    v30 = *(a1 + 40);
    v42[1] = v29;
    v42[2] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v32 = [v18 publicKeyIdentifier];
    [v27 sendEvent:v31 keyIdentifier:v32];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v35 = *(v19 + 64);
    *(v19 + 64) = 0;

    *(*(a1 + 32) + 57) = 0;
    v36 = *(a1 + 48);
    v37 = SESDefaultLogObject();
    v38 = SESCreateAndLogError();
    (*(v36 + 16))(v36, 0, v38);
  }
}

BOOL sub_100063A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 publicKeyIdentifier];
  if ([v4 isEqualToData:v5])
  {
    v6 = [v3 bleUUID];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100063BB4(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ setSecureElementToken", &v7, 0xCu);
  }

  if ([*(a1 + 32) isActive])
  {
    if ([*(a1 + 32) isWaitingForSecureElement])
    {
      [*(a1 + 32) pushSecureElementToken:*(a1 + 40)];
      [*(a1 + 32) setIsWaitingForSecureElement:0];
    }

    else
    {
      [*(a1 + 32) setSeToken:*(a1 + 40)];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = SESDefaultLogObject();
    v6 = SESCreateAndLogError();
    (*(v4 + 16))(v4, 0, v6);
  }
}

void sub_100063DC8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ setAuthorization", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) isActive];
  v5 = *(a1 + 40);
  if (v4)
  {
    (*(v5 + 16))(v5, 1, 0);
  }

  else
  {
    v6 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
    (*(v5 + 16))(v5, 0, v7);
  }
}

void sub_100063FB4(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v13 = 138412546;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ preArmActiveKey %d", &v13, 0x12u);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && (v5 = *(a1 + 32), *(v5 + 64)))
  {
    *(v5 + 57) = *(a1 + 48);
    if ([*(a1 + 32) isPreArmed])
    {
      v6 = +[_TtC10seserviced14AlishaExternal shared];
      v7 = [NSUUID alloc];
      v8 = [*(*(a1 + 32) + 64) bleUUID];
      v9 = [v7 initWithUUIDString:v8];
      [v6 pauseRangingFor:v9];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    (*(v10 + 16))(v10, 0, v12);
  }
}

void sub_1000642D8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40) != 0;
    *buf = 138413058;
    v13 = v5;
    v14 = 1024;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ sendRKEFunction 0x%X action 0x%X authorization %d", buf, 0x1Eu);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && *(*(a1 + 32) + 64))
  {
    v7 = +[_TtC10seserviced14AlishaExternal shared];
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
    [v7 sendRKERequestWithFunctionIdentifier:v8 actionIdentifier:v9 keyIdentifier:v10 requestType:0 actionType:*(a1 + 80) arbitraryData:*(a1 + 48) enduringRequestHandler:0 authorization:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    v11 = *(a1 + 56);
    v7 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v11 + 16))(v11, 0, v10);
  }
}

void sub_100064584(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v11 = 138412546;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ cancelRKEFunction 0x%X", &v11, 0x12u);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && *(*(a1 + 32) + 64))
  {
    v5 = +[_TtC10seserviced14AlishaExternal shared];
    v6 = *(a1 + 48);
    v7 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
    v8 = [v5 cancelRKERequestWithFunctionIdentifier:v6 keyIdentifier:v7];

    (*(*(a1 + 40) + 16))(*(a1 + 40), v8 == 0, v8);
  }

  else
  {
    v9 = *(a1 + 40);
    v8 = SESDefaultLogObject();
    v10 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v10);
  }
}

void sub_100064838(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESDCKSession %@ sendPassthroughMessage", &v14, 0xCu);
  }

  if ([*(a1 + 32) isActive])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    if (v5)
    {
      if (*(v4 + 56))
      {
LABEL_13:
        v11 = [NSUUID alloc];
        v12 = [*(*(a1 + 32) + 64) bleUUID];
        v9 = [v11 initWithUUIDString:v12];

        v13 = +[_TtC10seserviced14AlishaExternal shared];
        v10 = [v13 sendPassthroughWithMessage:*(a1 + 40) clientUUID:v9];

        (*(*(a1 + 48) + 16))(*(a1 + 48), v10 == 0, v10);
        goto LABEL_14;
      }

      v6 = [v5 getEndpointUser];
      if (v6)
      {
        if (v6 != 1)
        {
LABEL_12:
          *(*(a1 + 32) + 56) = 1;
          goto LABEL_13;
        }

        v7 = @"friendPassthroughCount";
      }

      else
      {
        v7 = @"ownerPassthroughCount";
      }

      sub_10004D584(SESDAnalyticsLogger, v7);
      goto LABEL_12;
    }
  }

  v8 = *(a1 + 48);
  v9 = SESDefaultLogObject();
  v10 = SESCreateAndLogError();
  (*(v8 + 16))(v8, 0, v10);
LABEL_14:
}

void sub_100064AE8(uint64_t a1)
{
  if (([*(a1 + 32) isWaitingForSecureElement] & 1) == 0)
  {
    v2 = [*(a1 + 32) seToken];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [*(a1 + 32) seToken];
      [v3 pushSecureElementToken:v4];

      v5 = *(a1 + 32);

      [v5 setSeToken:0];
    }

    else
    {
      [*(a1 + 32) setIsWaitingForSecureElement:1];
      v6 = [*(a1 + 32) remoteObject];
      [v6 sendEvent:&off_1004DC8C0];
    }
  }
}

void sub_100064E70(id a1)
{
  v1 = qword_10050CD30;
  qword_10050CD30 = &off_1004DC710;
}

id sub_100065150()
{
  result = [objc_allocWithZone(type metadata accessor for AlishaPairingExternal(0)) init];
  qword_10051B160 = result;
  return result;
}

uint64_t sub_1000651E0(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10051B7F0;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10006A46C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5530;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  v15 = a1;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_1000654E0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "KML called requestOwnerPairing", v6, 2u);
  }

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  a1[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning] = 1;
  if (qword_100501908 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  sub_100095A74(sub_10006A478, v7);
}

void sub_100065650(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_16:
    sub_100096454();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing session or delegate", v18, 2u);
    }

    if (qword_100501908 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v10 = Strong;
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Calling btHceTxnSessionDidStartEmulation", v15, 2u);
  }

  if ([v10 respondsToSelector:"btHceTxnSessionDidStartEmulation:result:"])
  {
    swift_unknownObjectRetain();
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v10 btHceTxnSessionDidStartEmulation:v12 result:a1];

    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100065A00(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called stopOwnerPairing", v4, 2u);
  }

  if (qword_100501908 != -1)
  {
    swift_once();
  }

  sub_100096454();
  *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) = 0;
}

void sub_100065B58(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called startHceEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) = 1;
    v5 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart;
    if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart))
    {
LABEL_12:
      *(a1 + v5) = 0;
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Calling btHceTxnSessionDidStartEmulation", v12, 2u);
        }

        if ([v7 respondsToSelector:"btHceTxnSessionDidStartEmulation:result:"])
        {
          [v7 btHceTxnSessionDidStartEmulation:v9 result:0];
        }

        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing session or delegate", v15, 2u);
    }

    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096454();
  }
}

void sub_100065E44(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called stopHceEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling btHceTxnSessionDidStopEmulation", v11, 2u);
        }

        if ([v6 respondsToSelector:"btHceTxnSessionDidStopEmulation:result:"])
        {
          [v6 btHceTxnSessionDidStopEmulation:v8 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing session or delegate", v14, 2u);
    }

    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096454();
  }
}

void sub_10006612C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called startTransactionEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_1000AFED0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling btTxnSessionDidStartTransaction", v11, 2u);
        }

        if ([v6 respondsToSelector:"btTxnSessionDidStartTransaction:result:"])
        {
          [v6 btTxnSessionDidStartTransaction:v8 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing session or delegate", v14, 2u);
    }

    sub_100096454();
  }
}

void sub_1000663CC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called stopTransactionEmulation", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096694();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Calling btTxnSessionDidEndTransaction", v11, 2u);
        }

        if ([v6 respondsToSelector:"btTxnSessionDidEndTransaction:result:"])
        {
          [v6 btTxnSessionDidEndTransaction:v8 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing session or delegate", v14, 2u);
    }

    sub_100096454();
  }
}

uint64_t sub_1000666B4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14[1] = qword_10051B7F0;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10006A3B0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5350;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void sub_1000669A8(uint64_t a1, uint64_t a2)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "KML called pairingEnded", v6, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_1000966A4(a2);
  }
}

uint64_t sub_100066B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "KML called sendAPDU", v10, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    result = sub_10009695C(a2, a3);
  }

  else
  {
    sub_100069DD8();
    result = swift_allocError();
    *v12 = 2;
  }

  *a4 = result;
  return result;
}

uint64_t sub_100066E78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "KML called readAPDU", v6, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1 && *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) == 1)
  {
    v7 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages;
    swift_beginAccess();
    v8 = *(a1 + v7);
    if (v8[2])
    {
      swift_beginAccess();
      v9 = v8[4];
      v10 = v8[5];
      sub_100069E2C(v9, v10);
      sub_1001A18A0(0, 1);
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v12 = Logger.logObject.getter();
      if (Strong)
      {
        v13 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Calling btHceSessionHandleApdu", v14, 2u);
        }

        if ([Strong respondsToSelector:"btHceSessionHandleApdu:"])
        {
          sub_100069E2C(v9, v10);
          swift_unknownObjectRetain();
          isa = Data._bridgeToObjectiveC()().super.isa;
          [Strong btHceSessionHandleApdu:isa];
          swift_unknownObjectRelease();

          sub_10006A178(v9, v10);
        }

        swift_unknownObjectRelease();
        sub_10006A178(v9, v10);
        result = 0;
      }

      else
      {
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v12, v18, "Missing delegate", v19, 2u);
        }

        if (qword_100501908 != -1)
        {
          swift_once();
        }

        sub_100096454();
        sub_100069DD8();
        v20 = swift_allocError();
        *v21 = 2;
        sub_10006A178(v9, v10);
        result = v20;
      }
    }

    else
    {
      result = 0;
      *(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending) = 1;
    }
  }

  else
  {
    sub_100069DD8();
    result = swift_allocError();
    *v17 = 2;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1000673E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10051B7F0;
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_1000676C0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "KML called endSession", v4, 2u);
  }

  if (*(a1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    if (qword_100501908 != -1)
    {
      swift_once();
    }

    sub_100096E44();
  }
}

uint64_t sub_100067820(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);
  v18 = v5;
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

void sub_100067B14(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "KML called requestFirstApproach", v7, 2u);
  }

  if (qword_100501908 != -1)
  {
    swift_once();
  }

  sub_10009701C(a2, a3);
}

void sub_100067C2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v14 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100067820(v11, v13, a4, a5, a6);
  sub_10006A178(v11, v13);
}

void sub_100067CDC(void *a1, unint64_t a2)
{
  if (qword_100501908 != -1)
  {
    swift_once();
  }

  sub_1000976F4(a1, a2);
  __chkstk_darwin(v4);
  if (qword_100501D78 != -1)
  {
    v5 = swift_once();
  }

  __chkstk_darwin(v5);
  v7 = *(v6 + 24);
  __chkstk_darwin(v8);
  os_unfair_lock_lock(v7 + 8);
  sub_10006A288(&v7[4], &v15);
  os_unfair_lock_unlock(v7 + 8);
  v9 = v15;
  if (v15)
  {
    if (qword_100501C40 != -1)
    {
      swift_once();
    }

    v10 = *(sub_1002A73E0(v9) + 16);

    if (v10)
    {
      v11 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v12 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v13 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v14 = *(v9 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_10006A2BC(v11, v12);
      sub_10006A2BC(v13, v14);
      sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v11, v12, v13, v14, 0);

      sub_10006A2D0(v13, v14);
      sub_10006A2D0(v11, v12);
    }

    else
    {
    }
  }
}

BOOL sub_100067F40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v5 >> 60 == 15)
  {
    if (a3 >> 60 == 15)
    {
      sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v5);
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v6, v5);
      return 1;
    }

    goto LABEL_5;
  }

  if (a3 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v5);
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v6, v5);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v5);
  sub_10006A2BC(v6, v5);
  sub_100069E2C(a2, a3);
  v8 = sub_10008FB4C(v6, v5, a2, a3);
  sub_10006A2D0(a2, a3);
  sub_10006A2D0(v6, v5);
  sub_10006A2D0(v6, v5);
  return v8;
}

void sub_1000680F8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    v5 = sub_10012E5A4(0, *(v5 + 16) + 1, 1, v5);
    *(v2 + v11) = v5;
    goto LABEL_13;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) != 1)
  {
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending) == 1 && *(v2 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = Logger.logObject.getter();
    if (Strong)
    {
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Calling btHceSessionHandleApdu", v15, 2u);
      }

      if ([Strong respondsToSelector:"btHceSessionHandleApdu:"])
      {
        swift_unknownObjectRetain();
        isa = Data._bridgeToObjectiveC()().super.isa;
        [Strong btHceSessionHandleApdu:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v13, v21, "Missing delegate", v22, 2u);
      }

      if (qword_100501908 != -1)
      {
        swift_once();
      }

      sub_100096454();
    }

    return;
  }

  v11 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages;
  swift_beginAccess();
  v5 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v11) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v19 = *(v5 + 16);
  v18 = *(v5 + 24);
  if (v19 >= v18 >> 1)
  {
    v5 = sub_10012E5A4((v18 > 1), v19 + 1, 1, v5);
  }

  *(v5 + 16) = v19 + 1;
  v20 = v5 + 16 * v19;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v2 + v11) = v5;
  swift_endAccess();
  sub_100069E2C(a1, a2);
}

void sub_1000684C4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Calling btTxnSessionDidEndTransaction", v13, 2u);
        }

        if ([v8 respondsToSelector:"btTxnSessionDidEndTransaction:result:"])
        {
          [v8 btTxnSessionDidEndTransaction:v10 result:0];
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing session or delegate", v16, 2u);
    }
  }
}

void sub_10006877C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        v15 = os_log_type_enabled(v13, v14);
        if (a1)
        {
          if (a1 == 4)
          {
            if (v15)
            {
              v16 = swift_slowAlloc();
              *v16 = 0;
              _os_log_impl(&_mh_execute_header, v13, v14, "Calling btHceTxnSessionUwbUnavailable", v16, 2u);
            }

            if ([v10 respondsToSelector:"btHceTxnSessionUwbUnavailable:"])
            {
              [v10 btHceTxnSessionUwbUnavailable:v12];
            }
          }

          else
          {
            if (v15)
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&_mh_execute_header, v13, v14, "Calling btHceTxnSessionDidEndUnexpectedly", v21, 2u);
            }

            if ([v10 respondsToSelector:"btHceTxnSessionDidEndUnexpectedly:result:"])
            {
              sub_100069DD8();
              swift_allocError();
              *v22 = a1;
              swift_unknownObjectRetain();
              v23 = _convertErrorToNSError(_:)();
              [v10 btHceTxnSessionDidEndUnexpectedly:v12 result:v23];

              swift_unknownObjectRelease_n();

              return;
            }
          }
        }

        else
        {
          if (v15)
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v13, v14, "Calling btHceTxnSessionRadioIsDisabled", v20, 2u);
          }

          if ([v10 respondsToSelector:"btHceTxnSessionRadioIsDisabled:"])
          {
            [v10 btHceTxnSessionRadioIsDisabled:v12];
          }
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing session or delegate", v19, 2u);
    }
  }
}

uint64_t sub_100068B94()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages) = 0;
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart) = 1;
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning) = 0;
    *(v0 + OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending) = 0;
    v8 = OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages;
    swift_beginAccess();
    *(v0 + v8) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100068D38()
{
  ObjectType = swift_getObjectType();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_canReceiveMessages] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isFirstStart] = 1;
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_isRunning] = 0;
  v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_readPending] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced21AlishaPairingExternal_receivedMessages] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id SECServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of SECServer.presentmentIntentAssertionCallbacks()
{
  sub_100068FC4(&qword_100504840, &qword_100408C28);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100068FC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of SEStorageManagementUIClient.connection()
{
  v0 = objc_allocWithZone(SESUIServiceConnection);

  return [v0 init];
}

uint64_t variable initialization expression of SEStorageManagementUIClient.connectionQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10006928C();
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10006928C()
{
  result = qword_100501E50;
  if (!qword_100501E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100501E50);
  }

  return result;
}

uint64_t sub_1000692D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for AlishaPairingExternal(uint64_t a1)
{
  result = qword_100501ED8;
  if (!qword_100501ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100069374(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100069480(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006948C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000694AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_100069548@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100069644(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000696AC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100069724(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000697A4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

_DWORD *sub_100069800@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100069814(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100069880(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100069908(uint64_t a1)
{
  v2 = sub_100069AF8(&qword_1005021C0, type metadata accessor for SESPrivacyEncryptionScheme, &unk_1004095D0);
  v3 = sub_100069AF8(&qword_1005021C8, type metadata accessor for SESPrivacyEncryptionScheme, &unk_100409578);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000699C8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000699F4(uint64_t a1)
{
  v2 = sub_100069AF8(&qword_100502070, type metadata accessor for Name, &unk_100408F48);
  v3 = sub_100069AF8(&qword_100502078, type metadata accessor for Name, &unk_100408EE8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100069AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100069BD0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100069C18(uint64_t a1)
{
  v2 = sub_100069AF8(&qword_1005021D0, type metadata accessor for URLResourceKey, &unk_100409488);
  v3 = sub_100069AF8(&qword_1005021D8, type metadata accessor for URLResourceKey, &unk_100409428);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100069CD4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100069D10(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100069D64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

unint64_t sub_100069DD8()
{
  result = qword_100502008;
  if (!qword_100502008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502008);
  }

  return result;
}

void sub_100069E2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100069E80(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14[1] = qword_10051B7F0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10006A204;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C5260;
  v12 = _Block_copy(aBlock);
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100069AF8(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_10006A178(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10006A1CC()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A20C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006A224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10006A288(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10034B46C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = v5;
  }
}

void sub_10006A2BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100069E2C(a1, a2);
  }
}

uint64_t sub_10006A2D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10006A178(result, a2);
  }

  return result;
}

uint64_t sub_10006A2F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006A3C0()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A424()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_10006A500(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10006A544(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 200))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A564(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 200) = v3;
  return result;
}

__n128 sub_10006A624(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10006A630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10006A958(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10006A97C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A99C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_10006A9FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006AA1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_10006AA6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10006AB60()
{
  result = [objc_allocWithZone(type metadata accessor for LyonSE(0)) init];
  qword_10051B168 = result;
  return result;
}

id sub_10006ABF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &ObjectType - v4;
  v6 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &ObjectType - v8;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV] = 0;
  v10 = OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager;
  type metadata accessor for SlotManager();
  v11 = swift_allocObject();
  sub_100073C94(2uLL);
  *&v1[v10] = v11;
  v1[OBJC_IVAR____TtC10seserviced6LyonSE_isRunning] = 0;
  v12 = OBJC_IVAR____TtC10seserviced6LyonSE_seTimeoutInSec;
  v28 = 0x4008000000000000;
  aBlock = 0;
  LOBYTE(v22) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  *&v1[v12] = aBlock;
  *&v1[OBJC_IVAR____TtC10seserviced6LyonSE_nonRecoverableSEErrorCodes] = &off_1004C3510;
  v13 = OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging;
  LOBYTE(aBlock) = 0;
  LOBYTE(v28) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v1[v13] = aBlock;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v27, "init");
  v15 = qword_100501D90;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v25 = sub_100075D2C;
  v26 = v17;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100193978;
  v24 = &unk_1004C5B50;
  v18 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v18);

  return v16;
}

char *sub_10006AFE8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning);
  v46 = &type metadata for Bool;
  LOBYTE(v45) = v2;
  sub_100075D50(&v45, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v44, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced6LyonSE_seTimeoutInSec);
  v46 = &type metadata for Double;
  *&v45 = v4;
  sub_100075D50(&v45, v44);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v44, 0x756F656D69546573, 0xEE006365536E4974, v5);
  v6 = *(v0 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV);
  if (!v6)
  {
    v12 = 1701736302;
    v46 = &type metadata for String;
    goto LABEL_6;
  }

  result = [v6 asData];
  if (!result)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *&v45 = sub_100288788(v9, v11);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;
  sub_10006A178(v9, v11);

  v46 = &type metadata for String;
  if (!v14)
  {
    v12 = 1701736302;
LABEL_6:
    v14 = 0xE400000000000000;
  }

  *&v45 = v12;
  *(&v45 + 1) = v14;
  sub_100075D50(&v45, v44);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v44, 0xD00000000000001DLL, 0x8000000100461850, v15);
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
  v17 = *(v16 + 24);
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    *&v45 = _swiftEmptyArrayStorage;

    result = sub_10019F3C0(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v19 = v45;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          if (!*(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          v24 = *(v17 + 8 * v20 + 32);

          if (!*(v24 + 16))
          {
LABEL_16:

            v23 = 0xE800000000000000;
            v21 = 0x72656E774F206F4ELL;
            goto LABEL_17;
          }
        }

        v21 = UUID.uuidString.getter();
        v23 = v22;

LABEL_17:
        *&v45 = v19;
        v26 = v19[2];
        v25 = v19[3];
        if (v26 >= v25 >> 1)
        {
          sub_10019F3C0((v25 > 1), v26 + 1, 1);
          v19 = v45;
        }

        ++v20;
        v19[2] = v26 + 1;
        v27 = &v19[2 * v26];
        v27[4] = v21;
        v27[5] = v23;
        if (v18 == v20)
        {

          goto LABEL_21;
        }
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_21:
  v28 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v46 = v28;
  *&v45 = v19;
  sub_100075D50(&v45, v44);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v44, 0x746F6C536B737275, 0xE900000000000073, v29);
  swift_beginAccess();
  v30 = *(v16 + 32);
  v31 = *(v30 + 16);
  v32 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v43 = v28;
    *&v45 = _swiftEmptyArrayStorage;

    sub_10019F3C0(0, v31, 0);
    v32 = v45;
    v33 = v30 + 48;
    do
    {

      v34 = UUID.uuidString.getter();
      v36 = v35;

      *&v45 = v32;
      v38 = v32[2];
      v37 = v32[3];
      if (v38 >= v37 >> 1)
      {
        sub_10019F3C0((v37 > 1), v38 + 1, 1);
        v32 = v45;
      }

      v32[2] = v38 + 1;
      v39 = &v32[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
      v33 += 24;
      --v31;
    }

    while (v31);

    v28 = v43;
  }

  v46 = v28;
  *&v45 = v32;
  sub_100075D50(&v45, v44);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v44, 0x746F6C536B737275, 0xEF73726574696157, v40);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v42 = sub_100015DA0("lyonse.state", isa);

  return v42;
}

void sub_10006B5F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced6LyonSE_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning);
    v10 = Logger.logObject.getter();
    if (v9)
    {
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "LyonSE is already running", v12, 2u);
      }
    }

    else
    {
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, v13, "Starting LyonSE", v14, 2u);
      }

      *(v1 + v8) = 1;
      sub_10006B834(0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10006B834(char a1)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  if (v1[OBJC_IVAR____TtC10seserviced6LyonSE_isRunning] == 1)
  {
    if ((a1 & 1) == 0)
    {
      v6 = v1;
      if (qword_100501A18 != -1)
      {
        swift_once();
      }

      sub_1000746B8(&v33);
      v7 = *(&v33 + 1);
      if (*(&v33 + 1) >> 60 != 15)
      {
        v8 = v33;
        sub_100069E2C(v33, *(&v33 + 1));
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A2D0(v8, v7);
        v10 = [objc_opt_self() TLVWithData:isa];

        if (v10)
        {
          sub_100069E2C(v8, v7);
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.info.getter();
          sub_10006A2D0(v8, v7);
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v33 = v31;
            *v13 = 136315138;
            v32 = sub_100288788(v8, v7);
            HIDWORD(v30) = v12;
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
            v14 = BidirectionalCollection<>.joined(separator:)();
            v16 = v15;

            v17 = sub_1002FFA0C(v14, v16, &v33);

            *(v13 + 4) = v17;
            _os_log_impl(&_mh_execute_header, v11, BYTE4(v30), "Retrieved initiate access protocol TLV from storage %s", v13, 0xCu);
            sub_1000752F4(v31);

            sub_10006A2D0(v8, v7);
          }

          else
          {

            sub_10006A2D0(v8, v7);
          }

          v29 = *&v6[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV];
          *&v6[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV] = v10;

          return;
        }

        sub_10006A2D0(v8, v7);
      }

      if (*&v1[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV])
      {
        return;
      }
    }

    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = v1;
    v22[3] = 0xD00000000000001ELL;
    v22[4] = 0x8000000100461650;
    type metadata accessor for SERequest(0);
    v23 = swift_allocObject();
    v24 = (v23 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    *v24 = 0xD000000000000014;
    v24[1] = 0x8000000100461670;
    *(v23 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
    *(v23 + 16) = 0;
    *(v23 + 24) = 1;
    v25 = v23 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    *(v25 + 32) = 0;
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v23 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    *(v23 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = 0;
    v26 = v23 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v26 = 0;
    *(v26 + 8) = 1;
    sub_100075390(v5, v23 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v27 = v23 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v27 = 0;
    *(v27 + 8) = 1;
    *(v23 + 32) = sub_100075494;
    *(v23 + 40) = v22;
    v28 = v1;
    sub_1001939C8(0, v23);
  }

  else
  {
    v31 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v31, v18, "LyonSE not running, did not cache initiate access protocol", v19, 2u);
    }

    v20 = v31;
  }
}

void sub_10006BDD8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced6LyonSE_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning);
    v10 = Logger.logObject.getter();
    if (v9 == 1)
    {
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Stopping LyonSE", v12, 2u);
      }

      sub_10006C034();
      v13 = *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV);
      *(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV) = 0;

      *(v1 + v8) = 0;
    }

    else
    {
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, v14, "LyonSE is not running", v15, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10006C034()
{
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_beginAccess();
    *(v0 + 32) = _swiftEmptyArrayStorage;

    return;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 >= 1)
  {

    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v3;
      *(v4 + 16) = 0;
    }

    while (v2 != v3);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_10006C12C(void *a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC10seserviced6LyonSE_logger;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v79 = v5;
      *v16 = 136315138;
      *(v16 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100461630, &v79);
      _os_log_impl(&_mh_execute_header, v14, v15, "Selecting %s", v16, 0xCu);
      sub_1000752F4(v5);
    }

    else
    {
    }

    v17 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    if (v18 >> 60 == 15)
    {
      __break(1u);
      goto LABEL_66;
    }

    v19 = v17;
    v20 = v18;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v19, v20);
    v79 = 0;
    v22 = sub_10005370C(a1, isa, &v79);

    v23 = v79;
    if (v22)
    {
      v24 = v79;
      goto LABEL_13;
    }

    if (!v79)
    {
      goto LABEL_14;
    }

    v22 = v79;
    v28 = sub_1003B0934(&v22->isa);
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v29, v31);
    v33 = [objc_opt_self() TLVWithData:v32];

    if (!v33)
    {
LABEL_13:

LABEL_14:
      v22 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v79 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100461630, &v79);
        _os_log_impl(&_mh_execute_header, v22, v25, "Failed to select %s", v26, 0xCu);
        sub_1000752F4(v27);
      }

      goto LABEL_17;
    }

    if ([v33 tag] == 111)
    {
      v34 = [v33 children];
      if (v34)
      {
        v35 = v34;
        v73 = v33;
        sub_1000754A4();
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v79 = _swiftEmptyArrayStorage;
        if (v36 >> 62)
        {
          goto LABEL_37;
        }

        for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v72 = v22;
          v38 = 0;
          v22 = (v36 & 0xC000000000000001);
          v74 = v13;
          while (1)
          {
            if (v22)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v40 = *(v36 + 8 * v38 + 32);
            }

            v41 = v40;
            v13 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if ([v40 tag] == 165)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v22 = (v36 & 0xC000000000000001);
            }

            else
            {
            }

            ++v38;
            v39 = v13 == i;
            v13 = v74;
            if (v39)
            {
              v42 = v79;
              v22 = v72;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          ;
        }

        v42 = _swiftEmptyArrayStorage;
LABEL_39:

        v33 = v73;
        if ((v42 & 0x8000000000000000) != 0 || (v42 & 0x4000000000000000) != 0)
        {
          if (_CocoaArrayWrapper.endIndex.getter() == 1)
          {
LABEL_42:
            if ((v42 & 0xC000000000000001) != 0)
            {
              v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*(v42 + 16))
              {
                __break(1u);
              }

              v43 = *(v42 + 32);
            }

            v44 = v43;

            v45 = OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV;
            v46 = *&a3[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV];
            *&a3[OBJC_IVAR____TtC10seserviced6LyonSE_cachedInitiateAccessProtocolTLV] = v44;

            if (qword_100501A18 != -1)
            {
              swift_once();
            }

            v47 = *&a3[v45];
            if (v47 && (v48 = [v47 asData]) != 0)
            {
              v49 = v48;
              v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v52 = v51;
            }

            else
            {
              v50 = 0;
              v52 = 0xF000000000000000;
            }

            sub_10008B924(a4, a5, v50, v52);
            sub_10006A2D0(v50, v52);
            v5 = a3;
            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v53, v54))
            {

              goto LABEL_56;
            }

            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v79 = v56;
            *v55 = 136315138;
            v57 = *&a3[v45];
            if (v57)
            {
              oslogb = v56;
              v58 = [v57 asData];

              if (v58)
              {
                v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v61 = v60;

                sub_100288788(v59, v61);
                sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                v62 = BidirectionalCollection<>.joined(separator:)();
                v64 = v63;
                sub_10006A178(v59, v61);

                v65 = sub_1002FFA0C(v62, v64, &v79);

                *(v55 + 4) = v65;
                _os_log_impl(&_mh_execute_header, v53, v54, "Caching initiate access protocol %s", v55, 0xCu);
                sub_1000752F4(oslogb);

LABEL_56:

LABEL_17:
                return;
              }

LABEL_67:
              __break(1u);
              return;
            }

LABEL_66:

            __break(1u);
            goto LABEL_67;
          }
        }

        else if (*(v42 + 16) == 1)
        {
          goto LABEL_42;
        }
      }
    }

    v66 = v33;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v66;
      *v70 = v33;
      v71 = v66;
      _os_log_impl(&_mh_execute_header, v67, v68, "Invalid Select Response for Lyon %@", v69, 0xCu);
      sub_100075768(v70, &unk_100503F70, &unk_10040B2E0);
    }

    else
    {
    }

    goto LABEL_17;
  }

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_100075400();
    swift_allocError();
    *v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to get secure element with %@", v9, 0xCu);
    sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);
  }
}

void sub_10006CAB0()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v2 - 8);
  v46 = &v43 - v3;
  if (qword_100501A30 != -1)
  {
    swift_once();
  }

  v47 = qword_10051B358;
  sub_1001941C0();
  if (qword_100501900 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10051B190 + 32);
  v50 = xmmword_1004098D0;
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      v48 = bswap32(*(v4 + v6)) >> 16;
      v49[3] = &type metadata for UnsafeRawBufferPointer;
      v49[4] = &protocol witness table for UnsafeRawBufferPointer;
      v49[0] = &v48;
      v49[1] = v49;
      sub_1000752B0(v49, &type metadata for UnsafeRawBufferPointer);
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(v49);
      v6 += 2;
      --v5;
    }

    while (v5);

    v7 = *(&v50 + 1);
    v8 = v50;
  }

  else
  {
    v8 = 0;
    v7 = 0xC000000000000000;
  }

  sub_100069E2C(v8, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  sub_10006A178(v8, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v44 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v49[0] = v13;
    *v12 = 136315138;
    v14 = sub_100288788(v8, v7);
    v45 = v7;
    v43 = v8;
    *&v50 = v14;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;
    v8 = v43;
    v7 = v45;

    v18 = sub_1002FFA0C(v15, v17, v49);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating Aliro protocol versions to %s", v12, 0xCu);
    sub_1000752F4(v13);

    v1 = v44;
  }

  sub_100069E2C(v8, v7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v8, v7);
  v20 = [objc_opt_self() TLVWithTag:148 value:isa];

  if (!v20)
  {
    __break(1u);
  }

  v21 = [v20 asData];

  if (v21)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = type metadata accessor for UUID();
    v26 = v46;
    (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = v22;
    v27[3] = v24;
    v27[4] = v1;
    type metadata accessor for SERequest(0);
    v28 = swift_allocObject();
    v29 = (v28 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    *v29 = 0xD000000000000015;
    v29[1] = 0x8000000100461610;
    *(v28 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
    *(v28 + 16) = 0;
    *(v28 + 24) = 1;
    v30 = v28 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v28 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    *(v28 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = 0;
    v31 = v28 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v31 = 0;
    *(v31 + 8) = 1;
    sub_100075390(v26, v28 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v32 = v28 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v32 = 0;
    *(v32 + 8) = 1;
    *(v28 + 32) = sub_100075380;
    *(v28 + 40) = v27;
    sub_100069E2C(v22, v24);
    v33 = v1;
    sub_1001939C8(0, v28);

    sub_10006A178(v22, v24);
  }

  else
  {
    sub_100069E2C(v8, v7);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_10006A178(v8, v7);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v8;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49[0] = v38;
      *v37 = 136315138;
      *&v50 = sub_100288788(v36, v7);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      v42 = sub_1002FFA0C(v39, v41, v49);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to form Update Aliro Versions TLV with %s", v37, 0xCu);
      sub_1000752F4(v38);

      sub_10006A178(v36, v7);

      return;
    }
  }

  sub_10006A178(v8, v7);
}

void sub_10006D1CC(void *a1, char a2)
{
  if (a2)
  {
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136315138;
      sub_100075400();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1002FFA0C(v6, v7, &v24);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to get the SE %s", v4, 0xCu);
      sub_1000752F4(v5);

      return;
    }

LABEL_12:

    return;
  }

  v9 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v10 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v11 = v9;
  v12 = v10;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v11, v12);
  v14 = Data._bridgeToObjectiveC()().super.isa;
  v15 = sub_100045670(a1, isa, v14);

  if (v15)
  {
    v16 = v15;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1002FFA0C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Setup instance failure %s", v18, 0xCu);
      sub_1000752F4(v19);

      return;
    }

    goto LABEL_12;
  }

  if (qword_1005018E8 != -1)
  {
    swift_once();
  }

  sub_10006B834(1);
}

uint64_t sub_10006D4F8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) == 1)
  {
    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    sub_100080874(a1);
    *(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) = 2;

    sub_1002F732C();
  }

  else
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      type metadata accessor for UUID();
      sub_10007554C();
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = sub_1002FFA0C(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "peer %s already disconnected, freeing slot", v4, 0xCu);
      sub_1000752F4(v5);
    }

    return sub_100073178(a1);
  }
}

void sub_10006D880(char **a1, void *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v248 = a7;
  v245 = a5;
  v246 = a6;
  v251 = a2;
  v252 = a4;
  v250 = a3;
  v11 = type metadata accessor for Logger();
  v244 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v14 - 8);
  v247 = v225 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v249 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v22 = *(v17 + 8);
  v21 = v17 + 8;
  v22(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_59:
    if (v23 == 2)
    {
      v52 = v19[2];
      v78 = v19[3];
      v58 = v78 - v52;
      if (__OFSUB__(v78, v52))
      {
        __break(1u);
LABEL_63:
        if (qword_100501A30 != -1)
        {
          v218 = v58;
          v219 = v52;
          swift_once();
          LODWORD(v52) = v219;
          v58 = v218;
        }

        v79 = v52 == 2;
        v242 = *(v58 + OBJC_IVAR____TtC10seserviced6LyonSE_seTimeoutInSec);
        v243 = qword_10051B358;
        v80 = type metadata accessor for UUID();
        aBlock = 0u;
        v254 = 0u;
        v255 = 0;
        v81 = *(v80 - 8);
        v82 = v247;
        (*(v81 + 16))(v247, v245, v80);
        (*(v81 + 56))(v82, 0, 1, v80);
        v83 = swift_allocObject();
        LODWORD(v245) = v79;
        *(v83 + 16) = v79;
        *(v83 + 24) = v58;
        *(v83 + 32) = v21;
        v84 = v250;
        *(v83 + 40) = v251;
        *(v83 + 48) = v84;
        v249 = v83;
        v241 = type metadata accessor for SERequest(0);
        v85 = swift_allocObject();
        if ((v248 & 1) != 0 && (*(v81 + 48))(v82, 1, v80) == 1)
        {
          goto LABEL_156;
        }

        v86 = (v85 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
        *v86 = 0xD000000000000017;
        v86[1] = 0x80000001004616B0;
        *(v85 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = v245;
        *(v85 + 16) = v242;
        *(v85 + 24) = 0;
        v87 = v85 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
        *(v87 + 32) = v255;
        v88 = v254;
        *v87 = aBlock;
        *(v87 + 16) = v88;
        *(v85 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
        *(v85 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v21;
        v89 = v85 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
        *v89 = v248;
        *(v89 + 8) = 0;
        sub_1000756F8(v82, v85 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
        v90 = v85 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
        *v90 = v246;
        *(v90 + 8) = 0;
        v91 = v249;
        *(v85 + 32) = sub_1000756E4;
        *(v85 + 40) = v91;

        sub_100069E2C(v251, v250);

        v92 = v58;
        sub_100075768(v82, &unk_10050BE80, &unk_10040B360);
        sub_1001939C8(0, v85);

        return;
      }
    }

    else
    {
      v58 = 0;
    }

    goto LABEL_71;
  }

  if (*(v7 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning) != 1)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Not running", v37, 2u);
      goto LABEL_11;
    }

LABEL_12:

    sub_1000755A4();
    swift_allocError();
    *v38 = 256;
    goto LABEL_29;
  }

  v24 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v21 = v252;
  if (v252[OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState] - 2 > 2)
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v39, v40))
    {
LABEL_16:

LABEL_28:
      sub_1000755A4();
      swift_allocError();
      *v57 = 0;
LABEL_29:
      swift_willThrow();
      return;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v24;
    v44 = v42;
    *&aBlock = v42;
    *v41 = 136315138;
    v45 = *(v21 + v43);
LABEL_15:
    LOBYTE(v257) = v45;
    v46 = String.init<A>(describing:)();
    v48 = sub_1002FFA0C(v46, v47, &aBlock);

    *(v41 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "received SE message when peer is in invalid state %s", v41, 0xCu);
    sub_1000752F4(v44);

    goto LABEL_16;
  }

  if (a1)
  {
    v25 = v250;
    v26 = v251;
    sub_100069E2C(v251, v250);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_10006A178(v26, v25);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&aBlock = v30;
      *v29 = 16777730;
      *(v29 + 4) = a1;
      *(v29 + 5) = 2080;
      v257 = sub_100288788(v26, v25);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;

      v34 = sub_1002FFA0C(v31, v33, &aBlock);

      *(v29 + 7) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Ignoring unknown message with ID %hhu payload %s", v29, 0xFu);
      sub_1000752F4(v30);

LABEL_26:
    }

LABEL_27:

    goto LABEL_28;
  }

  v242 = OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState;
  v243 = v7;
  v49 = v250;
  v19 = v251;
  v50 = sub_10006FBC0(v251, v250);
  if ((v50 & 0x10000) != 0)
  {
    v27 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v27, v54))
    {
      goto LABEL_27;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Blocking invalid command";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v27, v54, v56, v55, 2u);
    goto LABEL_26;
  }

  v51 = v50;
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B188;
  sub_100081644(0);
  if (v8)
  {
    return;
  }

  sub_100081838(1, 0x617373656D204553, 0xEA00000000006567, v21);
  v9 = 0;
  LODWORD(v52) = *(v21 + v242);
  if (v52 != 2)
  {
    v241 = v7;
    v58 = v243;
    goto LABEL_32;
  }

  v237 = v51;
  v238 = 2;
  sub_100069E2C(v19, v49);
  v53 = sub_100090214(v19, v49, 0, 0, 0);
  v21 = 0;
  v9 = v243;
  v70 = v53;
  v236 = 0;
  v241 = v7;
  sub_10006A178(v19, v49);
  if (v70 != 32896)
  {
LABEL_85:
    v27 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v54))
    {
      goto LABEL_27;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Invalid Auth 0 TLVs";
    goto LABEL_25;
  }

  v23 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    goto LABEL_59;
  }

  if (v23)
  {
    if (__OFSUB__(HIDWORD(v19), v19))
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v58 = HIDWORD(v19) - v19;
  }

  else
  {
    v58 = BYTE6(v49);
  }

LABEL_71:
  v93 = objc_opt_self();
  if (__OFSUB__(v58, 1))
  {
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58)
    {
      goto LABEL_76;
    }

LABEL_145:

    goto LABEL_146;
  }

  if (v58 - 1 < 5)
  {
    goto LABEL_142;
  }

  v94 = v93;
  v95 = Data.subdata(in:)();
  v97 = v96;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v95, v97);
  v99 = [v94 TLVsWithData:isa];

  v19 = v251;
  if (!v99)
  {
    goto LABEL_85;
  }

  sub_1000754A4();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_144;
  }

  v58 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_145;
  }

LABEL_76:
  v100 = 0;
  v239 = v7 & 0xFFFFFFFFFFFFFF8;
  v240 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v240)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v100 >= *(v239 + 16))
      {
        goto LABEL_123;
      }

      v101 = *(v7 + 8 * v100 + 32);
    }

    v19 = v101;
    v102 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    if ([v101 tag] == 65)
    {
      a1 = &selRef_type;
      v103 = [v19 value];

      if (!v103)
      {

        goto LABEL_136;
      }

      v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;

      sub_100069E2C(v104, v106);
      v107 = v236;
      LODWORD(v235) = sub_1000939AC(v104, v106, 0, 0, 0);
      if (v107)
      {

        sub_10006A178(v104, v106);
        v236 = 0;
        goto LABEL_136;
      }

      v236 = 0;
      v233 = v104;
      v234 = v106;
      v108 = 0;
      while (1)
      {
        if (v240)
        {
          v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v108 >= *(v239 + 16))
          {
            __break(1u);
            goto LABEL_149;
          }

          v109 = *(v7 + 8 * v108 + 32);
        }

        v19 = v109;
        v110 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_143;
        }

        if ([v109 tag] == 77)
        {
          v111 = [v19 value];

          if (v111)
          {
            v231 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v232 = v112;

            v113 = 0;
            while (1)
            {
              if (v240)
              {
                v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v113 >= *(v239 + 16))
                {
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:

                  sub_100069E2C(v251, v250);
                  v220 = qword_100501D88;

                  v221 = v58;
                  if (v220 != -1)
                  {
                    goto LABEL_160;
                  }

                  while (1)
                  {
                    (*(v244 + 16))(v13, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v11);
                    v222 = Logger.logObject.getter();
                    v223 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v222, v223))
                    {
                      v224 = swift_slowAlloc();
                      *v224 = 0;
                      _os_log_impl(&_mh_execute_header, v222, v223, "Requesting connection identifier check with no connection identifier", v224, 2u);
                    }

                    (*(v244 + 8))(v13, v11);
                    sub_100075768(&aBlock, &qword_100502438, &qword_100409990);
                    swift_deallocPartialClassInstance();
                    sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
                    __break(1u);
LABEL_160:
                    swift_once();
                  }
                }

                v114 = *(v7 + 8 * v113 + 32);
              }

              v115 = v114;
              v116 = v113 + 1;
              if (__OFADD__(v113, 1))
              {
                goto LABEL_150;
              }

              if ([v114 tag] == 76)
              {
                v117 = [v115 value];

                if (v117)
                {
                  v229 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v230 = v118;

                  v119 = 0;
                  do
                  {
                    if (v240)
                    {
                      v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v119 >= *(v239 + 16))
                      {
                        goto LABEL_155;
                      }

                      v120 = *(v7 + 8 * v119 + 32);
                    }

                    v19 = v120;
                    v121 = v119 + 1;
                    if (__OFADD__(v119, 1))
                    {
                      goto LABEL_154;
                    }

                    if ([v120 tag] == 92)
                    {
                      goto LABEL_124;
                    }

                    ++v119;
                  }

                  while (v121 != v58);

LABEL_133:
                  sub_10006A178(v229, v230);
                }

                else
                {
LABEL_121:
                }

                sub_10006A178(v231, v232);
LABEL_135:
                sub_10006A178(v233, v234);
LABEL_136:
                v19 = v251;
LABEL_146:
                v210 = v250;
                sub_100069E2C(v19, v250);
                v35 = Logger.logObject.getter();
                v211 = static os_log_type_t.error.getter();
                sub_10006A178(v19, v210);
                if (os_log_type_enabled(v35, v211))
                {
                  v212 = swift_slowAlloc();
                  v213 = swift_slowAlloc();
                  *&aBlock = v213;
                  *v212 = 136315138;
                  v257 = sub_100288788(v19, v210);
                  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
                  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
                  v214 = BidirectionalCollection<>.joined(separator:)();
                  v216 = v215;

                  v217 = sub_1002FFA0C(v214, v216, &aBlock);

                  *(v212 + 4) = v217;
                  _os_log_impl(&_mh_execute_header, v35, v211, "Tag 0x41, 0x4C 0x4D, 0x5C not found in Auth0 with payload %s", v212, 0xCu);
                  sub_1000752F4(v213);

LABEL_11:
                }

                goto LABEL_12;
              }

              ++v113;
              if (v116 == v58)
              {
                goto LABEL_121;
              }
            }
          }

LABEL_110:

          goto LABEL_135;
        }

        ++v108;
        if (v110 == v58)
        {
          goto LABEL_110;
        }
      }
    }

    ++v100;
    v19 = v251;
    if (v102 == v58)
    {
      goto LABEL_145;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

  v122 = [v19 a1[48]];

  if (!v122)
  {
    goto LABEL_133;
  }

  v227 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v228 = v123;

  v124 = Data.subdata(in:)();
  v239 = v125;
  v240 = v124;
  v126 = v252;
  v127 = v235 == 1;

  sub_1002F73C8(v127);

  v128 = v231;
  v129 = v232;
  sub_100069E2C(v231, v232);
  sub_100288640(8, v128, v129, &aBlock);
  v130 = aBlock;
  v131 = &v126[OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier];
  LOBYTE(v126) = sub_10008FB4C(aBlock, *(&aBlock + 1), *&v126[OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier], *&v126[OBJC_IVAR____TtC10seserviced8LyonPeer_truncatedReaderGroupIdentifier + 8]);
  sub_10006A178(v130, *(&v130 + 1));
  if ((v126 & 1) == 0)
  {
    v192 = v231;
    v193 = v232;
    sub_100069E2C(v231, v232);

    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.error.getter();
    sub_10006A178(v192, v193);

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *&aBlock = v251;
      *v196 = 136315650;
      v257 = sub_100288788(*v131, v131[1]);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v197 = BidirectionalCollection<>.joined(separator:)();
      v199 = v198;

      v200 = sub_1002FFA0C(v197, v199, &aBlock);

      *(v196 + 4) = v200;
      *(v196 + 12) = 2080;
      v257 = sub_100288788(v231, v232);
      v201 = BidirectionalCollection<>.joined(separator:)();
      v203 = v202;

      v204 = sub_1002FFA0C(v201, v203, &aBlock);

      *(v196 + 14) = v204;
      *(v196 + 22) = 2080;

      v205 = UUID.uuidString.getter();
      v207 = v206;

      v208 = sub_1002FFA0C(v205, v207, &aBlock);

      *(v196 + 24) = v208;
      _os_log_impl(&_mh_execute_header, v194, v195, "%s does not match %s for %s", v196, 0x20u);
      swift_arrayDestroy();
    }

    sub_1000755A4();
    swift_allocError();
    *v209 = 256;
    swift_willThrow();
    goto LABEL_140;
  }

  v132 = &v252[OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier];
  v133 = *&v252[OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier];
  v134 = *&v252[OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier + 8];
  v135 = v231;
  v136 = v232;
  *v132 = v231;
  *(v132 + 1) = v136;
  sub_100069E2C(v135, v136);
  sub_10006A2D0(v133, v134);
  v137 = v239;
  v138 = v240;
  sub_100069E2C(v240, v239);
  v139 = v236;
  v140 = sub_1000939F8(v138, v137, 0, 0, 1);
  v9 = v139;
  sub_10006A178(v138, v137);
  if (v139)
  {
LABEL_140:
    sub_10006A178(v240, v239);
    sub_10006A178(v227, v228);
    sub_10006A178(v229, v230);
    sub_10006A178(v231, v232);
    sub_10006A178(v233, v234);
    return;
  }

  v141 = v252;
  v142 = &v252[OBJC_IVAR____TtC10seserviced8LyonPeer_uwbSessionID];
  *v142 = v140;
  v142[4] = 0;
  v141[v242] = 3;
  v143 = v227;
  v144 = v228;
  sub_100069E2C(v227, v228);
  v145 = sub_100090214(v143, v144, 0, 0, 1);
  sub_10006A178(v143, v144);
  v146 = &v252[OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion];
  *v146 = v145;
  v146[2] = 0;
  v147 = OBJC_IVAR____TtC10seserviced6LyonSE_logger;
  v148 = v227;
  v149 = v228;
  sub_100069E2C(v227, v228);

  v236 = v147;
  v150 = Logger.logObject.getter();
  LODWORD(v147) = static os_log_type_t.debug.getter();
  sub_10006A178(v148, v149);

  LODWORD(v235) = v147;
  if (os_log_type_enabled(v150, v147))
  {
    v151 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    *&aBlock = v226;
    *v151 = 136315394;
    v257 = sub_100288788(v227, v228);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v152 = BidirectionalCollection<>.joined(separator:)();
    v154 = v153;

    v155 = sub_1002FFA0C(v152, v154, &aBlock);

    *(v151 + 4) = v155;
    *(v151 + 12) = 2080;

    v156 = UUID.uuidString.getter();
    v158 = v157;

    v159 = sub_1002FFA0C(v156, v158, &aBlock);

    *(v151 + 14) = v159;
    _os_log_impl(&_mh_execute_header, v150, v235, "Setting expedited protocol version identifier %s for peer %s", v151, 0x16u);
    swift_arrayDestroy();
  }

  v160 = v231;
  v161 = v232;
  sub_100069E2C(v231, v232);

  v162 = Logger.logObject.getter();
  v163 = static os_log_type_t.debug.getter();
  sub_10006A178(v160, v161);

  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    *&aBlock = v235;
    *v164 = 136315394;
    v257 = sub_100288788(v231, v232);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v165 = BidirectionalCollection<>.joined(separator:)();
    v167 = v166;

    v168 = sub_1002FFA0C(v165, v167, &aBlock);

    *(v164 + 4) = v168;
    *(v164 + 12) = 2080;

    v169 = UUID.uuidString.getter();
    v171 = v170;

    v172 = sub_1002FFA0C(v169, v171, &aBlock);

    *(v164 + 14) = v172;
    _os_log_impl(&_mh_execute_header, v162, v163, "Setting reader identifier %s for peer %s", v164, 0x16u);
    swift_arrayDestroy();
  }

  v173 = v239;
  sub_100069E2C(v240, v239);

  v174 = v229;
  v175 = v230;
  sub_100069E2C(v229, v230);
  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.debug.getter();
  sub_10006A178(v240, v173);

  sub_10006A178(v174, v175);
  LODWORD(v235) = v177;
  v236 = v176;
  if (!os_log_type_enabled(v176, v177))
  {
LABEL_151:
    sub_10006A178(v233, v234);
    sub_10006A178(v231, v232);
    sub_10006A178(v227, v228);

    sub_10006A178(v240, v239);
    sub_10006A178(v229, v230);
    v58 = v243;
    v21 = v252;
    goto LABEL_152;
  }

  v178 = swift_slowAlloc();
  v226 = swift_slowAlloc();
  *&aBlock = v226;
  *v178 = 136315650;
  v257 = sub_100288788(v240, v239);
  v225[1] = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v225[0] = sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v179 = BidirectionalCollection<>.joined(separator:)();
  v181 = v180;

  v182 = sub_1002FFA0C(v179, v181, &aBlock);

  *(v178 + 4) = v182;
  *(v178 + 12) = 2080;
  v21 = v252;

  v183 = UUID.uuidString.getter();
  v185 = v184;

  v186 = sub_1002FFA0C(v183, v185, &aBlock);

  *(v178 + 14) = v186;
  *(v178 + 22) = 2080;
  v257 = sub_100288788(v229, v230);
  v187 = BidirectionalCollection<>.joined(separator:)();
  v189 = v188;

  v190 = sub_1002FFA0C(v187, v189, &aBlock);

  *(v178 + 24) = v190;
  v191 = v236;
  _os_log_impl(&_mh_execute_header, v236, v235, "Setting uwb session id %s for peer %s from transaction id %s", v178, 0x20u);
  swift_arrayDestroy();

  sub_10006A178(v233, v234);
  sub_10006A178(v231, v232);
  sub_10006A178(v229, v230);
  sub_10006A178(v240, v239);
  sub_10006A178(v227, v228);

  v58 = v243;
LABEL_152:
  LODWORD(v52) = v238;
  LOWORD(v51) = v237;
LABEL_32:
  if (v51 == 32897)
  {
    v59 = v52;

    sub_1002F73C8(0);

    LODWORD(v52) = v59;
    v58 = v243;
  }

  if (v51 != 195 && v51 != 4291 && v51 != 192 && v51 != 4288)
  {
    v60 = *(v21 + v242);
    if (v60 != 3)
    {
      if (v60 != 4 || v51 != 32969 && v51 != 37065)
      {

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_16;
        }

        v41 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&aBlock = v44;
        *v41 = 136315138;
        v45 = *(v21 + v242);
        goto LABEL_15;
      }

LABEL_57:
      v71 = *(v21 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper);
      v72 = swift_allocObject();
      *(v72 + 16) = v21;
      *(v72 + 24) = v58;
      v73 = *(v71 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper);

      v74 = v58;
      v75 = Data._bridgeToObjectiveC()().super.isa;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_100075638;
      *(v76 + 24) = v72;
      v255 = sub_10007567C;
      v256 = v76;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v254 = sub_1000751C8;
      *(&v254 + 1) = &unk_1004C5A60;
      v77 = _Block_copy(&aBlock);

      [v73 processUnifiedAccessStepupAPDU:v75 callbackQueue:v249 responseHandler:v77];
      _Block_release(v77);

      return;
    }

    goto LABEL_63;
  }

  if (*(v21 + v242) != 3)
  {
    goto LABEL_57;
  }

  if (qword_100501A30 != -1)
  {
    swift_once();
  }

  sub_100194774(v21);
  *(v21 + v242) = 4;
  if (*(v21 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion + 2))
  {

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&aBlock = v65;
      *v64 = 136315138;

      v66 = UUID.uuidString.getter();
      v68 = v67;

      v69 = sub_1002FFA0C(v66, v68, &aBlock);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "expeditedTransactionProtocolVersion missing for %s", v64, 0xCu);
      sub_1000752F4(v65);

      v21 = v252;
    }

    sub_100080E48(v21, 0);
    goto LABEL_28;
  }

  sub_1002FCAA0(*(v21 + OBJC_IVAR____TtC10seserviced8LyonPeer_expeditedTransactionProtocolVersion), v61);
  if (!v9)
  {

    sub_1002F74B0();

    v58 = v243;
    goto LABEL_57;
  }
}

uint64_t sub_10006FBC0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 < 4)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    goto LABEL_34;
  }

  if (!v10)
  {
    if (BYTE6(a2) >= 4uLL)
    {
      goto LABEL_17;
    }

LABEL_11:
    sub_100069E2C(a1, a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33[0] = v18;
      *v17 = 136315138;
      v32 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v19 = BidirectionalCollection<>.joined(separator:)();
      v21 = v20;

      v22 = sub_1002FFA0C(v19, v21, v33);

      *(v17 + 4) = v22;
      v23 = "Payload is too short %s";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v15, v16, v23, v17, 0xCu);
      sub_1000752F4(v18);
    }

LABEL_14:

    v24 = 0;
    v25 = 1;
    return v24 | (v25 << 16);
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    if (HIDWORD(a1) - a1 < 4)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_100069E2C(a1, a2);
    v26 = sub_100090214(a1, a2, 0, 0, 0);
    sub_10006A178(a1, a2);
    if (v26 == 32896 || v26 == 36992 || v26 == 32897 || v26 == 36993 || v26 == 32977 || v26 == 37073 || v26 == 195 || v26 == 4291 || v26 == 192 || v26 == 4288 || v26 == 32969 || v26 == 37065)
    {
      v25 = 0;
      v24 = v26;
      return v24 | (v25 << 16);
    }

    sub_100069E2C(a1, a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33[0] = v18;
      *v17 = 136315138;
      v32 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v27 = BidirectionalCollection<>.joined(separator:)();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, v33);

      *(v17 + 4) = v30;
      v23 = "Blocked command %s";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_35:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_100070120(void *a1, unint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_14:
    v38[0] = a1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v35 = v37[46];
      if (v37[47])
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    sub_100080E48(a4, v36 | v35);

    return;
  }

  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  if (a3)
  {
    sub_100075CA8(a1, a2, 1);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v17 = 136315394;

      v18 = UUID.uuidString.getter();
      v20 = v19;

      v21 = sub_1002FFA0C(v18, v20, v38);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_1002FFA0C(v22, v23, v38);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to send stepup command for %s %s", v17, 0x16u);
      swift_arrayDestroy();

      p_class_meths = (&OBJC_PROTOCOL___SESSessionInterface + 32);
    }

    swift_willThrow();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = p_class_meths;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136315138;

      v31 = UUID.uuidString.getter();
      v33 = v32;

      v34 = sub_1002FFA0C(v31, v33, v38);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not handle stepup response for %s", v29, 0xCu);
      sub_1000752F4(v30);

      p_class_meths = v28;
    }

    if (p_class_meths[287] == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  sub_100081ED8(0, 1, a1, a2, a4);
  sub_100081644(1);
  sub_100081838(0, 0x2070752D70657453, 0xEF6567617373656DLL, a4);
}

void sub_100070660(void *a1, char a2, char a3, uint64_t a4, char *a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &unk_10051B000;
  if (a2)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v84[0] = v19;
      *v18 = 136315138;
      LOBYTE(v82) = a1;
      sub_100075400();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1002FFA0C(v20, v21, v84);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get SE %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    sub_100075400();
    v23 = swift_allocError();
    *v24 = a1;
    goto LABEL_23;
  }

  if (a3)
  {
    v78 = v12;
    v79 = OBJC_IVAR____TtC10seserviced6LyonSE_logger;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v80 = a4;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v84[0] = v29;
      *v28 = 136315138;
      v77 = a5;
      *(v28 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100461630, v84);
      _os_log_impl(&_mh_execute_header, v25, v26, "Selecting %s", v28, 0xCu);
      sub_1000752F4(v29);

      a5 = v77;
    }

    else
    {
    }

    v77 = 0x8000000100461630;
    v30 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    v15 = &unk_10051B000;
    if (v31 >> 60 == 15)
    {
      __break(1u);
      goto LABEL_40;
    }

    v32 = v30;
    v33 = v31;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v32, v33);
    v35 = sub_1003AF1FC(a1, isa);

    if (v35)
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v84[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_1002FFA0C(0xD000000000000012, v77, v84);
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to select %s", v38, 0xCu);
        sub_1000752F4(v39);
      }

      sub_1000755A4();
      v23 = swift_allocError();
      *v40 = 256;
      goto LABEL_23;
    }

    v41 = *&a5[OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData];

    Date.init()();
    Date.timeIntervalSince1970.getter();
    v43 = v42;
    (*(v11 + 8))(v14, v78);
    *(v41 + 128) = v43;
    *(v41 + 136) = 0;

    a4 = v80;
  }

  v44 = Data._bridgeToObjectiveC()().super.isa;
  v84[0] = 0;
  v45 = sub_1003AE9C8(a1, v44, v84);

  if (!v45)
  {
    v52 = v84[0];
    v23 = _convertNSErrorToError(_:)();

LABEL_23:
    swift_willThrow();

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v85 = v56;
      *v55 = 136315138;

      v57 = UUID.uuidString.getter();
      v59 = v58;

      v60 = sub_1002FFA0C(v57, v59, &v85);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "SERequest failed, disconnecting for %s", v55, 0xCu);
      sub_1000752F4(v56);
    }

    if (qword_1005018F8 != -1)
    {
      swift_once();
    }

    *&v85 = v23;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v61 = v81;
      if (BYTE1(v81))
      {
        v62 = 256;
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v61 = 0;
      v62 = 0;
    }

    sub_100080E48(a5, v62 | v61);

    return;
  }

  v85 = xmmword_1004098E0;
  v46 = v84[0];
  if (sub_1003B0984(v45) != 36864)
  {
    sub_100071154(a1, a5);
    if (sub_1003B0984(v45) == 36865)
    {
      v80 = a4;
      v63 = sub_1003B0934(v45);
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      sub_10006A2D0(v85, *(&v85 + 1));
      *&v85 = v64;
      *(&v85 + 1) = v66;
      if (v66 >> 60 != 15)
      {
        v82 = 144;
        v84[3] = &type metadata for UnsafeRawBufferPointer;
        v84[4] = &protocol witness table for UnsafeRawBufferPointer;
        v84[0] = &v82;
        v84[1] = v83;
        sub_1000752B0(v84, &type metadata for UnsafeRawBufferPointer);
        Data._Representation.append(contentsOf:)();
        sub_1000752F4(v84);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v67, v68))
        {

          goto LABEL_17;
        }

        LODWORD(v78) = v68;
        v69 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v84[0] = v77;
        v79 = v69;
        *v69 = 136315138;
        swift_beginAccess();
        v70 = *(&v85 + 1);
        if (*(&v85 + 1) >> 60 != 15)
        {
          v71 = v85;
          sub_10006A2BC(v85, *(&v85 + 1));
          v81 = sub_100288788(v71, v70);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v72 = BidirectionalCollection<>.joined(separator:)();
          v74 = v73;
          sub_10006A2D0(v71, v70);

          v75 = sub_1002FFA0C(v72, v74, v84);

          v76 = v79;
          *(v79 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v67, v78, "Sending %s", v76, 0xCu);
          sub_1000752F4(v77);

          v15 = &unk_10051B000;
          goto LABEL_17;
        }

LABEL_41:
        __break(1u);
        return;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

LABEL_17:
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  v79 = v15[49];
  swift_beginAccess();
  v47 = v85;
  v49 = *(&v85 + 1);
  v48 = v85;
  if (*(&v85 + 1) >> 60 == 15)
  {
    v50 = sub_1003AAA78(v45);
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v51;
  }

  sub_10006A2BC(v47, *(&v47 + 1));
  sub_100081ED8(0, 1, v48, v49, a5);
  sub_10006A178(v48, v49);
  sub_100081644(1);
  sub_100081838(0, 0x67617373654D4553, 0xE900000000000065, a5);
  sub_10006A2D0(v85, *(&v85 + 1));
}

void sub_100071154(uint64_t a1, uint64_t a2)
{
  inited = v2;
  v251 = 0;
  v6 = sub_1003AEF50();
  if (!v6)
  {
    v157 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = 0;
  v209 = v7;
  v10 = sub_1003B0934(v7);
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v11, v13);
  v210 = v8;
  v15 = [v8 TLVsWithData:isa];

  if (!v15)
  {
    __break(1u);
LABEL_235:
    sub_10006A178(v3, v8);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
    return;
  }

  sub_1000754A4();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v16;
  if (v16 >> 62)
  {
    goto LABEL_215;
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_216:

    goto LABEL_217;
  }

LABEL_5:
  v20 = 0;
  v215 = v18 & 0xC000000000000001;
  v211 = v18 + 32;
  v212 = v18 & 0xFFFFFFFFFFFFFF8;
  v21 = &selRef_type;
  *&v17 = 136315650;
  v208 = v17;
  v213 = v19;
  v214 = v18;
  v226 = inited;
  while (1)
  {
    if (v215)
    {
      v22 = v20;
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v212 + 16))
      {
        goto LABEL_214;
      }

      v22 = v20;
      v23 = *(v211 + 8 * v20);
    }

    v24 = v23;
    v25 = __OFADD__(v22, 1);
    v26 = v22 + 1;
    if (v25)
    {
      goto LABEL_205;
    }

    v219 = v26;
    if ([v23 tag] != 130)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Get event returned unexpected tag", v45, 2u);
      }

      goto LABEL_22;
    }

    v27 = [v24 v21[48]];
    if (!v27)
    {
      goto LABEL_228;
    }

    v28 = v27;
    v29 = [v27 u8:0];

    v30 = [v24 v21[48]];
    if (!v30)
    {
      goto LABEL_230;
    }

    v31 = v30;
    v32 = [v30 u8:1];

    v33 = [v24 v21[48]];
    if (!v33)
    {
      goto LABEL_231;
    }

    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = [v24 v21[48]];
    if (!v38)
    {
      goto LABEL_229;
    }

    v39 = v38;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v40;

    v41 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_235;
      }

      v4 = *(v3 + 16);
      inited = *(v3 + 24);
      sub_10006A178(v3, v8);
      v42 = inited - v4;
      if (__OFSUB__(inited, v4))
      {
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }
    }

    else if (v41)
    {
      inited = HIDWORD(v3);
      sub_10006A178(v3, v8);
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_218;
      }

      v42 = HIDWORD(v3) - v3;
    }

    else
    {
      sub_10006A178(v3, v8);
      v42 = BYTE6(v8);
    }

    inited = v226;
    v21 = &selRef_type;
    if (v42 < 2)
    {
      goto LABEL_236;
    }

    v222 = Data.subdata(in:)();
    v223 = v47;
    sub_10006A178(v35, v37);
    sub_100073170();
    sub_100073170();
    sub_100073170();
    sub_100073170();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v8 = swift_slowAlloc();
      *v8 = 16777728;
      *(v8 + 4) = v29;
      *(v8 + 5) = 256;
      *(v8 + 7) = v32;
      _os_log_impl(&_mh_execute_header, v48, v49, "Received event with type 0x%hhx and version 0x%hhx", v8, 8u);
    }

    v221 = v24;
    if (v29 > 20)
    {
      if (v29 != 21)
      {
        if (v29 == 22)
        {

          sub_100069E2C(v222, v223);
          v177 = sub_100090214(v222, v223, 0, 0, 0);
          if (v220)
          {
            sub_10006A178(v222, v223);

            v178 = 0;
          }

          else
          {
            v178 = v177;
            sub_10006A178(v222, v223);
          }

          v32 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
          v29 = v191;
          v37 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v8 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100409900;
          *(inited + 32) = 0xD000000000000020;
          *(inited + 40) = 0x80000001004616D0;
          v251 = 0;
          v252 = 0xE000000000000000;
          LOWORD(v253) = v178;
          sub_10006A2BC(v37, v8);
          v192._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v192);

          v193 = v252;
          v4 = &type metadata for String;
          *(inited + 48) = v251;
          *(inited + 56) = v193;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 0xD000000000000020;
          *(inited + 88) = 0x8000000100461750;
          if (qword_100501900 != -1)
          {
            goto LABEL_223;
          }

          goto LABEL_194;
        }

        if (v29 == 23)
        {

          v57 = v222;
          v8 = v223;
          sub_100069E2C(v222, v223);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          sub_10006A178(v222, v223);
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v249 = swift_slowAlloc();
            v251 = v249;
            *v181 = 136315138;
            v253 = sub_100288788(v222, v223);
            v245 = v180;
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
            v182 = BidirectionalCollection<>.joined(separator:)();
            v184 = v183;

            v185 = sub_1002FFA0C(v182, v184, &v251);
            inited = v226;

            *(v181 + 4) = v185;
            _os_log_impl(&_mh_execute_header, v179, v245, "Received error event with payload %s, disconnecting peer", v181, 0xCu);
            sub_1000752F4(v249);
          }

          sub_100069E2C(v222, v223);
          v186 = sub_100090214(v222, v223, 0, 0, 0);
          if (!v220)
          {
            v199 = v186;
            sub_10006A178(v222, v223);
            v251 = *(inited + OBJC_IVAR____TtC10seserviced6LyonSE_nonRecoverableSEErrorCodes);
            sub_100068FC4(&qword_100502448, &qword_100409998);
            v200 = swift_allocObject();
            *(v200 + 16) = xmmword_1004098F0;
            *(v200 + 32) = v199;
            v253 = v200;

            sub_100068FC4(&qword_100502428, &unk_100409C70);
            sub_100075C60(&qword_100502450, &qword_100502428, &unk_100409C70, &protocol conformance descriptor for [A]);
            v201 = Collection<>.contains<A>(_:)();

            if ((v201 & 1) == 0)
            {
              goto LABEL_201;
            }

            v202 = Logger.logObject.getter();
            v203 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v202, v203))
            {
              v204 = swift_slowAlloc();
              *v204 = 33554688;
              *(v204 + 4) = v199;
              _os_log_impl(&_mh_execute_header, v202, v203, "Non recoverable error code %hu received from peer", v204, 6u);
            }

            sub_1000755A4();
            swift_allocError();
            *v205 = 256;
            swift_willThrow();

            v175 = v222;
            v176 = v223;
            goto LABEL_178;
          }

          sub_10006A178(v222, v223);

          sub_10006A178(v222, v223);
          goto LABEL_191;
        }

LABEL_115:
        v29 = v222;
        v32 = v223;
        sub_100069E2C(v222, v223);
        v37 = Logger.logObject.getter();
        v118 = static os_log_type_t.debug.getter();
        sub_10006A178(v222, v223);
        if (!os_log_type_enabled(v37, v118))
        {

          sub_10006A178(v222, v223);
          goto LABEL_22;
        }

        v8 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v253 = v119;
        *v8 = 136315138;
        v120 = v223 >> 62;
        v239 = v118;
        v234 = v119;
        bufa = v8;
        if ((v223 >> 62) > 1)
        {
          if (v120 != 2)
          {
            v121 = _swiftEmptyArrayStorage;
LABEL_136:
            v251 = v121;
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
            v126 = BidirectionalCollection<>.joined(separator:)();
            v128 = v127;

            v129 = sub_1002FFA0C(v126, v128, &v253);

            *(bufa + 4) = v129;
            _os_log_impl(&_mh_execute_header, v37, v239, "Received unknown event with payload %s, ignoring", bufa, 0xCu);
            sub_1000752F4(v234);

            sub_10006A178(v222, v223);
            inited = v226;
            v46 = v213;
            v18 = v214;
            v21 = &selRef_type;
            goto LABEL_23;
          }

          osloga = v37;
          v123 = *(v222 + 16);
          v122 = *(v222 + 24);
          v37 = v122 - v123;
          if (__OFSUB__(v122, v123))
          {
            goto LABEL_221;
          }

          if (v37)
          {
            goto LABEL_127;
          }
        }

        else
        {
          osloga = v37;
          if (v120)
          {
            v125 = HIDWORD(v222) - v222;
            if (__OFSUB__(HIDWORD(v222), v222))
            {
              goto LABEL_220;
            }

            v37 = v125;
            if (v125)
            {
LABEL_127:
              inited = v37 & ~(v37 >> 63);
              sub_10019F3C0(0, inited, 0);
              v121 = _swiftEmptyArrayStorage;
              if (v120 != 2)
              {
                v124 = v223;
                if (v120 == 1)
                {
                  v29 = v222;
                  goto LABEL_138;
                }

                if ((v37 & 0x8000000000000000) == 0)
                {
                  v29 = 0;
                  goto LABEL_142;
                }

LABEL_222:
                __break(1u);
LABEL_223:
                swift_once();
LABEL_194:
                v194 = *(qword_10051B190 + 32);
                if (*(v194 + 16))
                {
                  LOWORD(v251) = *(v194 + 32);
                  v195 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(inited + 120) = v4;
                  *(inited + 96) = v195;
                  *(inited + 104) = v196;
                  v197 = sub_10008FFDC(inited);
                  swift_setDeallocating();
                  sub_100068FC4(&qword_100507D30, &unk_100409C90);
                  swift_arrayDestroy();
                  sub_1003375E0(0xD000000000000041, 0x8000000100461700, v32, v29, v37, v8, v197);

                  sub_10006A2D0(v37, v8);
                  sub_10006A2D0(v32, v29);
                  sub_1000755A4();
                  swift_allocError();
                  *v198 = 256;
                  swift_willThrow();

                  sub_10006A178(v222, v223);
                  return;
                }

                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
              }

              v124 = v223;
              v29 = *(v222 + 16);
LABEL_138:
              if (v37 < 0)
              {
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
                goto LABEL_222;
              }

LABEL_142:
              v130 = BYTE6(v124);
              while (2)
              {
                if (!inited)
                {
                  goto LABEL_203;
                }

                if (v120 == 2)
                {
                  if (v29 < *(v222 + 16))
                  {
                    goto LABEL_209;
                  }

                  if (v29 >= *(v222 + 24))
                  {
                    goto LABEL_211;
                  }

                  v134 = __DataStorage._bytes.getter();
                  if (!v134)
                  {
                    goto LABEL_233;
                  }

                  v4 = v134;
                  v135 = __DataStorage._offset.getter();
                  v133 = v29 - v135;
                  if (__OFSUB__(v29, v135))
                  {
                    goto LABEL_213;
                  }

LABEL_156:
                  v136 = *(v4 + v133);
                }

                else
                {
                  if (v120 == 1)
                  {
                    if (v29 < v222 || v29 >= v222 >> 32)
                    {
                      goto LABEL_210;
                    }

                    v131 = __DataStorage._bytes.getter();
                    if (!v131)
                    {
                      goto LABEL_232;
                    }

                    v4 = v131;
                    v132 = __DataStorage._offset.getter();
                    v133 = v29 - v132;
                    if (__OFSUB__(v29, v132))
                    {
                      goto LABEL_212;
                    }

                    goto LABEL_156;
                  }

                  if (v29 >= v130)
                  {
                    goto LABEL_208;
                  }

                  v251 = v222;
                  LOWORD(v252) = v124;
                  BYTE2(v252) = BYTE2(v124);
                  BYTE3(v252) = BYTE3(v124);
                  BYTE4(v252) = BYTE4(v124);
                  BYTE5(v252) = BYTE5(v124);
                  v136 = *(&v251 + v29);
                }

                sub_100068FC4(&qword_100502440, &unk_10040B240);
                v137 = swift_allocObject();
                *(v137 + 16) = xmmword_1004098F0;
                *(v137 + 56) = &type metadata for UInt8;
                *(v137 + 64) = &protocol witness table for UInt8;
                *(v137 + 32) = v136;
                v138 = String.init(format:_:)();
                v250 = v121;
                v140 = v121[2];
                v139 = v121[3];
                v4 = v140 + 1;
                if (v140 >= v139 >> 1)
                {
                  v228 = v138;
                  v142 = v18;
                  sub_10019F3C0((v139 > 1), v140 + 1, 1);
                  v18 = v142;
                  v138 = v228;
                  v121 = v250;
                }

                v121[2] = v4;
                v141 = &v121[2 * v140];
                v141[4] = v138;
                v141[5] = v18;
                ++v29;
                --inited;
                --v37;
                v124 = v223;
                if (!v37)
                {
                  goto LABEL_120;
                }

                continue;
              }
            }
          }

          else
          {
            v37 = BYTE6(v223);
            if (BYTE6(v223))
            {
              goto LABEL_127;
            }
          }
        }

        v121 = _swiftEmptyArrayStorage;
LABEL_120:
        v37 = osloga;
        goto LABEL_136;
      }

      if (v32 != 16)
      {

        sub_100073170();
        sub_100073170();
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 16777472;
          v189[4] = v32;
          v190 = "Received notify share session with unsupported version 0x%hhx and expected version 0x10";
          goto LABEL_189;
        }

LABEL_190:

        sub_10006A178(v222, v223);
LABEL_191:

        return;
      }

      v91 = Data._bridgeToObjectiveC()().super.isa;
      v92 = [v210 TLVsWithData:v91];

      if (!v92)
      {
        goto LABEL_237;
      }

      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v4 >> 62))
      {
        v93 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93)
        {
          goto LABEL_86;
        }

        goto LABEL_169;
      }

      v93 = _CocoaArrayWrapper.endIndex.getter();
      if (!v93)
      {
LABEL_169:

        sub_10006A178(v222, v223);
        goto LABEL_22;
      }

LABEL_86:
      v94 = 0;
      v243 = v93;
      v247 = v4 & 0xC000000000000001;
      v238 = v4 & 0xFFFFFFFFFFFFFF8;
      v241 = v4;
      while (1)
      {
        if (v247)
        {
          v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v94 >= *(v238 + 16))
          {
            goto LABEL_207;
          }

          v95 = *(v4 + 8 * v94 + 32);
        }

        v96 = v95;
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          v207 = v18;
          v19 = _CocoaArrayWrapper.endIndex.getter();
          v18 = v207;
          if (!v19)
          {
            goto LABEL_216;
          }

          goto LABEL_5;
        }

        v98 = [v95 tag];
        if (v98 == 128)
        {
          v107 = [v96 v21[48]];
          if (!v107)
          {
            goto LABEL_226;
          }

          v108 = v107;
          v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;

          sub_1002B1218(v109, v111, a2);
          if (v220)
          {

            sub_10006A178(v109, v111);
            sub_10006A178(v222, v223);

LABEL_217:

            return;
          }

          sub_10006A178(v109, v111);
        }

        else
        {
          if (v98 != 129)
          {
            v112 = v96;
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              *v115 = 67109120;
              *(v115 + 4) = [v112 tag];

              _os_log_impl(&_mh_execute_header, v113, v114, "Ignoring unknown tag value %u for get event", v115, 8u);
              v93 = v243;
            }

            else
            {
            }

            goto LABEL_89;
          }

          v99 = (a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v100 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          if (v100 >> 60 == 15)
          {

            v158 = Logger.logObject.getter();
            v159 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v251 = v161;
              *v160 = 136315138;

              v162 = UUID.uuidString.getter();
              v164 = v163;

              v165 = sub_1002FFA0C(v162, v164, &v251);

              *(v160 + 4) = v165;
              _os_log_impl(&_mh_execute_header, v158, v159, "Key identifier not set for peer %s", v160, 0xCu);
              sub_1000752F4(v161);
            }

            sub_1000755A4();
            swift_allocError();
            *v166 = 256;
            swift_willThrow();

            sub_10006A178(v222, v223);
            goto LABEL_191;
          }

          v101 = *v99;
          sub_100069E2C(*v99, *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
          v102 = [v96 value];
          if (!v102)
          {
            goto LABEL_227;
          }

          v103 = v102;
          v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v105;

          sub_1002FD674(v104, v106, v101, v100);
          sub_10006A178(v104, v106);
          sub_10006A2D0(v101, v100);
          v24 = v221;
        }

        inited = v226;
        v4 = v241;
        v93 = v243;
LABEL_89:
        ++v94;
        v21 = &selRef_type;
        if (v97 == v93)
        {
          goto LABEL_169;
        }
      }
    }

    if (v29 != 13)
    {
      if ((v29 - 3) < 2 || v29 == 8)
      {

        v57 = v222;
        v8 = v223;
        sub_100069E2C(v222, v223);
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();
        sub_10006A178(v222, v223);
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v251 = v248;
          *v169 = 136315138;
          v253 = sub_100288788(v222, v223);
          v244 = v168;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v170 = BidirectionalCollection<>.joined(separator:)();
          v172 = v171;

          v173 = sub_1002FFA0C(v170, v172, &v251);

          *(v169 + 4) = v173;
          _os_log_impl(&_mh_execute_header, v167, v244, "Endpoint not found or reader auth failed with %s", v169, 0xCu);
          sub_1000752F4(v248);
        }

        sub_1000755A4();
        swift_allocError();
        *v174 = 256;
        goto LABEL_177;
      }

      goto LABEL_115;
    }

    if (v32 != 17)
    {

      sub_100073170();
      sub_100073170();
      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        *v189 = 16777472;
        v189[4] = v32;
        v190 = "Received notify share session with unsupported version 0x%hhx and expected version 0x11";
LABEL_189:
        _os_log_impl(&_mh_execute_header, v187, v188, v190, v189, 5u);

        goto LABEL_190;
      }

      goto LABEL_190;
    }

    v50 = Data._bridgeToObjectiveC()().super.isa;
    v51 = [v210 TLVsWithData:v50];

    if (!v51)
    {
      goto LABEL_238;
    }

    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v52 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (!v53)
      {
LABEL_167:

        sub_10006A178(v222, v223);

        goto LABEL_22;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v53)
      {
        goto LABEL_167;
      }
    }

    v233 = 0;
    buf = 0;
    v54 = 0;
    v55 = 0;
    v224 = v53;
    v225 = v52 & 0xC000000000000001;
    v216 = v52 + 32;
    v217 = v52 & 0xFFFFFFFFFFFFFF8;
    v4 = 0xF000000000000000;
    v56 = 0xF000000000000000;
    v57 = 0xF000000000000000;
LABEL_43:
    if (v225)
    {
      v58 = v55;
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v25)
      {
        break;
      }

      goto LABEL_49;
    }

    if (v55 >= *(v217 + 16))
    {
      goto LABEL_204;
    }

    v61 = v55;
    v59 = *(v216 + 8 * v55);
    v25 = __OFADD__(v61, 1);
    v60 = v61 + 1;
    if (v25)
    {
      break;
    }

LABEL_49:
    v227 = v60;
    v8 = v59;
    v242 = v57;
    v246 = v4;
    if ([v59 tag] == 194)
    {
      oslog = v8;
      v62 = [v8 children];
      if (!v62)
      {
        goto LABEL_225;
      }

      v63 = v62;
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v4 >> 62))
      {
        v64 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v65 = v8;
        if (v64)
        {
          goto LABEL_53;
        }

        goto LABEL_80;
      }

      v64 = _CocoaArrayWrapper.endIndex.getter();
      v65 = v8;
      if (!v64)
      {
LABEL_80:

        goto LABEL_42;
      }

LABEL_53:
      if (v64 < 1)
      {
        goto LABEL_206;
      }

      v237 = v56;
      v240 = v54;
      v66 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v68 = *(v4 + 8 * v66 + 32);
        }

        v69 = v68;
        v70 = [v68 tag];
        switch(v70)
        {
          case 6u:
            v79 = [v69 v21[48]];
            if (!v79)
            {
              sub_10006A2D0(buf, v246);
              buf = 0;
              v246 = 0xF000000000000000;
              goto LABEL_57;
            }

            v80 = v79;
            v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v82 = v81;
            sub_10006A2D0(buf, v246);

            v69 = v80;
            buf = v8;
            v246 = v82;
            break;
          case 5u:
            v75 = [v69 v21[48]];
            if (!v75)
            {
              sub_10006A2D0(v233, v237);
              v233 = 0;
              v237 = 0xF000000000000000;
              goto LABEL_57;
            }

            v76 = v75;
            v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;
            sub_10006A2D0(v233, v237);

            v69 = v76;
            v233 = v8;
            v237 = v78;
            break;
          case 4u:
            v71 = [v69 v21[48]];
            if (!v71)
            {
              sub_10006A2D0(v240, v242);
              v240 = 0;
              v242 = 0xF000000000000000;
              goto LABEL_57;
            }

            v72 = v71;
            v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;
            sub_10006A2D0(v240, v242);

            v69 = v72;
            v240 = v8;
            v242 = v74;
            break;
          default:
            v83 = oslog;
            v84 = Logger.logObject.getter();
            v8 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v84, v8))
            {
              v67 = swift_slowAlloc();
              *v67 = 67109120;
              *(v67 + 4) = [v83 tag];

              _os_log_impl(&_mh_execute_header, v84, v8, "Ignoring unknown tag value %u for get event", v67, 8u);
              inited = v226;
            }

            else
            {

              v69 = v83;
            }

            break;
        }

        v21 = &selRef_type;
LABEL_57:
        ++v66;

        if (v64 == v66)
        {

          v24 = v221;
          v56 = v237;
          v54 = v240;
          goto LABEL_42;
        }
      }
    }

    v85 = v54;
    v86 = v24;
    v87 = v56;
    v88 = v8;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = [v88 tag];

      _os_log_impl(&_mh_execute_header, v89, v90, "Ignoring unknown tag value %u for message in exchange", v8, 8u);
    }

    else
    {
    }

    v56 = v87;
    v24 = v86;
    v54 = v85;
LABEL_42:
    v55 = v227;
    v57 = v242;
    v4 = v246;
    if (v227 != v224)
    {
      goto LABEL_43;
    }

    if (v242 >> 60 == 15)
    {

      sub_10006A178(v222, v223);
      v116 = buf;
      v117 = v246;
    }

    else
    {
      if (v56 >> 60 == 15)
      {
        sub_10006A2D0(buf, v246);

        sub_10006A178(v222, v223);
        sub_10006A2D0(v54, v242);
        goto LABEL_22;
      }

      if (v246 >> 60 != 15)
      {
        sub_10006A2BC(v233, v56);
        sub_10006A2BC(v54, v242);
        sub_10006A2BC(buf, v246);
        oslogb = Logger.logObject.getter();
        v143 = static os_log_type_t.info.getter();
        sub_10006A2D0(v233, v56);
        sub_10006A2D0(v54, v242);
        sub_10006A2D0(buf, v246);
        v229 = v143;
        if (os_log_type_enabled(oslogb, v143))
        {
          v144 = swift_slowAlloc();
          v251 = swift_slowAlloc();
          *v144 = v208;
          sub_100069E2C(v233, v56);
          v145 = Data.description.getter();
          v147 = v146;
          sub_10006A2D0(v233, v56);
          v148 = sub_1002FFA0C(v145, v147, &v251);

          *(v144 + 4) = v148;
          *(v144 + 12) = 2080;
          sub_100069E2C(v54, v242);
          v149 = Data.description.getter();
          v151 = v150;
          sub_10006A2D0(v54, v242);
          v152 = sub_1002FFA0C(v149, v151, &v251);

          *(v144 + 14) = v152;
          *(v144 + 22) = 2080;
          sub_100069E2C(buf, v246);
          v153 = Data.description.getter();
          v155 = v154;
          sub_10006A2D0(buf, v246);
          v156 = sub_1002FFA0C(v153, v155, &v251);
          v21 = &selRef_type;

          *(v144 + 24) = v156;
          _os_log_impl(&_mh_execute_header, oslogb, v229, "Logging for peer Product ID %s, vendor ID %s, firmware version %s", v144, 0x20u);
          swift_arrayDestroy();
        }

        v4 = v54;
        sub_1002F76D4(v233, v56, v54, v242, buf, v246);

        sub_10006A178(v222, v223);
        sub_10006A2D0(v54, v242);
        sub_10006A2D0(v233, v56);
        sub_10006A2D0(buf, v246);

        goto LABEL_22;
      }

      sub_10006A178(v222, v223);
      v116 = v54;
      v117 = v242;
    }

    sub_10006A2D0(v116, v117);
    sub_10006A2D0(v233, v56);
LABEL_22:
    v46 = v213;
    v18 = v214;
LABEL_23:
    v20 = v219;
    if (v219 == v46)
    {
      goto LABEL_216;
    }
  }

  __break(1u);
LABEL_201:
  sub_1000755A4();
  swift_allocError();
  *v206 = 0;
LABEL_177:
  swift_willThrow();

  v175 = v57;
  v176 = v8;
LABEL_178:
  sub_10006A178(v175, v176);
}

uint64_t sub_100073178(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v49 = v3;
  v50 = &v45[-v9];
  v10 = *(v1 + 24);
  v55 = v11;
  v51 = v1;
  v52 = v2;
  v48 = v5;
  if (v10 >> 62)
  {
LABEL_30:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v15 = *(v10 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      v17 = *(v15 + 16);
      if (v17)
      {

        v18 = static UUID.== infix(_:_:)();

        if (v18)
        {

          v30 = v51;
          swift_beginAccess();
          v31 = *(v30 + 4);
          if (v31[2])
          {
            swift_beginAccess();
            if (v31[2])
            {
              v14 = v31[4];
              v17 = v31[5];
              v18 = v31[6];

              sub_1001A19B8(0, 1);
              swift_endAccess();
              *(v15 + 16) = v14;

              v13 = v54;
              if (qword_100501D88 == -1)
              {
                goto LABEL_23;
              }
            }

            else
            {
              __break(1u);
            }

            swift_once();
LABEL_23:
            v32 = v50;
            v33 = v55;
            (*(v13 + 16))(v50, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v55);

            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v56[0] = v47;
              *v36 = 136315138;
              v51 = v17;
              v37 = v49;
              v38 = *(v49 + 16);
              v46 = v35;
              v39 = v48;
              v40 = v52;
              v38(v48, v14 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v52);
              sub_10007554C();
              v41 = dispatch thunk of CustomStringConvertible.description.getter();
              v53 = v18;
              v43 = v42;
              (*(v37 + 8))(v39, v40);
              v17 = v51;
              v44 = sub_1002FFA0C(v41, v43, v56);

              *(v36 + 4) = v44;
              _os_log_impl(&_mh_execute_header, v34, v46, "Allocating free slot to next waiter %s", v36, 0xCu);
              sub_1000752F4(v47);

              (*(v13 + 8))(v50, v55);
            }

            else
            {

              (*(v13 + 8))(v32, v33);
            }

            v56[0] = v14;
            v17(v56);
          }

          else
          {
            *(v15 + 16) = 0;
          }
        }
      }

      ++v13;
    }

    while (v16 != v12);
  }

  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  v20 = v53;
  v19 = v54;
  v21 = v55;
  (*(v54 + 16))(v53, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v55);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57[0] = v25;
    *v24 = 136315138;
    sub_10007554C();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = sub_1002FFA0C(v26, v27, v57);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "No slot to belongs to %s, doing nothing", v24, 0xCu);
    sub_1000752F4(v25);
  }

  return (*(v19 + 8))(v20, v21);
}

void sub_100073834(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_isRunning) == 1)
  {
    [*(*(a1 + OBJC_IVAR____TtC10seserviced8LyonPeer_stepUpHelper) + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stsHelper) invalidate];
    if (*(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging))
    {
LABEL_8:
      sub_100073178(a1);
      return;
    }

    if (qword_100501A30 == -1)
    {
LABEL_7:
      sub_100194774(a1);
      goto LABEL_8;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Not running", v11, 2u);
  }
}

uint64_t type metadata accessor for LyonSE(uint64_t a1)
{
  result = qword_1005022B0;
  if (!qword_1005022B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100073B8C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SEStorageMockEntryStore.Context.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100073C94(unint64_t result)
{
  v1[4] = _swiftEmptyArrayStorage;
  v1[2] = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for SlotManager.LyonURSKSlot();
      do
      {
        *(swift_allocObject() + 16) = 0;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v2;
      }

      while (v2);
    }

    v1[3] = _swiftEmptyArrayStorage;
    return v1;
  }

  return result;
}

uint64_t sub_100073D64()
{

  return swift_deallocClassInstance();
}

void sub_100073DEC(uint64_t a1)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + OBJC_IVAR____TtC10seserviced6LyonSE_enableI2CLogging) == 1)
  {
    if (qword_100501A30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    type metadata accessor for SERequest(0);
    v8 = swift_allocObject();
    v9 = v8 + OBJC_IVAR____TtC10seserviced9SERequest_reason;
    strcpy((v8 + OBJC_IVAR____TtC10seserviced9SERequest_reason), "Print I2C logs");
    *(v9 + 15) = -18;
    *(v8 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    v10 = v8 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v8 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
    *(v8 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = a1;
    v11 = v8 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
    *v11 = 0;
    *(v11 + 8) = 1;
    sub_1000756F8(v5, v8 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
    v12 = v8 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v8 + 32) = sub_100075D20;
    *(v8 + 40) = v7;
    v13 = v1;

    sub_100075768(v5, &unk_10050BE80, &unk_10040B360);
    sub_1001939C8(0, v8);
  }
}

void sub_100074064(void *a1, const char *a2, NSObject *a3)
{
  if (a2)
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "could not get SE for i2c logs", v5, 2u);
    }

    return;
  }

  v7 = sub_1003AF3C4(a1, a2);
  v8 = [v7 type];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8 < 4)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found P73x selecting ISD", v12, 2u);
    }

    v13 = sub_10013044C(0x3030343034413030, 0xEA00000000003030);
    if (v14 >> 60 == 15)
    {
      __break(1u);
      return;
    }

    v15 = v13;
    v16 = v14;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v15, v16);
    *&v56 = 0;
    v18 = sub_1003AEA90(a1, isa, 0, &v56);

    if (v18)
    {
      v19 = v56;
      if (sub_1003B0984(v18) == 36864)
      {
        osloga = a3;

        v20 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v46 = v56;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to select 00", v49, 2u);
    }

    return;
  }

  osloga = a3;
  if (v11)
  {
    v20 = 2;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Found EOS SE", v21, 2u);
  }

  else
  {

    v20 = 2;
  }

LABEL_17:
  v22 = 0;
  v56 = xmmword_1004098D0;
  do
  {
    v23 = sub_10013044C(0x4546303036324644, 0xEC00000030304243);
    if (v24 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v26 = v23;
      v27 = v24;
      v25 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A2D0(v26, v27);
    }

    v28 = sub_1003AEDB0(a1, 128, 202, 0, 254, v25, 0, v20, &v55, v50, osloga, v53, v54, 0, v56, *(&v56 + 1), v57, v58, v59, v60, v61, v62, v63);

    if (!v28)
    {
      v43 = v55;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_26;
    }

    v29 = v55;

    v22 = v28;
    v30 = sub_1003B0934(v22);
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    Data.append(_:)();
    sub_10006A178(v31, v33);
  }

  while (sub_1003B0984(v22) == 25360);
  v34 = v56;
  sub_100069E2C(v56, *(&v56 + 1));
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  sub_10006A178(v34, *(&v34 + 1));
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    sub_100288788(v34, *(&v34 + 1));
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v39 = BidirectionalCollection<>.joined(separator:)();
    v41 = v40;

    v42 = sub_1002FFA0C(v39, v41, &v55);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Complete I2C Logs: %s", v37, 0xCu);
    sub_1000752F4(v38);

LABEL_26:
    v45 = *(&v56 + 1);
    v44 = v56;
    goto LABEL_32;
  }

  v45 = *(&v34 + 1);
  v44 = v34;
LABEL_32:
  sub_10006A178(v44, v45);
}

void sub_1000746B8(_OWORD *a1@<X8>)
{
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_100075768(&v16, &qword_100502420, &qword_10040F310);
    goto LABEL_20;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *a1 = xmmword_1004098E0;
    return;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_19;
  }

  v8 = sub_10008C908(*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1000754F0(*(v13 + 56) + 32 * v8, &v16);
  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  if (!*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
  {

LABEL_19:

    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) != v14)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*(v13 + 16) && (v11 = sub_10008C908(*(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v1 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v12 & 1) != 0))
  {
    sub_1000754F0(*(v13 + 56) + 32 * v11, &v16);
  }

  else
  {

    v16 = 0u;
    v17 = 0u;
  }

  sub_100068FC4(&qword_100502420, &qword_10040F310);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_100074998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_100075768(&v20, &qword_100502420, &qword_10040F310);
    return;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (swift_dynamicCast())
  {
    if (*(v17 + 16))
    {
      v12 = sub_10008C908(*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
      if (v13)
      {
        sub_1000754F0(*(v17 + 56) + 32 * v12, &v20);
        if (swift_dynamicCast())
        {
          if (*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
          {
            if (*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) == v18)
            {

              goto LABEL_16;
            }

            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v14)
            {
LABEL_16:
              if (*(v17 + 16) && (v15 = sub_10008C908(*(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v4 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v16 & 1) != 0))
              {
                sub_1000754F0(*(v17 + 56) + 32 * v15, &v20);
              }

              else
              {

                v20 = 0u;
                v21 = 0u;
              }

              sub_100068FC4(&qword_100502420, &qword_10040F310);
              sub_100068FC4(a3, a4);
              swift_dynamicCast();
              return;
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100074C60()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    sub_100075768(&v14, &qword_100502420, &qword_10040F310);
    return;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (swift_dynamicCast())
  {
    if (*(v11 + 16))
    {
      v6 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
      if (v7)
      {
        sub_1000754F0(*(v11 + 56) + 32 * v6, &v14);
        if (swift_dynamicCast())
        {
          if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
          {
            if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) == v12)
            {

              goto LABEL_16;
            }

            v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v8)
            {
LABEL_16:
              if (*(v11 + 16) && (v9 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v10 & 1) != 0))
              {
                sub_1000754F0(*(v11 + 56) + 32 * v9, &v14);
              }

              else
              {

                v14 = 0u;
                v15 = 0u;
              }

              sub_100068FC4(&qword_100502420, &qword_10040F310);
              swift_dynamicCast();
              return;
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100074F10()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    sub_100075768(&v14, &qword_100502420, &qword_10040F310);
    return;
  }

  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (swift_dynamicCast())
  {
    if (*(v11 + 16))
    {
      v6 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey + 8));
      if (v7)
      {
        sub_1000754F0(*(v11 + 56) + 32 * v6, &v14);
        if (swift_dynamicCast())
        {
          if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID + 8))
          {
            if (*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID) == v12)
            {

              goto LABEL_16;
            }

            v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v8)
            {
LABEL_16:
              if (*(v11 + 16) && (v9 = sub_10008C908(*(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey), *(v0 + OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey + 8)), (v10 & 1) != 0))
              {
                sub_1000754F0(*(v11 + 56) + 32 * v9, &v14);
              }

              else
              {

                v14 = 0u;
                v15 = 0u;
              }

              sub_100068FC4(&qword_100502420, &qword_10040F310);
              swift_dynamicCast();
              return;
            }
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_1000751C8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v7(v6, v10, a3, a4);

  sub_10006A2D0(v6, v10);
}

void *sub_1000752B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000752F4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100075340()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100075390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100075400()
{
  result = qword_100502410;
  if (!qword_100502410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502410);
  }

  return result;
}

uint64_t sub_100075454()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000754A4()
{
  result = qword_100502418;
  if (!qword_100502418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100502418);
  }

  return result;
}

uint64_t sub_1000754F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10007554C()
{
  result = qword_100504C70;
  if (!qword_100504C70)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504C70);
  }

  return result;
}

unint64_t sub_1000755A4()
{
  result = qword_100502430;
  if (!qword_100502430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502430);
  }

  return result;
}

uint64_t sub_1000755F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075644()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100075684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007569C()
{

  sub_10006A178(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000756F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075768(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100068FC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000757C8(uint64_t a1, uint64_t a2, id a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = *(a2 + 24);
  v39 = a2;
  v40 = v10;
  v41 = v6;
  v38 = v7;
  v12 = a1;
  if (v11 >> 62)
  {
LABEL_26:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a3 = a3;

  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v15 = *(v11 + 8 * v14 + 32);

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_13;
        }
      }

      if (!*(v15 + 16))
      {

        *(v15 + 16) = v12;

        sub_10006D4F8(v36);
      }

      ++v14;
    }

    while (v16 != v13);
  }

  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  v17 = v38;
  v18 = v41;
  (*(v38 + 16))(v9, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v41);
  v19 = v12;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42[0] = v23;
    *v22 = 136315138;
    type metadata accessor for UUID();
    sub_10007554C();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = sub_1002FFA0C(v24, v25, v42);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "No free slot available, adding %s to queue", v22, 0xCu);
    sub_1000752F4(v23);

    (*(v17 + 8))(v9, v41);
  }

  else
  {

    (*(v17 + 8))(v9, v18);
  }

  v27 = v39;
  v28 = v40;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100075CEC;
  *(v29 + 24) = v28;
  swift_beginAccess();
  v30 = *(v27 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 32) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_10012E7F8(0, v30[2] + 1, 1, v30);
    *(v27 + 32) = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_10012E7F8((v32 > 1), v33 + 1, 1, v30);
  }

  v30[2] = v33 + 1;
  v34 = &v30[3 * v33];
  v34[4] = v19;
  v34[5] = sub_100075CF4;
  v34[6] = v29;
  *(v27 + 32) = v30;
  swift_endAccess();
}

uint64_t sub_100075C60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100075CA8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    sub_100069E2C(a1, a2);
  }
}

uint64_t sub_100075CB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_100075D50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100075D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100075E04()
{
  type metadata accessor for AlishaLPEM(0);
  swift_allocObject();
  result = sub_100075E44();
  qword_10051B180 = result;
  return result;
}

uint64_t sub_100075E44()
{
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOWORD(aBlock[0]) = 256;
  v4 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_100079E7C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004C5C18;
  v1 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

void sub_100076084(char *a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v2 - 8);
  v140 = v127 - v3;
  v149 = sub_100068FC4(&qword_1005025D8, &qword_100409A10);
  v151 = *(v149 - 8);
  __chkstk_darwin(v149);
  v144 = v127 - v4;
  v5 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v150 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v127 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    v13 = *(v9 + 104);
    LODWORD(v154) = enum case for DispatchPredicate.onQueue(_:);
    v153 = v13;
    v13(v11);
    v14 = v12;
    v15 = _dispatchPreconditionTest(_:)();
    v16 = *(v9 + 8);
    v16(v11, v8);
    if (v15)
    {
      v152 = v14;
      if (qword_100501DA8 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    v18 = qword_100501D78;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = swift_allocObject();
    *(v19 + 16) = sub_100078928;
    *(v19 + 24) = v17;

    v20 = sub_1000CAAC4();

    v21 = v20;

    v22 = v20 & 0xC000000000000001;
    if ((v20 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_11;
      }

      v23 = __CocoaSet.count.getter();
    }

    else
    {
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_11;
      }
    }

    if (v23 > 8)
    {
LABEL_11:

      v24 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v5))
      {
        v25 = v21;
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        if (v22)
        {
          v22 = v25;
          v7 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = v25;
          v7 = *(v25 + 16);
        }

        *(v26 + 4) = v7;

        _os_log_impl(&_mh_execute_header, v24, v5, "Disabling LPEM due to %ld peers", v26, 0xCu);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v31 = v152;
      v30 = v153;
      *v11 = v152;
      v30(v11, v154, v8);
      v32 = v31;
      v33 = _dispatchPreconditionTest(_:)();
      v16(v11, v8);
      if (v33)
      {
        sub_10034682C(0);
        return;
      }

      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_16;
    }

    v139 = v20;
    if (qword_100501960 != -1)
    {
      goto LABEL_71;
    }

LABEL_16:
    v27 = sub_1000E5E60();
    v29 = v28;
    sub_1000E616C(v139, &v159);
    v135 = v159;
    v136 = v160;
    v137 = v161;
    v138 = v162;
    v34 = v163;
    v159 = v163;

    sub_100078998(&v159);
    v35 = v159;
    v36 = v159[2];
    if (v22)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *(v139 + 16);
    }

    v147 = v35;
    if (v36 != v37)
    {

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134218240;
        if (v22)
        {
          v62 = __CocoaSet.count.getter();
        }

        else
        {
          v62 = *(v139 + 16);
        }

        *(v61 + 4) = v62;

        *(v61 + 12) = 2048;
        v126 = v147[2];

        *(v61 + 14) = v126;

        _os_log_impl(&_mh_execute_header, v59, v60, "Missing pairing information for %ld peers got %ld", v61, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_10006A178(v27, v29);

      sub_10006A178(v135, v136);
      sub_10006A178(v137, v138);

      return;
    }

    v127[1] = v34;
    v38 = swift_allocObject();
    v145 = type metadata accessor for __DataStorage();
    swift_allocObject();
    v146 = v36;
    v39 = __DataStorage.init(capacity:)();
    *(v38 + 16) = 0;
    v129 = v38;
    *(v38 + 24) = v39 | 0x4000000000000000;
    LOBYTE(v157) = 1;
    v40 = v27;
    v41 = &v157 + 1;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LODWORD(v157) = 0x1000000;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 4;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    Data.append(_:)();
    Data.append(_:)();
    v128 = v40;
    Data.append(_:)();
    v42 = v150;
    v43 = v148;
    v150[2](v7, v148 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__isLoggingEnabled, v5);
    UserDefaultBacked.wrappedValue.getter();
    v45 = v42[1];
    v44 = (v42 + 1);
    (v45)(v7, v5);
    LOBYTE(v157) = v159;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v47 = v46 + 16;
    v133 = v46;
    *(v46 + 24) = 0;
    LOBYTE(v157) = 1;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    v48 = v146;
    sub_1000752F4(&v159);
    if (v48 > 255)
    {
      break;
    }

    v134 = v29;
    LOBYTE(v157) = v48;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    *&v154 = v47;
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    v49 = OBJC_IVAR____TtC10seserviced10AlishaLPEM_logger;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    v52 = os_log_type_enabled(v50, v51);
    v131 = v49;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 16777472;
      v54 = v151;
      v55 = *(v151 + 2);
      v56 = (v151 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57 = v144;
      v58 = v149;
      (v55)(v144, v43 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__latency, v149);
      UserDefaultBacked.wrappedValue.getter();
      (*(v54 + 8))(v57, v58);
      v53[4] = v159;
      v9 = v43;

      _os_log_impl(&_mh_execute_header, v50, v51, "Using car0 latency value %hhu", v53, 5u);
    }

    else
    {

      v9 = v43;
      v55 = *(v151 + 2);
      v56 = (v151 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58 = v149;
      v57 = v144;
    }

    v150 = v55;
    v153 = v56;
    (v55)(v57, v9 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__latency, v58);
    v63 = v57;
    UserDefaultBacked.wrappedValue.getter();
    v64 = (v151 + 8);
    v152 = *(v151 + 1);
    v152(v57, v58);
    LOBYTE(v157) = v159;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LOBYTE(v157) = 2;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LOBYTE(v157) = 3;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LOBYTE(v157) = 6;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LOBYTE(v157) = 15;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    v67 = v58;
    v5 = v64;
    v68 = &unk_100502000;
    if (os_log_type_enabled(v65, v66))
    {
      v69 = swift_slowAlloc();
      *v69 = 16777472;
      v70 = v150;
      (v150)(v63, v9 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__btScanTimer, v67);
      UserDefaultBacked.wrappedValue.getter();
      v71 = v152;
      v152(v63, v67);
      v69[4] = v159;

      _os_log_impl(&_mh_execute_header, v65, v66, "Using car0 BT scan timer value %hhu", v69, 5u);

      v11 = v147;
      v72 = v71;
      v68 = &unk_100502000;
    }

    else
    {

      v11 = v147;
      v70 = v150;
      v72 = v152;
    }

    (v70)(v63, v9 + v68[158], v67);
    UserDefaultBacked.wrappedValue.getter();
    v72(v63, v67);
    LOBYTE(v157) = v159;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v7 = &protocol witness table for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 1;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    a1 = v154;
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LOWORD(v157) = 12288;
    v8 = &v157 + 2;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 2;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    LOWORD(v157) = 24576;
    v162 = &type metadata for UnsafeRawBufferPointer;
    v163 = &protocol witness table for UnsafeRawBufferPointer;
    v159 = &v157;
    v160 = &v157 + 2;
    sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v159);
    v73 = swift_allocObject();
    v154 = xmmword_1004098D0;
    v132 = v73;
    *(v73 + 16) = xmmword_1004098D0;
    v144 = (v73 + 16);
    v74 = swift_allocObject();
    v130 = v74;
    *(v74 + 16) = v154;
    v143 = (v74 + 16);
    if (!v146)
    {
LABEL_45:

      v41 = v134;
      v44 = v129;
      if (qword_100501A18 == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_73;
    }

    v75 = 0;
    v141 = &v156;
    v142 = v146 & ~(v146 >> 63);
    v76 = v11 + 10;
    while (v142 != v75)
    {
      if (v75 >= v11[2])
      {
        goto LABEL_66;
      }

      v153 = v75;
      v5 = *(v76 - 6);
      v77 = *(v76 - 5);
      v79 = *(v76 - 4);
      v78 = *(v76 - 3);
      v81 = *(v76 - 2);
      v80 = *(v76 - 1);
      v82 = *v76;
      swift_allocObject();

      sub_100069E2C(v77, v79);
      v152 = v81;
      sub_100069E2C(v78, v81);
      *&v154 = v80;
      v151 = v82;
      sub_100069E2C(v80, v82);
      v83 = __DataStorage.init(capacity:)();
      v157 = 0;
      v158 = v83 | 0x4000000000000000;
      Data.append(_:)();
      Data.append(_:)();
      Data.append(_:)();
      v84 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v85 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);

      v86 = v77;
      v87 = v77;
      v88 = v79;
      sub_100069E2C(v87, v79);
      v9 = v78;
      v89 = v152;
      sub_100069E2C(v78, v152);
      v90 = v154;
      v7 = v151;
      sub_100069E2C(v154, v151);
      sub_10006A2BC(v84, v85);
      v150 = v5;

      if (v85 >> 60 == 15)
      {
        goto LABEL_77;
      }

      v149 = v153 + 1;
      sub_10006A178(v90, v7);
      sub_10006A178(v9, v89);
      sub_10006A178(v86, v88);
      Data.append(_:)();
      sub_10006A2D0(v84, v85);
      v155 = 0;
      v162 = &type metadata for UnsafeRawBufferPointer;
      v163 = &protocol witness table for UnsafeRawBufferPointer;
      v159 = &v155;
      v160 = v141;
      sub_1000752B0(&v159, &type metadata for UnsafeRawBufferPointer);
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(&v159);
      v8 = v157;
      v91 = v158;
      if (v153 >= 4)
      {
        a1 = v143;
      }

      else
      {
        a1 = v144;
      }

      Data.append(_:)();

      sub_10006A178(v86, v88);
      sub_10006A178(v9, v89);
      sub_10006A178(v154, v7);
      sub_10006A178(v8, v91);
      v76 += 7;
      v75 = v149;
      v11 = v147;
      if (v146 == v149)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_46:
  sub_100074984(0xD000000000000019, 0x80000001004618E0);
  if (!v92)
  {
    goto LABEL_59;
  }

  if (v92[2] != 4)
  {
    goto LABEL_58;
  }

  v93 = *(v44 + 16);
  v94 = *(v44 + 24);
  v95 = v92[4];
  v96 = v92[5];
  v97 = v92;
  sub_100069E2C(v93, v94);
  sub_100069E2C(v95, v96);
  v98 = sub_10008FB4C(v93, v94, v95, v96);
  sub_10006A178(v95, v96);
  sub_10006A178(v93, v94);
  if (!v98)
  {
    goto LABEL_58;
  }

  if (v97[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_75;
  }

  v100 = *(v133 + 16);
  v99 = *(v133 + 24);
  v101 = v97[6];
  v102 = v97[7];
  sub_100069E2C(v100, v99);
  sub_100069E2C(v101, v102);
  v103 = sub_10008FB4C(v100, v99, v101, v102);
  sub_10006A178(v101, v102);
  sub_10006A178(v100, v99);
  if (!v103)
  {
    goto LABEL_58;
  }

  if (v97[2] < 3uLL)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v105 = *(v132 + 16);
  v104 = *(v132 + 24);
  v106 = v97[8];
  v107 = v97[9];
  sub_100069E2C(v105, v104);
  sub_100069E2C(v106, v107);
  v108 = sub_10008FB4C(v105, v104, v106, v107);
  sub_10006A178(v106, v107);
  sub_10006A178(v105, v104);
  if (v108)
  {
    if (v97[2] >= 4uLL)
    {
      v110 = *(v130 + 16);
      v109 = *(v130 + 24);
      v111 = v97[10];
      v112 = v97[11];
      sub_100069E2C(v110, v109);
      sub_100069E2C(v111, v112);

      v113 = sub_10008FB4C(v110, v109, v111, v112);
      sub_10006A178(v111, v112);
      sub_10006A178(v110, v109);
      if (v113)
      {
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&_mh_execute_header, v114, v115, "Retrieved Alisha LPEM configuration from storage", v116, 2u);
        }

        sub_1003462A8(0);

        sub_10006A178(v135, v136);
        sub_10006A178(v137, v138);

        sub_10006A178(v128, v41);
        return;
      }

      goto LABEL_59;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
  }

LABEL_58:

LABEL_59:
  if (qword_100501A30 != -1)
  {
    swift_once();
  }

  *&v154 = qword_10051B358;
  v117 = type metadata accessor for UUID();
  v118 = v140;
  (*(*(v117 - 8) + 56))(v140, 1, 1, v117);
  v119 = swift_allocObject();
  v119[2] = v148;
  v119[3] = v44;
  v120 = v132;
  v119[4] = v133;
  v119[5] = v120;
  v119[6] = v130;
  type metadata accessor for SERequest(0);
  v121 = swift_allocObject();
  v122 = (v121 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
  *v122 = 0xD000000000000017;
  v122[1] = 0x8000000100461900;
  *(v121 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
  *(v121 + 16) = 0;
  *(v121 + 24) = 1;
  v123 = v121 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
  *(v123 + 32) = 0;
  *v123 = 0u;
  *(v123 + 16) = 0u;
  *(v121 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 3;
  *(v121 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = 0;
  v124 = v121 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
  *v124 = 0;
  *(v124 + 8) = 1;
  sub_100075390(v118, v121 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
  v125 = v121 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
  *v125 = 0;
  *(v125 + 8) = 1;
  *(v121 + 32) = sub_100079E10;
  *(v121 + 40) = v119;

  sub_1001939C8(0, v121);

  sub_10006A178(v135, v136);
  sub_10006A178(v137, v138);

  sub_10006A178(v128, v134);
}

uint64_t sub_100077850(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v2 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v3 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = *v2;
  sub_100069E2C(*v2, v3);
  LOBYTE(a2) = sub_1000C66AC(v5, v3, a2);
  sub_10006A2D0(v5, v3);
  return a2 & 1;
}

void sub_1000778E8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for DispatchPredicate();
  __chkstk_darwin(v13);
  if (a2)
  {
    v45 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47[0] = v16;
      *v15 = 136315138;
      sub_100075400();
      v17 = Error.localizedDescription.getter();
      v19 = sub_1002FFA0C(v17, v18, v47);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v45, v14, "Failed to get the SE %s", v15, 0xCu);
      sub_1000752F4(v16);
    }

    else
    {
    }

    return;
  }

  v46 = a6;
  swift_beginAccess();
  v21 = *(a4 + 16);
  v20 = *(a4 + 24);
  sub_100069E2C(v21, v20);
  sub_100077F3C(a1, 811889762, 0xE400000000000000, v21, v20);
  sub_10006A178(v21, v20);
  swift_beginAccess();
  v22 = *(a5 + 16);
  v23 = *(a5 + 24);
  sub_100069E2C(v22, v23);
  sub_100077F3C(a1, 812802403, 0xE400000000000000, v22, v23);
  sub_10006A178(v22, v23);
  swift_beginAccess();
  v24 = *(v46 + 16);
  v25 = *(v46 + 24);
  sub_100069E2C(v24, v25);
  sub_100077F3C(a1, 829579619, 0xE400000000000000, v24, v25);
  sub_10006A178(v24, v25);
  v26 = a7;
  swift_beginAccess();
  v27 = *(a7 + 16);
  v28 = *(a7 + 24);
  v29 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v29)
    {
      v27 = BYTE6(v28);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v29 == 2)
  {
    v32 = v27 + 16;
    v30 = *(v27 + 16);
    v31 = *(v32 + 8);
    v33 = __OFSUB__(v31, v30);
    v27 = v31 - v30;
    if (!v33)
    {
LABEL_17:
      if (v27 >= 1)
      {
        swift_beginAccess();
        v34 = *(a7 + 16);
        v35 = *(a7 + 24);
        sub_100069E2C(v34, v35);
        sub_100077F3C(a1, 846356835, 0xE400000000000000, v34, v35);
        sub_10006A178(v34, v35);
        v26 = a7;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_15:
    v33 = __OFSUB__(HIDWORD(v27), v27);
    LODWORD(v27) = HIDWORD(v27) - v27;
    if (v33)
    {
      __break(1u);
      return;
    }

    v27 = v27;
    goto LABEL_17;
  }

LABEL_19:
  if (qword_100501A18 != -1)
  {
    swift_once();
  }

  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004099F0;
  swift_beginAccess();
  v37 = *(a4 + 16);
  v38 = *(a4 + 24);
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  swift_beginAccess();
  v40 = *(a5 + 16);
  v39 = *(a5 + 24);
  *(v36 + 48) = v40;
  *(v36 + 56) = v39;
  swift_beginAccess();
  v42 = *(v46 + 16);
  v41 = *(v46 + 24);
  *(v36 + 64) = v42;
  *(v36 + 72) = v41;
  swift_beginAccess();
  v43 = *(v26 + 16);
  v44 = *(v26 + 24);
  *(v36 + 80) = v43;
  *(v36 + 88) = v44;
  sub_100069E2C(v37, v38);
  sub_100069E2C(v40, v39);
  sub_100069E2C(v42, v41);
  sub_100069E2C(v43, v44);
  sub_10008BB30(0xD000000000000019, 0x80000001004618E0, v36);

  if (qword_100501DA8 != -1)
  {
    swift_once();
  }

  sub_1003462A8(0);
}

uint64_t sub_100077F3C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a4;
  v59 = a1;
  v60 = type metadata accessor for String.Encoding();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  static String.Encoding.ascii.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  v21 = *(v8 + 8);
  result = v21(v10, v60);
  if (v20 >> 60 == 15)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v57 = v21;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v18, v20);
  v23 = sub_1000146EC(v59, isa, 0);

  if (v23)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v26 >> 60 != 15)
    {
      if (a5 >> 60 != 15)
      {
        sub_10006A2BC(v24, v26);
        v27 = v58;
        sub_100069E2C(v58, a5);
        v28 = sub_10008FB4C(v24, v26, v27, a5);
        sub_10006A2D0(v27, a5);
        sub_10006A2D0(v24, v26);
        if (!v28)
        {
          v29 = a2;
          goto LABEL_14;
        }

        return sub_10006A2D0(v24, v26);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  if (a5 >> 60 == 15)
  {
    sub_100069E2C(v58, a5);
    return sub_10006A2D0(v24, v26);
  }

LABEL_13:
  v29 = a2;
  sub_10006A2BC(v24, v26);
  v30 = v58;
  sub_100069E2C(v58, a5);
  sub_10006A2D0(v24, v26);
  sub_10006A2D0(v30, a5);
LABEL_14:
  v31 = OBJC_IVAR____TtC10seserviced10AlishaLPEM_logger;

  v56 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v55 = v26;
    v35 = v34;
    v36 = swift_slowAlloc();
    v54 = v24;
    v37 = v36;
    v61 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1002FFA0C(v29, a3, &v61);
    _os_log_impl(&_mh_execute_header, v32, v33, "Updating Sunsprite '%s'", v35, 0xCu);
    sub_1000752F4(v37);
    v24 = v54;

    v26 = v55;
  }

  static String.Encoding.ascii.getter();
  v55 = v29;
  v38 = String.data(using:allowLossyConversion:)();
  v40 = v39;
  result = v57(v10, v60);
  if (v40 >> 60 == 15)
  {
    goto LABEL_24;
  }

  v41 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v38, v40);
  v42 = Data._bridgeToObjectiveC()().super.isa;
  v43 = sub_1000144B4(v59, v41, v42);

  if (!v43)
  {
    return sub_10006A2D0(v24, v26);
  }

  v44 = v24;

  v45 = v43;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_1002FFA0C(v55, a3, &v61);
    *(v48 + 12) = 2080;
    swift_getErrorValue();
    v49 = Error.localizedDescription.getter();
    v51 = sub_1002FFA0C(v49, v50, &v61);

    *(v48 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v46, v47, "Failed to write to Sunsprite '%s' %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  sub_100079E24();
  swift_allocError();
  *v52 = 0;
  swift_willThrow();

  return sub_10006A2D0(v44, v26);
}

uint64_t sub_100078598()
{
  v1 = OBJC_IVAR____TtC10seserviced10AlishaLPEM__latency;
  v2 = sub_100068FC4(&qword_1005025D8, &qword_100409A10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced10AlishaLPEM__btScanTimer, v2);
  v4 = OBJC_IVAR____TtC10seserviced10AlishaLPEM__isLoggingEnabled;
  v5 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC10seserviced10AlishaLPEM_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaLPEM(uint64_t a1)
{
  result = qword_100502530;
  if (!qword_100502530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100078750(uint64_t a1)
{
  sub_100078874(319, &unk_100502540, &type metadata for UInt8);
  if (v1 <= 0x3F)
  {
    sub_100078874(319, &qword_100506E70, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100078874(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for UserDefaultBacked();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000788F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100078930()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100078998(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100079D90(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100078A3C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100078A04()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_100078A3C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100068FC4(&qword_1005025F0, &qword_100409A18);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100078D74(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100078B44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100078B44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = (*a4 + 56 * a3);
    v5 = result - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = (v20 + 56 * a3);
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    v11 = v6[4];
    v10 = v6[5];
    v12 = v6[6];
    v17 = v5;
    v21 = v5;
    while (1)
    {
      v22 = *(v4 - 6);
      v28 = *(v4 - 5);
      v23 = *(v4 - 3);
      v24 = *(v4 - 4);
      v25 = *(v4 - 1);
      v26 = *(v4 - 2);

      sub_100069E2C(v7, v8);
      sub_100069E2C(v9, v11);
      sub_100069E2C(v10, v12);

      sub_100069E2C(v22, v28);
      sub_100069E2C(v24, v23);
      sub_100069E2C(v26, v25);
      v27 = static UUID.< infix(_:_:)();

      sub_10006A178(v22, v28);
      sub_10006A178(v24, v23);
      sub_10006A178(v26, v25);

      sub_10006A178(v7, v8);
      sub_10006A178(v9, v11);
      result = sub_10006A178(v10, v12);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 7;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v13 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      v11 = v4[4];
      v10 = v4[5];
      v12 = v4[6];
      v14 = *(v4 - 5);
      *v4 = *(v4 - 7);
      *(v4 + 1) = v14;
      *(v4 + 2) = *(v4 - 3);
      v4[6] = *(v4 - 1);
      *(v4 - 6) = v7;
      *(v4 - 5) = v8;
      *(v4 - 4) = v9;
      *(v4 - 3) = v11;
      *(v4 - 2) = v10;
      *(v4 - 1) = v12;
      *(v4 - 7) = v13;
      v4 -= 7;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100078D74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v113 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_100079C78(v10);
      v10 = result;
    }

    v104 = v10;
    v105 = *(v10 + 16);
    if (v105 >= 2)
    {
      v10 = 56;
      while (1)
      {
        v106 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = *&v104[16 * v105];
        v107 = *&v104[16 * v105 + 24];
        sub_1000796FC((v106 + 56 * v7), (v106 + 56 * *&v104[16 * v105 + 16]), v106 + 56 * v107, v5);
        if (v6)
        {
        }

        if (v107 < v7)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_100079C78(v104);
        }

        if (v105 - 2 >= *(v104 + 2))
        {
          goto LABEL_115;
        }

        v108 = &v104[16 * v105];
        *v108 = v7;
        *(v108 + 1) = v107;
        result = sub_100079BEC(v105 - 1);
        v105 = *(v104 + 2);
        v7 = a3;
        if (v105 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v21 = v9 + 1;
    }

    else
    {
      v121 = v8;
      v110 = v10;
      v112 = v6;
      v11 = *v7 + 56 * (v9 + 1);
      v5 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = *(v11 + 40);
      v142 = *(v11 + 48);
      v144 = *(v11 + 32);
      v124 = 56 * v9;
      v16 = (*v7 + 56 * v9);
      v17 = v16[1];
      v18 = v16[2];
      v134 = v16[3];
      v131 = v16[4];
      v139 = v16[5];
      v137 = v16[6];
      v114 = v9;

      sub_100069E2C(v12, v14);
      sub_100069E2C(v13, v144);
      sub_100069E2C(v15, v142);

      sub_100069E2C(v17, v18);
      sub_100069E2C(v134, v131);
      sub_100069E2C(v139, v137);
      v126 = static UUID.< infix(_:_:)();

      sub_10006A178(v17, v18);
      sub_10006A178(v134, v131);
      sub_10006A178(v139, v137);

      sub_10006A178(v12, v14);
      sub_10006A178(v13, v144);
      result = sub_10006A178(v15, v142);
      v19 = v9 + 2;
      v20 = v16 + 20;
      while (1)
      {
        v21 = v121;
        if (v121 == v19)
        {
          break;
        }

        v22 = *(v20 - 5);
        v23 = *(v20 - 4);
        v24 = *(v20 - 3);
        v143 = *(v20 - 2);
        v25 = *(v20 - 1);
        v141 = v25;
        v145 = *v20;
        v26 = *(v20 - 12);
        v27 = *(v20 - 11);
        v130 = *(v20 - 9);
        v132 = *(v20 - 10);
        v140 = *(v20 - 8);
        v135 = *(v20 - 7);

        sub_100069E2C(v22, v23);
        sub_100069E2C(v24, v143);
        sub_100069E2C(v25, v145);

        sub_100069E2C(v26, v27);
        v5 = v132;
        sub_100069E2C(v132, v130);
        sub_100069E2C(v140, v135);
        v28 = static UUID.< infix(_:_:)() & 1;

        sub_10006A178(v26, v27);
        sub_10006A178(v132, v130);
        sub_10006A178(v140, v135);

        sub_10006A178(v22, v23);
        sub_10006A178(v24, v143);
        result = sub_10006A178(v141, v145);
        ++v19;
        v20 += 7;
        if ((v126 & 1) != v28)
        {
          v21 = v19 - 1;
          break;
        }
      }

      v10 = v110;
      v6 = v112;
      v9 = v114;
      v7 = a3;
      if (v126)
      {
        if (v21 < v114)
        {
          goto LABEL_118;
        }

        if (v114 < v21)
        {
          v29 = 56 * v21 - 56;
          v30 = v124 + 40;
          v31 = v21;
          v32 = v114;
          do
          {
            if (v32 != --v31)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = v42 + v30;
              v34 = *(v42 + v30 - 40);
              v35 = v42 + v29;
              v36 = *(v33 - 32);
              v37 = *(v33 - 16);
              v38 = *v33;
              v40 = *(v35 + 16);
              v39 = *(v35 + 32);
              v41 = *(v35 + 48);
              *(v33 - 40) = *v35;
              *(v33 + 8) = v41;
              *(v33 - 8) = v39;
              *(v33 - 24) = v40;
              *v35 = v34;
              *(v35 + 8) = v36;
              *(v35 + 24) = v37;
              *(v35 + 40) = v38;
            }

            ++v32;
            v29 -= 56;
            v30 += 56;
          }

          while (v32 < v31);
        }
      }
    }

    v43 = *(v7 + 8);
    if (v21 < v43)
    {
      if (__OFSUB__(v21, v9))
      {
        goto LABEL_117;
      }

      if (v21 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v43)
        {
          v44 = *(v7 + 8);
        }

        else
        {
          v44 = v9 + a4;
        }

        if (v44 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v21 != v44)
        {
          break;
        }
      }
    }

    v45 = v21;
    if (v21 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100079C8C(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v47 = *(v10 + 16);
    v46 = *(v10 + 24);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_100079C8C((v46 > 1), v47 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v48;
    v49 = v10 + 16 * v47;
    *(v49 + 32) = v9;
    *(v49 + 40) = v45;
    v50 = *v113;
    if (!*v113)
    {
      goto LABEL_126;
    }

    v117 = v45;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 32);
          v53 = *(v10 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_48:
          if (v55)
          {
            goto LABEL_105;
          }

          v68 = (v10 + 16 * v48);
          v70 = *v68;
          v69 = v68[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_108;
          }

          v74 = (v10 + 32 + 16 * v51);
          v76 = *v74;
          v75 = v74[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_112;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v78 = (v10 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_62:
        if (v73)
        {
          goto LABEL_107;
        }

        v81 = v10 + 16 * v51;
        v83 = *(v81 + 32);
        v82 = *(v81 + 40);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_110;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_69:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v90 = *(v10 + 32 + 16 * v89);
        v5 = *(v10 + 32 + 16 * v51 + 8);
        sub_1000796FC((*v7 + 56 * v90), (*v7 + 56 * *(v10 + 32 + 16 * v51)), *v7 + 56 * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100079C78(v10);
        }

        if (v89 >= *(v10 + 16))
        {
          goto LABEL_102;
        }

        v91 = v10 + 16 * v89;
        *(v91 + 32) = v90;
        *(v91 + 40) = v5;
        result = sub_100079BEC(v51);
        v48 = *(v10 + 16);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = v10 + 32 + 16 * v48;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_103;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_104;
      }

      v63 = (v10 + 16 * v48);
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_106;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_109;
      }

      if (v67 >= v59)
      {
        v85 = (v10 + 32 + 16 * v51);
        v87 = *v85;
        v86 = v85[1];
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v117;
    if (v117 >= v8)
    {
      goto LABEL_88;
    }
  }

  v111 = v10;
  v123 = *v7;
  v92 = (*v7 + 56 * v21);
  v115 = v9;
  v93 = v9 - v21;
  v118 = v44;
LABEL_80:
  v120 = v92;
  v122 = v21;
  v94 = (v123 + 56 * v21);
  v95 = v94[1];
  v97 = v94[2];
  v96 = v94[3];
  v98 = v94[4];
  v99 = v94[5];
  v100 = v94[6];
  v119 = v93;
  v101 = v93;
  while (1)
  {
    v5 = (v92 - 7);
    v125 = v101;
    v127 = *(v92 - 6);
    v146 = *(v92 - 5);
    v128 = *(v92 - 3);
    v129 = *(v92 - 4);
    v133 = *(v92 - 1);
    v136 = *(v92 - 2);

    sub_100069E2C(v95, v97);
    sub_100069E2C(v96, v98);
    sub_100069E2C(v99, v100);

    sub_100069E2C(v127, v146);
    sub_100069E2C(v129, v128);
    sub_100069E2C(v136, v133);
    v138 = static UUID.< infix(_:_:)();

    sub_10006A178(v127, v146);
    sub_10006A178(v129, v128);
    sub_10006A178(v136, v133);

    sub_10006A178(v95, v97);
    sub_10006A178(v96, v98);
    result = sub_10006A178(v99, v100);
    if ((v138 & 1) == 0)
    {
LABEL_79:
      v21 = v122 + 1;
      v92 = v120 + 7;
      v45 = v118;
      v93 = v119 - 1;
      if (v122 + 1 != v118)
      {
        goto LABEL_80;
      }

      v10 = v111;
      v9 = v115;
      v7 = a3;
      if (v118 < v115)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v123)
    {
      break;
    }

    v102 = *v92;
    v95 = v92[1];
    v97 = v92[2];
    v96 = v92[3];
    v98 = v92[4];
    v99 = v92[5];
    v100 = v92[6];
    v103 = *(v92 - 5);
    *v92 = *v5;
    *(v92 + 1) = v103;
    *(v92 + 2) = *(v92 - 3);
    v92[6] = *(v92 - 1);
    *(v92 - 6) = v95;
    *(v92 - 5) = v97;
    *(v92 - 4) = v96;
    *(v92 - 3) = v98;
    *(v92 - 2) = v99;
    *(v92 - 1) = v100;
    *(v92 - 7) = v102;
    v92 -= 7;
    v101 = v125 + 1;
    if (v125 == -1)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}