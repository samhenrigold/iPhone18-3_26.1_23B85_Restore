double OUTLINED_FUNCTION_3_0(void *a1, _OWORD *a2)
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

void _resource_dealloc(uint64_t a1)
{
  os_release(*(a1 + 64));
  free(*(a1 + 72));
  close_drop_optional_np();

  object_proto_destroy(a1 + 16);
}

uint64_t resource_create(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  v8 = _resource_alloc(232);
  *(v8 + 40) = a4;
  *(v8 + 64) = os_retain(a2);
  *(v8 + 48) = a1;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v9 = strdup(a3);
      if (v9)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v9 = strdup(a3);
    if (!v9)
    {
      _protex_init_cold_1(a3, &v14, v15);
    }
  }

  v10 = v9;
  *(v8 + 72) = v9;
  *(v8 + 80) = -1;
  v11 = strrchr(v9, 47);
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v10;
  }

  *(v8 + 56) = v12;
  object_proto_init(v8 + 16, "com.apple.security.cryptexd", "resource");
  object_set_name(v8 + 16, *(v8 + 56));
  return v8;
}

uint64_t resource_open(uint64_t a1, int a2)
{
  v3 = *(a1 + 64);
  v4 = *(v3 + 48);
  v5 = **(a1 + 48);
  v6 = _validators[v5];
  v7 = openat(*(v3 + 56), *(a1 + 72), a2 & 0xFFFFFFFC);
  v34 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  if (*__error())
  {
    v8 = *__error();
    v9 = *(a1 + 16);
    v10 = *__error();
    v11 = *(a1 + 32);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *__error() = v10;
      goto LABEL_10;
    }

    v12 = "[anonymous]";
    if (v9)
    {
      v12 = v9;
    }

    v13 = *(v4 + 8);
    v14 = *(a1 + 72);
    *buf = 136446978;
    v37 = v12;
    v38 = 2080;
    v39 = v13;
    v40 = 2080;
    v41 = v14;
    v42 = 1024;
    v43 = v8;
    v15 = "%{public}s: failed to open %s resource: %s: %{darwin.errno}d";
    v16 = v11;
    v17 = 38;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_9;
  }

  v19 = *(a1 + 16);
  v20 = *__error();
  v21 = *(a1 + 32);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = "[anonymous]";
    if (v19)
    {
      v22 = v19;
    }

    v23 = *(v4 + 8);
    v24 = *(a1 + 72);
    *buf = 136446722;
    v37 = v22;
    v38 = 2080;
    v39 = v23;
    v40 = 2080;
    v41 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}s: opened %s resource: %s", buf, 0x20u);
  }

  *__error() = v20;
  if ((v5 - 7) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v25 = v6(a1, v7);
    if (v25)
    {
      v8 = v25;
      v26 = *(a1 + 16);
      v10 = *__error();
      v27 = *(a1 + 32);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v28 = "[anonymous]";
      v29 = *(a1 + 56);
      if (v26)
      {
        v28 = v26;
      }

      *buf = 136446722;
      v37 = v28;
      v38 = 2080;
      v39 = v29;
      v40 = 1024;
      LODWORD(v41) = v8;
      v15 = "%{public}s: failed to validate resource: %s: %{darwin.errno}d";
      v16 = v27;
      v17 = 28;
      goto LABEL_8;
    }
  }

  if (fstat(v7, (a1 + 88)))
  {
    v8 = *__error();
    v30 = *(a1 + 16);
    v31 = *__error();
    v32 = *(a1 + 32);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = "[anonymous]";
      if (v30)
      {
        v33 = v30;
      }

      *buf = 136446466;
      v37 = v33;
      v38 = 1024;
      LODWORD(v39) = v8;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s: fstat: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v31;
  }

  else
  {
    v8 = 0;
    *(a1 + 80) = _xferfd_unguarded(&v34);
    LODWORD(v7) = v34;
  }

LABEL_10:
  if (v7 != -1 && close(v7) == -1)
  {
    __os_cleanup_close_cold_1(v35, buf);
  }

  return v8;
}

uint64_t _validator_bundle(uint64_t a1, uint64_t a2)
{
  bundleURL = 0;
  v3 = _CFURLCreateFromFileDescriptor(a2, &bundleURL);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 16);
    v6 = *__error();
    v7 = *(a1 + 32);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      v10 = 0;
      *__error() = v6;
      goto LABEL_10;
    }

    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446466;
    v17 = v8;
    v18 = 1024;
    v19 = v4;
    v9 = "%{public}s: _CFURLCreateFromFileDescriptor: %{darwin.errno}d";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_7;
  }

  v11 = CFBundleCreate(kCFAllocatorDefault, bundleURL);
  if (!v11)
  {
    v13 = *(a1 + 16);
    v6 = *__error();
    v7 = *(a1 + 32);
    v4 = 22;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = "[anonymous]";
    if (v13)
    {
      v14 = v13;
    }

    *buf = 136446466;
    v17 = v14;
    v18 = 1024;
    v19 = 22;
    v9 = "%{public}s: failed to create bundle from resource: %{darwin.errno}d";
    goto LABEL_6;
  }

  v10 = v11;
  v4 = 0;
LABEL_10:
  if (bundleURL)
  {
    CFRelease(bundleURL);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

void mount_sub_handle_request(void *a1)
{
  v1 = a1;
  v2 = xpc_dictionary_get_remote_connection(v1);
  string = xpc_dictionary_get_string(v1, "MOUNT_SUB_REQ");
  v4 = string;
  if (!string)
  {
    goto LABEL_4;
  }

  if (strcmp(string, "REQ:MOUNT"))
  {
    if (strcmp(v4, "REQ:UNMOUNT"))
    {
LABEL_4:
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      pid = xpc_connection_get_pid(v2);
      v6 = proc_name(pid, buffer, 0x20u);
      v7 = _mount_sub_log(v6);

      if (v7)
      {
        v9 = _mount_sub_log(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        if (v2)
        {
          v11 = xpc_connection_get_pid(v2);
        }

        else
        {
          v11 = -1;
        }

        LODWORD(v240[0]) = 136316162;
        *(v240 + 4) = buffer;
        WORD6(v240[0]) = 1024;
        *(v240 + 14) = v11;
        WORD1(v240[1]) = 2080;
        *(&v240[1] + 4) = v4;
        WORD6(v240[1]) = 2080;
        *(&v240[1] + 14) = "MOUNT_SUB_REQ";
        WORD3(v240[2]) = 1024;
        DWORD2(v240[2]) = 22;
        v34 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v9, 16, "XPC client <process=%s pid=%d>: Invalid value '%s' for key '%s' %{darwin.errno}d", v240, 44);
      }

      else
      {
        v22 = &_os_log_default;
        if (v2)
        {
          v23 = xpc_connection_get_pid(v2);
        }

        else
        {
          v23 = -1;
        }

        LODWORD(v240[0]) = 136316162;
        *(v240 + 4) = buffer;
        WORD6(v240[0]) = 1024;
        *(v240 + 14) = v23;
        WORD1(v240[1]) = 2080;
        *(&v240[1] + 4) = v4;
        WORD6(v240[1]) = 2080;
        *(&v240[1] + 14) = "MOUNT_SUB_REQ";
        WORD3(v240[2]) = 1024;
        DWORD2(v240[2]) = 22;
        v9 = &_os_log_default;
        v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value '%s' for key '%s' %{darwin.errno}d", v240, 44);
      }

      v40 = v34;

      Error = createError("mount_sub_handle_request", "sub_mount.m", 414, "com.apple.security.cryptex.posix", 22, 0, v40);
      free(v40);
      _mount_sub_mount_cryptex_reply(v1, Error, 0, 0, 0);
      goto LABEL_266;
    }

    v24 = v1;
    v25 = xpc_dictionary_get_remote_connection(v24);
    LOBYTE(v234) = 0;
    v235 = -1;
    v26 = _mount_sub_authorize(v25, "com.apple.private.security.cryptex.unmount");
    if (v26)
    {
      v240[0] = *"unknown";
      v240[1] = *&algn_100059768[8];
      v27 = xpc_connection_get_pid(v25);
      v28 = proc_name(v27, v240, 0x20u);
      v29 = _mount_sub_log(v28);

      if (v29)
      {
        v31 = _mount_sub_log(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        if (v25)
        {
          v33 = xpc_connection_get_pid(v25);
        }

        else
        {
          v33 = -1;
        }

        *buffer = 136315650;
        *&buffer[4] = v240;
        *&buffer[12] = 1024;
        *&buffer[14] = v33;
        *&buffer[18] = 1024;
        *&buffer[20] = v26;
        v63 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, v31, 16, "XPC client <process=%s pid=%d>: Client not authorized to unmount cryptex. %{darwin.errno}d", buffer, 24);
      }

      else
      {
        v54 = &_os_log_default;
        if (v25)
        {
          v55 = xpc_connection_get_pid(v25);
        }

        else
        {
          v55 = -1;
        }

        *buffer = 136315650;
        *&buffer[4] = v240;
        *&buffer[12] = 1024;
        *&buffer[14] = v55;
        *&buffer[18] = 1024;
        *&buffer[20] = v26;
        v31 = &_os_log_default;
        v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Client not authorized to unmount cryptex. %{darwin.errno}d", buffer, 24);
      }

      v97 = v63;

      v98 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 359, "com.apple.security.cryptex.posix", v26, 0, v97);
      v99 = v97;
      goto LABEL_90;
    }

    v42 = xpc_dictionary_dup_fd(v24, "UNMOUNT:INFO_FD");
    v235 = v42;
    if (v42 == -1)
    {
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      v64 = xpc_connection_get_pid(v25);
      v65 = proc_name(v64, buffer, 0x20u);
      v66 = _mount_sub_log(v65);

      if (v66)
      {
        v68 = _mount_sub_log(v67);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        if (v25)
        {
          v70 = xpc_connection_get_pid(v25);
        }

        else
        {
          v70 = -1;
        }

        LODWORD(v240[0]) = 136315906;
        *(v240 + 4) = buffer;
        WORD6(v240[0]) = 1024;
        *(v240 + 14) = v70;
        WORD1(v240[1]) = 2080;
        *(&v240[1] + 4) = "MOUNT:INFO_FD";
        WORD6(v240[1]) = 1024;
        *(&v240[1] + 14) = 22;
        v117 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &_mh_execute_header, v68, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
      }

      else
      {
        v112 = &_os_log_default;
        if (v25)
        {
          v113 = xpc_connection_get_pid(v25);
        }

        else
        {
          v113 = -1;
        }

        LODWORD(v240[0]) = 136315906;
        *(v240 + 4) = buffer;
        WORD6(v240[0]) = 1024;
        *(v240 + 14) = v113;
        WORD1(v240[1]) = 2080;
        *(&v240[1] + 4) = "MOUNT:INFO_FD";
        WORD6(v240[1]) = 1024;
        *(&v240[1] + 14) = 22;
        v68 = &_os_log_default;
        v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
      }

      v136 = v117;

      v98 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 367, "com.apple.security.cryptex.posix", 22, 0, v136);
      v99 = v136;
LABEL_90:
      free(v99);
      v42 = -1;
      if (!v98)
      {
LABEL_263:
        if (v42 == -1)
        {
LABEL_265:

          goto LABEL_266;
        }

LABEL_264:
        if (close(v42) == -1)
        {
          mount_sub_handle_request_cold_1(buffer, v240);
        }

        goto LABEL_265;
      }

LABEL_262:
      _mount_sub_unmount_cryptex_reply(v24, v98);
      goto LABEL_263;
    }

    v43 = _xpc_dictionary_try_get_BOOL(v24, "UNMOUNT:FORCE", &v234);
    if (v43)
    {
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      v44 = xpc_connection_get_pid(v25);
      v45 = proc_name(v44, buffer, 0x20u);
      v46 = _mount_sub_log(v45);

      if (v46)
      {
        v48 = _mount_sub_log(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        if (v25)
        {
          v50 = xpc_connection_get_pid(v25);
        }

        else
        {
          v50 = -1;
        }

        LODWORD(v240[0]) = 136315906;
        *(v240 + 4) = buffer;
        WORD6(v240[0]) = 1024;
        *(v240 + 14) = v50;
        WORD1(v240[1]) = 2080;
        *(&v240[1] + 4) = "UNMOUNT:FORCE";
        WORD6(v240[1]) = 1024;
        *(&v240[1] + 14) = v43;
        v116 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, v48, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
      }

      else
      {
        v109 = &_os_log_default;
        if (v25)
        {
          v110 = xpc_connection_get_pid(v25);
        }

        else
        {
          v110 = -1;
        }

        LODWORD(v240[0]) = 136315906;
        *(v240 + 4) = buffer;
        WORD6(v240[0]) = 1024;
        *(v240 + 14) = v110;
        WORD1(v240[1]) = 2080;
        *(&v240[1] + 4) = "UNMOUNT:FORCE";
        WORD6(v240[1]) = 1024;
        *(&v240[1] + 14) = v43;
        v48 = &_os_log_default;
        v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
      }

      v131 = v116;

      v132 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 375, "com.apple.security.cryptex.posix", v43, 0, v131);
      goto LABEL_261;
    }

    v82 = v234;
    v228 = v24;
    v83 = xpc_dictionary_get_remote_connection(v228);
    v247 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v239 = 0;
    memset(v238, 0, sizeof(v238));
    v230 = codex_copy_system();
    file = _read_file(v42, v238);
    if (file)
    {
      *buffer = *"unknown";
      *&buffer[16] = *&algn_100059768[8];
      v85 = xpc_connection_get_pid(v83);
      proc_name(v85, buffer, 0x20u);
      v86 = __error();
      v87 = *v86;
      v88 = _mount_sub_log(v86);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        if (v83)
        {
          v89 = xpc_connection_get_pid(v83);
        }

        else
        {
          v89 = -1;
        }

        *buf = 136315650;
        *&buf[4] = buffer;
        *&buf[12] = 1024;
        *&buf[14] = v89;
        *&buf[18] = 1024;
        *&buf[20] = file;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Failed to read cryptex info from disk.: %{darwin.errno}d", buf, 0x18u);
      }

      v143 = 0;
      v120 = 0;
      *__error() = v87;
    }

    else
    {
      v119 = xpc_create_from_plist();
      if (v119)
      {
        v120 = v119;
        if (xpc_get_type(v120) == &_xpc_type_dictionary)
        {
          file = quire_make_attr(v120, 0, v240, 1);
          if (file)
          {
            v145 = xpc_copy_description(v120);
            *buf = *"unknown";
            *&buf[16] = *&algn_100059768[8];
            v146 = xpc_connection_get_pid(v83);
            proc_name(v146, buf, 0x20u);
            v147 = __error();
            HIDWORD(v226) = *v147;
            v148 = _mount_sub_log(v147);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              if (v83)
              {
                v149 = xpc_connection_get_pid(v83);
              }

              else
              {
                v149 = -1;
              }

              *buffer = 136315906;
              *&buffer[4] = buf;
              *&buffer[12] = 1024;
              *&buffer[14] = v149;
              *&buffer[18] = 2080;
              *&buffer[20] = v145;
              *&buffer[28] = 1024;
              *&buffer[30] = file;
              _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Info.plist invalid contents: %s: %{darwin.errno}d", buffer, 0x22u);
            }

            *__error() = HIDWORD(v226);
            free(v145);
          }

          else
          {
            __copy_constructor_8_8_t0w24_s24_t32w88_s120_s128_s136_t144w2(buffer, v240);
            codex_unmount(v230, v82, buffer, v228, _mount_sub_unmount_cryptex_continue);
            file = 0;
          }

          v143 = v120;
          goto LABEL_247;
        }

        v121 = xpc_copy_description(v120);
        *buf = *"unknown";
        *&buf[16] = *&algn_100059768[8];
        v122 = xpc_connection_get_pid(v83);
        proc_name(v122, buf, 0x20u);
        v123 = __error();
        v124 = *v123;
        v125 = _mount_sub_log(v123);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          if (v83)
          {
            v126 = xpc_connection_get_pid(v83);
          }

          else
          {
            v126 = -1;
          }

          *buffer = 136315906;
          *&buffer[4] = buf;
          *&buffer[12] = 1024;
          *&buffer[14] = v126;
          *&buffer[18] = 2080;
          *&buffer[20] = v121;
          *&buffer[28] = 1024;
          *&buffer[30] = 212;
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Info.plist invalid root type: %s: %{darwin.errno}d", buffer, 0x22u);
        }

        *__error() = v124;
        free(v121);
        v143 = 0;
      }

      else
      {
        *buffer = *"unknown";
        *&buffer[16] = *&algn_100059768[8];
        v138 = xpc_connection_get_pid(v83);
        proc_name(v138, buffer, 0x20u);
        v139 = __error();
        v140 = *v139;
        v141 = _mount_sub_log(v139);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
        {
          if (v83)
          {
            v142 = xpc_connection_get_pid(v83);
          }

          else
          {
            v142 = -1;
          }

          *buf = 136315650;
          *&buf[4] = buffer;
          *&buf[12] = 1024;
          *&buf[14] = v142;
          *&buf[18] = 1024;
          *&buf[20] = 212;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Failed to parse cryptex info: %{darwin.errno}d", buf, 0x18u);
        }

        v143 = 0;
        v120 = 0;
        *__error() = v140;
      }

      file = 212;
    }

