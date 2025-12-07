uint64_t sub_100002240(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void sub_100002994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000029AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000029C4(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

uint64_t sub_100002A14(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = sub_100002F74(a2, 0);

  return _objc_release_x1();
}

uint64_t sub_100002B2C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

uint64_t sub_100002C44(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_100002DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002E14(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = sub_100002FEC(a2, 0);

  return _objc_release_x1();
}

void sub_100002F04(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100002F54(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

unsigned __int8 *sub_100002F74(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [NSString stringWithUTF8String:v2];
  }

  return v2;
}

id sub_100002FB4(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSDate dateWithTimeIntervalSince1970:v2];
}

NSNumber *sub_100002FEC(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSNumber numberWithLongLong:v2];
}

NSData *sub_10000302C(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);

  return [NSData dataWithBytes:v4 length:v5];
}

sqlite3 *sub_100003090(void *a1, int a2)
{
  ppDb = 0;
  if (a2)
  {
    v2 = 65537;
  }

  else
  {
    v2 = 65542;
  }

  v3 = [a1 path];
  v4 = sqlite3_open_v2([v3 UTF8String], &ppDb, v2, 0);

  if (v4)
  {
    v6 = sub_100006750(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FCC4(v4, v6);
    }
  }

  return ppDb;
}

uint64_t sub_100003148(const char *a1, int a2)
{
  if (!a1)
  {
    sub_10003FEBC();
  }

  v3 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v3 == -1)
  {
    v8 = sub_100006750(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003FE3C();
    }

    return 0;
  }

  else
  {
    v4 = v3;
    v5 = fstat(v3, &v11);
    if ((v5 & 0x80000000) != 0)
    {
      v9 = sub_100006750(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003FDBC();
      }
    }

    else
    {
      if ((v11.st_mode & 0x1FF) == a2 || (v6 = fchmod(v4, a2), (v6 & 0x80000000) == 0))
      {
        v7 = 1;
        if (v4 < 0)
        {
          return v7;
        }

        goto LABEL_16;
      }

      v9 = sub_100006750(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003FD3C();
      }
    }

    v7 = 0;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_16:
      close(v4);
    }
  }

  return v7;
}

id sub_1000032A4(uint64_t a1)
{
  if (qword_100067938 != -1)
  {
    sub_10003FEE8();
  }

  v2 = qword_100067930;

  return v2;
}

void sub_1000032E8(id a1)
{
  v1 = [@"/Library/MobileDevice/ProvisioningProfiles" stringByAppendingPathComponent:@"mis.db"];
  v4 = [NSURL fileURLWithPath:v1];

  v2 = [(SQLDB *)MISDBManager databaseWithURL:v4];
  v3 = qword_100067930;
  qword_100067930 = v2;
}

id sub_100003380(uint64_t a1)
{
  if (qword_100067940 != -1)
  {
    sub_10003FEFC();
  }

  v2 = qword_100067948;

  return v2;
}

void sub_1000033C4(id a1)
{
  qword_100067948 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_100003400(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = xpc_connection_copy_entitlement_value();
  pid = xpc_connection_get_pid(v5);
  if (v7)
  {
    v9 = v7 == &_xpc_BOOL_false;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    v11 = pid;
    v12 = sub_100006750(pid);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003FF10(a3, v11, v12);
    }

    xpc_dictionary_set_int64(v6, "resu", 16);
    xpc_connection_send_message(v5, v6);
    xpc_connection_cancel(v5);
  }

  return v10;
}

void start()
{
  sub_100003644();
  objc_opt_new();
  v0 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.online-auth-agent.xpc", v0, 1uLL);

  xpc_connection_set_event_handler(mach_service, &stru_10005D970);
  sub_100003B2C();
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v2 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
  sub_10000D724(v2, &v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  sub_10000F644(&v3);
  v3 = v6;
  v4 = v7;
  v5 = v8;
  sub_10000DAD4(&v3);
  xpc_activity_register("com.apple.mis.profile-garbage-collection", XPC_ACTIVITY_CHECK_IN, &stru_10005D9B8);
  xpc_activity_register("com.apple.online-auth-agent.check-indeterminates", XPC_ACTIVITY_CHECK_IN, &stru_10005D9D8);
  xpc_activity_register("com.apple.online-auth-agent.reaper", XPC_ACTIVITY_CHECK_IN, &stru_10005D9F8);
  xpc_activity_register("com.apple.mis.opportunistic-validation.boot", XPC_ACTIVITY_CHECK_IN, &stru_10005DA18);
  xpc_activity_register("com.apple.online-auth-agent.denylist-update", XPC_ACTIVITY_CHECK_IN, &stru_10005DA38);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

uint64_t sub_100003644()
{
  v0 = umask(0x12u);
  if (mkdir([@"/private/var/db/MobileIdentityData" fileSystemRepresentation], 0x1EDu) < 0)
  {
    v1 = __error();
    if (*v1 != 17)
    {
      v2 = sub_100006750(v1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10003FF98(v2);
      }
    }
  }

  return umask(v0);
}

void sub_1000036C4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000037D0;
    handler[3] = &unk_10005D998;
    v8 = v2;
    v10 = v8;
    xpc_connection_set_event_handler(v8, handler);
    xpc_connection_resume(v8);
    v5 = v10;
  }

  else
  {
    v4 = type;
    v5 = sub_100006750(type);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v2 == &_xpc_error_connection_invalid && v4 == &_xpc_type_error)
    {
      if (v6)
      {
        sub_100040080(v5);
      }
    }

    else if (v6)
    {
      sub_10004003C(v5);
    }
  }
}

void sub_1000037D0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  sub_100005618(*(a1 + 32), v4);
  objc_autoreleasePoolPop(v3);
}

void sub_100003830(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v2);

  if (state)
  {
    sub_10000F7DC();
  }
}

void sub_100003898(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = os_transaction_create();
  if (xpc_activity_get_state(activity))
  {
    sub_10001123C(activity);
  }
}

void sub_100003900(id a1, OS_xpc_object *a2)
{
  state = xpc_activity_get_state(a2);
  if (state)
  {

    sub_1000067E8(state);
  }
}

void sub_100003938(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  state = xpc_activity_get_state(v2);
  if (state)
  {
    v5 = sub_100006750(state);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Checking whether opportunistic validation is needed", buf, 2u);
    }

    v6 = objc_opt_new();
    v7 = [v6 existsIndeterminatesSoon];
    v8 = v7;
    v9 = sub_100006750(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Yes, performing opportunistic validation.", v12, 2u);
      }

      sub_10001123C(v2);
    }

    else
    {
      if (v10)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Opportunistic validation not necessary.", v11, 2u);
      }
    }
  }
}

void sub_100003A7C(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2))
  {
    sub_10000EAB4();
    v2 = _os_feature_enabled_impl();
    if (v2)
    {
      v3 = sub_100003380(v2);
      v7 = 0;
      [v3 syncLaunchWarningsAndReturnError:&v7];
      v4 = v7;
      v5 = v4;
      if (v4)
      {
        v6 = sub_100006750(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1000400C4(v5, v6);
        }
      }
    }
  }
}

void sub_100003B2C()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  targetq = dispatch_queue_create("com.apple.mis.relister", v0);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", targetq, &stru_10005DA80);
}

void sub_100003BA8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  v4 = sub_100006750(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Relister invoked.", buf, 2u);
  }

  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v6 = strcmp(string, "Application Installed");
    if (!v6)
    {
      v7 = sub_100006750(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Relister handling app installation.", v15, 2u);
      }

      v8 = xpc_dictionary_get_value(v2, "UserInfo");
      v9 = v8;
      if (v8)
      {
        type = xpc_get_type(v8);
        if (type == &_xpc_type_dictionary)
        {
          v12 = _CFXPCCreateCFObjectFromXPCObject();
          v11 = v12;
          if (v12)
          {
            v13 = [v12 objectForKeyedSubscript:@"bundleIDs"];
            v14 = v13;
            if (v13)
            {
              [v13 enumerateObjectsUsingBlock:&stru_10005DAC0];
            }
          }

          else
          {
            v14 = sub_100006750(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_100040170();
            }
          }
        }

        else
        {
          v11 = sub_100006750(type);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10004013C();
          }
        }
      }

      else
      {
        v11 = sub_100006750(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000401A4();
        }
      }
    }
  }
}

void sub_100003D98(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [LSApplicationProxy applicationProxyForIdentifier:v4 placeholder:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 bundleURL];
      v9 = [v8 path];

      if (v9)
      {
        [v8 path];
        MISQueryBlacklistForBundle();
      }
    }
  }

  else
  {
    v7 = sub_100006750(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000401D8();
    }
  }
}

void sub_100003F38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_100003F60(uint64_t a1, uint64_t a2)
{
  if (qword_100067958 != -1)
  {
    sub_10004020C();
  }

  return byte_100067950;
}

void sub_100003F98(id a1)
{
  v3 = sub_10000E938();
  v1 = sub_10000E96C() ^ 1;
  v2 = sub_10000EAA8();
  byte_100067950 = [v3 isEqualToString:v2] & v1;
}

uint64_t sub_10000400C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  v17 = a1;
  v18 = a2;
  v76 = a3;
  v19 = a4;
  v20 = a5;
  v77 = a6;
  v78 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = sub_100006750(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v21;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2114;
    v91 = v18;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Performing auth request for: %{public}@, %{public}@, %{public}@", buf, 0x20u);
  }

  v25 = sub_10003F9C8(v18);
  if (v25)
  {
    v26 = sub_100006750(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "UPP is ready.", buf, 2u);
    }

    v28 = sub_1000032A4(v27);
    [v28 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

    v29 = v22[2](v22, 65);
    goto LABEL_9;
  }

  v30 = _os_feature_enabled_impl();
  if (v30)
  {
    goto LABEL_8;
  }

  v85 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v34 = off_100067960;
  v89 = off_100067960;
  if (!off_100067960)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100006444;
    v91 = &unk_10005DB30;
    v92 = &v86;
    sub_100006444(buf);
    v34 = v87[3];
  }

  _Block_object_dispose(&v86, 8);
  if (!v34)
  {
    sub_100040324();
  }

  v35 = v34(&v85);
  v36 = v85;
  if (v36 || !v35)
  {

LABEL_21:
    if (([v19 BOOLValue] & 1) == 0)
    {
      *buf = 0;
      MISCopyProvisioningProfile();
      if (*buf)
      {
        if (MISProvisioningProfileHasPPQExemption(*buf))
        {
          CFRelease(*buf);
          v40 = sub_1000032A4(v39);
          [v40 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

          v29 = v22[2](v22, 1);
          goto LABEL_9;
        }

        if (*buf)
        {
          CFRelease(*buf);
        }
      }
    }

    v41 = sub_10000DC28(&unk_100067728, dword_100067924);
    v74 = sub_10000DC28(&unk_1000676E0, dword_100067724);
    v42 = sub_10000DD10(v41, v18);
    if (v42 || (v42 = sub_10000DD10(v74, v20)))
    {
      v43 = sub_100006750(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "UPP or Team ID is exempt.", buf, 2u);
      }

      v45 = sub_1000032A4(v44);
      [v45 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

      v46 = v22[2](v22, 1);
    }

    else
    {
      if ([v17 length] == 20 || (v47 = objc_msgSend(v17, "length"), v47 == 32))
      {
        v48 = [NSMutableData dataWithLength:16];
        v49 = v48;
        if (v48)
        {
          v50 = v48;
          v51 = [v49 mutableBytes];
          if (v51 && !SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v51))
          {
            v73 = sub_1000048B0();
            if (v73)
            {
              v53 = sub_100004A18(v17, v18);
              v72 = v53;
              if (v53)
              {
                v54 = sub_1000032A4(v53);
                v69 = [v54 getOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

                v55 = [v69 isRejectedByWholeProfile];
                v70 = v55;
                v56 = sub_1000032A4(v55);
                v67 = [v56 countCDHashesRejectedByProfileNoThrowWithProfileUUID:v18];

                v71 = sub_100004B74(v49, v73, v18, v72, v20, v70, v67, v76, v19, v77, v78, v21, a8);
                if (v71)
                {
                  v79[0] = _NSConcreteStackBlock;
                  v79[1] = 3221225472;
                  v79[2] = sub_100004F94;
                  v79[3] = &unk_10005DB08;
                  v66 = v18;
                  v80 = v66;
                  v65 = v17;
                  v81 = v65;
                  v84 = a8;
                  v64 = v23;
                  v82 = v64;
                  v83 = v22;
                  v68 = objc_retainBlock(v79);
                  v57 = sub_100007548(v71, 0, v68);
                  if (v57)
                  {
                    v32 = 1;
                  }

                  else
                  {
                    v61 = sub_100006750(v57);
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Could not perform authorization attempt", buf, 2u);
                    }

                    v63 = sub_1000032A4(v62);
                    [v63 recordIndeterminateEntryNoThrowWithProfileUUID:v66 cdHash:v65 onConflictDoNothing:a8 != 0];

                    v32 = v64[2]();
                  }
                }

                else
                {
                  v60 = sub_100006750(0);
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    sub_100040254();
                  }

                  v32 = v23[2](v23);
                }
              }

              else
              {
                v59 = sub_100006750(0);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  sub_100040288();
                }

                v32 = v23[2](v23);
              }
            }

            else
            {
              v58 = sub_100006750(0);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                sub_1000402BC();
              }

              v32 = v23[2](v23);
            }

            goto LABEL_33;
          }
        }

        v52 = sub_100006750(v48);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_1000402F0();
        }
      }

      else
      {
        v52 = sub_100006750(v47);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_100040220();
        }
      }

      v46 = v23[2](v23);
    }

    v32 = v46;
LABEL_33:

    goto LABEL_10;
  }

  v37 = [v35 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_21;
  }

  v38 = (~[v37 intValue] & 0x21) == 0;

  if (!v38)
  {
    goto LABEL_21;
  }

LABEL_8:
  v31 = sub_1000032A4(v30);
  [v31 deleteOnlineAuthEntryNoThrowWithProfileUUID:v18 cdHash:v17];

  v29 = v22[2](v22, 1);
LABEL_9:
  v32 = v29;
LABEL_10:

  return v32;
}

id sub_1000048B0()
{
  v0 = sub_100011F44();
  v1 = v0;
  if (!v0)
  {
    v13 = sub_100006750(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100040410();
    }

    goto LABEL_14;
  }

  v2 = [(__CFString *)v0 lengthOfBytesUsingEncoding:4];
  v3 = (v2 + 15) & 0xFFFFFFF0;
  v4 = sub_100012118([(__CFString *)v1 UTF8String], v2, v3);
  if (!v4)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_1000120C0(v3);
  if (!v6)
  {
    free(v5);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_100042D2C();
  v9 = v8;
  if (!v8)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_19;
  }

  v10 = sub_100012170(v8, v5, v7, v3);
  if (v10)
  {
    v11 = sub_100006750(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004039C();
    }

    goto LABEL_9;
  }

  v12 = [NSData dataWithBytes:v7 length:v2];
LABEL_19:
  free(v5);
  free(v7);
  if (v9)
  {
    j__IOServiceClose(v9);
  }

LABEL_15:

  return v12;
}

