void sub_100001AC8(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "showProfileInstalledNotification";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s] attempting profile trust notification", buf, 0xCu);
  }

  v4 = v1;
  buf[0] = 0;
  if (MISCopyProvisioningProfile() || !buf[0])
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000187AC();
    }
  }

  else
  {
    v5 = MISProfileGetValue();
    if (v5)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001883C();
    }
  }

  v5 = 0;
LABEL_11:
  if (buf[0])
  {
    CFRelease(buf[0]);
  }

  if (v5)
  {
    v6 = sub_100006B38(@"UPP_TRUST_TITLE");
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom] == 0;

    if (v8)
    {
      v11 = @"UPP_TRUST_BODY_IPHONE";
    }

    else
    {
      v9 = +[UIDevice currentDevice];
      v10 = [v9 userInterfaceIdiom] == 1;

      if (v10)
      {
        v11 = @"UPP_TRUST_BODY_IPAD";
      }

      else
      {
        v11 = @"UPP_TRUST_BODY";
      }
    }

    v12 = sub_100006B38(v11);
    v13 = [NSString stringWithFormat:v12, v5];
    v14 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.amfi.usernotifications"];
    [v2 setTitle:v6];
    [v2 setBody:v13];
    v15 = +[UNNotificationSound defaultSound];
    [v2 setSound:v15];

    v16 = [UNNotificationIcon iconForSystemImageNamed:@"gear"];
    [v2 setIcon:v16];

    [v2 setShouldIgnoreDoNotDisturb:1];
    [v2 setShouldIgnoreDowntime:1];
    [v2 setShouldHideTime:0];
    [v2 setShouldHideDate:0];
    v17 = [NSURL URLWithString:@"prefs:root=General&path=ManagedConfigurationList"];
    [v2 setDefaultActionURL:v17];

    [v2 setShouldSuppressScreenLightUp:0];
    v18 = +[NSUUID UUID];
    v19 = [v18 UUIDString];
    v20 = [UNNotificationRequest requestWithIdentifier:v19 content:v2 trigger:0 destinations:3];

    [v14 addNotificationRequest:v20 withCompletionHandler:&stru_100024FD0];
  }
}

void sub_100001E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_100001E84(id a1, NSError *a2)
{
  v2 = a2;
  v3 = off_100028C50;
  if (v2)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000188BC();
    }
  }

  else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "showProfileInstalledNotification_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s] posted profile trust notification", &v4, 0xCu);
  }
}

uint64_t sub_100001F70(uint64_t a1)
{
  v1 = a1;
  AMFIGetSecurityBootMode();
  v2 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "committing developer mode state: %u", buf, 8u);
  }

  AMFIDeveloperModeCommit();
  sub_10000B78C();
  result = sub_1000069D4(&stru_100025010);
  byte_100029290 = 1;
  return result;
}

void sub_100002078()
{
  v0 = objc_opt_new();
  if (sub_100006CC0())
  {
    v1 = sub_100006B38(@"DEV_MODE_NEEDS_AUTH");
    [v0 setOptionAuthenticationTitle:v1];

    [v0 setOptionSecurePassphrase:&__kCFBooleanTrue];
  }

  v15 = 0;
  v2 = [v0 evaluatePolicy:1024 options:0 error:&v15];
  v3 = v15;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    v6 = off_100028C50;
    if (v5 == -4)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "enableDeveloperModeWithAuth";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: will retry user authentication", buf, 0xCu);
      }

      if (++dword_100029294 <= 7)
      {
        v7 = dispatch_time(0, 5000000000);
        v8 = dispatch_get_global_queue(33, 0);
        dispatch_after_f(v7, v8, 0, sub_100002078);
      }
    }

    else
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_10001893C(v6, v4);
      }

      sub_100001F70(0);
    }
  }

  else
  {
    v9 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "enableDeveloperModeWithAuth";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: user authentication successful -- enabling developer mode", buf, 0xCu);
    }

    *buf = 1;
    v10 = v0;
    v11 = [[LAStorage alloc] initWithDomain:0 authenticationContext:v10];

    if (v11)
    {
      v12 = [NSData dataWithBytes:buf length:8];
      v16 = 0;
      [v11 setData:v12 forKey:3 error:&v16];
      v13 = v16;

      if (v13)
      {
        v14 = off_100028C50;
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
        {
          sub_1000189E4(v14, v13);
        }
      }

      else
      {
        sub_100001F70(1);
      }
    }

    else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018A8C();
    }
  }
}

void sub_10000238C()
{
  AMFIGetSecurityBootMode();
  v0 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v2 = "checkDeveloperModeEnrollment";
    v3 = 1024;
    v4 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s: resolved security-boot-mode: %u", buf, 0x12u);
  }
}

void sub_100002510(id a1)
{
  responseFlags = 0;
  error = -1;
  if (sub_100006CA0())
  {
    v1 = sub_1000099CC();
    if (v1)
    {
      v2 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x20uLL, &error, v1);
      v3 = v2;
      if (error)
      {
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
        {
          sub_100018B0C();
        }
      }

      else
      {
        v4 = CFUserNotificationReceiveResponse(v2, 0.0, &responseFlags);
        v5 = off_100028C50;
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v10 = "__startDeveloperModeEnrollment";
          v11 = 2048;
          v12 = v4;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: notify response: %ld", buf, 0x16u);
        }

        if (v4)
        {
          goto LABEL_14;
        }

        v6 = off_100028C50;
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v10 = "__startDeveloperModeEnrollment";
          v11 = 2048;
          v12 = responseFlags & 3;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: button flags: 0x%0lX", buf, 0x16u);
        }

        if (responseFlags)
        {
          sub_100002078();
        }

        else
        {
LABEL_14:
          sub_100001F70(0);
        }
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018B98();
    }
  }
}

void sub_100002720(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002748()
{
  v0 = amfi_developer_mode_status();
  v1 = off_100028C50;
  v2 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v2)
    {
      v4 = 136315138;
      v5 = "enableDeveloperModeDaemons";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: enabling developer mode daemons", &v4, 0xCu);
    }

    if (launch_enable_directory())
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100018C18();
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"security.mac.amfi.developer_mode_status.changed", 0, 0, 1u);
  }

  else if (v2)
  {
    v4 = 136315138;
    v5 = "enableDeveloperModeDaemons";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: developer mode is disabled", &v4, 0xCu);
  }
}

uint64_t sub_10000289C(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2[1] == 0;
  }

  if (v2 && a2[2] == 0 && a2[3] == 0)
  {
    sub_100002748();
    return 0;
  }

  else
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018CA0();
    }

    return 5;
  }
}

void sub_10000294C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000296C(const char *a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, vm_offset_t *a8, mach_msg_type_number_t *a9, _DWORD *a10, vm_offset_t *a11, mach_msg_type_number_t *a12, _DWORD *a13)
{
  context = objc_autoreleasePoolPush();
  v17 = [NSString stringWithUTF8String:a1];
  v18 = [NSURL fileURLWithPath:v17];

  v19 = a6;
  *a6 = 0;
  v20 = a7;
  *a7 = 0;
  v21 = a5;
  *a5 = 0;
  *a12 = 0;
  *a11 = 0;
  *a13 = 0;
  v22 = [[AMFIPathValidator_ios alloc] initWithURL:v18 withFileOffset:a2 withFlags:a3];
  v39 = 0;
  LODWORD(v17) = [v22 validateWithError:&v39];
  v23 = v39;
  v24 = v23;
  if (v17)
  {
    [v22 computedCdHash:a4];
    *v21 = [v22 signerType];
    *v19 = [v22 isValid];
    *v20 = [v22 areEntitlementsValidated];
    v25 = [v22 profileData];
    v26 = v25;
    if (v25)
    {
      if (vm_read(mach_task_self_, [v25 bytes], objc_msgSend(v25, "length"), a8, a9))
      {
        *a10 = 0;
        *a9 = 0;
      }

      else
      {
        *a10 = 1;
      }
    }

    v27 = [v22 profileAuxSig];
    v28 = v27;
    if (v27)
    {
      v29 = vm_read(mach_task_self_, [v27 bytes], objc_msgSend(v27, "length"), a11, a12);
      if (v29)
      {
        syslog(3, "%s: unable to vm_read profileAuxSig: %d", a1, v29);
        *a11 = 0;
        *a12 = 0;
      }

      else
      {
        *a13 = 1;
      }
    }

    v30 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      [v22 profileID];
      v33 = v32 = v18;
      *buf = 138543618;
      v41 = v33;
      v42 = 1024;
      v43 = v28 != 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "selected profile: %{public}@ | %u", buf, 0x12u);

      v18 = v32;
    }
  }

  else
  {
    v26 = [v23 description];
    syslog(3, "%s not valid: %s", a1, [v26 UTF8String]);
  }

  objc_autoreleasePoolPop(context);
}

void sub_100002CB4(const char *a1, _DWORD *a2)
{
  v4 = objc_autoreleasePoolPush();
  *a2 = 1;
  v5 = [NSString stringWithUTF8String:a1];
  v6 = [NSURL fileURLWithPath:v5];

  v7 = objc_opt_new();
  v12 = 0;
  v8 = [v7 queryForExecutableURL:v6 withError:&v12];
  v9 = v12;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 description];
    syslog(3, "Unable to check launch warnings for path %s: %s", a1, [v11 UTF8String]);
  }

  else if (![v8 warningState] || objc_msgSend(v8, "isUserOverridden"))
  {
    *a2 = 0;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100002DE0(uint64_t a1, uint64_t a2)
{
  if (qword_100029368 != -1)
  {
    sub_100018D38();
  }

  return qword_100029360;
}

void sub_100002E18(id a1)
{
  qword_100029360 = dispatch_workloop_create_inactive("com.apple.amfi.mach");
  dispatch_set_target_queue(qword_100029360, 0);
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  v1 = qword_100029360;

  dispatch_activate(v1);
}

void sub_100002E80(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002DE0(a1, a2);
  mach_service = xpc_connection_create_mach_service("com.apple.amfi.xpc", v2, 1uLL);
  v4 = qword_100029298;
  qword_100029298 = mach_service;

  xpc_connection_set_event_handler(qword_100029298, &stru_1000250D0);
  xpc_connection_resume(qword_100029298);
  v5 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "setupXPCInterface";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: XPC interface setup", &v6, 0xCu);
  }
}

void sub_100002F74(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v3 = v2;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003084;
    handler[3] = &unk_1000250F8;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
  }

  else if (xpc_get_type(v2) == &_xpc_type_error)
  {
    xpc_dictionary_get_string(v2, _xpc_error_key_description);
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018D4C();
    }
  }
}

void sub_100003084(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = _CFXPCCreateCFObjectFromXPCMessage();
    v7 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "__handleXPCDictionary";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: new XPC Dictionary: %@", &v13, 0x16u);
    }

    v8 = [v6 objectForKeyedSubscript:@"action"];
    v9 = [v8 longValue];

    if (v9 < 3)
    {
      v10 = (off_100025118[v9])(v6);
    }

    else
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100018E44();
      }

      v10 = &off_100026060;
    }

    reply = xpc_dictionary_create_reply(v5);

    v12 = _CFXPCCreateXPCMessageWithCFObject();
    xpc_dictionary_set_value(reply, "cfreply", v12);

    xpc_connection_send_message(v4, reply);
  }

  else if (xpc_get_type(v3) == &_xpc_type_error)
  {
    xpc_dictionary_get_string(v3, _xpc_error_key_description);
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018DC8();
    }

    xpc_connection_cancel(*(a1 + 32));
  }
}

id sub_1000032C0()
{
  v0 = AMFIArmSecurityBootMode();
  v1 = off_100028C50;
  v2 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO);
  if (v0)
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v12 = "__xpcActionArmDeveloperMode";
    v13 = 1024;
    v14 = v0;
    v3 = "%s: failed to arm security boot mode: %u";
    v4 = v1;
    v5 = 18;
  }

  else
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    v12 = "__xpcActionArmDeveloperMode";
    v3 = "%s: armed security boot mode";
    v4 = v1;
    v5 = 12;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v3, buf, v5);
LABEL_7:
  v6 = [NSNumber numberWithInt:v0 == 0, @"success"];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  return v7;
}

id sub_100003428()
{
  sub_100001F70(0);
  if (!amfi_developer_mode_status())
  {
    if (launch_disable_directory() && os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018ECC();
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"security.mac.amfi.developer_mode_status.changed", 0, 0, 1u);
  }

  v4 = @"success";
  v1 = [NSNumber numberWithInt:!amfi_developer_mode_status()];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_10000354C(void *a1)
{
  v1 = a1;
  v14[0] = &__kCFBooleanTrue;
  v13[0] = @"success";
  v13[1] = @"status";
  if (amfi_developer_mode_status())
  {
    v2 = &__kCFBooleanTrue;
  }

  else
  {
    v2 = &__kCFBooleanFalse;
  }

  v14[1] = v2;
  v13[2] = @"armed";
  AMFIGetSecurityBootModeArmed();
  v14[2] = &__kCFBooleanFalse;
  v13[3] = @"writable";
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003768;
  v6[3] = &unk_100025138;
  v6[4] = &v9;
  v6[5] = v7;
  if (sub_1000069D4(v6))
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018F54();
    }

    v3 = &__kCFBooleanFalse;
  }

  else if (v10[3])
  {
    v3 = &__kCFBooleanTrue;
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);
  v14[3] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v4;
}

void sub_10000373C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a6 | a6[1] | a6[2] | a6[3])
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100018FDC();
    }

    return 5;
  }

  else
  {
    v8 = a5;
    v9 = a4;
    if ((os_variant_is_darwinos() & 1) == 0)
    {
      sub_100009914(a2, a3, v9, v8);
    }

    return 0;
  }
}

uint64_t sub_100003844(uint64_t a1, uint64_t a2, unsigned int a3, vm_offset_t *a4, mach_msg_type_number_t *a5, _DWORD *a6, _DWORD *a7)
{
  if (*a7 | *(a7 + 1) | *(a7 + 2) | *(a7 + 3))
  {
    syslog(4, "%s: bad security token { 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x }", "construct_der_entitlements", *a7, a7[1], a7[2], a7[3], a7[4], a7[5], a7[6], a7[7]);
    return 5;
  }

  syslog(6, "Being asked to construct DER entitlements");
  v13 = sub_10000789C(a2, a3);
  sub_100007844();
  if (v13)
  {
    syslog(6, "Cannot construct DER entitlements due to an entitlement anomaly");
    return 14;
  }

  v14 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, (a2 + 8), a3 - 8, kCFAllocatorNull);
  v15 = CFPropertyListCreateWithData(kCFAllocatorDefault, v14, 0, 0, 0);
  CFRelease(v14);
  if (!v15)
  {
    syslog(6, "Cannot construct DER entitlements, possibly corrupt XML");
    return 14;
  }

  v16 = CESerializeCFDictionary();
  CFRelease(v15);
  if (v16 != kCENoError)
  {
    return 14;
  }

  v18 = mach_task_self_;
  BytePtr = CFDataGetBytePtr(0);
  Length = CFDataGetLength(0);
  v7 = vm_read(v18, BytePtr, Length, a4, a5);
  CFRelease(0);
  if (v7)
  {
    *a6 = 0;
    *a5 = 0;
  }

  else
  {
    *a6 = 1;
    syslog(6, "Successfully transmuted entitlements.");
  }

  return v7;
}

uint64_t sub_100003A48(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, vm_offset_t *a16, mach_msg_type_number_t *a17, _DWORD *a18, vm_offset_t *a19, mach_msg_type_number_t *a20, _DWORD *a21, _DWORD *a22)
{
  *a8 = 0;
  *a9 = 0;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  *a10 = 0;
  *a17 = 0;
  *a16 = 0;
  *a18 = 0;
  *a20 = 0;
  *a19 = 0;
  *a21 = 0;
  *a15 = 0;
  *(a15 + 8) = 0;
  *(a15 + 16) = 0;
  if (*a22 | *(a22 + 1) | *(a22 + 2) | *(a22 + 3))
  {
    syslog(4, "%s: bad security token { 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x }", "verify_code_directory", *a22, a22[1], a22[2], a22[3], a22[4], a22[5], a22[6], a22[7]);
  }

  else
  {
    syslog(6, "Entering iOS path for %s", a2);
    sub_10000296C(a2, a3, a4, a15, a11, a9, a8, a16, a17, a18, a19, a20, a21);
  }

  return 0;
}

