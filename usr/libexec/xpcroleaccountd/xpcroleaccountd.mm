void *sub_100000A28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, ssize_t *a6)
{
  v10 = sub_100000D10(*(a2 + 96), 0xB9878750uLL);
  v11 = read(a1, v10, *(a2 + 96));
  v12 = v11;
  if (v11 != *(a2 + 96))
  {
    if (v11 && (v11 != -1 || *__error()))
    {
      _os_assumes_log();
    }

    goto LABEL_8;
  }

  v13 = xpc_create_from_plist_with_string_cache();
  v14 = v13;
  if (v13)
  {
    if (xpc_get_type(v13) != &_xpc_type_dictionary)
    {
      xpc_release(v14);
LABEL_8:
      v14 = 0;
      goto LABEL_9;
    }

    if (a5 && a6)
    {
      *a6 = v12;
      *a5 = v10;
      return v14;
    }
  }

LABEL_9:
  free(v10);
  return v14;
}

int *sub_100000B30(int *result)
{
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      if (*__error())
      {
        _os_assumes_log();
      }

      result = __error();
      if (*result == 9)
      {
        sub_1000027B4();
      }
    }
  }

  return result;
}

void *sub_100000B78(const char *a1, uint64_t a2, uint64_t a3, void *a4, ssize_t *a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = open(a1, 0);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = v9;
  memset(&v14, 0, sizeof(v14));
  v11 = fstat(v9, &v14);
  if (v11 | v14.st_uid || (v14.st_mode & 0x12) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_100000A28(v10, &v14, a2, a3, a4, a5);
  }

  sub_100000B30(v10);
  return v12;
}

uint64_t xpc_support_relax_roleaccount_policy(uint64_t a1, uint64_t a2)
{
  if (qword_10000C030 != -1)
  {
    sub_1000027D0();
  }

  return byte_10000C038;
}

void sub_100000C98(id a1)
{
  v1 = sub_100000C4C("/Library/Preferences/com.apple.security.xpc.plist");
  if (v1)
  {
    v2 = v1;
    if (xpc_dictionary_get_value(v1, "RestrictRoleAccountServices") == &_xpc_BOOL_false)
    {
      byte_10000C038 = 1;
    }

    xpc_release(v2);
  }
}

void *sub_100000D10(size_t size, malloc_type_id_t type_id)
{
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12)
    {
      v5 = *__error();
      if (v5)
      {
        sub_1000027E4(v5);
      }
    }
  }

  while (sub_100002740());
  return v4;
}

void start(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v3 = *(a2 + 8);
    if (!strcmp(v3, "-launchd"))
    {
      sub_100000EA4();
      sub_100000F44();
    }

    if (!strcmp(v3, "-boot"))
    {
      sub_100000F84();
    }

    v7 = sub_100000EA4();
    v8 = sub_100000F00(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 8);
      v10 = 136446210;
      v11 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "invoked with unknown argument: %{public}s", &v10, 0xCu);
    }
  }

  else
  {
    v5 = sub_100000EA4();
    v6 = sub_100000F00(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      LODWORD(v11) = a1;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "unexpected argument count, exiting: %d", &v10, 8u);
    }
  }

  exit(64);
}

uint64_t sub_100000EA4()
{
  result = isatty(1);
  if (result)
  {
    v1 = __stdoutp;
    v2 = getprogname();
    fprintf(v1, "%s cannot be run directly.\n", v2);
    exit(78);
  }

  return result;
}

id sub_100000F00(uint64_t a1)
{
  if (qword_10000C048 != -1)
  {
    sub_100002800();
  }

  v2 = qword_10000C040;

  return v2;
}

void sub_100000F44()
{
  mach_service = xpc_connection_create_mach_service("com.apple.xpc.roleaccountd", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100008448);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

void sub_100000F84()
{
  v5[0] = "/private/var/db/com.apple.xpc.roleaccountd.staging";
  v5[1] = 0;
  v0 = fts_open(v5, 0, 0);
  if (!v0)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    exit(74);
  }

  v1 = v0;
  v2 = fts_read(v0);
  if (v2)
  {
    v3 = v2;
    do
    {
      if (v3->fts_level && v3->fts_info != 1)
      {
        if (lchflags(v3->fts_path, 0) == -1)
        {
          __error();
          _os_assumes_log();
        }

        if (remove(v3->fts_path, v4) == -1)
        {
          __error();
          _os_assumes_log();
        }
      }

      v3 = fts_read(v1);
    }

    while (v3);
  }

  if (fts_close(v1) == -1)
  {
    __error();
    _os_assumes_log();
  }

  exit(0);
}

