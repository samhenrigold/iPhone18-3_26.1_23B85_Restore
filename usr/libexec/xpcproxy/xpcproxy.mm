uint64_t sub_100000900(uint64_t a1)
{
  v2 = getpid();

  return _kdebug_trace(a1, v2, 0, 0, 0);
}

uint64_t start(int a1, uint64_t a2)
{
  sub_100000900(570425380);
  if (_os_alloc_once_table[2] == -1)
  {
    v4 = _os_alloc_once_table[3];
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if (setenv("PATH", "/usr/bin:/bin:/usr/sbin:/sbin", 1) != -1)
  {
    if (getppid() != 1 && !sub_1000030C8())
    {
      v8 = __stdoutp;
      v9 = getprogname();
      fprintf(v8, "%s cannot be run directly.\n", v9);
      exit(78);
    }

    if (a1 <= 1)
    {
LABEL_7:
      exit(66);
    }

    v5 = pthread_self();
    pthread_getname_np(v5, byte_100010180, 0x80uLL);
    pthread_setname_np(*(a2 + 8));
    qword_100010178 = *(a2 + 8);
    sub_100000D40(0);
    if ((*(v4 + 9) & 2) != 0)
    {
      byte_100010200 = 1;
      if (a1 == 2)
      {
        sub_100004F3C(22);
      }

      sub_100004F7C(*(a2 + 8), *(a2 + 16));
    }

    else if ((*(v4 + 20) + 1) < 2)
    {
LABEL_10:
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v6, "self", 1);
      sub_100000900(570425372);
      xdict[0] = 0;
      if (!_xpc_service_routine(700, v6, xdict))
      {
        sub_100000900(570425376);
        length = 0;
        data = xpc_dictionary_get_data(xdict[0], "blob", &length);
        if (!data)
        {
          sub_100004DC8(0, 22, 0, 0x4F9u, 0, "No spawn attr blob");
        }

        if (length <= 0xF3)
        {
          sub_100004DC8(data, 22, 0, 0x503u, 0, "Insufficient spawnattr length: %zu < %lu");
        }

        v14 = data;
        value = xpc_dictionary_get_value(xdict[0], "ports");
        if (!value || (v16 = value, value = xpc_get_type(value), value != &_xpc_type_array) || (value = xpc_array_get_count(v16)) == 0)
        {
          sub_100004DC8(value, 22, 0, 0x50Bu, 0, "Special ports invalid");
        }

        type = xpc_dictionary_get_value(xdict[0], "fds");
        if (type)
        {
          v18 = type;
          type = xpc_get_type(type);
          if (type == &_xpc_type_array)
          {
            type = xpc_array_get_count(v18);
            if ((type & 1) == 0)
            {
              type = sub_100001018(v14, length - 244, v16, v18);
            }
          }
        }

        sub_100004DC8(type, 22, 0, 0x513u, 0, "fds invalid");
      }

      goto LABEL_7;
    }

    if (a1 == 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = strtol(*(a2 + 16), 0, 0);
    }

    xpc_pipe_create_from_port();
    v11 = xpc_dictionary_create(0, 0, 0);
    v12 = getpid();
    xpc_dictionary_set_int64(v11, "pid", v12);
    xpc_dictionary_set_BOOL(v11, "configurable", 1);
    xpc_dictionary_set_int64(v11, "hostpid", v10);
    v13 = xpc_pipe_simpleroutine();
    if (v13)
    {
      sub_100004DC8(v13, v13, 0, 0x4E2u, 0, "controller died");
    }

    goto LABEL_10;
  }

  length = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *xdict = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v20 = *__error();
  v22[0] = 67109120;
  v22[1] = v20;
  _os_log_send_and_compose_impl(v19, &length, xdict, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: setenv(PATH, /usr/bin:/bin:/usr/sbin:/sbin, 1) -> %{errno}d", v22, 8);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void *sub_100000D40(int a1)
{
  if (a1)
  {
    if (dlopen("/usr/lib/system/libsystem_notify.dylib", 1))
    {
      notify_set_options();
    }

    if (!dlopen("/usr/lib/system/libsystem_info.dylib", 1))
    {
LABEL_8:
      result = dlopen("/usr/lib/system/libsystem_trace.dylib", 1);
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    notify_set_options();
  }

  si_search_module_set_flags();
  si_search_module_set_flags();
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:

  return _os_trace_set_mode(256);
}

int64_t sub_100000DF8(uint64_t a1, xpc_object_t xdict, xpc_object_t *a3, int a4, uint64_t a5)
{
  if (_os_alloc_once_table[2] == -1)
  {
    v7 = _os_alloc_once_table[3];
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if (*v7 & 1) != 0 || (v7[4])
  {
    return 141;
  }

  if ((v7[41] & 1) == 0)
  {
    xpc_dictionary_set_BOOL(xdict, "pre-exec", 1);
  }

  int64 = _xpc_pipe_interface_routine();
  if (!int64)
  {
    int64 = xpc_dictionary_get_int64(0, "error");
    if (!int64)
    {
      if (_os_alloc_once_table[2] == -1)
      {
        v10 = _os_alloc_once_table[3];
      }

      else
      {
        v10 = _os_alloc_once();
      }

      if ((*(v10 + 88) & 1) == 0)
      {
        xpc_dictionary_get_audit_token();
        sub_100005A38(0);
      }

      int64 = 0;
      *a3 = 0;
    }
  }

  return int64;
}

uint64_t sub_100001018(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  bzero(v89, 0x4A8uLL);
  v8 = _xpc_spawnattr_unpack_string(a1, a2, *(a1 + 4));
  if (!v8)
  {
    sub_100004DC8(0, 22, 0, 0x2E6u, 0, "Unable to unpack program");
  }

  v9 = v8;
  if ((*(a1 + 240) & 0x300) == 0x100)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.xpc.roleaccountd", 0, 2uLL);
    xpc_connection_set_event_handler(mach_service, &stru_10000C788);
    xpc_connection_activate(mach_service);
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v11, "Path", v9);
    v12 = xpc_bundle_create();
    if (v12)
    {
      v13 = v12;
      if (xpc_bundle_get_property())
      {
        v14 = sandbox_extension_issue_file();
        if (v14)
        {
          v15 = v14;
          xpc_dictionary_set_string(v11, "Token", v14);
          free(v15);
        }
      }

      xpc_release(v13);
    }

    v16 = xpc_connection_send_message_with_reply_sync(mach_service, v11);
    if (!v16)
    {
      sub_100004DC8(0, 140, 0, 0x275u, 0, "setup_role_account no reply");
    }

    v17 = v16;
    xpc_connection_cancel(mach_service);
    type = xpc_get_type(v17);
    if (type == &_xpc_type_error)
    {
      sub_100004DC8(type, 22, 0, 0x27Au, 0, "setup_role_account reply is error");
    }

    if (!xpc_dictionary_get_value(v17, "Retval"))
    {
      sub_100004DC8(0, 153, 0, 0x27Eu, 0, "setup_role_account missing RETVAL_KEY");
    }

    uint64 = xpc_dictionary_get_uint64(v17, "Retval");
    if (uint64)
    {
      sub_100004DC8(uint64, uint64, 0, 0x283u, 0, "setup_role_account failed");
    }

    string = xpc_dictionary_get_string(v17, "Path");
    if (!string)
    {
      sub_100004DC8(0, 2, 0, 0x288u, 0, "setup_role_account missing PATH_KEY");
    }

    v9 = sub_1000047D0(string);
    if (!v9)
    {
      sub_100004DC8(0, 1, 0, 0x2ECu, 0, "Unable to setup_role_account");
    }
  }

  v80 = a3;
  v21 = a4;
  v22 = sub_100001AA8(v89, v9);
  v23 = *(a1 + 212);
  if (v23)
  {
    if (v23 > a2)
    {
      sub_100004DC8(v22, 22, 0, 0x29Au, 0, "Insufficient rlimit: %u > %zd");
    }

    v32 = *(a1 + 208);
    if (20 * v32 > a2)
    {
      sub_100004DC8(v22, 22, 0, 0x29Eu, 0, "Too many rlimits: %d");
    }

    if (v32)
    {
      v34 = 0;
      v35 = a1 + v23 + 244;
      do
      {
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v35 + 16);
        v39 = *(v35 + 18);
        v40 = *(v35 + 19);
        v83.rlim_cur = 0;
        v83.rlim_max = 0;
        if (getrlimit(v38, &v83) == -1)
        {
          v66 = __error();
          sub_100004DC8(v66, *v66, 0, 0x2ADu, 0, "getrlimit(%d)");
        }

        if (v39)
        {
          v83.rlim_max = v37;
        }

        if (v40)
        {
          v83.rlim_cur = v36;
        }

        setrlimit(v38, &v83);
        v35 += 20;
        ++v34;
      }

      while (v34 < *(a1 + 208));
    }
  }

  v24 = *(a1 + 240);
  if ((v24 & 0x100) != 0)
  {
    p_pw_name = 0;
    v26 = v21;
    v29 = v80;
    goto LABEL_63;
  }

  v25 = *(a1 + 40);
  v26 = v21;
  if ((v24 & 0x80000) != 0 && !v25)
  {
    v27 = *(a1 + 48);
    *__error() = 0;
    v28 = getpwuid(v27);
    v29 = v80;
    if (!v28)
    {
      v30 = __error();
      if (!*v30)
      {
        sub_100004DC8(v30, 114, 0, 0xABu, 0, "getpwuid(%d)");
      }

      v65 = __error();
      sub_100004DC8(v65, *v65, 0, 0xADu, 0, "getpwuid(%d)");
    }

    p_pw_name = &v28->pw_name;
    LODWORD(v91) = *(a1 + 48);
    pw_gid = v28->pw_gid;
LABEL_49:
    HIDWORD(v91) = pw_gid;
    goto LABEL_63;
  }

  v29 = v80;
  if (v25)
  {
    v33 = _xpc_spawnattr_unpack_string(a1, a2, v25);
    if (!v33)
    {
      sub_100004DC8(0, 22, 0, 0x119u, 0, "Unable to unpack username");
    }
  }

  else
  {
    v33 = 0;
  }

  v41 = *(a1 + 44);
  if (v41)
  {
    v42 = _xpc_spawnattr_unpack_string(a1, a2, v41);
    if (!v42)
    {
      sub_100004DC8(0, 22, 0, 0x121u, 0, "Unable to unpack group");
    }
  }

  else
  {
    v42 = 0;
  }

  if (v42)
  {
    v44 = v33 == 0;
  }

  else
  {
    v44 = 0;
  }

  if (v44)
  {
    v33 = "root";
  }

  if (v42 | v33)
  {
    *__error() = 0;
    v45 = getpwnam(v33);
    if (!v45)
    {
      if (!*__error())
      {
        v46 = sub_100005840(a1, v33, 0);
        v47 = __error();
        sub_100004DC8(v47, 114, *v47, 0xD6u, v46, "getpwnam(%s)");
      }

      v70 = __error();
      sub_100004DC8(v70, *v70, 0, 0xD8u, 0, "getpwnam(%s)");
    }

    p_pw_name = &v45->pw_name;
    v91 = *&v45->pw_uid;
    if (v42)
    {
      *__error() = 0;
      v67 = getgrnam(v42);
      if (!v67)
      {
        if (!*__error())
        {
          v68 = sub_100005840(a1, 0, v42);
          v69 = __error();
          sub_100004DC8(v69, 114, *v69, 0xF8u, v68, "getgrnam(%s)");
        }

        v71 = __error();
        sub_100004DC8(v71, *v71, 0, 0xFAu, 0, "getgrnam(%s)");
      }

      pw_gid = v67->gr_gid;
      goto LABEL_49;
    }
  }

  else
  {
    p_pw_name = 0;
  }

LABEL_63:
  sub_100001B4C(v89, a1, a2, p_pw_name);
  sub_100002BD0(v89, a1, a2, v29);
  sub_100002D90(v89, v26);
  v48 = sub_100002F1C(v89, a1, a2, 0, 0);
  if (v48)
  {
    LODWORD(v26) = v48;
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v81 = 134217984;
    v82 = v26;
    _os_log_send_and_compose_impl(v72, &v88, &v83, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: launch_spawnctx_update_spawn_constraint(&ctx, attr, xtra, ((void*)0), 0) -> %llu", &v81);
    v55 = _os_crash_msg();
    __break(1u);
    goto LABEL_102;
  }

  v49 = *(a1 + 104);
  if (v49)
  {
    v50 = _xpc_spawnattr_unpack_string(a1, a2, v49);
    sub_100005654(v50);
  }

  if ((*(a1 + 241) & 0x40) != 0)
  {
    umask(*(a1 + 52));
  }

  v51 = *(a1 + 64);
  if (v51)
  {
    v52 = _xpc_spawnattr_unpack_string(a1, a2, v51);
    if (chdir(v52) == -1)
    {
      v53 = __error();
      sub_100004DC8(v53, *v53, 0, 0x3B1u, 0, "Unable to set current working directory. path = %s");
    }
  }

  v54 = *(a1 + 240);
  if ((v54 & 4) != 0)
  {
    v55 = setiopolicy_np(0, 0, 3);
    if (!v55)
    {
      v54 = *(a1 + 240);
      goto LABEL_74;
    }

LABEL_102:
    v73 = v55;
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    v81 = 134217984;
    v82 = v73;
    _os_log_send_and_compose_impl(v74, &v88, &v83, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: setiopolicy_np(0, 0, 3) -> %llu", &v81);
    v56 = _os_crash_msg();
    __break(1u);
    goto LABEL_106;
  }

LABEL_74:
  if ((v54 & 8) != 0)
  {
    LODWORD(v26) = 2;
    v56 = setiopolicy_np(0, 2, 3);
    if (v56)
    {
LABEL_106:
      v75 = v56;
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v76 = (v26 + 1);
      }

      else
      {
        v76 = v26;
      }

      v81 = 134217984;
      v82 = v75;
      _os_log_send_and_compose_impl(v76, &v88, &v83, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: setiopolicy_np(0, 2, 3) -> %llu", &v81);
      v57 = _os_crash_msg();
      __break(1u);
      goto LABEL_110;
    }
  }

  if (*(a1 + 112) != 1792 || (v57 = posix_spawnattr_setprocesstype_np()) == 0)
  {
    pthread_setname_np(byte_100010180);
    if ((*(a1 + 240) & 0x1000) != 0)
    {
      v58 = &posix_spawnp;
    }

    else
    {
      v58 = &_posix_spawn;
    }

    sub_100002840(v89, 64, 0);
    sub_100000900(570425384);
    v59 = (v58)(0, v92, &v90, v89, v93, v94);
    v60 = v59;
    if (v59 <= 0x14 && ((1 << v59) & 0x102004) != 0)
    {
      v59 = v92;
      if (*v92 == 47)
      {
        v59 = access(v92, 1);
        if (v59 == -1)
        {
          __error();
          v61 = sub_1000057C4(a1, v92, 0);
          v62 = v92;
          v63 = xpc_strerror();
          sub_100004DC8(v63, 111, v60, 0x440u, v61, "access(%s, X_OK) failed with errno %d - %s", v62);
        }
      }
    }

    else if (v59 == 86)
    {
      v64 = sub_1000057C4(a1, v92, 1);
      sub_100004DC8(v64, 111, 86, 0x424u, v64, "posix_spawn(%s) EBADARCH", v92);
    }

    sub_100004DC8(v59, v60, 0, 0x446u, 0, "posix_spawn(%s)");
  }

LABEL_110:
  v77 = v57;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v83 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v78 = 3;
  }

  else
  {
    v78 = 2;
  }

  v81 = 134217984;
  v82 = v77;
  _os_log_send_and_compose_impl(v78, &v88, &v83, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawnattr_setprocesstype_np(&ctx.psattr, 0x00000700) -> %llu", &v81);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

const char *_xpc_spawnattr_unpack_string(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a1 + a3 + 244);
  if (strnlen(v3, a2 - a3) + 1 <= a2 - a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001AA8(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x4A8uLL);
  *(a1 + 1128) = 0x6400000064;
  if (posix_spawnattr_init(a1))
  {
    sub_100005B88(&v5, v6);
  }

  result = posix_spawn_file_actions_init((a1 + 8));
  if (result)
  {
    sub_100005BF4(&v5, v6);
  }

  *(a1 + 1136) = a2;
  return result;
}

uint64_t sub_100001B4C(uint64_t a1, uint64_t a2, unint64_t a3, const char **a4)
{
  if (!*(a1 + 1136))
  {
    sub_100004DC8(a1, 22, 0, 0x245u, 0, "Missing program");
  }

  v8 = *(a2 + 108);
  v9 = *(a2 + 240);
  if (setsid() == -1)
  {
    sub_100006A10(v68, __str);
  }

  if (v8)
  {
    v10 = 16512;
  }

  else
  {
    v10 = 0x4000;
  }

  v11 = *(a2 + 240);
  v12 = v11 >> 7;
  if (MEMORY[0xFFFFF4084])
  {
    v13 = (v11 >> 7) & 0x100;
  }

  else
  {
    v13 = 0;
  }

  if ((v11 & 0x10000) != 0 && posix_spawnattr_disable_ptr_auth_a_keys_np())
  {
    sub_100005D38(v68, __str);
  }

  if (*(a2 + 202) && posix_spawnattr_set_use_sec_transition_shims_np())
  {
    sub_100005DA4(v68, __str);
  }

  sub_100002840(a1, v12 & 0x8000 | (v9 >> 9) & 0x200 | v10 | v13 | *(a2 + 242) & 0x800, 0);
  v14 = _xpc_spawnattr_binprefs_unpack(a2, a3);
  if (v14)
  {
    v15 = v14;
    xpc_binprefs_set_psattr(v14, a1);
    free(v15);
  }

  v16 = *(a2 + 204);
  if (v16 && posix_spawnattr_set_qos_class_np(a1, v16))
  {
    sub_100005E10(v68, __str);
  }

  v17 = *(a2 + 240);
  if ((v17 & 0x200000) != 0)
  {
    if ((*(a2 + 232) != 100 || *(a2 + 228)) && posix_spawnattr_setcpumonitor())
    {
      sub_100005E7C(v68, __str);
    }
  }

  else if ((v17 & 2) != 0)
  {
    if (posix_spawnattr_setcpumonitor_default())
    {
      sub_100005EE8(v68, __str);
    }
  }

  else if ((v17 & 1) == 0 && posix_spawnattr_setcpumonitor_default())
  {
    sub_100005EE8(v68, __str);
  }

  if (posix_spawnattr_setjetsam_ext())
  {
    sub_100005F54(v68, __str);
  }

  if (posix_spawnattr_set_threadlimit_ext())
  {
    sub_100005FC0(v68, __str);
  }

  if (posix_spawnattr_set_max_addr_np())
  {
    sub_10000602C(v68, __str);
  }

  if (posix_spawnattr_set_portlimits_ext())
  {
    sub_100006098(v68, __str);
  }

  if (posix_spawnattr_set_filedesclimit_ext())
  {
    sub_100006104(v68, __str);
  }

  if (posix_spawnattr_set_kqworklooplimit_ext())
  {
    sub_100006170(v68, __str);
  }

  if (posix_spawnattr_set_conclavememlimit_ext())
  {
    sub_1000061DC(v68, __str);
  }

  if ((*(a2 + 243) & 2) != 0 && posix_spawnattr_set_max_addr_np())
  {
    sub_100006248(v68, __str);
  }

  if (posix_spawnattr_set_crash_behavior_np())
  {
    sub_1000062B4(v68, __str);
  }

  if (posix_spawnattr_set_crash_behavior_deadline_np())
  {
    sub_100006320(v68, __str);
  }

  if (posix_spawnattr_set_launch_type_np())
  {
    sub_10000638C(v68, __str);
  }

  if (posix_spawnattr_set_crash_count_np())
  {
    sub_1000063F8(v68, __str);
  }

  if (posix_spawnattr_set_darwin_role_np())
  {
    sub_100006464(v68, __str);
  }

  v18 = *(a2 + 233);
  if (v18 == 1)
  {
    if (posix_spawnattr_setdataless_iopolicy_np())
    {
      sub_1000064D0(v68, __str);
    }
  }

  else if (v18 == 2 && posix_spawnattr_setdataless_iopolicy_np())
  {
    sub_10000653C(v68, __str);
  }

  v19 = *(a2 + 80);
  if (!v19)
  {
    v22 = *(a2 + 84);
    if (!v22)
    {
      goto LABEL_61;
    }

    v21 = 0;
LABEL_53:
    if (!_xpc_spawnattr_unpack_string(a2, a3, v22))
    {
      sub_100004DC8(a1, 22, 0, 0x88u, 0, "Unable to unpack sandbox profile");
    }

    sandbox_spawnattrs_init();
    if (sandbox_spawnattrs_setprofilename() == -1)
    {
      sub_100006698(v68, __str);
    }

    if (!v21)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v20 = _xpc_spawnattr_unpack_string(a2, a3, v19);
  if (!v20)
  {
    sub_100004DC8(a1, 22, 0, 0x7Fu, 0, "Unable to unpack container_id");
  }

  v21 = v20;
  v22 = *(a2 + 84);
  if (v22)
  {
    goto LABEL_53;
  }

  sandbox_spawnattrs_init();
LABEL_56:
  if (sandbox_spawnattrs_setcontainer() == -1)
  {
    sub_1000065A8(v68, __str);
  }

LABEL_57:
  if (posix_spawnattr_setmacpolicyinfo_np())
  {
    sub_10000662C(v68, __str);
  }

LABEL_61:
  v23 = *(a2 + 88);
  if (v23)
  {
    _xpc_spawnattr_unpack_string(a2, a3, v23);
    if (posix_spawnattr_set_subsystem_root_path_np())
    {
      sub_10000671C(v68, __str);
    }
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    v25 = sub_100002980(8 * v24 + 8, 0x14382343uLL);
    *(a1 + 1144) = v25;
    if (!_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 20), v25, *(a2 + 16)))
    {
      sub_100004DC8(a1, 22, 0, 0x21Au, 0, "Unable to unpack argv");
    }

    v26 = (*(a1 + 1144) + 8 * *(a2 + 16));
  }

  else
  {
    v27 = sub_100002980(0x10uLL, 0xC1E8D02EuLL);
    *(a1 + 1144) = v27;
    *v27 = *(a1 + 1136);
    v26 = v27 + 1;
  }

  *v26 = 0;
  v28 = sub_100002980(8 * *(a2 + 24) + 56, 0xE4322039uLL);
  *(a1 + 1160) = v28;
  v29 = *(a2 + 24);
  if (v29)
  {
    if (!_xpc_spawnattr_unpack_strings(a2, a3, *(a2 + 28), v28, v29))
    {
      sub_100004DC8(a1, 22, 0, 0x236u, 0, "Unable to unpack environment");
    }

    *(a1 + 1152) = *(a2 + 24);
  }

  v30 = *(a2 + 240);
  v31 = 9;
  if ((v30 & 0x20) == 0)
  {
    v31 = 1;
  }

  if ((v30 & 0x800) != 0)
  {
    v31 = 25;
  }

  v32 = vandq_s8(vshlq_u32(vdupq_n_s32(v30), xmmword_1000077D0), xmmword_1000077E0);
  *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  sub_100002AD0(a1, "XXXXXXXX%s=%llx", "XPC_FLAGS", v31 | v32.i32[0] | (v30 << 11) & 0x8000 | v32.i32[1]);
  if (*(a1 + 1128) != -101)
  {
    if (!a4)
    {
      sub_100004DC8(a1, 22, 0, 0x163u, 0, "Unable to setup identify", v62, v63);
    }

    v33 = sub_100002AD0(a1, "XXXXXXXX%s=%s", "LOGNAME", *a4);
    *(a1 + 1120) = v33 + 8;
    sub_100002AD0(a1, "XXXXXXXX%s=%s", "USER", v33 + 8);
    sub_100002AD0(a1, "XXXXXXXX%s=%s", "HOME", a4[6]);
    sub_100002AD0(a1, "XXXXXXXX%s=%s", "SHELL", a4[7]);
    v34 = *(a1 + 1128);
    if (v34 >= 0x1F5 && v34 != -2)
    {
      sub_100002AD0(a1, "XXXXXXXX%s=%s/tmp", "TMPDIR", a4[6]);
    }

    if (setlogin(*(a1 + 1120)))
    {
      v35 = *__error();
      sub_100004DC8(a1, v35, 0, 0x17Bu, 0, "setlogin(%s)");
    }

    if (setgid(*(a1 + 1132)))
    {
      v36 = *__error();
      sub_100004DC8(a1, v36, 0, 0x182u, 0, "setgid(%d)");
    }

    if ((*(a2 + 241) & 0x20) == 0)
    {
      v37 = initgroups(*(a1 + 1120), *(a1 + 1132));
      if (v37)
      {
        sub_100004DC8(a1, v37, 0, 0x18Cu, 0, "initgroups(%s, %d)");
      }
    }

    if (setuid(*(a1 + 1128)))
    {
      v38 = *__error();
      sub_100004DC8(a1, v38, 0, 0x191u, 0, "setuid(%d)");
    }
  }

  v39 = xpc_dictionary_create(0, 0, 0);
  if (*(a1 + 1152))
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = *(*(a1 + 1160) + 8 * v40);
      v43 = strchr(v42, 61);
      if (v43)
      {
        v44 = v43 == v42;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        sub_100004DC8(a1, 22, 0, 0x1D1u, 0, "Invalid environment[%zd]: %s", v40, v42);
      }

      v45 = sub_100002B38(v42, v43 - v42);
      if (!xpc_dictionary_get_value(v39, v45))
      {
        xpc_dictionary_set_BOOL(v39, v45, 1);
        *(*(a1 + 1160) + 8 * v41++) = v42;
      }

      free(v45);
      ++v40;
    }

    while (v40 < *(a1 + 1152));
  }

  else
  {
    v41 = 0;
  }

  xpc_release(v39);
  *(a1 + 1152) = v41;
  *(*(a1 + 1160) + 8 * v41) = 0;
  v46 = *(a2 + 64);
  if (v46)
  {
    v47 = _xpc_spawnattr_unpack_string(a2, a3, v46);
    if (!v47)
    {
      sub_100004DC8(a1, 22, 0, 0xE1u, 0, "Unable to unpack cwd", v62);
    }
  }

  else
  {
    v47 = "/";
  }

  v48 = *(a2 + 68);
  if (v48)
  {
    v49 = _xpc_spawnattr_unpack_string(a2, a3, v48);
    if (!v49)
    {
      sub_100004DC8(a1, 22, 0, 0xF2u, 0, "Unable to unpack stdin", v62);
    }

    v50 = v49;
    bzero(__str, 0x400uLL);
    if (*v50 != 47)
    {
      v64 = v50;
      v50 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v47, v64);
    }

    v51 = sub_100004CA8(v50);
    if (v51)
    {
      sub_100004DC8(a1, v51, 0, 0xFEu, 0, "Unable to create stdin directory (%s)");
    }

    if (posix_spawn_file_actions_addopen((a1 + 8), 0, v50, 131584, 0x1B6u))
    {
      sub_100006788(&v67, v68);
    }
  }

  else if (posix_spawn_file_actions_addopen((a1 + 8), 0, "/dev/null", 0x20000, 0x1B6u))
  {
    sub_1000067F4(v68, __str);
  }

  v52 = *(a2 + 72);
  if (v52)
  {
    v53 = _xpc_spawnattr_unpack_string(a2, a3, v52);
    if (!v53)
    {
      sub_100004DC8(a1, 22, 0, 0x10Du, 0, "Unable to unpack stdout", v62);
    }

    v54 = v53;
    bzero(__str, 0x400uLL);
    if (*v54 != 47)
    {
      v65 = v54;
      v54 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v47, v65);
    }

    v55 = sub_100004CA8(v54);
    if (v55)
    {
      sub_100004DC8(a1, v55, 0, 0x119u, 0, "Unable to create stdout directory (%s)");
    }

    if (posix_spawn_file_actions_addopen((a1 + 8), 1, v54, 131594, 0x1B6u))
    {
      sub_100006860(&v67, v68);
    }
  }

  else if (posix_spawn_file_actions_addopen((a1 + 8), 1, "/dev/null", 131074, 0x1B6u))
  {
    sub_1000068CC(v68, __str);
  }

  v56 = *(a2 + 76);
  if (v56)
  {
    v57 = _xpc_spawnattr_unpack_string(a2, a3, v56);
    if (!v57)
    {
      sub_100004DC8(a1, 22, 0, 0x128u, 0, "Unable to unpack stderr");
    }

    v58 = v57;
    bzero(__str, 0x400uLL);
    if (*v58 != 47)
    {
      v66 = v58;
      v58 = __str;
      snprintf(__str, 0x400uLL, "%s/%s", v47, v66);
    }

    v59 = sub_100004CA8(v58);
    if (v59)
    {
      sub_100004DC8(a1, v59, 0, 0x134u, 0, "Unable to create stderr directory (%s)");
    }

    if (posix_spawn_file_actions_addopen((a1 + 8), 2, v58, 131594, 0x1B6u))
    {
      sub_100006938(&v67, v68);
    }
  }

  else if (posix_spawn_file_actions_addopen((a1 + 8), 2, "/dev/null", 131074, 0x1B6u))
  {
    sub_1000069A4(v68, __str);
  }

  if ((*(a2 + 242) & 2) != 0)
  {
    v60 = *(a1 + 1128);
    if (!v60 || v60 == -101)
    {
      sub_100004DC8(a1, 1, 0, 0x307u, 0, "extensions cannot run as root");
    }
  }

  return 0;
}

