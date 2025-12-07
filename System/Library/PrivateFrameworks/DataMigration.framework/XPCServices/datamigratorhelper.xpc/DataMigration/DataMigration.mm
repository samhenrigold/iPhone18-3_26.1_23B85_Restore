int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10000098C(*&argc);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "service starting", v5, 2u);
  }

  v4 = dispatch_time(0, 10000000000);
  dispatch_after(v4, &_dispatch_main_q, &stru_100004280);
  xpc_main(sub_1000009D4);
}

id sub_10000098C(uint64_t a1)
{
  if (qword_1000080A8 != -1)
  {
    sub_100001850();
  }

  v2 = qword_1000080A0;

  return v2;
}

void sub_1000009D4(void *a1)
{
  v1 = a1;
  v2 = sub_10000098C(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "adding connection %@", buf, 0xCu);
  }

  if (qword_1000080B8 != -1)
  {
    sub_100001864();
  }

  xpc_connection_set_target_queue(v1, qword_1000080B0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000BE8;
  handler[3] = &unk_1000042E8;
  v3 = v1;
  v7 = v3;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_resume(v3);
  v5 = sub_10000098C(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "did resume connection %@", buf, 0xCu);
  }
}

void sub_100000B64(id a1)
{
  qword_1000080A0 = os_log_create("com.apple.migration", "helper");

  _objc_release_x1();
}

void sub_100000BA8(id a1)
{
  qword_1000080B0 = dispatch_queue_create("com.apple.datamigratorhelper.connection", 0);

  _objc_release_x1();
}

void sub_100000BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 32);
  v5 = v3;
  pid = xpc_connection_get_pid(v4);
  v7 = v4;
  [@"com.apple.datamigratorhelper.core" UTF8String];
  v8 = xpc_connection_copy_entitlement_value();

  if (!v8 || (value = xpc_BOOL_get_value(v8), v8, !value))
  {
    v19 = sub_10000098C(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100001AF4(pid);
    }

    goto LABEL_15;
  }

  int64 = xpc_dictionary_get_int64(v5, "eventID");
  v12 = sub_10000098C(int64);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [NSNumber numberWithLongLong:int64];
    v14 = v13 = v5;
    v15 = [NSNumber numberWithInt:pid];
    *buf = 134218498;
    *v49 = v13;
    *&v49[8] = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handling event %p eventID %@ from client pid %@", buf, 0x20u);

    v5 = v13;
  }

  if (int64 != 3)
  {
    if (int64 == 2)
    {
      v21 = sub_10000098C(v16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1000019F8();
      }

      reboot(0);
    }

    else if (int64 == 1)
    {
      string = xpc_dictionary_get_string(v5, "message");
      v18 = sub_10000098C(string);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100001A2C();
      }

      reboot_np(3072, string);
    }

    else
    {
      v40 = sub_10000098C(v16);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_100001A60(int64);
      }
    }

    goto LABEL_15;
  }

  v43 = v5;
  v22 = sub_10000098C(v16);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10000188C();
  }

  v24 = 0;
  while (1)
  {
    v25 = sub_10000098C(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v49 = v24;
      *&v49[4] = 1024;
      *&v49[6] = 10;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Attempt %d/%d: requesting purge from logd", buf, 0xEu);
    }

    sub_100001214("Attempt %d/%d: requesting purge from logd", v24, 10);
    mach_service = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
    if (!mach_service)
    {
      v33 = sub_10000098C(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100001978(&v46, v47, v33);
      }

      sub_100001214("Failed to create connection to logd");
      goto LABEL_38;
    }

    v27 = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_100004328);
    xpc_connection_activate(v27);
    v28 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v28, "operation", 5uLL);
    xpc_dictionary_set_uint64(v28, "purge", 0xFFFFFFFFFFFFFFFFLL);
    v29 = xpc_connection_send_message_with_reply_sync(v27, v28);
    type = xpc_get_type(v29);
    if (type == &_xpc_type_dictionary)
    {
      break;
    }

    v31 = type;
    v32 = sub_10000098C(type);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000018C0(&v53, v31, &v54);
    }

    xpc_type_get_name(v31);
    sub_100001214("Non dictionary response from logd: '%s'");
LABEL_37:

LABEL_38:
    v39 = sub_10000098C(v34);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000019B8(&v44, v45, v39);
    }

    sub_100001214("Failed to purge logs via logd. Retrying after 1s");
    v23 = sleep(1u);
    if (++v24 == 10)
    {
      goto LABEL_50;
    }
  }

  v35 = xpc_dictionary_get_int64(v29, "st");
  v36 = v35;
  v37 = sub_10000098C(v35);
  v38 = v37;
  if (v36)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_10000191C(&v55, v36, &v56);
    }

    strerror(v36);
    sub_100001214("Error from logd: %s");
    goto LABEL_37;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Success from logd: deleted all logs", buf, 2u);
  }

  sub_100001214("Success from logd: deleted all logs");
  v42 = sub_10000098C(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "logd purge success", buf, 2u);
  }

  sub_100001214("logd purge success");