LABEL_247:
    buff_destroy(v238, v144);

    __destructor_8_s24_s120_s128_s136(v240);
    if (!file)
    {
      goto LABEL_264;
    }

    v240[0] = *"unknown";
    v240[1] = *&algn_100059768[8];
    v204 = xpc_connection_get_pid(v25);
    v205 = proc_name(v204, v240, 0x20u);
    v206 = _mount_sub_log(v205);

    if (v206)
    {
      v208 = _mount_sub_log(v207);
      if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
      {
        v209 = 3;
      }

      else
      {
        v209 = 2;
      }

      if (v25)
      {
        v210 = xpc_connection_get_pid(v25);
      }

      else
      {
        v210 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v210;
      *&buffer[18] = 1024;
      *&buffer[20] = file;
      LODWORD(v226) = 24;
      v213 = _os_log_send_and_compose_impl(v209, 0, 0, 0, &_mh_execute_header, v208, 16, "XPC client <process=%s pid=%d>: Failed to mount the client's cryptex. %{darwin.errno}d", buffer, v226);
    }

    else
    {
      v211 = &_os_log_default;
      if (v25)
      {
        v212 = xpc_connection_get_pid(v25);
      }

      else
      {
        v212 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v212;
      *&buffer[18] = 1024;
      *&buffer[20] = file;
      LODWORD(v226) = 24;
      v208 = &_os_log_default;
      v213 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Failed to mount the client's cryptex. %{darwin.errno}d", buffer, v226);
    }

    v131 = v213;

    v132 = createError("mount_sub_unmount_cryptex", "sub_mount.m", 383, "com.apple.security.cryptex.posix", file, 0, v131);
LABEL_261:
    v98 = v132;
    free(v131);
    if (!v98)
    {
      goto LABEL_263;
    }

    goto LABEL_262;
  }

  v12 = v1;
  *buf = -1;
  v234 = -1;
  v235 = -1;
  v232 = -1;
  v233 = -1;
  v13 = xpc_dictionary_get_remote_connection(v12);
  v14 = _mount_sub_authorize(v13, "com.apple.private.security.cryptex.mount");
  if (v14)
  {
    v240[0] = *"unknown";
    v240[1] = *&algn_100059768[8];
    v15 = xpc_connection_get_pid(v13);
    v16 = proc_name(v15, v240, 0x20u);
    v17 = _mount_sub_log(v16);

    if (v17)
    {
      v19 = _mount_sub_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      if (v13)
      {
        v21 = xpc_connection_get_pid(v13);
      }

      else
      {
        v21 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v21;
      *&buffer[18] = 1024;
      *&buffer[20] = v14;
      v53 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "XPC client <process=%s pid=%d>: Client not authorized to mount new cryptex. %{darwin.errno}d", buffer, 24);
    }

    else
    {
      v51 = &_os_log_default;
      if (v13)
      {
        v52 = xpc_connection_get_pid(v13);
      }

      else
      {
        v52 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v52;
      *&buffer[18] = 1024;
      *&buffer[20] = v14;
      v19 = &_os_log_default;
      v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Client not authorized to mount new cryptex. %{darwin.errno}d", buffer, 24);
    }

    v78 = v53;

    v79 = createError("mount_sub_mount_cryptex", "sub_mount.m", 182, "com.apple.security.cryptex.posix", v14, 0, v78);
LABEL_76:
    v80 = v79;
    v81 = v78;
    goto LABEL_156;
  }

  *buf = xpc_dictionary_dup_fd(v12, "MOUNT:DMG_FD");
  if ((*buf & 0x80000000) != 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v56 = xpc_connection_get_pid(v13);
    v57 = proc_name(v56, buffer, 0x20u);
    v58 = _mount_sub_log(v57);

    if (v58)
    {
      v60 = _mount_sub_log(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      if (v13)
      {
        v62 = xpc_connection_get_pid(v13);
      }

      else
      {
        v62 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v62;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:DMG_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v111 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &_mh_execute_header, v60, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    else
    {
      v100 = &_os_log_default;
      if (v13)
      {
        v101 = xpc_connection_get_pid(v13);
      }

      else
      {
        v101 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v101;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:DMG_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v60 = &_os_log_default;
      v111 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    v129 = v111;

    v130 = createError("mount_sub_mount_cryptex", "sub_mount.m", 190, "com.apple.security.cryptex.posix", 22, 0, v129);
    goto LABEL_155;
  }

  v235 = xpc_dictionary_dup_fd(v12, "MOUNT:LTRS_FD");
  if (v235 < 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v71 = xpc_connection_get_pid(v13);
    v72 = proc_name(v71, buffer, 0x20u);
    v73 = _mount_sub_log(v72);

    if (v73)
    {
      v75 = _mount_sub_log(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      if (v13)
      {
        v77 = xpc_connection_get_pid(v13);
      }

      else
      {
        v77 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v77;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:LTRS_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v118 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &_mh_execute_header, v75, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    else
    {
      v114 = &_os_log_default;
      if (v13)
      {
        v115 = xpc_connection_get_pid(v13);
      }

      else
      {
        v115 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v115;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:LTRS_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v75 = &_os_log_default;
      v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    v129 = v118;

    v130 = createError("mount_sub_mount_cryptex", "sub_mount.m", 198, "com.apple.security.cryptex.posix", 22, 0, v129);
    goto LABEL_155;
  }

  v234 = xpc_dictionary_dup_fd(v12, "MOUNT:INFO_FD");
  if (v234 < 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v90 = xpc_connection_get_pid(v13);
    v91 = proc_name(v90, buffer, 0x20u);
    v92 = _mount_sub_log(v91);

    if (v92)
    {
      v94 = _mount_sub_log(v93);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = 3;
      }

      else
      {
        v95 = 2;
      }

      if (v13)
      {
        v96 = xpc_connection_get_pid(v13);
      }

      else
      {
        v96 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v96;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:INFO_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v133 = _os_log_send_and_compose_impl(v95, 0, 0, 0, &_mh_execute_header, v94, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    else
    {
      v127 = &_os_log_default;
      if (v13)
      {
        v128 = xpc_connection_get_pid(v13);
      }

      else
      {
        v128 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v128;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:INFO_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v94 = &_os_log_default;
      v133 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    v129 = v133;

    v130 = createError("mount_sub_mount_cryptex", "sub_mount.m", 206, "com.apple.security.cryptex.posix", 22, 0, v129);
    goto LABEL_155;
  }

  v233 = xpc_dictionary_dup_fd(v12, "MOUNT:IM4M_FD");
  if (v233 < 0)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v102 = xpc_connection_get_pid(v13);
    v103 = proc_name(v102, buffer, 0x20u);
    v104 = _mount_sub_log(v103);

    if (v104)
    {
      v106 = _mount_sub_log(v105);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        v107 = 3;
      }

      else
      {
        v107 = 2;
      }

      if (v13)
      {
        v108 = xpc_connection_get_pid(v13);
      }

      else
      {
        v108 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v108;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:IM4M_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v137 = _os_log_send_and_compose_impl(v107, 0, 0, 0, &_mh_execute_header, v106, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    else
    {
      v134 = &_os_log_default;
      if (v13)
      {
        v135 = xpc_connection_get_pid(v13);
      }

      else
      {
        v135 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v135;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:IM4M_FD";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v106 = &_os_log_default;
      v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    v129 = v137;

    v130 = createError("mount_sub_mount_cryptex", "sub_mount.m", 214, "com.apple.security.cryptex.posix", 22, 0, v129);
LABEL_155:
    v80 = v130;
    v81 = v129;
LABEL_156:
    free(v81);
    v150 = 0;
    if (!v80)
    {
      goto LABEL_158;
    }

    goto LABEL_157;
  }

  v232 = xpc_dictionary_dup_fd(v12, "MOUNT:VOLHASH_FD");
  if (v232 < 0)
  {
    v240[0] = *"unknown";
    v240[1] = *&algn_100059768[8];
    v35 = xpc_connection_get_pid(v13);
    proc_name(v35, v240, 0x20u);
    v36 = __error();
    v37 = *v36;
    v38 = _mount_sub_log(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      if (v13)
      {
        v39 = xpc_connection_get_pid(v13);
      }

      else
      {
        v39 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v39;
      *&buffer[18] = 2080;
      *&buffer[20] = "MOUNT:VOLHASH_FD";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "XPC client <process=%s pid=%d>: No value for optional key %s", buffer, 0x1Cu);
    }

    *__error() = v37;
  }

  v150 = xpc_dictionary_get_value(v12, "MOUNT:CX1_PROPERTIES");
  if (!v150)
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v159 = xpc_connection_get_pid(v13);
    v160 = proc_name(v159, buffer, 0x20u);
    v161 = _mount_sub_log(v160);

    if (v161)
    {
      v163 = _mount_sub_log(v162);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        v164 = 3;
      }

      else
      {
        v164 = 2;
      }

      if (v13)
      {
        v165 = xpc_connection_get_pid(v13);
      }

      else
      {
        v165 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v165;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:CX1_PROPERTIES";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v180 = _os_log_send_and_compose_impl(v164, 0, 0, 0, &_mh_execute_header, v163, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    else
    {
      v176 = &_os_log_default;
      if (v13)
      {
        v177 = xpc_connection_get_pid(v13);
      }

      else
      {
        v177 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v177;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:CX1_PROPERTIES";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v163 = &_os_log_default;
      v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    v78 = v180;

    v79 = createError("mount_sub_mount_cryptex", "sub_mount.m", 228, "com.apple.security.cryptex.posix", 22, 0, v78);
    goto LABEL_76;
  }

  int64 = xpc_dictionary_get_int64(v12, "MOUNT:DMG_ASSET_IDX_INT64");
  if (int64 == 5 || int64 == 9)
  {
    v231 = v12;
    v152 = v150;
    v229 = codex_copy_system();
    memset(v240, 0, 32);
    xpc_dictionary_get_audit_token();
    *buffer = v240[0];
    *&buffer[16] = v240[1];
    HIDWORD(v227) = audit_token_to_euid(buffer);
    v150 = v152;
    v153 = cryptex_core_create();
    if (v153)
    {
      v154 = cryptex_core_set_assets_from_fds();
      if (v154)
      {
        v155 = __error();
        v156 = *v155;
        v157 = _mount_sub_log(v155);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          *buffer = 67109120;
          *&buffer[4] = v154;
          _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_ERROR, "Failed to set cryptex core assets.: %{darwin.errno}d", buffer, 8u);
        }

        v158 = 0;
        *__error() = v156;
      }

      else
      {
        v178 = cryptex_core_cx1_properties_create_with_xpc_dictionary();
        if (v178)
        {
          cryptex_core_set_cryptex1_properties();
          v179 = v153;

          v154 = 0;
          v158 = v153;
        }

        else
        {
          v184 = __error();
          v185 = *v184;
          v186 = _mount_sub_log(v184);
          if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
          {
            *buffer = 67109120;
            _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_ERROR, "Failed to parse Cryptex1 properties.: %{darwin.errno}d", buffer, 8u);
          }

          v158 = 0;
          v154 = 0;
          *__error() = v185;
        }
      }
    }

    else
    {
      v173 = __error();
      v174 = *v173;
      v175 = _mount_sub_log(v173);
      if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
      {
        *buffer = 0xC04000100;
        _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_ERROR, "Failed to create cryptex core.: %{darwin.errno}d", buffer, 8u);
      }

      v158 = 0;
      *__error() = v174;
      v154 = 12;
    }

    v187 = v158;
    if (v154)
    {
      v188 = __error();
      v189 = *v188;
      v190 = _mount_sub_log(v188);
      if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
      {
        *buffer = 67109120;
        *&buffer[4] = v154;
        _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_ERROR, "Failed to initialize cryptex core.: %{darwin.errno}d", buffer, 8u);
      }

      *__error() = v189;
    }

    else
    {
      codex_mount(v229, v187, HIDWORD(v227), v231, _mount_sub_mount_cryptex_continue);
    }

    if (!v154)
    {
      goto LABEL_158;
    }

    v240[0] = *"unknown";
    v240[1] = *&algn_100059768[8];
    v191 = xpc_connection_get_pid(v13);
    v192 = proc_name(v191, v240, 0x20u);
    v193 = _mount_sub_log(v192);

    if (v193)
    {
      v195 = _mount_sub_log(v194);
      if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
      {
        v196 = 3;
      }

      else
      {
        v196 = 2;
      }

      if (v13)
      {
        v197 = xpc_connection_get_pid(v13);
      }

      else
      {
        v197 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v197;
      *&buffer[18] = 1024;
      *&buffer[20] = v154;
      LODWORD(v227) = 24;
      v200 = _os_log_send_and_compose_impl(v196, 0, 0, 0, &_mh_execute_header, v195, 16, "XPC client <process=%s pid=%d>: Failed to mount the client's cryptex. %{darwin.errno}d", buffer, v227);
    }

    else
    {
      v198 = &_os_log_default;
      if (v13)
      {
        v199 = xpc_connection_get_pid(v13);
      }

      else
      {
        v199 = -1;
      }

      *buffer = 136315650;
      *&buffer[4] = v240;
      *&buffer[12] = 1024;
      *&buffer[14] = v199;
      *&buffer[18] = 1024;
      *&buffer[20] = v154;
      LODWORD(v227) = 24;
      v195 = &_os_log_default;
      v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Failed to mount the client's cryptex. %{darwin.errno}d", buffer, v227);
    }

    v201 = v200;

    v80 = createError("mount_sub_mount_cryptex", "sub_mount.m", 249, "com.apple.security.cryptex.posix", v154, 0, v201);
    v202 = v201;
  }

  else
  {
    *buffer = *"unknown";
    *&buffer[16] = *&algn_100059768[8];
    v166 = xpc_connection_get_pid(v13);
    v167 = proc_name(v166, buffer, 0x20u);
    v168 = _mount_sub_log(v167);

    if (v168)
    {
      v170 = _mount_sub_log(v169);
      if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
      {
        v171 = 3;
      }

      else
      {
        v171 = 2;
      }

      if (v13)
      {
        v172 = xpc_connection_get_pid(v13);
      }

      else
      {
        v172 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v172;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:DMG_ASSET_IDX_INT64";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v183 = _os_log_send_and_compose_impl(v171, 0, 0, 0, &_mh_execute_header, v170, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    else
    {
      v181 = &_os_log_default;
      if (v13)
      {
        v182 = xpc_connection_get_pid(v13);
      }

      else
      {
        v182 = -1;
      }

      LODWORD(v240[0]) = 136315906;
      *(v240 + 4) = buffer;
      WORD6(v240[0]) = 1024;
      *(v240 + 14) = v182;
      WORD1(v240[1]) = 2080;
      *(&v240[1] + 4) = "MOUNT:DMG_ASSET_IDX_INT64";
      WORD6(v240[1]) = 1024;
      *(&v240[1] + 14) = 22;
      v170 = &_os_log_default;
      v183 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "XPC client <process=%s pid=%d>: Invalid value for key %s %{darwin.errno}d", v240, 34);
    }

    v203 = v183;

    v80 = createError("mount_sub_mount_cryptex", "sub_mount.m", 240, "com.apple.security.cryptex.posix", 22, 0, v203);
    v202 = v203;
  }

  free(v202);
  if (v80)
  {
LABEL_157:
    _mount_sub_mount_cryptex_reply(v12, v80, 0, 0, 0);
  }

LABEL_158:

  if (v232 != -1 && close(v232) == -1)
  {
    *buffer = 0;
    v241 = 0u;
    v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v214 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v215 = *__error();
    if (v214)
    {
      v216 = 3;
    }

    else
    {
      v216 = 2;
    }

    LODWORD(v238[0]) = 67109120;
    DWORD1(v238[0]) = v215;
    LODWORD(v227) = 8;
    _os_log_send_and_compose_impl(v216, buffer, v240, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v238, v227);
    _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1();
  }

  if (v233 != -1 && close(v233) == -1)
  {
    *buffer = 0;
    v241 = 0u;
    v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v217 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v218 = *__error();
    if (v217)
    {
      v219 = 3;
    }

    else
    {
      v219 = 2;
    }

    LODWORD(v238[0]) = 67109120;
    DWORD1(v238[0]) = v218;
    LODWORD(v227) = 8;
    _os_log_send_and_compose_impl(v219, buffer, v240, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v238, v227);
    _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1();
  }

  if (v234 != -1 && close(v234) == -1)
  {
    *buffer = 0;
    v241 = 0u;
    v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v220 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v221 = *__error();
    if (v220)
    {
      v222 = 3;
    }

    else
    {
      v222 = 2;
    }

    LODWORD(v238[0]) = 67109120;
    DWORD1(v238[0]) = v221;
    LODWORD(v227) = 8;
    _os_log_send_and_compose_impl(v222, buffer, v240, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v238, v227);
    _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1();
  }

  if (v235 != -1 && close(v235) == -1)
  {
    *buffer = 0;
    v241 = 0u;
    v242 = 0u;
    memset(v240, 0, sizeof(v240));
    v223 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v224 = *__error();
    if (v223)
    {
      v225 = 3;
    }

    else
    {
      v225 = 2;
    }

    LODWORD(v238[0]) = 67109120;
    DWORD1(v238[0]) = v224;
    LODWORD(v227) = 8;
    _os_log_send_and_compose_impl(v225, buffer, v240, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v238, v227);
    _os_crash_msg();
    aks_open_bag_for_uid_at_path_cold_1();
  }

  if (*buf != -1 && close(*buf) == -1)
  {
    mount_sub_handle_request_cold_6(buffer, v240);
  }

LABEL_266:
}

void sub_100031178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, __int16 a14, char a15, char a16, __int16 a17, char a18, char a19, __int16 a20, unsigned int a21, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  free(v42);
  __destructor_8_s24_s120_s128_s136(v43 - 256);
  __os_cleanup_close_0(&a21);
  _Unwind_Resume(a1);
}

id _mount_sub_log(uint64_t a1)
{
  if (_mount_sub_log_onceToken != -1)
  {
    _mount_sub_log_cold_1();
  }

  v2 = _mount_sub_log_logHandle;

  return v2;
}

void _mount_sub_mount_cryptex_reply(void *a1, __CFError *a2, const char *a3, const char *a4, const char *a5)
{
  v9 = a1;
  reply = xpc_dictionary_create_reply(v9);
  v11 = xpc_dictionary_get_remote_connection(v9);

  if (a3)
  {
    xpc_dictionary_set_string(reply, "MOUNT:NAME_STR", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_string(reply, "MOUNT:VERSION_STR", a4);
  }

  if (a5)
  {
    xpc_dictionary_set_string(reply, "MOUNT:MOUNTPATH_STR", a5);
  }

  if (a2)
  {
    v12 = _xpc_cferr_to_dictionary(a2);
    xpc_dictionary_set_value(reply, "MOUNT:ERROR_DICT", v12);
  }

  buffer[0] = *"unknown";
  buffer[1] = *&algn_100059768[8];
  pid = xpc_connection_get_pid(v11);
  proc_name(pid, buffer, 0x20u);
  v14 = __error();
  v15 = *v14;
  v16 = _mount_sub_log(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      v17 = xpc_connection_get_pid(v11);
    }

    else
    {
      v17 = -1;
    }

    v18 = 136315650;
    v19 = buffer;
    v20 = 1024;
    v21 = v17;
    v22 = 2114;
    v23 = reply;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Replying to mount client: %{public}@", &v18, 0x1Cu);
  }

  *__error() = v15;
  xpc_dictionary_send_reply();
}

uint64_t __os_cleanup_close_0(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      __os_cleanup_close_cold_1_0(&v2, v3);
    }
  }

  return result;
}

uint64_t _mount_sub_authorize(void *a1, uint64_t a2)
{
  v3 = a1;
  if (cryptex_xpc_connection_is_entitled(v3, a2))
  {
    v4 = 0;
  }

  else
  {
    buffer[0] = *"unknown";
    buffer[1] = *&algn_100059768[8];
    pid = xpc_connection_get_pid(v3);
    proc_name(pid, buffer, 0x20u);
    v6 = __error();
    v7 = *v6;
    v8 = _mount_sub_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v9 = xpc_connection_get_pid(v3);
      }

      else
      {
        v9 = -1;
      }

      v11 = 136315906;
      v12 = buffer;
      v13 = 1024;
      v14 = v9;
      v15 = 2080;
      v16 = a2;
      v17 = 1024;
      v18 = 144;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "XPC client <process=%s pid=%d>: Client lacks entitlement '%s': %{darwin.errno}d", &v11, 0x22u);
    }

    *__error() = v7;
    v4 = 144;
  }

  return v4;
}

void _mount_sub_mount_cryptex_continue(void *a1, void *a2, __CFError *a3, void *a4)
{
  v13 = a1;
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    attr = quire_get_attr(v7);
    mntpath = quire_get_mntpath(v8);
    if (attr)
    {
      v11 = *attr;
      v12 = **(attr + 16);
      goto LABEL_6;
    }
  }

  else
  {
    mntpath = 0;
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  _mount_sub_mount_cryptex_reply(a4, a3, v11, v12, mntpath);
}

void _mount_sub_unmount_cryptex_reply(void *a1, __CFError *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  v5 = xpc_dictionary_get_remote_connection(v3);

  if (a2)
  {
    v6 = _xpc_cferr_to_dictionary(a2);
    xpc_dictionary_set_value(reply, "UNMOUNT:ERROR_DICT", v6);
  }

  buffer[0] = *"unknown";
  buffer[1] = *&algn_100059768[8];
  pid = xpc_connection_get_pid(v5);
  proc_name(pid, buffer, 0x20u);
  v8 = __error();
  v9 = *v8;
  v10 = _mount_sub_log(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v11 = xpc_connection_get_pid(v5);
    }

    else
    {
      v11 = -1;
    }

    v12 = 136315650;
    v13 = buffer;
    v14 = 1024;
    v15 = v11;
    v16 = 2114;
    v17 = reply;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "XPC client <process=%s pid=%d>: Replying to unmount client: %{public}@", &v12, 0x1Cu);
  }

  *__error() = v9;
  xpc_dictionary_send_reply();
}

id __copy_constructor_8_8_t0w24_s24_t32w88_s120_s128_s136_t144w2(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 3);
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  v7 = a2[5];
  v6 = a2[6];
  v8 = a2[4];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 64) = v8;
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 16);
  result = *(a2 + 17);
  *(a1 + 136) = result;
  *(a1 + 144) = *(a2 + 72);
  return result;
}

void _mount_sub_unmount_cryptex_continue(uint64_t a1, uint64_t a2, __CFError *a3, void *a4)
{
  _mount_sub_unmount_cryptex_reply(a4, a3);
}

void __destructor_8_s24_s120_s128_s136(uint64_t a1)
{
  v2 = *(a1 + 136);
}

void ___mount_sub_log_block_invoke(id a1)
{
  _mount_sub_log_logHandle = os_log_create("com.apple.libcryptex", "mount_sub");

  _objc_release_x1();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v10, v8, v9, 80, a5, a6, 16, a8);
}

BOOL cryptex_xpc_connection_is_entitled(uint64_t a1, uint64_t a2)
{
  v3 = xpc_connection_copy_entitlement_value();
  v4 = v3;
  if (v3)
  {
    if (xpc_get_type(v3) != &_xpc_type_BOOL)
    {
      v5 = *__error();
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Entitlement is not a BOOLean: %s", &v8, 0xCu);
      }

      *__error() = v5;
    }

    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    value = 0;
  }

  return value;
}

void sub_recv(uint64_t a1)
{
  v1 = daemon_copy();
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v72 = 32;
  v2 = xpc_pipe_receive();
  v3 = *(v1 + 2);
  v4 = *__error();
  v5 = *(v1 + 4);
  if (!v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = "[anonymous]";
      if (v3)
      {
        v9 = v3;
      }

      *buf = 136446466;
      *&buf[4] = v9;
      v66 = 2112;
      v67 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s: msg recv: %@", buf, 0x16u);
    }

    *__error() = v4;
    inited = rpc_init_local(&v95, 0, *(v1 + 4));
    v7 = inited;
    if (inited)
    {
      TopLevelPosixError = _CFErrorGetTopLevelPosixError(inited);
      if (TopLevelPosixError)
      {
        v2 = TopLevelPosixError;
        v12 = *(v1 + 2);
        v4 = *__error();
        v13 = *(v1 + 4);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_7;
        }

        v14 = "[anonymous]";
        if (v12)
        {
          v14 = v12;
        }

        *buf = 136446466;
        *&buf[4] = v14;
        v66 = 1024;
        LODWORD(v67) = v2;
        v15 = "%{public}s: init msg failed: %{darwin.errno}d";
        v16 = v13;
        v17 = OS_LOG_TYPE_FAULT;
        v18 = 18;
        goto LABEL_19;
      }
    }

    sub_log_invoke(&v95, "received ipc");
    if (v96 >= 3)
    {
      v19 = *(v1 + 2);
      v20 = *__error();
      v21 = *(v1 + 4);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = "[anonymous]";
        if (v19)
        {
          v22 = v19;
        }

        *buf = 136446466;
        *&buf[4] = v22;
        v66 = 2048;
        v67 = v96;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%{public}s: bad subsystem id: %llu", buf, 0x16u);
      }

      v2 = 72;
      goto LABEL_56;
    }

    rpc_init_reply(&v72, &v95);
    v23 = _NSGetMachExecuteHeader();
    *buf = 0;
    v24 = getsectdatafromheader_64(v23, "__DATA_CONST", "__subsystem", buf);
    v25 = &v24[_dyld_get_image_slide()];
    v26 = _NSGetMachExecuteHeader();
    *buf = 0;
    v27 = getsectdatafromheader_64(v26, "__DATA_CONST", "__subsystem", buf);
    if (v25 >= &v27[_dyld_get_image_slide() + *buf])
    {
LABEL_29:
      sub_recv_cold_1();
    }

    while (1)
    {
      v28 = *v25;
      if (v96 == **v25)
      {
        break;
      }

      v25 += 8;
      v29 = _NSGetMachExecuteHeader();
      *buf = 0;
      v30 = getsectdatafromheader_64(v29, "__DATA_CONST", "__subsystem", buf);
      if (v25 >= &v30[_dyld_get_image_slide() + *buf])
      {
        goto LABEL_29;
      }
    }

    v31 = *(v1 + 2);
    v32 = *__error();
    v33 = *(v1 + 4);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = "[anonymous]";
      v35 = v28[2];
      if (v31)
      {
        v34 = v31;
      }

      *buf = 136446466;
      *&buf[4] = v34;
      v66 = 2080;
      v67 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%{public}s: found subsystem: %s", buf, 0x16u);
    }

    *__error() = v32;
    if (v28[1] == v97)
    {
      if (*(&v96 + 1) >= v28[5])
      {
        v47 = *(v1 + 2);
        v20 = *__error();
        v61 = *(v1 + 4);
        v2 = 76;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          v48 = "[anonymous]";
          if (v47)
          {
            v48 = v47;
          }

          v49 = v28[2];
          *buf = 136446978;
          *&buf[4] = v48;
          v66 = 2080;
          v67 = v49;
          v68 = 2048;
          v69 = *(&v96 + 1);
          v70 = 1024;
          v71 = 76;
          v46 = "%{public}s: bad routine id: subsystem = %s, rpc = %llu: %{darwin.errno}d";
          goto LABEL_54;
        }
      }

      else
      {
        v36 = (v28[3])(&v96);
        if (!v36)
        {
          v56 = *(v1 + 2);
          v20 = *__error();
          v57 = *(v1 + 4);
          v2 = 71;
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_56;
          }

          v58 = "[anonymous]";
          v59 = v28[2];
          if (v56)
          {
            v58 = v56;
          }

          *buf = 136446722;
          *&buf[4] = v58;
          v66 = 2080;
          v67 = v59;
          v68 = 1024;
          LODWORD(v69) = 71;
          v46 = "%{public}s: no target %s object found: %{darwin.errno}d";
          v50 = v57;
          v51 = 28;
          goto LABEL_55;
        }

        v37 = (v28[4])(v36, &v95, &v72);
        v2 = v37;
        if (v37 == 36 || v37 == 0)
        {
          v39 = *(v1 + 2);
          v4 = *__error();
          v40 = *(v1 + 4);
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_7;
          }

          v41 = "[anonymous]";
          if (v39)
          {
            v41 = v39;
          }

          v42 = v28[2];
          *buf = 136446978;
          *&buf[4] = v41;
          v66 = 2080;
          v67 = v42;
          v68 = 2048;
          v69 = *(&v96 + 1);
          v70 = 1024;
          v71 = v2;
          v15 = "%{public}s: %s demux: routine = %llu: %{darwin.errno}d";
          v16 = v40;
          v17 = OS_LOG_TYPE_DEBUG;
          v18 = 38;
LABEL_19:
          _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
          goto LABEL_7;
        }

        v60 = *(v1 + 2);
        v20 = *__error();
        v61 = *(v1 + 4);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          v63 = "[anonymous]";
          if (v60)
          {
            v63 = v60;
          }

          v64 = v28[2];
          *buf = 136446978;
          *&buf[4] = v63;
          v66 = 2080;
          v67 = v64;
          v68 = 2048;
          v69 = *(&v96 + 1);
          v70 = 1024;
          v71 = v2;
          v46 = "%{public}s: %s demux failed: routine = %llu: %{darwin.errno}d";
LABEL_54:
          v50 = v61;
          v51 = 38;
LABEL_55:
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, v46, buf, v51);
        }
      }
    }

    else
    {
      v43 = *(v1 + 2);
      v20 = *__error();
      v61 = *(v1 + 4);
      v2 = 74;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        v44 = "[anonymous]";
        if (v43)
        {
          v44 = v43;
        }

        v45 = v28[2];
        *buf = 136446978;
        *&buf[4] = v44;
        v66 = 2080;
        v67 = v45;
        v68 = 2048;
        v69 = v97;
        v70 = 1024;
        v71 = 74;
        v46 = "%{public}s: bad target type: subsystem = %s, type = %llu: %{darwin.errno}d";
        goto LABEL_54;
      }
    }

LABEL_56:
    *__error() = v20;
    v8 = daemon_copy();
    goto LABEL_57;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 136446466;
    *&buf[4] = v6;
    v66 = 1024;
    LODWORD(v67) = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%{public}s: msg recv failed: %{darwin.errno}d", buf, 0x12u);
  }

  v7 = 0;