uint64_t sub_100002840(posix_spawnattr_t *a1, __int16 a2, __int16 a3)
{
  v8 = 0;
  if (posix_spawnattr_getflags(a1, &v8))
  {
    sub_100005C60(&v7, v9);
  }

  v8 = v8 & ~a3 | a2;
  result = posix_spawnattr_setflags(a1, v8);
  if (result)
  {
    sub_100005CCC(&v7, v9);
  }

  return result;
}

uint64_t _xpc_spawnattr_binprefs_unpack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2 || a2 - *(a1 + 36) < 8 * v2)
  {
    return 0;
  }

  xpc_binprefs_alloc();
  v4 = v5;
  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = (*(a1 + 36) + a1 + 248);
    do
    {
      xpc_binprefs_add(v4, *(v7 - 1), *v7);
      ++v6;
      v7 += 2;
    }

    while (v6 < *(a1 + 32));
  }

  return v4;
}

void *sub_100002980(size_t size, malloc_type_id_t type_id)
{
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      sub_100005920(&v6, v7);
    }
  }

  while (sub_100004764());
  return v4;
}

const char *_xpc_spawnattr_unpack_strings(uint64_t a1, unint64_t a2, unsigned int a3, const char **a4, uint64_t a5)
{
  if (a3 >= a2)
  {
    return 0;
  }

  v5 = a5;
  if (!a5)
  {
    return *a4;
  }

  v7 = a3;
  v9 = a1 + 244;
  for (i = a4; ; ++i)
  {
    v11 = (v9 + v7);
    v12 = strnlen(v11, a2 - v7);
    if (v12 + 1 > a2 - v7)
    {
      break;
    }

    v7 += v12 + 1;
    *i = v11;
    if (!--v5)
    {
      return *a4;
    }
  }

  return 0;
}