id sub_100004A18(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[NSMutableData alloc] initWithData:v4];

  if (v5)
  {
    v6 = [v3 UTF8String];
    if (v6)
    {
      [v5 appendBytes:v6 length:{objc_msgSend(v3, "lengthOfBytesUsingEncoding:", 4)}];
      ccsha256_di();
      [v5 length];
      [v5 bytes];
      ccdigest();
      v7 = [[NSData alloc] initWithBytes:v10 length:32];
      goto LABEL_8;
    }

    v8 = sub_100006750(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100040444();
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

id sub_100004B74(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, unsigned int a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13)
{
  v48 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v47 = a5;
  v49 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = objc_alloc_init(NSMutableDictionary);
  v45 = v23;
  v46 = v22;
  if (v25)
  {
    v26 = [v48 base64EncodedStringWithOptions:0];
    [v25 setObject:v26 forKey:@"nonce"];

    [v25 setObject:@"INSTALL_FINE_GRAINED" forKey:@"action"];
    v27 = [v18 base64EncodedStringWithOptions:0];
    [v25 setObject:v27 forKey:@"deviceID"];

    [v25 setObject:v19 forKey:@"profileID"];
    v28 = [v20 base64EncodedStringWithOptions:0];
    [v25 setObject:v28 forKey:@"appID"];

    v29 = [NSNumber numberWithLong:a13];
    [v25 setObject:v29 forKey:@"checkType"];

    [v25 setObject:v22 forKey:@"cdVersion"];
    [v25 setObject:v23 forKey:@"signingTime"];
    v30 = v48;
    v31 = v47;
    if (v24)
    {
      v32 = sub_10001186C(v24, v20);
      v33 = v32;
      if (v32 && [v32 count])
      {
        [v25 setObject:v33 forKey:@"appIdentity"];
      }
    }

    if (v49)
    {
      [v25 setObject:v49 forKey:@"universalProfile"];
    }

    if (v21)
    {
      [v25 setObject:v21 forKey:@"localProfile"];
    }

    if ([v47 isEqual:&stru_1000603A0])
    {
      v34 = v21;
      [v25 setObject:&stru_1000603A0 forKey:@"teamID"];
LABEL_15:
      v39 = [NSNumber numberWithBool:a6];
      [v25 setObject:v39 forKey:@"previousRejected"];

      v40 = [NSNumber numberWithInt:a7];
      [v25 setObject:v40 forKey:@"rejectedApps"];

      v41 = v25;
      v21 = v34;
      goto LABEL_18;
    }

    v35 = [v47 dataUsingEncoding:4];
    ccsha256_di();
    [v35 length];
    [v35 bytes];
    ccdigest();
    v36 = [NSData dataWithBytes:v50 length:32];
    if (v36)
    {
      v37 = v36;
      v34 = v21;
      v38 = [v36 base64EncodedStringWithOptions:0];
      [v25 setObject:v38 forKey:@"teamID"];

      v31 = v47;
      v30 = v48;
      goto LABEL_15;
    }
  }

  v41 = 0;
  v31 = v47;
  v30 = v48;
LABEL_18:

  return v41;
}

void sub_100004F94(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000032A4(v3);
    v6 = [v4 valueForKey:@"actions"];
    v7 = a1 + 5;
    v8 = sub_100011FEC(a1[5]);
    v9 = [v6 containsObject:@"AUTHORIZED"];
    if (v9)
    {
      v10 = sub_100006750(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[4];
        *buf = 138543618;
        v60 = v8;
        v61 = 2114;
        v62 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Authorized: %{public}@, %{public}@", buf, 0x16u);
      }

      v12 = j__TMGetKernelMonotonicClock();
      v13 = [v4 valueForKey:@"validity"];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 intValue];
      }

      else
      {
        v15 = 33;
      }

      v38 = a1[4];
      v39 = a1[5];
      v58 = 0;
      [v5 authorizeEntryWithProfileUUID:v38 cdHash:v39 gracePeriod:v15 currentMonotonicTime:v12 currentResetCount:j__TMGetRTCResetCount() error:&v58];
      v40 = v58;
      if (v40)
      {
        v25 = v40;
        v41 = sub_100006750(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v52 = a1[4];
          v53 = a1[5];
          *buf = 138544130;
          v60 = v52;
          v61 = 2114;
          v62 = v53;
          v63 = 1024;
          LODWORD(v64[0]) = v15;
          WORD2(v64[0]) = 2114;
          *(v64 + 6) = v25;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Error authorizing entry for %{public}@, %{public}@, %d, %{public}@", buf, 0x26u);
        }

        (*(a1[6] + 16))();
        goto LABEL_42;
      }

LABEL_39:
      v47 = [v4 valueForKey:@"validity"];
      v48 = v47;
      if (v47)
      {
        [v5 setGracePeriodNoThrowWithProfileUUID:a1[4] gracePeriod:{objc_msgSend(v47, "intValue")}];
      }

      (*(a1[7] + 16))();

      v25 = 0;
      goto LABEL_42;
    }

    v19 = [v6 containsObject:@"REJECT_APP_FOR_PROFILE"];
    if (v19)
    {
      v20 = sub_100006750(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a1[4];
        *buf = 138543618;
        v60 = v8;
        v61 = 2114;
        v62 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rejected app/profile combination: %{public}@, %{public}@", buf, 0x16u);
      }

      v22 = a1[4];
      v23 = a1[5];
      v57 = 0;
      [v5 rejectEntryWithProfileUUID:v22 cdHash:v23 isRejectedByWholeProfile:0 error:&v57];
      v24 = v57;
      if (!v24)
      {
        goto LABEL_39;
      }

      v25 = v24;
      v26 = sub_100006750(v24);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v27 = a1[4];
      v28 = a1[5];
      *buf = 138543874;
      v60 = v27;
      v61 = 2114;
      v62 = v28;
      v63 = 2114;
      v64[0] = v25;
      v29 = "Error rejecting entry for %{public}@, %{public}@, %{public}@";
    }

    else
    {
      v30 = [v6 containsObject:@"REJECT_APP_AND_PROFILE"];
      if (!v30)
      {
        v42 = [v6 containsObject:@"REJECT_PROFILE"];
        if (!v42)
        {
          [v5 recordIndeterminateEntryNoThrowWithProfileUUID:a1[4] cdHash:a1[5] onConflictDoNothing:a1[8] != 0];
          goto LABEL_39;
        }

        v43 = sub_100006750(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = a1[4];
          *buf = 138543618;
          v60 = v8;
          v61 = 2114;
          v62 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Permanently rejected profile: %{public}@, %{public}@", buf, 0x16u);
        }

        v45 = a1[4];
        v55 = 0;
        [v5 banProfileUUID:v45 error:&v55];
        v46 = v55;
        if (!v46)
        {
          v49 = *v7;
          v54 = 0;
          [v5 banCDHash:v49 error:&v54];
          v50 = v54;
          if (!v50)
          {
            [v5 deleteOnlineAuthEntryNoThrowWithProfileUUID:a1[4] cdHash:*v7];
            goto LABEL_39;
          }

          v25 = v50;
          v51 = sub_100006750(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_1000404E4();
          }

LABEL_37:
          (*(a1[6] + 16))();
LABEL_42:

          goto LABEL_43;
        }

        v25 = v46;
        v26 = sub_100006750(v46);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100040478();
        }

LABEL_36:

        goto LABEL_37;
      }

      v31 = sub_100006750(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = a1[4];
        *buf = 138543618;
        v60 = v8;
        v61 = 2114;
        v62 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Rejected profile: %{public}@, %{public}@", buf, 0x16u);
      }

      v33 = a1[4];
      v34 = a1[5];
      v56 = 0;
      [v5 rejectEntryWithProfileUUID:v33 cdHash:v34 isRejectedByWholeProfile:1 error:&v56];
      v35 = v56;
      if (!v35)
      {
        goto LABEL_39;
      }

      v25 = v35;
      v26 = sub_100006750(v35);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v36 = a1[4];
      v37 = a1[5];
      *buf = 138543874;
      v60 = v36;
      v61 = 2114;
      v62 = v37;
      v63 = 2114;
      v64[0] = v25;
      v29 = "Error rejecting profile for %{public}@, %{public}@, %{public}@";
    }

    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v29, buf, 0x20u);
    goto LABEL_36;
  }

  v16 = sub_100006750(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not receive a valid response.", buf, 2u);
  }

  v18 = sub_1000032A4(v17);
  [v18 recordIndeterminateEntryNoThrowWithProfileUUID:a1[4] cdHash:a1[5] onConflictDoNothing:a1[8] != 0];

  (*(a1[6] + 16))();
LABEL_43:
}

void sub_100005618(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_error)
  {
    if (v4 == &_xpc_error_connection_invalid)
    {
      v6 = sub_100006750(type);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v13 = "connection is now invalid.";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v13, buf, 2u);
      }
    }

    else
    {
      if (v4 != &_xpc_error_termination_imminent)
      {
        goto LABEL_7;
      }

      v6 = sub_100006750(type);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v13 = "termination imminent, canceling connection.";
        goto LABEL_25;
      }
    }

LABEL_26:

    xpc_connection_cancel(v3);
    v8 = 0;
    goto LABEL_27;
  }

  if (type != &_xpc_type_dictionary)
  {
    v6 = sub_100006750(type);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100040550();
    }

    goto LABEL_26;
  }

LABEL_7:
  reply = xpc_dictionary_create_reply(v4);
  if (!reply)
  {
    sub_100040620();
  }

  v8 = reply;
  string = xpc_dictionary_get_string(v4, "type");
  if (!string)
  {
    v12 = sub_100006750(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000405EC();
    }

LABEL_18:

    xpc_connection_cancel(v3);
    goto LABEL_27;
  }

  v10 = string;
  if (!strncmp(string, "ping", 4uLL))
  {
    if (sub_100003400(v3, v8, "com.apple.private.mis.online_auth_agent"))
    {
      v14 = v3;
      v8 = v8;
      xpc_dictionary_set_int64(v8, "resu", 1);
      xpc_dictionary_set_string(v8, "pong", "pong!");
      xpc_connection_send_message(v14, v8);
    }
  }

  else if (!strncmp(v10, "auth", 4uLL))
  {
    if (sub_100003400(v3, v8, "com.apple.private.mis.online_auth_agent"))
    {
      v15 = v3;
      v16 = v4;
      *buf = _NSConcreteStackBlock;
      v42 = 3221225472;
      v43 = sub_1000065E0;
      v44 = &unk_10005DB90;
      v8 = v8;
      v45 = v8;
      v46 = v15;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100006620;
      v39[3] = &unk_10005DBB8;
      v17 = objc_retainBlock(buf);
      v40 = v17;
      v18 = objc_retainBlock(v39);
      length = 0;
      data = xpc_dictionary_get_data(v16, "cdha", &length);
      v20 = xpc_dictionary_get_string(v16, "uuid");
      v21 = xpc_dictionary_get_string(v16, "team");
      v33 = xpc_dictionary_get_string(v16, "apppath");
      v22 = xpc_dictionary_get_value(v16, "univ");
      v37 = xpc_dictionary_get_value(v16, "locl");
      v36 = xpc_dictionary_get_value(v16, "cdvr");
      v23 = xpc_dictionary_get_value(v16, "sgnt");
      xint = v23;
      if (data && v20 && v21)
      {
        v34 = [NSData dataWithBytes:data length:length];
        v32 = [NSString stringWithUTF8String:v20];
        if (v22)
        {
          v31 = [NSNumber numberWithBool:xpc_BOOL_get_value(v22)];
        }

        else
        {
          v31 = 0;
        }

        if (v37)
        {
          v30 = [NSNumber numberWithBool:xpc_BOOL_get_value(v37)];
        }

        else
        {
          v30 = 0;
        }

        if (v36)
        {
          v29 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v36)];
        }

        else
        {
          v29 = &off_100061398;
        }

        if (xint)
        {
          v28 = [NSNumber numberWithLongLong:xpc_int64_get_value(xint)];
        }

        else
        {
          v28 = &off_100061398;
        }

        v25 = [NSString stringWithUTF8String:v21];
        if (v33)
        {
          v26 = [NSString stringWithUTF8String:?];
        }

        else
        {
          v26 = 0;
        }

        int64 = xpc_dictionary_get_int64(v16, "ckty");
        sub_10000400C(v34, v32, v31, v30, v25, v29, v28, int64, v26, v17, v18);
      }

      else
      {
        v24 = sub_100006750(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000405B8();
        }

        (v18[2])(v18);
      }
    }
  }

  else if (!strncmp(v10, "blov", 4uLL))
  {
    if (sub_100003400(v3, v8, "com.apple.private.mis.trust.set"))
    {
      sub_100005D18(v3, v4, v8);
    }
  }

  else
  {
    if (strncmp(v10, "lwov", 4uLL))
    {
      v11 = strncmp(v10, "chlw", 4uLL);
      if (!v11)
      {
        sub_100006118(v3, v4, v8);
        goto LABEL_27;
      }

      v12 = sub_100006750(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100040584();
      }

      goto LABEL_18;
    }

    if (sub_100003400(v3, v8, "com.apple.private.mis.trust.set"))
    {
      sub_100005F34(v3, v4, v8);
    }
  }

LABEL_27:
}

void sub_100005D18(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000664C;
  v21[3] = &unk_10005DBE0;
  v6 = a3;
  v22 = v6;
  v7 = v5;
  v23 = v7;
  v8 = a2;
  v9 = objc_retainBlock(v21);
  length = 0;
  data = xpc_dictionary_get_data(v8, "cdha", &length);
  uint64 = xpc_dictionary_get_uint64(v8, "haty");
  v11 = xpc_dictionary_get_BOOL(v8, "ovrr");

  if (data)
  {
    v13 = [NSMutableData alloc];
    v14 = [v13 initWithBytes:data length:length];
    v15 = v14;
    if (v14)
    {
      [(__CFData *)v14 appendBytes:&uint64 length:4];
      v16 = sub_100011FEC(v15);
      if (v11)
      {
        sub_10000DDE0(@"UserOverriddenCdHashes.plist", v16);
      }

      else
      {
        sub_10000E190(@"UserOverriddenCdHashes.plist", v16);
      }

      xpc_dictionary_set_int64(v6, "resu", 1024);
      xpc_connection_send_message(v7, v6);
    }

    else
    {
      v18 = sub_100006750(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004064C();
      }

      (v9[2])(v9);
    }
  }

  else
  {
    v17 = sub_100006750(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100040680();
    }

    (v9[2])(v9);
  }
}

void sub_100005F34(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000668C;
  v19[3] = &unk_10005DBE0;
  v6 = a3;
  v20 = v6;
  v7 = v5;
  v21 = v7;
  v8 = a2;
  v9 = objc_retainBlock(v19);
  uint64 = xpc_dictionary_get_uint64(v8, "lwid");
  v11 = xpc_dictionary_get_BOOL(v8, "ovrr");

  if (v11)
  {
    v12 = notify_post("com.apple.mis.warning.override");
    if (v12)
    {
      v13 = sub_100006750(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000406B4();
      }
    }
  }

  v14 = sub_100003380(v12);
  v18 = 0;
  [v14 setUserOverride:v11 forID:uint64 error:&v18];
  v15 = v18;
  v16 = v15;
  if (v15)
  {
    v17 = sub_100006750(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100040728();
    }

    (v9[2])(v9);
  }

  else
  {
    xpc_dictionary_set_int64(v6, "resu", 1024);
    xpc_connection_send_message(v7, v6);
  }
}

void sub_100006118(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000066CC;
  v24[3] = &unk_10005DBE0;
  v7 = a3;
  v25 = v7;
  v8 = v5;
  v26 = v8;
  v9 = objc_retainBlock(v24);
  length = 0;
  data = xpc_dictionary_get_data(v6, "cdhd", &length);
  if (data && length)
  {
    v11 = [NSData dataWithBytes:data length:?];
    int64 = xpc_dictionary_get_int64(v6, "cdht");
    v13 = sub_100006750(int64);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v28 = int64;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "XPC: checking launch warning data for: %llu, %{public}@", buf, 0x16u);
    }

    v15 = sub_100003380(v14);
    v22 = 0;
    v16 = [v15 lookupLaunchWarningData:v11 cdhashType:int64 error:&v22];
    v17 = v22;
    v18 = sub_100006750(v17);
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = [v16 length];
        *buf = 138543618;
        v28 = v16;
        v29 = 2048;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "XPC: launch warning data response: %{public}@, %lu", buf, 0x16u);
      }

      xpc_dictionary_set_data(v7, "warndata", [v16 bytes], objc_msgSend(v16, "length"));
      xpc_dictionary_set_int64(v7, "resu", 0);
      xpc_connection_send_message(v8, v7);
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004079C();
      }

      (v9[2])(v9);
    }
  }

  else
  {
    v21 = sub_100006750(data);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100040810();
    }

    (v9[2])(v9);
  }
}

void *sub_100006444(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100067968)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000656C;
    v4[4] = &unk_10005DB68;
    v4[5] = v4;
    v5 = off_10005DB50;
    v6 = 0;
    qword_100067968 = _sl_dlopen();
  }

  v2 = qword_100067968;
  if (!qword_100067968)
  {
    sub_100040844(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MAECopyActivationRecordWithError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100067960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000656C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100067968 = result;
  return result;
}

uint64_t sub_1000065E0(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", value);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 1;
}

uint64_t sub_10000664C(uint64_t a1)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", 4);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 0;
}

uint64_t sub_10000668C(uint64_t a1)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", 4);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 0;
}

uint64_t sub_1000066CC(uint64_t a1)
{
  xpc_dictionary_set_int64(*(a1 + 32), "resu", 4);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  return 0;
}

void sub_100006730(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100006750(uint64_t a1)
{
  if (qword_100067978 != -1)
  {
    sub_1000408C4();
  }

  if (qword_100067970)
  {
    v2 = qword_100067970;
  }

  else
  {
    v2 = &_os_log_default;
  }

  return v2;
}

void sub_1000067A4(id a1)
{
  qword_100067970 = os_log_create("com.apple.mis", "mis");

  _objc_release_x1();
}

void sub_1000067E8(uint64_t a1)
{
  v24 = 0;
  *v33 = 0x600000001;
  v23 = 4;
  v1 = sub_100006750(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "The reaper woke up.", buf, 2u);
  }

  *buf = 0;
  v2 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v4 = MatchingService;
  if (MatchingService)
  {
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, buf);
    if (v5)
    {
      v6 = sub_100006750(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000408D8();
      }
    }

    else
    {
      v7 = IOConnectCallMethod(*buf, 4u, 0, 0, 0, 0, 0, 0, 0, 0);
      if (!v7)
      {
        goto LABEL_13;
      }

      v6 = sub_100006750(v7);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10004094C();
      }
    }
  }

  else
  {
    v6 = sub_100006750(MatchingService);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000409C0();
    }
  }

LABEL_13:
  if (*buf)
  {
    IOServiceClose(*buf);
  }

  if (v4)
  {
    IOObjectRelease(v4);
  }

  v8 = sysctl(v33, 2u, &v24, &v23, 0, 0);
  v9 = v8;
  v10 = sub_100006750(v8);
  v11 = v10;
  if (v9 == -1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100040A40();
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v28 = v24;
    v29 = 2048;
    v30 = 4;
    v31 = 2048;
    v32 = 4 * v24;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "pid space %d*%lu = %lu", buf, 0x1Cu);
  }

  v12 = malloc_type_malloc(4 * v24, 0x100004052888210uLL);
  if (!v12)
  {
    v11 = sub_100006750(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100040A00();
    }

LABEL_36:

    return;
  }

  v13 = v12;
  v14 = proc_listallpids(v12, 4 * v24);
  if (v14 >= 1)
  {
    v15 = v14;
    v16 = v13;
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = csops();
      if ((v19 & 0x80000000) != 0)
      {
        v20 = sub_100006750(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v25 = 67109120;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "reaper could not get cdhash for pid %d", v25, 8u);
        }
      }

      else
      {
        v20 = [NSData dataWithBytes:buf length:20];
        v21 = MISQueryBlacklistForCdHash();
        if (v21)
        {
          v22 = sub_100006750(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 67109120;
            v26 = v17;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "reaping process %d", v25, 8u);
          }

          kill(v17, 9);
        }
      }

      --v15;
    }

    while (v15);
  }

  free(v13);
}

uint64_t MISProvisioningProfileIsAppleInternalProfile(uint64_t a1)
{
  v2 = MISProvisioningProfileGetTeamIdentifier(a1);
  if ([v2 caseInsensitiveCompare:@"243LU875E5"])
  {
    v3 = sub_100006CC4(a1, @"AppleInternalProfile");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

const void *MISProvisioningProfileGetTeamIdentifier(uint64_t a1)
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v2, 0);
}