uint64_t sub_100003B90(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a3 | a3[1] | a3[2] | a3[3];
  v4 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v4)
    {
      sub_100019070();
    }
  }

  else if (v4)
  {
    sub_1000190E0();
  }

  return 5;
}

uint64_t sub_100003C0C(uint64_t a1, const void *a2, void *a3)
{
  if (*a3 | a3[1] | a3[2] | a3[3])
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019070();
    }

    return 5;
  }

  v5 = open("/private/var/db/amfid/swift_playgrounds_public_key", 0);
  if (v5 == -1)
  {
    if (*__error() != 2)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100019264();
      }

      return 5;
    }

    goto LABEL_12;
  }

  v6 = v5;
  if (v5 < 0)
  {
LABEL_12:
    v8 = open("/private/var/db/amfid/swift_playgrounds_public_key", 1537, 384);
    if (v8 == -1)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_1000193FC();
      }

      return 5;
    }

    v6 = v8;
    v9 = write(v8, a2, 0x61uLL);
    v10 = off_100028C50;
    if (v9 != 97)
    {
      if (v9 == -1)
      {
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
        {
          sub_1000192F8();
        }
      }

      else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_10001938C();
      }

      close(v6);
      unlink("/private/var/db/amfid/swift_playgrounds_public_key");
      return 5;
    }

    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__s1[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "successfully stored local signing public key", __s1, 2u);
    }

    goto LABEL_28;
  }

  v12 = 0;
  memset(__s1, 0, sizeof(__s1));
  v7 = read(v5, __s1, 0x61uLL);
  if (v7 != 97)
  {
    if (v7 == -1)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100019160();
      }
    }

    else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_1000191F4();
    }

    return 5;
  }

  if (memcmp(__s1, a2, 0x61uLL))
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019120();
    }

    return 5;
  }

LABEL_28:
  close(v6);
  return 0;
}

uint64_t sub_100003EC0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 | a3[1] | a3[2] | a3[3])
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019070();
    }

    return 5;
  }

  else
  {
    v5 = open("/private/var/db/amfid/swift_playgrounds_public_key", 0);
    if (v5 == -1)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_1000194B0();
      }

      if (*__error() == 2)
      {
        return 56;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      v6 = v5;
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = read(v5, &v14, 0x61uLL);
      v8 = off_100028C50;
      if (v7 == 97)
      {
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "successfully acquired local signing public key", v13, 2u);
        }

        v3 = 0;
        *(a2 + 96) = v20;
        v9 = v19;
        *(a2 + 64) = v18;
        *(a2 + 80) = v9;
        v10 = v15;
        *a2 = v14;
        *(a2 + 16) = v10;
        v11 = v17;
        *(a2 + 32) = v16;
        *(a2 + 48) = v11;
      }

      else
      {
        if (v7 == -1)
        {
          if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
          {
            sub_100019160();
          }
        }

        else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
        {
          sub_1000191F4();
        }

        v3 = 5;
      }

      if (close(v6) == -1)
      {
        sub_100019490();
      }
    }
  }

  return v3;
}

uint64_t sub_1000040B0(uint64_t a1, const char *a2, _DWORD *a3, void *a4)
{
  *a3 = 1;
  v4 = off_100028C50;
  if (*a4 | a4[1] | a4[2] | a4[3])
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019070();
    }

    return 5;
  }

  else
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checking launch warnings for path: %s", &v8, 0xCu);
    }

    sub_100002CB4(a2, a3);
    return 0;
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = getopt(a1, a2, "d");
    v4 = 0;
  }

  while (v6 == 100);
  if (v6 != -1)
  {
    fprintf(__stderrp, "unrecognized argument '%c'\n", optopt);
    goto LABEL_22;
  }

  v7 = os_log_create("com.apple.MobileFileIntegrity", "amfid");
  v8 = &_os_log_default;
  if (v7)
  {
    v8 = v7;
  }

  off_100028C50 = v8;
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 33;
  }

  if (v5)
  {
    v10 = 63;
  }

  else
  {
    v10 = 255;
  }

  openlog("amfid", v9, 24);
  setlogmask(v10);
  syslog(6, "starting");
  v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v11;
  *v20.st_qspare = v11;
  v20.st_birthtimespec = v11;
  *&v20.st_size = v11;
  v20.st_mtimespec = v11;
  v20.st_ctimespec = v11;
  *&v20.st_uid = v11;
  v20.st_atimespec = v11;
  *&v20.st_dev = v11;
  if (!stat("/private/var/db/amfid", &v20))
  {
LABEL_23:
    sp = 0;
    sub_100004450(&sp);
    if (sp)
    {
      sub_100002DE0(v13, v14);
      qword_100029370 = dispatch_mach_create_f();
      dispatch_mach_connect();
      dispatch_release(qword_100029370);
      is_darwinos = os_variant_is_darwinos();
      if (is_darwinos)
      {
        v17 = off_100028C50;
        is_darwinos = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT);
        if (is_darwinos)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "amfid is booted as darwinOS", buf, 2u);
        }
      }

      sub_100002E80(is_darwinos, v16);
      sub_10000AC28();
      sub_100009FC4();
      sub_10000238C();
      if ((os_variant_is_darwinos() & 1) == 0)
      {
        sub_1000097E8();
      }

      sub_1000062E8();
      dispatch_main();
    }

    syslog(3, "could not get mach port");
LABEL_22:
    exit(1);
  }

  if (*__error() == 2)
  {
    if (mkdir("/private/var/db/amfid", 0x1EDu) && *__error() != 17)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_1000195D8();
      }

      return *__error();
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
  {
    sub_100019544();
  }

  return *__error();
}

void sub_100004450(mach_port_t *sp)
{
  if (bootstrap_check_in(bootstrap_port, "com.apple.MobileFileIntegrity", sp))
  {
    v1 = __error();
    v2 = strerror(*v1);
    syslog(3, "unable to checkin with launchd: %s", v2);
  }
}

void sub_1000044AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = os_transaction_create();
  if (a2 == 2 && (dispatch_mach_mig_demux() & 1) == 0)
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
  }

  if (v4)
  {
    os_release(v4);
  }
}

void sub_100004570(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void sub_100005D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005D64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005D7C(uint64_t a1)
{
  sub_100001AC8(*(*(*(a1 + 32) + 8) + 40));
  v1 = +[NSFileManager defaultManager];
  [v1 removeItemAtPath:@"/private/var/db/amfid/UPPCommitting.plist" error:0];
}

void sub_1000062B4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1000062E8()
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  AMFIGetSEPDeviceState();
  v0 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = 3;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "initiating SEP init-state ratcheting: %u", v2, 8u);
  }

  v1 = dispatch_get_global_queue(33, 0);
  dispatch_async(v1, &stru_100025180);
}

void sub_100006414(id a1)
{
  v1 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "initiating data migration procedure -- skipped on darwinOS", buf, 2u);
  }

  if ((os_variant_is_darwinos() & 1) == 0)
  {
    DMPerformMigrationIfNeeded();
  }

  v2 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "initiating setup assistant procedure -- skipped on darwinOS", buf, 2u);
  }

  if ((os_variant_is_darwinos() & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    out_token = -1;
    v4 = +[BYSetupStateNotifier sharedNotifier];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&v29 = sub_100006878;
    *(&v29 + 1) = &unk_1000251A8;
    v5 = v3;
    *v30 = v5;
    [v4 addStateChangeObserver:buf];

    v6 = [BYSetupAssistantFinishedDarwinNotification UTF8String];
    v7 = dispatch_get_global_queue(33, 0);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10000694C;
    v23 = &unk_1000251D0;
    v8 = v5;
    v24 = v8;
    notify_register_dispatch(v6, &out_token, v7, &v20);

    v9 = [BYSetupStateNotifier sharedNotifier:v20];
    v10 = [v9 currentState];

    v11 = off_100028C50;
    v12 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT);
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v12)
      {
        *v26 = 134217984;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setup assistant already in finished state: %lu", v26, 0xCu);
      }
    }

    else
    {
      if (v12)
      {
        *v26 = 134217984;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "waiting for setup assistant to complete: %lu", v26, 0xCu);
      }

      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    }

    v13 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setup assistant has finished running", v26, 2u);
    }
  }

  memset(v30, 170, sizeof(v30));
  *buf = xmmword_10001D9C0;
  v29 = unk_10001D9D0;
  v14 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  if (v14)
  {
    v15 = [NSData dataWithBytes:buf length:148];
    v20 = 0;
    v16 = [v14 exchangeData:v15 forKey:13 error:&v20];
    v17 = v20;

    v18 = off_100028C50;
    if (v17)
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100019EBC(v17, v18);
      }
    }

    else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 67109120;
      LODWORD(v27) = 3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "successfully ratched the SEP init-state: %u", v26, 8u);
    }
  }

  else
  {
    v19 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019F34(v19);
    }
  }
}

void sub_100006878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = a2;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "detected setup assistant transition: %lu -> %lu", &v7, 0x16u);
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

uint64_t sub_10000694C(uint64_t a1, int a2)
{
  v4 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "detected setup assistant completion through darwin notification", v6, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  return notify_cancel(a2);
}

uint64_t sub_1000069D4(void *a1)
{
  v1 = 3758097084;
  v2 = a1;
  connect = 0;
  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
    {
      v6 = off_100028C50;
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_100019F78(v6);
      }
    }

    v7 = connect;
    if (connect)
    {
      v1 = v2[2](v2);
      v7 = connect;
    }
  }

  else
  {
    v8 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_100019FFC(v8);
    }

    v7 = 0;
  }

  sub_100006AE8(v5, v7);

  return v1;
}

uint64_t sub_100006AE8(uint64_t object, io_connect_t connect)
{
  v2 = object;
  if (connect)
  {
    object = IOServiceClose(connect);
  }

  if (v2)
  {

    return IOObjectRelease(v2);
  }

  return object;
}

id sub_100006B38(void *a1)
{
  v1 = a1;
  v2 = [NSURL fileURLWithPath:@"/System/Library/PreferenceBundles/SecuritySettings.bundle"];
  v3 = [NSBundle bundleWithPath:@"/System/Library/PreferenceBundles/SecuritySettings.bundle"];
  Unique = _CFBundleCreateUnique();
  v5 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
  v6 = [v3 localizations];
  v7 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v5];
  v8 = [v7 firstObject];

  v9 = CFBundleCopyLocalizedStringForLocalization();
  if (Unique)
  {
    CFRelease(Unique);
  }

  return v9;
}

void sub_100006C84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_100006CC0()
{
  v0 = MGCopyAnswer();
  v1 = [v0 BOOLValue];

  return v1;
}

void sub_100006D00(_DWORD *a1, _DWORD *a2)
{
  v9 = 0;
  v8 = 4;
  v7 = 0;
  v6 = 4;
  if (sysctlbyname("security.codesigning.monitor", &v9, &v8, 0, 0))
  {
    v4 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001A080(v4);
    }
  }

  if (!sysctlbyname("security.codesigning.config", &v7, &v6, 0, 0) || (v5 = off_100028C50, !os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR)))
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_10001A10C(v5);
  if (a1)
  {
LABEL_7:
    *a1 = v9;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v7;
  }
}

void sub_100006DEC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

BOOL sub_100006E0C(uint64_t *a1, const __CFString *a2)
{
  if (!a1)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10001A550();
    return 0;
  }

  if (!a2)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10001A4C8();
    return 0;
  }

  if (!sub_10000B9F8(a1, a2))
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10001A198();
    return 0;
  }

  v4 = sub_10000B9CC(a1);
  if (sub_100007A70(v4, qword_1000292B0))
  {
    if ((sub_1000070CC(a1, a2) & 1) == 0)
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_10001A440();
      return 0;
    }

    return 1;
  }

  v6 = sub_10000B9CC(a1);
  if (sub_100007A70(v6, qword_1000292B8))
  {
    if (!sub_100007338(a1, a2))
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_10001A3B8();
      return 0;
    }

    return 1;
  }

  v7 = sub_10000B9CC(a1);
  if (sub_100007A70(v7, qword_1000292C0))
  {
    sub_100007404(a1, a2);
  }

  v8 = sub_10000B9CC(a1);
  if (sub_100007A70(v8, qword_1000292D0))
  {
    if ((a1 != &kOSBooleanTrue_single || kCFBooleanTrue != a2) && (a1 != &kOSBooleanFalse_single || kCFBooleanFalse != a2))
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_10001A2A8();
      return 0;
    }

    return 1;
  }

  v9 = sub_10000B9CC(a1);
  if (!sub_100007A70(v9, qword_1000292D8))
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v10 = 136315138;
    v11 = "BOOL valuesEqual(OSObject *, CFTypeRef)";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Encountered unknown type during %s", &v10, 0xCu);
    return 0;
  }

  if (sub_1000074B8(a1, a2))
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10001A220();
    return 0;
  }

  return result;
}

uint64_t sub_1000070CC(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_6:
    keys = 0;
    v13 = 0;
    v14 = 0;
    Count = CFDictionaryGetCount(theDict);
    v11 = 0;
    sub_100007580(&keys, Count, &v11);
    CFDictionaryGetKeysAndValues(theDict, keys, 0);
    v7 = keys;
    if (keys == v13)
    {
      v9 = 1;
      if (!keys)
      {
        return v9;
      }
    }

    else
    {
      v8 = CFGetTypeID(*keys);
      if (v8 == CFStringGetTypeID())
      {
        sub_10000BB1C(*v7);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001A770();
      }

      v9 = 0;
      v7 = keys;
      if (!keys)
      {
        return v9;
      }
    }

    v13 = v7;
    operator delete(v7);
    return v9;
  }

  while (sub_10000BA74(v3[2]))
  {
    keys = 0xAAAAAAAAAAAAAAAALL;
    v4 = sub_10000BAE8(v3[2]);
    keys = &v4->isa;
    if (!v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001A6E8();
      }

      goto LABEL_17;
    }

    Value = CFDictionaryGetValue(theDict, v4);
    if (!sub_100006E0C(v3[3], Value))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001A660();
      }

LABEL_17:
      sub_10000935C(&keys);
      return 0;
    }

    sub_10000935C(&keys);
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A5D8();
  }

  return 0;
}

void sub_1000072FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100007338(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 24) - *(a1 + 16);
  if (CFArrayGetCount(theArray) != v4 >> 3)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10001A908();
    return 0;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (!sub_100006E0C(*(*(a1 + 16) + 8 * v5), ValueAtIndex))
    {
      break;
    }

    if (++v5 >= CFArrayGetCount(theArray))
    {
      return 1;
    }
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10001A990();
    return 0;
  }

  return result;
}

BOOL sub_1000074B8(uint64_t a1, CFNumberRef number)
{
  if (CFNumberIsFloatType(number))
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10001AA18();
    return 0;
  }

  if (CFNumberGetByteSize(number) >= 9)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    sub_10001AAA0();
    return 0;
  }

  valuePtr = 0;
  if (CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr))
  {
    return valuePtr == *(a1 + 16);
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10001AB28();
    return 0;
  }

  return result;
}

void sub_100007580(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_100009390(result, a2 - v3, a3);
  }
}

uint64_t sub_1000075B0(uint64_t a1, char *__s)
{
  v6 = sub_100007AC4(__s);
  v3 = sub_1000091C4((a1 + 16), &v6);
  if (!v3)
  {
    sub_100008450("unordered_map::at: key not found");
  }

  v4 = v3[3];
  sub_100007694(v6);
  return v4;
}

_DWORD *sub_100007694(_DWORD *result)
{
  v2 = result[2];
  if (v2 != -1)
  {
    if (v2 == -2)
    {
      abort();
    }

    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    result[2] = v4;
    if ((v4 < 0) ^ v3 | (v4 == 0))
    {
      result[2] = -1;
      v5 = *(*result + 24);

      return v5();
    }
  }

  return result;
}