char *sub_100002AD0(void *a1, const char *a2, ...)
{
  va_start(va, a2);
  v7[0] = 0;
  va_copy(&v7[1], va);
  vasprintf(v7, a2, va);
  v3 = v7[0];
  *v7[0] = a1[148];
  a1[148] = v3;
  result = v3 + 8;
  v5 = a1[145];
  v6 = a1[144];
  a1[144] = v6 + 1;
  *(v5 + 8 * v6) = result;
  return result;
}

char *sub_100002B38(const char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  while (1)
  {
    result = strndup(a1, a2);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_1000059CC(&v5, v6);
      }
    }

    sub_100004764();
    a1 = v3;
    a2 = v2;
  }

  return result;
}

uint64_t sub_100002BD0(posix_spawnattr_t *a1, uint64_t a2, uint64_t a3, xpc_object_t xarray)
{
  v4 = *(a2 + 224);
  if (v4)
  {
    v7 = *(a2 + 220);
    v8 = 4 * v4;
    if (v8 > a3 - v7)
    {
      sub_100004DC8(a1, 22, 0, 0x323u, 0, "No space for special ports: %zu > (%zu - %d)", v8);
    }

    v10 = 0;
    v11 = 0;
    v12 = a2 + v7 + 244;
    do
    {
      xpc_array_get_value(xarray, v11);
      right = xpc_mach_send_get_right();
      v14 = right;
      if (right - 1 >= 0xFFFFFFFE)
      {
        sub_100004DC8(a1, 22, 0, 0x32Cu, 0, "Invalid special port[%zd]: %d");
      }

      v15 = *(v12 + 4 * v11);
      if ((v15 - 128) > 2)
      {
        if (v15 == 4)
        {
          if ((*(a2 + 243) & 4) != 0)
          {
            v14 = 0;
          }

          else
          {
            v14 = right;
          }
        }

        if (posix_spawnattr_setspecialport_np(a1, v14, v15))
        {
          sub_100006A94(&v19, v18);
        }
      }

      else
      {
        v20 = 0;
        v19 = 0;
        if (v15 - 129 <= 1)
        {
          if (v10)
          {
            sub_100004DC8(a1, 22, 0, 0x33Au, 0, "Already registered ports");
          }

          LODWORD(v19) = right;
          v10 = 1;
          if (posix_spawnattr_set_registered_ports_np())
          {
            sub_100006B00(&v17, v18);
          }
        }
      }

      ++v11;
    }

    while (v11 < *(a2 + 224));
  }

  return 0;
}