uint64_t sub_100006CC4(uint64_t a1, uint64_t a2)
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v3);
}

BOOL MISProvisioningProfileHasPPQExemption(uint64_t a1)
{
  if (sub_100006CC4(a1, @"LocalProvision"))
  {
    return 0;
  }

  if (sub_100006CC4(a1, @"ProvisionsAllDevices"))
  {
    v3 = MISProfileGetValue();
    v4 = v3;
    v2 = v3 && [v3 containsObject:@"InternalBuild"] && (v5 = sub_100006E10(a1)) != 0 && CFBooleanGetValue(v5) == 0;
  }

  else
  {
    v6 = sub_100006E10(a1);
    return !v6 || CFBooleanGetValue(v6) == 0;
  }

  return v2;
}

const void *sub_100006E10(uint64_t a1)
{
  Value = MISProfileGetValue();
  v2 = Value;
  if (Value)
  {
    v3 = CFGetTypeID(Value);
    TypeID = CFBooleanGetTypeID();
    if (v3 != TypeID)
    {
      v5 = sub_100006750(TypeID);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Encountered a non-BOOLean value for 'PPQCheck'.", v7, 2u);
      }

      return 0;
    }
  }

  return v2;
}

void *MISProvisioningProfileGetDeveloperCertificatesHashes(void *a1)
{
  v1 = [a1 certs];

  return v1;
}

uint64_t MISXMLProvisioningProfileGetDeveloperCertificates(uint64_t a1)
{
  if (MISProfileIsDEREncoded())
  {
    return 0;
  }

  return MISProfileGetValue();
}

void *MISProvisioningProfileGetEntitlements(void *a1)
{
  v1 = [a1 entitlements];

  return v1;
}

uint64_t MISProvisioningProfileIsForBetaDeployment(void *a1)
{
  v1 = [a1 entitlements];

  if (!v1)
  {
    return 0;
  }

  v2 = CFGetTypeID(v1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return _MISEntitlementDictionaryAllowsEntitlementValue(v1, @"beta-reports-active", kCFBooleanTrue);
}

void sub_100007444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100007494(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_1000074F4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

BOOL sub_100007548(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (a2 < 3)
  {
    v69 = 0;
    v10 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v69];
    v11 = v69;
    v8 = v11;
    if (!v10)
    {
      v27 = v11 == 0;
      oslog = sub_100006750(v11);
      v28 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        if (v28)
        {
          sub_100040F34();
        }
      }

      else if (v28)
      {
        sub_100040EA8(v8);
      }

      v9 = 0;
      goto LABEL_63;
    }

    v12 = sub_100006750(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [[NSString alloc] initWithData:v10 encoding:4];
      v14 = v13;
      v15 = [v13 UTF8String];
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Full JSON message to send: %{public}s", buf, 0xCu);
    }

    oslog = [v5 objectForKey:@"appID"];
    v62 = [v5 objectForKey:@"profileID"];
    v16 = sub_100006750(v62);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = oslog;
      *&buf[12] = 2114;
      *&buf[14] = v62;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Signing JSON message for %{public}@, %{public}@", buf, 0x16u);
    }

    v17 = v10;
    v60 = v17;
    if (!&_DeviceIdentityIssueClientCertificateWithCompletion)
    {
      v19 = sub_100006750(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "DeviceIdentityIssueClientCertificate not available", buf, 2u);
      }

      v29 = 0;
LABEL_34:

      if (!v29)
      {
        v9 = 0;
LABEL_62:

LABEL_63:
        goto LABEL_64;
      }

      v36 = [NSURL URLWithString:@"https://ppq.apple.com/v2/authorization"];
      v38 = sub_100003F60(v36, v37);
      if (v38)
      {
        v39 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mis"];
        v40 = [v39 stringForKey:@"serverUrl"];

        if (v40)
        {
          v42 = [NSURL URLWithString:v40];

          v36 = v42;
        }

        v43 = sub_100006750(v41);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "ppq Server URL is %{public}@", buf, 0xCu);
        }
      }

      if (!v36)
      {
        v45 = sub_100006750(v38);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_100040E74();
        }

        v9 = 0;
        goto LABEL_61;
      }

      v44 = [NSMutableURLRequest requestWithURL:v36];
      v45 = v44;
      if (v44)
      {
        [v44 setHTTPMethod:@"POST"];
        [v45 addValue:@"8bit" forHTTPHeaderField:@"Content-Transfer-Encoding"];
        [v45 addValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
        v46 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        v47 = v46;
        if (v46)
        {
          [v46 setTimeoutIntervalForRequest:10.0];
          [v47 setTimeoutIntervalForResource:10.0];
          v59 = objc_alloc_init(OnlineAuthAgentURLSessionDelegate);
          v61 = [NSURLSession sessionWithConfiguration:v47 delegate:v59 delegateQueue:0];
          if (v61)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v85 = sub_1000080DC;
            v86 = sub_1000080EC;
            v87 = os_transaction_create();
            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_1000080F4;
            v64[3] = &unk_10005DC78;
            v68 = a2;
            v65 = v5;
            v66 = v7;
            v67 = buf;
            cfa = objc_retainBlock(v64);
            v48 = sub_100006750(cfa);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *v91 = 138543618;
              *&v91[4] = oslog;
              *&v91[12] = 2114;
              *&v91[14] = v62;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Sending request for %{public}@, %{public}@", v91, 0x16u);
            }

            v49 = [v61 uploadTaskWithRequest:v45 fromData:v29 completionHandler:cfa];
            [v61 finishTasksAndInvalidate];
            v9 = v49 != 0;
            if (v49)
            {
              [v49 resume];
            }

            else
            {
              v50 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = 0;
            }

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v47 = sub_100006750(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100040E40();
        }
      }

      v9 = 0;
LABEL_60:

LABEL_61:
      goto LABEL_62;
    }

    v18 = arc4random_uniform(0x2A300u);
    v19 = objc_alloc_init(NSMutableData);
    v20 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, 0);
    v90[0] = kMAOptionsBAAKeychainLabel;
    v90[1] = kMAOptionsBAAKeychainAccessGroup;
    *v91 = @"com.apple.online-auth.ppq-identity";
    *&v91[8] = @"online-auth-agent";
    *&v91[16] = &off_1000613B0;
    v90[2] = kMAOptionsBAANetworkTimeoutInterval;
    v90[3] = kMAOptionsBAAValidity;
    v21 = [NSNumber numberWithUnsignedInt:v18 + 172800];
    v92 = v21;
    v90[4] = kMAOptionsBAASCRTAttestation;
    v90[5] = kMAOptionsBAAAccessControls;
    v93 = &__kCFBooleanFalse;
    v94 = v20;
    v58 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:6];

    v22 = dispatch_semaphore_create(0);
    v80 = 0;
    v81[0] = &v80;
    v81[1] = 0x3032000000;
    v81[2] = sub_1000080DC;
    v81[3] = sub_1000080EC;
    v82 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_1000080DC;
    v74 = sub_1000080EC;
    v75 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000861C;
    v85 = &unk_10005DCA0;
    v87 = &v80;
    v88 = &v76;
    v89 = &v70;
    v23 = v22;
    v86 = v23;
    DeviceIdentityIssueClientCertificateWithCompletion();
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    CFRelease(v20);
    v25 = v77[3];
    if (*(v81[0] + 40))
    {
      v26 = sub_100006750(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100040CA0(v81, v26);
      }
    }

    else if (v25 && (v24 = v71[5]) != 0)
    {
      v30 = [v24 objectAtIndexedSubscript:0];
      cf = SecIdentityCreate();

      if (cf)
      {
        v26 = +[NSMutableDictionary dictionary];
        v53 = [v71[5] objectAtIndexedSubscript:1];
        v83 = v53;
        v32 = [NSArray arrayWithObjects:&v83 count:1];
        [v26 setObject:v32 forKeyedSubscript:kSecCMSAdditionalCerts];

        v33 = SecCMSCreateSignedData();
        if (!v33)
        {
          if (sub_100003F60(v33, v34))
          {
            v55 = [v19 base64EncodedStringWithOptions:33];
            v52 = sub_100006750(v55);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              sub_100040D98();
            }

            [v55 enumerateLinesUsingBlock:&stru_10005DCE0];
          }

          CFRelease(cf);
          v29 = v19;
          goto LABEL_33;
        }

        v54 = v33;
        v35 = sub_100006750(v33);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100040D20(v54, v35);
        }

        CFRelease(cf);
      }

      else
      {
        v26 = sub_100006750(v31);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100040DD8();
        }
      }
    }

    else
    {
      v26 = sub_100006750(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100040E0C();
      }
    }

    v29 = 0;
LABEL_33:

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v80, 8);

    goto LABEL_34;
  }

  v8 = sub_100006750(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Maximum number of attempts (%d) reached, bailing out.", buf, 8u);
  }

  v9 = 0;
LABEL_64:

  return v9;
}

void sub_100008070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000080DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000080F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v44 = 0;
  v10 = sub_100006750(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Response received", buf, 2u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (isKindOfClass = [v8 statusCode], isKindOfClass == 200))
  {
    v12 = 0;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_16:
    v25 = sub_100006750(isKindOfClass);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Server returned no data", buf, 2u);
    }

    goto LABEL_20;
  }

  v23 = isKindOfClass;
  v24 = sub_100006750(isKindOfClass);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v46[0] = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Server returned HTTP status code %ld", buf, 0xCu);
  }

  v12 = 1;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_6:
  ApplePPQSigning = SecPolicyCreateApplePPQSigning();
  if (!ApplePPQSigning)
  {
    v25 = sub_100006750(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100040F68();
    }

LABEL_20:

    goto LABEL_21;
  }

  v14 = ApplePPQSigning;
  v15 = SecCMSVerifyCopyDataAndAttributes();
  if (v15)
  {
    v16 = v15;
    v17 = sub_100006750(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v46[0]) = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not verify the CMS blob, received error %d", buf, 8u);
    }

    v19 = sub_100006750(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [[NSString alloc] initWithData:v7 encoding:4];
      v21 = [v20 UTF8String];
      *buf = 136446210;
      v46[0] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "The server returned: %{public}s", buf, 0xCu);
    }

    CFRelease(v14);
    goto LABEL_21;
  }

  CFRelease(v14);
  if (v12)
  {
LABEL_21:
    v26 = sub_100006750(v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 56) + 1;
      *buf = 67109376;
      LODWORD(v46[0]) = v27;
      WORD2(v46[0]) = 1024;
      *(v46 + 6) = 3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Could not complete online authorization (attempt %d/%d).", buf, 0xEu);
    }

    if (v9)
    {
      v29 = sub_100006750(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100040F9C(v9);
      }
    }

    if (!sub_100007548(*(a1 + 32), *(a1 + 56) + 1, *(a1 + 40)))
    {
      (*(*(a1 + 40) + 16))();
    }

    v30 = *(*(a1 + 48) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = 0;
    goto LABEL_30;
  }

  v32 = v44;
  v33 = sub_100006750(v22);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [[NSString alloc] initWithData:v44 encoding:4];
    v35 = [v34 UTF8String];
    *buf = 136446210;
    v46[0] = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "The server returned: %{public}s", buf, 0xCu);
  }

  v43 = 0;
  v36 = [NSJSONSerialization JSONObjectWithData:v44 options:0 error:&v43];
  v37 = v43;
  v31 = v37;
  if (v36)
  {
    v38 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v37)
    {
      v39 = sub_100006750(v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v31 localizedDescription];
        *buf = 138543362;
        v46[0] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Could not convert JSON to Dictionary: %{public}@", buf, 0xCu);
      }
    }

    v38 = *(*(a1 + 40) + 16);
  }

  v38();
  v41 = *(*(a1 + 48) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = 0;

LABEL_30:
}

void sub_10000861C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v9 && [v9 count] == 2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000086DC(id a1, NSString *a2, BOOL *a3)
{
  v4 = a2;
  *a3 = 0;
  v5 = sub_100006750(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100041024(v4, v5);
  }
}

void sub_100008738(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_1000089C8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

uint64_t sub_100008A58(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_100008B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008BAC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000302C(a2, [v5 intValue]);

  *(*(*(a1 + 32) + 8) + 24) = MISProfileCreateWithData();
}

uint64_t sub_100008DB0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_100008E20(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_uuid"];
  v6 = sub_100002F74(a2, [v5 intValue]);

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isEqualToString:v6];
}

uint64_t sub_10000917C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_10000993C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  v6 = [*(a1 + 40) bytes];
  v7 = [*(a1 + 40) length];

  return sqlite3_bind_blob(a2, v5, v6, v7, 0);
}

uint64_t sub_1000099F0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@name");
  sqlite3_bind_text(a2, v6, [*(a1 + 48) UTF8String], -1, 0);
  v7 = sqlite3_bind_parameter_index(a2, "@expires");
  [*(a1 + 56) timeIntervalSince1970];
  sqlite3_bind_int64(a2, v7, v8);
  v9 = sqlite3_bind_parameter_index(a2, "@is_for_all_devices");
  sqlite3_bind_int(a2, v9, *(a1 + 72));
  v10 = sqlite3_bind_parameter_index(a2, "@is_apple_internal");
  sqlite3_bind_int(a2, v10, *(a1 + 73));
  v11 = sqlite3_bind_parameter_index(a2, "@is_local");
  sqlite3_bind_int(a2, v11, *(a1 + 74));
  v12 = sqlite3_bind_parameter_index(a2, "@is_beta");
  sqlite3_bind_int(a2, v12, *(a1 + 75));
  v13 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  sqlite3_bind_blob(a2, v13, [*(a1 + 64) bytes], objc_msgSend(*(a1 + 64), "length"), 0);
  v14 = sqlite3_bind_parameter_index(a2, "@is_der");
  v15 = *(a1 + 76);

  return sqlite3_bind_int(a2, v14, v15);
}

uint64_t sub_100009BE0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@leaf_pk");
  v6 = [*(a1 + 40) longLongValue];

  return sqlite3_bind_int64(a2, v5, v6);
}

void sub_100009C7C(void *a1, void *a2)
{
  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v5 = a2;
    v6 = [v4 Entitlements];
    LODWORD(v4) = [v6 insertEntitlement:v5 forProfile:a1[5]];

    *(*(a1[6] + 8) + 24) = v4;
  }
}