LABEL_50:
  sub_10000132C(@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/sysdiagnose");
  sub_10000132C(@"/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.osanalytics/Library/Logs/DiagnosticReports/DiagnosticLogs/sysdiagnose/");
  v5 = v43;
  if (dword_100008098 != -1)
  {
    close(dword_100008098);
    dword_100008098 = -1;
  }

LABEL_15:
  reply = xpc_dictionary_create_reply(v5);
  xpc_connection_send_message(v7, reply);

LABEL_16:
}

void sub_100001214(const char *a1, ...)
{
  va_start(va, a1);
  if (dword_100008098 == -1 && (v2 = open("/private/var/db/logd_cleanup_migrator.txt", 513, 438), dword_100008098 = v2, v2 == -1))
  {
    v6 = sub_10000098C(v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001B88();
    }
  }

  else
  {
    v3 = [NSString alloc];
    v4 = [NSString stringWithUTF8String:a1];
    v5 = [v3 initWithFormat:v4 arguments:va];

    v6 = [v5 stringByAppendingString:@"\n"];

    write(dword_100008098, [v6 UTF8String], [v6 length]);
  }
}

void sub_10000132C(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v32 = v1;
  v3 = [NSURL fileURLWithPath:v1 isDirectory:1];
  v4 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLNameKey, NSURLPathKey, 0];
  v33 = v2;
  v31 = v3;
  v5 = [v2 enumeratorAtURL:v3 includingPropertiesForKeys:v4 options:5 errorHandler:&stru_100004368];

  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = @"sysdiagnose";
    v34 = v5;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v7 lastPathComponent];
      if ([v10 rangeOfString:v8 options:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v8;
        v12 = v10;
        v13 = [NSSet setWithObjects:@"21N5165G", @"21N5207G", @"21N5233F", @"21N5259K", 0];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v36 objects:buf count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([v12 rangeOfString:*(*(&v36 + 1) + 8 * i) options:1] != 0x7FFFFFFFFFFFFFFFLL)
              {

                v20 = sub_10000098C(v19);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [v7 fileSystemRepresentation];
                  *buf = 136315138;
                  v41 = v21;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found problematic sysdiagnose. Deleting: %s", buf, 0xCu);
                }

                sub_100001214("Found problematic sysdiagnose. Deleting: %s", [v7 fileSystemRepresentation]);
                v35 = 0;
                [v33 removeItemAtURL:v7 error:&v35];
                v22 = v35;
                v23 = v22;
                v8 = v11;
                if (v22)
                {
                  v24 = sub_10000098C(v22);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    v28 = [v7 fileSystemRepresentation];
                    v29 = [v23 localizedDescription];
                    v30 = [v29 UTF8String];
                    *buf = 136315394;
                    v41 = v28;
                    v42 = 2080;
                    v43 = v30;
                    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to delete sysdiagnose at %s: %s", buf, 0x16u);
                  }

                  v25 = [v7 fileSystemRepresentation];
                  v26 = [v23 localizedDescription];
                  sub_100001214("Failed to delete sysdiagnose at %s: %s", v25, [v26 UTF8String]);
                }

                goto LABEL_20;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:buf count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v8 = v11;
LABEL_20:
        v5 = v34;
      }

      objc_autoreleasePoolPop(v9);
      v27 = [v5 nextObject];

      v7 = v27;
    }

    while (v27);
  }
}

BOOL sub_10000175C(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_10000098C(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100001BC8(v3);
  }

  v5 = [(NSError *)v3 localizedDescription];
  sub_100001214("Failed to enumerate sysdiagnose files: %s", [v5 UTF8String]);

  return 1;
}

void sub_1000017E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100001808(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_100001830(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1000018C0(_DWORD *a1, xpc_type_t type, const char **a3)
{
  name = xpc_type_get_name(type);
  *a1 = 136315138;
  *a3 = name;
  sub_100001830(&_mh_execute_header, v6, v7, "Non dictionary response from logd: '%s'");
}

void sub_10000191C(_DWORD *a1, int __errnum, char **a3)
{
  v5 = strerror(__errnum);
  *a1 = 136315138;
  *a3 = v5;
  sub_100001830(&_mh_execute_header, v6, v7, "Error from logd: %s");
}

void sub_100001978(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create connection to logd", buf, 2u);
}

void sub_1000019B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to purge logs via logd. Retrying after 1s", buf, 2u);
}

void sub_100001A60(uint64_t a1)
{
  v1 = [NSNumber numberWithLongLong:a1];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_1000017E8(&_mh_execute_header, v2, v3, "unknown eventID %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100001AF4(uint64_t a1)
{
  v1 = [NSNumber numberWithInt:a1];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_1000017E8(&_mh_execute_header, v2, v3, "pid %@ lacks necessary entitlement", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100001BC8(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = [v1 UTF8String];
  sub_1000017E8(&_mh_execute_header, v2, v3, "Failed to enumerate sysdiagnose files: %s", v4, v5, v6, v7, v8, DWORD2(v8));
}