uint64_t sub_100007700(uint64_t a1, uint64_t a2)
{
  v3 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, *a2, *(a2 + 8), kCFAllocatorNull);
  v10 = v3;
  if (v3)
  {
    v4 = CFPropertyListCreateWithData(kCFAllocatorDefault, v3, 0, 0, 0);
    cf = v4;
    if (v4 && (v5 = CFGetTypeID(v4), v5 == CFDictionaryGetTypeID()))
    {
      CFRetain(cf);
      v8 = cf;
      v6 = sub_1000070CC(a1, cf);
      sub_100009628(&v8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001ABB0();
      }

      v6 = 0;
    }

    sub_1000095F4(&cf);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001AC38();
    }

    v6 = 0;
  }

  sub_1000095C0(&v10);
  return v6;
}

void sub_10000780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_100009628(va);
  sub_1000095F4(va1);
  sub_1000095C0(va2);
  _Unwind_Resume(a1);
}

void sub_100007848()
{
  for (i = qword_100029340; i; i = *i)
  {
    sub_100007694(*(i + 40));
  }

  sub_1000092B4(&OSSymbol::symbols);
}

uint64_t sub_10000789C(uint64_t a1, unint64_t a2)
{
  v2 = a2 - 8;
  if (a2 < 8)
  {
    return 1;
  }

  memset(__dst, 170, sizeof(__dst));
  if (a2 <= 7)
  {
    sub_100008374();
  }

  v4 = (a1 + 8);
  if (v2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__dst[2]) = a2 - 8;
  if (a2 != 8)
  {
    memcpy(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  v11 = 0;
  v5 = parseEntitlements(__dst, &v11);
  v6 = v5;
  v7 = v11;
  if (!v5 || v11)
  {
    if (v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        p_meta = &v7->meta;
        if (SHIBYTE(v7->lvars) < 0)
        {
          p_meta = *p_meta;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = p_meta;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "AMFIUnserializeXML failed: %s", &buf, 0xCu);
        v7 = v11;
      }

      sub_100007694(v7);
    }

    v3 = 0;
  }

  else
  {
    *&buf = v4;
    *(&buf + 1) = v2;
    v8 = sub_100007700(v5, &buf);
    sub_100007694(v6);
    v3 = v8 ^ 1u;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  return v3;
}

void sub_100007A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100007A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_100007AC4(char *__s)
{
  sub_100007C60(__p, __s);
  v2 = sub_100007D54(&OSSymbol::symbols, __p);
  v3 = v2;
  if ((v8 & 0x80000000) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    operator new();
  }

  operator delete(__p[0]);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_100007C60(__p, __s);
  v4 = sub_1000084AC(&OSSymbol::symbols, __p);
  if (!v4)
  {
    sub_100008450("unordered_map::at: key not found");
  }

  v5 = v4[5];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100007D18(v5);
  return v5;
}

void sub_100007C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100007C60(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008374();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t sub_100007D18(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != -1)
  {
    if (v1 <= 0)
    {
      abort();
    }

    *(result + 8) = v1 + 1;
  }

  return result;
}

const void **sub_100007D54(void *a1, uint64_t *a2)
{
  v4 = sub_100007E50(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_1000082FC(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t sub_100007E50(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_100007E90(&v5, a2, v3);
}

unint64_t sub_100007E90(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_10000823C(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_100008190(a2, a3);
  }

  else
  {
    return sub_100008098(a2, a3);
  }
}

unint64_t sub_100008098(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_100008190(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_10000823C(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_1000082FC(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_10000838C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000083E8(exception, a1);
}

std::logic_error *sub_1000083E8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10000841C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100008450(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000085A8(exception, a1);
}

const void **sub_1000084AC(void *a1, uint64_t *a2)
{
  v4 = sub_100007E50(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_1000082FC(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

std::logic_error *sub_1000085A8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_1000085DC(uint64_t a1, char *a2)
{
  *(a1 + 8) = 1;
  *a1 = off_100025270;
  *(a1 + 16) = 0;
  v3 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (a2)
  {
    sub_100007C60(&v5, a2);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v5;
    *(v3 + 16) = v6;
  }

  return a1;
}

void sub_10000866C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100008688(uint64_t a1)
{
  *a1 = off_100025270;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1000086D8(uint64_t a1)
{
  *a1 = off_100025270;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void *sub_100008748(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      sub_1000088E4(&std::cout, "\t", 1);
      --v3;
    }

    while (v3);
  }

  v4 = sub_1000088E4(&std::cout, "OSString(", 9);
  v7 = *(a1 + 16);
  v6 = a1 + 16;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    LODWORD(v10) = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = sub_1000088E4(v4, v9, v10);

  return sub_1000088E4(v11, ")\n", 2);
}

uint64_t sub_100008824(uint64_t a1)
{
  *a1 = off_100025270;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100008874(uint64_t a1)
{
  *a1 = off_100025270;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void *sub_1000088E4(void *a1, int a2, int a3)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100008A2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100008A0CLL);
}

uint64_t sub_100008A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100008374();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2]) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100008C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100008C88(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_100007E50(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1000082FC(a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_100008F0C(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100008FFC(result, prime);
    }
  }
}

void sub_100008FFC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000841C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100009160(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1000091C4(void *a1, uint64_t a2)
{
  v4 = sub_100007E50(&v11, (*a2 + 16));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *a2)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void sub_1000092B4(uint64_t result)
{
  if (*(result + 24))
  {
    sub_100009310(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_100009310(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_10000935C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_100009390(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_10001DA60)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100009560();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_100009578(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_10001DA60)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_100009578(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000841C();
}

const void **sub_1000095C0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000095F4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100009628(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10000966C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_100009728(uint64_t a1)
{
  qword_100029378 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000097E8()
{
  xpc_activity_register("com.apple.security.amfid.reportmetrics", XPC_ACTIVITY_CHECK_IN, &stru_1000252B0);

  xpc_activity_register("com.apple.security.amfid.cleanmetrics", XPC_ACTIVITY_CHECK_IN, &stru_1000252D0);
}

void sub_10000984C(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = +[MetricsManager sharedInstance];
    [v2 report];
  }
}

void sub_1000098B0(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = +[MetricsManager sharedInstance];
    [v2 clean];
  }
}

void sub_100009914(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v9 = [NSString stringWithCString:a1 encoding:4];
  v7 = [NSString stringWithCString:a2 encoding:4];
  v8 = +[MetricsManager sharedInstance];
  [v8 recordWithSigningIdentifier:v9 teamIdentifier:v7 validationCategory:a3 constraintType:a4];
}

id sub_1000099CC()
{
  v6[0] = kCFUserNotificationAlertHeaderKey;
  v0 = sub_100006B38(@"DEV_MODE_ALERT_TITLE");
  v7[0] = v0;
  v6[1] = kCFUserNotificationAlertMessageKey;
  v1 = sub_100006B38(@"DEV_MODE_ALERT_BODY");
  v7[1] = v1;
  v6[2] = kCFUserNotificationDefaultButtonTitleKey;
  v2 = sub_100006B38(@"CANCEL");
  v7[2] = v2;
  v6[3] = kCFUserNotificationAlternateButtonTitleKey;
  v3 = sub_100006B38(@"DEV_MODE_ALERT_ENABLE");
  v7[3] = v3;
  v7[4] = &__kCFBooleanTrue;
  v6[4] = SBUserNotificationDontDismissOnUnlock;
  v6[5] = SBUserNotificationDismissOnLock;
  v7[5] = &__kCFBooleanFalse;
  v7[6] = &__kCFBooleanFalse;
  v6[6] = SBUserNotificationBehavesSuperModally;
  v6[7] = SBUserNotificationAlternateButtonPresentationStyleKey;
  v7[7] = &off_1000261C8;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:8];

  return v4;
}

void sub_100009B68(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "handleLockdownXPC";
    v27 = 2112;
    v28 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: new connection: %@", buf, 0x16u);
  }

  v4 = kAMFILockdownErrKey;
  v23 = kAMFILockdownErrKey;
  v24 = kAMFILockdownErrUnknown;
  v5 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  if (lockdown_receive_message())
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001ACC0();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [0 objectForKeyedSubscript:@"action"];
      v8 = [v7 longValue];

      v9 = off_100028C50;
      if (v8 < 5)
      {
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v26 = "handleLockdownXPC";
          v27 = 2048;
          v28 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: requested lockdown action: %lu", buf, 0x16u);
        }

        v10 = (*(&off_1000252F0 + v8))(0);
        v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

        v6 = v11;
      }

      else if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_10001AD3C();
      }
    }

    else
    {
      [v6 setObject:kAMFILockdownErrNotADict forKeyedSubscript:v4];
    }
  }

  v12 = v2;
  v13 = v6;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:kLockdownCheckinClientNameKey];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v13 valueForKey:v4];

  if (v15)
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001ADC4();
    }

    v16 = [v13 objectForKeyedSubscript:v4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [v13 objectForKeyedSubscript:v4];
      v19 = [v18 localizedDescription];
      v20 = [v13 objectForKeyedSubscript:v4];
      v21 = [v20 userInfo];
      v22 = [NSString stringWithFormat:@"%@ (%@)", v19, v21];

      [v13 setObject:v22 forKeyedSubscript:v4];
    }
  }

  if (lockdown_send_message() && os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
  {
    sub_10001AE50();
  }

  lockdown_disconnect();
}

void sub_100009FC4()
{
  is_darwinos = os_variant_is_darwinos();
  if (is_darwinos)
  {
    v2 = off_100028C50;
    if (!os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v5 = 136315138;
    v6 = "setupLockdownInterface";
    v3 = "%s: lockdown interface not supported on darwinOS";
  }

  else
  {
    v4 = sub_100002DE0(is_darwinos, v1);
    lockdown_checkin_xpc();

    v2 = off_100028C50;
    if (!os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v5 = 136315138;
    v6 = "setupLockdownInterface";
    v3 = "%s: lockdown interface setup";
  }

  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, &v5, 0xCu);
}

id sub_10000A0FC()
{
  v0 = +[NSFileManager defaultManager];
  v1 = AMFIShowOverridePath;
  v2 = [NSData dataWithBytes:&v8 length:8];
  v11 = NSFilePosixPermissions;
  v3 = [NSNumber numberWithShort:292];
  v12 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  LODWORD(v1) = [v0 createFileAtPath:v1 contents:v2 attributes:v4];

  v9 = @"success";
  v5 = &__kCFBooleanFalse;
  if (v1)
  {
    v5 = &__kCFBooleanTrue;
  }

  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  return v6;
}

id sub_10000A264()
{
  if (sub_100006CC0())
  {
    v16 = kAMFILockdownErrKey;
    v17 = kAMFILockdownErrHasPasscode;
    v0 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    goto LABEL_10;
  }

  v1 = AMFIArmSecurityBootMode();
  v2 = off_100028C50;
  v3 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO);
  if (v1)
  {
    if (v3)
    {
      *buf = 136315394;
      v13 = "__lockdownActionArmAndReboot";
      v14 = 1024;
      v15 = v1;
      v4 = "%s: failed to arm security boot mode: %u";
      v5 = v2;
      v6 = 18;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v4, buf, v6);
    }
  }

  else if (v3)
  {
    *buf = 136315138;
    v13 = "__lockdownActionArmAndReboot";
    v4 = "%s: armed security boot mode";
    v5 = v2;
    v6 = 12;
    goto LABEL_8;
  }

  v7 = dispatch_time(0, 1000000000);
  dispatch_after(v7, &_dispatch_main_q, &stru_100025358);
  v8 = [NSNumber numberWithInt:v1 == 0, @"success"];
  v11 = v8;
  v0 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

LABEL_10:

  return v0;
}

_UNKNOWN **sub_10000A440()
{
  if (sub_100006CC0())
  {
    v6 = kAMFILockdownErrKey;
    v7 = kAMFILockdownErrHasPasscode;
    v0 = &v7;
    v1 = &v6;
  }

  else
  {
    AMFIGetSecurityBootMode();
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001AEE0();
    }

    v4 = kAMFILockdownErrKey;
    v5 = kAMFILockdownErrUnknown;
    v0 = &v5;
    v1 = &v4;
  }

  v2 = [NSDictionary dictionaryWithObjects:v0 forKeys:v1 count:1];

  return v2;
}

id sub_10000A758(uint64_t a1)
{
  v6[0] = &__kCFBooleanTrue;
  v5[0] = @"success";
  v5[1] = @"status";
  if (amfi_developer_mode_status())
  {
    v1 = &__kCFBooleanTrue;
  }

  else
  {
    v1 = &__kCFBooleanFalse;
  }

  v6[1] = v1;
  v5[2] = @"resolved";
  if (amfi_developer_mode_resolved())
  {
    v2 = &__kCFBooleanTrue;
  }

  else
  {
    v2 = &__kCFBooleanFalse;
  }

  v6[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

_UNKNOWN **sub_10000A828(void *a1)
{
  v1 = a1;
  if (sub_100006CC0())
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001B15C();
    }

    v2 = &off_1000260B0;
  }

  else if (AMFIGetSEPDeviceState())
  {
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001AF60();
    }

    v2 = &off_1000260D8;
  }

  else
  {
    v4 = [v1 objectForKeyedSubscript:@"input_profile_uuid"];

    if (v4)
    {
      v5 = [v1 objectForKeyedSubscript:@"input_profile_uuid"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [v1 objectForKeyedSubscript:@"input_profile_uuid"];
        v8 = objc_opt_new();
        v9 = [v8 signingIdentitiesWithProfileUUID:v7];
        if (sub_10000B874(v9))
        {
          v2 = &off_100026178;
        }

        else
        {
          v2 = &off_1000261A0;
        }
      }

      else
      {
        if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
        {
          sub_10001B05C();
        }

        v2 = &off_100026150;
      }
    }

    else
    {
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_10001B0DC();
      }

      v2 = &off_100026128;
    }
  }

  return v2;
}

void sub_10000AA98(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
  {
    sub_10001B1DC();
  }
}

void sub_10000AC28()
{
  v0 = objc_alloc_init(AMFIDelegate);
  v1 = qword_1000292A0;
  qword_1000292A0 = v0;

  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.amfi.nsxpc"];
  v3 = qword_1000292A8;
  qword_1000292A8 = v2;

  [qword_1000292A8 setDelegate:qword_1000292A0];
  [qword_1000292A8 resume];
  v4 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "setupNSXPCInterface";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: NSXPC interface setup successfully", &v5, 0xCu);
  }
}

BOOL amfi_developer_mode_status()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v3, 0, 0) && v2 == 1;
}

BOOL amfi_developer_mode_resolved()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_resolved", &v2, &v3, 0, 0) && v2 == 1;
}

void sub_10000ADC8()
{
  v11 = 0u;
  AMFIGetSEPDeviceState();
  sub_100006D00(&v11 + 1, &v11 + 2);
  if (os_variant_allows_internal_security_policies())
  {
    v0 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[migration] using internal build", buf, 2u);
    }

    BYTE12(v11) = 1;
  }

  v1 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[migration] SEP epoch: %u", buf, 8u);
  }

  v2 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = DWORD1(v11);
    v14 = 1024;
    v15 = DWORD2(v11);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[migration] code-signing: %u | %u", buf, 0xEu);
  }

  v3 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[migration] initiating demo mode", buf, 2u);
  }

  v4 = MGGetBoolAnswer();
  v5 = MGGetBoolAnswer();
  v6 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v13 = v4;
    v14 = 1024;
    v15 = v5 & 1;
    v16 = 1024;
    v17 = (v4 | v5) & 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[migration] demo mode: %u | %u | %u", buf, 0x14u);
  }

  AMFIDemoModeSetState();
  v7 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[migration] initiating MIS", buf, 2u);
  }

  MISDataMigrate();
  v8 = DWORD1(v11);
  v9 = off_100028C50;
  v10 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT);
  if (v8 == 2)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[migration] initiating provisioning profiles", buf, 2u);
    }

    MISEnumerateTrustedUPPs();
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[migration] provisioning profiles not required | monitor", buf, 2u);
  }
}