size_t sub_100002D90(uint64_t a1, xpc_object_t xarray)
{
  result = xpc_array_get_count(xarray);
  if (result)
  {
    v5 = 0;
    do
    {
      value = xpc_array_get_value(xarray, v5 + 1);
      if (xpc_get_type(value) != &_xpc_type_int64)
      {
        sub_100004DC8(a1, 9, 0, 0x366u, 0, "setup_fds bad int type");
      }

      v7 = xpc_int64_get_value(value);
      if (v7 < 0 || getdtablesize() <= v7)
      {
        getdtablesize();
        sub_100004DC8(a1, 9, 0, 0x36Au, 0, "setup_fds bad dest: %d table: %d");
      }

      v8 = xpc_array_get_value(xarray, v5);
      if (xpc_get_type(v8) != &_xpc_type_fd)
      {
        sub_100004DC8(a1, 9, 0, 0x36Fu, 0, "setup_fds bad fd type");
      }

      _xpc_fd_get_port();
      if (posix_spawn_file_actions_add_fileportdup2_np())
      {
        sub_100006B6C(&v9, v10);
      }

      v5 += 2;
    }

    while (v5 < xpc_array_get_count(xarray));
    return 0;
  }

  return result;
}

uint64_t sub_100002F1C(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5)
{
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = _xpc_spawnattr_unpack_bytes(a2, a3, *(a2 + 8), v8);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (a4 && a5)
  {
    if (v11)
    {
      v12 = sub_1000037AC(a4, a5, v9, v8);
      if (!v12)
      {
        sub_100004DC8(a1, 22, 0, 0x3ABu, 0, "Unable to merge spawn constraints");
      }

      v13 = v12;
      length = xpc_data_get_length(v12);
      *(a1 + 1176) = length;
      v15 = sub_100002980(length, 0x478D6232uLL);
      *(a1 + 1168) = v15;
      bytes = xpc_data_get_bytes(v13, v15, 0, *(a1 + 1176));
      v17 = *(a1 + 1176);
      xpc_release(v13);
      if (bytes != v17)
      {
        sub_100004DC8(a1, 22, 0, 0x3B0u, 0, "Unable to copy merged spawn constraints");
      }
    }

    else
    {
      *(a1 + 1168) = sub_100004784(a4, a5);
      *(a1 + 1176) = a5;
    }
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    *(a1 + 1168) = sub_100004784(v9, v8);
    *(a1 + 1176) = v8;
  }

  result = amfi_launch_constraint_set_spawnattr();
  if (result)
  {
    sub_100006BD8(&v19, v20);
  }

  return result;
}

