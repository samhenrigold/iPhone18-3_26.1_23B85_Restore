void start(uint64_t a1, uint64_t a2)
{
  sub_100000BBC(a1, a2);
  v3 = sub_100000BE8(v2);
  mach_service = xpc_connection_create_mach_service("com.apple.hangtelemetryd", v3, 1uLL);

  xpc_connection_set_event_handler(mach_service, &stru_100004288);
  xpc_connection_activate(mach_service);
  v5 = dispatch_time(0, 10000000000);
  v6 = sub_100000BE8(v5);
  dispatch_after(v5, v6, &stru_1000042C8);

  dispatch_main();
}

void sub_100000BBC(uint64_t result, uint64_t a2)
{
  if (qword_100008098 != -1)
  {
    sub_100001F18();
  }
}

id sub_100000BE8(uint64_t a1)
{
  if (qword_1000080B0 != -1)
  {
    sub_100001F2C();
  }

  v2 = qword_1000080A8;

  return v2;
}

void sub_100000C2C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    v4 = sub_100001E90(type);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = xpc_connection_get_pid(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "XPC: Client started new connection: pid %d", v7, 8u);
    }

    v5 = v2;
    v6 = sub_100000BE8(v5);
    xpc_connection_set_target_queue(v5, v6);

    xpc_connection_set_event_handler(v5, &stru_100004348);
    xpc_connection_activate(v5);
  }
}

void sub_100000D3C(id a1)
{
  v1 = sub_100001E90(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Calling xpc_transaction_exit_clean() now", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100000DA8(id a1)
{
  v1 = dispatch_get_global_queue(25, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);
  v3 = qword_1000080A0;
  qword_1000080A0 = v2;

  dispatch_source_set_event_handler(qword_1000080A0, &stru_100004308);
  v4 = qword_1000080A0;

  dispatch_activate(v4);
}

void sub_100000E28(id a1)
{
  v1 = sub_100001E90(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Received SIGTERM, exiting", v2, 2u);
  }

  exit(0);
}

void sub_100000E88(id a1)
{
  qword_1000080A8 = dispatch_queue_create("com.apple.hangtelemetry", 0);

  _objc_release_x1();
}

void sub_100000EC8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = v2;
    uint64 = xpc_dictionary_get_uint64(v3, "command");
    if (uint64 == 1)
    {
      if (qword_1000080B8 != -1)
      {
        sub_100001FB4();
      }

      reply = xpc_dictionary_create_reply(v3);
      v6 = xpc_dictionary_get_remote_connection(v3);
      v7 = v6;
      if (reply && v6)
      {
        xpc_connection_send_message(v6, reply);
      }

      else
      {
        v8 = sub_100001E90(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_100001FC8();
        }
      }
    }

    else
    {
      reply = sub_100001E90(uint64);
      if (os_log_type_enabled(reply, OS_LOG_TYPE_FAULT))
      {
        sub_100001F40();
      }
    }
  }
}

void sub_100000FE4(id a1)
{
  v1 = sub_100001E10();
  v2 = v1;
  v3 = sub_100001E90(v1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000237C();
    }

    goto LABEL_55;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "New boot: Refreshing telemetry metadata and saving in settings", buf, 2u);
  }

  if (qword_1000080C8 != -1)
  {
    sub_10000205C();
  }

  v5 = word_1000080C0;
  if (qword_1000080D0 != -1)
  {
    sub_100002084();
  }

  v6 = dword_1000080D8;
  v32 = 8;
  v33 = 0;
  v7 = sysctlbyname("kern.roots_installed", &v33, &v32, 0, 0);
  v8 = v7;
  v9 = sub_100001E90(v7);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000020AC();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Installed root info kern.roots_installed: %llu", buf, 0xCu);
    }

    if (v33)
    {
      v18 = 257;
      word_1000080DC = 257;
      goto LABEL_34;
    }
  }

  if (objc_opt_class())
  {
    v11 = objc_alloc_init(DUSession);
    *buf = 0;
    v12 = [v11 openAndReturnError:buf];
    v13 = *buf;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      v19 = sub_100001E90(v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100002130();
      }

      goto LABEL_29;
    }

    v31 = 0;
    v15 = [v11 allInstalledRootsAndReturnError:&v31];
    v14 = v31;
    v16 = sub_100001E90(v14);
    v17 = v16;
    if (!v15 && v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100002198();
      }