void sub_10000B150(id a1, __CFString *a2)
{
  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (!CStringPtr)
  {
    __assert_rtn("__provisioningProfilesMigrate_block_invoke", "Migrator.m", 96, "uuidStr != NULL");
  }

  v3 = MISCopyProvisioningProfile();
  if (v3)
  {
    v4 = off_100028C50;
    if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
    {
      sub_10001B250(CStringPtr, v3, v4);
    }

    return;
  }

  if (!MISProfileSupportsAuxiliarySignature())
  {
    return;
  }

  TeamIdentifier = MISProvisioningProfileGetTeamIdentifier();
  v6 = TeamIdentifier;
  if (TeamIdentifier)
  {
    v7 = CFStringGetCStringPtr(TeamIdentifier, 0x8000100u);
    v8 = MISCopyAuxiliarySignature();
    v9 = v6;
    v23 = 0u;
    memset(v30, 0, 28);
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    *buf = 2;
    *(&v23 + 4) = 0x100000005;
    v30[7] = [(__CFString *)v9 lengthOfBytesUsingEncoding:4];
    v10 = v9;
    [(__CFString *)v9 UTF8String];
    [(__CFString *)v9 lengthOfBytesUsingEncoding:4];
    __memcpy_chk();
    v11 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
    v12 = [NSData dataWithBytes:buf length:148];
    v21 = 0;
    v13 = [v11 exchangeData:v12 forKey:13 error:&v21];
    v14 = v21;

    if (v14)
    {
      v15 = off_100028C50;
      if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
      {
        sub_10001B2D8(v9, v14, v15);
      }

      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    MISSetProfileTrust();
    v18 = off_100028C50;
    v19 = os_log_type_enabled(off_100028C50, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v19)
      {
        *buf = 136315138;
        *&v23 = v7;
        v20 = "[migration] %s: upgraded auxiliary signature";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
      }
    }

    else if (v19)
    {
      *buf = 136315138;
      *&v23 = v7;
      v20 = "[migration] %s: created auxiliary signature";
      goto LABEL_19;
    }

    return;
  }

  v17 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_ERROR))
  {
    sub_10001B360(CStringPtr, v17);
  }
}

void sub_10000B48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10000B4D0()
{
  v0 = dispatch_semaphore_create(0);
  v1 = +[BYSetupStateNotifier sharedNotifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B6B0;
  v9[3] = &unk_1000251A8;
  v2 = v0;
  v10 = v2;
  [v1 addStateChangeObserver:v9];

  v3 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "__buddyInRunningState";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: beginning wait for state", buf, 0xCu);
  }

  v4 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v2, v4);
  v5 = +[BYSetupStateNotifier sharedNotifier];
  v6 = [v5 currentState];

  v7 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "__buddyInRunningState";
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: buddy state: %lu", buf, 0x16u);
  }

  return v6 == 1;
}

void sub_10000B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "__buddyInRunningState_block_invoke";
    v9 = 2048;
    v10 = a2;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: state transition: %lu to %lu", &v7, 0x20u);
  }

  if (a3)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10000B78C()
{
  v3 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v2 = 2;
  DWORD1(v3) = 6;
  v0 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  v1 = [NSData dataWithBytes:&v2 length:148];
  [v0 exchangeData:v1 forKey:13 completionHandler:&stru_1000253F8];
}

uint64_t sub_10000B874(void *a1)
{
  v1 = a1;
  v2 = off_100028C50;
  if (os_log_type_enabled(off_100028C50, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "__trustSigningIdentities";
    v10 = 2112;
    v11 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: adding identities %@ to trustedAppSigners", &v8, 0x16u);
  }

  v3 = +[MCProfileConnection sharedConnection];
  v4 = [NSSet setWithArray:v1];
  v5 = [v3 trustedCodeSigningIdentities];
  v6 = [NSSet setWithArray:v5];

  if (([v4 isSubsetOfSet:v6] & 1) == 0)
  {
    [v3 addTrustedCodeSigningIdentities:v4];
  }

  return 1;
}

uint64_t sub_10000B9CC(void *a1)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  return *(*a1 - 8);
}

BOOL sub_10000B9F8(void *a1, const void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = *(*a1 - 8);
  v3 = sub_10000BF8C(qword_1000292E0, &v6);
  if (!v3)
  {
    sub_100008450("unordered_map::at: key not found");
  }

  v4 = v3[3];
  return v4 == CFGetTypeID(a2);
}

BOOL sub_10000BA74(void *a1)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (sub_100007A70(*(*a1 - 8), qword_1000292C0))
  {
    return 1;
  }

  result = sub_100007A70(*(*a1 - 8), qword_1000292C8);
  if (result)
  {
    return 1;
  }

  return result;
}

CFStringRef sub_10000BAE8(uint64_t a1)
{
  v1 = *(a1 + 39);
  if (v1 < 0)
  {
    v2 = *(a1 + 16);
    v1 = *(a1 + 24);
  }

  else
  {
    v2 = (a1 + 16);
  }

  return CFStringCreateWithBytes(kCFAllocatorDefault, v2, v1, 0x8000100u, 0);
}

void sub_10000BB1C(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) == -1)
  {

    sub_10000BBF0("");
  }

  operator new[]();
}

uint64_t sub_10000BC5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_10000BCD4(a1, a2, a2);
      a2 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *sub_10000BCD4(void *a1, uint64_t *a2, _OWORD *a3)
{
  v4 = *(*a2 + 8);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v4;
    if (v4 >= *&v8)
    {
      v11 = v4 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v4;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v4)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!sub_100007A70(v13[2], *a2))
  {
    goto LABEL_20;
  }

  return v13;
}

uint64_t sub_10000BF40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_10000BF8C(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v3 == v13)
      {
        if (sub_100007A70(v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_10000C0A0()
{
  TypeID = CFDictionaryGetTypeID();
  v7[0] = qword_1000292B0;
  v7[1] = TypeID;
  v1 = CFArrayGetTypeID();
  v7[2] = qword_1000292B8;
  v7[3] = v1;
  v2 = CFStringGetTypeID();
  v7[4] = qword_1000292C0;
  v7[5] = v2;
  v3 = CFStringGetTypeID();
  v7[6] = qword_1000292C8;
  v7[7] = v3;
  v4 = CFBooleanGetTypeID();
  v7[8] = qword_1000292D0;
  v7[9] = v4;
  v5 = CFNumberGetTypeID();
  v7[10] = qword_1000292D8;
  v7[11] = v5;
  sub_10000BC5C(&unk_1000292E0, v7, 6);
  return __cxa_atexit(sub_10000B9C8, &unk_1000292E0, &_mh_execute_header);
}

uint64_t sub_10000C1E0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 1012) >= 0xFFFFFFF4)
  {
    return *(&off_100025478 + 5 * (v1 - 1000) + 5);
  }

  else
  {
    return 0;
  }
}

const char *sub_10000C214(const char *result, uint64_t a2)
{
  memset(v20, 170, sizeof(v20));
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), v4 - 1089 < 0xFFFFFBFF) || (v5 = *(result + 9), v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 64 >= v5) ? (v7 = v4 == v6 + 64) : (v7 = 0), !v7 || (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr((result + 40), 0, v8 - 40)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v18 = -1431655766;
  v16 = -1431655766;
  v9 = &v3[(v4 + 3) & 0xFFC];
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
LABEL_18:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 36) = *(a2 + 36) | 0x1000100;
  *(a2 + 52) = *(a2 + 52) | 0x1000100;
  v19 = 0;
  v17 = 0;
  result = sub_100003A48(*(v3 + 3), v3 + 40, *&v3[v6 + 40], *&v3[v6 + 48], *&v3[v6 + 52], *&v3[v6 + 56], *&v3[v6 + 60], (a2 + 68), (a2 + 72), (a2 + 76), (a2 + 80), (a2 + 84), (a2 + 88), a2 + 100, v20, (a2 + 28), &v19, &v18, (a2 + 44), &v17, &v16, v9 + 5);
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_18;
  }

  v11 = v19;
  *(a2 + 36) = v18;
  *(a2 + 40) = v11;
  v12 = v17;
  *(a2 + 52) = v16;
  *(a2 + 56) = v12;
  v13 = NDR_record;
  *(a2 + 60) = NDR_record;
  result = strlen((a2 + 100));
  if ((result + 1) >> 32)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = v13;
  }

  else
  {
    *(a2 + 92) = 0;
    *(a2 + 96) = result + 1;
    v14 = (result + 4) & 0xFFFFFFFC;
    *(a2 + 4) = v14 + 128;
    v15 = a2 + v14;
    *(v15 + 100) = *v20;
    *(v15 + 116) = *&v20[16];
    *(v15 + 120) = v11;
    *(v15 + 124) = v12;
    *a2 |= 0x80000000;
    *(a2 + 24) = 2;
  }

  return result;
}

void sub_10000C470(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v4 = -300;
    goto LABEL_10;
  }

  v6 = -1431655766;
  if (*(a1 + 56) || *(a1 + 60) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = *(a2 + 36) | 0x1000100;
  v5 = sub_100003844(*(a1 + 12), *(a1 + 28), *(a1 + 40), (a2 + 28), (a2 + 52), &v6, (a1 + 76));
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  if (!v5)
  {
    *(a2 + 36) = v6;
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return;
  }

  *(a2 + 32) = v5;
LABEL_11:
  *(a2 + 24) = NDR_record;
}

uint64_t sub_10000C5B8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  result = sub_100003B90(*(result + 12), a2 + 36, (result + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 184;
  }

  return result;
}

uint64_t sub_10000C658(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  result = sub_100003EC0(*(result + 12), a2 + 36, (result + 44));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 136;
  }

  return result;
}

uint64_t sub_10000C6F8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 132)
  {
    result = 4294966992;
  }

  else if (*(a1 + 132) || *(a1 + 136) < 0x20u)
  {
    result = 4294966987;
  }

  else
  {
    result = sub_100003C0C(*(a1 + 12), (a1 + 32), (a1 + 152));
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10000C77C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v3 = result;
  v4 = result[1];
  if ((v4 - 377) < 0xFFFFFEBF)
  {
    goto LABEL_25;
  }

  v5 = result[9];
  if (v5 > 0x100)
  {
    goto LABEL_25;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 56 < v5 || v4 < v6 + 56)
  {
    goto LABEL_25;
  }

  v8 = result + v6;
  v9 = *(v8 + 11);
  if (v9 > 0x40)
  {
    goto LABEL_25;
  }

  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v4 - v6;
  if (v11 - 56 < v9 || v11 != v10 + 56)
  {
    goto LABEL_25;
  }

  v13 = 296;
  if (v4 < 0x128)
  {
    v13 = result[1];
  }

  result = memchr(result + 10, 0, v13 - 40);
  if (result && ((v14 = v8 - 256, v15 = v8 + 48, v3 + v4 - v15 >= 64) ? (v16 = 64) : (v16 = v3 + v4 - v15), (result = memchr(v15, 0, v16)) != 0))
  {
    v17 = v3 + ((v4 + 3) & 0x3FC);
    if (!*v17 && *(v17 + 1) > 0x1Fu)
    {
      v19 = v3[3];
      v20 = v14[v10 + 304];
      v21 = v14[v10 + 308];
      v22 = *(v17 + 36);
      v23[0] = *(v17 + 20);
      v23[1] = v22;
      result = sub_100003790(v19, (v3 + 10), v15, v20, v21, v23);
      *(a2 + 32) = result;
      return result;
    }

    v18 = -309;
  }

  else
  {
LABEL_25:
    v18 = -304;
  }

  *(a2 + 32) = v18;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10000C8EC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = sub_10000289C(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

const char *sub_10000C980(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), (v4 - 1065) < 0xFFFFFBFF) || ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr((result + 40), 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v10 = &v3[(v4 + 3) & 0xFFC];
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  result = sub_1000040B0(*(v3 + 3), v3 + 40, (a2 + 36), v10 + 20);
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_10000CAD0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011F94(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10000CBC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000CC08(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t sub_10000CC4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011FBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000CD28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000CD74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

void (*sub_10000CE08(void *a1))(void **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.getValue<A>(forKey:)();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return sub_10000CF70;
}

uint64_t sub_10000CFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000CFF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 224);

  return v4(v2, v3);
}

uint64_t sub_10000D064(uint64_t a1)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10000D180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10000D250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_10000D2F0(void *a1))(void **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.getValue<A>(forKey:)();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return sub_10000D458;
}

void sub_10000D48C(void **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v6);
}

uint64_t sub_10000D5A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

void (*sub_10000D678(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_10000D7DC;
}

void sub_10000D7DC(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10000D8BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_10000D96C(uint64_t a1)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10000DA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10000DB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_10000DBE0(void *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return sub_10000DD44;
}

void sub_10000DD44(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t sub_10000DE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 368))(v7);
}

void (*sub_10000DF9C(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = type metadata accessor for Date();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v4[7] = v8;
  v4[8] = v9;
  *v4 = v1;
  swift_getKeyPath();
  v4[9] = sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  sub_100013420(&qword_100028D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();

  return sub_10000E1B0;
}

uint64_t sub_10000E230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 416))(v7);
}