LABEL_7:
  *__error() = v4;
  v8 = daemon_copy();
  if (v2 == 36)
  {
LABEL_63:
    if (!v8)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_57:
  if ((v72 & 0x10) != 0)
  {
    goto LABEL_63;
  }

  v52 = v8[2];
  v53 = *__error();
  v54 = v8[4];
  if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
  {
    v55 = "[anonymous]";
    if (v52)
    {
      v55 = v52;
    }

    *buf = 136446722;
    *&buf[4] = v55;
    v66 = 2048;
    v67 = v96;
    v68 = 1024;
    LODWORD(v69) = v2;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "%{public}s: demux failed: subsystem = %llu: %{darwin.errno}d", buf, 0x1Cu);
  }

  *__error() = v53;
  rpc_reply(&v95, &v72, v2);
LABEL_64:
  os_release(v8);
LABEL_65:
  rpc_destroy(&v72);
  rpc_destroy(&v95);
  os_release(v1);
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_log_invoke(uint64_t a1, uint64_t a2)
{
  v4 = daemon_copy();
  v24 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (os_log_type_enabled(*(v4 + 4), OS_LOG_TYPE_DEBUG))
  {
    v6 = os_flagset_copy_string();
    v8 = *(a1 + 32);
    if (v8)
    {
      if (v8 == 1)
      {
        if (asprintf(&v24, "%s", (a1 + 40)) < 0)
        {
          sub_log_invoke_cold_1(&v25, buf);
        }
      }

      else if (v8 == 2)
      {
        v24 = os_mach_port_copy_description();
      }

      else if (asprintf(&v24, "[invalid target type: %#llx]", *(a1 + 32)) < 0)
      {
        sub_log_invoke_cold_1(&v25, buf);
      }
    }

    else if (asprintf(&v24, "%#llx", *(a1 + 40)) < 0)
    {
      sub_log_invoke_cold_1(&v25, buf);
    }

    v7 = xpc_copy_description(*(a1 + 304));
    v9 = *(v4 + 2);
    v10 = *__error();
    v11 = *(v4 + 4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = "[anonymous]";
      v13 = *(a1 + 16);
      v14 = *(a1 + 24);
      if (v9)
      {
        v12 = v9;
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 328);
      v17 = *(a1 + 332);
      v18 = *(a1 + 336);
      v19 = *(a1 + 340);
      v20 = *(a1 + 344);
      v21 = *(a1 + 348);
      v22 = *(a1 + 352);
      v23 = *(a1 + 356);
      *buf = 136450306;
      v27 = v12;
      v28 = 2080;
      v29 = a2;
      v30 = 2048;
      v31 = a1;
      v32 = 2080;
      v33 = v6;
      v34 = 2048;
      v35 = v13;
      v36 = 2048;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      v40 = 2080;
      v41 = v24;
      v42 = 2080;
      v43 = v7;
      v44 = 1024;
      v45 = v16;
      v46 = 1024;
      v47 = v17;
      v48 = 1024;
      v49 = v18;
      v50 = 1024;
      v51 = v19;
      v52 = 1024;
      v53 = v20;
      v54 = 1024;
      v55 = v21;
      v56 = 1024;
      v57 = v22;
      v58 = 1024;
      v59 = v23;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%{public}s: invoke = %s [%p]\ninvoke.flags = %s\ninvoke.target.sub = %llu\ninvoke.target.routine = %llu\ninvoke.target.type = %llu\ninvoke.target = %s\ninvoke.argv = %s\ninvoke.cred.auid = %u\ninvoke.cred.euid = %u\ninvoke.cred.egid = %u\ninvoke.cred.ruid = %u\ninvoke.cred.rgid = %u\ninvoke.cred.pid = %u\ninvoke.cred.asid = %u\ninvoke.cred.pidvers = %u\n", buf, 0x8Cu);
    }

    *__error() = v10;
    v5 = v24;
  }

  free(v7);
  free(v5);
  free(v6);
  os_release(v4);
}

void *sub_state_alloc(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = ctx_new(a1, 0x30uLL);
  v5[4] = rpc_copy(a2);
  v5[5] = rpc_copy(a3);
  return v5;
}

void sub_reply_and_consume(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  rpc_reply(*(*a1 + 32), *(*a1 + 40), a2);
  rpc_destroy(*(v3 + 32));
  rpc_destroy(*(v3 + 40));
  ctx_destroy(v3);
  *a1 = 0;
}

void sub_reply_and_consume_with_cferr(uint64_t *a1, __CFError *a2)
{
  v3 = *a1;
  rpc_reply_with_cferr(*(*a1 + 32), *(*a1 + 40), a2);
  rpc_destroy(*(v3 + 32));
  rpc_destroy(*(v3 + 40));
  ctx_destroy(v3);
  *a1 = 0;
}

uint64_t sub_get_subsystem_from_msg(void *a1)
{
  result = xpc_dictionary_get_string(a1, "SUBSYSTEM");
  if (result)
  {
    v2 = result;
    if (!strcmp(result, "CODEX"))
    {
      return 1;
    }

    else if (!strcmp(v2, "COLLATION"))
    {
      return 2;
    }

    else if (!strcmp(v2, "UPGRADE_WAIT"))
    {
      return 5;
    }

    else if (!strcmp(v2, "UPGRADE_LOCK"))
    {
      return 6;
    }

    else if (!strcmp(v2, "UPGRADE_ABORT"))
    {
      return 7;
    }

    else if (!strcmp(v2, "DAEMON"))
    {
      return 3;
    }

    else if (!strcmp(v2, "SESSION"))
    {
      return 4;
    }

    else if (!strcmp(v2, "MOUNT"))
    {
      return 8;
    }

    else if (!strcmp(v2, "ENDPOINT_LOOKUP"))
    {
      return 9;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_get_subsystem_from_msg_cold_1(v2);
      }

      return 0;
    }
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = _dg;
  v3[1] = dispatch_queue_create("com.apple.security.cryptexd.main", 0);
  daemon_init();
  v4 = daemon_copy();
  v5 = _NSGetMachExecuteHeader();
  size = 0;
  v6 = getsectdatafromheader_64(v5, "__DATA_CONST", "__object_init", &size);
  v7 = &v6[_dyld_get_image_slide()];
  v8 = _NSGetMachExecuteHeader();
  size = 0;
  v9 = getsectdatafromheader_64(v8, "__DATA_CONST", "__object_init", &size);
  if (v7 < &v9[_dyld_get_image_slide() + size])
  {
    do
    {
      v10 = *v7++;
      v10();
      v11 = _NSGetMachExecuteHeader();
      size = 0;
      v12 = getsectdatafromheader_64(v11, "__DATA_CONST", "__object_init", &size);
    }

    while (v7 < &v12[_dyld_get_image_slide() + size]);
  }

  inventory_xpc_init();
  *v3 |= 1uLL;
  daemon_post_multithreaded_hack(v4);
  dispatch_main();
}

CFErrorRef _amfi_load_trust_cache(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = 0;
  connect = 0;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  if (!a3)
  {
    v6 = os_log_create("com.apple.libcryptex", "amfi");
    v3 = v6;
  }

  v7 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(0, v7);
  if (!MatchingService)
  {
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      *&v63[0] = 0x4E04000100;
      v16 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v3, 16, "could not find AppleMobileFileIntegrity %{darwin.errno}d", v63, 8, v53, v54, v55, v56);
    }

    else
    {
      *&v63[0] = 0x4E04000100;
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "could not find AppleMobileFileIntegrity %{darwin.errno}d", v63, 8, v53, v54, v55, v56);
    }

    v23 = v16;
    v24 = "com.apple.security.cryptex.posix";
    v25 = 42;
    v26 = 78;
    goto LABEL_25;
  }

  v9 = MatchingService;
  file = _read_file(v4, v57);
  if (file)
  {
    v11 = file;
    v12 = file;
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v11;
      v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v3, 16, "failed to read im4m %{darwin.errno}d", COERCE_DOUBLE(67109120), v63, 8, v53, v54, v55, v56);
    }

    else
    {
      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = file;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "failed to read im4m %{darwin.errno}d", COERCE_DOUBLE(67109120), v63, 8, v53, v54, v55, v56);
    }

    v21 = v14;
    v22 = 48;
LABEL_34:
    Error = createError("_amfi_load_trust_cache", "amfi.c", v22, "com.apple.security.cryptex.posix", v12, 0, v21);
    v28 = v21;
    goto LABEL_35;
  }

  v17 = _read_file(v5, v59);
  if (v17)
  {
    v18 = v17;
    v12 = v17;
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v18;
      v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v3, 16, "failed to read trust cache %{darwin.errno}d", COERCE_DOUBLE(67109120), v63, 8, v53, v54, v55, v56);
    }

    else
    {
      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v17;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "failed to read trust cache %{darwin.errno}d", COERCE_DOUBLE(67109120), v63, 8, v53, v54, v55, v56);
    }

    v21 = v20;
    v22 = 54;
    goto LABEL_34;
  }

  v29 = IOServiceOpen(v9, mach_task_self_, 0, &connect);
  if (v29)
  {
    v30 = v29;
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v30;
      v32 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v3, 16, "IOServiceOpen: %#x", COERCE_DOUBLE(67109120), v63);
    }

    else
    {
      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v29;
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "IOServiceOpen: %#x", COERCE_DOUBLE(67109120), v63);
    }

    v23 = v32;
    v24 = "com.apple.security.cryptex";
    v25 = 60;
    v26 = 34;
LABEL_25:
    Error = createError("_amfi_load_trust_cache", "amfi.c", v25, v24, v26, 0, v23);
    v28 = v23;
LABEL_35:
    free(v28);
    v34 = 0;
    goto LABEL_36;
  }

  v38 = *(&v57[0] + 1) + *(&v59[0] + 1);
  v39 = mmap(0, *(&v57[0] + 1) + *(&v59[0] + 1) + 16, 3, 4098, -1, 0);
  if (v39 == -1)
  {
    v48 = *__error();
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v48;
      v50 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &_mh_execute_header, v3, 16, "mmap %{darwin.errno}d", COERCE_DOUBLE(67109120), v63, 8, v53, v54, v55, v56);
    }

    else
    {
      LODWORD(v63[0]) = 67109120;
      DWORD1(v63[0]) = v48;
      v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "mmap %{darwin.errno}d", COERCE_DOUBLE(67109120), v63, 8, v53, v54, v55, v56);
    }

    v51 = v50;
    Error = createError("_amfi_load_trust_cache", "amfi.c", 76, "com.apple.security.cryptex.posix", v48, 0, v50);
    v34 = 0;
  }

  else
  {
    v40 = v39;
    *v39 = *(&v57[0] + 1);
    v39[1] = *(&v59[0] + 1);
    buff_init(&v53, 0, _buff_destructor_munmap, v39, v38 + 16);
    v34 = buff_fopen(&v53, "rw", 0x10uLL);
    fwrite(*&v57[0], *(&v57[0] + 1), 1uLL, v34);
    if (fcheck_np())
    {
      _amfi_load_trust_cache_cold_1(&v62, v63);
    }

    fwrite(*&v59[0], *(&v59[0] + 1), 1uLL, v34);
    if (fcheck_np())
    {
      _amfi_load_trust_cache_cold_1(&v62, v63);
    }

    v41 = IOConnectCallMethod(connect, 7u, 0, 0, v40, v38 + 16, 0, 0, 0, 0);
    if (!v41)
    {
      Error = 0;
      goto LABEL_64;
    }

    v42 = v41;
    Errno = _IOErrorGetErrno(v41);
    v44 = Errno;
    v45 = Errno;
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      LODWORD(v63[0]) = 67109376;
      DWORD1(v63[0]) = v42;
      WORD4(v63[0]) = 1024;
      *(v63 + 10) = v44;
      LODWORD(v52) = 14;
      v47 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &_mh_execute_header, v3, 16, "load trust cache: %#x %{darwin.errno}d", COERCE_DOUBLE(67109376), v63, v52, v53, v54, v55, v56);
    }

    else
    {
      LODWORD(v63[0]) = 67109376;
      DWORD1(v63[0]) = v42;
      WORD4(v63[0]) = 1024;
      *(v63 + 10) = Errno;
      LODWORD(v52) = 14;
      v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "load trust cache: %#x %{darwin.errno}d", COERCE_DOUBLE(67109376), v63, v52, v53, v54, v55, v56);
    }

    v51 = v47;
    Error = createError("_amfi_load_trust_cache", "amfi.c", 106, "com.apple.security.cryptex.posix", v45, 0, v47);
  }

  free(v51);
LABEL_64:
  if (connect && IOServiceClose(connect))
  {
    _amfi_load_trust_cache_cold_3(&v62, v63);
  }

  if (v9 != -1)
  {
    mach_right_send_release();
  }

LABEL_36:
  buff_destroy(&v53, v33);
  buff_destroy(v59, v35);
  buff_destroy(v57, v36);
  if (v6)
  {
    os_release(v6);
  }

  if (v34 && fclose(v34) == -1 && *__error())
  {
    _amfi_load_trust_cache_cold_4(&v62, v63);
  }

  return Error;
}

CFErrorRef _amfi_unload_trust_cache(uint64_t a1, NSObject *a2)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  v36 = 0uLL;
  file = _read_file(a1, v33);
  if (!file)
  {
    Module = trustCacheExtractModule(v32, *&v33[0], *(&v33[0] + 1));
    if ((Module & 0xFF00) != 0)
    {
      *v35 = 0;
      asprintf(v35, "TCReturn_t(component: %d, error: %d, uniqueError: %d)", Module, BYTE1(Module), HIWORD(Module));
      v9 = *v35;
      if (a2)
      {
        if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        *v35 = 136446210;
        *&v35[4] = v9;
        LODWORD(v30) = 12;
        v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, a2, 16, "Failed to extract trust cache: %{public}s", COERCE_DOUBLE(136446210), v35, v30);
      }

      else
      {
        *v35 = 136446210;
        *&v35[4] = v9;
        LODWORD(v30) = 12;
        v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to extract trust cache: %{public}s", COERCE_DOUBLE(136446210), v35, v30);
      }

      v12 = v11;
      v20 = 144;
    }

    else
    {
      UUID = trustCacheGetUUID(v32, &v36);
      if ((UUID & 0xFF00) == 0)
      {
        if (!amfi_unload_trust_cache(&v36) || (v22 = *__error()) == 0)
        {
          v9 = 0;
          Error = 0;
          goto LABEL_38;
        }

        if (v22 == 78)
        {
          if (a2)
          {
            if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            *v35 = 0;
            v27 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, a2, 16, "Unloading trust cache is not implemented.", v35, 2);
          }

          else
          {
            *v35 = 0;
            v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Unloading trust cache is not implemented.", v35, 2);
          }

          v12 = v27;
          v13 = "com.apple.security.cryptex";
          v14 = 168;
        }

        else
        {
          if (v22 != 45)
          {
            v5 = v22;
            if (a2)
            {
              if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
              {
                v28 = 3;
              }

              else
              {
                v28 = 2;
              }

              *v35 = 67109120;
              *&v35[4] = v22;
              v29 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, a2, 16, "failed to unload trust cache %{darwin.errno}d", COERCE_DOUBLE(67109120), v35, 8);
            }

            else
            {
              *v35 = 67109120;
              *&v35[4] = v22;
              v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "failed to unload trust cache %{darwin.errno}d", COERCE_DOUBLE(67109120), v35, 8);
            }

            v12 = v29;
            v13 = "com.apple.security.cryptex.posix";
            v14 = 172;
            goto LABEL_15;
          }

          if (a2)
          {
            if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            *v35 = 0;
            v24 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, a2, 16, "Unloading trust cache is not supported on this device.", v35, 2);
          }

          else
          {
            *v35 = 0;
            v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Unloading trust cache is not supported on this device.", v35, 2);
          }

          v12 = v24;
          v13 = "com.apple.security.cryptex";
          v14 = 164;
        }

        v15 = 10;
        goto LABEL_16;
      }

      *v35 = 0;
      asprintf(v35, "TCReturn_t(component: %d, error: %d, uniqueError: %d)", UUID, BYTE1(UUID), HIWORD(UUID));
      v9 = *v35;
      if (a2)
      {
        if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        *v35 = 136446210;
        *&v35[4] = v9;
        LODWORD(v31) = 12;
        v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, a2, 16, "Failed to get trust cache UUID: %{public}s", COERCE_DOUBLE(136446210), v35, v31);
      }

      else
      {
        *v35 = 136446210;
        *&v35[4] = v9;
        LODWORD(v31) = 12;
        v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "Failed to get trust cache UUID: %{public}s", COERCE_DOUBLE(136446210), v35, v31);
      }

      v12 = v19;
      v20 = 152;
    }

    Error = createError("_amfi_unload_trust_cache", "amfi.c", v20, "com.apple.security.cryptex", 38, 0, v12);
    goto LABEL_37;
  }

  v4 = file;
  v5 = file;
  if (a2)
  {
    if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    *v35 = 67109120;
    *&v35[4] = v4;
    v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, a2, 16, "failed to read trust cache %{darwin.errno}d", COERCE_DOUBLE(67109120), v35, 8);
  }

  else
  {
    *v35 = 67109120;
    *&v35[4] = file;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "failed to read trust cache %{darwin.errno}d", COERCE_DOUBLE(67109120), v35, 8);
  }

  v12 = v7;
  v13 = "com.apple.security.cryptex.posix";
  v14 = 136;
LABEL_15:
  v15 = v5;
LABEL_16:
  Error = createError("_amfi_unload_trust_cache", "amfi.c", v14, v13, v15, 0, v12);
  v9 = 0;
LABEL_37:
  free(v12);
LABEL_38:
  buff_destroy(v33, v21);
  free(v9);
  return Error;
}

void _quire_dealloc(uint64_t a1)
{
  v1 = *(a1 + 396);
  v2 = *(a1 + 392);
  if ((v1 & 0x80000000) == 0 || (v2 & 0x80000000) == 0)
  {
    v9 = 0;
    memset(v13, 0, sizeof(v13));
    v6 = v2;
    v7 = v1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    LODWORD(v10) = 67109376;
    HIDWORD(v10) = v7;
    v11 = 1024;
    v12 = v6;
    _os_log_send_and_compose_impl(v8, &v9, v13, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: quire deallocated with active mount: dev = %d, mnt = %d", &v10, 14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  if ((*(a1 + 400) & 0x80000000) == 0)
  {
    close_drop_np();
  }

  if (*(a1 + 184))
  {
LABEL_17:
    _quire_dealloc_cold_1(&v10, v13);
  }

  quire_destroy_attr(a1 + 208);
  free(*(a1 + 360));
  os_release(*(a1 + 200));
  v4 = *(a1 + 408);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    xpc_release(v5);
  }

  _quire_free_and_drop_strings(a1);

  object_proto_destroy(a1 + 56);
}

void quire_destroy_attr(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (!*(a1 + 104))
      {
        goto LABEL_7;
      }

      v3 = 0;
      do
      {
        v4 = a1 + 8 * v3;
        free(*(v4 + 40));
        *(v4 + 40) = 0;
        ++v3;
      }

      while (v3 < *(a1 + 104));
      v2 = *a1;
      if (*a1)
      {
LABEL_7:
        free(v2);
        *a1 = 0;
      }

      if (*(a1 + 16))
      {
        cryptex_version_destroy();
        *(a1 + 16) = 0;
      }

      v5 = *(a1 + 24);
      if (v5)
      {
        os_release(v5);
        *(a1 + 24) = 0;
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        free(v6);
        *(a1 + 32) = 0;
      }

      v7 = *(a1 + 128);
      if (v7)
      {
        xpc_release(v7);
        *(a1 + 128) = 0;
      }

      v8 = *(a1 + 136);
      if (v8)
      {
        xpc_release(v8);
        *(a1 + 136) = 0;
      }

      v9 = *(a1 + 120);
      if (v9)
      {
        xpc_release(v9);
        *(a1 + 120) = 0;
      }
    }
  }
}

void _quire_free_and_drop_strings(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    free(v2);
    *(a1 + 368) = 0;
  }

  free(*(a1 + 416));
  *(a1 + 416) = 0;
  free(*(a1 + 424));
  *(a1 + 424) = 0;
  free(*(a1 + 432));
  *(a1 + 432) = 0;
}

uint64_t quire_make_attr(void *a1, void *a2, uint64_t a3, int a4)
{
  v8 = daemon_copy();
  if (os_log_type_enabled(*(v8 + 4), OS_LOG_TYPE_DEBUG))
  {
    v9 = xpc_copy_description(a1);
    v10 = *(v8 + 2);
    v11 = *__error();
    v12 = *(v8 + 4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = "[anonymous]";
      if (v10)
      {
        v13 = v10;
      }

      *buf = 136446466;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}s: making attr from: %s", buf, 0x16u);
    }

    *__error() = v11;
    free(v9);
  }

  v14 = _xpc_plist_value_copy(&_bundle_identifier, a1);
  if (v14)
  {
    v15 = v14;
    v16 = _xpc_plist_value_copy(&_bundle_version, a1);
    if (!v16)
    {
      v25 = *(v8 + 2);
      v26 = *__error();
      v27 = *(v8 + 4);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = "[anonymous]";
        *buf = 136446978;
        if (v25)
        {
          v28 = v25;
        }

        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "CFBundleVersion";
        *&buf[22] = 2112;
        v40 = a1;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = 212;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: missing key: %s: %@: %{darwin.errno}d", buf, 0x26u);
      }

      *__error() = v26;
      v24 = 212;
      goto LABEL_45;
    }

    v17 = v16;
    v18 = _xpc_plist_value_copy(&_bundle_bootstrap_contents, a1);
    if (v18)
    {
      v19 = daemon_copy();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = ___quire_attr_parse_bootstrap_contents_block_invoke;
      v40 = &__block_descriptor_tmp_22;
      v41 = v19;
      v42 = a3;
      xpc_array_apply(v18, buf);
      if (v19)
      {
        os_release(v19);
      }
    }

    xpc_string_get_string_ptr(v15);
    if (a4)
    {
      xpc_string_get_string_ptr(v17);
      asprintf(a3, "%s-v%s");
    }

    else
    {
      asprintf(a3, "%s");
    }

    string_ptr = _xpc_plist_value_copy(&_required_mount_path, a1);
    v30 = string_ptr;
    if (string_ptr)
    {
      string_ptr = xpc_string_get_string_ptr(string_ptr);
    }

    *(a3 + 8) = string_ptr;
    v31 = _xpc_plist_value_copy(&_developer_mode_required, a1);
    v32 = v31;
    if (v31)
    {
      if (xpc_get_type(v31) != &_xpc_type_BOOL)
      {
        v33 = *(v8 + 2);
        v34 = *__error();
        v35 = *(v8 + 4);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = "[anonymous]";
          *buf = 136446978;
          if (v33)
          {
            v36 = v33;
          }

          *&buf[4] = v36;
          *&buf[12] = 2080;
          *&buf[14] = "DeveloperModeRequired";
          *&buf[22] = 2112;
          v40 = a1;
          LOWORD(v41) = 1024;
          *(&v41 + 2) = 212;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s: invalid value for key: %s: %@: %{darwin.errno}d", buf, 0x26u);
        }

        *__error() = v34;
        os_release(v8);
        v37 = 212;
LABEL_39:
        os_release(v32);
        v24 = v37;
LABEL_40:
        if (v18)
        {
          os_release(v18);
        }

        if (v30)
        {
          os_release(v30);
        }

        v8 = v17;
LABEL_45:
        os_release(v8);
        goto LABEL_46;
      }

      LOBYTE(v31) = xpc_BOOL_get_value(v32);
    }

    *(a3 + 144) = v31;
    *(a3 + 120) = _xpc_plist_value_copy(&_bundle_command, a1);
    *(a3 + 136) = _xpc_plist_value_copy(&_bundle_command_args, a1);
    *(a3 + 128) = _xpc_plist_value_copy(&_bundle_env, a1);
    xpc_string_get_string_ptr(v17);
    *(a3 + 16) = cryptex_version_new();
    *(a3 + 24) = os_retain(a1);
    if (a2)
    {
      *(a3 + 32) = *a2;
    }

    else
    {
      a2 = (a3 + 32);
    }

    *a2 = 0;
    os_release(v8);
    v37 = 0;
    v24 = 0;
    if (!v32)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v20 = *(v8 + 2);
  v21 = *__error();
  v22 = *(v8 + 4);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = "[anonymous]";
    *buf = 136446978;
    if (v20)
    {
      v23 = v20;
    }

    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = "CFBundleIdentifier";
    *&buf[22] = 2112;
    v40 = a1;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = 212;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s: missing key: %s: %@: %{darwin.errno}d", buf, 0x26u);
  }

  *__error() = v21;
  v24 = 212;
  v15 = v8;