LABEL_29:
      v18 = word_1000080DC;

      goto LABEL_34;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100002200(v15, v17);
    }

    LOBYTE(word_1000080DC) = 1;
    HIBYTE(word_1000080DC) = [v15 count] != 0;
  }

  else
  {
    word_1000080DC = 1;
  }

  v18 = word_1000080DC;
LABEL_34:
  if (qword_1000080E0 != -1)
  {
    sub_100002288();
  }

  v20 = word_1000080DE;
  v4 = objc_alloc_init(NSMutableDictionary);
  v21 = objc_alloc_init(NSMutableArray);
  [v21 addObject:@"HangTracerTelemetryBootSessionUUID"];
  if (v20)
  {
    v22 = [NSNumber numberWithBool:(v20 >> 8) & 1];
    [v4 setObject:v22 forKeyedSubscript:@"HangTracerTelemetryHaveNonDefaultFeatureFlags"];

    if ((v5 & 1) == 0)
    {
LABEL_38:
      [v21 addObject:@"HangTracerTelemetrySerialLoggingEnabled"];
      goto LABEL_41;
    }
  }

  else
  {
    [v21 addObject:@"HangTracerTelemetryHaveNonDefaultFeatureFlags"];
    if ((v5 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v23 = [NSNumber numberWithBool:(v5 >> 8) & 1];
  [v4 setObject:v23 forKeyedSubscript:@"HangTracerTelemetrySerialLoggingEnabled"];

LABEL_41:
  if (v6 < 1)
  {
    [v21 addObject:@"HangTracerTelemetryNumOSCryptexFileExtents"];
    if (v18)
    {
      goto LABEL_43;
    }

LABEL_45:
    [v21 addObject:@"HangTracerTelemetryHaveRootsInstalled"];
    goto LABEL_46;
  }

  v24 = [NSNumber numberWithInt:v6];
  [v4 setObject:v24 forKeyedSubscript:@"HangTracerTelemetryNumOSCryptexFileExtents"];

  if ((v18 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_43:
  v25 = [NSNumber numberWithBool:(v18 >> 8) & 1];
  [v4 setObject:v25 forKeyedSubscript:@"HangTracerTelemetryHaveRootsInstalled"];

LABEL_46:
  CFPreferencesSetMultiple(v4, v21, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v26 = sem_open("hangtelemetryd.onceatboot", 2560, 292, 1);
  if (v26 == -1)
  {
    v27 = __error();
    v28 = *v27;
    v29 = sub_100001E90(v27);
    v30 = v29;
    if (v28 == 17)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10000233C();
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1000022B0(v30);
    }
  }

  else
  {
    sem_close(v26);
  }

  notify_post(off_100008090);

LABEL_55:
}

void sub_10000153C(id a1)
{
  v1 = vm_page_size;
  __chkstk_darwin(a1);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1;
  v3 = sysctlbyname("kern.bootargs", v2, &v22, 0, 0);
  v4 = v22;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v22 >= v1;
  }

  if (v5)
  {
    v6 = sub_100001E90(v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000024EC();
    }
  }

  else
  {
    v2[v22] = 0;
    LOBYTE(word_1000080C0) = 1;
    if (v4 < 9)
    {
LABEL_28:
      v15 = sub_100001E90(v3);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000023B8();
      }

      v16 = 0;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v3 = strncmp(&v2[v7], "serial=", 7uLL);
        if (!v3)
        {
          break;
        }

        if (v7 < v4)
        {
          while (1)
          {
            v8 = v2[v7];
            v9 = v8 > 0x20;
            v10 = (1 << v8) & 0x100000201;
            if (!v9 && v10 != 0)
            {
              break;
            }

            if (v4 == ++v7)
            {
LABEL_26:
              v7 = v4;
              goto LABEL_27;
            }
          }
        }

        if (v7 < v4)
        {
          while (1)
          {
            v12 = v2[v7];
            v9 = v12 > 0x20;
            v13 = (1 << v12) & 0x100000201;
            if (v9 || v13 == 0)
            {
              break;
            }

            if (v4 == ++v7)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_27:
        if (v7 + 8 >= v4)
        {
          goto LABEL_28;
        }
      }

      *__error() = 0;
      v17 = strtoull(&v2[v7 + 7], 0, 0);
      v18 = __error();
      v19 = *v18;
      v20 = sub_100001E90(v18);
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000023F4();
        }

        v16 = 1;
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_10000247C();
        }

        v16 = v17 != 0;
      }
    }

    HIBYTE(word_1000080C0) = v16;
  }
}