uint64_t sub_10000E33C(uint64_t a1)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  sub_100013420(&qword_100028D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10000E48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_10000E584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  sub_100013420(&qword_100028D88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*sub_10000E650(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = type metadata accessor for Date();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v4[7] = v8;
  v4[8] = v9;
  *v4 = v1;
  swift_getKeyPath();
  v4[9] = sub_100013420(&qword_100028D78, type metadata accessor for ConstraintUsage, &unk_10001DF18);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  sub_100013420(&qword_100028D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  PersistentModel.getValue<A>(forKey:)();

  return sub_10000E864;
}

void sub_10000E898(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 72);
  v17[1] = *(*a1 + 64);
  v17[2] = v6;
  v7 = v5[6];
  v8 = v5[7];
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[3];
  if (a2)
  {
    (*(v10 + 16))(v5[6], v5[7], v5[4], a4);
    v5[1] = v11;
    KeyPath = swift_getKeyPath();
    v17[0] = v17;
    __chkstk_darwin(KeyPath, v13);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v14 = *(v10 + 8);
    v14(v7, v9);
    v14(v8, v9);
  }

  else
  {
    v5[2] = v11;
    v15 = swift_getKeyPath();
    v17[0] = v17;
    __chkstk_darwin(v15, v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v10 + 8))(v8, v9);
  }

  free(v8);
  free(v7);
  free(v5);
}

uint64_t *sub_10000EA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v27 = a7;
  v22 = a6;
  v23 = a3;
  v25 = a5;
  v26 = type metadata accessor for Date();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[5] = sub_1000121A0(&qword_100028D98, &qword_10001DBF0);
  v15 = sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  v28 = v7;
  v29 = v7;
  v30 = v15;
  v31 = v15;
  v14[6] = swift_getOpaqueTypeConformance2();
  sub_1000121E8(v14 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  sub_100011FD0(v14 + 2, v14[5]);
  swift_getKeyPath();
  v28 = a1;
  v29 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100011FD0(v14 + 2, v14[5]);
  swift_getKeyPath();
  v28 = v23;
  v29 = a4;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v16 = v25 + 1;
  sub_100011FD0(v14 + 2, v14[5]);
  swift_getKeyPath();
  v28 = v16;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v17 = v22 + 1;
  sub_100011FD0(v14 + 2, v14[5]);
  swift_getKeyPath();
  v28 = v17;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v18 = v24;
  v19 = v26;
  (*(v24 + 16))(v13, v27, v26);
  sub_100011FD0(v14 + 2, v14[5]);
  swift_getKeyPath();
  sub_100013420(&qword_100028D88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v20 = *(v18 + 8);
  v20(v13, v19);
  static Date.distantPast.getter();
  sub_100011FD0(v14 + 2, v14[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v20(v27, v19);
  v20(v13, v19);
  return v14;
}

uint64_t sub_10000EEF0(__int128 *a1)
{
  swift_beginAccess();
  sub_1000122B0((v1 + 16));
  sub_1000122FC(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_10000EF48(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_10001224C(v1 + 16, v4);
  return sub_10000EFD8;
}

void sub_10000EFD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_10001224C(*a1, v2 + 40);
    swift_beginAccess();
    sub_1000122B0((v3 + 16));
    sub_1000122FC((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_1000122B0(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1000122B0((v3 + 16));
    sub_1000122FC(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_10000F090()
{
  sub_1000121A0(&qword_100028DA0, &qword_10001DBF8);
  type metadata accessor for Schema.PropertyMetadata();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10001DAE0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v0;
}

uint64_t sub_10000F330(void *a1)
{
  v2 = swift_allocObject();
  sub_10000F370(a1);
  return v2;
}

uint64_t *sub_10000F370(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConstraintUsage(0);
  v2[5] = sub_1000121A0(&qword_100028D98, &qword_10001DBF0);
  v6[0] = v4;
  v6[1] = v4;
  v7 = sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  v8 = v7;
  v2[6] = swift_getOpaqueTypeConformance2();
  sub_1000121E8(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  sub_10001224C(a1, v6);
  (*(*v2 + 472))(v6);
  sub_1000122B0(a1);
  return v2;
}

uint64_t sub_10000F5E8()
{
  sub_1000122B0(v0 + 2);
  v1 = OBJC_IVAR____TtC5amfid15ConstraintUsage___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10000F68C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModelConfiguration();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7, v10);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v3;
  v31 = v2;
  v12 = *(v3 + 16);
  v32 = a1;
  v12(v6, a1, v2);
  v13 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v13 - 8, v14);
  static ModelConfiguration.CloudKitDatabase.automatic.getter();
  v15 = ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
  __chkstk_darwin(v15, v16);
  v17 = v8[2];
  v17(v11, v11, v7);
  type metadata accessor for ModelContainer();
  sub_1000121A0(&qword_100028DA8, &qword_10001DC00);
  v18 = swift_allocObject();
  v28 = xmmword_10001DAF0;
  *(v18 + 16) = xmmword_10001DAF0;
  v19 = type metadata accessor for ConstraintUsage(0);
  v20 = sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1000121A0(&qword_100028DB0, &qword_10001DC08);
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  *(v21 + 56) = v7;
  *(v21 + 64) = sub_100012D28(&qword_100028DB8, &type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
  v22 = sub_1000121E8((v21 + 32));
  v17(v22, v11, v7);
  v23 = v29;
  v24 = ModelContainer.__allocating_init(for:configurations:)();
  if (v23)
  {
    (*(v30 + 8))(v32, v31);
    v25 = v8[1];
    v25(v11, v7);
    v25(v11, v7);
  }

  else
  {
    v18 = v24;
    type metadata accessor for ModelContext();
    swift_allocObject();

    ModelContext.init(_:)();
    (*(v30 + 8))(v32, v31);
    v26 = v8[1];
    v26(v11, v7);
    v26(v11, v7);
  }

  return v18;
}

uint64_t sub_10000FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a8;
  v29 = a7;
  v25 = a4;
  v27 = a9;
  v15 = sub_1000121A0(&qword_100028DC0, &qword_10001DC10);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v25 - v17;
  v26 = sub_1000121A0(&qword_100028DC8, &qword_10001DC18);
  v19 = *(v26 - 8);
  __chkstk_darwin(v26, v20);
  v22 = &v25 - v21;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = type metadata accessor for ConstraintUsage(0);
  Predicate.init(_:)();
  v23 = sub_1000121A0(&qword_100028DD0, &qword_10001DC20);
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  FetchDescriptor.init(predicate:sortBy:)();
  v30 = v28;
  v31 = v27;
  v32 = v22;
  v33 = v29;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = v25;
  v38 = a5;
  v39 = a6;
  dispatch thunk of ModelContext.transaction(block:)();
  return (*(v19 + 8))(v22, v26);
}

uint64_t sub_10000FD18@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v114 = a7;
  LODWORD(v110) = a6;
  v100 = a5;
  v99 = a4;
  v128 = a3;
  v126 = a2;
  v121 = a8;
  v115 = sub_1000121A0(&qword_1000290D0, &qword_10001E088);
  v117 = *(v115 - 8);
  __chkstk_darwin(v115, v9);
  v113 = v86 - v10;
  v116 = sub_1000121A0(&qword_1000290D8, &qword_10001E090);
  v118 = *(v116 - 8);
  __chkstk_darwin(v116, v11);
  v111 = v86 - v12;
  v13 = sub_1000121A0(&qword_1000290E0, &qword_10001E098);
  v14 = *(v13 - 8);
  v119 = v13;
  v120 = v14;
  __chkstk_darwin(v13, v15);
  v112 = v86 - v16;
  v102 = sub_1000121A0(&qword_1000290E8, &qword_10001E0A0);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102, v17);
  v98 = v86 - v18;
  v107 = sub_1000121A0(&qword_1000290F0, &qword_10001E0A8);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107, v19);
  v97 = v86 - v20;
  v101 = sub_1000121A0(&qword_1000290F8, &qword_10001E0B0);
  v132 = *(v101 - 8);
  __chkstk_darwin(v101, v21);
  v95 = v86 - v22;
  v104 = sub_1000121A0(&qword_100029100, &qword_10001E0B8);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104, v23);
  v96 = v86 - v24;
  v89 = sub_1000121A0(&qword_100029108, &qword_10001E0C0);
  v131 = *(v89 - 8);
  __chkstk_darwin(v89, v25);
  v27 = v86 - v26;
  v28 = sub_1000121A0(&qword_100029068, &qword_10001E060);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28, v30);
  v32 = v86 - v31;
  v33 = sub_1000121A0(&qword_100029110, &qword_10001E0C8);
  v130 = *(v33 - 8);
  __chkstk_darwin(v33, v34);
  v36 = v86 - v35;
  v91 = sub_1000121A0(&qword_100029118, &qword_10001E0D0);
  v92 = *(v91 - 8);
  v38 = __chkstk_darwin(v91, v37);
  v90 = v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v40);
  v87 = v86 - v41;
  v93 = sub_1000121A0(&qword_100029120, &qword_10001E0D8);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93, v42);
  v127 = v86 - v43;
  v106 = sub_1000121A0(&qword_100029128, &qword_10001E0E0);
  v109 = *(v106 - 8);
  __chkstk_darwin(v106, v44);
  v129 = v86 - v45;
  v46 = *a1;
  v122 = sub_100013C48(&qword_100029078, &qword_100029068, &qword_10001E060, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v124 = *(v29 + 8);
  v125 = v29 + 8;
  v124(v32, v28);
  v133 = v126;
  v134 = v128;
  static PredicateExpressions.build_Arg<A>(_:)();
  v126 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v86[2] = sub_100013C48(&qword_100029130, &qword_100029110, &qword_10001E0C8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v128 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v86[1] = sub_100013C48(&qword_100029138, &qword_100029108, &qword_10001E0C0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v47 = v36;
  v48 = v33;
  v49 = v89;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v50 = v131[1];
  ++v131;
  v86[0] = v50;
  v50(v27, v49);
  v51 = v130[1];
  ++v130;
  v51(v47, v33);
  v88 = v46;
  v123 = v28;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v52 = v32;
  v53 = v124;
  v124(v32, v28);
  v133 = v99;
  v134 = v100;
  v54 = v27;
  static PredicateExpressions.build_Arg<A>(_:)();
  v55 = v90;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (v86[0])(v54, v49);
  v51(v47, v48);
  v131 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100013C48(&qword_100029140, &qword_100029118, &qword_10001E0D0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v56 = v87;
  v57 = v91;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v58 = *(v92 + 8);
  v58(v55, v57);
  v58(v56, v57);
  v59 = v52;
  v60 = v123;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v61 = v95;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v53(v59, v60);
  LOBYTE(v133) = v110;
  v62 = v98;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  sub_100013C48(&qword_100029148, &qword_1000290E8, &qword_10001E0A0, v128);
  v63 = v97;
  v64 = v102;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v103 + 8))(v62, v64);
  v65 = v126;
  v110 = sub_100013C48(&qword_100029150, &qword_1000290F8, &qword_10001E0B0, v126);
  sub_100013C48(&qword_100029158, &qword_1000290F0, &qword_10001E0A8, v65);
  v66 = v96;
  v67 = v101;
  v68 = v107;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v108[1](v63, v68);
  v69 = *(v132 + 8);
  v132 += 8;
  v108 = v69;
  (v69)(v61, v67);
  v130 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100013C48(&qword_100029160, &qword_100029120, &qword_10001E0D8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100013C48(&qword_100029168, &qword_100029100, &qword_10001E0B8, v131);
  v70 = v127;
  v71 = v66;
  v72 = v93;
  v73 = v104;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v105 + 8))(v71, v73);
  (*(v94 + 8))(v70, v72);
  v74 = v123;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v124(v59, v74);
  LOBYTE(v133) = v114;
  v75 = v113;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  sub_100013C48(&qword_100029170, &qword_1000290D0, &qword_10001E088, v128);
  v76 = v111;
  v77 = v115;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v117 + 8))(v75, v77);
  sub_100013C48(&qword_100029178, &qword_1000290D8, &qword_10001E090, v126);
  v78 = v112;
  v79 = v116;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v118 + 8))(v76, v79);
  (v108)(v61, v67);
  v80 = sub_1000121A0(&qword_100029180, &unk_10001E138);
  v81 = v121;
  *(v121 + 24) = v80;
  v81[4] = sub_100013468();
  sub_1000121E8(v81);
  sub_100013C48(&qword_100029210, &qword_100029128, &qword_10001E0E0, v130);
  sub_100013C48(&qword_100029218, &qword_1000290E0, &qword_10001E098, v131);
  v82 = v129;
  v83 = v106;
  v84 = v119;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v120 + 8))(v78, v84);
  return (*(v109 + 8))(v82, v83);
}

unint64_t sub_100010D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void), uint64_t a8, unsigned __int8 a9)
{
  v49 = a5;
  v50 = a8;
  v55 = a7;
  v52 = a6;
  v48 = a4;
  v60 = a3;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for ConstraintUsage(0);
  v21 = sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v9)
  {
    return result;
  }

  v23 = result;
  v51 = v19;
  v24 = v11;
  v54 = v21;
  v45 = 0;
  if (result >> 62)
  {
LABEL_24:
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v52;
  v43 = v16;
  v46 = v24;
  v47 = v12;
  v27 = v55;
  if (!v25)
  {

    v32 = v51;
LABEL_20:
    v41 = v20;
    v42 = a1;
    v53 = a9;
    v55 = *(v47 + 16);
    v55(v32, v60, v24);
    v33 = swift_allocObject();
    v33[5] = sub_1000121A0(&qword_100028D98, &qword_10001DBF0);
    v56 = v20;
    v57 = v20;
    v58 = v54;
    v59 = v54;
    v33[6] = swift_getOpaqueTypeConformance2();
    sub_1000121E8(v33 + 2);
    static PersistentModel.createBackingData<A>()();
    ObservationRegistrar.init()();
    sub_100011FD0(v33 + 2, v33[5]);
    swift_getKeyPath();
    v56 = v48;
    v57 = v49;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    sub_100011FD0(v33 + 2, v33[5]);
    swift_getKeyPath();
    v56 = v26;
    v57 = v27;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v34 = v50 + 1;
    sub_100011FD0(v33 + 2, v33[5]);
    swift_getKeyPath();
    v56 = v34;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v35 = v53 + 1;
    sub_100011FD0(v33 + 2, v33[5]);
    swift_getKeyPath();
    v56 = v35;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v36 = v43;
    v37 = v46;
    v55(v43, v51, v46);
    sub_100011FD0(v33 + 2, v33[5]);
    swift_getKeyPath();
    v60 = sub_100013420(&qword_100028D88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v38 = *(v47 + 8);
    v38(v36, v37);
    static Date.distantPast.getter();
    sub_100011FD0(v33 + 2, v33[5]);
    swift_getKeyPath();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v38(v36, v37);
    v38(v51, v37);
    dispatch thunk of ModelContext.insert<A>(_:)();
  }

  v28 = v20;
  v12 = a1;
  v24 = 0;
  v44 = 0;
  v16 = (v23 & 0xC000000000000001);
  v53 = v23 & 0xFFFFFFFFFFFFFF8;
  v40 = (v47 + 16);
  do
  {
    while (1)
    {
      if (v16)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v53 + 16))
        {
          goto LABEL_23;
        }

        v20 = *(v23 + 8 * v24 + 32);
      }

      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v24)
      {
        break;
      }

      v31 = v51;
      (*v40)(v51, v60, v46);
      a1 = v20;
      (*(*v20 + 368))(v31);

      v24 = 1;
      v44 = 1;
      if (v25 == 1)
      {
      }
    }

    a1 = v12;
    dispatch thunk of ModelContext.delete<A>(_:)();

    ++v24;
    v30 = v29 == v25;
    v27 = v55;
  }

  while (!v30);

  a1 = v12;
  v24 = v46;
  v20 = v28;
  v32 = v51;
  v26 = v52;
  if ((v44 & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100011408(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v32 - v15;
  result = sub_100012364(a2);
  if (!v4)
  {
    v18 = result;
    v32[1] = 0;
    static Date.now.getter();
    v41 = v13;
    v33 = v9;
    if (v18 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v34 = v18 & 0xC000000000000001;
        v35 = result;
        v20 = (v33 + 16);
        v39 = a4;
        v40 = v8;
        v37 = v16;
        v38 = a3;
        v36 = v18;
        do
        {
          if (v34)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v21 = v22;
          }

          else
          {
            v21 = *(v18 + 8 * v19 + 32);
          }

          ++v19;
          v23 = (*(*v21 + 168))(v22);
          v25 = v24;
          v26 = (*(*v21 + 216))();
          v28 = v27;
          v29 = (*(*v21 + 264))();
          v30 = (*(*v21 + 312))();
          v38(v23, v25, v26, v28, v29, v30);

          v31 = v41;
          v16 = v37;
          v8 = v40;
          (*v20)(v41, v37, v40);
          (*(*v21 + 416))(v31);

          v18 = v36;
        }

        while (v35 != v19);
      }
    }

    return (*(v33 + 8))(v16, v8);
  }

  return result;
}