uint64_t sub_100009D10(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_100009FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100009FD8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

uint64_t sub_10000A054(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

void sub_10000A0D0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = [a3 objectForKeyedSubscript:@"pk"];
  v5 = sub_100002FEC(a2, [v8 intValue]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10000A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A7B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000A7D0(uint64_t a1)
{
  v2 = [*(a1 + 32) readSetting:@"databaseSchemaVersion"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v10 = sub_100006750(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MISQL: null version, potential erase or upgrade", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"1"];
    v11 = [*(a1 + 32) executeQuery:@"CREATE TABLE profiles(uuid TEXT NOT NULL PRIMARY KEY withBind:team_id TEXT NOT NULL withResults:{install_time TEXT DEFAULT CURRENT_TIMESTAMP, name TEXT NOT NULL, expires INTEGER, is_for_all_devices INTEGER, is_apple_internal INTEGER, is_local INTEGER, is_beta INTEGER, cms_blob BLOB NOT NULL)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v11;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v11);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000410E0(a1 + 48);
      }

      goto LABEL_73;
    }

    v12 = [*(a1 + 32) executeQuery:@"CREATE TABLE certificates(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:leaf BLOB UNIQUE NOT NULL)" withResults:{0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v12;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v12);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100041154(a1 + 48);
      }

      goto LABEL_73;
    }

    v14 = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX certificate_leaf_index ON certificates (leaf)" withBind:0 withResults:0];
    *(*(*(a1 + 48) + 8) + 24) = v14;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v14);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000411C8(a1 + 48);
      }

      goto LABEL_73;
    }

    v57 = [*(a1 + 32) executeQuery:@"CREATE TABLE certificate_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{leaf_pk INTEGER NOT NULL, UNIQUE(uuid, leaf_pk), CONSTRAINT fk_certificate_leaf  FOREIGN KEY (leaf_pk)  REFERENCES certificates(pk)  ON DELETE CASCADE, CONSTRAINT fk_cert_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v57;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v57);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004123C(a1 + 48);
      }

      goto LABEL_73;
    }

    v62 = [*(a1 + 32) executeQuery:@"CREATE TABLE entitlements_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{predicate TEXT NOT NULL, wildcard INTEGER NOT NULL, UNIQUE(uuid, predicate), CONSTRAINT fk_predicate_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v62;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v62);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000412B0(a1 + 48);
      }

      goto LABEL_73;
    }

    v88 = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX entitlements_cache_index ON entitlements_provisioning_cache (uuid withBind:predicate)" withResults:{0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v88;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v88);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100041324(a1 + 48);
      }

      goto LABEL_73;
    }

    v108 = *(*(a1 + 40) + 8);
    v109 = *(v108 + 40);
    *(v108 + 40) = @"1";

    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  v6 = [v5 isEqualToString:@"1"];
  if (v6)
  {
    v7 = sub_100006750(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MISQL: performing database migration 1 -> 2", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"2"];
    v8 = [*(a1 + 32) executeQuery:@"ALTER TABLE profiles ADD COLUMN is_der INTEGER DEFAULT (0)" withBind:0 withResults:0];
    *(*(*(a1 + 48) + 8) + 24) = v8;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100041398(a1 + 48);
      }

      goto LABEL_73;
    }

    v13 = [*(a1 + 32) executeQuery:@"CREATE TABLE xml_profiles_cache(uuid TEXT NOT NULL PRIMARY KEY withBind:cms_blob BLOB NOT NULL withResults:{CONSTRAINT fk_xml_profile_cache_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v13;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v13);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004140C(a1 + 48);
      }

      goto LABEL_73;
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = @"2";
  }

  v17 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"2"];
  if (v17)
  {
    v18 = sub_100006750(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "MISQL: performing database migration 2 -> 3", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"3"];
    [*(a1 + 32) findProfilesMatchingEntitlements:&off_1000613F0 withCertificate:0];
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v9 = v208 = 0u;
    v19 = [v9 countByEnumeratingWithState:&v205 objects:v218 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v206;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v206 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(*(&v205 + 1) + 8 * i);
          if (![v23 ProvisionsAllDevices] && !objc_msgSend(v23, "AppleInternal"))
          {
            v24 = *(a1 + 32);
            v204[0] = _NSConcreteStackBlock;
            v204[1] = 3221225472;
            v204[2] = sub_10000C0A0;
            v204[3] = &unk_10005D880;
            v204[4] = v23;
            v25 = [v24 executeQuery:@"UPDATE profiles SET is_beta = 1 WHERE uuid = @uuid" withBind:v204 withResults:0];
            *(*(*(a1 + 48) + 8) + 24) = v25;
            if (*(*(*(a1 + 48) + 8) + 24))
            {
              v31 = sub_100006750(v25);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_100041480(a1 + 48);
              }

              goto LABEL_73;
            }
          }
        }

        v20 = [v9 countByEnumeratingWithState:&v205 objects:v218 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = @"3";
  }

  v28 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"3"];
  if (v28)
  {
    v29 = sub_100006750(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "MISQL: performing database migration 3 -> 4", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"4"];
    v30 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS trusted_team_ids(team_id TEXT PRIMARY KEY withBind:signature BLOB)" withResults:{0, 0}];
    *(*(*(a1 + 48) + 8) + 24) = v30;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v30);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000414F4(a1 + 48);
      }

      goto LABEL_73;
    }

    v32 = *(*(a1 + 40) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = @"4";
  }

  v34 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"4"];
  if (v34)
  {
    v35 = sub_100006750(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "MISQL: performing database migration 4 -> 5", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"5"];
    v36 = objc_opt_new();
    v37 = *(a1 + 32);
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_10000C130;
    v202[3] = &unk_10005DDA8;
    v9 = v36;
    v203 = v9;
    v38 = [v37 executeQuery:@"SELECT team_id withBind:signature FROM trusted_team_ids" withResults:{0, v202}];
    *(*(*(a1 + 48) + 8) + 24) = v38;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v39 = sub_100006750(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100041568(a1 + 48);
      }

LABEL_71:

      v54 = v203;
      goto LABEL_72;
    }

    v155 = a1 + 48;
    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v39 = v9;
    v40 = [v39 countByEnumeratingWithState:&v198 objects:v217 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v199;
      while (2)
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v199 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v198 + 1) + 8 * j);
          v45 = *(a1 + 32);
          v197[0] = _NSConcreteStackBlock;
          v197[1] = 3221225472;
          v197[2] = sub_10000C1B0;
          v197[3] = &unk_10005D880;
          v197[4] = v44;
          v46 = [v45 executeQuery:@"UPDATE trusted_team_ids SET signature = NULL WHERE team_id = ?1" withBind:v197 withResults:0];
          *(*(*(a1 + 48) + 8) + 24) = v46;
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v53 = sub_100006750(v46);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_1000415DC(v155);
            }

            goto LABEL_71;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v198 objects:v217 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v47 = *(*(a1 + 40) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = @"5";
  }

  v49 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"5"];
  if (v49)
  {
    v50 = sub_100006750(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "MISQL: performing database migration 5 -> 6", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"6"];
    v51 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS team_id_info(team_id TEXT NOT NULL withBind:team_name TEXT NOT NULL withResults:{PRIMARY KEY (team_id))", 0, 0}];
    v52 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v51;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = sub_100006750(v51);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100041650(a1 + 48);
      }

      goto LABEL_73;
    }

    v58 = objc_opt_new();
    v59 = *(a1 + 32);
    v195[0] = _NSConcreteStackBlock;
    v195[1] = 3221225472;
    v195[2] = sub_10000C200;
    v195[3] = &unk_10005DDA8;
    v9 = v58;
    v196 = v9;
    v60 = [v59 executeQuery:@"SELECT profiles.team_id withBind:profiles.cms_blob withResults:{profiles.uuid FROM profiles", 0, v195}];
    *(*(*(a1 + 48) + 8) + 24) = v60;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v61 = sub_100006750(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1000416C4(a1 + 48);
      }

LABEL_107:

      v54 = v196;
      goto LABEL_72;
    }

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v61 = v9;
    v63 = [v61 countByEnumeratingWithState:&v191 objects:v216 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v192;
      while (2)
      {
        for (k = 0; k != v64; k = k + 1)
        {
          if (*v192 != v65)
          {
            objc_enumerationMutation(v61);
          }

          v67 = *(*(&v191 + 1) + 8 * k);
          v68 = [v61 objectForKeyedSubscript:v67];
          v69 = *(a1 + 32);
          v189[0] = _NSConcreteStackBlock;
          v189[1] = 3221225472;
          v189[2] = sub_10000C330;
          v189[3] = &unk_10005D8D0;
          v189[4] = v67;
          v70 = v68;
          v190 = v70;
          v71 = [v69 executeQuery:@"INSERT INTO team_id_info VALUES (@team_id withBind:@team_name)" withResults:{v189, 0}];
          *(*(*(a1 + 48) + 8) + 24) = v71;
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v83 = sub_100006750(v71);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              sub_100041738(v52);
            }

            goto LABEL_107;
          }
        }

        v64 = [v61 countByEnumeratingWithState:&v191 objects:v216 count:16];
        if (v64)
        {
          continue;
        }

        break;
      }
    }

    v72 = *(*(a1 + 40) + 8);
    v73 = *(v72 + 40);
    *(v72 + 40) = @"6";
  }

  v74 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"6"];
  if (!v74)
  {
    goto LABEL_130;
  }

  v75 = sub_100006750(v74);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "MISQL: performing database migration 6 -> 7", buf, 2u);
  }

  [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"7"];
  v76 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS signing_identities(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{signing_identity TEXT NOT NULL, UNIQUE(uuid, signing_identity), CONSTRAINT fk_signing_identity_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
  v77 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = v76;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = sub_100006750(v76);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000417AC(a1 + 48);
    }

    goto LABEL_73;
  }

  v187[0] = _NSConcreteStackBlock;
  v187[1] = 3221225472;
  v187[2] = sub_10000C3D8;
  v187[3] = &unk_10005DDD0;
  v9 = objc_opt_new();
  v188 = v9;
  v78 = objc_retainBlock(v187);
  v79 = *(a1 + 32);
  v185[0] = _NSConcreteStackBlock;
  v185[1] = 3221225472;
  v185[2] = sub_10000C6A4;
  v185[3] = &unk_10005DDF8;
  v80 = v78;
  v186 = v80;
  v81 = [v79 executeQuery:@"SELECT uuid withBind:cms_blob FROM profiles WHERE is_der = 0 AND (is_for_all_devices = 1 OR is_local = 1)" withResults:{0, v185}];
  *(*(*(a1 + 48) + 8) + 24) = v81;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v84 = *(a1 + 32);
    v183[0] = _NSConcreteStackBlock;
    v183[1] = 3221225472;
    v183[2] = sub_10000C74C;
    v183[3] = &unk_10005DDF8;
    v85 = v80;
    v184 = v85;
    v86 = [v84 executeQuery:@"SELECT xml_profiles_cache.uuid withBind:xml_profiles_cache.cms_blob FROM xml_profiles_cache LEFT JOIN profiles ON profiles.uuid = xml_profiles_cache.uuid WHERE profiles.is_for_all_devices = 1 OR profiles.is_local = 1" withResults:{0, v183}];
    *(*(*(a1 + 48) + 8) + 24) = v86;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v87 = sub_100006750(v86);
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        sub_100041894(v77);
      }

LABEL_146:

      goto LABEL_147;
    }

    v156 = v85;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v89 = v9;
    v149 = [v89 countByEnumeratingWithState:&v179 objects:v215 count:16];
    if (v149)
    {
      v90 = *v180;
      v153 = v89;
      v147 = *v180;
      do
      {
        v91 = 0;
        do
        {
          if (*v180 != v90)
          {
            objc_enumerationMutation(v89);
          }

          v151 = v91;
          v92 = *(*(&v179 + 1) + 8 * v91);
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v93 = [v89 objectForKeyedSubscript:v92];
          v94 = [v93 countByEnumeratingWithState:&v175 objects:v214 count:16];
          if (v94)
          {
            v95 = v94;
            v96 = *v176;
            while (2)
            {
              for (m = 0; m != v95; m = m + 1)
              {
                if (*v176 != v96)
                {
                  objc_enumerationMutation(v93);
                }

                v98 = *(*(&v175 + 1) + 8 * m);
                v99 = *(a1 + 32);
                v174[0] = _NSConcreteStackBlock;
                v174[1] = 3221225472;
                v174[2] = sub_10000C7F4;
                v174[3] = &unk_10005D8D0;
                v174[4] = v92;
                v174[5] = v98;
                v100 = [v99 executeQuery:@"INSERT OR IGNORE INTO signing_identities VALUES (NULL withBind:@uuid withResults:{@signing_identity)", v174, 0}];
                *(*(*(a1 + 48) + 8) + 24) = v100;
                if (*(*(*(a1 + 48) + 8) + 24))
                {
                  v110 = sub_100006750(v100);
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    sub_100041908(v77);
                  }

                  v87 = v153;
                  v85 = v156;
                  goto LABEL_146;
                }
              }

              v95 = [v93 countByEnumeratingWithState:&v175 objects:v214 count:16];
              if (v95)
              {
                continue;
              }

              break;
            }
          }

          v91 = v151 + 1;
          v89 = v153;
          v90 = v147;
        }

        while ((v151 + 1) != v149);
        v149 = [v153 countByEnumeratingWithState:&v179 objects:v215 count:16];
      }

      while (v149);
    }

    v101 = *(*(a1 + 40) + 8);
    v102 = *(v101 + 40);
    *(v101 + 40) = @"7";

LABEL_130:
    v103 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"7"];
    if (v103)
    {
      v104 = sub_100006750(v103);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_INFO, "MISQL: performing database migration 7 -> 8", buf, 2u);
      }

      [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"8"];
      v105 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS online_auth( uuid TEXT NOT NULL withBind:cdhash BLOB NOT NULL withResults:{grace_period INT NOT NULL, last_success_monotonic_time INT NOT NULL, last_success_reset_count INT NOT NULL, is_rejected INT NOT NULL DEFAULT (0), is_rejected_by_whole_profile INT NOT NULL DEFAULT (0), PRIMARY KEY (uuid, cdhash), CONSTRAINT fk_online_auth_profile_uuid    FOREIGN KEY (uuid)    REFERENCES profiles(uuid)    ON DELETE CASCADE)", 0, 0}];
      *(*(*(a1 + 48) + 8) + 24) = v105;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = sub_100006750(v105);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10004197C(a1 + 48);
        }

        goto LABEL_73;
      }

      v106 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_profile_uuids( uuid TEXT NOT NULL)" withBind:0 withResults:0];
      *(*(*(a1 + 48) + 8) + 24) = v106;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = sub_100006750(v106);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000419F0(a1 + 48);
        }

        goto LABEL_73;
      }

      v107 = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_cdhashes( cdhash BLOB NOT NULL)" withBind:0 withResults:0];
      *(*(*(a1 + 48) + 8) + 24) = v107;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v9 = sub_100006750(v107);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100041A64(a1 + 48);
        }

        goto LABEL_73;
      }

      v111 = *(*(a1 + 40) + 8);
      v112 = *(v111 + 40);
      *(v111 + 40) = @"8";
    }

    v113 = [*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"8"];
    if (!v113)
    {
      return 1;
    }

    v114 = sub_100006750(v113);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "MISQL: performing database migration 8 -> 9", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"9"];
    v115 = objc_opt_new();
    v116 = *(a1 + 32);
    v172[0] = _NSConcreteStackBlock;
    v172[1] = 3221225472;
    v172[2] = sub_10000C89C;
    v172[3] = &unk_10005DDA8;
    v9 = v115;
    v173 = v9;
    v117 = [v116 executeQuery:@"SELECT uuid withBind:predicate FROM entitlements_provisioning_cache WHERE predicate LIKE 'string%' || x'1f' || '*' AND wildcard = 1" withResults:{0, v172}];
    v118 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v117;
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v146 = a1 + 48;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v120 = v9;
      v121 = [v120 countByEnumeratingWithState:&v168 objects:v213 count:16];
      if (v121)
      {
        v122 = *v169;
        v148 = v120;
        v144 = *v169;
        do
        {
          v123 = 0;
          v145 = v121;
          do
          {
            if (*v169 != v122)
            {
              v124 = v123;
              objc_enumerationMutation(v120);
              v123 = v124;
            }

            v150 = v123;
            v125 = *(*(&v168 + 1) + 8 * v123);
            v164 = 0u;
            v165 = 0u;
            v166 = 0u;
            v167 = 0u;
            obj = [v120 objectForKeyedSubscript:v125];
            v154 = [obj countByEnumeratingWithState:&v164 objects:v212 count:16];
            if (v154)
            {
              v157 = *v165;
              do
              {
                for (n = 0; n != v154; n = n + 1)
                {
                  if (*v165 != v157)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v127 = *(*(&v164 + 1) + 8 * n);
                  v128 = [v127 rangeOfString:off_100066300];
                  if (v128 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v129 = [v127 substringFromIndex:v128];
                    v130 = [NSString stringWithFormat:@"BOOL%@", v129];
                    v211[0] = v130;
                    v152 = v129;
                    v131 = [NSString stringWithFormat:@"number%@", v129];
                    v211[1] = v131;
                    v132 = [NSArray arrayWithObjects:v211 count:2];

                    v162 = 0u;
                    v163 = 0u;
                    v160 = 0u;
                    v161 = 0u;
                    v133 = v132;
                    v134 = [v133 countByEnumeratingWithState:&v160 objects:v210 count:16];
                    if (v134)
                    {
                      v135 = v134;
                      v136 = *v161;
                      while (2)
                      {
                        for (ii = 0; ii != v135; ii = ii + 1)
                        {
                          if (*v161 != v136)
                          {
                            objc_enumerationMutation(v133);
                          }

                          v138 = *(*(&v160 + 1) + 8 * ii);
                          v139 = *(a1 + 32);
                          v159[0] = _NSConcreteStackBlock;
                          v159[1] = 3221225472;
                          v159[2] = sub_10000C970;
                          v159[3] = &unk_10005D8D0;
                          v159[4] = v125;
                          v159[5] = v138;
                          v140 = [v139 executeQuery:@"INSERT OR IGNORE INTO entitlements_provisioning_cache (uuid withBind:predicate withResults:{wildcard) VALUES (?1, ?2, 1)", v159, 0}];
                          *(*(*(a1 + 48) + 8) + 24) = v140;
                          if (*(*(*(a1 + 48) + 8) + 24))
                          {
                            v143 = sub_100006750(v140);
                            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                            {
                              sub_100041B4C(v146);
                            }

                            v119 = v148;
                            goto LABEL_184;
                          }
                        }

                        v135 = [v133 countByEnumeratingWithState:&v160 objects:v210 count:16];
                        if (v135)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }
                }

                v120 = v148;
                v154 = [obj countByEnumeratingWithState:&v164 objects:v212 count:16];
              }

              while (v154);
            }

            v123 = v150 + 1;
            v122 = v144;
          }

          while ((v150 + 1) != v145);
          v121 = [v120 countByEnumeratingWithState:&v168 objects:v213 count:16];
        }

        while (v121);
      }

      v141 = *(*(a1 + 40) + 8);
      v142 = *(v141 + 40);
      *(v141 + 40) = @"9";

      v55 = 1;
      v9 = v120;
      goto LABEL_74;
    }

    v119 = sub_100006750(v117);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      sub_100041AD8(v118);
    }

LABEL_184:

    v54 = v173;
    goto LABEL_72;
  }

  v82 = sub_100006750(v81);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    sub_100041820(v77);
  }

LABEL_147:
  v54 = v188;
LABEL_72:

LABEL_73:
  v55 = 0;
LABEL_74:

  return v55;
}

void sub_10000C0A0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v6 = [*(a1 + 32) UUID];
  v5 = v6;
  sqlite3_bind_text(a2, v4, [v6 UTF8String], -1, 0);
}