void sub_1000017A4(id a1)
{
  v1 = +[MSUDataAccessor sharedDataAccessor];
  v18 = 0;
  v2 = [v1 copyPathForPersonalizedData:11 error:&v18];
  v3 = v18;

  if (v2)
  {
    v5 = [v2 fileSystemRepresentation];
    if (v5)
    {
      v6 = open(v5, 0, 0);
      if ((v6 & 0x80000000) != 0)
      {
        v13 = sub_100001E90(v6);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100002768();
        }

        v10 = 0;
        goto LABEL_17;
      }

      v7 = v6;
      memset(&v22, 0, sizeof(v22));
      v8 = fstat(v6, &v22);
      if (v8)
      {
        v9 = sub_100001E90(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100002570();
        }
      }

      else
      {
        st_size = v22.st_size;
        if (v22.st_size)
        {
          if (v22.st_size >= 1)
          {
            v10 = 0;
            v15 = 0;
            while (1)
            {
              v19 = 0;
              v20 = st_size - v15;
              v21 = v15;
              v16 = fcntl(v7, 65, &v19);
              if (v16)
              {
                break;
              }

              if (!v20)
              {
                v17 = sub_100001E90(v16);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  sub_10000267C();
                }

                goto LABEL_33;
              }

              v15 += v20;
              ++v10;
              if (v15 >= st_size)
              {
                goto LABEL_9;
              }
            }

            v17 = sub_100001E90(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1000025F8();
            }

LABEL_33:

            goto LABEL_9;
          }

LABEL_8:
          v10 = 0;
LABEL_9:
          v11 = close(v7);
LABEL_17:
          dword_1000080D8 = v10;
          v12 = sub_100001E90(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_1000027F0();
          }

          goto LABEL_19;
        }

        v9 = sub_100001E90(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100002700();
        }
      }

      goto LABEL_8;
    }

    v12 = sub_100001E90(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100002874();
    }
  }

  else
  {
    v12 = sub_100001E90(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000028DC();
    }
  }

LABEL_19:
}