void sub_100001080(id a1)
{
  qword_10000C040 = os_log_create("xpcroleaccountd", "default");

  _objc_release_x1();
}

void sub_1000010C4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v5 = v2;
    pid = xpc_connection_get_pid(v5);
    v7 = xpc_connection_copy_entitlement_value();

    v9 = sub_100000F00(v8);
    v10 = v9;
    if (v7 == &_xpc_BOOL_true)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v15) = pid;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "pid[%d]: accepting incoming conncection", buf, 8u);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000012F4;
      handler[3] = &unk_100008470;
      v11 = v5;
      v13 = v11;
      xpc_connection_set_event_handler(v11, handler);
      xpc_connection_activate(v11);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v15) = pid;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "pid[%d]: refusing incoming connection - process doesn't have xpcproxy entitlements", buf, 8u);
      }

      xpc_connection_cancel(v5);
    }
  }

  else
  {
    v3 = xpc_copy_description(v2);
    v4 = sub_100000F00(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connection error: %s", buf, 0xCu);
    }

    free(v3);
  }
}

void sub_1000012F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  pid = xpc_connection_get_pid(v6);
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      v9 = reply;
      v10 = v5;
      if (xpc_dictionary_get_string(v10, "Path"))
      {
        if (xpc_dictionary_get_string(v10, "Token"))
        {
          if (sandbox_extension_consume() == -1)
          {
            v20 = sub_100000F00(-1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100002ECC();
            }

            goto LABEL_46;
          }

          v84[0] = 0;
          v11 = xpc_bundle_create();
          property = xpc_bundle_get_property();
          v82 = v11;
          if (property)
          {
            v13 = property;
            v14 = xpc_bundle_get_property();
            if (v14)
            {
              v15 = v14;
              string = xpc_bundle_copy_info_dictionary();
              v17 = string;
              if (!string)
              {
LABEL_28:
                LODWORD(v84[0]) = pid;
                v84[1] = v13;
                v84[2] = v15;
                v84[3] = string;

                v24 = sub_1000020AC("/private/var/db/com.apple.xpc.roleaccountd.staging");
                if (v24 || (v81 = v13, (v24 = sub_1000020AC("/private/var/db/com.apple.xpc.roleaccountd.staging/exec")) != 0))
                {
                  v25 = v24;
LABEL_31:
                  v23 = 0;
                  *__error() = v25;
LABEL_32:
                  v22 = v82;
                  goto LABEL_33;
                }

                v38 = sub_1000020AC("/private/var/db/com.apple.xpc.roleaccountd.staging/tmp");
                if (v38)
                {
                  v25 = v38;
                  goto LABEL_31;
                }

                bzero(__str, 0x400uLL);
                memset(buf, 0, 144);
                v40 = lstat(v15, buf);
                if (v40)
                {
                  v42 = sub_100000F00(v40);
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002884();
                  }

                  v43 = *__error();
                  if (v43)
                  {
                    goto LABEL_74;
                  }
                }

                else
                {
                  st_ino = buf[0].st_ino;
                  st_dev = buf[0].st_dev;
                  v46 = xpc_support_relax_roleaccount_policy(v40, v41);
                  v47 = &unk_100003EAF;
                  if (v46)
                  {
                    v47 = "-relaxed";
                  }

                  snprintf(__str, 0x400uLL, "%s/%d.%lld%s.xpc", "/private/var/db/com.apple.xpc.roleaccountd.staging/exec", st_dev, st_ino, v47);
                }

                memset(&v83, 0, sizeof(v83));
                if (!lstat(__str, &v83))
                {
                  v23 = sub_100001E80(v84, __str);
                  goto LABEL_32;
                }

                bzero(buf, 0x400uLL);
                memset(out, 0, sizeof(out));
                uuid_generate(out);
                memset(&v90, 0, 37);
                uuid_unparse(out, &v90);
                v48 = snprintf(buf, 0x400uLL, "%s/%s", "/private/var/db/com.apple.xpc.roleaccountd.staging/tmp", &v90);
                v49 = sub_100000F00(v48);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *v87 = 136315138;
                  v88 = buf;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "staging area for bundle: %s", v87, 0xCu);
                }

                v50 = copyfile_state_alloc();
                copyfile_state_set(v50, 6u, sub_1000022EC);
                v51 = copyfile(v13, buf, v50, 0xC800Fu);
                v52 = copyfile_state_free(v50);
                if (v51)
                {
                  v53 = sub_100000F00(v52);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002910();
                  }

                  v54 = *__error();
                  if (v54)
                  {
                    v43 = v54;
                  }

                  else
                  {
                    v43 = 79;
                  }

LABEL_74:
                  v23 = 0;
                  *__error() = v43;
                  goto LABEL_32;
                }

                v55 = xpc_bundle_create();
                path = xpc_bundle_get_path();
                if (!sub_1000023F0(path))
                {
                  goto LABEL_111;
                }

                v57 = xpc_bundle_get_info_dictionary();
                if (v57)
                {
                  cf = _CFXPCCreateCFObjectFromXPCObject();
                  if (cf)
                  {
                    v58 = CFGetTypeID(cf);
                    TypeID = CFDictionaryGetTypeID();
                    if (v58 == TypeID)
                    {

                      v60 = [cf objectForKeyedSubscript:@"XPCService"];
                      v61 = v60;
                      if (v60 && (objc_opt_class(), v60 = objc_opt_isKindOfClass(), (v60 & 1) != 0))
                      {
                        v62 = [v61 objectForKeyedSubscript:@"_RoleAccount"];
                        v63 = v62;
                        if (v62 && (objc_opt_class(), v62 = objc_opt_isKindOfClass(), (v62 & 1) != 0))
                        {
                          v64 = [v61 objectForKeyedSubscript:@"ServiceType"];
                          if (!v64)
                          {
LABEL_87:

                            v68 = sub_100000F00(v67);
                            if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                            {
                              v90.st_dev = 136315138;
                              *&v90.st_mode = __str;
                              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "moving staging area to secured destination: %s", &v90, 0xCu);
                            }

                            rename(buf, __str, v69);
                            if (!v70)
                            {
                              goto LABEL_125;
                            }

                            v71 = __error();
                            if (*v71 == 66)
                            {
                              memset(&v90, 0, sizeof(v90));
                              v72 = lstat(v81, &v90);
                              if (!v72 && (v90.st_mode & 0xF000) == 0x4000 && !v90.st_uid)
                              {
                                sub_100002290(buf);
LABEL_125:
                                v23 = xpc_bundle_create();
                                goto LABEL_112;
                              }

                              v73 = sub_100000F00(v72);
                              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                              {
                                sub_100002B5C();
                              }

                              v74 = 1;
                            }

                            else
                            {
                              v79 = sub_100000F00(v71);
                              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                              {
                                sub_100002AD8();
                              }

                              v74 = *__error();
                              if (!v74)
                              {
                                goto LABEL_125;
                              }
                            }

                            sub_100002290(buf);
                            v23 = 0;
                            *__error() = v74;
LABEL_112:

                            goto LABEL_32;
                          }

                          objc_opt_class();
                          isKindOfClass = objc_opt_isKindOfClass();
                          if (isKindOfClass)
                          {
                            v66 = [v64 isEqualToString:@"Application"];
                            if (v66)
                            {
                              goto LABEL_87;
                            }

                            v78 = sub_100000F00(v66);
                            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                            {
                              sub_100002A68();
                            }
                          }

                          else
                          {
                            v78 = sub_100000F00(isKindOfClass);
                            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                            {
                              sub_1000029F8();
                            }
                          }
                        }

                        else
                        {
                          v64 = sub_100000F00(v62);
                          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                          {
                            sub_100002B98();
                          }
                        }
                      }

                      else
                      {
                        v77 = sub_100000F00(v60);
                        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                        {
                          sub_100002C08();
                        }
                      }

                      v57 = cf;
                    }

                    else
                    {
                      v76 = sub_100000F00(TypeID);
                      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000029BC();
                      }

                      CFRelease(cf);
                    }

                    goto LABEL_110;
                  }

                  v75 = sub_100000F00(0);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002C78();
                  }
                }

                else
                {
                  v75 = sub_100000F00(0);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    sub_100002CB4();
                  }
                }