LABEL_46:
  os_release(v15);
  return v24;
}

uint64_t quire_attr_populate_dependencies(uint64_t a1, uint64_t a2)
{
  v4 = daemon_copy();
  v5 = *(a1 + 24);
  if (!v5)
  {
    quire_attr_populate_dependencies_cold_5(&v41, buf);
  }

  array = xpc_dictionary_get_array(v5, "Dependencies");
  count = xpc_array_get_count(array);
  if (count > 8)
  {
    v8 = 59;
    if (!v4)
    {
      return v8;
    }

    goto LABEL_47;
  }

  v9 = count;
  v10 = daemon_copy();
  if (!array)
  {
    quire_attr_populate_dependencies_cold_4(&v41, buf);
  }

  v11 = v10;
  type = xpc_get_type(array);
  if (type != &_xpc_type_array)
  {
    quire_attr_populate_dependencies_cold_1(&v41, buf, type);
  }

  v13 = xpc_array_get_count(array);
  if (v13)
  {
    v14 = v13;
    v39 = v4;
    v40 = v11;
    for (i = 0; i != v14; ++i)
    {
      dictionary = xpc_array_get_dictionary(array, i);
      if (!dictionary)
      {
        v11 = v40;
        v25 = *(v40 + 2);
        v26 = *__error();
        v27 = *(v40 + 4);
        v4 = v39;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = "[anonymous]";
          if (v25)
          {
            v28 = v25;
          }

          *buf = 136446466;
          v43 = v28;
          v44 = 2048;
          v45 = i;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}s: unable to parse dependency dictionary for element %lu in dependencies array from c411", buf, 0x16u);
        }

        goto LABEL_35;
      }

      v17 = dictionary;
      string = xpc_dictionary_get_string(dictionary, "CFBundleIdentifier");
      v19 = xpc_dictionary_get_string(v17, "CFBundleVersion");
      if (!string)
      {
        v8 = 22;
        goto LABEL_26;
      }

      v20 = v19;
      if (!collation_map_lookup_cryptex_with_attributes(a2, string, v19))
      {
        v29 = *(v40 + 2);
        v26 = *__error();
        v30 = *(v40 + 4);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = "[anonymous]";
          if (v29)
          {
            v31 = v29;
          }

          v32 = "unspecified";
          *buf = 136446722;
          v43 = v31;
          v44 = 2080;
          v45 = string;
          if (v20)
          {
            v32 = v20;
          }

          v46 = 2080;
          v47 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s: unable to satisfy dependency with bundleID : %s (min version : %s)", buf, 0x20u);
        }

        v4 = v39;
        v11 = v40;
LABEL_35:
        *__error() = v26;
        v8 = 22;
        goto LABEL_36;
      }
    }

    v8 = 0;
LABEL_26:
    v4 = v39;
    v11 = v40;
    if (v40)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v8 = 0;
    if (v11)
    {
LABEL_36:
      os_release(v11);
      if (v8)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }
  }

  if (v8)
  {
LABEL_16:
    v21 = v4[2];
    v22 = *__error();
    v23 = v4[4];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = "[anonymous]";
      if (v21)
      {
        v24 = v21;
      }

      *buf = 136446466;
      v43 = v24;
      v44 = 1024;
      LODWORD(v45) = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: quire_evaluate_dependencies() failed: %{darwin.errno}d", buf, 0x12u);
    }

    *__error() = v22;
LABEL_47:
    os_release(v4);
    return v8;
  }

LABEL_37:
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v34 = xpc_array_get_dictionary(array, j);
      if (!v34)
      {
        quire_attr_populate_dependencies_cold_3();
      }

      v35 = xpc_dictionary_get_string(v34, "CFBundleIdentifier");
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v36 = strdup(v35);
          if (v36)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v36 = strdup(v35);
        if (!v36)
        {
          quire_attr_populate_dependencies_cold_2();
        }
      }

      v37 = *(a1 + 104);
      *(a1 + 40 + 8 * v37) = v36;
      *(a1 + 104) = v37 + 1;
    }
  }

  v8 = 0;
  if (v4)
  {
    goto LABEL_47;
  }

  return v8;
}

CFErrorRef quire_attr_enforce_install_limits(uint64_t a1)
{
  v2 = daemon_copy();
  v3 = *(a1 + 24);
  if (!v3)
  {
    quire_attr_populate_dependencies_cold_5(&v88, buf);
  }

  if (&_secure_config_parameters_copy_cryptex_app_identifiers_4libcryptex)
  {
    array = xpc_dictionary_get_array(v3, "LimitInstallToApps");
    if (array)
    {
      v5 = array;
      count = xpc_array_get_count(array);
      if (count)
      {
        v7 = count;
        if (count >= 0x101)
        {
          v8 = *(v2 + 4);
          if (v8)
          {
            v9 = os_log_type_enabled(*(v2 + 4), OS_LOG_TYPE_ERROR);
            v10 = *(v2 + 2);
            if (v9)
            {
              v11 = 3;
            }

            else
            {
              v11 = 2;
            }

            *buf = 136446978;
            if (!v10)
            {
              v10 = "[anonymous]";
            }

            *&buf[4] = v10;
            *&buf[12] = 2048;
            *&buf[14] = v7;
            *&buf[22] = 1024;
            LODWORD(v95) = 256;
            WORD2(v95) = 1024;
            *(&v95 + 6) = 59;
            v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: count of install limits entries (%zu) exceeds (%d); denying this install %{darwin.errno}d", COERCE_DOUBLE(136446978), buf, 34);
          }

          else
          {
            v42 = *(v2 + 2);
            if (!v42)
            {
              v42 = "[anonymous]";
            }

            *buf = 136446978;
            *&buf[4] = v42;
            *&buf[12] = 2048;
            *&buf[14] = count;
            *&buf[22] = 1024;
            LODWORD(v95) = 256;
            WORD2(v95) = 1024;
            *(&v95 + 6) = 59;
            v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: count of install limits entries (%zu) exceeds (%d); denying this install %{darwin.errno}d", COERCE_DOUBLE(136446978), buf, 34);
          }

          v43 = v12;
          Error = createError("quire_attr_enforce_install_limits", "quire.c", 3643, "com.apple.security.cryptex.posix", 59, 0, v12);
          free(v43);
          goto LABEL_28;
        }

        v25 = daemon_copy();
        type = xpc_get_type(v5);
        if (type != &_xpc_type_array)
        {
          quire_attr_enforce_install_limits_cold_1(&v88, buf, type);
        }

        if (!xpc_array_get_count(v5))
        {
          quire_attr_enforce_install_limits_cold_2(&v88, buf);
        }

        v27 = secure_config_parameters_load_with_error();
        if (!v27 || (v28 = CFRetain(v27)) == 0)
        {
          v38 = *(v25 + 4);
          if (v38)
          {
            if (os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR))
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v40 = *(v25 + 2);
            if (!v40)
            {
              v40 = "[anonymous]";
            }

            *buf = 136446466;
            *&buf[4] = v40;
            *&buf[12] = 1024;
            *&buf[14] = 22;
            v41 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, v38, 16, "%{public}s: Unable to load secure config parameters; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          else
          {
            v44 = *(v25 + 2);
            if (!v44)
            {
              v44 = "[anonymous]";
            }

            *buf = 136446466;
            *&buf[4] = v44;
            *&buf[12] = 1024;
            *&buf[14] = 22;
            v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Unable to load secure config parameters; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          v45 = v41;
          Error = createError("quire_evaluate_install_limits", "quire.c", 3521, "com.apple.security.cryptex.posix", 22, 0, v41);
          free(v45);
          v29 = 0;
          v46 = 1;
          goto LABEL_123;
        }

        v29 = v28;
        v30 = secure_config_parameters_copy_cryptex_app_identifiers_4libcryptex();
        v31 = CFArrayGetCount(v30);
        if (!v30)
        {
          v47 = *(v25 + 4);
          if (v47)
          {
            if (os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR))
            {
              v48 = 3;
            }

            else
            {
              v48 = 2;
            }

            v49 = *(v25 + 2);
            if (!v49)
            {
              v49 = "[anonymous]";
            }

            *buf = 136446466;
            *&buf[4] = v49;
            *&buf[12] = 1024;
            *&buf[14] = 22;
            v50 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &_mh_execute_header, v47, 16, "%{public}s: No value for key 'com.apple.libcryptex.appIdentifiers'in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          else
          {
            v61 = *(v25 + 2);
            if (!v61)
            {
              v61 = "[anonymous]";
            }

            *buf = 136446466;
            *&buf[4] = v61;
            *&buf[12] = 1024;
            *&buf[14] = 22;
            v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: No value for key 'com.apple.libcryptex.appIdentifiers'in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          v62 = v50;
          Error = createError("quire_evaluate_install_limits", "quire.c", 3531, "com.apple.security.cryptex.posix", 22, 0, v50);
          free(v62);
          goto LABEL_122;
        }

        v32 = v31;
        if (v31)
        {
          if (v31 <= 256)
          {
            if (v31 < 1)
            {
LABEL_80:
              Error = 0;
LABEL_121:
              CFRelease(v30);
LABEL_122:
              v46 = 0;
LABEL_123:
              if ((v46 & 1) == 0)
              {
                os_release(v29);
              }

              if (v25)
              {
                os_release(v25);
              }

              if (!Error)
              {
                if (!v2)
                {
                  return Error;
                }

                goto LABEL_28;
              }

              v81 = *(v2 + 2);
              v14 = *__error();
              v82 = *(v2 + 4);
              if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
              {
                v83 = "[anonymous]";
                if (v81)
                {
                  v83 = v81;
                }

                *buf = 136446466;
                *&buf[4] = v83;
                *&buf[12] = 2112;
                *&buf[14] = Error;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%{public}s: quire_evaluate_install_limits() failed: %@", buf, 0x16u);
              }

              v22 = __error();
              goto LABEL_27;
            }

            v55 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v30, v55);
              if (!ValueAtIndex)
              {
                break;
              }

              v57 = ValueAtIndex;
              v58 = CFGetTypeID(ValueAtIndex);
              if (v58 != CFStringGetTypeID())
              {
                break;
              }

              v59 = _CFStringCopyUTF8String(v57);
              v60 = v59;
              if (!v59)
              {
                v70 = *(v25 + 4);
                if (v70)
                {
                  if (os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR))
                  {
                    v71 = 3;
                  }

                  else
                  {
                    v71 = 2;
                  }

                  v72 = *(v25 + 2);
                  if (!v72)
                  {
                    v72 = "[anonymous]";
                  }

                  v88 = 136446466;
                  v89 = v72;
                  v90 = 1024;
                  LODWORD(v91) = 22;
                  v73 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &_mh_execute_header, v70, 16, "%{public}s: NULL app identifier in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), &v88, 18);
                }

                else
                {
                  v84 = *(v25 + 2);
                  if (!v84)
                  {
                    v84 = "[anonymous]";
                  }

                  v88 = 136446466;
                  v89 = v84;
                  v90 = 1024;
                  LODWORD(v91) = 22;
                  v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: NULL app identifier in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), &v88, 18);
                }

                v85 = v73;
                v86 = 3569;
                goto LABEL_144;
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 0x40000000;
              *&buf[16] = __quire_evaluate_install_limits_block_invoke;
              *&v95 = &__block_descriptor_tmp_31;
              *(&v95 + 1) = v59;
              if (xpc_array_apply(v5, buf))
              {
                v74 = *(v25 + 4);
                if (v74)
                {
                  v75 = os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR);
                  v76 = *(v25 + 2);
                  if (v75)
                  {
                    v77 = 3;
                  }

                  else
                  {
                    v77 = 2;
                  }

                  v88 = 136446722;
                  if (v76)
                  {
                    v78 = v76;
                  }

                  else
                  {
                    v78 = "[anonymous]";
                  }

                  v89 = v78;
                  v90 = 2080;
                  v91 = v57;
                  v92 = 1024;
                  v93 = 22;
                  v79 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &_mh_execute_header, v74, 16, "%{public}s: install limits contains no entry for identifier '%s'; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446722), &v88, 28);
                }

                else
                {
                  v87 = "[anonymous]";
                  if (*(v25 + 2))
                  {
                    v87 = *(v25 + 2);
                  }

                  v88 = 136446722;
                  v89 = v87;
                  v90 = 2080;
                  v91 = v57;
                  v92 = 1024;
                  v93 = 22;
                  v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: install limits contains no entry for identifier '%s'; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446722), &v88, 28);
                }

                v85 = v79;
                v86 = 3600;
LABEL_144:
                Error = createError("quire_evaluate_install_limits", "quire.c", v86, "com.apple.security.cryptex.posix", 22, 0, v85);
                free(v85);
                goto LABEL_120;
              }

              free(v60);
              if (v32 == ++v55)
              {
                goto LABEL_80;
              }
            }

            v66 = *(v25 + 4);
            if (v66)
            {
              if (os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR))
              {
                v67 = 3;
              }

              else
              {
                v67 = 2;
              }

              v68 = *(v25 + 2);
              if (!v68)
              {
                v68 = "[anonymous]";
              }

              v88 = 136446466;
              v89 = v68;
              v90 = 1024;
              LODWORD(v91) = 22;
              v69 = _os_log_send_and_compose_impl(v67, 0, 0, 0, &_mh_execute_header, v66, 16, "%{public}s: non-string app identifier in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), &v88, 18);
            }

            else
            {
              v80 = *(v25 + 2);
              if (!v80)
              {
                v80 = "[anonymous]";
              }

              v88 = 136446466;
              v89 = v80;
              v90 = 1024;
              LODWORD(v91) = 22;
              v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: non-string app identifier in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), &v88, 18);
            }

            v60 = v69;
            v64 = 3560;
          }

          else
          {
            v33 = *(v25 + 4);
            if (v33)
            {
              v34 = os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR);
              v35 = *(v25 + 2);
              if (v34)
              {
                v36 = 3;
              }

              else
              {
                v36 = 2;
              }

              *buf = 136446978;
              if (!v35)
              {
                v35 = "[anonymous]";
              }

              *&buf[4] = v35;
              *&buf[12] = 2048;
              *&buf[14] = v32;
              *&buf[22] = 1024;
              LODWORD(v95) = 256;
              WORD2(v95) = 1024;
              *(&v95 + 6) = 22;
              v37 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, v33, 16, "%{public}s: Count of secure config app identifiers (%zu) exceeds maximum allowable (%d); denying this install %{darwin.errno}d", COERCE_DOUBLE(136446978), buf, 34);
            }

            else
            {
              v65 = *(v25 + 2);
              if (!v65)
              {
                v65 = "[anonymous]";
              }

              *buf = 136446978;
              *&buf[4] = v65;
              *&buf[12] = 2048;
              *&buf[14] = v31;
              *&buf[22] = 1024;
              LODWORD(v95) = 256;
              WORD2(v95) = 1024;
              *(&v95 + 6) = 22;
              v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Count of secure config app identifiers (%zu) exceeds maximum allowable (%d); denying this install %{darwin.errno}d", COERCE_DOUBLE(136446978), buf, 34);
            }

            v60 = v37;
            v64 = 3549;
          }
        }

        else
        {
          v51 = *(v25 + 4);
          if (v51)
          {
            if (os_log_type_enabled(*(v25 + 4), OS_LOG_TYPE_ERROR))
            {
              v52 = 3;
            }

            else
            {
              v52 = 2;
            }

            v53 = *(v25 + 2);
            if (!v53)
            {
              v53 = "[anonymous]";
            }

            *buf = 136446466;
            *&buf[4] = v53;
            *&buf[12] = 1024;
            *&buf[14] = 22;
            v54 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &_mh_execute_header, v51, 16, "%{public}s: empty install limits in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          else
          {
            v63 = *(v25 + 2);
            if (!v63)
            {
              v63 = "[anonymous]";
            }

            *buf = 136446466;
            *&buf[4] = v63;
            *&buf[12] = 1024;
            *&buf[14] = 22;
            v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: empty install limits in secure config; denying this install %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
          }

          v60 = v54;
          v64 = 3539;
        }

        Error = createError("quire_evaluate_install_limits", "quire.c", v64, "com.apple.security.cryptex.posix", 22, 0, v60);
LABEL_120:
        free(v60);
        goto LABEL_121;
      }

      v20 = *(v2 + 2);
      v14 = *__error();
      v15 = *(v2 + 4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = "[anonymous]";
        if (v20)
        {
          v21 = v20;
        }

        *buf = 136446210;
        *&buf[4] = v21;
        v17 = "%{public}s: empty install limits; policy allows any install";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
      }
    }

    else
    {
      v18 = *(v2 + 2);
      v14 = *__error();
      v15 = *(v2 + 4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = "[anonymous]";
        if (v18)
        {
          v19 = v18;
        }

        *buf = 136446210;
        *&buf[4] = v19;
        v17 = "%{public}s: no install limits found; policy allows any install";
        goto LABEL_25;
      }
    }
  }

  else
  {
    v13 = *(v2 + 2);
    v14 = *__error();
    v15 = *(v2 + 4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = "[anonymous]";
      if (v13)
      {
        v16 = v13;
      }

      *buf = 136446210;
      *&buf[4] = v16;
      v17 = "%{public}s: SecureConfigDB not available; policy allows any install";
      goto LABEL_25;
    }
  }

  v22 = __error();
  Error = 0;
LABEL_27:
  *v22 = v14;
LABEL_28:
  os_release(v2);
  return Error;
}

uint64_t quire_create(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = a3 + 2;
  v9 = _quire_alloc(488);
  *(v9 + 176) = a4;
  v10 = *(a3 + 1);
  *(v9 + 208) = *a3;
  *(v9 + 224) = v10;
  v11 = *(a3 + 5);
  v13 = *(a3 + 2);
  v12 = *(a3 + 3);
  *(v9 + 272) = *(a3 + 4);
  *(v9 + 288) = v11;
  *(v9 + 240) = v13;
  *(v9 + 256) = v12;
  v15 = *(a3 + 7);
  v14 = *(a3 + 8);
  v16 = *(a3 + 6);
  *(v9 + 352) = a3[18];
  *(v9 + 320) = v15;
  *(v9 + 336) = v14;
  *(v9 + 304) = v16;
  v17 = os_retain(a2);
  *(v9 + 392) = -1;
  *(v9 + 400) = -1;
  *(v9 + 188) = 0;
  *(v9 + 192) = 0;
  *(v9 + 200) = v17;
  *(v9 + 360) = cryptex_core_unparse_hdiid();
  *(v9 + 384) = v9 + 376;
  v18 = (v9 + 472);
  *(v9 + 368) = 0u;
  *(v9 + 472) = 0u;
  if (a3[13])
  {
    v19 = 0;
    do
    {
      v20 = codex_copy_quire(a1, a3[v19 + 5], 0);
      if (!v20)
      {
        quire_create_cold_3();
      }

      v21 = v20;
      v22 = malloc_type_malloc(0x10uLL, 0x2F48DA65uLL);
      if (!v22)
      {
        quire_create_cold_1();
      }

      v23 = v22;
      *v22 = v21;
      os_retain(v21);
      v23[1] = *v18;
      *v18 = v23;
      v24 = malloc_type_malloc(0x10uLL, 0x2F48DA65uLL);
      if (!v24)
      {
        quire_create_cold_1();
      }

      v25 = v24;
      *v24 = v9;
      os_retain(v9);
      v25[1] = v21[60];
      v21[60] = v25;
      os_release(v21);
      ++v19;
    }

    while (v19 < a3[13]);
  }

  *a3 = 0;
  *v8 = 0;
  v8[1] = 0;
  object_proto_init(v9 + 56, "com.apple.security.cryptexd", "quire");
  object_set_name_nocopy(v9 + 56, *(v9 + 208));
  cryptex_init();
  hash_node_init_cstr(v9 + 80, *(v9 + 208));
  hash_node_init_cstr(v9 + 112, *(v9 + 208));
  hash_node_init_cstr(v9 + 144, *(v9 + 208));
  return v9;
}

void *quire_mount(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = ctx_new(a1, 0x60uLL);
  *(result + 13) = a2;
  *(result + 14) = a3;
  result[9] = a4;
  result[10] = a5;
  if (*(a1 + 184))
  {
    result[4] = 0;
    **(a1 + 384) = result;
    *(a1 + 384) = result + 4;
  }

  else
  {

    return cryptex_async_f();
  }

  return result;
}