BOOL sub_1000030C8()
{
  v0 = byte_100010170;
  if (!byte_100010170)
  {
    v1 = getpid();
    if (sub_100003114(v1))
    {
      v0 = 2;
    }

    else
    {
      v0 = 1;
    }

    byte_100010170 = v0;
  }

  return v0 == 2;
}

uint64_t sub_100003114(int a1)
{
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  if (!sub_1000058E0(a1, v2))
  {
    return (v3 >> 1) & 1;
  }

  _os_assumes_log();
  return 0;
}

uint64_t sub_1000031A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double sub_1000031CC(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1000031F0(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  empty = xpc_array_create_empty();
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10000337C;
  applier[3] = &unk_10000C628;
  applier[4] = &v12;
  xpc_dictionary_apply(a1, applier);
  count = xpc_array_get_count(v13[3]);
  do
  {
    if (count < 2)
    {
      break;
    }

    v3 = 0;
    for (i = 1; i != count; ++i)
    {
      value = xpc_array_get_value(v13[3], i - 1);
      v6 = xpc_array_get_value(v13[3], i);
      string_ptr = xpc_string_get_string_ptr(value);
      v8 = xpc_string_get_string_ptr(v6);
      if (strcmp(string_ptr, v8) >= 1)
      {
        xpc_retain(value);
        xpc_array_set_value(v13[3], i - 1, v6);
        xpc_array_set_value(v13[3], i, value);
        xpc_release(value);
        v3 = i;
      }
    }

    count = v3;
  }

  while (v3);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

xpc_object_t sub_1000033AC(int64_t a1, int64_t a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "vers", a1);
  xpc_dictionary_set_int64(empty, "comp", 1);
  xpc_dictionary_set_int64(empty, "ccat", a2);
  if (object)
  {
    xpc_dictionary_set_value(empty, "reqs", object);
  }

  return empty;
}

xpc_object_t sub_10000345C(void *a1)
{
  if (xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    return 0;
  }

  empty = xpc_array_create_empty();
  if (sub_100003948(a1, empty))
  {
    v3 = sub_1000035C8(empty);
    count = xpc_array_get_count(empty);
    sub_10000366C(v3, count);
    xpc_release(empty);
    return 0;
  }

  if (!empty)
  {
    return 0;
  }

  v7 = sub_1000035C8(empty);
  xpc_array_get_count(empty);
  v5 = 0;
  if (CESizeSerialization() == kCENoError)
  {
    v8 = sub_100002980(0, 0x62CB2CE0uLL);
    if (CESerializeWithOptions() == kCENoError)
    {
      v5 = xpc_data_create(v8, 0);
    }

    else
    {
      v5 = 0;
    }

    free(v8);
  }

  v9 = xpc_array_get_count(empty);
  sub_10000366C(v7, v9);
  xpc_release(empty);
  return v5;
}

size_t sub_1000035C8(void *a1)
{
  result = xpc_array_get_count(a1);
  if (result >> 59)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_100002980(32 * result, 0x14D3B917uLL);
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100003FF4;
    applier[3] = &unk_10000C698;
    applier[4] = v3;
    xpc_array_apply(a1, applier);
    return v3;
  }

  return result;
}