LABEL_110:
LABEL_111:

                sub_100002290(buf);
                v23 = 0;
                *__error() = 79;
                goto LABEL_112;
              }

              if (xpc_get_type(string) != &_xpc_type_dictionary)
              {
                string = 0;
                goto LABEL_28;
              }

              string = xpc_dictionary_get_string(v17, "CFBundleIdentifier");
              if (string)
              {
                goto LABEL_28;
              }

              v39 = sub_100000F00(0);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_100002814();
              }

              v21 = 109;
LABEL_26:

              v22 = v82;
              v23 = 0;
              *__error() = v21;
LABEL_33:

              v26 = *__error();
              v27 = sandbox_extension_release();
              if (v27 == -1)
              {
                v28 = sub_100000F00(v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_100002DD0();
                }
              }

              *__error() = v26;
              if (v23)
              {
                executable_path = xpc_bundle_get_executable_path();
                v30 = sub_1000023F0(executable_path);
                if (v30)
                {
                  v31 = sub_100002760(executable_path);

                  if (v31)
                  {
                    xpc_dictionary_set_string(v9, "Path", v31);
                    xpc_dictionary_set_uint64(v9, "Retval", 0);
                    v33 = sub_100000F00(v32);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                    {
                      buf[0].st_dev = 67109378;
                      *&buf[0].st_mode = pid;
                      LOWORD(buf[0].st_ino) = 2082;
                      *(&buf[0].st_ino + 2) = v31;
                      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "pid[%d]: successfully staged: %{public}s", buf, 0x12u);
                    }

LABEL_50:

                    xpc_connection_send_message(v6, v9);
                    free(v31);

                    goto LABEL_51;
                  }

LABEL_47:
                  v35 = __error();
                  xpc_dictionary_set_uint64(v9, "Retval", *v35);
                  v33 = sub_100000F00(v36);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v37 = *__error();
                    buf[0].st_dev = 67109376;
                    *&buf[0].st_mode = pid;
                    LOWORD(buf[0].st_ino) = 1024;
                    *(&buf[0].st_ino + 2) = v37;
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "pid[%d]: failed: %{errno}d", buf, 0xEu);
                  }

                  v31 = 0;
                  goto LABEL_50;
                }

                v34 = sub_100000F00(v30);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  sub_100002E5C();
                }
              }