uint64_t _quire_mount_continue(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(a1 + 13);
  v3 = *(a1 + 14);
  v205 = -1;
  v206 = -1;
  v5 = *(v2 + 240);
  if (!v5)
  {
    memset(__str, 0, 255);
    v223 = 0u;
    memset(v224, 0, sizeof(v224));
    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    *v210 = 0u;
    if ((*(v2 + 392) & 0x80000000) == 0)
    {
      v15 = *(v2 + 72);
      if (v15)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v17 = *(v2 + 56);
        if (!v17)
        {
          v17 = "[anonymous]";
        }

        v232.st_dev = 136446466;
        *&v232.st_mode = v17;
        WORD2(v232.st_ino) = 1024;
        *(&v232.st_ino + 6) = 37;
        v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "%{public}s: already mounted %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
      }

      else
      {
        v42 = *(v2 + 56);
        if (!v42)
        {
          v42 = "[anonymous]";
        }

        v232.st_dev = 136446466;
        *&v232.st_mode = v42;
        WORD2(v232.st_ino) = 1024;
        *(&v232.st_ino + 6) = 37;
        v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: already mounted %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
      }

      v43 = v18;
      v44 = "com.apple.security.cryptex.posix";
      v45 = 575;
      v46 = 37;
      goto LABEL_290;
    }

    if (*(v2 + 216))
    {
      v29 = *(v2 + 56);
      v30 = *__error();
      v31 = *(v2 + 72);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = "[anonymous]";
        v33 = *(v2 + 216);
        if (v29)
        {
          v32 = v29;
        }

        v232.st_dev = 136446466;
        *&v232.st_mode = v32;
        WORD2(v232.st_ino) = 2080;
        *(&v232.st_ino + 6) = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: custom mount path %s", &v232, 0x16u);
      }

      *__error() = v30;
      if (**(v2 + 216) != 47)
      {
        v88 = *(v2 + 72);
        if (v88)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v89 = 3;
          }

          else
          {
            v89 = 2;
          }

          v90 = *(v2 + 56);
          if (!v90)
          {
            v90 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v90;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = 22;
          v91 = _os_log_send_and_compose_impl(v89, 0, 0, 0, &_mh_execute_header, v88, 16, "%{public}s: Mount path isn't absolute. %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        else
        {
          v109 = *(v2 + 56);
          if (!v109)
          {
            v109 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v109;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = 22;
          v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Mount path isn't absolute. %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        v43 = v91;
        v44 = "com.apple.security.cryptex.posix";
        v45 = 585;
        v46 = 22;
        goto LABEL_290;
      }

      snprintf(__str, 0xFFuLL, "%s", *(v2 + 216));
      v34 = _mkdir(__str, 0x1FFu, &v206);
      if (v34)
      {
        v35 = v34;
        v36 = v34;
        v37 = *(v2 + 72);
        if (v37)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          v39 = *(v2 + 56);
          if (!v39)
          {
            v39 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v39;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v35;
          v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v37, 16, "%{public}s: _mkdir %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        else
        {
          v111 = *(v2 + 56);
          if (!v111)
          {
            v111 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v111;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v34;
          v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _mkdir %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        v43 = v40;
        v44 = "com.apple.security.cryptex.posix";
        v45 = 591;
LABEL_289:
        v46 = v36;
LABEL_290:
        Error = createError("_quire_mount_continue", "quire.c", v45, v44, v46, 0, v43);
        free(v43);
        goto LABEL_291;
      }

      if (*(v2 + 353) == 1)
      {
        v95 = 0;
        v96 = 1;
        while (1)
        {
          v97 = v96;
          if (path_is_parent(_nocode_mount_paths[v95], *(v2 + 216)))
          {
            break;
          }

          v96 = 0;
          v95 = 1;
          if ((v97 & 1) == 0)
          {
            v98 = *(v2 + 72);
            if (v98)
            {
              if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
              {
                v99 = 3;
              }

              else
              {
                v99 = 2;
              }

              v100 = *(v2 + 56);
              v101 = *(v2 + 216);
              if (!v100)
              {
                v100 = "[anonymous]";
              }

              v232.st_dev = 136446466;
              *&v232.st_mode = v100;
              WORD2(v232.st_ino) = 2082;
              *(&v232.st_ino + 6) = v101;
              v102 = _os_log_send_and_compose_impl(v99, 0, 0, 0, &_mh_execute_header, v98, 16, "%{public}s: Custom mount path %{public}s is not permitted for NoCode cryptex.", COERCE_DOUBLE(136446466), &v232, 22);
            }

            else
            {
              v163 = *(v2 + 56);
              if (!v163)
              {
                v163 = "[anonymous]";
              }

              v164 = *(v2 + 216);
              v232.st_dev = 136446466;
              *&v232.st_mode = v163;
              WORD2(v232.st_ino) = 2082;
              *(&v232.st_ino + 6) = v164;
              v102 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Custom mount path %{public}s is not permitted for NoCode cryptex.", COERCE_DOUBLE(136446466), &v232, 22);
            }

            v43 = v102;
            v44 = "com.apple.security.cryptex";
            v45 = 605;
            v46 = 2;
            goto LABEL_290;
          }
        }
      }
    }

    else
    {
      snprintf(__str, 0xFFuLL, "%s.XXXXXX", *(v2 + 208));
      v76 = _mkodtempat(v4, __str, &v206);
      if (v76)
      {
        v77 = v76;
        v36 = v76;
        v78 = *(v2 + 72);
        if (v78)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v79 = 3;
          }

          else
          {
            v79 = 2;
          }

          v80 = *(v2 + 56);
          if (!v80)
          {
            v80 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v80;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v77;
          v81 = _os_log_send_and_compose_impl(v79, 0, 0, 0, &_mh_execute_header, v78, 16, "%{public}s: _mkodtempat mntdirfd %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        else
        {
          v110 = *(v2 + 56);
          if (!v110)
          {
            v110 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v110;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v76;
          v81 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _mkodtempat mntdirfd %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        v43 = v81;
        v44 = "com.apple.security.cryptex.posix";
        v45 = 613;
        goto LABEL_289;
      }
    }

    if ((*(*(v2 + 200) + 40) & 8) != 0)
    {
      snprintf(v210, 0xFFuLL, "%s.XXXXXX", *(v2 + 208));
      v103 = _mkodtempat(v3, v210, &v205);
      if (v103)
      {
        v104 = v103;
        v36 = v103;
        v105 = *(v2 + 72);
        if (v105)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v106 = 3;
          }

          else
          {
            v106 = 2;
          }

          v107 = *(v2 + 56);
          if (!v107)
          {
            v107 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v107;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v104;
          v108 = _os_log_send_and_compose_impl(v106, 0, 0, 0, &_mh_execute_header, v105, 16, "%{public}s: _mkodtempat shdwdirfd %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        else
        {
          v133 = *(v2 + 56);
          if (!v133)
          {
            v133 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v133;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v103;
          v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: _mkodtempat shdwdirfd %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, 18);
        }

        v43 = v108;
        v44 = "com.apple.security.cryptex.posix";
        v45 = 622;
        goto LABEL_289;
      }
    }

    v208 = -1;
    bzero(&v232.st_ino, 0x840uLL);
    *&v232.st_mode = -1;
    *&v232.st_uid = *(v2 + 360);
    v234 = -1;
    v236 = -1;
    bzero(__s1, 0x400uLL);
    v207 = -1;
    v232.st_dev = *(cryptex_core_get_image_asset() + 16);
    if (cryptex_asset_type_is_cryptex1())
    {
      asset = cryptex_core_get_asset();
      if (!asset)
      {
        v129 = *(v2 + 72);
        if (v129)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v130 = 3;
          }

          else
          {
            v130 = 2;
          }

          v131 = *(v2 + 56);
          if (!v131)
          {
            v131 = "[anonymous]";
          }

          *buf = 136446210;
          v239 = v131;
          v132 = _os_log_send_and_compose_impl(v130, 0, 0, 0, &_mh_execute_header, v129, 16, "%{public}s: Cryptex is missing a volume root hash.", COERCE_DOUBLE(136446210), buf, 12);
        }

        else
        {
          v161 = *(v2 + 56);
          if (!v161)
          {
            v161 = "[anonymous]";
          }

          *buf = 136446210;
          v239 = v161;
          v132 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex is missing a volume root hash.", COERCE_DOUBLE(136446210), buf, 12);
        }

        v152 = v132;
        v153 = "com.apple.security.cryptex";
        v154 = 268;
        v162 = 15;
        goto LABEL_256;
      }

      v113 = asset;
      if ((*(*(v2 + 200) + 40) & 8) != 0)
      {
        if (!os_variant_allows_internal_security_policies())
        {
          v157 = *(v2 + 72);
          if (v157)
          {
            if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
            {
              v158 = 3;
            }

            else
            {
              v158 = 2;
            }

            v159 = *(v2 + 56);
            if (!v159)
            {
              v159 = "[anonymous]";
            }

            *buf = 136446210;
            v239 = v159;
            v160 = _os_log_send_and_compose_impl(v158, 0, 0, 0, &_mh_execute_header, v157, 16, "%{public}s: Cryptex readwrite installation not permitted outside of internal OS.", COERCE_DOUBLE(136446210), buf, 12);
          }

          else
          {
            v191 = *(v2 + 56);
            if (!v191)
            {
              v191 = "[anonymous]";
            }

            *buf = 136446210;
            v239 = v191;
            v160 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex readwrite installation not permitted outside of internal OS.", COERCE_DOUBLE(136446210), buf, 12);
          }

          v152 = v160;
          v153 = "com.apple.security.cryptex";
          v154 = 281;
          v162 = 10;
          goto LABEL_256;
        }

        v114 = *(v2 + 56);
        v115 = *__error();
        v116 = *(v2 + 72);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
        {
          v117 = "[anonymous]";
          if (v114)
          {
            v117 = v114;
          }

          *buf = 136446210;
          v239 = v117;
          _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_INFO, "%{public}s: Allowing readwrite installation.", buf, 0xCu);
        }

        *__error() = v115;
        LOBYTE(v232.st_atimespec.tv_sec) = 1;
        v232.st_ino = &v205;
      }

      v118 = cryptex_core_get_asset();
      if (v118 && (v119 = v118, cryptex_asset_len() >= 1))
      {
        v120 = *(v2 + 56);
        v121 = *__error();
        v122 = *(v2 + 72);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
        {
          v123 = "[anonymous]";
          if (v120)
          {
            v123 = v120;
          }

          *buf = 136446210;
          v239 = v123;
          _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "%{public}s: AuthAPFS enabled.", buf, 0xCu);
        }

        *__error() = v121;
        v233[1039] = 1;
        v234 = *(v113 + 16);
        v235 = *(*(v113 + 8) + 32);
        v236 = *(v119 + 16);
        v237 = 4;
        v124 = *(*(v2 + 200) + 168);
        if (v124 && (*(v124 + 40) & 1) != 0)
        {
          v125 = *(v2 + 56);
          v126 = *__error();
          v127 = *(v2 + 72);
          if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
          {
            v128 = "[anonymous]";
            if (v125)
            {
              v128 = v125;
            }

            *buf = 136446210;
            v239 = v128;
            _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "%{public}s: AuthAPFS using supplemental auth environment.", buf, 0xCu);
          }

          *__error() = v126;
          v237 = 5;
        }
      }

      else
      {
        v134 = *(v2 + 56);
        v135 = *__error();
        v136 = *(v2 + 72);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
        {
          v137 = "[anonymous]";
          if (v134)
          {
            v137 = v134;
          }

          *buf = 136446210;
          v239 = v137;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "%{public}s: AuthAPFS disabled because quire lacks an im4m.", buf, 0xCu);
        }

        *__error() = v135;
      }
    }

    v138 = realpath_np();
    if (v138)
    {
      v139 = v138;
      v140 = v138;
      v141 = *(v2 + 72);
      if (v141)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v142 = 3;
        }

        else
        {
          v142 = 2;
        }

        v143 = *(v2 + 56);
        if (!v143)
        {
          v143 = "[anonymous]";
        }

        *buf = 136446466;
        v239 = v143;
        v240 = 1024;
        LODWORD(v241) = v139;
        v144 = _os_log_send_and_compose_impl(v142, 0, 0, 0, &_mh_execute_header, v141, 16, "%{public}s: realpath_np %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
      }

      else
      {
        v151 = *(v2 + 56);
        if (!v151)
        {
          v151 = "[anonymous]";
        }

        *buf = 136446466;
        v239 = v151;
        v240 = 1024;
        LODWORD(v241) = v138;
        v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: realpath_np %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
      }

      v152 = v144;
      v153 = "com.apple.security.cryptex.posix";
      v154 = 308;
    }

    else
    {
      v145 = hdi_mount(&v206, 0, &v232);
      if (!v145)
      {
        v155 = _xferfd_unguarded(&v232.st_mode);
        v207 = v155;
        v208 = open(__s1, 1048832);
        if ((v208 & 0x80000000) == 0)
        {
          *(v2 + 396) = _xferfd_unguarded(&v207);
          *(v2 + 392) = _xferfd_unguarded(&v208);
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v156 = strdup(__s1);
              if (v156)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v156 = strdup(__s1);
            if (!v156)
            {
              quire_attr_populate_dependencies_cold_2();
            }
          }

          *(v2 + 416) = v156;
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v188 = strdup(v233);
              if (v188)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v188 = strdup(v233);
            if (!v188)
            {
              quire_attr_populate_dependencies_cold_2();
            }
          }

          *(v2 + 432) = v188;
          if (_dispatch_is_multithreaded())
          {
            while (1)
            {
              v189 = strdup(&v232.st_atimespec.tv_sec + 1);
              if (v189)
              {
                break;
              }

              __os_temporary_resource_shortage();
            }
          }

          else
          {
            v189 = strdup(&v232.st_atimespec.tv_sec + 1);
            if (!v189)
            {
              quire_attr_populate_dependencies_cold_2();
            }
          }

          v190 = v189;
          v51 = 0;
          v166 = 0;
          *(v2 + 424) = v190;
          v155 = v207;
          goto LABEL_260;
        }

        v181 = *__error();
        v182 = *(v2 + 72);
        if (v182)
        {
          v183 = os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
          v184 = *(v2 + 56);
          if (v183)
          {
            v185 = 3;
          }

          else
          {
            v185 = 2;
          }

          *buf = 136446722;
          if (v184)
          {
            v186 = v184;
          }

          else
          {
            v186 = "[anonymous]";
          }

          v239 = v186;
          v240 = 2080;
          v241 = __s1;
          v242 = 1024;
          v243 = v181;
          v187 = _os_log_send_and_compose_impl(v185, 0, 0, 0, &_mh_execute_header, v182, 16, "%{public}s: open mount: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, 28);
        }

        else
        {
          v192 = "[anonymous]";
          if (*(v2 + 56))
          {
            v192 = *(v2 + 56);
          }

          *buf = 136446722;
          v239 = v192;
          v240 = 2080;
          v241 = __s1;
          v242 = 1024;
          v243 = v181;
          v187 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: open mount: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), buf, 28);
        }

        v193 = v187;
        v51 = createError("_quire_mount_hdi", "quire.c", 325, "com.apple.security.cryptex.posix", v181, 0, v187);
        free(v193);
        v194 = unmount(__s1, 0x80000);
        if (v194)
        {
          v195 = v194;
          v196 = *(v2 + 56);
          v197 = *__error();
          v198 = *(v2 + 72);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
          {
            v199 = "[anonymous]";
            *buf = 136446722;
            if (v196)
            {
              v199 = v196;
            }

            v239 = v199;
            v240 = 2080;
            v241 = __s1;
            v242 = 1024;
            v243 = v195;
            _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "%{public}s: failed to clean up mount point: %s: %{darwin.errno}d", buf, 0x1Cu);
          }

          *__error() = v197;
        }

        if ((v155 & 0x80000000) == 0 && ioctl(v155, 0x20006415uLL, 0))
        {
          v200 = *(v2 + 56);
          v201 = *__error();
          v202 = *(v2 + 72);
          if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
          {
            if (!v200)
            {
              v200 = "[anonymous]";
            }

            v203 = *__error();
            *buf = 136446722;
            v239 = v200;
            v240 = 2080;
            v241 = v233;
            v242 = 1024;
            v243 = v203;
            _os_log_impl(&_mh_execute_header, v202, OS_LOG_TYPE_ERROR, "%{public}s: failed to clean up device: %s: %{darwin.errno}d", buf, 0x1Cu);
          }

          *__error() = v201;
        }

LABEL_257:
        if (v51)
        {
          v166 = CFRetain(v51);
        }

        else
        {
          v166 = 0;
        }

LABEL_260:
        *(v2 + 408) = v166;
        if (v155 != -1 && close(v155) == -1)
        {
          daemon_init_cold_13(&v209, buf);
        }

        if (v208 != -1 && close(v208) == -1)
        {
          daemon_init_cold_13(__s1, &v232);
        }

        if (v51)
        {
          v167 = *(v2 + 72);
          if (v167)
          {
            if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
            {
              v168 = 3;
            }

            else
            {
              v168 = 2;
            }

            v169 = *(v2 + 56);
            if (!v169)
            {
              v169 = "[anonymous]";
            }

            v232.st_dev = 136446210;
            *&v232.st_mode = v169;
            LODWORD(v204) = 12;
            v170 = _os_log_send_and_compose_impl(v168, 0, 0, 0, &_mh_execute_header, v167, 16, "%{public}s: mount [hdi]", COERCE_DOUBLE(136446210), &v232, v204);
          }

          else
          {
            v177 = *(v2 + 56);
            if (!v177)
            {
              v177 = "[anonymous]";
            }

            v232.st_dev = 136446210;
            *&v232.st_mode = v177;
            LODWORD(v204) = 12;
            v170 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: mount [hdi]", COERCE_DOUBLE(136446210), &v232, v204);
          }

          v70 = v170;
          v71 = 629;
          goto LABEL_98;
        }

        v171 = collation_map_add(v2);
        if (!v171)
        {
          Error = 0;
LABEL_291:
          a1[2] = Error;
LABEL_292:
          cryptex_target_async_f();
          goto LABEL_293;
        }

        v172 = v171;
        v36 = v171;
        v173 = *(v2 + 72);
        if (v173)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v174 = 3;
          }

          else
          {
            v174 = 2;
          }

          v175 = *(v2 + 56);
          if (!v175)
          {
            v175 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v175;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v172;
          LODWORD(v204) = 18;
          v176 = _os_log_send_and_compose_impl(v174, 0, 0, 0, &_mh_execute_header, v173, 16, "%{public}s: collation add %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, v204);
        }

        else
        {
          v179 = *(v2 + 56);
          if (!v179)
          {
            v179 = "[anonymous]";
          }

          v232.st_dev = 136446466;
          *&v232.st_mode = v179;
          WORD2(v232.st_ino) = 1024;
          *(&v232.st_ino + 6) = v171;
          LODWORD(v204) = 18;
          v176 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: collation add %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, v204);
        }

        v43 = v176;
        v44 = "com.apple.security.cryptex.posix";
        v45 = 635;
        goto LABEL_289;
      }

      v146 = v145;
      v140 = v145;
      v147 = *(v2 + 72);
      if (v147)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v148 = 3;
        }

        else
        {
          v148 = 2;
        }

        v149 = *(v2 + 56);
        if (!v149)
        {
          v149 = "[anonymous]";
        }

        *buf = 136446466;
        v239 = v149;
        v240 = 1024;
        LODWORD(v241) = v146;
        v150 = _os_log_send_and_compose_impl(v148, 0, 0, 0, &_mh_execute_header, v147, 16, "%{public}s: hdi_mount %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
      }

      else
      {
        v165 = *(v2 + 56);
        if (!v165)
        {
          v165 = "[anonymous]";
        }

        *buf = 136446466;
        v239 = v165;
        v240 = 1024;
        LODWORD(v241) = v145;
        v150 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: hdi_mount %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
      }

      v152 = v150;
      v153 = "com.apple.security.cryptex.posix";
      v154 = 314;
    }

    v162 = v140;
LABEL_256:
    v51 = createError("_quire_mount_hdi", "quire.c", v154, v153, v162, 0, v152);
    free(v152);
    v155 = -1;
    goto LABEL_257;
  }

  *buf = -1;
  v6 = v5 + 2311;
  memset(&v232, 0, sizeof(v232));
  *v210 = open(v5 + 2311, 1048832);
  if ((*v210 & 0x80000000) != 0)
  {
    v19 = *__error();
    v20 = *(v2 + 72);
    if (v20)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v22 = *(v2 + 56);
      *__s1 = 136446722;
      if (!v22)
      {
        v22 = "[anonymous]";
      }

      v227 = v22;
      v228 = 2080;
      v229 = v6;
      v230 = 1024;
      v231 = v19;
      v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v20, 16, "%{public}s: open forerunner mount: %s %{darwin.errno}d", __s1, 28);
    }

    else
    {
      v47 = *(v2 + 56);
      if (!v47)
      {
        v47 = "[anonymous]";
      }

      *__s1 = 136446722;
      v227 = v47;
      v228 = 2080;
      v229 = v6;
      v230 = 1024;
      v231 = v19;
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: open forerunner mount: %s %{darwin.errno}d", __s1, 28);
    }

    v48 = v23;
    v49 = 189;
    v50 = v19;
    goto LABEL_60;
  }

  v7 = v5 + 263;
  v8 = open(v5 + 263, 256);
  *buf = v8;
  if (v8 < 0)
  {
    v24 = *__error();
    v10 = v24;
    v25 = *(v2 + 72);
    if (v25)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v27 = *(v2 + 56);
      *__s1 = 136446722;
      if (!v27)
      {
        v27 = "[anonymous]";
      }

      v227 = v27;
      v228 = 2080;
      v229 = v7;
      v230 = 1024;
      v231 = v24;
      v28 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v25, 16, "%{public}s: open forerunner device: %s %{darwin.errno}d", __s1, 28);
    }

    else
    {
      v56 = *(v2 + 56);
      if (!v56)
      {
        v56 = "[anonymous]";
      }

      *__s1 = 136446722;
      v227 = v56;
      v228 = 2080;
      v229 = v7;
      v230 = 1024;
      v231 = v24;
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: open forerunner device: %s %{darwin.errno}d", __s1, 28);
    }

    v54 = v28;
    v55 = 196;
    goto LABEL_69;
  }

  if (fstat(v8, &v232))
  {
    v9 = *__error();
    v10 = v9;
    v11 = *(v2 + 72);
    if (v11)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v13 = *(v2 + 56);
      *__s1 = 136446722;
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      v227 = v13;
      v228 = 2080;
      v229 = v7;
      v230 = 1024;
      v231 = v9;
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v11, 16, "%{public}s: stat forerunner device: %s %{darwin.errno}d", __s1, 28);
    }

    else
    {
      v53 = *(v2 + 56);
      if (!v53)
      {
        v53 = "[anonymous]";
      }

      *__s1 = 136446722;
      v227 = v53;
      v228 = 2080;
      v229 = v7;
      v230 = 1024;
      v231 = v9;
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: stat forerunner device: %s %{darwin.errno}d", __s1, 28);
    }

    v54 = v14;
    v55 = 203;
LABEL_69:
    v51 = createError("_quire_mount_forerunner", "quire.c", v55, "com.apple.security.cryptex.posix", v10, 0, v54);
    v52 = v54;
    goto LABEL_70;
  }

  if ((v232.st_mode & 0xF000) != 0x6000)
  {
    v82 = *(v2 + 72);
    if (v82)
    {
      v83 = os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR);
      v84 = *(v2 + 56);
      if (v83)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      *__s1 = 136446722;
      if (v84)
      {
        v86 = v84;
      }

      else
      {
        v86 = "[anonymous]";
      }

      v227 = v86;
      v228 = 2080;
      v229 = v5 + 263;
      v230 = 1024;
      v231 = 19;
      v87 = _os_log_send_and_compose_impl(v85, 0, 0, 0, &_mh_execute_header, v82, 16, "%{public}s: forerunner not a block device: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), __s1, 28);
    }

    else
    {
      v94 = "[anonymous]";
      if (*(v2 + 56))
      {
        v94 = *(v2 + 56);
      }

      *__s1 = 136446722;
      v227 = v94;
      v228 = 2080;
      v229 = v5 + 263;
      v230 = 1024;
      v231 = 19;
      v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: forerunner not a block device: %s %{darwin.errno}d", COERCE_DOUBLE(136446722), __s1, 28);
    }

    v48 = v87;
    v49 = 210;
    v50 = 19;
LABEL_60:
    v51 = createError("_quire_mount_forerunner", "quire.c", v49, "com.apple.security.cryptex.posix", v50, 0, v48);
    v52 = v48;
LABEL_70:
    free(v52);
    goto LABEL_71;
  }

  *(v2 + 396) = _xferfd_unguarded(buf);
  *(v2 + 392) = _xferfd_unguarded(v210);
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v41 = strdup(v5 + 2311);
      if (v41)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v41 = strdup(v5 + 2311);
    if (!v41)
    {
      quire_attr_populate_dependencies_cold_2();
    }
  }

  *(v2 + 416) = v41;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v92 = strdup(v5 + 1287);
      if (v92)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v92 = strdup(v5 + 1287);
    if (!v92)
    {
      quire_attr_populate_dependencies_cold_2();
    }
  }

  *(v2 + 432) = v92;
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v93 = strdup(v5 + 263);
      if (v93)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v93 = strdup(v5 + 263);
    if (!v93)
    {
      quire_attr_populate_dependencies_cold_2();
    }
  }

  v51 = 0;
  *(v2 + 424) = v93;
  *(v2 + 176) |= 1uLL;
LABEL_71:
  free(*(v2 + 240));
  *(v2 + 240) = 0;
  if (v51)
  {
    v57 = CFRetain(v51);
  }

  else
  {
    v57 = 0;
  }

  *(v2 + 408) = v57;
  if (*buf != -1 && close(*buf) == -1)
  {
    daemon_init_cold_13(__s1, &v232);
  }

  if (*v210 != -1 && close(*v210) == -1)
  {
    daemon_init_cold_13(__s1, &v232);
  }

  if (!v51)
  {
    v62 = collation_map_add(v2);
    if (v62)
    {
      v63 = v62;
      v64 = v62;
      v65 = *(v2 + 72);
      if (v65)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v66 = 3;
        }

        else
        {
          v66 = 2;
        }

        v67 = *(v2 + 56);
        if (!v67)
        {
          v67 = "[anonymous]";
        }

        v232.st_dev = 136446466;
        *&v232.st_mode = v67;
        WORD2(v232.st_ino) = 1024;
        *(&v232.st_ino + 6) = v63;
        LODWORD(v204) = 18;
        v68 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, v65, 16, "%{public}s: collation add %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, v204);
      }

      else
      {
        v74 = *(v2 + 56);
        if (!v74)
        {
          v74 = "[anonymous]";
        }

        v232.st_dev = 136446466;
        *&v232.st_mode = v74;
        WORD2(v232.st_ino) = 1024;
        *(&v232.st_ino + 6) = v62;
        LODWORD(v204) = 18;
        v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: collation add %{darwin.errno}d", COERCE_DOUBLE(136446466), &v232, v204);
      }

      v75 = v68;
      v73 = createError("_quire_mount_continue", "quire.c", 565, "com.apple.security.cryptex.posix", v64, 0, v68);
      free(v75);
    }

    else
    {
      v73 = 0;
    }

    a1[2] = v73;
    goto LABEL_292;
  }

  v58 = *(v2 + 72);
  if (v58)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v60 = *(v2 + 56);
    if (!v60)
    {
      v60 = "[anonymous]";
    }

    v232.st_dev = 136446210;
    *&v232.st_mode = v60;
    LODWORD(v204) = 12;
    v61 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &_mh_execute_header, v58, 16, "%{public}s: failed to associate with forerunner", COERCE_DOUBLE(136446210), &v232, v204);
  }

  else
  {
    v69 = *(v2 + 56);
    if (!v69)
    {
      v69 = "[anonymous]";
    }

    v232.st_dev = 136446210;
    *&v232.st_mode = v69;
    LODWORD(v204) = 12;
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to associate with forerunner", COERCE_DOUBLE(136446210), &v232, v204);
  }

  v70 = v61;
  v71 = 559;