void sub_10000C130(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = sub_100002F74(a2, 0);
  v4 = sub_10000302C(a2, 1);
  if (![v4 length])
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t sub_10000C1B0(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_10000C200(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = sub_100002F74(a2, 0);
  v8 = [*(a1 + 32) objectForKey:v7];

  if (!v8)
  {
    v9 = sub_10000302C(a2, 1);
    v10 = sub_100002F74(a2, 2);
    v11 = MISProfileCreateWithData();
    if (v11)
    {
      v12 = v11;
      v13 = MISProvisioningProfileGetTeamName(v11);
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v7];
      CFRelease(v12);
    }

    else
    {
      v14 = sub_100006750(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100041BC0();
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_10000C330(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_10000C3D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = MISProfileCreateWithData();
    if (v8)
    {
      v9 = v8;
      v10 = MISXMLProvisioningProfileGetDeveloperCertificates(v8);
      CFRelease(v9);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = SecCertificateCreateWithData(0, *(*(&v23 + 1) + 8 * v15));
            if (v16)
            {
              v17 = v16;
              v18 = SecCertificateCopySubjectSummary(v16);
              CFRelease(v17);
              if (v18)
              {
                v20 = [*(a1 + 32) objectForKeyedSubscript:v5];

                if (!v20)
                {
                  v21 = objc_opt_new();
                  [*(a1 + 32) setObject:v21 forKeyedSubscript:v5];
                }

                v22 = [*(a1 + 32) objectForKeyedSubscript:v5];
                [v22 addObject:v18];
              }

              else
              {
                v22 = sub_100006750(v19);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v28 = v5;
                  _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Migration: Unable to get signing identity from %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v18 = sub_100006750(0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v28 = v5;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Migration: Couldn't create SecCertificate for %@", buf, 0xCu);
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = sub_100006750(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100041C34();
      }
    }
  }
}

void sub_10000C6A4(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100002F74(a2, 0);
  v7 = sub_10000302C(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

void sub_10000C74C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100002F74(a2, 0);
  v7 = sub_10000302C(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10000C7F4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_10000C89C(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = sub_100002F74(a2, 0);
  v4 = sub_100002F74(a2, 1);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v5)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  [v7 addObject:v4];
}

uint64_t sub_10000C970(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

BOOL sub_10000CAD8(uint64_t a1)
{
  if ([*(a1 + 32) isProfileInstalled:MISProvisioningProfileGetUUID(*(a1 + 48))])
  {
    return 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 56) insertProfile:*(a1 + 48)];
  return *(*(*(a1 + 40) + 8) + 24) == 0;
}

void sub_10000CC80(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000302C(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_10000CD0C(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"blob"];
  v6 = sub_10000302C(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_10000CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

id sub_10000D1E4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  return [*(a1 + 32) appendFormat:@"(%lu, @p%lu)", a3, a3];
}

id sub_10000D23C(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 32))
  {
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    sqlite3_bind_blob(a2, v4, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), 0);
  }

  v5 = sqlite3_bind_parameter_index(a2, "@totalPredicates");
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  sqlite3_bind_int64(a2, v5, [v6 longLongValue]);

  result = [*(a1 + 40) count];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [NSString stringWithFormat:@"@p%u", v9];
      v11 = sqlite3_bind_parameter_index(a2, [v10 UTF8String]);
      v12 = [*(a1 + 40) objectAtIndexedSubscript:v8];
      sqlite3_bind_text(a2, v11, [v12 UTF8String], -1, 0);

      v8 = (v9 + 1);
      result = [*(a1 + 40) count];
      v9 = v8;
    }

    while (result > v8);
  }

  return result;
}

void sub_10000D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

uint64_t sub_10000D580(uint64_t result, sqlite3_stmt *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    v5 = [*(v3 + 32) bytes];
    v6 = [*(v3 + 32) length];

    return sqlite3_bind_blob(a2, v4, v5, v6, 0);
  }

  return result;
}

void sub_10000D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

const char *sub_10000D6F8(uint64_t a1)
{
  v2 = *(*(*a1 + 8) + 24);

  return sqlite3_errstr(v2);
}

void sub_10000D724(const __CFString *a1@<X0>, char **a2@<X8>)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    CString = CFStringGetCString(a1, Typed, MaximumSizeForEncoding + 1, 0x8000100u);
    if (CString)
    {
      v8 = open(Typed, 0);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = v8;
        v10 = lseek(v8, 0, 2);
        v11 = v10;
        if (v10 > 23)
        {
          v20 = mmap(0, v10, 1, 2, v9, 0);
          if (v20 == -1)
          {
            v23 = sub_100006750(-1);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_100041DA4();
            }

            v13 = -1;
          }

          else
          {
            v13 = v20;
            a2[2] = 0;
            a2[3] = 0;
            *(a2 + 6) = v9;
            a2[4] = v20;
            a2[5] = v11;
            *a2 = v20;
            a2[1] = 0;
            if (*v20 == 1134124660)
            {
              v21 = *(v20 + 2);
              if (v11 >= v21)
              {
                v28 = &v20[v21];
                v29 = *(v20 + 3);
                v30 = &v28[32 * v29];
                a2[1] = v28;
                a2[2] = v30;
                v31 = &v30[4 * v29];
                v32 = v31 - &v20[v11];
                if (v31 <= &v20[v11])
                {
LABEL_35:
                  CFAllocatorDeallocate(0, Typed);
                  return;
                }

                v33 = sub_100006750(v20);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v35 = 134217984;
                  v36 = v32;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Denylist is %td bytes short for entry count", &v35, 0xCu);
                }
              }

              else
              {
                v22 = sub_100006750(v20);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  sub_100041D1C();
                }
              }
            }

            else
            {
              v24 = sub_100006750(v20);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_100041CA8();
              }
            }
          }
        }

        else
        {
          v12 = sub_100006750(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100041E20();
          }

          if (v11 < 1)
          {
            goto LABEL_30;
          }

          v13 = 0;
        }

        if ((v13 + 1) >= 2)
        {
          munmap(v13, v11);
        }

LABEL_30:
        v15 = close(v9);
        goto LABEL_31;
      }

      v17 = __error();
      v18 = *v17;
      v19 = sub_100006750(v17);
      if (v18 == 2)
      {
        v15 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (v15)
        {
          sub_100041F20();
        }
      }

      else
      {
        v15 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (v15)
        {
          sub_100041EA4();
        }
      }
    }

    else
    {
      v16 = sub_100006750(CString);
      v15 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        sub_100041F60();
      }
    }
  }

  else
  {
    v14 = sub_100006750(0);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      sub_100041F9C();
    }
  }

LABEL_31:
  v25 = sub_100006750(v15);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_100041FD8();
  }

  v26 = mmap(0, 0x18uLL, 3, 4098, -1, 0);
  if (v26 == -1)
  {
    v34 = sub_100006750(-1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100042018();
    }

    abort();
  }

  v27 = v26;
  *(v26 + 2) = 0;
  *v26 = xmmword_100046C78;
  mprotect(v26, 0x18uLL, 1);
  *a2 = v27;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xFFFFFFFFLL;
  a2[4] = v27;
  a2[5] = 24;
  if (Typed)
  {
    goto LABEL_35;
  }
}

uint64_t sub_10000DAD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3 + 1 >= 2)
    {
      munmap(v3, v2);
    }
  }

  result = *(a1 + 24);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

void *sub_10000DB34(uint64_t a1, void *__key)
{
  result = bsearch_b(__key, *(a1 + 8), *(*a1 + 12), 0x20uLL, &stru_10005DED8);
  if (result)
  {
    return (*(a1 + 16) + ((result - *(a1 + 8)) >> 3));
  }

  return result;
}

int sub_10000DB84(id a1, const void *a2, const void *a3)
{
  v3 = bswap64(*a2);
  v4 = bswap64(*a3);
  if (v3 == v4)
  {
    v3 = bswap64(*(a2 + 1));
    v4 = bswap64(*(a3 + 1));
    if (v3 == v4)
    {
      v3 = bswap64(*(a2 + 2));
      v4 = bswap64(*(a3 + 2));
      if (v3 == v4)
      {
        v3 = bswap64(*(a2 + 3));
        v4 = bswap64(*(a3 + 3));
        if (v3 == v4)
        {
          return 0;
        }
      }
    }
  }

  if (v3 < v4)
  {
    return -1;
  }

  return 1;
}

void sub_10000DC08(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

id sub_10000DC28(uint64_t a1, unsigned int a2)
{
  v2 = [NSData dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  v8 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v8];
  isKindOfClass = v8;
  v5 = isKindOfClass;
  if (!v3 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v6 = sub_100006750(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100042054(v5, v6);
    }
  }

  return v3;
}

BOOL sub_10000DD10(void *a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DDB4;
  v6[3] = &unk_10005DF00;
  v7 = a2;
  v3 = v7;
  v4 = [a1 indexOfObjectPassingTest:v6] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

uint64_t sub_10000DDE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = sub_10000DEE0(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF24;
  block[3] = &unk_10005DF28;
  v11 = v3;
  v12 = v4;
  v13 = &v14;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v8;
}

id sub_10000DEE0(uint64_t a1)
{
  if (qword_100067980 != -1)
  {
    sub_1000420CC();
  }

  v2 = qword_100067988;

  return v2;
}

void sub_10000DF24(uint64_t a1)
{
  v2 = [NSMutableArray alloc];
  v3 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:*(a1 + 32)];
  v4 = sub_10000DFF4(v3);
  v6 = [v2 initWithArray:v4];

  if (sub_10000DD10(v6, *(a1 + 40)))
  {
    v5 = 0;
  }

  else
  {
    [v6 addObject:*(a1 + 40)];
    sub_10000E0F4(v6, *(a1 + 32));
    v5 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

id sub_10000DFF4(void *a1)
{
  v1 = a1;
  v2 = [[NSArray alloc] initWithContentsOfFile:v1];

  if (!v2)
  {
    v4 = sub_100006750(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "could not read in auth list (may be non-existing)", buf, 2u);
    }

    v6 = sub_100006750(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "creating empty auth list", v8, 2u);
    }

    v2 = objc_alloc_init(NSArray);
  }

  return v2;
}

void sub_10000E0F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v3];
  v6 = [v4 writeToFile:v5 atomically:1];

  if ((v6 & 1) == 0)
  {
    v8 = sub_100006750(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000420E0(v8);
    }
  }
}

uint64_t sub_10000E190(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = sub_10000DEE0(v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E290;
  block[3] = &unk_10005DF28;
  v11 = v3;
  v12 = v4;
  v13 = &v14;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v8;
}

void sub_10000E290(uint64_t a1)
{
  v2 = [NSMutableArray alloc];
  v3 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:*(a1 + 32)];
  v4 = sub_10000DFF4(v3);
  v6 = [v2 initWithArray:v4];

  if (sub_10000DD10(v6, *(a1 + 40)))
  {
    [v6 removeObject:*(a1 + 40)];
    sub_10000E0F4(v6, *(a1 + 32));
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

void sub_10000E360(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("auth-list-queue", v3);
  v2 = qword_100067988;
  qword_100067988 = v1;
}

CFTypeRef sub_10000E3C4(CFStringRef filePath, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  cf = 0;
  valuePtr = a2;
  v7 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 0);
  if (!v7)
  {
    LODWORD(v11) = -402620406;
    if (!a4)
    {
      return cf;
    }

    goto LABEL_20;
  }

  v8 = v7;
  if (a2)
  {
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    v9 = CFDictionaryCreate(kCFAllocatorDefault, &kSecCodeAttributeUniversalFileOffset, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(values);
    v10 = SecStaticCodeCreateWithPathAndAttributes(v8, 0, v9, &cf);
    v11 = v10;
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
LABEL_6:
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = SecStaticCodeCreateWithPathAndAttributes(v7, 0, 0, &cf);
    v11 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v12 = sub_100006750(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(values) = 67109120;
    HIDWORD(values) = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failure creating static code: %d", &values, 8u);
  }

  LODWORD(v11) = sub_10000E5FC(v11);
  if (a3)
  {
LABEL_14:
    v13 = SecCodeSetDetachedSignature();
    if (v13)
    {
      v14 = v13;
      v15 = sub_10000E5FC(v13);
      LODWORD(v11) = v15;
      if (cf)
      {
        v16 = sub_100006750(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(values) = 67109120;
          HIDWORD(values) = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failure setting detached signature: %d", &values, 8u);
        }

        CFRelease(cf);
        cf = 0;
      }
    }
  }

LABEL_19:
  CFRelease(v8);
  if (a4)
  {
LABEL_20:
    *a4 = v11;
  }

  return cf;
}

uint64_t sub_10000E5FC(uint64_t a1)
{
  v1 = a1;
  if (a1 > -67055)
  {
    switch(a1)
    {
      case 0xFFFEFA12:
        v2 = 22;
        break;
      case 0xFFFEFA4C:
        v2 = 18;
        break;
      case 0:
        return v1;
      default:
        goto LABEL_13;
    }

    return v2 | 0xE8008001;
  }

  if (a1 == -67062)
  {
    return 3892346908;
  }

  if (a1 == -67061)
  {
    return 3892346905;
  }

LABEL_13:
  if ((a1 - 100001) <= 0x6A)
  {
    return (a1 - 100000) | 0xC000u;
  }

  v3 = sub_100006750(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100042124();
  }

  v1 = 3892346881;

  return v1;
}

CFDictionaryRef sub_10000E70C(const __SecCode *a1)
{
  information = 0;
  v2 = objc_autoreleasePoolPush();
  LODWORD(a1) = SecCodeCopySigningInformation(a1, 0x23u, &information);
  objc_autoreleasePoolPop(v2);
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = information;
  }

  return v3;
}

const void *sub_10000E778(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kSecCodeInfoUnique);
  v2 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v2;
}

const void *sub_10000E7B8(const __CFString *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v14 = 0;
  v5 = sub_10000E3C4(a1, a2, a3, &v14);
  v6 = v5;
  if (v5)
  {
    v7 = sub_10000E70C(v5);
    v8 = v7;
    if (!v7)
    {
      v10 = 0;
      v14 = -402620407;
      goto LABEL_13;
    }

    v9 = sub_10000E778(v7);
    if (v9)
    {
      v10 = v9;
      goto LABEL_13;
    }

    v14 = -402620415;
    v12 = sub_100006750(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not copy code directory hash.", buf, 2u);
    }
  }

  else
  {
    v11 = sub_100006750(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not copy signature, error 0x%x", buf, 8u);
    }

    v8 = 0;
  }

  v10 = 0;
LABEL_13:
  if (a4)
  {
    *a4 = v14;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

id sub_10000E938()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t sub_10000E978()
{
  v0 = sub_10000E938();
  v1 = [v0 isEqualToString:@"Internal"];
  if ((MGGetBoolAnswer() & 1) == 0 && v1 && os_parse_boot_arg_string())
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v3 = sub_100006750(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using emulated device UDID: %{public}@\n", &v5, 0xCu);
    }
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  return v2;
}

void sub_10000EAB4()
{
  v0 = objc_opt_new();
  [v0 setAllowsCellularAccess:1];
  [v0 setAllowsExpensiveAccess:1];
  [v0 setRequiresPowerPluggedIn:0];
  [v0 setDiscretionary:1];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10000F2C4;
  v53[3] = &unk_10005DF70;
  v38 = v0;
  dsema = dispatch_semaphore_create(0);
  v54 = dsema;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.MobileIdentityService.DenyList" options:v0 then:v53];
  v1 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(dsema, v1);
  v40 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.MobileIdentityService.DenyList"];
  [v40 queryMetaDataSync];
  v2 = [v40 results];
  v3 = v2;
  if (!v2 || (ResultFailure = MAIsQueryResultFailure(), v3, ResultFailure))
  {
    v5 = sub_100006750(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Denylist asset query failed: %@", &buf, 0xCu);
    }

    goto LABEL_54;
  }

  v59 = 0u;
  v60 = 0u;
  buf = 0u;
  v6 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
  sub_10000D724(v6, &buf);
  v42 = *(buf + 16);
  *v56 = buf;
  *&v56[16] = v59;
  v57 = v60;
  sub_10000DAD4(v56);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v40 results];
  v7 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (!v7)
  {

    goto LABEL_46;
  }

  val = 0;
  v8 = *v50;
  v9 = ASAttributeCompatibilityVersion;
  v44 = ASAttributeContentVersion;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v50 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v49 + 1) + 8 * i);
      v12 = [v11 attributes];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKey:v9];
        v15 = v14;
        if (v14 && (objc_opt_class(), v14 = objc_opt_isKindOfClass(), (v14 & 1) != 0) && (v14 = [v15 intValue], v14 == 1))
        {
          isKindOfClass = [v13 objectForKey:v44];
          v17 = isKindOfClass;
          if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
          {
            v18 = sub_100006750(isKindOfClass);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v11 state];
              *v56 = 138412802;
              *&v56[4] = v11;
              *&v56[12] = 2112;
              *&v56[14] = v17;
              *&v56[22] = 2048;
              *&v56[24] = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Seeing denylist asset '%@' (version '%@', state %ld)", v56, 0x20u);
            }

            v20 = [v17 unsignedLongLongValue];
            if (v20 > v42)
            {
              v21 = v11;
              v22 = val;
              val = v21;
              v42 = v20;
              goto LABEL_35;
            }
          }

          else
          {
            v22 = sub_100006750(isKindOfClass);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              if (v17)
              {
                v43 = [v17 debugDescription];
                v25 = v43;
                v26 = [v43 UTF8String];
              }

              else
              {
                v26 = "NULL";
              }

              *v56 = 136315138;
              *&v56[4] = v26;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipping asset with unparsable content version '%s'.", v56, 0xCu);
              if (v17)
              {
              }
            }

LABEL_35:
          }
        }

        else
        {
          v17 = sub_100006750(v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            if (v15)
            {
              v3 = [v15 debugDescription];
              v23 = v3;
              v24 = [v3 UTF8String];
            }

            else
            {
              v24 = "NULL";
            }

            *v56 = 136315138;
            *&v56[4] = v24;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping asset with incompatible compatibility version '%s'.", v56, 0xCu);
            if (v15)
            {
            }
          }
        }

        goto LABEL_37;
      }

      v15 = sub_100006750(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100042198(&v47, v48, v15);
      }

LABEL_37:
    }

    v7 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  }

  while (v7);

  if (val)
  {
    v28 = sub_100006750(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [val assetId];
      v30 = [val state];
      [val state];
      v31 = MAStringForMAAssetState();
      *v56 = 138412802;
      *&v56[4] = v29;
      *&v56[12] = 2048;
      *&v56[14] = v30;
      *&v56[22] = 2112;
      *&v56[24] = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Using latest asset: %@, state: %ld (%@)", v56, 0x20u);
    }

    if ([val wasLocal])
    {
      v32 = [val getLocalUrl];
      v33 = [v32 path];

      if (v33)
      {
        v35 = sub_10000F40C(v33);
        v36 = sub_10000F488(v33);
        sub_10000F330(v35, v36);
      }

      else
      {
        v35 = sub_100006750(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000421D8();
        }
      }
    }

    else
    {
      *v56 = 0;
      *&v56[8] = v56;
      *&v56[16] = 0x3042000000;
      *&v56[24] = sub_10000F504;
      *&v57 = sub_10000F510;
      objc_initWeak(&v57 + 1, val);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10000F518;
      v46[3] = &unk_10005DF98;
      v46[4] = v56;
      [val startDownload:v38 completionWithError:v46];
      _Block_object_dispose(v56, 8);
      objc_destroyWeak(&v57 + 1);
    }

    v37 = val;
    goto LABEL_53;
  }