LABEL_46:
              goto LABEL_47;
            }

            v17 = sub_100000F00(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100002CF0();
            }
          }

          else
          {
            v17 = sub_100000F00(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_100002D60();
            }
          }

          v21 = 2;
          goto LABEL_26;
        }

        v19 = sub_100000F00(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100002F74();
        }
      }

      else
      {
        v18 = sub_100000F00(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100002FE4();
        }
      }

      *__error() = 22;
      goto LABEL_46;
    }
  }

LABEL_51:
}

id sub_100001E80(int *a1, const char *a2)
{
  v4 = *(a1 + 2);
  v5 = strlen(*(a1 + 1));
  v6 = (v4 + v5 + 1);
  v7 = sub_100000F00(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *a1;
    *buf = 67109378;
    v20 = v8;
    v21 = 2082;
    v22 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "pid[%d]: secured service bundle exists: [%{public}s]", buf, 0x12u);
  }

  bzero(buf, 0x400uLL);
  v9 = snprintf(buf, 0x400uLL, "%s/%s", a2, v6);
  v10 = sub_100000F00(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *a1;
    v18.st_dev = 67109378;
    *&v18.st_mode = v11;
    LOWORD(v18.st_ino) = 2080;
    *(&v18.st_ino + 2) = buf;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "pid[%d]: secured service bundle executable: %s", &v18, 0x12u);
  }

  memset(&v18, 0, sizeof(v18));
  v12 = lstat(buf, &v18);
  if (v12)
  {
    v13 = sub_100000F00(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100003058();
    }

    v14 = 0;
  }

  else if (!v18.st_uid && (v18.st_mode & 0x40) != 0)
  {
    v14 = xpc_bundle_create();
  }

  else
  {
    v15 = sub_100000F00(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000030DC();
    }

    v16 = __error();
    v14 = 0;
    *v16 = 1;
  }

  return v14;
}