uint64_t sub_100011754@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v29 = a3;
  v28 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v27[0] = *(v28 - 8);
  __chkstk_darwin(v28, v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000121A0(&qword_100029060, &qword_10001E058);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  __chkstk_darwin(v6, v8);
  v10 = v27 - v9;
  v11 = sub_1000121A0(&qword_100029068, &qword_10001E060);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v27 - v14;
  v16 = sub_1000121A0(&qword_100029070, &qword_10001E068);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = v27 - v19;
  sub_100013C48(&qword_100029078, &qword_100029068, &qword_10001E060, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v21 = v27[0];
  v22 = v28;
  (*(v27[0] + 104))(v5, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v28);
  v23 = sub_1000121A0(&qword_100029080, &qword_10001E070);
  v24 = v29;
  *(v29 + 24) = v23;
  v24[4] = sub_100013294();
  sub_1000121E8(v24);
  sub_100013C48(&qword_1000290A8, &qword_100029070, &qword_10001E068, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100013C48(&qword_1000290B0, &qword_100029060, &qword_10001E058, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100013420(&qword_1000290B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v30;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v21 + 8))(v5, v22);
  (*(v31 + 8))(v10, v25);
  return (*(v17 + 8))(v20, v16);
}

uint64_t (*sub_100011C74(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 480))();
  return sub_100011D0C;
}

void sub_100011D0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

Swift::Int sub_100011D68()
{
  Hasher.init(_seed:)();
  type metadata accessor for ConstraintUsage(0);
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100011E4C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100011EB4()
{
  type metadata accessor for ConstraintUsage(0);
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  return PersistentModel.id.getter();
}

uint64_t sub_100011F94(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_100011FBC(uint64_t a1)
{
  if ((a1 - 1) >= 0xA)
  {
    return 10;
  }

  else
  {
    return a1 - 1;
  }
}

void *sub_100011FD0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for ConstraintUsage(uint64_t a1)
{
  result = qword_100029B50;
  if (!qword_100029B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000121A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000121E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001224C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000122B0(void *a1)
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

uint64_t sub_1000122FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100012364(uint64_t a1)
{
  v1 = sub_1000121A0(&qword_100028DC0, &qword_10001DC10);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = sub_1000121A0(&qword_100028DC8, &qword_10001DC18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v13 - v8;
  v10 = sub_1000121A0(&qword_100028DD0, &qword_10001DC20);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1000121A0(&qword_1000290C0, &qword_10001E078);
  sub_1000121A0(&qword_1000290C8, &qword_10001E080);
  *(swift_allocObject() + 16) = xmmword_10001DAF0;
  swift_getKeyPath();
  sub_100013420(&qword_1000290B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  SortDescriptor.init<A>(_:order:)();
  type metadata accessor for ConstraintUsage(0);
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  v11 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_100012688(double a1)
{
  v1 = sub_1000121A0(&qword_100028DC0, &qword_10001DC10);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v21 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v21 - v12;
  static Date.now.getter();
  static Date.- infix(_:_:)();
  v23 = *(v6 + 8);
  v24 = v5;
  v23(v10, v5);
  v22 = sub_1000121A0(&qword_100028DC8, &qword_10001DC18);
  v14 = *(v22 - 8);
  __chkstk_darwin(v22, v15);
  v17 = &v21 - v16;
  v25 = v13;
  v26 = type metadata accessor for ConstraintUsage(0);
  Predicate.init(_:)();
  v18 = sub_1000121A0(&qword_100028DD0, &qword_10001DC20);
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
  FetchDescriptor.init(predicate:sortBy:)();
  v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v14 + 8))(v17, v22);
  v23(v13, v24);
  return v19;
}

unint64_t sub_1000129A4()
{
  result = sub_100012688(*(v0 + 32));
  if (!v1)
  {
    v3 = result;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          ++v5;
          type metadata accessor for ConstraintUsage(0);
          sub_100013420(&qword_100028D80, type metadata accessor for ConstraintUsage, &unk_10001DE08);
          dispatch thunk of ModelContext.delete<A>(_:)();
        }

        while (v4 != v5);
      }
    }
  }

  return result;
}

unint64_t sub_100012AE4()
{
  result = qword_100028DD8;
  if (!qword_100028DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DD8);
  }

  return result;
}

unint64_t sub_100012B3C()
{
  result = qword_100028DE0;
  if (!qword_100028DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DE0);
  }

  return result;
}

uint64_t sub_100012D28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ConstraintType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConstraintType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValidationCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValidationCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100013038(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1000130FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100013108(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001319C()
{
  result = qword_100029050;
  if (!qword_100029050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029050);
  }

  return result;
}

unint64_t sub_1000131F0()
{
  result = qword_100029058;
  if (!qword_100029058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029058);
  }

  return result;
}

uint64_t sub_10001324C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100013294()
{
  result = qword_100029088;
  if (!qword_100029088)
  {
    sub_10001324C(&qword_100029080, &qword_10001E070);
    sub_1000136A8(&qword_100029090, &qword_100029070, &qword_10001E068);
    sub_100013338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029088);
  }

  return result;
}

unint64_t sub_100013338()
{
  result = qword_1000290A0;
  if (!qword_1000290A0)
  {
    sub_10001324C(&qword_100029060, &qword_10001E058);
    sub_100013420(&qword_100028D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100013420(&qword_100028D88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290A0);
  }

  return result;
}

uint64_t sub_100013420(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100013468()
{
  result = qword_100029188;
  if (!qword_100029188)
  {
    sub_10001324C(&qword_100029180, &unk_10001E138);
    sub_1000134F4();
    sub_100013A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029188);
  }

  return result;
}

unint64_t sub_1000134F4()
{
  result = qword_100029190;
  if (!qword_100029190)
  {
    sub_10001324C(&qword_100029128, &qword_10001E0E0);
    sub_100013580();
    sub_1000137C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029190);
  }

  return result;
}

unint64_t sub_100013580()
{
  result = qword_100029198;
  if (!qword_100029198)
  {
    sub_10001324C(&qword_100029120, &qword_10001E0D8);
    sub_100013604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029198);
  }

  return result;
}

unint64_t sub_100013604()
{
  result = qword_1000291A0;
  if (!qword_1000291A0)
  {
    sub_10001324C(&qword_100029118, &qword_10001E0D0);
    sub_1000136A8(&qword_1000291A8, &qword_100029110, &qword_10001E0C8);
    sub_100013740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291A0);
  }

  return result;
}

uint64_t sub_1000136A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001324C(a2, a3);
    sub_100013C48(&qword_100029098, &qword_100029068, &qword_10001E060, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100013740()
{
  result = qword_1000291B0;
  if (!qword_1000291B0)
  {
    sub_10001324C(&qword_100029108, &qword_10001E0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291B0);
  }

  return result;
}

unint64_t sub_1000137C4()
{
  result = qword_1000291B8;
  if (!qword_1000291B8)
  {
    sub_10001324C(&qword_100029100, &qword_10001E0B8);
    sub_1000136A8(&qword_1000291C0, &qword_1000290F8, &qword_10001E0B0);
    sub_100013894(&qword_1000291C8, &qword_1000290F0, &qword_10001E0A8, sub_100013910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291B8);
  }

  return result;
}

uint64_t sub_100013894(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001324C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100013910()
{
  result = qword_1000291D0;
  if (!qword_1000291D0)
  {
    sub_10001324C(&qword_1000290E8, &qword_10001E0A0);
    sub_10001399C();
    sub_1000139F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291D0);
  }

  return result;
}

unint64_t sub_10001399C()
{
  result = qword_1000291D8;
  if (!qword_1000291D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291D8);
  }

  return result;
}

unint64_t sub_1000139F0()
{
  result = qword_1000291E0;
  if (!qword_1000291E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291E0);
  }

  return result;
}

unint64_t sub_100013A44()
{
  result = qword_1000291E8;
  if (!qword_1000291E8)
  {
    sub_10001324C(&qword_1000290E0, &qword_10001E098);
    sub_1000136A8(&qword_1000291C0, &qword_1000290F8, &qword_10001E0B0);
    sub_100013894(&qword_1000291F0, &qword_1000290D8, &qword_10001E090, sub_100013B14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291E8);
  }

  return result;
}

unint64_t sub_100013B14()
{
  result = qword_1000291F8;
  if (!qword_1000291F8)
  {
    sub_10001324C(&qword_1000290D0, &qword_10001E088);
    sub_100013BA0();
    sub_100013BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291F8);
  }

  return result;
}

unint64_t sub_100013BA0()
{
  result = qword_100029200;
  if (!qword_100029200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029200);
  }

  return result;
}

unint64_t sub_100013BF4()
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029208);
  }

  return result;
}

uint64_t sub_100013C48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001324C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ConstraintUsageMetricsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConstraintUsageMetricsManager.init()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v10 = sub_10000F68C(v9);
  v11 = &v0[OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context];
  *v11 = v10;
  v11[1] = v12;
  Logger.init(subsystem:category:)();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_log], v5, v1);
  v13 = type metadata accessor for ConstraintUsageMetricsManager(0);
  v16.receiver = v0;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t type metadata accessor for ConstraintUsageMetricsManager(uint64_t a1)
{
  result = qword_100029B78;
  if (!qword_100029B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall ConstraintUsageMetricsManager.record(signingIdentifier:teamIdentifier:validationCategory:constraintType:)(Swift::String signingIdentifier, Swift::String teamIdentifier, Swift::Int validationCategory, Swift::Int constraintType)
{
  object = teamIdentifier._object;
  countAndFlagsBits = teamIdentifier._countAndFlagsBits;
  v26 = signingIdentifier._countAndFlagsBits;
  v8 = signingIdentifier._object;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CBBC();
  if (v14 == 10)
  {

    v27 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v16 = 136315906;
      *(v16 + 4) = sub_100015104(v26, v8, &v28);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_100015104(countAndFlagsBits, object, &v28);
      *(v16 + 22) = 2048;
      *(v16 + 24) = validationCategory;
      *(v16 + 32) = 2048;
      *(v16 + 34) = constraintType;
      v17 = "Failed recording constraint event: %s %s %ld %ld: unknown validation category";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v27, v15, v17, v16, 0x2Au);
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v18 = v14;
    v24 = validationCategory;
    v19 = sub_10000CA74();
    if (v19 != 6)
    {
      v21 = v19;
      v27 = constraintType;
      v22 = *(v4 + OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context);
      v23 = *(v4 + OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context + 8);
      static Date.now.getter();
      sub_10000FA68(v26, v8, countAndFlagsBits, object, v18, v21, v13, v22, v23);
      (*(v10 + 8))(v13, v9);
      return;
    }

    v27 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v16 = 136315906;
      *(v16 + 4) = sub_100015104(v26, v8, &v28);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_100015104(countAndFlagsBits, object, &v28);
      *(v16 + 22) = 2048;
      *(v16 + 24) = v24;
      *(v16 + 32) = 2048;
      *(v16 + 34) = constraintType;
      v17 = "Failed recording constraint event: %s %s %ld %ld: unknown constraint type";
      goto LABEL_7;
    }
  }

  v20 = v27;
}

Swift::Void __swiftcall ConstraintUsageMetricsManager.report()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_log;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v27[1] = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136315138;
    static Date.now.getter();
    sub_100015714();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v2;
    v15 = v3;
    v17 = v16;
    (*(v15 + 8))(v6, v14);
    v18 = sub_100015104(v13, v17, v28);
    v3 = v15;
    v2 = v14;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reporting environment constraint usage: %s", v11, 0xCu);
    sub_1000122B0(v12);
  }

  sub_1000113B8(5, sub_1000149F8, 0, *(v1 + OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context), *(v1 + OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context + 8));
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    static Date.now.getter();
    sub_100015714();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v3 + 8))(v6, v2);
    v26 = sub_100015104(v23, v25, v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Finished reporting environment constraint usage: %s", v21, 0xCu);
    sub_1000122B0(v22);
  }
}

void sub_1000149F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a6;
  v15[4] = sub_100015850;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100014B24;
  v15[3] = &unk_1000258C8;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

Class sub_100014B24(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000159F8(0, &qword_100029260, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

Swift::Void __swiftcall ConstraintUsageMetricsManager.clean()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_log;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v27[1] = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136315138;
    static Date.now.getter();
    sub_100015714();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v2;
    v15 = v3;
    v17 = v16;
    (*(v15 + 8))(v6, v14);
    v18 = sub_100015104(v13, v17, v28);
    v3 = v15;
    v2 = v14;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Cleaning environment constraint usage metrics: %s", v11, 0xCu);
    sub_1000122B0(v12);
  }

  sub_100011BBC(*(v1 + OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context), *(v1 + OBJC_IVAR____TtC5amfid29ConstraintUsageMetricsManager_context + 8), 1209600.0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    static Date.now.getter();
    sub_100015714();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v3 + 8))(v6, v2);
    v26 = sub_100015104(v23, v25, v28);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Finished cleaning environment constraint usage metrics: %s", v21, 0xCu);
    sub_1000122B0(v22);
  }
}

id ConstraintUsageMetricsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstraintUsageMetricsManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100015104(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000151D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015C74(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000122B0(v11);
  return v7;
}

unint64_t sub_1000151D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000152DC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000152DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100015328(a1, a2);
  sub_100015458(&off_100025878);
  return v3;
}