LABEL_46:
  v37 = sub_100006750(v27);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "No new denylist found.", v56, 2u);
  }

LABEL_53:

LABEL_54:
}

void sub_10000F29C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 224), 8);
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

intptr_t sub_10000F2C4(uint64_t a1, uint64_t a2)
{
  v3 = MAIsDownloadResultFailure();
  if (v3)
  {
    v4 = sub_100006750(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100042214();
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000F330(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100067990 != -1)
  {
    sub_100042288();
  }

  v5 = qword_100067998;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F980;
  v8[3] = &unk_10005DFE0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

id sub_10000F40C(void *a1)
{
  v1 = a1;
  v2 = [NSString stringWithUTF8String:"denylist.map"];
  v3 = [v1 stringByAppendingPathComponent:v2];

  return v3;
}

id sub_10000F488(void *a1)
{
  v1 = a1;
  v2 = [NSString stringWithUTF8String:"DocumentCheckerDefinition.plist"];
  v3 = [v1 stringByAppendingPathComponent:v2];

  return v3;
}

void sub_10000F518(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MAIsDownloadResultFailure();
  v6 = v5;
  v7 = sub_100006750(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      sub_100042314();
    }
  }

  else
  {
    if (v8)
    {
      sub_10004229C();
    }

    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    v7 = [WeakRetained getLocalUrl];

    if (v7)
    {
      v10 = [v7 path];
      v11 = v10;
      if (v10)
      {
        v12 = sub_10000F40C(v10);
        v13 = sub_10000F488(v11);
        sub_10000F330(v12, v13);
      }

      else
      {
        v12 = sub_100006750(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000422D8();
        }
      }
    }
  }
}

uint64_t sub_10000F644(const void **a1)
{
  connect = 0;
  input = *(*a1 + 3);
  v2 = sub_100006750(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sending denylist to AMFI....", buf, 2u);
  }

  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    v6 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v6)
    {
      v7 = sub_100006750(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100042388();
      }
    }

    else
    {
      v8 = IOConnectCallMethod(connect, 9u, &input, 1u, a1[1], 32 * *(*a1 + 3), 0, 0, 0, 0);
      if (!v8)
      {
        goto LABEL_13;
      }

      v7 = sub_100006750(v8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000423F8();
      }
    }
  }

  else
  {
    v7 = sub_100006750(MatchingService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100042468();
    }
  }

LABEL_13:
  result = connect;
  if (connect)
  {
    result = IOServiceClose(connect);
  }

  if (v5)
  {
    return IOObjectRelease(v5);
  }

  return result;
}

uint64_t sub_10000F7DC()
{
  connect = 0;
  v0 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v3)
    {
      v4 = sub_100006750(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100042388();
      }
    }

    else
    {
      v5 = IOConnectCallMethod(connect, 0xDu, 0, 0, 0, 0, 0, 0, 0, 0);
      if (!v5)
      {
        goto LABEL_11;
      }

      v4 = sub_100006750(v5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000423F8();
      }
    }
  }

  else
  {
    v4 = sub_100006750(MatchingService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100042468();
    }
  }

LABEL_11:
  result = connect;
  if (connect)
  {
    result = IOServiceClose(connect);
  }

  if (v2)
  {
    return IOObjectRelease(v2);
  }

  return result;
}

void sub_10000F91C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("blacklist-ingest", v3);
  v2 = qword_100067998;
  qword_100067998 = v1;
}

void sub_10000F980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100006750(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = [(__CFString *)v2 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ingesting denylist '%s'", buf, 0xCu);
  }

  *from_fd = 0u;
  v85 = 0u;
  v83 = 0u;
  sub_10000D724(v2, &v83);
  if (from_fd[2] < 0)
  {
    v26 = sub_100006750(v4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10004283C();
    }

    goto LABEL_34;
  }

  v5 = *(v83 + 16);
  v6 = sub_100006750(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(__CFString *)v2 UTF8String];
    v8 = *(v83 + 12);
    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    *&buf[24] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Denylist '%s' was issued at %{time_t}lld with %u entries.", buf, 0x1Cu);
  }

  *v86 = 0u;
  v87 = 0u;
  v10 = *(v83 + 12);
  if (v10)
  {
    v11 = 0;
    v12 = v86;
    v13 = *(&v83 + 1);
    while (1)
    {
      v14 = bswap64(*v13);
      v15 = bswap64(*v12);
      if (v14 == v15 && (v14 = bswap64(v13[1]), v15 = bswap64(v12[1]), v14 == v15) && (v14 = bswap64(v13[2]), v15 = bswap64(v12[2]), v14 == v15) && (v14 = bswap64(v13[3]), v15 = bswap64(v12[3]), v14 == v15))
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 < v15 ? -1 : 1;
      }

      if (v16 < 0)
      {
        break;
      }

      v12 = (*(&v83 + 1) + 32 * v11++);
      v13 += 4;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    v27 = sub_100006750(v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = sub_1000104E0(v13);
      v29 = [v28 UTF8String];
      v30 = sub_1000104E0(v12);
      v31 = [v30 UTF8String];
      *buf = 134218498;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      *&buf[22] = 2080;
      *&buf[24] = v31;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Denylist entry number %zu smaller than previous entry: %s < %s", buf, 0x20u);
    }

    goto LABEL_32;
  }

LABEL_18:
  *buf = v83;
  *&buf[16] = *from_fd;
  v90 = v85;
  if (!sub_10000DB34(buf, "INTEGRITY_CHECK_SENTINEL_01"))
  {
    v27 = sub_100006750(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000427C4();
    }

LABEL_32:

    v26 = sub_100006750(v32);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100042800();
    }

LABEL_34:

    *buf = v83;
    *&buf[16] = *from_fd;
    v90 = v85;
    v25 = buf;
LABEL_35:
    sub_10000DAD4(v25);
    goto LABEL_36;
  }

  v90 = 0u;
  memset(buf, 0, sizeof(buf));
  v17 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
  sub_10000D724(v17, buf);
  v18 = *&buf[24];
  v20 = sub_100006750(v19);
  v21 = v20;
  if (v18 < 0)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Currently installed denylist is broken, replacing unconditionally.", v86, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = *(*buf + 16);
      *v86 = 134217984;
      *&v86[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Existing denylist was issued at %lld", v86, 0xCu);
    }

    if (v5 < *(*buf + 16))
    {
      v24 = sub_100006750(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Denylist to ingest is older than current denylist, ignoring.", v86, 2u);
      }

      *v86 = *buf;
      v87 = *&buf[16];
      v88 = v90;
      sub_10000DAD4(v86);
      *v86 = v83;
      v87 = *from_fd;
      v88 = v85;
      v25 = v86;
      goto LABEL_35;
    }
  }

  *v86 = *buf;
  v87 = *&buf[16];
  v88 = v90;
  sub_10000DAD4(v86);
  *v86 = v83;
  v87 = *from_fd;
  v88 = v85;
  sub_10000F644(v86);
  v57 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map.ingestXXXXXXX"];
  v58 = [v57 lengthOfBytesUsingEncoding:4];
  v59 = malloc_type_malloc(v58 + 1, 0x446B24D6uLL);
  if (!v59)
  {
    v75 = sub_100006750(0);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_100042788();
    }

    *v86 = v83;
    v87 = *from_fd;
    v88 = v85;
    sub_10000DAD4(v86);
    goto LABEL_98;
  }

  v60 = v59;
  strlcpy(v59, [v57 UTF8String], v58 + 1);
  v61 = mkstemp(v60);
  if ((v61 & 0x80000000) != 0)
  {
    v77 = sub_100006750(v61);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_1000426F0();
    }

    *v86 = v83;
    v87 = *from_fd;
    v88 = v85;
    sub_10000DAD4(v86);
    goto LABEL_97;
  }

  v62 = v61;
  v63 = fchmod(v61, 0x1A4u);
  if ((v63 & 0x80000000) != 0)
  {
    v80 = sub_100006750(v63);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_100042658();
    }

    *v86 = v83;
    v87 = *from_fd;
    v88 = v85;
    sub_10000DAD4(v86);
    close(v62);
  }

  else
  {
    lseek(from_fd[2], 0, 0);
    v64 = fcopyfile(from_fd[2], v62, 0, 8u);
    v65 = lseek(v62, 0, 2);
    close(v62);
    *v86 = v83;
    v87 = *from_fd;
    v88 = v85;
    v66 = sub_10000DAD4(v86);
    if (v64 < 0)
    {
      v81 = sub_100006750(v66);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_1000425D0();
      }
    }

    else
    {
      if (v65 == *(&v85 + 1))
      {
        v67 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"denylist.map"];
        v68 = [v67 UTF8String];

        rename(v60, v68, v69);
        if ((v70 & 0x80000000) == 0)
        {
          free(v60);
          v72 = sub_100006750(v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = [(__CFString *)v2 UTF8String];
            *v86 = 136315138;
            *&v86[4] = v73;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Successfully ingested new denylist '%s'", v86, 0xCu);
          }

          goto LABEL_98;
        }

        v82 = sub_100006750(v70);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          sub_100042530();
        }

        goto LABEL_96;
      }

      v81 = sub_100006750(v66);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        sub_1000424A4(&v85 + 1, v65, v81);
      }
    }
  }

LABEL_96:
  unlink(v60);
LABEL_97:
  free(v60);
LABEL_98:

LABEL_36:
  v33 = *(a1 + 40);
  v34 = sub_100006750(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v33 UTF8String];
    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Ingesting DocumentCheckList '%s'", buf, 0xCu);
  }

  v36 = open([v33 cStringUsingEncoding:4], 0);
  if ((v36 & 0x80000000) == 0)
  {
    v37 = v36;
    v38 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"DocumentCheckerDefinition.plist.ingestXXXXXXX"];
    v39 = [v38 lengthOfBytesUsingEncoding:4];
    v40 = malloc_type_malloc(v39 + 1, 0x19EDD7EuLL);
    if (v40)
    {
      v41 = v40;
      strlcpy(v40, [v38 UTF8String], v39 + 1);
      v42 = mkstemp(v41);
      if ((v42 & 0x80000000) != 0)
      {
        v56 = sub_100006750(v42);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_100042AA8();
        }

        close(v37);
      }

      else
      {
        v43 = v42;
        v44 = fchmod(v42, 0x1A4u);
        if ((v44 & 0x80000000) != 0)
        {
          v74 = sub_100006750(v44);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            sub_100042A10();
          }

          close(v37);
          close(v43);
        }

        else
        {
          v45 = fcopyfile(v37, v43, 0, 8u);
          close(v37);
          v46 = close(v43);
          if (v45 < 0)
          {
            v76 = sub_100006750(v46);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              sub_100042988();
            }
          }

          else
          {
            v47 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"DocumentCheckerDefinition.plist"];
            v48 = [v47 UTF8String];

            rename(v41, v48, v49);
            if ((v50 & 0x80000000) == 0)
            {
              v51 = notify_post("com.apple.mis.doc-check-list-ingested");
              if (v51)
              {
                v52 = sub_100006750(v51);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  sub_100042918();
                }
              }

              free(v41);
              v54 = sub_100006750(v53);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = [v33 UTF8String];
                *buf = 136315138;
                *&buf[4] = v55;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Successfully ingested new DocCheckList '%s'", buf, 0xCu);
              }

LABEL_54:

              goto LABEL_87;
            }

            v78 = sub_100006750(v50);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              sub_100042878();
            }
          }
        }

        unlink(v41);
      }

      free(v41);
      goto LABEL_87;
    }

    v54 = sub_100006750(0);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_100042B40();
    }

    goto LABEL_54;
  }

  v38 = sub_100006750(v36);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    sub_100042B7C();
  }

LABEL_87:

  sub_1000067E8(v79);
}

__CFString *sub_1000104E0(uint64_t a1)
{
  v1 = [NSData dataWithBytes:a1 length:28];
  v2 = sub_100011FEC(v1);

  return v2;
}

void sub_1000105B0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableString stringWithString:off_100066300];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010730;
  v6[3] = &unk_10005E008;
  v7 = v3;
  v5 = v3;
  sub_100010674(a1, v4, v6);
}

void sub_100010674(void *a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010740;
  v7[3] = &unk_10005E030;
  v8 = a2;
  v9 = a3;
  v5 = v9;
  v6 = v8;
  [a1 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_100010740(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  *a4 = 0;
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 appendString:v9];
  [*(a1 + 32) appendString:off_100066300];
  sub_100010804(*(a1 + 32), v8, *(a1 + 40));

  [*(a1 + 32) deleteCharactersInRange:{objc_msgSend(*(a1 + 32), "length") + ~objc_msgSend(v9, "length"), objc_msgSend(v9, "length") + 1}];
}

void sub_100010804(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_100010674(v6, v5, v7);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSString stringWithFormat:@"%@%@%@", @"string", v5, v6];
        (*(v7 + 2))(v7, v8);

        if (![v6 isEqual:@"*"])
        {
          goto LABEL_16;
        }

        v9 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v6];
        (*(v7 + 2))(v7, v9);

        v10 = [NSString stringWithFormat:@"%@%@%@", @"number", v5, v6];
        (*(v7 + 2))(v7, v10);
      }

      else
      {
        v11 = CFGetTypeID(v6);
        if (v11 == CFBooleanGetTypeID())
        {
          if (CFEqual(v6, kCFBooleanTrue))
          {
            v12 = @"true";
          }

          else
          {
            v12 = @"false";
          }

          v10 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v12];
          (*(v7 + 2))(v7, v10);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            abort();
          }

          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@%lld", @"number", v5, [v6 longLongValue]);
          (*(v7 + 2))(v7, v10);
        }
      }

      goto LABEL_16;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100010B08;
    v13[3] = &unk_10005E058;
    v14 = v5;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v13];
  }

LABEL_16:
}

void sub_10001123C(void *a1)
{
  v1 = a1;
  v2 = sub_100006750(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Revalidating apps", buf, 2u);
  }

  v66[0] = kMISValidationOptionValidateSignatureOnly;
  v66[1] = kMISValidationOptionOnlineAuthorization;
  v67[0] = kCFBooleanTrue;
  v67[1] = kCFBooleanTrue;
  v66[2] = kMISValidationOptionOnlineCheckType;
  v66[3] = @"OnlineAuthorizationOnAllMatchingProfiles";
  v67[2] = &off_1000613C8;
  v67[3] = kCFBooleanTrue;
  v48 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:4];
  v3 = objc_opt_new();
  [LSApplicationRecord enumeratorWithOptions:0];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = v57 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v54 objects:v65 count:16];
  v47 = v4;
  v46 = v1;
  if (v5)
  {
    v7 = v5;
    v8 = *v55;
    *&v6 = 138412290;
    v45 = v6;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        if (v1 && xpc_activity_should_defer(v1))
        {
          v11 = xpc_activity_set_state(v1, 3);
          v12 = v11;
          v13 = sub_100006750(v11);
          v14 = v13;
          if (v12)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deferring revalidateApps activity", buf, 2u);
            }

            v44 = v4;
            goto LABEL_41;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v45;
            v62 = v1;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to defer %@", buf, 0xCu);
          }
        }

        v15 = [v10 isProfileValidated];
        if (v15)
        {
          v16 = sub_100006750(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v10 URL];
            v18 = [v17 path];
            *buf = 138543362;
            v62 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "revalidateApps: Checking %{public}@", buf, 0xCu);
          }

          theDict = 0;
          v19 = [v10 URL];
          v20 = [v19 path];
          v21 = MISValidateSignatureAndCopyInfo();

          v22 = sub_100006750(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v10 URL];
            v24 = [v23 path];
            *buf = 138543618;
            v62 = v24;
            v63 = 1024;
            v64 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "App revalidation: Failed to validate app %{public}@, 0%x", buf, 0x12u);
          }

          *buf = 0;
          v25 = [v10 URL];
          v26 = [v25 path];
          v27 = sub_10000E7B8(v26, 0, 0, buf);

          if (v27)
          {
            v4 = v47;
            [v3 addObject:v27];
          }

          else
          {
            v27 = sub_100006750(v28);
            v4 = v47;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              sub_100042C14(v59, v10, &v60, v27);
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v30 = sub_1000032A4(v29);
  v31 = [v30 getOnlineAuthEntriesNoThrow];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v31;
  v32 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v14);
        }

        v36 = *(*(&v49 + 1) + 8 * j);
        v37 = [v36 cdHash];
        v38 = [v3 containsObject:v37];

        if ((v38 & 1) == 0)
        {
          v40 = sub_100006750(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v62 = v36;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Pruning online auth entry: %{public}@", buf, 0xCu);
          }

          v42 = sub_1000032A4(v41);
          v43 = [v36 cdHash];
          [v42 deleteOnlineAuthEntryNoThrowWithCdHash:v43];
        }
      }

      v33 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v33);
  }

  v44 = v14;
  v4 = v47;
LABEL_41:
}

id sub_10001186C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  if (!v5)
  {
    v6 = sub_100006750(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "PVAppIdentityDigest not supported";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v15, buf, 2u);
    }

LABEL_10:
    v14 = &__NSDictionary0__struct;
    goto LABEL_15;
  }

  if (!&_PVAppIdentity_GenerateDigestWithCompletion)
  {
    v6 = sub_100006750(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "Digest calculation not supported";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v6 = [NSURL fileURLWithPath:v3];
  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_100011B80;
  v24 = sub_100011B90;
  v25 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = dispatch_get_global_queue(21, 0);
  v9 = v7;
  v10 = v3;
  v19 = v10;
  PVAppIdentity_GenerateDigestWithCompletion();

  v11 = dispatch_time(0, 10000000000);
  v12 = dispatch_semaphore_wait(v9, v11);
  v13 = *(v21 + 5);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v16 = sub_100006750(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v26 = 138412290;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Timed out digest calculation for %@", v26, 0xCu);
    }

    v17 = +[PVAppIdentityDigest digestWithTimeoutError];
    v14 = [v17 asDictionary];
  }

  _Block_object_dispose(buf, 8);
LABEL_15:

  return v14;
}