LABEL_98:
  v72 = createError("_quire_mount_continue", "quire.c", v71, "com.apple.security.cryptex", 2, v51, v70);
  free(v70);
  a1[2] = v72;
  cryptex_target_async_f();
  CFRelease(v51);
LABEL_293:
  if (v205 != -1 && close(v205) == -1)
  {
    daemon_init_cold_13(__s1, &v232);
  }

  result = v206;
  if (v206 != -1)
  {
    result = close(v206);
    if (result == -1)
    {
      daemon_init_cold_13(__s1, &v232);
    }
  }

  return result;
}

void quire_bootstrap(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((~a4 & 6) != 0)
  {
    v15 = a2;
    v16 = ctx_new(a1, 0x58uLL);
    v16[8] = a5;
    v16[9] = a6;
    *(v16 + 12) = v15;
    v17 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
    if (!v17)
    {
      quire_bootstrap_cold_2(&v21, v22);
    }

    v16[7] = v17;
    *(v16 + 13) = a3;
    v16[10] = a4;
    if (realpath_np())
    {
      quire_bootstrap_cold_1(&v21, v22);
    }

    cryptex_async_f();
  }

  else
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      LODWORD(v22[0]) = 136446210;
      *(v22 + 4) = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Invalid combination of flags.", COERCE_DOUBLE(136446210), v22, 12);
    }

    else
    {
      v18 = *(a1 + 56);
      if (!v18)
      {
        v18 = "[anonymous]";
      }

      LODWORD(v22[0]) = 136446210;
      *(v22 + 4) = v18;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Invalid combination of flags.", COERCE_DOUBLE(136446210), v22, 12);
    }

    v19 = v11;
    Error = createError("quire_bootstrap", "quire.c", 3884, "com.apple.security.cryptex", 11, 0, v11);
    free(v19);
    if (Error)
    {
      CFRelease(Error);
    }
  }
}

void _quire_bootstrap_continue(uint64_t *a1)
{
  v2 = *a1;
  if ((*(a1 + 13) & 0x80000000) == 0)
  {
    *(v2 + 400) = claimfd_np();
  }

  v3 = a1[10];
  cryptex_core_get_info_asset();
  if ((*(*(v2 + 200) + 40) & 1) != 0 || (*(v2 + 176) & 4) == 0)
  {
    goto LABEL_5;
  }

  v4 = *(v2 + 56);
  v5 = *__error();
  v6 = *(v2 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446210;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: locking signature digest", buf, 0xCu);
  }

  *__error() = v5;
  v8 = cryptex_signature_lock();
  if (v8)
  {
    v9 = v8;
    v10 = *(v2 + 72);
    if (v10)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v12 = *(v2 + 56);
      if (!v12)
      {
        v12 = "[anonymous]";
      }

      *buf = 136446210;
      v29 = v12;
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "%{public}s: failed to lock signature digest", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v16 = *(v2 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      *buf = 136446210;
      v29 = v16;
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to lock signature digest", COERCE_DOUBLE(136446210), buf, 12);
    }

    v17 = v13;
    v18 = 3089;
  }

  else
  {
    v14 = *(v2 + 200);
    if ((*(v14 + 40) & 1) != 0 || (v15 = *(v14 + 168)) != 0 && (*(v15 + 40) & 1) != 0 || (v21 = cryptex_signature_lock_with_sep()) == 0)
    {
LABEL_5:
      if (v3 & 2) != 0 || (*(v2 + 353))
      {
        cryptex_async_f();
      }

      else
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 0x40000000;
        v27[2] = ___quire_bootstrap_continue_block_invoke;
        v27[3] = &__block_descriptor_tmp_37;
        v27[4] = a1;
        v27[5] = v2;
        _quire_bootstrap_trust_cache(v2, a1, v27);
      }

      return;
    }

    v9 = v21;
    v22 = *(v2 + 72);
    if (v22)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v24 = *(v2 + 56);
      if (!v24)
      {
        v24 = "[anonymous]";
      }

      *buf = 136446210;
      v29 = v24;
      v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v22, 16, "%{public}s: failed to lock signature digest with SEP", COERCE_DOUBLE(136446210), buf, 12);
    }

    else
    {
      v26 = *(v2 + 56);
      if (!v26)
      {
        v26 = "[anonymous]";
      }

      *buf = 136446210;
      v29 = v26;
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to lock signature digest with SEP", COERCE_DOUBLE(136446210), buf, 12);
    }

    v17 = v25;
    v18 = 3100;
  }

  Error = createError("_quire_bootstrap_continue", "quire.c", v18, "com.apple.security.cryptex", 36, v9, v17);
  free(v17);
  if (Error)
  {
    _quire_bootstrap_abort_with_error(Error, a1);
    CFRelease(v9);
    v20 = Error;
  }

  else
  {
    cryptex_async_f();
    v20 = v9;
  }

  CFRelease(v20);
}

void _quire_bootstrap_callback(void **a1)
{
  v2 = a1[2];
  (a1[9])(*a1, 0, a1[2], a1[8]);
  free(a1[7]);
  ctx_destroy(a1);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t quire_unbootstrap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = ctx_new(a1, 0x58uLL);
  v9[8] = a4;
  v9[9] = a5;
  *(v9 + 12) = v8;
  v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x8709206FuLL);
  if (!v10)
  {
    quire_bootstrap_cold_2(&v12, v13);
  }

  v9[7] = v10;
  v9[10] = a3;
  if (realpath_np())
  {
    quire_bootstrap_cold_1(&v12, v13);
  }

  return cryptex_async_f();
}

void _quire_unbootstrap_continue(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  if ((v3 & 0x10) != 0 && (a1[10] & 1) == 0)
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v6 = *(v2 + 56);
      if (!v6)
      {
        v6 = "[anonymous]";
      }

      v24 = 136446210;
      v25 = v6;
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v4, 16, "%{public}s: Disallow unbootstrap of system quire.", COERCE_DOUBLE(136446210), &v24, 12);
    }

    else
    {
      v19 = *(v2 + 56);
      if (!v19)
      {
        v19 = "[anonymous]";
      }

      v24 = 136446210;
      v25 = v19;
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Disallow unbootstrap of system quire.", COERCE_DOUBLE(136446210), &v24, 12);
    }

    v17 = v7;
    v18 = 3206;
LABEL_35:
    v20 = 4;
    goto LABEL_36;
  }

  if (*(v2 + 480))
  {
    v8 = *(v2 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(v2 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v24 = 136446210;
      v25 = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Disallow unbootstrap of quire with active dependent quires.", COERCE_DOUBLE(136446210), &v24, 12);
    }

    else
    {
      v16 = *(v2 + 56);
      if (!v16)
      {
        v16 = "[anonymous]";
      }

      v24 = 136446210;
      v25 = v16;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Disallow unbootstrap of quire with active dependent quires.", COERCE_DOUBLE(136446210), &v24, 12);
    }

    v17 = v11;
    v18 = 3215;
    goto LABEL_35;
  }

  if ((v3 & 2) != 0)
  {
    _quire_unlink_launch_agents(*a1);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 0x40000000;
    v23[2] = ___quire_unbootstrap_continue_block_invoke;
    v23[3] = &__block_descriptor_tmp_80;
    v23[4] = a1;
    _quire_unbootstrap_services(v2, v23);
    return;
  }

  v12 = *(v2 + 72);
  if (v12)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = *(v2 + 56);
    if (!v14)
    {
      v14 = "[anonymous]";
    }

    v24 = 136446210;
    v25 = v14;
    v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%{public}s: Cryptex was never bootstrapped.", COERCE_DOUBLE(136446210), &v24, 12);
  }

  else
  {
    v22 = *(v2 + 56);
    if (!v22)
    {
      v22 = "[anonymous]";
    }

    v24 = 136446210;
    v25 = v22;
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Cryptex was never bootstrapped.", COERCE_DOUBLE(136446210), &v24, 12);
  }

  v17 = v15;
  v18 = 3225;
  v20 = 18;
LABEL_36:
  Error = createError("_quire_unbootstrap_continue", "quire.c", v18, "com.apple.security.cryptex", v20, 0, v17);
  free(v17);
  if (Error)
  {
    a1[2] = CFRetain(Error);
    cryptex_target_async_f();
    CFRelease(Error);
  }
}

void *quire_unmount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ctx_new(a1, 0x60uLL);
  result[5] = a2;
  *(result + 13) = -1;
  result[9] = a3;
  result[10] = a4;
  if (*(a1 + 184))
  {
    result[4] = 0;
    **(a1 + 384) = result;
    *(a1 + 384) = result + 4;
  }

  else
  {

    return cryptex_async_f();
  }

  return result;
}

void _quire_unmount_continue(uint64_t *a1)
{
  v2 = a1[5];
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *__error();
  v6 = *(v3 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446210;
    v70 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: _quire_unmount_continue called.", buf, 0xCu);
  }

  *__error() = v5;
  if ((*(v3 + 392) & 0x80000000) != 0)
  {
    v31 = *(v3 + 72);
    if (v31)
    {
      if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v33 = *(v3 + 56);
      if (!v33)
      {
        v33 = "[anonymous]";
      }

      *buf = 136446466;
      v70 = v33;
      v71 = 1024;
      LODWORD(v72) = 6;
      v34 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, v31, 16, "%{public}s: not currently mounted %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    else
    {
      v49 = *(v3 + 56);
      if (!v49)
      {
        v49 = "[anonymous]";
      }

      *buf = 136446466;
      v70 = v49;
      v71 = 1024;
      LODWORD(v72) = 6;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: not currently mounted %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
    }

    v47 = v34;
    v48 = 730;
    v50 = 6;
  }

  else
  {
    if (*(v3 + 480))
    {
      _quire_unmount_continue_cold_1(v68, buf);
    }

    v8 = *(v3 + 472);
    if (v8)
    {
      v9 = (v3 + 472);
      do
      {
        v10 = *v9;
        if (*v9 == v8)
        {
          v12 = (v3 + 472);
        }

        else
        {
          do
          {
            v11 = v10;
            v10 = v10[1];
          }

          while (v10 != v8);
          v12 = v11 + 1;
        }

        v13 = *v8;
        v14 = v8[1];
        *v12 = v10[1];
        v8[1] = -1;
        v15 = v13[60];
        if (v15)
        {
          v16 = v13 + 60;
          v17 = v13[60];
          while (1)
          {
            v18 = *v17;
            if (*v17 == v3)
            {
              break;
            }

            v17 = v17[1];
            if (!v17)
            {
              if (!v13)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          if (v15 != v17)
          {
            do
            {
              v19 = v15;
              v15 = v15[1];
            }

            while (v15 != v17);
            v16 = v19 + 1;
          }

          *v16 = v15[1];
          v17[1] = -1;
          os_release(v18);
          free(v17);
          if (v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_18:
          os_release(v13);
        }

LABEL_19:
        free(v8);
        v8 = v14;
      }

      while (v14);
    }

    _quire_unlink_launch_agents(v3);
    v20 = a1[5] & 1;
    v21 = _unmountat((v3 + 392), v20 << 19);
    v22 = *(v3 + 56);
    v23 = *__error();
    v24 = *(v3 + 72);
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = "[anonymous]";
        if (v22)
        {
          v25 = v22;
        }

        *buf = 136446466;
        v70 = v25;
        v71 = 1024;
        LODWORD(v72) = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: unmount: %{darwin.errno}d", buf, 0x12u);
      }

      *__error() = v23;
      v26 = v21;
      v27 = *(v3 + 72);
      if (v27)
      {
        if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR))
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v29 = *(v3 + 56);
        if (!v29)
        {
          v29 = "[anonymous]";
        }

        *buf = 136446466;
        v70 = v29;
        v71 = 1024;
        LODWORD(v72) = v21;
        v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 16, "%{public}s: unmount %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
      }

      else
      {
        v46 = *(v3 + 56);
        if (!v46)
        {
          v46 = "[anonymous]";
        }

        *buf = 136446466;
        v70 = v46;
        v71 = 1024;
        LODWORD(v72) = v21;
        v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: unmount %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
      }

      v47 = v30;
      v48 = 741;
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v35 = "[anonymous]";
        v36 = "force ";
        if (v22)
        {
          v35 = v22;
        }

        if (!v20)
        {
          v36 = "";
        }

        *buf = 136446466;
        v70 = v35;
        v71 = 2080;
        v72 = v36;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}s: %sunmount succeeded", buf, 0x16u);
      }

      *__error() = v23;
      v37 = hdi_detach((v3 + 396), *(v3 + 72));
      v38 = *(v3 + 56);
      v39 = *__error();
      v40 = *(v3 + 72);
      if (v37)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = "[anonymous]";
          if (v38)
          {
            v41 = v38;
          }

          *buf = 136446466;
          v70 = v41;
          v71 = 1024;
          LODWORD(v72) = v37;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s: hdi_detach: %{darwin.errno}d", buf, 0x12u);
        }

        *__error() = v39;
        v26 = v37;
        v42 = *(v3 + 72);
        if (v42)
        {
          if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR))
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          v44 = *(v3 + 56);
          if (!v44)
          {
            v44 = "[anonymous]";
          }

          *buf = 136446466;
          v70 = v44;
          v71 = 1024;
          LODWORD(v72) = v37;
          v45 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &_mh_execute_header, v42, 16, "%{public}s: detach %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
        }

        else
        {
          v58 = *(v3 + 56);
          if (!v58)
          {
            v58 = "[anonymous]";
          }

          *buf = 136446466;
          v70 = v58;
          v71 = 1024;
          LODWORD(v72) = v37;
          v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: detach %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
        }

        v47 = v45;
        v48 = 747;
      }

      else
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v51 = "[anonymous]";
          if (v38)
          {
            v51 = v38;
          }

          *buf = 136446210;
          v70 = v51;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%{public}s: hdi_detach: success", buf, 0xCu);
        }

        *__error() = v39;
        v52 = collation_map_remove(v3);
        if (!v52)
        {
          _quire_free_and_drop_strings(v3);
          v59 = *(v3 + 56);
          v60 = *__error();
          v61 = *(v3 + 72);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v62 = "[anonymous]";
            if (v59)
            {
              v62 = v59;
            }

            *buf = 136446210;
            v70 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "%{public}s: Finished quire unmount.", buf, 0xCu);
          }

          *__error() = v60;
          goto LABEL_102;
        }

        v53 = v52;
        v26 = v52;
        v54 = *(v3 + 72);
        if (v54)
        {
          if (os_log_type_enabled(*(v3 + 72), OS_LOG_TYPE_ERROR))
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          v56 = *(v3 + 56);
          if (!v56)
          {
            v56 = "[anonymous]";
          }

          *buf = 136446466;
          v70 = v56;
          v71 = 1024;
          LODWORD(v72) = v53;
          v57 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, v54, 16, "%{public}s: collation remove %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
        }

        else
        {
          v63 = *(v3 + 56);
          if (!v63)
          {
            v63 = "[anonymous]";
          }

          *buf = 136446466;
          v70 = v63;
          v71 = 1024;
          LODWORD(v72) = v52;
          v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: collation remove %{darwin.errno}d", COERCE_DOUBLE(136446466), buf, 18);
        }

        v47 = v57;
        v48 = 753;
      }
    }

    v50 = v26;
  }

  Error = createError("_quire_unmount_continue", "quire.c", v48, "com.apple.security.cryptex.posix", v50, 0, v47);
  free(v47);
  if (Error)
  {
    v65 = (v2 & 2) == 0;
  }

  else
  {
    v65 = 0;
  }

  if (v65)
  {
    if ((*(v3 + 396) & 0x80000000) != 0)
    {
      v67 = 0;
    }

    else
    {
      v66 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
      if (!v66)
      {
        quire_create_cold_1();
      }

      v67 = v66;
      v66[3] = _xferfd_unguarded((v3 + 396));
      *(v67 + 8) = _xferfd_unguarded((v3 + 392));
    }

    a1[8] = v67;
  }

  else if (!Error)
  {
LABEL_102:
    a1[2] = 0;
    cryptex_target_async_f();
    return;
  }

  a1[2] = CFRetain(Error);
  cryptex_target_async_f();
  CFRelease(Error);
}

uint64_t quire_attach_launch_agents(uint64_t a1, int a2, uint64_t a3)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  cryptex_sync();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

void __quire_attach_launch_agents_block_invoke(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = v19;
  v2 = *(*(a1 + 40) + 56);
  v3 = *__error();
  v4 = *(*(a1 + 40) + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    v6 = *(a1 + 56);
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446466;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: Attaching launch agents for user id %u", buf, 0x12u);
  }

  *__error() = v3;
  *(*(*(a1 + 32) + 8) + 24) = _quire_attach_launch_agents(*(a1 + 40), *(a1 + 56), *(a1 + 48), v19);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = _quire_pending_services_submit(*(a1 + 40), v19);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 40);
      v10 = *(v9 + 72);
      if (v10)
      {
        if (os_log_type_enabled(*(v9 + 72), OS_LOG_TYPE_ERROR))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v12 = *(v9 + 56);
        v13 = *(a1 + 56);
        if (!v12)
        {
          v12 = "[anonymous]";
        }

        *buf = 136446466;
        v21 = v12;
        v22 = 1024;
        v23 = v13;
        v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "%{public}s: Failed to attach launch agents for user id %u", COERCE_DOUBLE(136446466), buf, 18);
      }

      else
      {
        v15 = *(v9 + 56);
        if (!v15)
        {
          v15 = "[anonymous]";
        }

        v16 = *(a1 + 56);
        *buf = 136446466;
        v21 = v15;
        v22 = 1024;
        v23 = v16;
        v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to attach launch agents for user id %u", COERCE_DOUBLE(136446466), buf, 18);
      }

      v17 = v14;
      Error = createError("quire_attach_launch_agents_block_invoke", "quire.c", 4070, "com.apple.security.cryptex", 21, v8, v14);
      free(v17);
      *(*(*(a1 + 32) + 8) + 24) = Error;
      CFRelease(v8);
    }
  }

  sm_pending_services_cleanup(v19);
}

CFErrorRef _quire_attach_launch_agents(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 56);
  v9 = *__error();
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    *buf = 136446466;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: Launching Launch Agent quires for target user of: %u.", buf, 0x12u);
  }

  *__error() = v9;
  v12 = *(a1 + 456);
  if (!v12)
  {
    return 0;
  }

  while (1)
  {
    v13 = v12;
    v12 = *v12;
    v14 = sm_pending_service_create(1);
    v15 = *(v13 + 9);
    v16 = *(v13 + 11);
    v17 = *(v13 + 15);
    *(v14 + 7) = *(v13 + 13);
    *(v14 + 8) = v17;
    v18 = *(v13 + 1);
    v19 = *(v13 + 3);
    v20 = *(v13 + 7);
    *(v14 + 3) = *(v13 + 5);
    *(v14 + 4) = v20;
    *(v14 + 1) = v18;
    *(v14 + 2) = v19;
    *(v14 + 5) = v15;
    *(v14 + 6) = v16;
    *(v14 + 28) = a2;
    v14[16] = a3;
    v21 = sm_bootstrap_service(v13 + 17, v14 + 2, v14[1], *(a1 + 368));
    if (v21)
    {
      break;
    }

    *v14 = 0;
    **(a4 + 8) = v14;
    *(a4 + 8) = v14;
    if (!v12)
    {
      return 0;
    }
  }

  v23 = v21;
  v24 = *(a1 + 72);
  if (v24)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v26 = *(a1 + 56);
    v27 = v14[1];
    *buf = 136446722;
    if (!v26)
    {
      v26 = "[anonymous]";
    }

    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = v27;
    *&buf[22] = 1024;
    LODWORD(v34) = a2;
    v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, v24, 16, "%{public}s: Failed to attach launch agent %s. for user id %d", buf, 28, *buf, *&buf[8], v34);
  }

  else
  {
    v29 = *(a1 + 56);
    if (!v29)
    {
      v29 = "[anonymous]";
    }

    v30 = v14[1];
    *buf = 136446722;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = v30;
    *&buf[22] = 1024;
    LODWORD(v34) = a2;
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to attach launch agent %s. for user id %d", buf, 28, *buf, *&buf[8], v34);
  }

  v31 = v28;
  Error = createError("_quire_attach_launch_agents", "quire.c", 935, "com.apple.security.cryptex", 21, v23, v28);
  free(v31);
  sm_pending_service_destroy(v14);
  CFRelease(v23);
  return Error;
}

CFErrorRef _quire_pending_services_submit(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = *__error();
  v6 = a1[9];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446210;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: Submitting pending services to launchd", buf, 0xCu);
  }

  *__error() = v5;
  v8 = sm_submit_pending_services(a2);
  if (!v8)
  {
    v10 = *a2;
    if (*a2)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
        if (v11[18])
        {
          v12 = malloc_type_calloc(1uLL, 0x98uLL, 0x8709206FuLL);
          if (!v12)
          {
            _quire_pending_services_submit_cold_2(v26, buf);
          }

          v13 = *(v11 + 1);
          v14 = *(v11 + 2);
          v15 = *(v11 + 4);
          v12[3] = *(v11 + 3);
          v12[4] = v15;
          v12[1] = v13;
          v12[2] = v14;
          v16 = *(v11 + 5);
          v17 = *(v11 + 6);
          v18 = *(v11 + 8);
          v12[7] = *(v11 + 7);
          v12[8] = v18;
          v12[5] = v16;
          v12[6] = v17;
          *(v12 + 36) = *(v11 + 28);
          v19 = v11[1];
          *v12 = a1[58];
          *(v12 + 1) = v19;
          a1[58] = v12;
        }

        else
        {
          v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x8709206FuLL);
          if (!v20)
          {
            quire_create_cold_1();
          }

          v21 = v11[1];
          *v20 = a1[56];
          v20[1] = v21;
          a1[56] = v20;
        }

        _quire_activate(a1);
        v22 = *a2;
        if (*a2 == v11)
        {
          v25 = *v22;
          *a2 = v25;
          v23 = a2;
          if (v25)
          {
            goto LABEL_17;
          }
        }

        else
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22 != v11);
          v24 = *v22;
          *v23 = v24;
          if (v24)
          {
            goto LABEL_17;
          }
        }

        *(a2 + 8) = v23;
LABEL_17:
        free(v11);
      }

      while (v10);
    }
  }

  return v8;
}

int *quire_detach_launch_agents(uint64_t a1, int a2)
{
  if (!*(a1 + 188))
  {
    return cryptex_async();
  }

  v3 = *(a1 + 56);
  v4 = *__error();
  v5 = *(a1 + 72);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "[anonymous]";
    if (v3)
    {
      v6 = v3;
    }

    *buf = 136446210;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}s: Attempted to remove a Launch Agent that wasn't installed in a system cryptex.", buf, 0xCu);
  }

  result = __error();
  *result = v4;
  return result;
}