void sub_10000366C(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1 + 1;
    do
    {
      if (*(v4 - 1) == 3)
      {
        free(*v4);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

xpc_object_t sub_1000036D4(uint64_t a1, uint64_t a2)
{
  v13 = 0uLL;
  v14 = 0;
  v12 = 1;
  v2 = CEValidateWithOptions();
  result = 0;
  if (v2 == kCENoError)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v13;
    *&v5 = v14;
    if (CEAcquireUnmanagedContext() == kCENoError)
    {
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v7 = v11;
      return sub_100004150(&v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t sub_1000037AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v15 + 1) = 0;
  v6 = sub_1000038D0(a1, a2, &v15 + 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *&v15 = 0;
  v8 = sub_1000038D0(a3, a4, &v15);
  if (v8)
  {
    v9 = v8;
    if (v15 == 0)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(empty, "$and", v9);
      v12 = xpc_dictionary_create_empty();
      xpc_dictionary_set_value(v12, "$and", v7);
      xpc_dictionary_set_value(v12, "$or", empty);
      xpc_release(empty);
      v13 = sub_1000033AC(1, 0, v12);
      xpc_release(v12);
      v10 = sub_10000345C(v13);
      xpc_release(v13);
    }

    else
    {
      v10 = 0;
    }

    xpc_release(v7);
  }

  else
  {
    v10 = 0;
    v9 = v7;
  }

  xpc_release(v9);
  return v10;
}

xpc_object_t sub_1000038D0(uint64_t a1, uint64_t a2, int64_t *a3)
{
  v4 = sub_1000036D4(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  value = xpc_dictionary_get_value(v4, "reqs");
  v7 = value;
  if (value)
  {
    xpc_retain(value);
  }

  *a3 = xpc_dictionary_get_int64(v5, "ccat");
  xpc_release(v5);
  return v7;
}

uint64_t sub_100003948(void *a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 4;
  v4 = sub_1000031F0(a1);
  v14 = 0;
  v15 = 0;
  bytes = 7;
  v13 = 0;
  xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_100003A64;
  applier[3] = &unk_10000C650;
  applier[5] = a2;
  applier[6] = a1;
  applier[4] = &v8;
  xpc_array_apply(v4, applier);
  xpc_release(v4);
  v5 = *(v9 + 6);
  if (!v5)
  {
    v14 = 0;
    v15 = 0;
    bytes = 8;
    v13 = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t sub_100003A64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v21 = 0;
  v22 = 0;
  bytes = 5;
  v20 = 0;
  xpc_array_set_data(v5, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  string_ptr = xpc_string_get_string_ptr(a3);
  v16[3] = 0;
  v16[0] = 3;
  v16[1] = sub_1000047D0(string_ptr);
  v16[2] = xpc_string_get_length(a3);
  xpc_array_set_data(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v16, 0x20uLL);
  v7 = *(a1 + 48);
  v8 = xpc_string_get_string_ptr(a3);
  value = xpc_dictionary_get_value(v7, v8);
  if (value)
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100003C9C(value, *(a1 + 40));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      bytes = 0;
      v20 = 0;
      v17 = 0;
      v18 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        v20 = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        shared_cache_range = _dyld_get_shared_cache_range();
      }

      else
      {
        shared_cache_range = 0;
        v17 = 0;
        v18 = 0;
      }

      v14 = xpc_string_get_string_ptr(a3);
      _os_log_simple(&_mh_execute_header, &bytes, &v17, shared_cache_range, 16, 0, "failed to serialized value for key: %s", v14);
      return 0;
    }

    else
    {
      v12 = *(a1 + 40);
      v21 = 0;
      v22 = 0;
      bytes = 6;
      v20 = 0;
      xpc_array_set_data(v12, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      return 1;
    }
  }

  else
  {
    bytes = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      bytes = 0;
      v20 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      v11 = _dyld_get_shared_cache_range();
    }

    else
    {
      v11 = 0;
      v17 = 0;
      v18 = 0;
    }

    v15 = xpc_string_get_string_ptr(a3);
    _os_log_simple(&_mh_execute_header, &bytes, &v17, v11, 16, 0, "no value for key: %s", v15);
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  return result;
}

uint64_t sub_100003C9C(void *a1, void *a2)
{
  type = xpc_get_type(a1);
  if (type == &_xpc_type_string)
  {
    v18 = 0;
    bytes = 2;
    string_ptr = xpc_string_get_string_ptr(a1);
    length = xpc_string_get_length(a1);
LABEL_12:
    v17 = length;
LABEL_16:
    LOBYTE(v18) = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    return 0;
  }

  v5 = type;
  if (type == &_xpc_type_int64)
  {
    bytes = 4;
    v18 = 0;
    string_ptr = xpc_int64_get_value(a1);
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (type == &_xpc_type_BOOL)
  {
    bytes = 1;
    v18 = 0;
    string_ptr = xpc_BOOL_get_value(a1);
    goto LABEL_15;
  }

  if (type == &_xpc_type_data)
  {
    v18 = 0;
    bytes = 9;
    string_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    goto LABEL_12;
  }

  if (type != &_xpc_type_dictionary)
  {
    if (type == &_xpc_type_array)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 4;
      v17 = 0;
      v18 = 0;
      bytes = 5;
      string_ptr = 0;
      xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      bytes = _NSConcreteStackBlock;
      string_ptr = 0x40000000;
      v17 = sub_100003FA8;
      v18 = &unk_10000C678;
      v19 = &v11;
      v20 = a2;
      xpc_array_apply(a1, &bytes);
      v8 = *(v12 + 6);
      if (!v8)
      {
        v23 = 0;
        v24 = 0;
        v21 = 6;
        v22 = 0;
        xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &v21, 0x20uLL);
        v8 = *(v12 + 6);
      }

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      bytes = 0;
      string_ptr = 0;
      v21 = 0;
      v22 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        string_ptr = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v11 = 0;
        shared_cache_range = _dyld_get_shared_cache_range();
      }

      else
      {
        shared_cache_range = 0;
        v21 = 0;
        v22 = 0;
      }

      name = xpc_type_get_name(v5);
      _os_log_simple(&_mh_execute_header, &bytes, &v21, shared_cache_range, 16, 0, "unsupported type: %s", name);
      return 1;
    }

    return v8;
  }

  return sub_100003948(a1, a2);
}

uint64_t sub_100003FF4(uint64_t a1, uint64_t a2, xpc_object_t xdata)
{
  v3 = (*(a1 + 32) + 32 * a2);
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  v5 = bytes_ptr[1];
  *v3 = *bytes_ptr;
  v3[1] = v5;
  return 1;
}

uint64_t sub_10000402C()
{
  if (_os_alloc_once_table[2] == -1)
  {
    v0 = _os_alloc_once_table[3];
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*(v0 + 41) == 1)
  {
    if (*(v0 + 48) != -1)
    {
      dispatch_once_f((v0 + 48), (v0 + 56), sub_1000040C0);
    }
  }

  else
  {
    sub_1000040C0((v0 + 56));
  }

  return v0 + 56;
}

uint64_t sub_1000040C0(task_info_t task_info_out)
{
  task_info_outCnt = 8;
  if (task_info(mach_task_self_, 0xFu, task_info_out, &task_info_outCnt))
  {
    sub_1000059AC();
  }

  v2 = task_info_out[5];
  result = getpid();
  if (v2 != result || !task_info_out[7])
  {
    sub_1000059AC();
  }

  return result;
}

uint64_t _xpc_spawnattr_unpack_bytes(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2 - a3 >= a4)
  {
    v4 = a1 + a3 + 244;
  }

  else
  {
    v4 = 0;
  }

  if (a2 <= a3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

xpc_object_t sub_100004150(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = a1[2];
  v8 = *(a1 + 6);
  if (!der_vm_context_is_valid())
  {
    return 0;
  }

  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  v7 = a1[2];
  v8 = *(a1 + 6);
  return sub_1000041C4(&v5);
}

xpc_object_t sub_1000041C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v22 = *a1;
  v23 = v3;
  v24 = *(a1 + 2);
  v25 = a1[6];
  v4 = der_vm_CEType_from_context();
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = *(a1 + 2);
        v21 = a1[6];
        empty = xpc_dictionary_create_empty();
        break;
      case 2:
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = *(a1 + 2);
        v21 = a1[6];
        empty = xpc_array_create_empty();
        break;
      case 3:
        v5 = *(a1 + 1);
        v22 = *a1;
        v23 = v5;
        v24 = *(a1 + 2);
        v25 = a1[6];
        v6 = der_vm_integer_from_context();
        return xpc_int64_create(v6);
      default:
        goto LABEL_17;
    }

    v14 = empty;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    der_vm_iterate();
    return v14;
  }

  switch(v4)
  {
    case 4:
      v15 = *(a1 + 1);
      v22 = *a1;
      v23 = v15;
      v24 = *(a1 + 2);
      v25 = a1[6];
      sub_10000465C(&v22);
      return xpc_string_create_no_copy();
    case 5:
      v12 = *(a1 + 1);
      v22 = *a1;
      v23 = v12;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v13 = der_vm_BOOL_from_context();
      return xpc_BOOL_create(v13);
    case 6:
      v8 = *(a1 + 1);
      v22 = *a1;
      v23 = v8;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v9 = der_vm_data_from_context();
      return xpc_data_create(v9, v10);
  }

LABEL_17:
  v17 = (*(v2 + 32))(v2, "[%s]: %s\n", "_objectForActiveContext", "CoreEntitlements: unknown DER type");
  return sub_100004390(v17);
}

uint64_t sub_100004390(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 29);
  if (v3 == 2)
  {
    if (*(a1 + 28) == 1)
    {
      v7 = a1[15];
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v8 = *(a1 + 9);
      v14[0] = *(a1 + 7);
      v14[1] = v8;
      v14[2] = *(a1 + 11);
      v15 = a1[13];
      der_vm_execute();
      memset(v20, 0, sizeof(v20));
      v9 = sub_10000465C(v20);
      v20[0] = xmmword_1000077C0;
      memset(&v20[1], 0, 240);
      der_vm_execute();
      empty = sub_1000041C4(v14);
      xpc_dictionary_set_value(v7, v9, empty);
      free(v9);
    }

    else
    {
      empty = xpc_array_create_empty();
      v11 = *(a1 + 9);
      v20[0] = *(a1 + 7);
      v20[1] = v11;
      v20[2] = *(a1 + 11);
      *&v20[3] = a1[13];
      if (der_vm_iterate() != kCENoError)
      {
        v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: Couldn't iterate over DER entitlements\n");
        return sub_10000465C(v13);
      }

      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, empty);
    }

    v6 = empty;
    goto LABEL_10;
  }

  if (v3)
  {
    if (*(a1 + 28) == 2)
    {
      v4 = *(a1 + 9);
      v20[0] = *(a1 + 7);
      v20[1] = v4;
      v20[2] = *(a1 + 11);
      *&v20[3] = a1[13];
      v5 = sub_1000041C4(v20);
      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, v5);
      v6 = v5;
LABEL_10:
      xpc_release(v6);
      return 1;
    }

    v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: not a sequence");
  }

  else
  {
    v13 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: unknown DER type");
  }

  return sub_10000465C(v13);
}

void *sub_10000465C(uint64_t a1)
{
  v1 = der_vm_string_from_context();
  v3 = v2;
  v4 = sub_100002980(v2 + 1, 0xCECD693BuLL);
  memcpy(v4, v1, v3);
  return v4;
}

void sub_10000471C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  vsyslog(2, a2, va);
  qword_100010030 = "Data corruption: CoreEntitlements has aborted due to an unrecoverable error";
  __break(1u);
}

void *sub_100004784(const void *a1, size_t size)
{
  v4 = sub_100002980(size, 0x39A35613uLL);

  return memcpy(v4, a1, size);
}

char *sub_1000047D0(const char *a1)
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
      if (*__error())
      {
        sub_1000059CC(&v3, v4);
      }
    }

    sub_100004764();
  }

  return result;
}