void sub_100001A40(id a1)
{
  v1 = +[FFConfiguration shared];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 domains];
    if ([v3 count])
    {
      LOBYTE(word_1000080DE) = 1;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v4 = v3;
      v25 = [v4 countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v25)
      {
        v5 = *v35;
        v27 = v4;
        v28 = v3;
        v24 = *v35;
        do
        {
          v6 = 0;
          do
          {
            if (*v35 != v5)
            {
              objc_enumerationMutation(v4);
            }

            v26 = v6;
            v7 = *(*(&v34 + 1) + 8 * v6);
            context = objc_autoreleasePoolPush();
            v8 = [v2 featuresForDomain:v7];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v30 objects:v44 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v31;
              while (2)
              {
                for (i = 0; i != v11; i = i + 1)
                {
                  if (*v31 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v30 + 1) + 8 * i);
                  v15 = [v2 stateForFeature:v14 domain:v7 level:{4, v24}];
                  if (v15)
                  {
                    v16 = [v2 defaultStateForFeature:v14 domain:v7];
                    v17 = v16;
                    if (!v16 || (v18 = [v16 value], v16 = objc_msgSend(v15, "value"), v18 != v16))
                    {
                      v21 = sub_100001E90(v16);
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                      {
                        v22 = [v15 value];
                        v23 = [v17 value];
                        *buf = 138412802;
                        v39 = v14;
                        v40 = 2048;
                        v41 = v22;
                        v42 = 2048;
                        v43 = v23;
                        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found non-default feature flag for %@: %ld (default %ld)", buf, 0x20u);
                      }

                      HIBYTE(word_1000080DE) = 1;
                      [v2 invalidateCache];

                      objc_autoreleasePoolPop(context);
                      v2 = v27;
                      v3 = v28;
                      goto LABEL_29;
                    }
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v30 objects:v44 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

            objc_autoreleasePoolPop(context);
            v6 = v26 + 1;
            v4 = v27;
            v3 = v28;
            v5 = v24;
          }

          while ((v26 + 1) != v25);
          v25 = [v27 countByEnumeratingWithState:&v34 objects:v45 count:16];
        }

        while (v25);
      }

      v20 = sub_100001E90(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100002944();
      }
    }

    else
    {
      v20 = sub_100001E90(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100002980();
      }
    }

    [v2 invalidateCache];
LABEL_29:
  }
}

void sub_100001DD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_100001E10()
{
  v0 = sem_open("hangtelemetryd.onceatboot", 0);
  if (v0 == -1)
  {
    v1 = __error();
    if (*v1 == 2)
    {
      return 0;
    }

    v3 = sub_100001E90(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000029C0(v3);
    }
  }

  else
  {
    sem_close(v0);
  }

  return 1;
}

id sub_100001E90(uint64_t a1)
{
  if (qword_1000080F0 != -1)
  {
    sub_100002A50();
  }

  v2 = qword_1000080E8;

  return v2;
}

void sub_100001ED4(id a1)
{
  qword_1000080E8 = os_log_create("com.apple.hangtracer", &unk_10000323D);

  _objc_release_x1();
}

void sub_100001FC8()
{
  sub_100001DEC();
  v2 = 1024;
  v3 = 1;
  v4 = 2048;
  v5 = 1;
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "No reply:%d or no connection:%d for command %llu", v1, 0x18u);
}

void sub_1000020AC()
{
  __error();
  sub_100001DEC();
  sub_100001D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100002200(void *a1, NSObject *a2)
{
  [a1 count];
  sub_100001DC4();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%lu darwinup roots are installed", v3, 0xCu);
}

void sub_1000022B0(NSObject *a1)
{
  __error();
  sub_100001DEC();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "sem_open() creation failed: %{errno}d", v2, 8u);
}

void sub_10000237C()
{
  sub_100001DF8();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000023B8()
{
  sub_100001DF8();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000023F4()
{
  __error();
  sub_100001DAC();
  sub_100001D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10000247C()
{
  sub_100001DC4();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000024EC()
{
  __error();
  sub_100001DEC();
  sub_100001D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100002570()
{
  __error();
  sub_100001DAC();
  sub_100001D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000025F8()
{
  __error();
  sub_100001DEC();
  sub_100001D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000267C()
{
  sub_100001DC4();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FileExtent: 0 contigbytes fcntl() at offset %lld out of %lld", v2, 0x16u);
}

void sub_100002768()
{
  __error();
  sub_100001DAC();
  sub_100001D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000027F0()
{
  sub_100001DEC();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002944()
{
  sub_100001DF8();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000029C0(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "sem_open() failed: %{errno}d", v3, 8u);
}