char *sub_100015328(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100015544(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015544(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100015458(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000155B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100015544(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000121A0(&qword_100029288, &qword_10001E1D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000155B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000121A0(&qword_100029288, &qword_10001E1D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000156AC(uint64_t a1)
{
  v2 = sub_1000121A0(&qword_100029228, &unk_10001E170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015714()
{
  result = qword_100029230;
  if (!qword_100029230)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029230);
  }

  return result;
}

uint64_t sub_100015774(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100015810()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100015850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  sub_1000121A0(&qword_100029268, &qword_10001E1B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E160;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100021420;
  sub_1000159F8(0, &qword_100029270, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(integerLiteral:)(v1);
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000100021440;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x6564695F6D616574;
  *(inited + 88) = 0xEF7265696669746ELL;
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x69617274736E6F63;
  *(inited + 112) = 0xEF657079745F746ELL;
  *(inited + 120) = NSNumber.init(integerLiteral:)(v2);
  v4 = sub_100015B70(inited);
  swift_setDeallocating();
  sub_1000121A0(&qword_100029278, &qword_10001E1C0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1000159E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000159F8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100015A40(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100015AB8(a1, a2, v4);
}

unint64_t sub_100015AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100015B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000121A0(&qword_100029280, &qword_10001E1C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100015A40(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100015C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t parseEntitlements(const char *a1, OSString **a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 1);
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  return AMFIUnserializeXML(a1, v2 + 1, a2);
}

void *sub_100015D10(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    do
    {
      sub_1000088E4(&std::cout, "\t", 1);
      --v2;
    }

    while (v2);
  }

  sub_1000088E4(&std::cout, "OSBoolean(", 10);
  v3 = std::ostream::operator<<();

  return sub_1000088E4(v3, ")\n", 2);
}

uint64_t sub_100015DA8(uint64_t a1)
{
  sub_100009310(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100015DE4()
{
  dword_100029318 = 1;
  kOSBooleanFalse_single = off_100025900;
  byte_10002931C = 0;
  __cxa_atexit(nullsub_2, &kOSBooleanFalse_single, &_mh_execute_header);
  dword_100029328 = 1;
  kOSBooleanTrue_single = off_100025900;
  byte_10002932C = 1;
  __cxa_atexit(nullsub_2, &kOSBooleanTrue_single, &_mh_execute_header);
  OSSymbol::symbols = 0u;
  *&qword_100029340 = 0u;
  dword_100029350 = 1065353216;

  return __cxa_atexit(sub_100015CD4, &OSSymbol::symbols, &_mh_execute_header);
}

uint64_t AMFIUnserializeXMLparse(void *a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v96 = v3;
  *v97 = v3;
  v94 = v3;
  v95 = v3;
  v92 = v3;
  v93 = v3;
  v90 = v3;
  v91 = v3;
  *&v97[14] = v3;
  v89 = v3;
  v88 = v3;
  v87 = v3;
  v86 = v3;
  v85 = v3;
  v84 = v3;
  v83 = v3;
  v82 = v3;
  v81 = v3;
  v80 = v3;
  v79 = v3;
  v78 = v3;
  v77 = v3;
  v76 = v3;
  v75 = v3;
  v74 = v3;
  v4 = __b;
  memset(__b, 170, sizeof(__b));
  v5 = 0;
  v6 = 0;
  v73 = 0;
  v7 = -2;
  v69 = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    if (((0xFDAFF8FEuLL >> v6) & 1) == 0)
    {
      v8 = byte_10001E1E0[v6];
      if (v7 != -2)
      {
        goto LABEL_38;
      }

      v9 = v5;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v100[0] = v10;
      v100[1] = v10;
      v71 = -1431655766;
      memset(__s1, 170, sizeof(__s1));
      memset(v98, 170, sizeof(v98));
      while (1)
      {
        do
        {
          while (1)
          {
            v11 = *(v2 + 8);
            v7 = *(*v2 + v11);
            if (v7 == 32 || v7 == 9)
            {
              v13 = *(v2 + 56);
              if (v13 - 1 <= v11)
              {
                v7 = 0;
                goto LABEL_92;
              }

              v14 = ~v11 + v13;
              v15 = (*v2 + v11++ + 1);
              v5 = v9;
              while (1)
              {
                *(v2 + 8) = v11;
                v16 = *v15++;
                v7 = v16;
                if (v16 != 9 && v7 != 32)
                {
                  break;
                }

                ++v11;
                if (!--v14)
                {
                  v7 = 0;
                  goto LABEL_38;
                }
              }

              if (!v7)
              {
                goto LABEL_38;
              }
            }

            if (v7 != 10)
            {
              break;
            }

            ++*(v2 + 12);
            if (*(v2 + 56) - 1 > v11)
            {
              *(v2 + 8) = v11 + 1;
            }
          }

          if (!v7)
          {
            goto LABEL_92;
          }

          v17 = sub_100016FE8(v2, v100, &v71, __s1, v98);
        }

        while (v17 == 4);
        v18 = v17;
        if (!v17)
        {
          goto LABEL_91;
        }

        v19 = *(v2 + 24);
        if (v19)
        {
          *(v2 + 24) = *v19;
        }

        else
        {
          v19 = malloc_type_malloc(0x50uLL, 0x10B0040F2213367uLL);
          v19[2] = 0u;
          v19[3] = 0u;
          v19[4] = 0u;
          *v19 = 0u;
          v19[1] = 0u;
          *(v19 + 1) = *(v2 + 16);
          *(v2 + 16) = v19;
        }

        *(v19 + 18) = -1;
        v20 = v71;
        v69 = v19;
        if (v71 >= 1)
        {
          v21 = &__s1[1];
          v22 = v71;
          while (*(v21 - 1) != 73 || *v21 != 68)
          {
            v21 += 32;
            if (!--v22)
            {
              goto LABEL_31;
            }
          }

LABEL_91:
          v7 = &stru_100000100.sectname[11];
          goto LABEL_92;
        }

LABEL_31:
        if (LOBYTE(v100[0]) != 112)
        {
          break;
        }

        if (LODWORD(v100[0]) != 1936288880 || WORD2(v100[0]) != 116)
        {
          goto LABEL_91;
        }

        *v19 = *(v2 + 24);
        *(v2 + 24) = v19;
      }

      v7 = 267;
      if (LOBYTE(v100[0]) <= 0x68u)
      {
        if (LOBYTE(v100[0]) != 97)
        {
          if (LOBYTE(v100[0]) == 100)
          {
            if (LODWORD(v100[0]) ^ 0x74636964 | BYTE4(v100[0]))
            {
              if (!(LODWORD(v100[0]) ^ 0x61746164 | BYTE4(v100[0])))
              {
                v70 = 0xAAAAAAAAAAAAAAAALL;
                if (v18 == 3)
                {
                  *(v19 + 5) = 0;
                  *(v19 + 6) = 0;
                  v7 = &stru_100000100.sectname[4];
                }

                else
                {
                  if (v71 < 1)
                  {
LABEL_168:
                    v65 = sub_100017760(v2, &v70);
                  }

                  else
                  {
                    v63 = v98;
                    v64 = __s1;
                    while (strcmp(v64, "format") || strcmp(v63, "hex"))
                    {
                      v63 += 32;
                      v64 += 32;
                      if (!--v20)
                      {
                        goto LABEL_168;
                      }
                    }

                    v65 = sub_100017570(v2, &v70);
                  }

                  v69[5] = v70;
                  v69[6] = v65;
                  if (sub_100016FE8(v2, v100, &v71, __s1, v98) == 2)
                  {
                    if (LODWORD(v100[0]) ^ 0x61746164 | BYTE4(v100[0]))
                    {
                      v7 = 267;
                    }

                    else
                    {
                      v7 = 260;
                    }
                  }

                  else
                  {
                    v7 = 267;
                  }
                }
              }
            }

            else if (v18 == 3)
            {
              *(v19 + 2) = 0;
              v7 = &stru_100000100.sectname[5];
            }

            else if (v18 == 1)
            {
              v7 = 123;
            }

            else
            {
              v7 = 125;
            }

            goto LABEL_92;
          }

          if (LOBYTE(v100[0]) != 102 || (LODWORD(v100[0]) == 1936482662 ? (v53 = WORD2(v100[0]) == 101) : (v53 = 0), v53 ? (v54 = 0) : (v54 = 1), v18 != 3))
          {
LABEL_92:
            v5 = v9;
            goto LABEL_38;
          }

          v5 = v9;
          if (v54)
          {
            goto LABEL_38;
          }

          *(v19 + 8) = 0;
LABEL_119:
          v7 = &stru_100000100.sectname[3];
          goto LABEL_38;
        }

        if (LODWORD(v100[0]) != 1634890337 || WORD2(v100[0]) != 121)
        {
          goto LABEL_92;
        }

        if (v18 == 3)
        {
          *(v19 + 2) = 0;
          v7 = &stru_100000100.sectname[2];
          goto LABEL_92;
        }

        v61 = v18 == 1;
        v62 = 40;
LABEL_157:
        if (v61)
        {
          v7 = v62;
        }

        else
        {
          v7 = v62 + 1;
        }

        goto LABEL_92;
      }

      if (LOBYTE(v100[0]) > 0x72u)
      {
        if (LOBYTE(v100[0]) != 115)
        {
          if (LOBYTE(v100[0]) != 116 || v18 != 3)
          {
            goto LABEL_92;
          }

          v5 = v9;
          if (LODWORD(v100[0]) ^ 0x65757274 | BYTE4(v100[0]))
          {
            goto LABEL_38;
          }

          *(v19 + 8) = 1;
          goto LABEL_119;
        }

        if (LODWORD(v100[0]) != 1769108595 || *(v100 + 3) != 6778473)
        {
          goto LABEL_92;
        }

        if (v18 == 3)
        {
          v58 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
          v69[7] = v58;
          *v58 = 0;
          v7 = &stru_100000100.sectname[10];
          goto LABEL_92;
        }

        v60 = sub_100017AAC(v2);
        v69[7] = v60;
        if (!v60 || sub_100016FE8(v2, v100, &v71, __s1, v98) != 2)
        {
          goto LABEL_92;
        }

        v61 = (LODWORD(v100[0]) ^ 0x69727473 | *(v100 + 3) ^ 0x676E69) == 0;
        v62 = 266;
        goto LABEL_157;
      }

      if (LOBYTE(v100[0]) == 105)
      {
        if (*&v100[0] != 0x72656765746E69)
        {
          goto LABEL_92;
        }

        *(v19 + 5) = 64;
        if (v20 >= 1)
        {
          v55 = v98;
          v56 = __s1;
          do
          {
            if (!strcmp(v56, "size"))
            {
              v69[5] = strtoul(v55, 0, 0);
            }

            v55 += 32;
            v56 += 32;
            --v20;
          }

          while (v20);
        }

        if (v18 == 3)
        {
          v69[8] = 0;
          v7 = &stru_100000100.sectname[8];
          goto LABEL_92;
        }

        v69[8] = sub_10001792C(v2);
        v5 = v9;
        if (sub_100016FE8(v2, v100, &v71, __s1, v98) == 2)
        {
          v51 = *&v100[0] == 0x72656765746E69;
          v52 = 264;
          goto LABEL_150;
        }

        v7 = 267;
      }

      else
      {
        if (LOBYTE(v100[0]) != 107 || v18 == 3)
        {
          goto LABEL_92;
        }

        v5 = v9;
        if (LODWORD(v100[0]) == 7955819)
        {
          v50 = sub_100017AAC(v2);
          v69[7] = v50;
          if (v50)
          {
            if (sub_100016FE8(v2, v100, &v71, __s1, v98) == 2)
            {
              v51 = LODWORD(v100[0]) == 7955819;
              v52 = 263;
LABEL_150:
              if (v51)
              {
                v7 = v52;
              }

              else
              {
                v7 = 267;
              }
            }
          }
        }
      }

LABEL_38:
      if (v7 < 1)
      {
        v24 = 0;
        v7 = 0;
      }

      else
      {
        v24 = v7 > 0x10B ? 2 : byte_10001E200[v7];
      }

      v25 = (v24 + v8);
      if (v25 <= 0x38 && v24 == byte_10001E30C[v25])
      {
        break;
      }
    }

    if ((0x2500700uLL >> v6))
    {
      goto LABEL_176;
    }

    v26 = byte_10001E37E[v6];
    v27 = byte_10001E39E[byte_10001E37E[v6]];
    v28 = v4[1 - v27];
    switch(byte_10001E37E[v6])
    {
      case 2u:
        v67 = "unexpected end of buffer";
        goto LABEL_178;
      case 3u:
        result = 0;
        *(v2 + 40) = *(*v4 + 24);
        *(*v4 + 24) = 0;
        v68 = *v4;
        *v68 = *(v2 + 24);
        *(v2 + 24) = v68;
        return result;
      case 4u:
        goto LABEL_176;
      case 5u:
        v41 = *v4;
        v42 = *(*v4 + 16);
        if (v42)
        {
          v43 = 0;
          v44 = 0;
          do
          {
            v45 = v42;
            v42 = *v42;
            *v45 = v44;
            ++v43;
            v44 = v45;
          }

          while (v42);
        }

        else
        {
          v45 = 0;
          v43 = 0;
        }

        *(v41 + 16) = v45;
        sub_100017D30(v43);
      case 6u:
        v36 = *v4;
        v37 = *(*v4 + 16);
        if (v37)
        {
          v38 = 0;
          v39 = 0;
          do
          {
            v40 = v37;
            v37 = *v37;
            *v40 = v39;
            ++v38;
            v39 = v40;
          }

          while (v37);
        }

        else
        {
          v40 = 0;
          v38 = 0;
        }

        *(v36 + 16) = v40;
        sub_100018314(v38);
      case 7u:
        sub_10000BBF0(*(*v4 + 56));
      case 8u:
        operator new();
      case 9u:
        operator new();
      case 0xAu:
        v33 = byte_10001E37E[v6];
        v28 = *v4;
        if (*(*v4 + 64))
        {
          v34 = &kOSBooleanTrue_single;
        }

        else
        {
          v34 = &kOSBooleanFalse_single;
        }

        *(v28 + 24) = v34;
        sub_100007D18(v34);
        if (!*(v28 + 24))
        {
          v67 = "buildBoolean";
          goto LABEL_178;
        }

        v35 = *(v2 + 48);
        *(v2 + 48) = v35 + 1;
        v26 = v33;
        if (v35 >= 0x1FFFF)
        {
          v67 = "maximum object count";
LABEL_178:
          sub_100016D7C(v2, v67);
          return 1;
        }

LABEL_84:
        v46 = &v4[-v27];
        v5 -= 2 * v27;
        v46[1] = v28;
        v4 = v46 + 1;
        v47 = byte_10001E3B9[v26] - 17;
        v48 = *(&v73 + v5) + byte_10001E3D4[v47];
        if (v48 <= 0x38 && *(&v73 + v5) == byte_10001E30C[v48])
        {
          v6 = byte_10001E345[v48];
        }

        else
        {
          v6 = byte_10001E3E1[v47];
        }

LABEL_88:
        *(&v73 + v5 + 2) = v6;
        v49 = v5 <= 395;
        v5 += 2;
        if (!v49)
        {
          sub_100016D7C(v2, "memory exhausted");
          return 2;
        }

        break;
      case 0xBu:
      case 0x12u:
        v28 = *(v4 - 1);
        *(v28 + 16) = 0;
        goto LABEL_84;
      case 0xCu:
      case 0x13u:
        v28 = *(v4 - 2);
        *(v28 + 16) = *(v4 - 1);
        goto LABEL_84;
      case 0xFu:
        v32 = *(v4 - 1);
        v28 = *v4;
        **v4 = v32;
        if (!v32)
        {
          goto LABEL_84;
        }

        while (v32[4] != *(v28 + 32))
        {
          v32 = *v32;
          if (!v32)
          {
            goto LABEL_84;
          }
        }

        v67 = "duplicate dictionary key";
        goto LABEL_178;
      case 0x10u:
        v28 = *(v4 - 1);
        *(v28 + 32) = *(v28 + 24);
        *(v28 + 24) = *(*v4 + 24);
        *v28 = 0;
        *(*v4 + 24) = 0;
        v29 = *v4;
        *v29 = *(v2 + 24);
        *(v2 + 24) = v29;
        goto LABEL_84;
      case 0x11u:
        v28 = *v4;
        v30 = byte_10001E37E[v6];
        v31 = sub_100007AC4(*(*v4 + 56));
        free(*(v28 + 56));
        v26 = v30;
        *(v28 + 56) = 0;
        *(v28 + 24) = v31;
        goto LABEL_84;
      case 0x15u:
        v28 = *v4;
        **v4 = 0;
        goto LABEL_84;
      case 0x16u:
        v28 = *v4;
        **v4 = *(v4 - 1);
        goto LABEL_84;
      default:
        goto LABEL_84;
    }
  }

  if ((0xAA005815600800uLL >> (v24 + v8)))
  {
LABEL_176:
    v67 = "syntax error";
    goto LABEL_178;
  }

  if (v25 != 6)
  {
    v6 = byte_10001E345[v25];
    if (v7)
    {
      v7 = -2;
    }

    else
    {
      v7 = 0;
    }

    v4[1] = v69;
    ++v4;
    goto LABEL_88;
  }

  return 0;
}

uint64_t sub_100016D7C(uint64_t result, const char *a2)
{
  if (*(result + 32))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v2;
    v10 = v2;
    v7 = v2;
    v8 = v2;
    v5 = v2;
    v6 = v2;
    *__str = v2;
    v4 = v2;
    snprintf(__str, 0x80uLL, "AMFIUnserializeXML: %s near line %d\n", a2, *(result + 12));
    sub_10000BBF0(__str);
  }

  return result;
}

uint64_t AMFIUnserializeXML(const char *a1, unint64_t a2, OSString **a3)
{
  v3 = 0;
  if (a1 && a2 >= 4)
  {
    if (a1[a2 - 1])
    {
      return 0;
    }

    v7 = malloc_type_malloc(0x40uLL, 0x10F004054948CD0uLL);
    if (!v7)
    {
      return 0;
    }

    else
    {
      v9 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      *v7 = a1;
      v7[1] = &_mh_execute_header;
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = a3;
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = a2;
      AMFIUnserializeXMLparse(v7, v8);
      v3 = v9[5];
      v10 = v9[2];
      if (v10)
      {
        do
        {
          v11 = v10[3];
          if (v11)
          {
            sub_100007694(v11);
          }

          v12 = v10[6];
          if (v12)
          {
            free(v12);
          }

          v13 = v10[4];
          if (v13)
          {
            sub_100007694(v13);
          }

          v14 = v10[7];
          if (v14)
          {
            free(v14);
          }

          v15 = v10[1];
          free(v10);
          v10 = v15;
        }

        while (v15);
      }

      free(v9);
    }
  }

  return v3;
}

void *sub_100016F1C(void *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      sub_1000088E4(&std::cout, "\t", 1);
      --v3;
    }

    while (v3);
  }

  v4 = sub_1000088E4(&std::cout, "OSObject(", 9);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*a1 - 8) + 8);
  v7 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  v8 = sub_1000088E4(v5, v6, v7);

  return sub_1000088E4(v8, ")\n", 2);
}

uint64_t sub_100016FE8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + *(a1 + 8));
  *a3 = 0;
  if (v6 != 60)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 56) - 1;
  if (v8 <= v7)
  {
    return 0;
  }

  v9 = v7 + 1;
  *(a1 + 8) = v7 + 1;
  LODWORD(v10) = *(v5 + v7 + 1);
  if (v10 == 33)
  {
    if (v8 > v9)
    {
      v9 = v7 + 2;
      *(a1 + 8) = v7 + 2;
      v15 = *(v5 + v7 + 2);
      if (v15 == 45)
      {
        if (v8 > v9)
        {
          LODWORD(v9) = v7 + 3;
          *(a1 + 8) = v7 + 3;
          v15 = *(v5 + v7 + 3);
          if (*(v5 + v7 + 3))
          {
            v16 = v15 == 45;
            goto LABEL_85;
          }

          goto LABEL_37;
        }

        v15 = 0;
      }

      v16 = 0;
LABEL_85:
      v12 = 0;
      v49 = !v16;
      if ((v15 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6)
      {
        v49 = 0;
      }

      if (v49 || !v15)
      {
        return v12;
      }

      while (1)
      {
        do
        {
          while (1)
          {
            while (1)
            {
              if (v8 <= v9)
              {
                return 0;
              }

              v50 = v9;
              v9 = v9 + 1;
              *(a1 + 8) = v9;
              v12 = *(v5 + v9);
              if (v12 != 10)
              {
                break;
              }

              ++*(a1 + 12);
              if (!v16)
              {
                LODWORD(v12) = 10;
                goto LABEL_103;
              }
            }

            if (!*(v5 + v9))
            {
              return v12;
            }

            if (v16)
            {
              break;
            }

LABEL_102:
            if (v12 == 62)
            {
              if (v8 <= v9)
              {
                return 4;
              }

              v55 = v9 + 1;
LABEL_112:
              v14 = 4;
LABEL_113:
              *(a1 + 8) = v55;
              return v14;
            }

LABEL_103:
            v53 = v12 == 0;
            v12 = 0;
            v54 = v53 || v16;
            if (v54)
            {
              return v12;
            }
          }
        }

        while (v12 != 45);
        if (v8 <= v9)
        {
          return 0;
        }

        v51 = v50;
        v52 = v50 + 2;
        *(a1 + 8) = v52;
        v12 = *(v5 + v52);
        if (v12 == 45)
        {
          if (v8 <= v52)
          {
            return 0;
          }

          v9 = v51 + 3;
          *(a1 + 8) = v9;
          LODWORD(v12) = *(v5 + v9);
          goto LABEL_102;
        }

        LODWORD(v9) = v52;
        if (!*(v5 + v52))
        {
          return v12;
        }
      }
    }

    v15 = 0;
LABEL_37:
    v16 = 0;
    goto LABEL_85;
  }

  if (v10 == 47)
  {
    if (v8 <= v9)
    {
      return 0;
    }

    v13 = v7 + 2;
    *(a1 + 8) = v13;
    LOBYTE(v10) = *(v5 + v13);
    v14 = 2;
    goto LABEL_26;
  }

  if (v10 != 63)
  {
    v14 = 1;
LABEL_26:
    if (((v10 & 0xDF) - 65) > 0x19u)
    {
      return 0;
    }

    v17 = 0;
    while (((v10 & 0xDF) - 65) < 0x1Au || v10 == 45 || (v10 - 48) <= 9u)
    {
      *(a2 + v17) = v10;
      v18 = *(a1 + 8);
      if (*(a1 + 56) - 1 <= v18)
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        v10 = *a1;
        v19 = v18 + 1;
        *(a1 + 8) = v19;
        LOBYTE(v10) = *(v10 + v19);
      }

      v12 = 0;
      if (++v17 == 31)
      {
        return v12;
      }
    }

    *(a2 + v17) = 0;
LABEL_39:
    if (v10 != 47)
    {
      if (v10 == 62)
      {
        LODWORD(v56) = *(a1 + 8);
        v57 = v56;
        v58 = *(a1 + 56) - 1;
        goto LABEL_116;
      }

      while (v10 == 9 || v10 == 32)
      {
        LOBYTE(v10) = 0;
        v20 = *(a1 + 8);
        if (*(a1 + 56) - 1 > v20)
        {
          v21 = *a1;
          v22 = v20 + 1;
          *(a1 + 8) = v22;
          LOBYTE(v10) = *(v21 + v22);
        }
      }

      v23 = 30;
      for (i = a4; ; ++i)
      {
        v25 = v10;
        if ((v10 & 0xFFFFFFDF) - 65 > 0x19)
        {
          v26 = *a3;
          if (v10 != 45 && (v10 - 48) > 9)
          {
            *(i + 32 * v26) = 0;
            while (v25 == 9 || v25 == 32)
            {
              v25 = 0;
              v29 = *(a1 + 8);
              if (*(a1 + 56) - 1 > v29)
              {
                v30 = *a1;
                v31 = v29 + 1;
                *(a1 + 8) = v31;
                v25 = *(v30 + v31);
              }
            }

            if (v25 != 61)
            {
              return 0;
            }

            v32 = *(a1 + 8);
            v33 = *(a1 + 56) - 1;
            if (v33 <= v32)
            {
              v34 = 0;
              goto LABEL_65;
            }

LABEL_64:
            v35 = *a1;
            v32 = v32 + 1;
            *(a1 + 8) = v32;
            v34 = *(v35 + v32);
LABEL_65:
            while (v34 == 9 || v34 == 32)
            {
              v34 = 0;
              if (v33 > v32)
              {
                goto LABEL_64;
              }
            }

            if (v34 != 34)
            {
              return 0;
            }

            if (v33 <= v32)
            {
              v38 = 0;
            }

            else
            {
              v36 = *a1;
              v37 = v32 + 1;
              *(a1 + 8) = v37;
              v38 = *(v36 + v37);
            }

            v39 = 30;
            for (j = a5; ; ++j)
            {
              v41 = *a3;
              if (v38 == 34)
              {
                break;
              }

              *(j + 32 * v41) = v38;
              if (!v39)
              {
                return 0;
              }

              v42 = *(a1 + 8);
              if (*(a1 + 56) - 1 <= v42)
              {
                return 0;
              }

              v12 = 0;
              v43 = *a1;
              v44 = v42 + 1;
              *(a1 + 8) = v44;
              v38 = *(v43 + v44);
              --v39;
              if (!v38)
              {
                return v12;
              }
            }

            LOBYTE(v10) = 0;
            *(j + 32 * v41) = 0;
            v45 = *(a1 + 8);
            if (*(a1 + 56) - 1 > v45)
            {
              v46 = *a1;
              v47 = v45 + 1;
              *(a1 + 8) = v47;
              LOBYTE(v10) = *(v46 + v47);
            }

            v12 = 0;
            v48 = (*a3)++;
            if (v48 > 30)
            {
              return v12;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v26 = *a3;
        }

        *(i + 32 * v26) = v10;
        if (!v23)
        {
          return 0;
        }

        v27 = *(a1 + 8);
        if (*(a1 + 56) - 1 <= v27)
        {
          LOBYTE(v10) = 0;
        }

        else
        {
          v28 = *a1;
          v10 = v27 + 1;
          *(a1 + 8) = v10;
          LOBYTE(v10) = *(v28 + v10);
        }

        --v23;
      }
    }

    v59 = *(a1 + 8);
    v58 = *(a1 + 56) - 1;
    if (v58 > v59)
    {
      v60 = *a1;
      v56 = v59 + 1;
      *(a1 + 8) = v59 + 1;
      if (*(v60 + v59 + 1) == 62)
      {
        v14 = 3;
        v57 = v56;
LABEL_116:
        if (v58 > v57)
        {
          v55 = v56 + 1;
          goto LABEL_113;
        }

        return v14;
      }
    }

    return 0;
  }

  if (v8 <= v9)
  {
    return 0;
  }

  while (1)
  {
    v11 = v9 + 1;
    *(a1 + 8) = v11;
    v12 = *(v5 + v11);
    if (v12 == 10)
    {
      ++*(a1 + 12);
      goto LABEL_16;
    }

    if (v12 != 63)
    {
      if (!*(v5 + v11))
      {
        return v12;
      }

      goto LABEL_16;
    }

    if (v8 <= v11)
    {
      return 4;
    }

    v11 = v9 + 2;
    *(a1 + 8) = v11;
    if (!*(v5 + v11))
    {
      return 4;
    }

    if (*(v5 + v11) == 62)
    {
      break;
    }

LABEL_16:
    v12 = 0;
    LODWORD(v9) = v11;
    if (v8 <= v11)
    {
      return v12;
    }
  }

  if (v8 > v11)
  {
    v55 = v9 + 3;
    goto LABEL_112;
  }

  return 4;
}

_BYTE *sub_100017570(uint64_t *a1, void *a2)
{
  result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  v5 = result;
  v6 = *(a1 + 2);
  LOBYTE(v7) = *(*a1 + v6);
  v8 = result;
  while (1)
  {
    while (1)
    {
      if (v7 == 9 || v7 == 32)
      {
        v9 = a1[7] - 1;
        if (v9 <= v6)
        {
          goto LABEL_29;
        }

        v10 = v6;
        v11 = *a1 + 1;
        LODWORD(v6) = v6 + 1;
        while (1)
        {
          *(a1 + 2) = v6;
          LODWORD(v7) = *(v11 + v10);
          if (v7 != 9 && v7 != 32)
          {
            break;
          }

          ++v10;
          LODWORD(v6) = v6 + 1;
          if (v9 <= v10)
          {
            goto LABEL_29;
          }
        }

        if (!*(v11 + v10))
        {
          goto LABEL_29;
        }
      }

      else if (v7 == 60)
      {
        *a2 = v5 - result;
        return result;
      }

      if (v7 != 10)
      {
        break;
      }

      LOBYTE(v7) = 0;
      ++*(a1 + 3);
      if (a1[7] - 1 > v6)
      {
        v7 = *a1;
        v6 = v6;
        goto LABEL_16;
      }
    }

    if ((v7 - 48) > 9)
    {
      if ((v7 - 97) > 5)
      {
        break;
      }

      v12 = 16 * v7 - 112;
    }

    else
    {
      v12 = 16 * v7;
    }

    *v5 = v12;
    v13 = *(a1 + 2);
    if (a1[7] - 1 <= v13)
    {
      break;
    }

    v14 = *a1;
    v15 = v13 + 1;
    *(a1 + 2) = v15;
    v16 = *(v14 + v15);
    v17 = v16 - 48;
    if ((v16 - 48) >= 0xA)
    {
      if ((v16 - 97) > 5)
      {
        break;
      }

      v17 = v16 - 87;
    }

    *v5++ |= v17;
    if (v5 - v8 >= 4096)
    {
      v18 = v5 - result;
      result = malloc_type_realloc(result, v5 - result + 4096, 0x100004077774924uLL);
      v5 = &result[v18];
      v8 = &result[v18];
    }

    LOBYTE(v7) = 0;
    v19 = *(a1 + 2);
    LODWORD(v6) = v19;
    if (a1[7] - 1 > v19)
    {
      v6 = v19;
      v7 = *a1;
LABEL_16:
      *(a1 + 2) = ++v6;
      LOBYTE(v7) = *(v7 + v6);
    }
  }

LABEL_29:
  *a2 = 0;
  free(result);
  return 0;
}

void *sub_100017760(uint64_t *a1, void *a2)
{
  result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  v5 = *(a1 + 2);
  v6 = *(*a1 + v5);
  *a2 = 0;
  if (v6 == 60)
  {
LABEL_28:
    free(result);
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v6 & 0x7F;
    switch(v12)
    {
      case 0xA:
        v11 = 0;
        ++*(a1 + 3);
        break;
      case 0x3D:
        ++v11;
        break;
      case 0:
        goto LABEL_28;
      default:
        v11 = 0;
        break;
    }

    v13 = byte_10001E3EE[v12];
    if (v13 < 0)
    {
      if (a1[7] - 1 > v5)
      {
        v14 = *a1;
        v5 = v5;
LABEL_12:
        *(a1 + 2) = ++v5;
        v6 = *(v14 + v5);
        continue;
      }

      v6 = 0;
    }

    else
    {
      ++v10;
      v9 = v13 + (v9 << 6);
      if ((v10 & 3) == 0)
      {
        v15 = v8 + 2;
        if (v7 <= v15)
        {
          v16 = v7 + 4096;
          result = malloc_type_realloc(result, v7 + 4096, 0x100004077774924uLL);
          v7 = v16;
        }

        *(result + v8) = BYTE2(v9);
        if (v11 > 1)
        {
          ++v8;
        }

        else
        {
          *(result + v8 + 1) = BYTE1(v9);
          if (v11 == 1)
          {
            v8 += 2;
          }

          else
          {
            v8 += 3;
            *(result + v15) = v9;
          }
        }
      }

      LODWORD(v5) = *(a1 + 2);
      if (a1[7] - 1 > v5)
      {
        v5 = v5;
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = 0;
    }
  }

  while (v6 != 60);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10001792C(uint64_t *a1)
{
  v1 = *a1;
  LODWORD(v2) = *(a1 + 2);
  v3 = *(*a1 + v2);
  if (v3 != 48)
  {
    goto LABEL_6;
  }

  v4 = v2;
  v5 = a1[7] - 1;
  if (v5 <= v2)
  {
    return 0;
  }

  v2 = v2 + 1;
  *(a1 + 2) = v4 + 1;
  v3 = *(v1 + v4 + 1);
  if (v3 != 120)
  {
LABEL_6:
    if (v3 != 45)
    {
      v8 = v3;
LABEL_10:
      v9 = v8;
      if ((v8 - 48) > 9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = a1[7] - 1;
        v2 = v2;
        do
        {
          v10 = 10 * v10 + v9 - 48;
          if (v11 <= v2)
          {
            break;
          }

          *(a1 + 2) = ++v2;
          v9 = *(v1 + v2);
        }

        while (v9 - 48 < 0xA);
      }

      if (v3 == 45)
      {
        return -v10;
      }

      return v10;
    }

    if (a1[7] - 1 > v2)
    {
      v2 = v2 + 1;
      *(a1 + 2) = v2;
      v8 = *(v1 + v2);
      goto LABEL_10;
    }

    return 0;
  }

  if (v5 <= v2)
  {
    v7 = 0;
    LODWORD(v6) = v4 + 1;
  }

  else
  {
    LODWORD(v6) = v4 + 2;
    *(a1 + 2) = v4 + 2;
    v7 = *(v1 + v4 + 2);
  }

  v12 = v7 - 48 < 0xA;
  if (v7 - 48 >= 0xA && v7 - 97 > 5)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    if (v12)
    {
      v14 = -48;
    }

    else
    {
      v14 = -87;
    }

    if (v5 <= v6)
    {
      v15 = 0;
    }

    else
    {
      v6 = v6 + 1;
      *(a1 + 2) = v6;
      v15 = *(v1 + v6);
    }

    v10 = v14 + 16 * v10 + v7;
    v7 = v15;
    v12 = v15 - 48 < 0xA;
    if (v15 - 48 >= 0xA)
    {
      v7 = v15;
      if (v15 - 97 >= 6)
      {
        break;
      }
    }
  }

  return v10;
}

_BYTE *sub_100017AAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = v3;
LABEL_2:
  v5 = v4;
  v6 = *(v2 + v4);
  while (v6 == 10)
  {
    ++*(a1 + 3);
LABEL_8:
    v6 = 0;
    if (a1[7] - 1 > v5)
    {
      v4 = v5 + 1;
      *(a1 + 2) = v5 + 1;
      goto LABEL_2;
    }
  }

  if (!v6)
  {
    return 0;
  }

  if (v6 != 60)
  {
    goto LABEL_8;
  }

  v7 = v5 - v3;
  result = malloc_type_malloc(v5 - v3 + 1, 0x100004077774924uLL);
  if (!result)
  {
    puts("AMFIUnserializeXML: can't alloc temp memory");
    return 0;
  }

  if (v7 < 1)
  {
    v21 = 0;
LABEL_47:
    result[v21] = 0;
    return result;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  v11 = v3 + 3;
  v12 = result;
  while (2)
  {
    v13 = *a1;
    v14 = v10;
    v15 = v10 + 1;
    v16 = *(*a1 + v3 + v10);
    if (v16 != 38)
    {
      goto LABEL_40;
    }

    v10 = v10 + 4;
    if (v14 + 4 > v7)
    {
      goto LABEL_44;
    }

    v17 = v14 + 2;
    v18 = *(v13 + v15 + v3);
    if (v18 != 103)
    {
      if (v18 == 108)
      {
        if (*(v13 + v17 + v3) != 116 || *(v13 + v11 + v14) != 59)
        {
          goto LABEL_44;
        }

        LOBYTE(v16) = 60;
        goto LABEL_41;
      }

      v15 = v14 + 5;
      if (v14 + 5 > v7)
      {
        goto LABEL_44;
      }

      if (v18 == 113)
      {
        if (*(v13 + v3 + v17) != 117 || *(v13 + v11 + v14) != 111 || *(v13 + v3 + v10) != 116 || *(v13 + v15 + v3) != 59)
        {
          goto LABEL_44;
        }

        LODWORD(v10) = v14 + 6;
        LOBYTE(v16) = 34;
        goto LABEL_41;
      }

      if (v18 != 97)
      {
        goto LABEL_44;
      }

      v19 = v14 + 3;
      v20 = *(v13 + v3 + v17);
      if (v20 != 109)
      {
        if (v20 != 112 || *(v13 + v19 + v3) != 111 || *(v13 + v10 + v3) != 115 || *(v13 + v15 + v3) != 59)
        {
          goto LABEL_44;
        }

        LODWORD(v10) = v14 + 6;
        LOBYTE(v16) = 39;
        goto LABEL_41;
      }

      if (*(v13 + v19 + v3) != 112 || *(v13 + v3 + v10) != 59)
      {
        goto LABEL_44;
      }

      LOBYTE(v16) = 38;
LABEL_40:
      LODWORD(v10) = v15;
LABEL_41:
      *v12++ = v16;
      v9 += &_mh_execute_header;
      if (v10 >= v7)
      {
        v21 = v9 >> 32;
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  if (*(v13 + v3 + v17) == 116 && *(v13 + v11 + v14) == 59)
  {
    LOBYTE(v16) = 62;
    goto LABEL_41;
  }

LABEL_44:
  free(result);
  return 0;
}