void __quire_detach_launch_agents_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 464);
  if (v1)
  {
    do
    {
      v3 = *v1;
      if (*(v1 + 36) == *(result + 40))
      {
        v4 = *(*(result + 32) + 56);
        v5 = *__error();
        v6 = *(result + 32);
        v7 = *(v6 + 72);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(v6 + 416);
          v9 = "[anonymous]";
          if (v4)
          {
            v9 = v4;
          }

          *buf = 136446466;
          v11 = v9;
          v12 = 2080;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: Found a Launch Agent: %s - going to deactivate it.", buf, 0x16u);
        }

        *__error() = v5;
        _quire_deactivate_launch_agent(v1, *(result + 32));
      }

      v1 = v3;
    }

    while (v3);
  }
}

void _quire_deactivate_launch_agent(void *a1, void *a2)
{
  v4 = sm_unbootstrap_service(a1[1], a1 + 2);
  if (v4)
  {
    v5 = a2[7];
    v6 = *__error();
    v7 = a2[9];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = "[anonymous]";
      v9 = a1[1];
      if (v5)
      {
        v8 = v5;
      }

      v12 = 136446722;
      v13 = v8;
      v14 = 2080;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to unbootstrap agent: %s: %@", &v12, 0x20u);
    }

    *__error() = v6;
  }

  sm_service_destroy(a1[1]);
  a1[1] = 0;
  v10 = a2[58];
  if (v10 == a1)
  {
    v11 = a2 + 58;
  }

  else
  {
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10 != a1);
  }

  *v11 = *v10;
  *a1 = -1;
  _quire_deactivate(a2);
  free(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

xpc_object_t quire_apply_overrides(uint64_t a1, int a2, xpc_object_t object, uint64_t a4)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = object;
  result = xpc_retain(object);
  *(a1 + 368) = a4;
  return result;
}

BOOL quire_boot_session_test(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 400);
  if (v3 < 0)
  {
    v8 = *(a1 + 56);
    v9 = *__error();
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      v16 = 136446210;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: Quire has no boot session state directory", &v16, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v5 = faccessat(v3, a2, 4, 32);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = *__error();
    }

    else
    {
      v7 = 0;
    }

    v12 = *(a1 + 56);
    v9 = *__error();
    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = "[anonymous]";
      v16 = 136446722;
      if (v12)
      {
        v14 = v12;
      }

      v17 = v14;
      v18 = 2080;
      v19 = a2;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%{public}s: faccessat(%s): %{darwin.errno}d", &v16, 0x1Cu);
    }
  }

  *__error() = v9;
  return v6;
}

CFErrorRef quire_boot_session_set(uint64_t a1, char *a2, int a3)
{
  v4 = *(a1 + 400);
  if (v4 < 0)
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = *(a1 + 56);
      if (!v10)
      {
        v10 = "[anonymous]";
      }

      v32 = 136446210;
      v33 = v10;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Quire has no boot session state directory", COERCE_DOUBLE(136446210), &v32, 12);
    }

    else
    {
      v13 = *(a1 + 56);
      if (!v13)
      {
        v13 = "[anonymous]";
      }

      v32 = 136446210;
      v33 = v13;
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Quire has no boot session state directory", COERCE_DOUBLE(136446210), &v32, 12);
    }

    v14 = v11;
    v15 = "com.apple.security.cryptex";
    v16 = 4220;
    v17 = 37;
    goto LABEL_19;
  }

  if (!a3)
  {
    if (unlinkat(v4, a2, 2048) != -1)
    {
      return 0;
    }

    v12 = *__error();
    if (v12 == 2)
    {
      return 0;
    }

    v23 = *(a1 + 72);
    if (v23)
    {
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = *(a1 + 56);
      v32 = 136446722;
      if (!v25)
      {
        v25 = "[anonymous]";
      }

      v33 = v25;
      v34 = 2082;
      v35 = a2;
      v36 = 1024;
      v37 = v12;
      v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v23, 16, "%{public}s: Failed to delete %{public}s %{darwin.errno}d", &v32, 28);
    }

    else
    {
      v30 = *(a1 + 56);
      if (!v30)
      {
        v30 = "[anonymous]";
      }

      v32 = 136446722;
      v33 = v30;
      v34 = 2082;
      v35 = a2;
      v36 = 1024;
      v37 = v12;
      v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to delete %{public}s %{darwin.errno}d", &v32, 28);
    }

    v14 = v26;
    v15 = "com.apple.security.cryptex.posix";
    v16 = 4243;
    v17 = v12;
LABEL_19:
    Error = createError("quire_boot_session_set", "quire.c", v16, v15, v17, 0, v14);
    free(v14);
    return Error;
  }

  v6 = openat(v4, a2, 512, 438);
  if ((v6 & 0x80000000) == 0)
  {
    Error = 0;
LABEL_38:
    if (close(v6) == -1)
    {
      daemon_init_cold_13(&v31, &v32);
    }

    return Error;
  }

  v18 = *__error();
  v19 = *(a1 + 72);
  if (v19)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v21 = *(a1 + 56);
    v32 = 136446722;
    if (!v21)
    {
      v21 = "[anonymous]";
    }

    v33 = v21;
    v34 = 2082;
    v35 = a2;
    v36 = 1024;
    v37 = v18;
    v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}s: Failed to create %{public}s %{darwin.errno}d", &v32, 28);
  }

  else
  {
    v27 = *(a1 + 56);
    if (!v27)
    {
      v27 = "[anonymous]";
    }

    v32 = 136446722;
    v33 = v27;
    v34 = 2082;
    v35 = a2;
    v36 = 1024;
    v37 = v18;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to create %{public}s %{darwin.errno}d", &v32, 28);
  }

  v28 = v22;
  Error = createError("quire_boot_session_set", "quire.c", 4232, "com.apple.security.cryptex.posix", v18, 0, v22);
  free(v28);
  if (v6 != -1)
  {
    goto LABEL_38;
  }

  return Error;
}

uint64_t ___quire_attr_parse_bootstrap_contents_block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = cryptex_content_type_parse();
  v6 = *(*(a1 + 32) + 16);
  v7 = *__error();
  v8 = *(*(a1 + 32) + 32);
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = "[anonymous]";
      v10 = *v5;
      if (v6)
      {
        v9 = v6;
      }

      v13 = 136446466;
      v14 = v9;
      v15 = 2080;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}s: populated content type to bootstrap: %s", &v13, 0x16u);
    }

    *__error() = v7;
    *(*(a1 + 40) + 112) |= v5[2];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = "[anonymous]";
      v13 = 136446722;
      if (v6)
      {
        v11 = v6;
      }

      v14 = v11;
      v15 = 2080;
      v16 = string_ptr;
      v17 = 1024;
      v18 = 22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: invalid content type %s: %{darwin.errno}d", &v13, 0x1Cu);
    }

    *__error() = v7;
  }

  return 1;
}

void _quire_mount_callback(void **a1)
{
  v2 = *a1;
  v3 = a1[9];
  v6 = a1[8];
  v4 = a1[2];
  (a1[10])(v2, &v6, v4, v3);
  if (a1[8])
  {
    v5 = v6 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    _quire_mount_callback_cold_1();
  }

  free(v6);
  ctx_destroy(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

void _quire_bootstrap_trust_cache(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(*(a1 + 200) + 40) & 1) == 0)
  {
    v6 = quire_boot_session_test(a1, ".trustcache-loaded");
    v7 = *(a1 + 56);
    v8 = *__error();
    v9 = *(a1 + 72);
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = "[anonymous]";
        if (v7)
        {
          v10 = v7;
        }

        *buf = 136446210;
        v65 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}s: trust cache already loaded", buf, 0xCu);
      }

      Error = 0;
      v12 = 0;
      *__error() = v8;
      goto LABEL_73;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = "[anonymous]";
      if (v7)
      {
        v17 = v7;
      }

      *buf = 136446210;
      v65 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s: loading trust cache", buf, 0xCu);
    }

    *__error() = v8;
    tc_asset = cryptex_core_get_tc_asset();
    asset = cryptex_core_get_asset();
    trust_cache = _amfi_load_trust_cache(*(tc_asset + 16), *(asset + 16), *(a1 + 72));
    if (trust_cache)
    {
      v12 = trust_cache;
      if (_CFErrorHasDomainAndCode(trust_cache, @"com.apple.security.cryptex.posix", 6))
      {
        v21 = *(a1 + 56);
        v22 = *__error();
        v23 = *(a1 + 72);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = "[anonymous]";
          if (v21)
          {
            v24 = v21;
          }

          *buf = 136446210;
          v65 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}s: failed to load trust cache: device is locked", buf, 0xCu);
        }

        *__error() = v22;
        v25 = MKBDeviceUnlockedSinceBoot();
        v26 = *(a1 + 56);
        v27 = *__error();
        v28 = *(a1 + 72);
        if (v25 < 0)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v41 = "[anonymous]";
            if (v26)
            {
              v41 = v26;
            }

            *buf = 136446466;
            v65 = v41;
            v66 = 1024;
            v67 = v25;
            v30 = "%{public}s: failed to get initial lock state: error = %d";
            v31 = v28;
            v32 = OS_LOG_TYPE_ERROR;
            goto LABEL_48;
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v29 = "[anonymous]";
          if (v26)
          {
            v29 = v26;
          }

          *buf = 136446466;
          v65 = v29;
          v66 = 1024;
          v67 = v25;
          v30 = "%{public}s: initial unlock state: %d";
          v31 = v28;
          v32 = OS_LOG_TYPE_DEBUG;
LABEL_48:
          _os_log_impl(&_mh_execute_header, v31, v32, v30, buf, 0x12u);
        }

        *__error() = v27;
        v42 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, *(a1 + 24));
        dispatch_set_context(v42, a2);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 0x40000000;
        handler[2] = ___quire_handle_device_lock_block_invoke;
        handler[3] = &unk_100073D48;
        handler[4] = a3;
        handler[5] = a2;
        dispatch_source_set_event_handler(v42, handler);
        a2[5] = os_retain(v42);
        v62[1] = _NSConcreteStackBlock;
        v62[2] = 0x40000000;
        v62[3] = ___quire_handle_device_lock_block_invoke_2;
        v62[4] = &__block_descriptor_tmp_41;
        v62[5] = a1;
        v62[6] = v42;
        v43 = MKBEventsRegister();
        a2[4] = v43;
        if (!v43)
        {
          _quire_bootstrap_trust_cache_cold_2();
        }

        if (!v25 && MKBDeviceUnlockedSinceBoot() == 1)
        {
          v44 = *(a1 + 56);
          v45 = *__error();
          v46 = *(a1 + 72);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = "[anonymous]";
            if (v44)
            {
              v47 = v44;
            }

            *buf = 136446210;
            v65 = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%{public}s: first unlock during race window; firing source", buf, 0xCu);
          }

          *__error() = v45;
          dispatch_source_merge_data(v42, 1uLL);
        }

        v48 = MKBGetDeviceLockState();
        if ((v48 - 1) >= 3)
        {
          v49 = v48;
          if (v48)
          {
            if (v48 >= 1)
            {
              _quire_bootstrap_trust_cache_cold_1(v62, buf);
            }

            v58 = *(a1 + 56);
            v59 = *__error();
            v60 = *(a1 + 72);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v61 = "[anonymous]";
              if (v58)
              {
                v61 = v58;
              }

              *buf = 136446466;
              v65 = v61;
              v66 = 1024;
              v67 = v49;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}s: failed to get lock state to de-bounce keybag event race: error = %d", buf, 0x12u);
            }

            *__error() = v59;
          }

          else
          {
            v50 = *(a1 + 56);
            v51 = *__error();
            v52 = *(a1 + 72);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = "[anonymous]";
              if (v50)
              {
                v53 = v50;
              }

              *buf = 136446210;
              v65 = v53;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "%{public}s: device unlocked during race window; firing source", buf, 0xCu);
            }

            *__error() = v51;
            dispatch_source_merge_data(v42, 1uLL);
          }
        }

        dispatch_activate(v42);
        if (v42)
        {
          os_release(v42);
        }

        Error = 0;
        goto LABEL_76;
      }

      v37 = *(a1 + 72);
      if (v37)
      {
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v39 = *(a1 + 56);
        if (!v39)
        {
          v39 = "[anonymous]";
        }

        *buf = 136446210;
        v65 = v39;
        v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v37, 16, "%{public}s: failed to load trust cache", COERCE_DOUBLE(136446210), buf, 12);
      }

      else
      {
        v54 = *(a1 + 56);
        if (!v54)
        {
          v54 = "[anonymous]";
        }

        *buf = 136446210;
        v65 = v54;
        v40 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to load trust cache", COERCE_DOUBLE(136446210), buf, 12);
      }

      v55 = v40;
      v56 = 2386;
    }

    else
    {
      v12 = quire_boot_session_set(a1, ".trustcache-loaded", 1);
      if (!v12)
      {
        Error = 0;
        goto LABEL_73;
      }

      v33 = *(a1 + 72);
      if (v33)
      {
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v35 = *(a1 + 56);
        if (!v35)
        {
          v35 = "[anonymous]";
        }

        *buf = 136446210;
        v65 = v35;
        v36 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, v33, 16, "%{public}s: failed to set trustcache-loaded flag", COERCE_DOUBLE(136446210), buf, 12);
      }

      else
      {
        v57 = *(a1 + 56);
        if (!v57)
        {
          v57 = "[anonymous]";
        }

        *buf = 136446210;
        v65 = v57;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to set trustcache-loaded flag", COERCE_DOUBLE(136446210), buf, 12);
      }

      v55 = v36;
      v56 = 2393;
    }

    Error = createError("_quire_bootstrap_trust_cache", "quire.c", v56, "com.apple.security.cryptex", 34, v12, v55);
    free(v55);
    goto LABEL_73;
  }

  v13 = *(a1 + 56);
  v14 = *__error();
  v15 = *(a1 + 72);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = "[anonymous]";
    if (v13)
    {
      v16 = v13;
    }

    *buf = 136446210;
    v65 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}s: Running in debug mode, skip trust cache", buf, 0xCu);
  }

  Error = 0;
  v12 = 0;
  *__error() = v14;
LABEL_73:
  if (a3)
  {
    (*(a3 + 16))(a3, Error);
  }

  if (v12)
  {
LABEL_76:
    CFRelease(v12);
  }

  if (Error)
  {
    CFRelease(Error);
  }
}

void ___quire_bootstrap_continue_block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    _quire_bootstrap_abort_with_error(a2, *(a1 + 32));
  }

  else
  {
    cryptex_async_f();
  }
}

void _quire_bootstrap_abort_with_error(CFTypeRef a1, void *a2)
{
  v3 = *a2;
  if (a1)
  {
    v4 = a1;
    a2[2] = CFRetain(a1);
    a1 = CFRetain(v4);
  }

  else
  {
    a2[2] = 0;
  }

  v3[51] = a1;
  v5 = v3[7];
  v6 = *__error();
  v7 = v3[9];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    *buf = 136446210;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: unwinding after bootstrap failure", buf, 0xCu);
  }

  *__error() = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___quire_bootstrap_abort_with_error_block_invoke;
  v9[3] = &__block_descriptor_tmp_44;
  v9[4] = v3;
  v9[5] = a2;
  _quire_unbootstrap_services(v3, v9);
}

void _quire_bootstrap_continue2(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 80) & 4) != 0 || (*(v2 + 176) & 0x10) != 0)
  {
    goto LABEL_201;
  }

  v3 = *(v2 + 320);
  v4 = *(v2 + 56);
  v5 = *__error();
  v6 = *(v2 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}s: bootstrap contents bitmap before consolidating: 0x%04llX", buf, 0x16u);
  }

  *__error() = v5;
  v8 = _cryptex_content_type_jetsam_properties[2];
  v9 = _cryptex_content_type_log_profile[2];
  v138 = _cryptex_content_type_service[2];
  v140 = _cryptex_content_type_feature_flags[2];
  v10 = v138 | v3 | v8 | v140;
  v139 = v9;
  if (*(v2 + 188))
  {
    v11 = v10 & ~(_cryptex_content_type_library[2] | _cryptex_content_type_executable[2] | _cryptex_content_type_factory[2] | v9);
  }

  else
  {
    v11 = v10 | v9;
  }

  if (*(v2 + 353) == 1)
  {
    v12 = *(v2 + 56);
    v13 = *__error();
    v14 = *(v2 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "[anonymous]";
      if (v12)
      {
        v15 = v12;
      }

      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: No-code cryptex will not bootstrap any contents.", buf, 0xCu);
    }

    v11 = 0;
    *__error() = v13;
  }

  v16 = *(v2 + 56);
  v17 = *__error();
  v18 = *(v2 + 72);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = "[anonymous]";
    if (v16)
    {
      v19 = v16;
    }

    *buf = 136446466;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}s: bootstrap contents bitmap after consolidating: 0x%04llX", buf, 0x16u);
  }

  *__error() = v17;
  *(v2 + 320) = v11;
  if ((v11 & v8) == 0)
  {
LABEL_36:
    if ((_cryptex_content_type_library[2] & v11) != 0)
    {
      _quire_iter_libraries(v2, a1, _quire_populate_resource_in_data_volume);
      v11 = *(v2 + 320);
    }

    if ((_cryptex_content_type_executable[2] & v11) != 0)
    {
      _quire_iter_binaries(v2, a1, _quire_populate_resource_in_data_volume);
      v11 = *(v2 + 320);
    }

    if ((_cryptex_content_type_factory[2] & v11) == 0)
    {
      goto LABEL_123;
    }

    v31 = view_create(&_view_factory, *(v2 + 392), 0);
    v32 = *(v2 + 56);
    v33 = *__error();
    v34 = *(v2 + 72);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = "[anonymous]";
      if (v32)
      {
        v35 = v32;
      }

      *buf = 136446210;
      *&buf[4] = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%{public}s: iterating factory content", buf, 0xCu);
    }

    *__error() = v33;
    v36 = view_iterate_resource(v31, &_resource_diags, a1, _quire_bootstrap_diags, 1);
    if (v36)
    {
      v37 = v36;
      v38 = *(v2 + 72);
      if (v38)
      {
        if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        v40 = *(v2 + 56);
        if (!v40)
        {
          v40 = "[anonymous]";
        }

        *buf = 136446210;
        *&buf[4] = v40;
        v41 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, v38, 16, "%{public}s: failed to bootstrap diags", COERCE_DOUBLE(136446210), buf, 12);
      }

      else
      {
        v56 = *(v2 + 56);
        if (!v56)
        {
          v56 = "[anonymous]";
        }

        *buf = 136446210;
        *&buf[4] = v56;
        v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to bootstrap diags", COERCE_DOUBLE(136446210), buf, 12);
      }

      v57 = v41;
      v58 = 2087;
    }

    else
    {
      v51 = view_iterate_resource(v31, &_resource_luacore_lib, a1, _quire_populate_resource_in_data_volume, 1);
      if (v51)
      {
        v37 = v51;
        v52 = *(v2 + 72);
        if (v52)
        {
          if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          v54 = *(v2 + 56);
          if (!v54)
          {
            v54 = "[anonymous]";
          }

          *buf = 136446210;
          *&buf[4] = v54;
          v55 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, v52, 16, "%{public}s: failed to bootstrap luacore libraries", COERCE_DOUBLE(136446210), buf, 12);
        }

        else
        {
          v64 = *(v2 + 56);
          if (!v64)
          {
            v64 = "[anonymous]";
          }

          *buf = 136446210;
          *&buf[4] = v64;
          v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to bootstrap luacore libraries", COERCE_DOUBLE(136446210), buf, 12);
        }

        v57 = v55;
        v58 = 2097;
      }

      else
      {
        v59 = view_iterate_resource(v31, &_resource_python_lib, a1, _quire_populate_resource_in_data_volume, 1);
        if (v59)
        {
          v37 = v59;
          v60 = *(v2 + 72);
          if (v60)
          {
            if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
            {
              v61 = 3;
            }

            else
            {
              v61 = 2;
            }

            v62 = *(v2 + 56);
            if (!v62)
            {
              v62 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v62;
            v63 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &_mh_execute_header, v60, 16, "%{public}s: failed to bootstrap python libraries", COERCE_DOUBLE(136446210), buf, 12);
          }

          else
          {
            v69 = *(v2 + 56);
            if (!v69)
            {
              v69 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v69;
            v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to bootstrap python libraries", COERCE_DOUBLE(136446210), buf, 12);
          }

          v57 = v63;
          v58 = 2108;
        }

        else
        {
          v37 = view_iterate_resource(v31, &_resource_astro, a1, _quire_populate_resource_in_data_volume, 1);
          if (!v37)
          {
            v70 = 0;
LABEL_110:
            if (v31)
            {
              os_release(v31);
            }

            if (v37)
            {
              CFRelease(v37);
            }

            if (v70)
            {
              v72 = *(v2 + 72);
              if (v72)
              {
                if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
                {
                  v73 = 3;
                }

                else
                {
                  v73 = 2;
                }

                v74 = *(v2 + 56);
                if (!v74)
                {
                  v74 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v74;
                LODWORD(v135) = 12;
                v75 = _os_log_send_and_compose_impl(v73, 0, 0, 0, &_mh_execute_header, v72, 16, "%{public}s: failed to bootstrap factory content", COERCE_DOUBLE(136446210), buf, v135);
              }

              else
              {
                v81 = *(v2 + 56);
                if (!v81)
                {
                  v81 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v81;
                LODWORD(v135) = 12;
                v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to bootstrap factory content", COERCE_DOUBLE(136446210), buf, v135);
              }

              v82 = v75;
              v83 = 2983;
              v84 = 37;
LABEL_193:
              Error = createError("_quire_bootstrap_contents", "quire.c", v83, "com.apple.security.cryptex", v84, v70, v82);
              free(v82);
              CFRelease(v70);
              if (Error)
              {
                goto LABEL_194;
              }

LABEL_201:
              cryptex_async_f();
              return;
            }

            v11 = *(v2 + 320);
LABEL_123:
            if ((v11 & v139) != 0)
            {
              _quire_iter_log_profiles(v2, a1, _quire_populate_resource_in_data_volume);
              v11 = *(v2 + 320);
            }

            if ((v11 & v140) != 0)
            {
              v76 = _quire_iter_feature_flags(v2, a1, _quire_populate_resource_in_data_volume);
              if (v76)
              {
                v70 = v76;
                v77 = *(v2 + 72);
                if (v77)
                {
                  if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
                  {
                    v78 = 3;
                  }

                  else
                  {
                    v78 = 2;
                  }

                  v79 = *(v2 + 56);
                  if (!v79)
                  {
                    v79 = "[anonymous]";
                  }

                  *buf = 136446210;
                  *&buf[4] = v79;
                  LODWORD(v135) = 12;
                  v80 = _os_log_send_and_compose_impl(v78, 0, 0, 0, &_mh_execute_header, v77, 16, "%{public}s: Failed to bootstrap services.", COERCE_DOUBLE(136446210), buf, v135);
                }

                else
                {
                  v115 = *(v2 + 56);
                  if (!v115)
                  {
                    v115 = "[anonymous]";
                  }

                  *buf = 136446210;
                  *&buf[4] = v115;
                  LODWORD(v135) = 12;
                  v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap services.", COERCE_DOUBLE(136446210), buf, v135);
                }

                v82 = v80;
                v83 = 3000;
LABEL_192:
                v84 = 14;
                goto LABEL_193;
              }

              v11 = *(v2 + 320);
            }

            if ((v11 & v138) == 0)
            {
              goto LABEL_201;
            }

            v142 = 0;
            v143 = 0;
            object = 0;
            v148[0] = &v143;
            v148[1] = &v142;
            v148[2] = &object;
            v143 = view_create(&_view_application, *(v2 + 392), 0);
            v142 = view_create(&_view_internal, *(v2 + 392), 0);
            object = view_create(&_view_platform, *(v2 + 392), 0);
            v85 = *(v2 + 56);
            v86 = *__error();
            v87 = *(v2 + 72);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              v88 = "[anonymous]";
              if (v85)
              {
                v88 = v85;
              }

              *buf = 136446210;
              *&buf[4] = v88;
              _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "%{public}s: iterating launch agents", buf, 0xCu);
            }

            *__error() = v86;
            v70 = view_iterate_resource(v143, &_resource_agent, a1, _quire_read_agent, 0);
            if (v70)
            {
LABEL_170:
              if (object)
              {
                os_release(object);
              }

              if (v142)
              {
                os_release(v142);
              }

              if (v143)
              {
                os_release(v143);
              }

              if (!v70)
              {
                goto LABEL_201;
              }

              v111 = *(v2 + 72);
              if (v111)
              {
                if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
                {
                  v112 = 3;
                }

                else
                {
                  v112 = 2;
                }

                v113 = *(v2 + 56);
                if (!v113)
                {
                  v113 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v113;
                LODWORD(v135) = 12;
                v114 = _os_log_send_and_compose_impl(v112, 0, 0, 0, &_mh_execute_header, v111, 16, "%{public}s: Failed to bootstrap services.", COERCE_DOUBLE(136446210), buf, v135);
              }

              else
              {
                v116 = *(v2 + 56);
                if (!v116)
                {
                  v116 = "[anonymous]";
                }

                *buf = 136446210;
                *&buf[4] = v116;
                LODWORD(v135) = 12;
                v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap services.", COERCE_DOUBLE(136446210), buf, v135);
              }

              v82 = v114;
              v83 = 3012;
              goto LABEL_192;
            }

            v89 = ctx_new(v2, 0x30uLL);
            v89[4] = 0;
            v89[5] = v89 + 4;
            v89[3] = _quire_pending_services_state_destroy;
            v90 = *(v2 + 56);
            v91 = *__error();
            v92 = *(v2 + 72);
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              v93 = "[anonymous]";
              if (v90)
              {
                v93 = v90;
              }

              *buf = 136446210;
              *&buf[4] = v93;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "%{public}s: preparing launch agents", buf, 0xCu);
            }

            *__error() = v91;
            v94 = *(v2 + 56);
            v95 = *__error();
            v96 = *(v2 + 72);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              v97 = "[anonymous]";
              if (v94)
              {
                v97 = v94;
              }

              *v149 = 136446210;
              v150 = v97;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping agents", v149, 0xCu);
            }

            *__error() = v95;
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = ___quire_bootstrap_launch_agents_block_invoke;
            v145 = &__block_descriptor_tmp_79;
            v146 = v2;
            v147 = v89 + 4;
            v98 = session_list_foreach(buf);
            if (v98)
            {
              goto LABEL_168;
            }

            v99 = *(v2 + 56);
            v100 = *__error();
            v101 = *(v2 + 72);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              v102 = "[anonymous]";
              if (v99)
              {
                v102 = v99;
              }

              *v149 = 136446210;
              v150 = v102;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEBUG, "%{public}s: bootstrapping agents done", v149, 0xCu);
            }

            *__error() = v100;
            v103 = *(v2 + 56);
            v104 = *__error();
            v105 = *(v2 + 72);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              v106 = "[anonymous]";
              if (v103)
              {
                v106 = v103;
              }

              *buf = 136446210;
              *&buf[4] = v106;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, "%{public}s: iterating services", buf, 0xCu);
            }

            *__error() = v104;
            v98 = _quire_iter_resource_for_views(v2, v89, &_resource_daemon, v148, 3, 0, _quire_bootstrap_service);
            if (v98)
            {
              goto LABEL_168;
            }

            v107 = *(v2 + 56);
            v108 = *__error();
            v109 = *(v2 + 72);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
            {
              v110 = "[anonymous]";
              if (v107)
              {
                v110 = v107;
              }

              *buf = 136446210;
              *&buf[4] = v110;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, "%{public}s: submitting jobs to launchd", buf, 0xCu);
            }

            *__error() = v108;
            v98 = _quire_pending_services_submit(v2, (v89 + 4));
            if (v98)
            {
LABEL_168:
              v70 = v98;
LABEL_169:
              ctx_destroy(v89);
              goto LABEL_170;
            }

            if (!quire_boot_session_test(v2, ".registered-for-watchdog"))
            {
              v125 = _quire_bootstrap_watchdog_registration(v2);
              if (v125)
              {
                v70 = v125;
                if (!_CFErrorHasDomainAndCode(v125, @"com.apple.security.cryptex", 10))
                {
                  goto LABEL_169;
                }

                v126 = *(v2 + 56);
                v127 = *__error();
                v128 = *(v2 + 72);
                if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
                {
                  v129 = "[anonymous]";
                  if (v126)
                  {
                    v129 = v126;
                  }

                  *buf = 136446210;
                  *&buf[4] = v129;
                  _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_INFO, "%{public}s: Watchdog registration not supported on this device. Skipping.", buf, 0xCu);
                }

                *__error() = v127;
                CFRelease(v70);
              }
            }

            v130 = (v2 + 448);
            while (1)
            {
              v130 = *v130;
              if (!v130)
              {
                break;
              }

              if (*(v130[1] + 1152) == 1)
              {
                v131 = *(v2 + 56);
                v132 = *__error();
                v133 = *(v2 + 72);
                if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
                {
                  v134 = "[anonymous]";
                  if (v131)
                  {
                    v134 = v131;
                  }

                  *buf = 136446210;
                  *&buf[4] = v134;
                  _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEBUG, "%{public}s: resetting remote devices for added remote services", buf, 0xCu);
                }

                *__error() = v132;
                _quire_reset_rsd_devices(v2);
                break;
              }
            }

            if (*(v2 + 448))
            {
              v70 = quire_boot_session_set(v2, ".jobs-loaded", 1);
            }

            else
            {
              v70 = 0;
            }

            if (!v89)
            {
              goto LABEL_170;
            }

            goto LABEL_169;
          }

          v65 = *(v2 + 72);
          if (v65)
          {
            if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
            {
              v66 = 3;
            }

            else
            {
              v66 = 2;
            }

            v67 = *(v2 + 56);
            if (!v67)
            {
              v67 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v67;
            v68 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, v65, 16, "%{public}s: failed to bootstrap astro content", COERCE_DOUBLE(136446210), buf, 12);
          }

          else
          {
            v71 = *(v2 + 56);
            if (!v71)
            {
              v71 = "[anonymous]";
            }

            *buf = 136446210;
            *&buf[4] = v71;
            v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: failed to bootstrap astro content", COERCE_DOUBLE(136446210), buf, 12);
          }

          v57 = v68;
          v58 = 2119;
        }
      }
    }

    v70 = createError("_quire_bootstrap_factory_content", "quire.c", v58, "com.apple.security.cryptex", 37, v37, v57);
    free(v57);
    goto LABEL_110;
  }

  if (!*(v2 + 416))
  {
    _quire_bootstrap_continue2_cold_1(v148, buf);
  }

  mounted_jetsam_properties = launch_load_mounted_jetsam_properties();
  if (!mounted_jetsam_properties)
  {
    v11 = *(v2 + 320);
    goto LABEL_36;
  }

  v21 = mounted_jetsam_properties;
  v22 = *(v2 + 56);
  v23 = *__error();
  v24 = *(v2 + 72);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v25;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}s: failed to launch_load_mounted_jetsam_properties: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v23;
  v26 = v21;
  v27 = *(v2 + 72);
  if (v27)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v29 = *(v2 + 56);
    if (!v29)
    {
      v29 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v29;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 16, "%{public}s: Failed to load jetsam properties. %{darwin.errno}d", buf, 18);
  }

  else
  {
    v42 = *(v2 + 56);
    if (!v42)
    {
      v42 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v42;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to load jetsam properties. %{darwin.errno}d", buf, 18);
  }

  v43 = v30;
  createError("_quire_bootstrap_contents", "quire.c", 2961, "com.apple.security.cryptex.posix", v21, 0, v30);
  free(v43);
  v44 = *(v2 + 72);
  if (v44)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v46 = *(v2 + 56);
    if (!v46)
    {
      v46 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v46;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    LODWORD(v136) = 18;
    v47 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, v44, 16, "%{public}s: Failed to bootstrap quire contents. %{darwin.errno}d", buf, v136);
  }

  else
  {
    v48 = *(v2 + 56);
    if (!v48)
    {
      v48 = "[anonymous]";
    }

    *buf = 136446466;
    *&buf[4] = v48;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    LODWORD(v136) = 18;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap quire contents. %{darwin.errno}d", buf, v136);
  }

  v49 = v47;
  Error = createError("_quire_bootstrap_contents", "quire.c", 3022, "com.apple.security.cryptex.posix", v26, 0, v47);
  free(v49);
  if (!Error)
  {
    goto LABEL_201;
  }