char *sub_100004860(char *a1, ...)
{
  va_start(va, a1);
  v4 = 0;
  while (1)
  {
    va_copy(&v3[1], va);
    vasprintf(&v4, a1, va);
    result = v4;
    if (v4)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        sub_1000059CC(v3, v5);
      }
    }

    sub_100004764();
  }

  return result;
}

uint64_t sub_100004928(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL sub_100004940()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100004958(const char *a1)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v16 = 0;
    v17 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    v14 = 0;
    shared_cache_range = _dyld_get_shared_cache_range();
  }

  else
  {
    shared_cache_range = 0;
    v18 = 0;
    v19 = 0;
  }

  _os_log_simple(&_mh_execute_header, &v16, &v18, shared_cache_range, 16, 0, "%s (backtrace follows)", a1);
  bzero(&v16, 0x400uLL);
  v3 = backtrace(&v16, 128);
  v4 = backtrace_symbols(&v16, v3);
  if (v4)
  {
    v5 = v4;
    if (v3 >= 1)
    {
      v6 = v3;
      v7 = v4;
      do
      {
        if (!*v7)
        {
          break;
        }

        v18 = 0;
        v19 = 0;
        v14 = 0;
        v15 = 0;
        if ((_dyld_get_image_uuid() & 1) == 0)
        {
          v18 = 0;
          v19 = 0;
        }

        if (_dyld_get_shared_cache_uuid())
        {
          v8 = _dyld_get_shared_cache_range();
        }

        else
        {
          v8 = 0;
          v14 = 0;
          v15 = 0;
        }

        v9 = *v7++;
        _os_log_simple(&_mh_execute_header, &v18, &v14, v8, 16, 0, "%s", v9);
        --v6;
      }

      while (v6);
    }

    free(v5);
  }

  result = os_fault_with_payload();
  if (result)
  {
    v18 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v18 = 0;
      v19 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      v11 = _dyld_get_shared_cache_range();
    }

    else
    {
      v11 = 0;
      v14 = 0;
      v15 = 0;
    }

    v12 = *__error();
    __error();
    v13 = xpc_strerror();
    return _os_log_simple(&_mh_execute_header, &v18, &v14, v11, 16, 0, "Unable to generate a fault: %d - %s", v12, v13);
  }

  return result;
}

double xpc_binprefs_alloc()
{
  v0 = sub_100002980(0x24uLL, 0x10000408AA14F5FuLL);
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 0;
  return result;
}

uint64_t xpc_binprefs_add(uint64_t result, int a2, int a3)
{
  v3 = *(result + 32);
  if (v3 >= 4)
  {
    return _os_assumes_log();
  }

  *(result + 4 * v3) = a2;
  *(result + 4 * (*(result + 32))++ + 16) = a3;
  return result;
}

uint64_t xpc_binprefs_set_psattr(cpu_type_t *a1, posix_spawnattr_t *a2)
{
  result = posix_spawnattr_setarchpref_np(a2, a1[8], a1, a1 + 4, 0);
  if (result)
  {
    sub_100005AD4(&v3, v4, result);
  }

  return result;
}

uint64_t sub_100004CA8(char *a1)
{
  v2 = strrchr(a1, 47);
  if (!v2)
  {
    return 22;
  }

  v3 = v2;
  v4 = *v2;
  *v2 = 0;
  LODWORD(result) = mkpath_np(a1, 0x1F6u);
  if (result == 17)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

  *v3 = v4;
  return result;
}

uint64_t sub_100004D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v9, v8, 80, a5, v10, 16, a8);
}

double sub_100004D30(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_100004D6C(const char *a1)
{
  fprintf(__stderrp, "%s: could not exec: %s\n", qword_100010178, a1);
  if (byte_100010200 == 1)
  {
    sub_1000058C4();
  }

  return 1;
}

void sub_100004DC8(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, const char *a6, ...)
{
  va_start(va, a6);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v12, "self", 1);
  xpc_dictionary_set_int64(v12, "code", a2);
  xpc_dictionary_set_int64(v12, "subcode", a3);
  xpc_dictionary_set_uint64(v12, "line", a4);
  xpc_dictionary_set_BOOL(v12, "setup-event", a5 != 0);
  string[0] = 0;
  va_copy(&string[1], va);
  vasprintf(string, a6, va);
  v13 = 0;
  if (string[0])
  {
    xpc_dictionary_set_string(v12, "string", string[0]);
    v13 = string[0];
  }

  free(v13);
  string[0] = 0;
  v14 = dyld_image_header_containing_address();
  if (v14)
  {
    v15[0] = 0;
    v15[1] = 0;
    _dyld_get_image_uuid();
    xpc_dictionary_set_uuid(v12, "uuid", v15);
  }

  xpc_dictionary_set_uint64(v12, "pc", v6 - v14);
  v15[0] = 0;
  _xpc_service_routine(701, v12, v15);
  if (a5)
  {
    xpc_set_event();
  }

  exit(78);
}

void sub_100004F3C(int a1)
{
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0x40uLL, "Could not create shell: code %d", a1);
  pthread_setname_np(__str);
  sub_1000058C4();
}