void sub_100011B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011B98(uint64_t a1, void *a2)
{
  v3 = [a2 asDictionary];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = dispatch_semaphore_signal(*(a1 + 32));
  v7 = sub_100006750(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Succesfully calculated digest for %@", &v9, 0xCu);
  }
}

uint64_t sub_100011E74(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@predicate");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@wildcard");
  v7 = *(a1 + 48);

  return sqlite3_bind_int(a2, v6, v7);
}

CFStringRef sub_100011F44()
{
  v0 = sub_10000E978();
  if (!v0)
  {
    v5 = sub_100006750(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100042CE8(v5);
    }

    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  TypeID = CFStringGetTypeID();
  if (v2 != TypeID)
  {
    v4 = sub_100006750(TypeID);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100042CA4(v4);
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

const __CFString *sub_100011FEC(const __CFData *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetLength(a1);
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v7);
      --v6;
    }

    while (v6);
  }

  return Mutable;
}

__CFString *sub_100012098(const __CFData *a1)
{
  v1 = sub_100011FEC(a1);

  return v1;
}

void *sub_1000120C0(size_t size)
{
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, size, 0xF68CEDE8uLL))
  {
    bzero(memptr, size);
  }

  return memptr;
}

void *sub_100012118(const void *a1, size_t a2, size_t size)
{
  result = sub_1000120C0(size);
  if (result)
  {

    return memcpy(result, a1, a2);
  }

  return result;
}

uint64_t sub_100012170(mach_port_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v19[4] = 0;
  outputStructCnt = 88;
  memset(&c, 0, sizeof(c));
  data = CFAbsoluteTimeGetCurrent() & 0xFFFFFFFFFF800000;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 8u);
  CC_SHA256_Final(md, &c);
  v15 = *md;
  outputStruct[0] = a2;
  outputStruct[1] = a3;
  v14 = a4;
  v16 = 0x8000000000;
  v17 = 0u;
  v18 = 0u;
  *v19 = 2106;
  return IOConnectCallStructMethod(a1, 1u, outputStruct, 0x58uLL, outputStruct, &outputStructCnt);
}

uint64_t sub_1000122D8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10001236C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000123A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (a2 >> 60 == 15)
  {
    v5 = (*(*v3 + 88))(a1);

    return sqlite3_bind_null(v5, v4);
  }

  else
  {

    sub_1000130F0(a1, a2);
    sub_100012E44(a1, a2, v3, v4);

    return sub_100013158(a1, a2);
  }
}

uint64_t sub_100012480(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(*a3 + 88))();
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    if (qword_1000679A8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_7:
  v9 = qword_10006A980;

  return sqlite3_bind_blob(v7, a4, a1, v8, v9);
}

_BYTE *sub_100012564(int a1)
{
  v3 = *(*v1 + 88);
  v4 = v3();
  result = sqlite3_column_blob(v4, a1);
  if (result)
  {
    v6 = result;
    v7 = v3();
    v8 = sqlite3_column_bytes(v7, a1);
    return sub_100013278(v6, v8);
  }

  return result;
}

void sub_1000125F0(uint64_t a1, int a2)
{
  v4 = sub_100043144();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = (*(*v2 + 88))(v4);

  sqlite3_bind_int64(v7, a2, v6);
}

uint64_t sub_1000126AC(int a1)
{
  v3 = (*(*v1 + 88))();
  v4.n128_f64[0] = sqlite3_column_int64(v3, a1);

  return Date.init(timeIntervalSince1970:)(v4);
}

uint64_t sub_10001271C(sqlite3_int64 a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1);
}

sqlite3_int64 sub_100012784(int a1)
{
  v3 = (*(*v1 + 88))();

  return sqlite3_column_int64(v3, a1);
}

uint64_t sub_1000127DC(char a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1 & 1);
}

uint64_t sub_100012898(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a3;
    v6 = result;

    return sub_1000128F4(v6, a2, v3, v4);
  }

  return result;
}

uint64_t sub_1000128F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v12 = a1;
    v13 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = (*(*a3 + 88))();
    if (qword_1000679A8 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v7 = qword_10006A980;
    v8 = v12;
    goto LABEL_10;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_100043614();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v6 = (*(*a3 + 88))();
  if (qword_1000679A8 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  v7 = qword_10006A980;
  v8 = (v5 + 32);
LABEL_10:
  sqlite3_bind_text(v6, a4, v8, -1, v7);
}

const unsigned __int8 *sub_100012A7C(int a1)
{
  v3 = (*(*v1 + 88))();
  result = sqlite3_column_text(v3, a1);
  if (result)
  {
    return sub_1000433A4();
  }

  return result;
}

uint64_t sub_100012AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v18 = sub_1000432E4();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v24 = sub_1000133A0;
  v25 = v10;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100012D60;
  v23 = &unk_10005E140;
  v11 = _Block_copy(&aBlock);
  sub_100013448(a3, a4);

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = v9;
  v24 = sub_1000134A0;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100012DB4;
  v23 = &unk_10005E190;
  v13 = _Block_copy(&aBlock);
  sub_100013448(a5, a6);

  v14 = [v19 executeQuery:v18 withBind:v11 withResults:v13];
  _Block_release(v13);
  _Block_release(v11);

  if (v14)
  {
    sub_100013550();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
LABEL_5:
    swift_willThrow();
  }

  swift_beginAccess();
  if (*(v9 + 16))
  {
    swift_errorRetain();
    goto LABEL_5;
  }
}

uint64_t sub_100012D60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100012DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_100013698();
  v5 = sub_1000432B4();

  v4(a2, v5);
}

uint64_t sub_100012E44(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = BYTE6(a2);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v26, 0, 14);
      a1 = (*(*a3 + 88))(a1);
      if (qword_1000679A8 == -1)
      {
LABEL_25:
        v9 = qword_10006A980;
        v10 = a4;
        v11 = 0;
LABEL_26:
        sqlite3_bind_blob(a1, v10, v26, v11, v9);
      }

LABEL_29:
      v25 = a1;
      swift_once();
      a1 = v25;
      goto LABEL_25;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_100042DF4();
    v14 = a1;
    if (a1)
    {
      a1 = sub_100042E24();
      if (__OFSUB__(v12, a1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v26[0] = a1;
    LOWORD(v26[1]) = a2;
    BYTE2(v26[1]) = BYTE2(a2);
    BYTE3(v26[1]) = BYTE3(a2);
    BYTE4(v26[1]) = BYTE4(a2);
    BYTE5(v26[1]) = BYTE5(a2);
    a1 = (*(*a3 + 88))();
    v8 = v6;
    if (qword_1000679A8 != -1)
    {
      v24 = a1;
      swift_once();
      a1 = v24;
    }

    v9 = qword_10006A980;
    v10 = a4;
    v11 = v8;
    goto LABEL_26;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = sub_100042DF4();
  if (v14)
  {
    v18 = sub_100042E24();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_17;
    }

LABEL_31:
    __break(1u);
  }

LABEL_17:
  v19 = sub_100042E14();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = &v14[v20];
  if (v14)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_100012480(v14, v22, a3, a4);
}

uint64_t sub_1000130F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100013104(a1, a2);
  }

  return a1;
}

uint64_t sub_100013104(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100013158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001316C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001316C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000131C0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_100013278(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000131C0(a1, &a1[a2]);
  }

  sub_100042E34();
  swift_allocObject();
  sub_100042DE4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_100043054();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100013328()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013360()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000133A0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_1000136E4(v2, v4);
  }

  return result;
}

uint64_t sub_100013430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013448(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100013458()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000134A0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_1000136E4(v2, v4);
  }

  return result;
}

unint64_t sub_100013550()
{
  result = qword_100066368;
  if (!qword_100066368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066368);
  }

  return result;
}

__n128 sub_1000135B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000135C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001360C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_100013698()
{
  result = qword_100066478;
  if (!qword_100066478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066478);
  }

  return result;
}

uint64_t sub_1000136E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000136F4(const char *a1)
{
  v3 = *(v1 + 24);
  v4 = (*(**(v1 + 16) + 88))();
  if (qword_1000679A8 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  return sqlite3_bind_text(v4, v3, a1, -1, qword_10006A980);
}

uint64_t sub_1000137B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000430F4();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100013104(a1, a2);
  sub_100043104();
  sub_1000139DC();
  sub_1000435B4();
  if (v21)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v17 = xmmword_100046DE0;
    do
    {
      v9 = v20;
      sub_100013A34(&qword_100066488, &qword_100046DF0);
      v10 = swift_allocObject();
      *(v10 + 16) = v17;
      *(v10 + 56) = &type metadata for UInt8;
      *(v10 + 64) = &protocol witness table for UInt8;
      *(v10 + 32) = v9;
      v11 = sub_100043334();
      v13 = v12;
      v18 = v7;
      v19 = v8;

      v22._countAndFlagsBits = v11;
      v22._object = v13;
      sub_100043394(v22);

      v7 = v18;
      v8 = v19;
      sub_1000435B4();
    }

    while (v21 != 1);
  }

  (*(v16 + 8))(v6, v4);
  return v7;
}

unint64_t sub_1000139DC()
{
  result = qword_100066480;
  if (!qword_100066480)
  {
    sub_1000430F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066480);
  }

  return result;
}

uint64_t sub_100013A34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100013A7C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100013A34(&qword_100066490, &unk_100046EA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100013AF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100013B38(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100013B7C(void *a1)
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

int *sub_100013BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100043004();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = (&v47 - v13);
  v15 = [a1 bundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v53 = sub_100043314();
    v52 = v17;

    v18 = [a1 URL];
    sub_100042FA4();

    v19 = sub_10001CD78(v14);
    if (v2)
    {

      v51 = 0;
      v49 = 0;
      v50 = 0xF000000000000000;
    }

    else
    {
      v50 = v21;
      v51 = v20;
      v49 = v19;
    }

    (*(v6 + 8))(v14, v5);
    v26 = [a1 URL];
    sub_100042FA4();

    v27 = [a1 teamIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = sub_100043314();
      v47 = v30;
      v48 = v29;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v31 = v5;
    v32 = [a1 iTunesMetadata];
    v33 = [v32 versionIdentifier];

    v34 = [a1 uniqueInstallIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_1000430B4();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0xF000000000000000;
    }

    (*(v6 + 32))(a2, v12, v31);
    result = type metadata accessor for AppRecord(0);
    v39 = (a2 + result[5]);
    v40 = v52;
    *v39 = v53;
    v39[1] = v40;
    v41 = (a2 + result[6]);
    v42 = v47;
    *v41 = v48;
    v41[1] = v42;
    *(a2 + result[7]) = v33;
    v43 = (a2 + result[8]);
    *v43 = v36;
    v43[1] = v38;
    v44 = (a2 + result[9]);
    v45 = v50;
    v46 = v51;
    *v44 = v49;
    v44[1] = v46;
    v44[2] = v45;
  }

  else
  {
    type metadata accessor for AppManagerError(0);
    sub_100013FC4();
    swift_allocError();
    v23 = v22;
    v24 = [a1 URL];
    sub_100042FA4();

    (*(v6 + 32))(v23, v9, v5);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100013F8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100013FC4()
{
  result = qword_100066498;
  if (!qword_100066498)
  {
    type metadata accessor for AppManagerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066498);
  }

  return result;
}

uint64_t sub_10001401C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() enumeratorWithOptions:0];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100015628;
  *(v6 + 24) = v5;
  v9[4] = sub_100015630;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100014708;
  v9[3] = &unk_10005E310;
  v7 = _Block_copy(v9);

  [v4 swift_forEach:v7];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001419C(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v22[1] = a3;
  v23 = a2;
  v4 = sub_1000431E4();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for AppRecord(0);
  __chkstk_darwin(v5 - 8);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100043004();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v24 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  result = [a1 teamIdentifier];
  if (!result)
  {
    return result;
  }

  v14 = [a1 teamIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_100043314();
    v18 = v17;

    if (v16 == 0x3030303030303030 && v18 == 0xEA00000000003030)
    {
    }

    v19 = sub_1000437F4();

    if (v19)
    {
      return result;
    }
  }

  if (![a1 isProfileValidated] || (result = objc_msgSend(a1, "isBeta"), result))
  {
    v20 = [a1 URL];
    sub_100042FA4();

    LOBYTE(v20) = sub_1000179C4(v12);
    v22[0] = *(v8 + 8);
    result = (v22[0])(v12, v7);
    if ((v20 & 1) == 0)
    {
      result = [a1 isDeletableSystemApplication];
      if ((result & 1) == 0)
      {
        v21 = v25;
        sub_100013BEC(a1, v25);
        v23(v21);
        return sub_1000156D4(v21);
      }
    }
  }

  return result;
}

void sub_100014708(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_100014754(unint64_t a1, void *a2)
{
  v117 = a1;
  v3 = type metadata accessor for AppRecord(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v114 = &v103 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v103 - v10;
  __chkstk_darwin(v9);
  v13 = &v103 - v12;
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v24 = &v103 - v23;
  v25 = (a2 + *(v3 + 32));
  v120 = v25[1];
  if (v120 >> 60 == 15)
  {
    v26 = sub_1000212A8();
    (*(v15 + 16))(v18, v26, v14);
    sub_100015670(a2, v6);
    v27 = sub_1000431C4();
    v28 = sub_1000434A4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v119 = a2;
      v30 = v29;
      v31 = v15;
      v32 = swift_slowAlloc();
      v121 = v32;
      *v30 = 136446210;
      v33 = sub_100042FC4();
      v116 = v14;
      v35 = v34;
      sub_1000156D4(v6);
      v36 = sub_100015730(v33, v35, &v121);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to add launch warning to app without installation ID: %{public}s", v30, 0xCu);
      sub_100013B7C(v32);

      a2 = v119;

      (*(v31 + 8))(v18, v116);
    }

    else
    {

      sub_1000156D4(v6);
      (*(v15 + 8))(v18, v14);
    }

    type metadata accessor for AppManagerError(0);
    sub_100013FC4();
    swift_allocError();
    v51 = v50;
    v52 = sub_100043004();
    (*(*(v52 - 8) + 16))(v51, a2, v52);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v106 = v22;
    v107 = v11;
    v108 = v21;
    v115 = v3;
    v37 = *v25;
    sub_100013104(*v25, v120);
    v38 = sub_1000212A8();
    v39 = *(v15 + 16);
    v109 = v38;
    v110 = v39;
    v111 = v15 + 16;
    (v39)(v24);
    v119 = a2;
    sub_100015670(a2, v13);
    v40 = sub_1000431C4();
    v41 = sub_1000434B4();
    v42 = os_log_type_enabled(v40, v41);
    v113 = v15;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v121 = v44;
      *v43 = 136446210;
      v45 = &v13[*(v115 + 20)];
      v116 = v14;
      v112 = v37;
      v46 = *v45;
      v47 = v45[1];

      sub_1000156D4(v13);
      v48 = sub_100015730(v46, v47, &v121);
      v37 = v112;

      *(v43 + 4) = v48;
      v14 = v116;
      _os_log_impl(&_mh_execute_header, v40, v41, "Adding launch warning mark to: %{public}s", v43, 0xCu);
      sub_100013B7C(v44);

      v49 = *(v113 + 8);
    }

    else
    {

      sub_1000156D4(v13);
      v49 = *(v15 + 8);
    }

    v49(v24, v14);
    v53 = objc_allocWithZone(MIAppIdentity);
    v54 = sub_1000432E4();
    v55 = [v53 initWithBundleID:v54];

    v56 = v118;
    v57 = (*(*v117 + 112))();
    if (v56)
    {

      sub_100013158(v37, v120);
    }

    else
    {
      v59 = v57;
      v60 = v58;
      v118 = v49;
      v61 = v55;
      isa = sub_100043094().super.isa;
      v63 = v37;
      v64 = v60;
      v65 = sub_100043094().super.isa;
      v121 = 0;
      v66 = MISetLaunchWarning();

      v67 = v59;
      v68 = v121;
      if (v66)
      {
        v69 = v121;

        sub_100013158(v63, v120);
        sub_10001316C(v67, v64);
      }

      else
      {
        v104 = v61;
        v105 = v67;
        v117 = v64;
        v112 = v63;
        if (v121)
        {
          v70 = v108;
          v110(v108, v109, v14);
          v71 = v107;
          sub_100015670(v119, v107);
          v72 = v68;
          v73 = sub_1000431C4();
          v74 = v14;
          v75 = sub_1000434B4();

          if (os_log_type_enabled(v73, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v121 = v119;
            *v76 = 136446466;
            v78 = (v71 + *(v115 + 20));
            v116 = v74;
            v79 = *v78;
            v80 = v78[1];

            sub_1000156D4(v71);
            v81 = sub_100015730(v79, v80, &v121);

            *(v76 + 4) = v81;
            *(v76 + 12) = 2114;
            *(v76 + 14) = v72;
            *v77 = v68;
            v82 = v72;
            _os_log_impl(&_mh_execute_header, v73, v75, "Failed to add launch warning mark: %{public}s, %{public}@", v76, 0x16u);
            sub_100015C64(v77);

            sub_100013B7C(v119);

            v83 = v108;
            v84 = v116;
          }

          else
          {

            sub_1000156D4(v71);
            v83 = v70;
            v84 = v74;
          }

          v118(v83, v84);
          v99 = v104;
          swift_willThrow();
          v100 = v72;

          sub_100013158(v112, v120);
          sub_10001316C(v105, v117);
        }

        else
        {
          v85 = v106;
          v110(v106, v109, v14);
          v86 = v114;
          sub_100015670(v119, v114);
          v87 = sub_1000431C4();
          v88 = sub_1000434B4();
          v89 = os_log_type_enabled(v87, v88);
          v90 = v118;
          if (v89)
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v121 = v92;
            *v91 = 136315138;
            v93 = (v86 + *(v115 + 20));
            v116 = v14;
            v94 = *v93;
            v95 = v93[1];

            sub_1000156D4(v86);
            v96 = sub_100015730(v94, v95, &v121);

            *(v91 + 4) = v96;
            _os_log_impl(&_mh_execute_header, v87, v88, "Failed to add launch warning mark with no error: %s", v91, 0xCu);
            sub_100013B7C(v92);

            v97 = v85;
            v98 = v116;
          }

          else
          {

            sub_1000156D4(v86);
            v97 = v85;
            v98 = v14;
          }

          v90(v97, v98);
          v101 = v112;
          v102 = v105;
          type metadata accessor for AppManagerError(0);
          sub_100013FC4();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_100013158(v101, v120);
          sub_10001316C(v102, v117);
        }
      }
    }
  }
}

id sub_1000151D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000431E4();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(RBSTerminateContext);
  v8 = sub_1000432E4();
  v9 = [v7 initWithExplanation:v8];

  [v9 setMaximumTerminationResistance:40];
  v27 = a1;
  v10 = sub_1000432E4();
  v11 = [objc_opt_self() predicateMatchingBundleIdentifier:v10];

  v12 = [objc_allocWithZone(RBSTerminateRequest) initWithPredicate:v11 context:v9];
  v29 = 0;
  v13 = [v12 execute:&v29];
  if (v13)
  {
    v14 = v29;
  }

  else
  {
    v15 = v29;
    v16 = sub_100042F44();

    swift_willThrow();
    v17 = sub_1000212A8();
    (*(v28 + 16))(v6, v17, v4);

    v18 = sub_1000431C4();
    v19 = sub_1000434A4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25[1] = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v26 = v4;
      v23 = v22;
      v29 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100015730(v27, a2, &v29);
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to terminate app: %s", v21, 0xCu);
      sub_100013B7C(v23);

      (*(v28 + 8))(v6, v26);
    }

    else
    {

      (*(v28 + 8))(v6, v4);
    }
  }

  return v13;
}