uint64_t sub_1000020AC(char *a1)
{
  if ((mkdir(a1, 0x1C0u) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = __error();
  if (*v3 == 17)
  {
    memset(&v17, 0, sizeof(v17));
    v4 = lstat(a1, &v17);
    st_mode = v17.st_mode;
    st_uid = v17.st_uid;
    v8 = v17.st_mode != 16832 || v17.st_uid != 0;
    if (!v4 && v8)
    {
      v9 = sub_100000F00(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = st_mode & 0xF000;
        v12 = st_mode & 0xFFF;
        v13 = st_uid != 0;
        v14 = v12 != 448;
        v15 = v11 != 0x4000;
        v16 = strrchr(a1, 47);
        *buf = 136315906;
        v19 = v16;
        v20 = 1024;
        v21 = v15;
        v22 = 1024;
        v23 = v14;
        v24 = 1024;
        v25 = v13;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "bad ownership/permissions on staging area (%s) (%d,%d,%d)", buf, 0x1Eu);
      }

      *__error() = 1;
      return *__error();
    }

    if ((v4 & 0x80000000) == 0)
    {
      return 0;
    }

    v10 = sub_100000F00(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000031F0(a1);
    }
  }

  else
  {
    v10 = sub_100000F00(v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100003160(a1);
    }
  }

  return *__error();
}

void sub_100002290(const char *a1)
{
  v1 = removefile(a1, 0, 1u);
  if (v1)
  {
    v2 = sub_100000F00(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100003280();
    }
  }
}

uint64_t sub_1000022EC(int a1, int a2, int a3, int a4, char *a5)
{
  if (a2 != 2)
  {
    return 0;
  }

  v13 = v5;
  v14 = v6;
  memset(&v12, 0, sizeof(v12));
  v8 = lchown(a5, 0, 0);
  if (v8)
  {
    v9 = sub_100000F00(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003308();
    }

LABEL_12:

    return 2;
  }

  v11 = lstat(a5, &v12);
  if (v11)
  {
    v9 = sub_100000F00(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000338C();
    }

    goto LABEL_12;
  }

  if ((v12.st_mode & 0xF000) == 0xA000)
  {
    v9 = sub_100000F00(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003410();
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1000023F0(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v1)
  {
    keys[0] = kMISValidationOptionAllowAdHocSigning;
    keys[1] = kMISValidationOptionTrustCacheOnly;
    values[0] = kCFBooleanTrue;
    values[1] = kCFBooleanTrue;
    v2 = CFDictionaryCreate(0, keys, values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v2)
    {
      v3 = MISValidateSignatureAndCopyInfo();
      if (v3)
      {
        v4 = sub_100000F00(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_10000344C();
        }
      }

      else
      {
        Value = CFDictionaryGetValue(0, kMISValidationInfoEntitlements);
        v7 = Value;
        if (Value && (v8 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v8 == Value))
        {
          v9 = CFDictionaryGetValue(v7, @"com.apple.private.xpc.role-account");
          if (v9 && v9 == kCFBooleanTrue)
          {
            v10 = 1;
            goto LABEL_20;
          }

          v4 = sub_100000F00(v9);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_1000034C0();
          }
        }

        else
        {
          v4 = sub_100000F00(Value);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_1000034FC();
          }
        }
      }
    }

    else
    {
      v4 = sub_100000F00(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100003538();
      }
    }
  }

  else
  {
    v5 = sub_100000F00(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100003574();
    }

    v2 = 0;
  }

  v10 = 0;
LABEL_20:
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v10;
}

void sub_100002624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100002760(const char *a1)
{
  for (i = a1; ; a1 = i)
  {
    result = strdup(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      v3 = *__error();
      if (v3)
      {
        sub_1000027E4(v3);
      }
    }

    sub_100002740();
  }

  return result;
}

void sub_1000027B4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000027E4(int a1)
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100002814()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002884()
{
  sub_100002714();
  __error();
  sub_1000026F0();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100002910()
{
  __error();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_1000029BC()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000029F8()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002A68()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002AD8()
{
  __error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100002B5C()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002B98()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002C08()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002C78()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002CB4()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100002CF0()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002D60()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002DD0()
{
  sub_100002714();
  __error();
  sub_1000026F0();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100002E5C()
{
  sub_100002724();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002ECC()
{
  sub_100002714();
  __error();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100002F74()
{
  sub_100002698();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100003058()
{
  __error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000030DC()
{
  sub_100002730();
  sub_1000026BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100003160(char *a1)
{
  strrchr(a1, 47);
  __error();
  sub_1000026CC();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000031F0(char *a1)
{
  strrchr(a1, 47);
  __error();
  sub_1000026CC();
  sub_100002688();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100003280()
{
  __error();
  sub_1000026CC();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100003308()
{
  __error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10000338C()
{
  __error();
  sub_100002730();
  sub_100002688();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100003410()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000034C0()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000034FC()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003538()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003574()
{
  sub_1000026E4();
  sub_1000026B0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}