uint64_t sub_100004F7C(const char *a1, uint64_t a2)
{
  if (_os_alloc_once_table[2] != -1)
  {
    goto LABEL_23;
  }

  v4 = _os_alloc_once_table[3];
  do
  {
    while (revoke("/dev/console") == -1)
    {
      __envp[0] = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      *v43 = 0u;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        a2 = 3;
      }

      else
      {
        a2 = 2;
      }

      v15 = *__error();
      LODWORD(__argv[0]) = 67109120;
      HIDWORD(__argv[0]) = v15;
      LODWORD(v33) = 8;
      _os_log_send_and_compose_impl(a2, __envp, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: revoke(/dev/console) -> %{errno}d", __argv, v33);
      _os_crash_msg();
      __break(1u);
LABEL_23:
      v4 = _os_alloc_once();
    }

    v5 = open(a1, 2);
    if (login_tty(v5) == -1)
    {
      close(v5);
      v5 = -1;
    }
  }

  while (v5 == -1);
  if (a2)
  {
    v6 = strlen(a2);
    if (write(v5, a2, v6) == -1)
    {
      goto LABEL_48;
    }
  }

  v42 = 0;
  v7 = posix_spawnattr_init(&v42);
  if (v7)
  {
    v16 = v7;
    __argv[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v16;
    _os_log_send_and_compose_impl(v17, __argv, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawnattr_init(&psattr) -> %llu", __envp);
    v8 = _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

  v8 = posix_spawnattr_setflags(&v42, 16448);
  if (v8)
  {
LABEL_28:
    v18 = v8;
    __argv[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v18;
    _os_log_send_and_compose_impl(v19, __argv, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawnattr_setflags(&psattr, psflags) -> %llu", __envp);
    v9 = _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v41 = 0;
  v9 = posix_spawn_file_actions_init(&v41);
  if (v9)
  {
LABEL_32:
    v20 = v9;
    __argv[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v20;
    _os_log_send_and_compose_impl(v21, __argv, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawn_file_actions_init(&filact) -> %llu", __envp);
    v10 = _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  v10 = posix_spawn_file_actions_addinherit_np(&v41, 0);
  if (v10)
  {
LABEL_36:
    v22 = v10;
    __argv[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v22;
    _os_log_send_and_compose_impl(v23, __argv, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawn_file_actions_addinherit_np(&filact, 0) -> %llu", __envp);
    v11 = _os_crash_msg();
    __break(1u);
    goto LABEL_40;
  }

  v11 = posix_spawn_file_actions_addinherit_np(&v41, 1);
  if (v11)
  {
LABEL_40:
    v24 = v11;
    __argv[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v24;
    _os_log_send_and_compose_impl(v25, __argv, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawn_file_actions_addinherit_np(&filact, 1) -> %llu", __envp);
    v12 = _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

  LODWORD(a1) = 2;
  v12 = posix_spawn_file_actions_addinherit_np(&v41, 2);
  if (v12)
  {
LABEL_44:
    v26 = v12;
    __argv[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v27 = (a1 + 1);
    }

    else
    {
      v27 = a1;
    }

    LODWORD(__envp[0]) = 134217984;
    *(__envp + 4) = v26;
    _os_log_send_and_compose_impl(v27, __argv, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawn_file_actions_addinherit_np(&filact, 2) -> %llu", __envp);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    __envp[0] = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v29 = *__error();
    LODWORD(__argv[0]) = 67109120;
    HIDWORD(__argv[0]) = v29;
    LODWORD(v33) = 8;
    _os_log_send_and_compose_impl(v28, __envp, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: nbytes -> %{errno}d", __argv, v33);
    v13 = _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  *__argv = off_10000C730;
  *__envp = *off_10000C740;
  v38 = *off_10000C750;
  v39 = 0;
  if ((*(v4 + 9) & 1) == 0)
  {
    goto LABEL_18;
  }

  v13 = posix_spawnattr_setspecialport_np(&v42, *(v4 + 16), 4);
  if (!v13)
  {
    *(&v38 + 1) = 0;
LABEL_18:
    pthread_setname_np(byte_100010180);
    v43[0] = 0;
    v14 = posix_spawn(v43, "/bin/sh", &v41, &v42, __argv, __envp);
    sub_100004F3C(v14);
  }

LABEL_52:
  v30 = v13;
  v36 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  v34 = 134217984;
  v35 = v30;
  _os_log_send_and_compose_impl(v31, &v36, v43, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawnattr_setspecialport_np(&psattr, globals->bootstrap_port, 4) -> %llu", &v34);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

uint64_t sub_100005654(const char *a1)
{
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    shared_cache_range = _dyld_get_shared_cache_range();
  }

  else
  {
    shared_cache_range = 0;
    v8 = 0;
    v9 = 0;
  }

  _os_log_simple(&_mh_execute_header, &v10, &v8, shared_cache_range, 0, 0, "calling cryptex_trampoline_upgrade_wait() for %s", a1);
  cryptex_trampoline_upgrade_wait_options_create();
  cryptex_trampoline_upgrade_wait_options_set_cryptex_name();
  v3 = cryptex_trampoline_upgrade_wait();
  if (v3)
  {
    v4 = v3;
    v10 = 0;
    v11 = 0;
    v8 = 0;
    v9 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      v5 = _dyld_get_shared_cache_range();
    }

    else
    {
      v5 = 0;
      v8 = 0;
      v9 = 0;
    }

    v6 = xpc_strerror();
    _os_log_simple(&_mh_execute_header, &v10, &v8, v5, 16, 0, "cryptex_trampoline_upgrade_wait() failed with error %d - %s", v4, v6);
  }

  return cryptex_trampoline_upgrade_wait_options_destroy();
}

xpc_object_t sub_1000057C4(uint64_t a1, const char *a2, BOOL a3)
{
  if ((*(a1 + 240) & 0x80) != 0)
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "Executable", a2);
  xpc_dictionary_set_BOOL(v5, "SkipImmediatePoll", a3);
  return v5;
}

void *sub_100005840(uint64_t a1, const char *a2, const char *a3)
{
  if ((*(a1 + 240) & 0x80) != 0)
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (a2)
  {
    xpc_dictionary_set_string(v5, "UserName", a2);
  }

  if (a3)
  {
    xpc_dictionary_set_string(v6, "GroupName", a3);
  }

  return v6;
}

void sub_1000058C4()
{
  v0 = mach_host_self();
  host_reboot(v0, 4096);
  __break(1u);
}

uint64_t sub_1000058E0(int a1, void *buffer)
{
  if (proc_pidinfo(a1, 13, 1uLL, buffer, 64) == 64)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

void sub_100005920(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  sub_1000031A8(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "assertion failure: (*__error()) -> %llu");
  _os_crash_msg();
  __break(1u);
}

void sub_1000059CC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: (*__error()) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005A38(int a1)
{
  sub_100004860("bootstrap port must lead to PID 1 [actual pid = %d]", a1);
  _os_crash();
  __break(1u);
}

void sub_100005AD4(void *a1, _OWORD *a2, int a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = 134217984;
  v8 = a3;
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: posix_spawnattr_setarchpref_np(psattr, self->xb_count, self->xb_cpu_types, self->xb_cpu_subtypes, ((void*)0)) -> %llu", &v7);
  _os_crash_msg();
  __break(1u);
}

void sub_100005B88(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_init(&ctx->psattr) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005BF4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_init(&ctx->filact) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005C60(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_getflags(&ctx->psattr, &psflags) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005CCC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setflags(&ctx->psattr, psflags) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005D38(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_disable_ptr_auth_a_keys_np(&ctx->psattr, 0) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005DA4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_use_sec_transition_shims_np(&ctx->psattr, attr->checked_allocations_posix_spawn_flags) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005E10(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_qos_class_np(&ctx->psattr, attr->ps_qos_class) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005E7C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setcpumonitor(&ctx->psattr, attr->cpumon_percent, attr->cpumon_interval) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005EE8(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setcpumonitor_default(&ctx->psattr) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005F54(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setjetsam_ext(&ctx->psattr, (short)attr->ps_jetsam_flags, attr->ps_jetsam_priority, attr->ps_jetsam_memlimit_active, attr->ps_jetsam_memlimit_inactive) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100005FC0(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_threadlimit_ext(&ctx->psattr, attr->ps_jetsam_threadlimit) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_10000602C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_max_addr_np(&ctx->psattr, attr->ps_jetsam_addresslimit) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006098(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_portlimits_ext(&ctx->psattr, attr->ps_jetsam_softportlimit, attr->ps_jetsam_hardportlimit) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006104(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_filedesclimit_ext(&ctx->psattr, attr->ps_jetsam_softfiledescriptorlimit, attr->ps_jetsam_hardfiledescriptorlimit) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006170(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_kqworklooplimit_ext(&ctx->psattr, attr->ps_jetsam_softkqworklooplimit, attr->ps_jetsam_hardkqworklooplimit) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000061DC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_conclavememlimit_ext(&ctx->psattr, attr->ps_jetsam_conclave_memlimit) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006248(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_max_addr_np(&ctx->psattr, 18446744073709551615ULL) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000062B4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_crash_behavior_np(&ctx->psattr, attr->ps_crash_behavior) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006320(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_crash_behavior_deadline_np(&ctx->psattr, attr->ps_crash_behavior_deadline, 0) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_10000638C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_launch_type_np(&ctx->psattr, attr->ps_launch_type) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000063F8(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_crash_count_np(&ctx->psattr, attr->ps_crash_count, attr->ps_throttling_timeout) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006464(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_darwin_role_np(&ctx->psattr, attr->ps_role) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000064D0(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setdataless_iopolicy_np(&ctx->psattr, 1) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_10000653C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setdataless_iopolicy_np(&ctx->psattr, 2) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000065A8(void *a1, _OWORD *a2)
{
  sub_100004D30(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  sub_100004D50();
  sub_100004D08(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: sandbox_spawnattrs_setcontainer(&ctx->sbattrs, container_id) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_10000662C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setmacpolicyinfo_np(&ctx->psattr, Sandbox, &ctx->sbattrs, sizeof(ctx->sbattrs)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006698(void *a1, _OWORD *a2)
{
  sub_100004D30(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  sub_100004D50();
  sub_100004D08(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: sandbox_spawnattrs_setprofilename(&ctx->sbattrs, profile) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_10000671C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: error -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006788(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addopen(&ctx->filact, 0, stdin_path, 0x00000200|0x0000|0x00020000, (0000400|0000200|0000040|0000020|0000004|0000002)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000067F4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addopen(&ctx->filact, 0, /dev/null, 0x0000|0x00020000, (0000400|0000200|0000040|0000020|0000004|0000002)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006860(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addopen(&ctx->filact, 1, stdout_path, 0x00000200|0x0002|0x00000008|0x00020000, (0000400|0000200|0000040|0000020|0000004|0000002)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000068CC(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addopen(&ctx->filact, 1, /dev/null, 0x0002|0x00020000, (0000400|0000200|0000040|0000020|0000004|0000002)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006938(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addopen(&ctx->filact, 2, stderr_path, 0x00000200|0x0002|0x00000008|0x00020000, (0000400|0000200|0000040|0000020|0000004|0000002)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_1000069A4(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addopen(&ctx->filact, 2, /dev/null, 0x0002|0x00020000, (0000400|0000200|0000040|0000020|0000004|0000002)) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006A10(void *a1, _OWORD *a2)
{
  sub_100004D30(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  sub_100004D50();
  sub_100004D08(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: setsid() -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_100006A94(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setspecialport_np(&ctx->psattr, port2use, dst) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006B00(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_set_registered_ports_np(&ctx->psattr, stash, 1) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006B6C(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_add_fileportdup2_np( &ctx->filact, _xpc_fd_get_port(xfd), dest) -> %llu");
  sub_100004928(v8);
  __break(1u);
}

void sub_100006BD8(void *a1, _OWORD *a2)
{
  sub_1000031CC(a1, a2);
  sub_100004940();
  sub_100004908();
  v8 = sub_1000031A8(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: amfi_launch_constraint_set_spawnattr(&ctx->psattr, ctx->spawn_constraint, ctx->spawn_constraint_sz) -> %llu");
  sub_100004928(v8);
  __break(1u);
  CEAcquireUnmanagedContext();
}