LABEL_194:
  v117 = *(v2 + 72);
  if (v117)
  {
    if (os_log_type_enabled(*(v2 + 72), OS_LOG_TYPE_ERROR))
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    v119 = *(v2 + 56);
    if (!v119)
    {
      v119 = "[anonymous]";
    }

    *buf = 136446210;
    *&buf[4] = v119;
    LODWORD(v137) = 12;
    v120 = _os_log_send_and_compose_impl(v118, 0, 0, 0, &_mh_execute_header, v117, 16, "%{public}s: Failed to bootstrap quire contents.", COERCE_DOUBLE(136446210), buf, v137);
  }

  else
  {
    v121 = *(v2 + 56);
    if (!v121)
    {
      v121 = "[anonymous]";
    }

    *buf = 136446210;
    *&buf[4] = v121;
    LODWORD(v137) = 12;
    v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to bootstrap quire contents.", COERCE_DOUBLE(136446210), buf, v137);
  }

  v122 = v120;
  v123 = createError("_quire_bootstrap_continue2", "quire.c", 3046, "com.apple.security.cryptex", 14, Error, v120);
  free(v122);
  if (v123)
  {
    _quire_bootstrap_abort_with_error(v123, a1);
    CFRelease(Error);
    v124 = v123;
  }

  else
  {
    cryptex_async_f();
    v124 = Error;
  }

  CFRelease(v124);
}

void ___quire_handle_device_lock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  v4 = v1[5];
  v5 = *(*v1 + 56);
  v6 = *__error();
  v7 = *(v3 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "[anonymous]";
    if (v5)
    {
      v8 = v5;
    }

    v9 = 136446210;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s: lock state source fired", &v9, 0xCu);
  }

  *__error() = v6;
  dispatch_source_cancel(v4);
  v1[5] = 0;
  MKBEventsUnregister();
  v1[4] = 0;
  _quire_bootstrap_trust_cache(v3, v1, v2);
  if (v4)
  {
    os_release(v4);
  }
}

void ___quire_handle_device_lock_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v4 = *(*(a1 + 32) + 56);
  v5 = *__error();
  v6 = *(*(a1 + 32) + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = "[anonymous]";
    if (v4)
    {
      v7 = v4;
    }

    v8 = 136446466;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: keybag event; firing source: event = %#x", &v8, 0x12u);
  }

  *__error() = v5;
  if (a2 <= 1)
  {
    dispatch_source_merge_data(*(a1 + 40), 1uLL);
  }
}

void _quire_unbootstrap_services(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_group_create();
  v4 = *(a1 + 188);
  v5 = v4 != 0;
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  *(&v51[0] + 1) = *(a1 + 416);
  LODWORD(v52) = v4;
  *(&v52 + 1) = *(a1 + 72);
  if (quire_boot_session_test(a1, ".registered-for-watchdog"))
  {
    v6 = _quire_parse_watchdog_service_descriptions(a1, watchdog_unbootstrap_service_descriptions);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 72);
      if (v8)
      {
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v10 = *(a1 + 56);
        if (!v10)
        {
          v10 = "[anonymous]";
        }

        *buf = 136446210;
        v55 = v10;
        v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%{public}s: Failed to unregister services with watchdog.", buf, 12);
      }

      else
      {
        v13 = *(a1 + 56);
        if (!v13)
        {
          v13 = "[anonymous]";
        }

        *buf = 136446210;
        v55 = v13;
        v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &_mh_execute_header, &_os_log_default, 16, "%{public}s: Failed to unregister services with watchdog.", buf, 12);
      }

      v14 = v11;
      Error = createError("_quire_unbootstrap_watchdog_registration", "quire.c", 1312, "com.apple.security.cryptex", 33, v7, v11);
      free(v14);
      CFRelease(v7);
    }

    else
    {
      Error = quire_boot_session_set(a1, ".registered-for-watchdog", 0);
    }

    if (*(a1 + 56))
    {
      v15 = *(a1 + 56);
    }

    else
    {
      v15 = "[anonymous]";
    }

    v16 = *__error();
    v17 = *(a1 + 72);
    if (Error)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v55 = v15;
        v56 = 2112;
        v57 = Error;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}s: Unregister jobs from watchdog: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v55 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}s: Unregister jobs from watchdog [no error]", buf, 0xCu);
      }

      Error = 0;
    }

    *__error() = v16;
  }

  else
  {
    Error = 0;
  }

  cf = Error;
  dispatch_group_enter(v3);
  _quire_activate(a1);
  v18 = *(a1 + 448);
  v19 = 0;
  if (v18)
  {
    v20 = 16 * v5;
    v21 = (a1 + 448);
    v43 = v20;
    do
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x2000000000;
      v50 = 0;
      v22 = v18[1];
      if (_dispatch_is_multithreaded())
      {
        while (1)
        {
          v23 = strdup(v22);
          if (v23)
          {
            break;
          }

          __os_temporary_resource_shortage();
        }
      }

      else
      {
        v23 = strdup(v22);
        if (!v23)
        {
          quire_attr_populate_dependencies_cold_2();
        }
      }

      v48[3] = v23;
      v24 = *(a1 + 56);
      v25 = *__error();
      v26 = *(a1 + 72);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = "[anonymous]";
        if (v24)
        {
          v27 = v24;
        }

        v28 = v48[3];
        *buf = 136446466;
        v55 = v27;
        v56 = 2082;
        v57 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}s: unbootstrapping service: %{public}s", buf, 0x16u);
      }

      *__error() = v25;
      v29 = *(v18[1] + 1152);
      dispatch_group_enter(v3);
      v30 = v18[1];
      v31 = *(a1 + 24);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 0x40000000;
      v46[2] = ___quire_unbootstrap_services_block_invoke;
      v46[3] = &unk_100073DD0;
      v46[4] = &v47;
      v46[5] = a1;
      v46[6] = v3;
      sm_service_on_unload(v30, v31, v46);
      *&v51[0] = v43;
      v32 = sm_unbootstrap_service(v18[1], v51);
      if (v32)
      {
        v33 = *(a1 + 56);
        v34 = *__error();
        v35 = *(a1 + 72);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = v18[1];
          v37 = "[anonymous]";
          if (v33)
          {
            v37 = v33;
          }

          *buf = 136446722;
          v55 = v37;
          v56 = 2082;
          v57 = v36;
          v58 = 2112;
          v59 = v32;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s: failed to unbootstrap service: %{public}s: %@", buf, 0x20u);
        }

        *__error() = v34;
      }

      sm_service_destroy(v18[1]);
      v18[1] = 0;
      _quire_deactivate(a1);
      v38 = *(a1 + 448);
      if (v38 == v18)
      {
        v39 = (a1 + 448);
      }

      else
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38 != v18);
      }

      *v39 = *v38;
      free(v18);
      _Block_object_dispose(&v47, 8);
      if (v32)
      {
        CFRelease(v32);
      }

      v19 |= v29;
      v18 = *v21;
    }

    while (*v21);
  }

  v40 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___quire_unbootstrap_services_block_invoke_46;
  block[3] = &unk_100073DF8;
  v45 = v19 & 1;
  block[4] = a2;
  block[5] = a1;
  dispatch_group_notify(v3, v40, block);
  dispatch_group_leave(v3);
  if (v3)
  {
    os_release(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___quire_bootstrap_abort_with_error_block_invoke(uint64_t a1)
{
  _quire_iter_feature_flags(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_iter_binaries(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_iter_libraries(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_iter_log_profiles(*(a1 + 32), *(a1 + 40), _quire_remove_resource_from_data_volume);
  _quire_unbootstrap_diags(*(a1 + 32));
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___quire_bootstrap_abort_with_error_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_43;
  _quire_unbootstrap_trust_cache(*(a1 + 32), v2);
}

_DWORD *_quire_unbootstrap_diags(uint64_t a1)
{
  bzero(&v41, 0x878uLL);
  v21 = 0;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__str = 0u;
  v27 = 0u;
  v2 = *(a1 + 56);
  v3 = *__error();
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    *buf = 136446210;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: unbootstrap diags", buf, 0xCu);
  }

  result = __error();
  *result = v3;
  if ((*(a1 + 176) & 0x20) != 0)
  {
    if (statfs("/", &v41))
    {
      v7 = *__error();
      v8 = *(a1 + 56);
      v9 = *__error();
      v10 = *(a1 + 72);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        result = __error();
        *result = v9;
        return result;
      }

      v11 = "[anonymous]";
      if (v8)
      {
        v11 = v8;
      }

      *buf = 136446466;
      v23 = v11;
      v24 = 1024;
      v25 = v7;
      v12 = "%{public}s: failed to statfs root path: %{darwin.errno}d";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
      goto LABEL_12;
    }

    sscanf(v41.f_mntfromname, "/dev/disk%d", &v21);
    snprintf(__str, 0xFFuLL, "disk%d", v21);
    if (unlink("/AppleInternal/Diags") && *__error() != 2)
    {
      v18 = *__error();
      v19 = *(a1 + 56);
      v9 = *__error();
      v10 = *(a1 + 72);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v20 = "[anonymous]";
      if (v19)
      {
        v20 = v19;
      }

      *buf = 136446466;
      v23 = v20;
      v24 = 1024;
      v25 = v18;
      v12 = "%{public}s: failed to unlink diags symlink: %{darwin.errno}d";
      goto LABEL_11;
    }

    result = apfs_volume_delete(__str, 640, *(a1 + 72));
    if (result)
    {
      v13 = result;
      v14 = *(a1 + 56);
      v15 = *__error();
      v16 = *(a1 + 72);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = "[anonymous]";
        if (v14)
        {
          v17 = v14;
        }

        *buf = 136446466;
        v23 = v17;
        v24 = 1024;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: failed to delete diags volume: %{darwin.errno}d", buf, 0x12u);
      }

      result = __error();
      *result = v15;
    }

    else
    {
      *(a1 + 176) &= ~0x20uLL;
    }
  }

  return result;
}

void _quire_unbootstrap_trust_cache(void *a1, uint64_t a2)
{
  v3 = quire_boot_session_test(a1, ".trustcache-loaded");
  v4 = a1[7];
  v5 = *__error();
  v6 = a1[9];
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = "[anonymous]";
      if (v4)
      {
        v7 = v4;
      }

      *buf = 136446210;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: unloading trust cache", buf, 0xCu);
    }

    *__error() = v5;
    cryptex_core_get_tc_asset();
    v8 = cryptex_magister_create();
    cryptex_set_target_object();
    if (*(a1[25] + 40))
    {
      v10 = a1[7];
      v11 = *__error();
      v12 = a1[9];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = "[anonymous]";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136446210;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}s: Skipping authentication of trust cache to be unloaded.", buf, 0xCu);
      }

      *__error() = v11;
      cryptex_async();
    }

    else
    {
      cryptex_magister_authenticate();
    }

    cryptex_activate();
    if (v8)
    {
      os_release(v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = "[anonymous]";
      if (v4)
      {
        v9 = v4;
      }

      *buf = 136446210;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}s: trust cache is not loaded", buf, 0xCu);
    }

    *__error() = v5;
    cryptex_async();
  }
}

uint64_t ___quire_bootstrap_abort_with_error_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 56))
  {
    v4 = *(*(a1 + 32) + 56);
  }

  else
  {
    v4 = "[anonymous]";
  }

  v5 = *__error();
  v6 = *(*(a1 + 32) + 72);
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446466;
      v13 = v4;
      v14 = 2112;
      v15 = a2;
      v7 = "%{public}s: Unbootstrap trust cache: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136446210;
    v13 = v4;
    v7 = "%{public}s: Unbootstrap trust cache [no error]";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 12;
    goto LABEL_9;
  }

  *__error() = v5;
  return cryptex_target_async_f();
}

void _quire_activate(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 184);
  *(a1 + 184) = v2 + 1;
  if (v2 == -1)
  {
    _quire_activate_cold_1();
  }
}

void ___quire_unbootstrap_services_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 56);
  v3 = *__error();
  v4 = *(*(a1 + 40) + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = "[anonymous]";
    if (v2)
    {
      v5 = v2;
    }

    v6 = *(*(*(a1 + 32) + 8) + 24);
    v8 = 136446466;
    v9 = v5;
    v10 = 2082;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%{public}s: service fully removed: %{public}s", &v8, 0x16u);
  }

  *__error() = v3;
  v7 = *(*(a1 + 32) + 8);
  free(*(v7 + 24));
  *(v7 + 24) = 0;
  dispatch_group_leave(*(a1 + 48));
}

void _quire_deactivate(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v2 = *(a1 + 184);
  *(a1 + 184) = v2 - 1;
  if (!v2)
  {
    _quire_activate_cold_1();
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 376);
    if (v3)
    {
      v4 = (a1 + 376);
      do
      {
        if ((*(v3 + 52) & 0x80000000) != 0)
        {
          _quire_unmount_continue(v3);
        }

        else
        {
          _quire_mount_continue(v3);
        }

        v5 = *v4;
        v6 = *v4;
        if (*v4 == v3)
        {
          v5 = *(v5 + 32);
          *v4 = v5;
          if (!v5)
          {
            *(a1 + 384) = v4;
            *(v3 + 32) = -1;
            return;
          }
        }

        else
        {
          do
          {
            v7 = v6;
            v6 = *(v6 + 32);
          }

          while (v6 != v3);
          v8 = *(v6 + 32);
          *(v7 + 32) = v8;
          v9 = v7 + 32;
          if (!v8)
          {
            *(a1 + 384) = v9;
          }
        }

        *(v3 + 32) = -1;
        v3 = v5;
      }

      while (v5);
    }
  }
}

void ___quire_unbootstrap_services_block_invoke_46(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 56);
  v5 = *__error();
  v6 = *(v3 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = "[anonymous]";
    }

    *v20 = 136446210;
    *&v20[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s: all services fully removed", v20, 0xCu);
  }

  *__error() = v5;
  if (v1)
  {
    v8 = *(v3 + 56);
    v9 = *__error();
    v10 = *(v3 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = "[anonymous]";
      }

      *v20 = 136446210;
      *&v20[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s: resetting remote devices for removed remote services", v20, 0xCu);
    }

    *__error() = v9;
    *v20 = _NSConcreteStackBlock;
    *&v20[8] = 0x40000000;
    *&v20[16] = ___quire_reset_rsd_devices_block_invoke;
    v21 = &__block_descriptor_tmp_50;
    v22 = v3;
    remote_device_browse_present();
  }

  v12 = quire_boot_session_set(v3, ".jobs-loaded", 0);
  if (*(v3 + 56))
  {
    v13 = *(v3 + 56);
  }

  else
  {
    v13 = "[anonymous]";
  }

  v14 = *__error();
  v15 = *(v3 + 72);
  if (v12)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *v20 = 136446466;
    *&v20[4] = v13;
    *&v20[12] = 2112;
    *&v20[14] = v12;
    v16 = "%{public}s: Unset 'jobs loaded' flag: %@";
    v17 = v15;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *v20 = 136446210;
    *&v20[4] = v13;
    v16 = "%{public}s: Unset 'jobs loaded' flag [no error]";
    v17 = v15;
    v18 = OS_LOG_TYPE_DEBUG;
    v19 = 12;
  }

  _os_log_impl(&_mh_execute_header, v17, v18, v16, v20, v19);
LABEL_22:
  *__error() = v14;
  _quire_deactivate(v3);
  (*(v2 + 16))(v2);
  if (v12)
  {
    CFRelease(v12);
  }
}