uint64_t sub_100015658(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000156D4(uint64_t a1)
{
  v2 = type metadata accessor for AppRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015730(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000157FC(v11, 0, 0, 1, a1, a2);
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
    sub_10001607C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100013B7C(v11);
  return v7;
}

unint64_t sub_1000157FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100015908(a5, a6);
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
    result = sub_100043654();
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

char *sub_100015908(uint64_t a1, unint64_t a2)
{
  v3 = sub_100015954(a1, a2);
  sub_100015A84(&off_10005E298);
  return v3;
}

char *sub_100015954(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100013A7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100043654();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000433B4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100013A7C(v10, 0);
        result = sub_100043604();
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

uint64_t sub_100015A84(uint64_t result)
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

  result = sub_100015B70(result, v11, 1, v3);
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

char *sub_100015B70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100013A34(&qword_100066490, &unk_100046EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100015C64(uint64_t a1)
{
  v2 = sub_100013A34(&qword_100067060, &qword_100046E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015D1C(uint64_t a1)
{
  result = sub_100043004();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100015D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043004();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100015E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100043004();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100015F20(uint64_t a1)
{
  sub_100043004();
  if (v1 <= 0x3F)
  {
    sub_10001600C(319, &qword_100066590, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10001600C(319, &qword_100066598, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        sub_10001600C(319, &unk_1000665A0, &type metadata for CDHashInfo);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001600C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000435A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001607C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000160DC()
{
  v0 = sub_100043004();
  sub_1000168B0(v0, qword_10006A988);
  sub_1000161D0(v0, qword_10006A988);
  v1 = sub_1000432E4();
  v2 = sub_100016914();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = v3;
  if (v4)
  {
    sub_100043314();

    sub_100042F74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000161D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_100016210(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  if (qword_100067AD0 != -1)
  {
    swift_once();
  }

  v5 = sub_100043004();
  sub_1000161D0(v5, qword_10006A988);
  sub_100042F84(v6);
  v8 = v7;
  v11.receiver = v4;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "initWithDatabaseURL:asReadOnly:", v7, a1 & 1);

  return v9;
}

id sub_100016508()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LaunchWarningDB();
  v1 = objc_msgSendSuper2(&v16, "setupSchema");
  if (v1)
  {
    v2 = [v0 readSetting:@"databaseSchemaVersion"];
    if (v2)
    {
      v3 = v2;
      v4 = sub_100043314();
      v6 = v5;
    }

    else
    {
      v7 = sub_1000432E4();
      [v0 executeQuery:v7 withBind:0 withResults:0];

      v8 = @"databaseSchemaVersion";
      v4 = 49;
      v6 = 0xE100000000000000;
      v9 = sub_1000432E4();
      [v0 setSetting:v8 toValue:v9];
    }

    if (v4 == 49 && v6 == 0xE100000000000000)
    {
    }

    else
    {
      v11 = sub_1000437F4();

      if ((v11 & 1) == 0)
      {
        return v1;
      }
    }

    v12 = sub_1000432E4();
    [v0 executeQuery:v12 withBind:0 withResults:0];

    v13 = @"databaseSchemaVersion";
    v14 = sub_1000432E4();
    [v0 setSetting:v13 toValue:v14];
  }

  return v1;
}

id sub_100016878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningDB();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_1000168B0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100016920()
{
  v0 = sub_1000431E4();
  v50 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v49 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v48 = &v48 - v4;
  __chkstk_darwin(v3);
  v6 = &v48 - v5;
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_100042FC4();
  v9 = sub_1000432E4();

  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [v7 defaultManager];
    sub_100042F84(v12);
    v14 = v13;
    v51 = 0;
    v15 = [v11 removeItemAtURL:v13 error:&v51];

    v16 = v51;
    if (!v15)
    {
LABEL_16:
      v47 = v16;
      sub_100042F44();

      return swift_willThrow();
    }

    v17 = v51;
  }

  v18 = [v7 defaultManager];
  sub_100042F84(v19);
  v21 = v20;
  sub_100042F84(v22);
  v24 = v23;
  v51 = 0;
  v25 = [v18 copyItemAtURL:v21 toURL:v23 error:&v51];

  v16 = v51;
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = v51;
  sub_100042FB4(1);
  v27 = sub_100043374();

  v28 = chmod((v27 + 32), 0x1A4u);

  v29 = v50;
  v30 = v48;
  if (v28)
  {
    v31 = sub_1000212A8();
    (*(v29 + 16))(v6, v31, v0);
    v32 = sub_1000431C4();
    v33 = sub_1000434A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = sub_100043204();
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to chmod document checker: %d", v34, 8u);
    }

    (*(v29 + 8))(v6, v0);
  }

  v35 = notify_post("com.apple.mis.doc-check-list-ingested");
  if (v35)
  {
    v36 = v35;
    v37 = sub_1000212A8();
    (*(v29 + 16))(v30, v37, v0);
    v38 = sub_1000431C4();
    v39 = sub_1000434A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109120;
      *(v40 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to notify about new document checker: %u", v40, 8u);
    }

    (*(v29 + 8))(v30, v0);
  }

  v41 = sub_1000212A8();
  v42 = v49;
  (*(v29 + 16))(v49, v41, v0);
  v43 = sub_1000431C4();
  v44 = sub_1000434B4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Updated new document checker.", v45, 2u);
  }

  return (*(v29 + 8))(v42, v0);
}

unint64_t sub_100016E38(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000430F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100013104(a1, a2);
  sub_100043104();
  sub_100018BBC(&qword_100066480, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  sub_1000435B4();
  if (v11)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v8 = v10[14] | (v8 << 8);
      sub_1000435B4();
    }

    while (v11 != 1);
  }

  (*(v5 + 8))(v7, v4);
  return v8;
}

unint64_t sub_100016FD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100043664();
  v6 = sub_100013278(v5, v4);
  (*(v3 + 8))(v5, a2);
  return v6;
}

uint64_t sub_1000170EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(v2))
  {
    goto LABEL_5;
  }

  LODWORD(__src[0]) = bswap32(v2);
  v5 = sub_1000131C0(__src, __src + 4);
  v7 = v6 & 0xFFFFFFFFFFFFFFLL;
  v8 = sub_100016FD4(a1, a2);
  v10 = v9;
  v16[0] = v5;
  v16[1] = v7;
  __src[3] = &type metadata for Data;
  __src[4] = &protocol witness table for Data;
  __src[0] = v8;
  __src[1] = v9;
  v11 = sub_100013B38(__src, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  sub_100013104(v8, v10);
  sub_100018620(v12, v13, v16);
  sub_10001316C(v8, v10);
  sub_100013B7C(__src);
  return v16[0];
}

uint64_t sub_10001721C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100043354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    LODWORD(v11) = 0;
    v9 = 0xC000000000000000;
    goto LABEL_19;
  }

  sub_100043344();
  a2 = sub_100043324();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  if (v8 >> 60 == 15)
  {
    a2 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_13:
    LODWORD(v11) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_21;
    }

    v11 = v11;
LABEL_15:
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v11))
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      LODWORD(v11) = 0;
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v10)
  {
    goto LABEL_13;
  }

  LODWORD(v11) = BYTE6(v9);
LABEL_19:
  LODWORD(__src[0]) = bswap32(v11);
  v20[0] = sub_1000131C0(__src, __src + 4);
  v20[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  __src[3] = &type metadata for Data;
  __src[4] = &protocol witness table for Data;
  __src[0] = a2;
  __src[1] = v9;
  v16 = sub_100013B38(__src, &type metadata for Data);
  sub_100018620(*v16, v16[1], v20);
  sub_100013B7C(__src);
  return v20[0];
}

uint64_t sub_100017418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = a2;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    LODWORD(v7) = 0;
    if (v6 != 2)
    {
      goto LABEL_18;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    LODWORD(v7) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_21;
    }

    v7 = v7;
LABEL_16:
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v7))
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v6)
  {
    goto LABEL_14;
  }

  LODWORD(v7) = BYTE6(v5);
LABEL_18:
  LODWORD(__src[0]) = bswap32(v7);
  v17[0] = sub_1000131C0(__src, __src + 4);
  v17[1] = v11 & 0xFFFFFFFFFFFFFFLL;
  __src[3] = &type metadata for Data;
  __src[4] = &protocol witness table for Data;
  __src[0] = v4;
  __src[1] = v5;
  v12 = sub_100013B38(__src, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_1000130F0(a1, a2);
  sub_100018620(v13, v14, v17);
  sub_100013B7C(__src);
  return v17[0];
}

uint64_t sub_1000175A4(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100042DD4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  v39 = v12;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(value, 0, 14);
      v31 = sub_100043374();
      v32 = setxattr(a1, (v31 + 32), value, 0, 0, 0);

      if ((v32 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    v37 = a1;
    v38 = v5;
    v17 = v10;
    v18 = v9;
    v19 = *(a2 + 16);
    v20 = sub_100042DF4();
    if (v20)
    {
      v21 = sub_100042E24();
      if (__OFSUB__(v19, v21))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v20 += v19 - v21;
    }

    v9 = v18;
    sub_100042E14();
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      v10 = v17;
      v25 = sub_100043374();
      v26 = setxattr(v37, (v25 + 32), v20, v24, 0, 0);

      if ((v26 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v13)
  {
    v38 = v9;
    if (a2 <= a2 >> 32)
    {
      v37 = v10;
      v27 = sub_100042DF4();
      if (v27)
      {
        v28 = sub_100042E24();
        if (__OFSUB__(a2, v28))
        {
          goto LABEL_29;
        }

        v27 += a2 - v28;
      }

      sub_100042E14();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v29 = sub_100043374();
        v30 = setxattr(a1, (v29 + 32), v27, HIDWORD(a2) - a2, 0, 0);

        v10 = v37;
        v9 = v38;
        if ((v30 & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_20;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  value[0] = a2;
  LOWORD(value[1]) = a3;
  BYTE2(value[1]) = BYTE2(a3);
  BYTE3(value[1]) = BYTE3(a3);
  BYTE4(value[1]) = BYTE4(a3);
  BYTE5(value[1]) = BYTE5(a3);
  v14 = sub_100043374();
  v15 = setxattr(a1, (v14 + 32), value, BYTE6(a3), 0, 0);

  if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

LABEL_20:
  v33 = sub_100043204();
  v34 = sub_1000431F4();
  if ((v34 & 0x100000000) != 0)
  {
    sub_1000189B8();
    swift_allocError();
    *v36 = v33;
  }

  else
  {
    LODWORD(value[0]) = v34;
    sub_100018AAC(_swiftEmptyArrayStorage);
    sub_100018BBC(&qword_100066700, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
    v35 = v39;
    sub_100042F24();
    sub_100042DC4();
    (*(v10 + 1))(v35, v9);
  }

  return swift_willThrow();
}

uint64_t sub_1000179C4(uint64_t a1)
{
  bzero(v7, 0x878uLL);
  v3 = sub_100042FB4(1);
  v10 = v7;
  v11 = a1;
  sub_100017EE8(sub_10001885C, v9, v3, v4);

  if (!v1)
  {
    v5 = (v8 >> 14) & 1;
  }

  return v5 & 1;
}

uint64_t sub_100017AA0(const char *a1, statfs *a2, uint64_t a3)
{
  v35 = a3;
  v5 = sub_100042DD4();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043004();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000431E4();
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = statfs(a1, a2);
  if (result == -1)
  {
    v33 = v7;
    v34 = v5;
    v15 = sub_100043204();
    v16 = sub_1000212A8();
    v17 = v11;
    (*(v38 + 16))(v13, v16, v11);
    (*(v37 + 16))(v10, v35, v8);
    v18 = sub_1000431C4();
    v19 = sub_1000434A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      LODWORD(v35) = v15;
      v21 = v20;
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 67109378;
      *(v21 + 4) = v35;
      *(v21 + 8) = 2082;
      v40 = v19;
      v23 = sub_100042FC4();
      v25 = v24;
      (*(v37 + 8))(v10, v8);
      v26 = sub_100015730(v23, v25, &v39);

      *(v21 + 10) = v26;
      _os_log_impl(&_mh_execute_header, v18, v40, "Unable to statfs app: %d, %{public}s", v21, 0x12u);
      sub_100013B7C(v22);

      v15 = v35;
    }

    else
    {

      (*(v37 + 8))(v10, v8);
    }

    (*(v38 + 8))(v13, v17);
    v27 = v34;
    v28 = sub_1000431F4();
    v29 = v36;
    v30 = v33;
    if ((v28 & 0x100000000) != 0)
    {
      sub_1000189B8();
      swift_allocError();
      *v31 = v15;
    }

    else
    {
      v41 = v28;
      sub_100018AAC(_swiftEmptyArrayStorage);
      sub_100018BBC(&qword_100066700, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      sub_100042F24();
      sub_100042DC4();
      (*(v29 + 8))(v30, v27);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100017EE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_100043614();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7[0] = a3;
    v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a1(v5);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_100043614();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v5);
}

uint64_t sub_100017F58()
{
  sub_100043314();
  v0 = sub_1000433C4();

  return v0;
}

uint64_t sub_100017F94(uint64_t a1)
{
  sub_100043314();
  sub_100043384();
}

Swift::Int sub_100017FE8(uint64_t a1)
{
  sub_100043314();
  sub_1000438A4();
  sub_100043384();
  v1 = sub_1000438C4();

  return v1;
}

uint64_t sub_100018064(uint64_t a1, id *a2)
{
  result = sub_1000432F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1000180DC(uint64_t a1, id *a2)
{
  v3 = sub_100043304();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001815C@<X0>(uint64_t *a2@<X8>)
{
  sub_100043314();
  v3 = sub_1000432E4();

  *a2 = v3;
  return result;
}

uint64_t sub_1000181A0(void *a1, uint64_t *a2)
{
  v2 = sub_100043314();
  v4 = v3;
  if (v2 == sub_100043314() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000437F4();
  }

  return v7 & 1;
}

uint64_t sub_100018228@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000432E4();

  *a2 = v3;
  return result;
}

uint64_t sub_100018270@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043314();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001829C(uint64_t a1)
{
  v2 = sub_100018BBC(&qword_1000666C0, type metadata accessor for FileAttributeKey, &unk_1000470C8);
  v3 = sub_100018BBC(&qword_1000666F0, type metadata accessor for FileAttributeKey, &unk_10004701C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100018358(uint64_t a1, uint64_t a2)
{
  sub_1000438A4();
  sub_100043384();
  v4 = sub_1000438C4();

  return sub_1000183D0(a1, a2, v4);
}

unint64_t sub_1000183D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000437F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100018488(uint64_t a1)
{
  sub_100043314();
  sub_1000438A4();
  sub_100043384();
  v2 = sub_1000438C4();

  return sub_10001851C(a1, v2);
}

unint64_t sub_10001851C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100043314();
      v8 = v7;
      if (v6 == sub_100043314() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000437F4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100018620(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_100043064();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100018758(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_100018758(v4, v5);
  }

  return sub_100043064();
}

uint64_t sub_100018758(uint64_t a1, uint64_t a2)
{
  result = sub_100042DF4();
  if (!result || (result = sub_100042E24(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100042E14();
      return sub_100043064();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1000666D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000666D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for UtilitiesError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UtilitiesError(uint64_t result, int a2, int a3)
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

unint64_t sub_1000189B8()
{
  result = qword_1000666F8;
  if (!qword_1000666F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000666F8);
  }

  return result;
}

uint64_t sub_100018A0C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100042E34();
      swift_allocObject();
      sub_100042E04();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100043054();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_100018AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100013A34(&qword_100066708, &qword_100047118);
    v3 = sub_1000436F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018C04(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100018358(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018C74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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