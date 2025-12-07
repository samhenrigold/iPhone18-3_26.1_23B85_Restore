void sub_181C3965C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose((v32 - 208), 8);

  _Block_object_dispose(&STACK[0x680], 8);
  _Block_object_dispose((v32 - 256), 8);

  _Block_object_dispose(&STACK[0x728], 8);
  _Unwind_Resume(a1);
}

uint64_t nw_fd_wrapper_get_fd(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_fd_wrapper_get_fd";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null wrapper", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v8, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_fd_wrapper_get_fd";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null wrapper", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v18 = "nw_fd_wrapper_get_fd";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_fd_wrapper_get_fd";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null wrapper, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_fd_wrapper_get_fd";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null wrapper, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_5;
  }

  os_unfair_lock_lock(v3 + 3);
  if ((v3[2]._os_unfair_lock_opaque & 0x80000000) != 0)
  {
    os_unfair_lock_unlock(v3 + 3);
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v4[2](v4);
  os_unfair_lock_unlock(v3 + 3);
LABEL_6:

  return v5;
}

char *nw_network_agent_ctl_copy_received_agent_message(int a1, _BYTE *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null no_message_available", buf, 12);
    v72[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v33, v72, &type))
    {
      goto LABEL_102;
    }

    if (v72[0] == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = v72[0];
      if (!os_log_type_enabled(v60, v72[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v36 = "%{public}s called with null no_message_available";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v61 = v72[0];
      v62 = os_log_type_enabled(v60, v72[0]);
      if (backtrace_string)
      {
        if (!v62)
        {
          goto LABEL_69;
        }

        *buf = 136446466;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 2082;
        *v69 = backtrace_string;
        v42 = "%{public}s called with null no_message_available, dumping backtrace:%{public}s";
        v43 = v60;
        v44 = v61;
        v45 = 22;
        goto LABEL_68;
      }

      if (!v62)
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v36 = "%{public}s called with null no_message_available, no backtrace";
    }

    else
    {
      v60 = __nwlog_obj();
      v61 = v72[0];
      if (!os_log_type_enabled(v60, v72[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v36 = "%{public}s called with null no_message_available, backtrace limit exceeded";
    }

    v53 = v60;
    v54 = v61;
    v55 = 12;
    goto LABEL_101;
  }

  *a2 = 0;
  if (a1 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 1024;
    *v69 = a1;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Trying to read from invalid network agent socket %d", buf, 18);
    v72[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v10, v72, &type))
    {
      if (v72[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v72[0];
        if (os_log_type_enabled(gLogObj, v72[0]))
        {
          *buf = 136446466;
          v67 = "nw_network_agent_ctl_copy_received_agent_message";
          v68 = 1024;
          *v69 = a1;
          v13 = "%{public}s Trying to read from invalid network agent socket %d";
LABEL_56:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x12u);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v72[0];
        v18 = os_log_type_enabled(gLogObj, v72[0]);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446722;
            v67 = "nw_network_agent_ctl_copy_received_agent_message";
            v68 = 1024;
            *v69 = a1;
            *&v69[4] = 2082;
            *&v69[6] = v17;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Trying to read from invalid network agent socket %d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v17);
          goto LABEL_57;
        }

        if (v18)
        {
          *buf = 136446466;
          v67 = "nw_network_agent_ctl_copy_received_agent_message";
          v68 = 1024;
          *v69 = a1;
          v13 = "%{public}s Trying to read from invalid network agent socket %d, no backtrace";
          goto LABEL_56;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v72[0];
        if (os_log_type_enabled(gLogObj, v72[0]))
        {
          *buf = 136446466;
          v67 = "nw_network_agent_ctl_copy_received_agent_message";
          v68 = 1024;
          *v69 = a1;
          v13 = "%{public}s Trying to read from invalid network agent socket %d, backtrace limit exceeded";
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    if (!v10)
    {
      return 0;
    }

    result = v10;
LABEL_59:
    free(result);
    return 0;
  }

  *v72 = 0u;
  v73 = 0u;
  v4 = recv(a1, v72, 0x20uLL, 2);
  v5 = v4;
  if (v4 <= 31)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 2048;
      *v69 = v5;
      *&v69[8] = 2048;
      *&v69[10] = 32;
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd)", buf, 32);
      type = OS_LOG_TYPE_ERROR;
      v64 = 0;
      if (!__nwlog_fault(v6, &type, &v64))
      {
        goto LABEL_82;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_82;
        }

        *buf = 136446722;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 2048;
        *v69 = v5;
        *&v69[8] = 2048;
        *&v69[10] = 32;
        v9 = "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd)";
LABEL_77:
        v48 = v7;
        v49 = v8;
        v50 = 32;
LABEL_81:
        _os_log_impl(&dword_181A37000, v48, v49, v9, buf, v50);
        goto LABEL_82;
      }

      if (v64 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_82;
        }

        *buf = 136446722;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 2048;
        *v69 = v5;
        *&v69[8] = 2048;
        *&v69[10] = 32;
        v9 = "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd), backtrace limit exceeded";
        goto LABEL_77;
      }

      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v30 = os_log_type_enabled(gLogObj, type);
      if (!v29)
      {
        if (!v30)
        {
          goto LABEL_82;
        }

        *buf = 136446722;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 2048;
        *v69 = v5;
        *&v69[8] = 2048;
        *&v69[10] = 32;
        v9 = "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd), no backtrace";
        goto LABEL_77;
      }

      if (v30)
      {
        *buf = 136446978;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 2048;
        *v69 = v5;
        *&v69[8] = 2048;
        *&v69[10] = 32;
        *&v69[18] = 2082;
        *&v69[20] = v29;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd), dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v29);
LABEL_82:
      if (!v6)
      {
LABEL_84:
        recv(a1, v72, 0x20uLL, 0);
        return 0;
      }

LABEL_83:
      free(v6);
      goto LABEL_84;
    }

    v27 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v27 == 35)
    {
      result = 0;
      *a2 = 1;
      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 1024;
    *v69 = v27;
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Read network agent session message header failed %{darwin.errno}d", buf, 18);
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v33, &type, &v64))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 1024;
        *v69 = v27;
        v36 = "%{public}s Read network agent session message header failed %{darwin.errno}d";
LABEL_100:
        v53 = v34;
        v54 = v35;
        v55 = 18;
LABEL_101:
        _os_log_impl(&dword_181A37000, v53, v54, v36, buf, v55);
        goto LABEL_102;
      }

      goto LABEL_102;
    }

    if (v64 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446466;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 1024;
        *v69 = v27;
        v36 = "%{public}s Read network agent session message header failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_100;
      }

LABEL_102:
      if (!v33)
      {
        return 0;
      }

      result = v33;
      goto LABEL_59;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v41 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446466;
        v67 = "nw_network_agent_ctl_copy_received_agent_message";
        v68 = 1024;
        *v69 = v27;
        v36 = "%{public}s Read network agent session message header failed %{darwin.errno}d, no backtrace";
        goto LABEL_100;
      }

      goto LABEL_102;
    }

    if (!v41)
    {
LABEL_69:
      free(backtrace_string);
      goto LABEL_102;
    }

    *buf = 136446722;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 1024;
    *v69 = v27;
    *&v69[4] = 2082;
    *&v69[6] = backtrace_string;
    v42 = "%{public}s Read network agent session message header failed %{darwin.errno}d, dumping backtrace:%{public}s";
    v43 = v34;
    v44 = v35;
    v45 = 28;
LABEL_68:
    _os_log_impl(&dword_181A37000, v43, v44, v42, buf, v45);
    goto LABEL_69;
  }

  v14 = HIDWORD(v73);
  if (HIDWORD(v73) >= 0x10E9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 1024;
    *v69 = v14;
    *&v69[4] = 1024;
    *&v69[6] = 4328;
    *&v69[10] = 1024;
    *&v69[12] = v72[0];
    *&v69[16] = 1040;
    *&v69[18] = v5;
    *&v69[22] = 2096;
    *&v69[24] = v72;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P", buf, 46);
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v6, &type, &v64))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_82;
      }

      *buf = 136447490;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 1024;
      *v69 = v14;
      *&v69[4] = 1024;
      *&v69[6] = 4328;
      *&v69[10] = 1024;
      *&v69[12] = v72[0];
      *&v69[16] = 1040;
      *&v69[18] = v5;
      *&v69[22] = 2096;
      *&v69[24] = v72;
      v9 = "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P";
    }

    else if (v64 == 1)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      v32 = os_log_type_enabled(gLogObj, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136447746;
          v67 = "nw_network_agent_ctl_copy_received_agent_message";
          v68 = 1024;
          *v69 = v14;
          *&v69[4] = 1024;
          *&v69[6] = 4328;
          *&v69[10] = 1024;
          *&v69[12] = v72[0];
          *&v69[16] = 1040;
          *&v69[18] = v5;
          *&v69[22] = 2096;
          *&v69[24] = v72;
          v70 = 2082;
          v71 = v31;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P, dumping backtrace:%{public}s", buf, 0x38u);
        }

        free(v31);
        if (!v6)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      if (!v32)
      {
        goto LABEL_82;
      }

      *buf = 136447490;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 1024;
      *v69 = v14;
      *&v69[4] = 1024;
      *&v69[6] = 4328;
      *&v69[10] = 1024;
      *&v69[12] = v72[0];
      *&v69[16] = 1040;
      *&v69[18] = v5;
      *&v69[22] = 2096;
      *&v69[24] = v72;
      v9 = "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_82;
      }

      *buf = 136447490;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 1024;
      *v69 = v14;
      *&v69[4] = 1024;
      *&v69[6] = 4328;
      *&v69[10] = 1024;
      *&v69[12] = v72[0];
      *&v69[16] = 1040;
      *&v69[18] = v5;
      *&v69[22] = 2096;
      *&v69[24] = v72;
      v9 = "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P, backtrace limit exceeded";
    }

    v48 = v15;
    v49 = v16;
    v50 = 46;
    goto LABEL_81;
  }

  v19 = HIDWORD(v73) + 32;
  if (gLogDatapath == 1)
  {
    v63 = __nwlog_obj();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447490;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 1024;
      *v69 = v14;
      *&v69[4] = 1024;
      *&v69[6] = 4328;
      *&v69[10] = 1024;
      *&v69[12] = v72[0];
      *&v69[16] = 1040;
      *&v69[18] = v5;
      *&v69[22] = 2096;
      *&v69[24] = v72;
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s kernel returned valid message payload length %u <= %u, type %u, bytes: %{network:data}.*P", buf, 0x2Eu);
    }
  }

  v20 = nw_calloc_type<unsigned char>(v14 + 32);
  v21 = recv(a1, v20, v19, 0);
  if (v21 >= v19)
  {
    return v20;
  }

  v22 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 2048;
    *v69 = v22;
    *&v69[8] = 2048;
    *&v69[10] = v19;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Not enough bytes available to read network agent message (%zd < %zd)", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v23, &type, &v64))
    {
      goto LABEL_111;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_111;
      }

      *buf = 136446722;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 2048;
      *v69 = v22;
      *&v69[8] = 2048;
      *&v69[10] = v19;
      v26 = "%{public}s Not enough bytes available to read network agent message (%zd < %zd)";
    }

    else if (v64 == 1)
    {
      v46 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v47 = os_log_type_enabled(v24, type);
      if (v46)
      {
        if (v47)
        {
          *buf = 136446978;
          v67 = "nw_network_agent_ctl_copy_received_agent_message";
          v68 = 2048;
          *v69 = v22;
          *&v69[8] = 2048;
          *&v69[10] = v19;
          *&v69[18] = 2082;
          *&v69[20] = v46;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Not enough bytes available to read network agent message (%zd < %zd), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v46);
LABEL_111:
        if (!v23)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      if (!v47)
      {
        goto LABEL_111;
      }

      *buf = 136446722;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 2048;
      *v69 = v22;
      *&v69[8] = 2048;
      *&v69[10] = v19;
      v26 = "%{public}s Not enough bytes available to read network agent message (%zd < %zd), no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_111;
      }

      *buf = 136446722;
      v67 = "nw_network_agent_ctl_copy_received_agent_message";
      v68 = 2048;
      *v69 = v22;
      *&v69[8] = 2048;
      *&v69[10] = v19;
      v26 = "%{public}s Not enough bytes available to read network agent message (%zd < %zd), backtrace limit exceeded";
    }

    v56 = v24;
    v57 = v25;
    v58 = 32;
LABEL_110:
    _os_log_impl(&dword_181A37000, v56, v57, v26, buf, v58);
    goto LABEL_111;
  }

  v37 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446722;
  v67 = "nw_network_agent_ctl_copy_received_agent_message";
  v68 = 2048;
  *v69 = v19;
  *&v69[8] = 1024;
  *&v69[10] = v37;
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d", buf, 28);
  type = OS_LOG_TYPE_ERROR;
  v64 = 0;
  if (!__nwlog_fault(v23, &type, &v64))
  {
    goto LABEL_111;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v38 = __nwlog_obj();
    v39 = type;
    if (!os_log_type_enabled(v38, type))
    {
      goto LABEL_111;
    }

    *buf = 136446722;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 2048;
    *v69 = v19;
    *&v69[8] = 1024;
    *&v69[10] = v37;
    v26 = "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d";
LABEL_109:
    v56 = v38;
    v57 = v39;
    v58 = 28;
    goto LABEL_110;
  }

  if (v64 != 1)
  {
    v38 = __nwlog_obj();
    v39 = type;
    if (!os_log_type_enabled(v38, type))
    {
      goto LABEL_111;
    }

    *buf = 136446722;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 2048;
    *v69 = v19;
    *&v69[8] = 1024;
    *&v69[10] = v37;
    v26 = "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d, backtrace limit exceeded";
    goto LABEL_109;
  }

  v51 = __nw_create_backtrace_string();
  v38 = __nwlog_obj();
  v39 = type;
  v52 = os_log_type_enabled(v38, type);
  if (!v51)
  {
    if (!v52)
    {
      goto LABEL_111;
    }

    *buf = 136446722;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 2048;
    *v69 = v19;
    *&v69[8] = 1024;
    *&v69[10] = v37;
    v26 = "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d, no backtrace";
    goto LABEL_109;
  }

  if (v52)
  {
    *buf = 136446978;
    v67 = "nw_network_agent_ctl_copy_received_agent_message";
    v68 = 2048;
    *v69 = v19;
    *&v69[8] = 1024;
    *&v69[10] = v37;
    *&v69[14] = 2082;
    *&v69[16] = v51;
    _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
  }

  free(v51);
  if (v23)
  {
LABEL_112:
    free(v23);
  }

LABEL_113:
  result = v20;
  if (v20)
  {
    goto LABEL_59;
  }

  return result;
}

NWConcrete_nw_agent_client *nw_agent_client_create(unsigned __int8 *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [NWConcrete_nw_agent_client alloc];
  v8 = v5;
  v9 = v6;
  if (v7)
  {
    if (a1)
    {
      v63.receiver = v7;
      v63.super_class = NWConcrete_nw_agent_client;
      v7 = objc_msgSendSuper2(&v63, sel_init);
      if (v7)
      {
        v10 = *a1;
        if (v10 > 0x13)
        {
          goto LABEL_13;
        }

        if (((1 << v10) & 0xCF400) != 0)
        {
          if (*(a1 + 7) > 0xFu)
          {
            if (!uuid_is_null(a1 + 32))
            {
              *v7->client_uuid = *(a1 + 2);
              v11 = nw_path_copy_path_for_client_with_context((a1 + 32));
              path = v7->path;
              v7->path = v11;

              v13 = v7->path;
              if (v13)
              {
                v14 = v13;
                v15 = _nw_path_copy_effective_remote_endpoint(v14);

                endpoint = v7->endpoint;
                v7->endpoint = v15;

                v17 = nw_path_copy_parameters(v7->path);
                parameters = v7->parameters;
                v7->parameters = v17;

                v19 = nw_path_copy_advertise_descriptor(v7->path);
                advertise_descriptor = v7->advertise_descriptor;
                v7->advertise_descriptor = v19;

                v21 = nw_path_copy_browse_descriptor(v7->path);
                browse_descriptor = v7->browse_descriptor;
                v7->browse_descriptor = v21;

                v23 = nw_path_copy_group_descriptor(v7->path);
                group_descriptor = v7->group_descriptor;
                v7->group_descriptor = v23;
              }
            }

            goto LABEL_13;
          }

          v38 = __nwlog_obj();
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message))", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v39, &type, &v62))
          {
            goto LABEL_73;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v40 = __nwlog_obj();
            v41 = type;
            if (os_log_type_enabled(v40, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message))", buf, 0xCu);
            }
          }

          else if (v62 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v40 = __nwlog_obj();
            v49 = type;
            v50 = os_log_type_enabled(v40, type);
            if (backtrace_string)
            {
              if (v50)
              {
                *buf = 136446466;
                v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
                v67 = 2082;
                v68 = backtrace_string;
                _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message)), dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_73;
            }

            if (v50)
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message)), no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v40 = __nwlog_obj();
            v53 = type;
            if (os_log_type_enabled(v40, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v40, v53, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message)), backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_73:
          if (v39)
          {
            free(v39);
          }

LABEL_75:

LABEL_76:
          v7 = 0;
          goto LABEL_14;
        }

        if (v10 != 5)
        {
LABEL_13:
          v27 = v8[3];
          next_id = nw_agent_client_get_next_id(v8 + 4);
          snprintf(v7->log_string, 8uLL, "%u.%u", v27, next_id);
          goto LABEL_14;
        }

        if (*(a1 + 7) > 0x17u)
        {
          v25 = _nw_parameters_create();
          v26 = v7->parameters;
          v7->parameters = v25;

          nw_parameters_set_pid(v7->parameters, *(a1 + 9));
          nw_parameters_set_e_proc_uuid(v7->parameters, (a1 + 40));
          goto LABEL_13;
        }

        v54 = __nwlog_obj();
        *buf = 136446210;
        v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
        v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message))", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (__nwlog_fault(v55, &type, &v62))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v56 = __nwlog_obj();
            v57 = type;
            if (os_log_type_enabled(v56, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message))", buf, 0xCu);
            }
          }

          else if (v62 == 1)
          {
            v58 = __nw_create_backtrace_string();
            v56 = __nwlog_obj();
            v59 = type;
            v60 = os_log_type_enabled(v56, type);
            if (v58)
            {
              if (v60)
              {
                *buf = 136446466;
                v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
                v67 = 2082;
                v68 = v58;
                _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message)), dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v58);
              goto LABEL_88;
            }

            if (v60)
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message)), no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v56 = __nwlog_obj();
            v61 = type;
            if (os_log_type_enabled(v56, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v56, v61, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message)), backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_88:
        if (v55)
        {
          free(v55);
        }

        goto LABEL_75;
      }

      v34 = __nwlog_obj();
      *buf = 136446210;
      v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
      v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s [super init] failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (__nwlog_fault(v35, &type, &v62))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s [super init] failed", buf, 0xCu);
          }
        }

        else if (v62 == 1)
        {
          v45 = __nw_create_backtrace_string();
          v36 = __nwlog_obj();
          v46 = type;
          v47 = os_log_type_enabled(v36, type);
          if (v45)
          {
            if (v47)
            {
              *buf = 136446466;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              v67 = 2082;
              v68 = v45;
              _os_log_impl(&dword_181A37000, v36, v46, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v45);
            goto LABEL_68;
          }

          if (v47)
          {
            *buf = 136446210;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            _os_log_impl(&dword_181A37000, v36, v46, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v36 = __nwlog_obj();
          v52 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            _os_log_impl(&dword_181A37000, v36, v52, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_68:
      if (v35)
      {
        free(v35);
      }

      goto LABEL_76;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null message", buf, 12);

    LOBYTE(v63.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v31, &v63, &type))
    {
      if (LOBYTE(v63.receiver) == 17)
      {
        v32 = __nwlog_obj();
        receiver = v63.receiver;
        if (os_log_type_enabled(v32, v63.receiver))
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          _os_log_impl(&dword_181A37000, v32, receiver, "%{public}s called with null message", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v42 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v43 = v63.receiver;
        v44 = os_log_type_enabled(v32, v63.receiver);
        if (v42)
        {
          if (v44)
          {
            *buf = 136446466;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            v67 = 2082;
            v68 = v42;
            _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v42);
          goto LABEL_62;
        }

        if (v44)
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null message, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v51 = v63.receiver;
        if (os_log_type_enabled(v32, v63.receiver))
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          _os_log_impl(&dword_181A37000, v32, v51, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_62:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_76;
  }

LABEL_14:

  return v7;
}

char *nw_path_copy_path_for_client_with_context(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v74 = *MEMORY[0x1E69E9840];
  v4 = v3;
  if (uuid_is_null(v2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v70 = "nw_path_copy_path_for_client_with_context";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null client_id", buf, 12);

    v73[0] = OS_LOG_TYPE_ERROR;
    v65[0] = 0;
    if (!__nwlog_fault(v6, v73, v65))
    {
      goto LABEL_104;
    }

    if (v73[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = v73[0];
      if (os_log_type_enabled(v7, v73[0]))
      {
        *buf = 136446210;
        v70 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null client_id", buf, 0xCu);
      }

LABEL_75:

      goto LABEL_104;
    }

    if (v65[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v17 = v73[0];
      if (os_log_type_enabled(v7, v73[0]))
      {
        *buf = 136446210;
        v70 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null client_id, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v15 = v73[0];
    v16 = os_log_type_enabled(v7, v73[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v70 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null client_id, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v16)
    {
      *buf = 136446466;
      v70 = "nw_path_copy_path_for_client_with_context";
      v71 = 2082;
      v72[0] = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null client_id, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (!v6)
    {
      goto LABEL_107;
    }

LABEL_105:
    v57 = v6;
LABEL_106:
    free(v57);
    goto LABEL_107;
  }

  if ((nw_path_shared_necp_observer_fd(v4) & 0x80000000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446210;
    v70 = "nw_path_copy_path_for_client_with_context";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s nw_path_shared_necp_observer_fd failed", buf, 12);

    v73[0] = OS_LOG_TYPE_ERROR;
    v65[0] = 0;
    if (!__nwlog_fault(v6, v73, v65))
    {
      goto LABEL_104;
    }

    if (v73[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v19 = v73[0];
      if (os_log_type_enabled(v7, v73[0]))
      {
        *buf = 136446210;
        v70 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s nw_path_shared_necp_observer_fd failed", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v65[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v33 = v73[0];
      if (os_log_type_enabled(v7, v73[0]))
      {
        *buf = 136446210;
        v70 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v33, "%{public}s nw_path_shared_necp_observer_fd failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    v23 = __nw_create_backtrace_string();
    if (!v23)
    {
      v7 = __nwlog_obj();
      v46 = v73[0];
      if (os_log_type_enabled(v7, v73[0]))
      {
        *buf = 136446210;
        v70 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v46, "%{public}s nw_path_shared_necp_observer_fd failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    v24 = v23;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = v73[0];
    if (os_log_type_enabled(v25, v73[0]))
    {
      *buf = 136446466;
      v70 = "nw_path_copy_path_for_client_with_context";
      v71 = 2082;
      v72[0] = v24;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_path_shared_necp_observer_fd failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v24);
    if (!v6)
    {
      goto LABEL_107;
    }

    goto LABEL_105;
  }

  bzero(v73, 0x400uLL);
  v9 = necp_client_action();
  if (v9 <= 0)
  {
    v20 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = v21;
    if (v20 == 2)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v70 = "nw_path_copy_path_for_client_with_context";
        v71 = 1024;
        LODWORD(v72[0]) = 2;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_107;
    }

    *buf = 136446466;
    v70 = "nw_path_copy_path_for_client_with_context";
    v71 = 1024;
    LODWORD(v72[0]) = v20;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d", buf, 18);

    v65[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v6, v65, &type))
    {
      if (v65[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = v65[0];
        if (os_log_type_enabled(v31, v65[0]))
        {
          *buf = 136446466;
          v70 = "nw_path_copy_path_for_client_with_context";
          v71 = 1024;
          LODWORD(v72[0]) = v20;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d", buf, 0x12u);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v34 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v35 = v65[0];
        v36 = os_log_type_enabled(v31, v65[0]);
        if (v34)
        {
          if (v36)
          {
            *buf = 136446722;
            v70 = "nw_path_copy_path_for_client_with_context";
            v71 = 1024;
            LODWORD(v72[0]) = v20;
            WORD2(v72[0]) = 2082;
            *(v72 + 6) = v34;
            _os_log_impl(&dword_181A37000, v31, v35, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          goto LABEL_84;
        }

        if (v36)
        {
          *buf = 136446466;
          v70 = "nw_path_copy_path_for_client_with_context";
          v71 = 1024;
          LODWORD(v72[0]) = v20;
          _os_log_impl(&dword_181A37000, v31, v35, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v47 = v65[0];
        if (os_log_type_enabled(v31, v65[0]))
        {
          *buf = 136446466;
          v70 = "nw_path_copy_path_for_client_with_context";
          v71 = 1024;
          LODWORD(v72[0]) = v20;
          _os_log_impl(&dword_181A37000, v31, v47, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_104:
    if (!v6)
    {
LABEL_107:
      v13 = 0;
LABEL_108:

      return v13;
    }

    goto LABEL_105;
  }

  bzero(buf, 0x1800uLL);
  v10 = necp_client_action();
  if (v10 > 0)
  {
    v11 = 0;
    v12 = buf;
    goto LABEL_11;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = **(StatusReg + 8);
  v29 = __nwlog_obj();
  v30 = v29;
  if (v28 != 22)
  {
    if (v28 == 2)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v65 = 136446466;
        v66 = "nw_path_copy_path_for_client_with_context";
        v67 = 1024;
        *v68 = 2;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v65, 0x12u);
      }

      goto LABEL_107;
    }

    *v65 = 136446466;
    v66 = "nw_path_copy_path_for_client_with_context";
    v67 = 1024;
    *v68 = v28;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v65, 18);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v6, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *v65 = 136446466;
          v66 = "nw_path_copy_path_for_client_with_context";
          v67 = 1024;
          *v68 = v28;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v65, 0x12u);
        }

LABEL_103:

        goto LABEL_104;
      }

      if (v63 != 1)
      {
        v44 = __nwlog_obj();
        v53 = type;
        if (os_log_type_enabled(v44, type))
        {
          *v65 = 136446466;
          v66 = "nw_path_copy_path_for_client_with_context";
          v67 = 1024;
          *v68 = v28;
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, backtrace limit exceeded", v65, 0x12u);
        }

        goto LABEL_103;
      }

      v34 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v48 = type;
      v49 = os_log_type_enabled(v44, type);
      if (!v34)
      {
        if (v49)
        {
          *v65 = 136446466;
          v66 = "nw_path_copy_path_for_client_with_context";
          v67 = 1024;
          *v68 = v28;
          _os_log_impl(&dword_181A37000, v44, v48, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, no backtrace", v65, 0x12u);
        }

        goto LABEL_103;
      }

      if (v49)
      {
        *v65 = 136446722;
        v66 = "nw_path_copy_path_for_client_with_context";
        v67 = 1024;
        *v68 = v28;
        *&v68[4] = 2082;
        *&v68[6] = v34;
        _os_log_impl(&dword_181A37000, v44, v48, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, dumping backtrace:%{public}s", v65, 0x1Cu);
      }

LABEL_84:
      free(v34);
      if (!v6)
      {
        goto LABEL_107;
      }

      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *v65 = 136446466;
    v66 = "nw_path_copy_path_for_client_with_context";
    v67 = 1024;
    *v68 = 48;
    _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s Trying to copy result again for %d flows", v65, 0x12u);
  }

  v37 = malloc_type_calloc(1uLL, 0x6400uLL, 0x607D014CuLL);
  if (v37)
  {
LABEL_66:
    v43 = v37;
    v10 = necp_client_action();
    if (v10 > 0)
    {
      v12 = v43;
      v11 = v43;
LABEL_11:
      v13 = nw_path_copy_path_for_tlv(v2, v4, v73, v9, v12, v10);
      if (v11)
      {
        free(v11);
      }

      goto LABEL_108;
    }

    v50 = **(StatusReg + 8);
    v51 = __nwlog_obj();
    v52 = v51;
    if (v50 == 2)
    {
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *v65 = 136446466;
        v66 = "nw_path_copy_path_for_client_with_context";
        v67 = 1024;
        *v68 = 2;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v65, 0x12u);
      }

LABEL_122:
      if (!v43)
      {
        goto LABEL_107;
      }

      v57 = v43;
      goto LABEL_106;
    }

    *v65 = 136446466;
    v66 = "nw_path_copy_path_for_client_with_context";
    v67 = 1024;
    *v68 = v50;
    LODWORD(v62) = 18;
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v65, v62);

    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (__nwlog_fault(v54, &type, &v63))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v55 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v55, type))
        {
          *v65 = 136446466;
          v66 = "nw_path_copy_path_for_client_with_context";
          v67 = 1024;
          *v68 = v50;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v65, 0x12u);
        }
      }

      else if (v63 == 1)
      {
        v58 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v59 = type;
        v60 = os_log_type_enabled(v55, type);
        if (v58)
        {
          if (v60)
          {
            *v65 = 136446722;
            v66 = "nw_path_copy_path_for_client_with_context";
            v67 = 1024;
            *v68 = v50;
            *&v68[4] = 2082;
            *&v68[6] = v58;
            _os_log_impl(&dword_181A37000, v55, v59, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, dumping backtrace:%{public}s", v65, 0x1Cu);
          }

          free(v58);
          goto LABEL_120;
        }

        if (v60)
        {
          *v65 = 136446466;
          v66 = "nw_path_copy_path_for_client_with_context";
          v67 = 1024;
          *v68 = v50;
          _os_log_impl(&dword_181A37000, v55, v59, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, no backtrace", v65, 0x12u);
        }
      }

      else
      {
        v55 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v55, type))
        {
          *v65 = 136446466;
          v66 = "nw_path_copy_path_for_client_with_context";
          v67 = 1024;
          *v68 = v50;
          _os_log_impl(&dword_181A37000, v55, v61, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, backtrace limit exceeded", v65, 0x12u);
        }
      }
    }

LABEL_120:
    if (v54)
    {
      free(v54);
    }

    goto LABEL_122;
  }

  v38 = __nwlog_obj();
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  *v65 = 136446722;
  v66 = "nw_path_copy_path_for_client_with_context";
  if (v39)
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

  v67 = 2048;
  *v68 = 1;
  *&v68[8] = 2048;
  *&v68[10] = 25600;
  v41 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s strict_calloc(%zu, %zu) failed", v65, 32);

  result = __nwlog_should_abort(v41);
  if (!result)
  {
    free(v41);
    v37 = 0;
    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t nw_path_shared_necp_observer_fd(void *a1)
{
  *&v39[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  globals_for_path = nw_context_get_globals_for_path(v1);
  os_unfair_lock_lock((globals_for_path + 112));
  v3 = *(globals_for_path + 128);
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = necp_open();
  *(globals_for_path + 128) = v4;
  if (v4 < 0)
  {
    v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    os_unfair_lock_unlock((globals_for_path + 112));
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446466;
    v35 = "nw_path_shared_necp_observer_fd";
    v36 = 1024;
    v37 = v12;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s necp_open observer failed %{darwin.errno}d", buf, 18);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s necp_open observer failed %{darwin.errno}d", buf, 0x12u);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v22 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446722;
            v35 = "nw_path_shared_necp_observer_fd";
            v36 = 1024;
            v37 = v12;
            v38 = 2082;
            *v39 = v22;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s necp_open observer failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v22);
          if (!v8)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v14 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s necp_open observer failed %{darwin.errno}d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v14, v27, "%{public}s necp_open observer failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_40:
    if (!v8)
    {
LABEL_42:
      v3 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

LABEL_41:
    free(v8);
    goto LABEL_42;
  }

  arc4random_buf((globals_for_path + 16), 8uLL);
  if (change_fdguard_np())
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    close(*(globals_for_path + 128));
    *(globals_for_path + 128) = -1;
    os_unfair_lock_unlock((globals_for_path + 112));
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = *(globals_for_path + 128);
    *buf = 136446722;
    v35 = "nw_path_shared_necp_observer_fd";
    v36 = 1024;
    v37 = v7;
    v38 = 1024;
    v39[0] = v5;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d", buf, 24);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          v11 = *(globals_for_path + 128);
          *buf = 136446722;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v11;
          v38 = 1024;
          v39[0] = v5;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d", buf, 0x18u);
        }
      }

      else if (v32 == 1)
      {
        v16 = __nw_create_backtrace_string();
        if (v16)
        {
          v17 = v16;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            v20 = *(globals_for_path + 128);
            *buf = 136446978;
            v35 = "nw_path_shared_necp_observer_fd";
            v36 = 1024;
            v37 = v20;
            v38 = 1024;
            v39[0] = v5;
            LOWORD(v39[1]) = 2082;
            *(&v39[1] + 2) = v17;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v17);
          if (!v8)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v9 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v9, type))
        {
          v29 = *(globals_for_path + 128);
          *buf = 136446722;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v29;
          v38 = 1024;
          v39[0] = v5;
          _os_log_impl(&dword_181A37000, v9, v28, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v9, type))
        {
          v26 = *(globals_for_path + 128);
          *buf = 136446722;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v26;
          v38 = 1024;
          v39[0] = v5;
          _os_log_impl(&dword_181A37000, v9, v25, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

    goto LABEL_40;
  }

  *(globals_for_path + 136) |= 4u;
  v3 = *(globals_for_path + 128);
LABEL_2:
  os_unfair_lock_unlock((globals_for_path + 112));
LABEL_43:

  return v3;
}

uint64_t nw_path_parse_necp_parameters(void *a1, id *a2, id *a3, id *a4, id *a5, _BYTE *a6, _WORD *a7, unsigned __int8 *a8, _BYTE *a9, uint64_t a10, unint64_t a11)
{
  v532 = *MEMORY[0x1E69E9840];
  parameters = a1;
  if (!parameters)
  {
    v467 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v467, 16, "%{public}s called with null parameters", buf, 12);

    uu[0] = 16;
    LOBYTE(v523) = 0;
    if (!__nwlog_fault(v20, uu, &v523))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      v21 = __nwlog_obj();
      v468 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v468, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v523 != 1)
    {
      v21 = __nwlog_obj();
      v484 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v484, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v474 = uu[0];
    v475 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (v475)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v474, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v475)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v474, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_1195;
  }

  if (!a10)
  {
    v469 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v469, 16, "%{public}s called with null buffer", buf, 12);

    uu[0] = 16;
    LOBYTE(v523) = 0;
    if (!__nwlog_fault(v20, uu, &v523))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      v21 = __nwlog_obj();
      v470 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v470, "%{public}s called with null buffer", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v523 != 1)
    {
      v21 = __nwlog_obj();
      v485 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v485, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v476 = uu[0];
    v477 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (v477)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v476, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v477)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v476, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_1195;
  }

  v508 = a3;
  v514 = a4;
  location = a5;
  if (!a11)
  {
    v471 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v471, 16, "%{public}s called with null buffer_length", buf, 12);

    uu[0] = 16;
    LOBYTE(v523) = 0;
    if (!__nwlog_fault(v20, uu, &v523))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      v21 = __nwlog_obj();
      v472 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v472, "%{public}s called with null buffer_length", buf, 0xCu);
      }

LABEL_24:

      goto LABEL_25;
    }

    if (v523 != 1)
    {
      v21 = __nwlog_obj();
      v486 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v486, "%{public}s called with null buffer_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v478 = uu[0];
    v479 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (v479)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v478, "%{public}s called with null buffer_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v479)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v478, "%{public}s called with null buffer_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_1195:

    free(backtrace_string);
LABEL_25:
    if (!v20)
    {
LABEL_27:
      v28 = 0;
      goto LABEL_1146;
    }

LABEL_26:
    free(v20);
    goto LABEL_27;
  }

  if (a11 <= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_parse_necp_parameters";
    *&buf[12] = 2048;
    *&buf[14] = a11;
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s NECP buffer too short %zu", buf, 22);

    uu[0] = 16;
    LOBYTE(v523) = 0;
    if (!__nwlog_fault(v20, uu, &v523))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = a11;
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s NECP buffer too short %zu", buf, 0x16u);
      }
    }

    else if (v523 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v25 = uu[0];
      v26 = os_log_type_enabled(v21, uu[0]);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 2048;
          *&buf[14] = a11;
          *&buf[22] = 2082;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v21, v25, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v24);
        if (!v20)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = a11;
        _os_log_impl(&dword_181A37000, v21, v25, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v27 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = a11;
        _os_log_impl(&dword_181A37000, v21, v27, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_24;
  }

  v505 = a7;
  v506 = a8;
  v518 = a2;
  v524 = 0;
  v523 = 0;
  v522 = 0;
  v521 = 0;
  if (a11 == 5)
  {
    LOBYTE(v509) = 0;
    v516 = 0;
    v517 = 0;
    v512 = 0;
    v515 = 0;
    v507 = 0;
    v504 = 0;
    v510 = 0;
    v513 = 0;
    v23 = 0;
    goto LABEL_1107;
  }

  v503 = a6;
  v513 = 0;
  v510 = 0;
  v504 = 0;
  v507 = 0;
  v515 = 0;
  v516 = 0;
  v512 = 0;
  v517 = 0;
  v509 = 0;
  v23 = 0;
  while (1)
  {
    v30 = *(a10 + v23);
    v31 = *(a10 + 1 + v23);
    if (v31)
    {
      if (v31 <= 0xFFFFFFF9 && a11 >= v31 + 5 && a11 - (v31 + 5) >= v23)
      {
        v40 = (a10 + 5 + v23);
        goto LABEL_60;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v23;
      *&buf[22] = 2048;
      *&buf[24] = a11;
      *&buf[32] = 1024;
      *&buf[34] = v31;
      LODWORD(v500) = 38;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v500);

      uu[0] = 16;
      v525 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v34, uu, &v525))
      {
        if (uu[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v36 = uu[0];
          if (os_log_type_enabled(v35, uu[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            *&buf[24] = a11;
            *&buf[32] = 1024;
            *&buf[34] = v31;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
          }
        }

        else if (v525 == OS_LOG_TYPE_INFO)
        {
          v37 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v38 = uu[0];
          v39 = os_log_type_enabled(v35, uu[0]);
          if (v37)
          {
            if (v39)
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v23;
              *&buf[22] = 2048;
              *&buf[24] = a11;
              *&buf[32] = 1024;
              *&buf[34] = v31;
              *&buf[38] = 2082;
              *&buf[40] = v37;
              _os_log_impl(&dword_181A37000, v35, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v37);
            if (!v34)
            {
              goto LABEL_59;
            }

LABEL_58:
            free(v34);
            goto LABEL_59;
          }

          if (v39)
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            *&buf[24] = a11;
            *&buf[32] = 1024;
            *&buf[34] = v31;
            _os_log_impl(&dword_181A37000, v35, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v41 = uu[0];
          if (os_log_type_enabled(v35, uu[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            *&buf[24] = a11;
            *&buf[32] = 1024;
            *&buf[34] = v31;
            _os_log_impl(&dword_181A37000, v35, v41, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (v34)
      {
        goto LABEL_58;
      }
    }

LABEL_59:
    v40 = 0;
LABEL_60:
    v23 += v31 + 5;
    if (v23 > a11)
    {
      break;
    }

    if (v31)
    {
      v42 = v40 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      switch(v30)
      {
        case 1:
          if (v31 == 16)
          {
            goto LABEL_67;
          }

          if (v31 >= 0x11)
          {
            v413 = __nwlog_obj();
            if (os_log_type_enabled(v413, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 1;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v413, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_67:
            _nw_parameters_set_e_proc_uuid(parameters, v40);
          }

          break;
        case 2:
          if (v31 == 16)
          {
            goto LABEL_231;
          }

          if (v31 >= 0x11)
          {
            v414 = __nwlog_obj();
            if (os_log_type_enabled(v414, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 2;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v414, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_231:
            _nw_parameters_set_proc_uuid(parameters, v40);
          }

          break;
        case 3:
        case 12:
        case 13:
        case 37:
          break;
        case 4:
          if (*(v40 + (v31 - 1)))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v90 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            LODWORD(v500) = 18;
            v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v90, 16, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v525))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v91 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v91, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated", buf, 0x12u);
              }

              goto LABEL_28;
            }

            if (v525 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v171 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v171, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_28;
            }

            v151 = __nw_create_backtrace_string();
            v146 = __nwlog_obj();
            v152 = uu[0];
            v153 = os_log_type_enabled(v146, uu[0]);
            if (v151)
            {
              if (v153)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                *&buf[18] = 2082;
                *&buf[20] = v151;
                _os_log_impl(&dword_181A37000, v146, v152, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v151);
              goto LABEL_29;
            }

            if (v153)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v146, v152, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated, no backtrace", buf, 0x12u);
            }

            goto LABEL_595;
          }

          _nw_parameters_set_account_id(parameters, v40);
          break;
        case 6:
          if (v31 == 4)
          {
            goto LABEL_233;
          }

          if (v31 >= 5)
          {
            v415 = __nwlog_obj();
            if (os_log_type_enabled(v415, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 6;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v415, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_233:
            _nw_parameters_set_pid(parameters, *v40);
          }

          break;
        case 7:
          if (v31 == 4)
          {
            goto LABEL_177;
          }

          if (v31 >= 5)
          {
            v407 = __nwlog_obj();
            if (os_log_type_enabled(v407, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 7;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v407, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_177:
            _nw_parameters_set_uid(parameters, *v40);
          }

          break;
        case 9:
          if (v31 <= 0x18)
          {
            bzero(&buf[v31], 24 - v31);
            memcpy(buf, v40, v31);
            v56 = _nw_interface_create_with_name(buf);
            if (v56)
            {
              nw_parameters_require_interface(parameters, v56);
            }

            goto LABEL_869;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v138 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = 9;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_parse_necp_parameters";
          *&buf[34] = 1024;
          *&buf[36] = 3253;
          LODWORD(v500) = 40;
          v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v139, uu, &v525))
          {
            goto LABEL_532;
          }

          if (uu[0] == 17)
          {
            v140 = __nwlog_obj();
            v141 = uu[0];
            if (os_log_type_enabled(v140, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 9;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3253;
              _os_log_impl(&dword_181A37000, v140, v141, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v140 = __nwlog_obj();
            v177 = uu[0];
            if (os_log_type_enabled(v140, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 9;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3253;
              _os_log_impl(&dword_181A37000, v140, v177, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          v162 = __nw_create_backtrace_string();
          v163 = __nwlog_obj();
          v164 = uu[0];
          v165 = os_log_type_enabled(v163, uu[0]);
          if (v162)
          {
            if (v165)
            {
              *buf = 136447490;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 9;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3253;
              *&buf[40] = 2082;
              *&buf[42] = v162;
              _os_log_impl(&dword_181A37000, v163, v164, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
            }

            free(v162);
            goto LABEL_532;
          }

          if (v165)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = 9;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_parse_necp_parameters";
            *&buf[34] = 1024;
            *&buf[36] = 3253;
            _os_log_impl(&dword_181A37000, v163, v164, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_531;
        case 10:
          if (v31 == 4)
          {
            goto LABEL_209;
          }

          if (v31 >= 5)
          {
            v409 = __nwlog_obj();
            if (os_log_type_enabled(v409, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 10;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v409, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_209:
            _nw_parameters_set_traffic_class(parameters, *v40);
          }

          break;
        case 11:
          if (v31 != 2 && v31 != 1)
          {
            v427 = __nwlog_obj();
            if (os_log_type_enabled(v427, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 11;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v427, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v103 = *v40;
          if (!*v40)
          {
            break;
          }

          v104 = _nw_parameters_copy_default_protocol_stack();
          v105 = nw_protocol_stack_copy_transport_protocol(v104);
          v106 = v105 == 0;

          if (!v106)
          {
            goto LABEL_452;
          }

          if (v103 == 6)
          {
            options = _nw_tcp_create_options(v107, v108, v109, v110, v111, v112, v113);
            nw_protocol_stack_set_transport_protocol(v104, options);
          }

          else
          {
            if (v103 != 17)
            {
              goto LABEL_452;
            }

            options = _nw_udp_create_options();
            nw_protocol_stack_set_transport_protocol(v104, options);
          }

LABEL_452:
          v504 = v103;
          break;
        case 33:
          v98 = (v31 - 1);
          if (*(v40 + v98))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v99 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            LODWORD(v500) = 18;
            v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v100, uu, &v525))
            {
              if (uu[0] == 17)
              {
                v101 = __nwlog_obj();
                v102 = uu[0];
                if (os_log_type_enabled(v101, uu[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v101, v102, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated", buf, 0x12u);
                }

                goto LABEL_840;
              }

              if (v525 != OS_LOG_TYPE_INFO)
              {
                v101 = __nwlog_obj();
                v173 = uu[0];
                if (os_log_type_enabled(v101, uu[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v101, v173, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
                }

                goto LABEL_840;
              }

              v156 = __nw_create_backtrace_string();
              v101 = __nwlog_obj();
              type = uu[0];
              v157 = os_log_type_enabled(v101, uu[0]);
              if (!v156)
              {
                if (v157)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v101, type, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated, no backtrace", buf, 0x12u);
                }

                goto LABEL_840;
              }

              if (v157)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                *&buf[18] = 2082;
                *&buf[20] = v156;
                _os_log_impl(&dword_181A37000, v101, type, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v156);
            }

            goto LABEL_841;
          }

          if (!v518)
          {
            goto LABEL_843;
          }

          if (*v518)
          {
            nw_endpoint_set_tracker_owner(*v518);
            goto LABEL_843;
          }

          v182 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v182, 16, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v100, uu, &v525))
          {
            goto LABEL_841;
          }

          if (uu[0] == 17)
          {
            v101 = __nwlog_obj();
            v183 = uu[0];
            if (os_log_type_enabled(v101, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v101, v183, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT", buf, 0xCu);
            }

            goto LABEL_840;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v101 = __nwlog_obj();
            v258 = uu[0];
            if (os_log_type_enabled(v101, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v101, v258, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, backtrace limit exceeded", buf, 0xCu);
            }

LABEL_840:

LABEL_841:
            if (!v100)
            {
              goto LABEL_843;
            }

LABEL_842:
            free(v100);
            goto LABEL_843;
          }

          v225 = __nw_create_backtrace_string();
          v101 = __nwlog_obj();
          v501 = uu[0];
          v226 = os_log_type_enabled(v101, uu[0]);
          if (!v225)
          {
            if (v226)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v101, v501, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, no backtrace", buf, 0xCu);
            }

            goto LABEL_840;
          }

          if (v226)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v225;
            _os_log_impl(&dword_181A37000, v101, v501, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v225);
          if (v100)
          {
            goto LABEL_842;
          }

LABEL_843:
          if (!*(v40 + v98))
          {
            _nw_parameters_set_attributed_bundle_identifier(parameters, v40);
            goto LABEL_863;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v376 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v31;
          LODWORD(v500) = 18;
          v377 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v376, 16, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v377, uu, &v525))
          {
            goto LABEL_861;
          }

          if (uu[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v378 = gLogObj;
            v379 = uu[0];
            if (os_log_type_enabled(v378, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v378, v379, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated", buf, 0x12u);
            }

LABEL_860:

            goto LABEL_861;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v378 = __nwlog_obj();
            v383 = uu[0];
            if (os_log_type_enabled(v378, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v378, v383, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_860;
          }

          v380 = __nw_create_backtrace_string();
          v378 = __nwlog_obj();
          v381 = uu[0];
          v382 = os_log_type_enabled(v378, uu[0]);
          if (!v380)
          {
            if (v382)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v378, v381, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated, no backtrace", buf, 0x12u);
            }

            goto LABEL_860;
          }

          if (v382)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            *&buf[18] = 2082;
            *&buf[20] = v380;
            _os_log_impl(&dword_181A37000, v378, v381, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v380);
LABEL_861:
          if (v377)
          {
            free(v377);
          }

LABEL_863:
          if (v516)
          {
            if (v31 != 16)
            {
              if (v31 < 0x11)
              {
                break;
              }

              v394 = __nwlog_obj();
              if (os_log_type_enabled(v394, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_verify_tlv_length";
                *&buf[12] = 1024;
                *&buf[14] = v30;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                *&buf[24] = 1024;
                *&buf[26] = 16;
                _os_log_impl(&dword_181A37000, v394, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
              }
            }

            if (!nw_path_set_agent_identifier_on_endpoint(v516, v30, v31, v40))
            {
              break;
            }

            v56 = nw_parameters_copy_required_netagent_uuids(parameters);
            if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
            {
              xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, v40);
              nw_parameters_set_required_netagent_uuids(parameters, v56);
              goto LABEL_869;
            }

            v384 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            LODWORD(v500) = 12;
            v385 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v384, 16, "%{public}s xpc_array_create failed", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v385, uu, &v525))
            {
              goto LABEL_889;
            }

            if (uu[0] == 17)
            {
              v386 = __nwlog_obj();
              v387 = uu[0];
              if (os_log_type_enabled(v386, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v386, v387, "%{public}s xpc_array_create failed", buf, 0xCu);
              }

              goto LABEL_888;
            }

            if (v525 == OS_LOG_TYPE_INFO)
            {
              v388 = __nw_create_backtrace_string();
              v386 = __nwlog_obj();
              v389 = uu[0];
              v390 = os_log_type_enabled(v386, uu[0]);
              if (v388)
              {
                if (v390)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v388;
                  _os_log_impl(&dword_181A37000, v386, v389, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v388);
                goto LABEL_889;
              }

              if (v390)
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v386, v389, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v386 = __nwlog_obj();
              v391 = uu[0];
              if (os_log_type_enabled(v386, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v386, v391, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

LABEL_888:

LABEL_889:
            if (v385)
            {
              free(v385);
            }

            v56 = 0;
            goto LABEL_869;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v144 = gLogObj;
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
          }

LABEL_872:

          v516 = 0;
          break;
        case 34:
          if (!*(v40 + (v31 - 1)))
          {
            _nw_parameters_set_attribution_context(parameters, v40);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v31;
          LODWORD(v500) = 18;
          v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v85, uu, &v525))
          {
            goto LABEL_29;
          }

          if (uu[0] == 17)
          {
            v86 = __nwlog_obj();
            v87 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated", buf, 0x12u);
            }

            goto LABEL_28;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v86 = __nwlog_obj();
            v169 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v169, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_28;
          }

          v145 = __nw_create_backtrace_string();
          v146 = __nwlog_obj();
          v147 = uu[0];
          v148 = os_log_type_enabled(v146, uu[0]);
          if (v145)
          {
            if (v148)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              *&buf[18] = 2082;
              *&buf[20] = v145;
              _os_log_impl(&dword_181A37000, v146, v147, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_422;
          }

          if (v148)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            _os_log_impl(&dword_181A37000, v146, v147, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated, no backtrace", buf, 0x12u);
          }

          goto LABEL_595;
        case 35:
          if (*(v40 + (v31 - 1)))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v88 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            LODWORD(v500) = 18;
            v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v525))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v89 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v89, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated", buf, 0x12u);
              }

              goto LABEL_28;
            }

            if (v525 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v170 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v170, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_28;
            }

            v145 = __nw_create_backtrace_string();
            v146 = __nwlog_obj();
            v149 = uu[0];
            v150 = os_log_type_enabled(v146, uu[0]);
            if (v145)
            {
              if (v150)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                *&buf[18] = 2082;
                *&buf[20] = v145;
                _os_log_impl(&dword_181A37000, v146, v149, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_422;
            }

            if (v150)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v146, v149, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated, no backtrace", buf, 0x12u);
            }

            goto LABEL_595;
          }

          if (!v518)
          {
            break;
          }

          if (*v518)
          {
            nw_endpoint_set_known_tracker_name(*v518);
            break;
          }

          v180 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v180, 16, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v85, uu, &v525))
          {
            goto LABEL_29;
          }

          if (uu[0] == 17)
          {
            v86 = __nwlog_obj();
            v181 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v86, v181, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT", buf, 0xCu);
            }

            goto LABEL_28;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v86 = __nwlog_obj();
            v257 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v86, v257, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_28;
          }

          v222 = __nw_create_backtrace_string();
          v86 = __nwlog_obj();
          v223 = uu[0];
          v224 = os_log_type_enabled(v86, uu[0]);
          if (!v222)
          {
            if (v224)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v86, v223, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, no backtrace", buf, 0xCu);
            }

            goto LABEL_28;
          }

          if (v224)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v222;
            _os_log_impl(&dword_181A37000, v86, v223, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v222);
          if (v85)
          {
            goto LABEL_30;
          }

          break;
        case 36:
          v98 = (v31 - 1);
          goto LABEL_843;
        case 42:
          if (!*(v40 + (v31 - 1)))
          {
            nw_parameters_set_url(parameters, v40);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v94 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v31;
          LODWORD(v500) = 18;
          v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v85, uu, &v525))
          {
            goto LABEL_29;
          }

          if (uu[0] == 17)
          {
            v86 = __nwlog_obj();
            v95 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v95, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated", buf, 0x12u);
            }

            goto LABEL_28;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v86 = __nwlog_obj();
            v172 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v172, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_28;
          }

          v145 = __nw_create_backtrace_string();
          v146 = __nwlog_obj();
          v154 = uu[0];
          v155 = os_log_type_enabled(v146, uu[0]);
          if (v145)
          {
            if (v155)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              *&buf[18] = 2082;
              *&buf[20] = v145;
              _os_log_impl(&dword_181A37000, v146, v154, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_422;
          }

          if (v155)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            _os_log_impl(&dword_181A37000, v146, v154, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated, no backtrace", buf, 0x12u);
          }

          goto LABEL_595;
        case 100:
          if (v31 <= 0x18)
          {
            bzero(&buf[v31], 24 - v31);
            memcpy(buf, v40, v31);
            v117 = _nw_interface_create_with_name(buf);
            v118 = v117;
            if (v117)
            {
              v119 = nw_interface_copy_dictionary(v117);
              if (v119)
              {
                v120 = nw_parameters_copy_prohibited_interfaces(parameters);
                if (v120 || (v120 = xpc_array_create(0, 0)) != 0)
                {
                  xpc_array_append_value(v120, v119);
                  nw_parameters_set_prohibited_interfaces(parameters, v120);
                  goto LABEL_270;
                }

                v238 = __nwlog_obj();
                *uu = 136446210;
                *&uu[4] = "nw_path_parse_necp_parameters";
                LODWORD(v500) = 12;
                v239 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v238, 16, "%{public}s xpc_array_create failed", uu, v500);

                v525 = OS_LOG_TYPE_ERROR;
                v520 = 0;
                if (__nwlog_fault(v239, &v525, &v520))
                {
                  if (v525 == OS_LOG_TYPE_FAULT)
                  {
                    v240 = __nwlog_obj();
                    v241 = v525;
                    if (os_log_type_enabled(v240, v525))
                    {
                      *uu = 136446210;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      _os_log_impl(&dword_181A37000, v240, v241, "%{public}s xpc_array_create failed", uu, 0xCu);
                    }

                    goto LABEL_942;
                  }

                  if (v520 == 1)
                  {
                    v263 = __nw_create_backtrace_string();
                    v240 = __nwlog_obj();
                    v264 = v525;
                    v265 = os_log_type_enabled(v240, v525);
                    if (v263)
                    {
                      if (v265)
                      {
                        *uu = 136446466;
                        *&uu[4] = "nw_path_parse_necp_parameters";
                        *&uu[12] = 2082;
                        *&uu[14] = v263;
                        _os_log_impl(&dword_181A37000, v240, v264, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                      }

                      free(v263);
                      goto LABEL_943;
                    }

                    if (v265)
                    {
                      *uu = 136446210;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      _os_log_impl(&dword_181A37000, v240, v264, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                    }
                  }

                  else
                  {
                    v240 = __nwlog_obj();
                    v393 = v525;
                    if (os_log_type_enabled(v240, v525))
                    {
                      *uu = 136446210;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      _os_log_impl(&dword_181A37000, v240, v393, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                    }
                  }

LABEL_942:
                }

LABEL_943:
                if (v239)
                {
                  free(v239);
                }

                v120 = 0;
LABEL_270:
              }
            }

            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v142 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = 100;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_parse_necp_parameters";
          *&buf[34] = 1024;
          *&buf[36] = 3469;
          LODWORD(v500) = 40;
          v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v139, uu, &v525))
          {
            goto LABEL_532;
          }

          if (uu[0] == 17)
          {
            v140 = __nwlog_obj();
            v143 = uu[0];
            if (os_log_type_enabled(v140, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3469;
              _os_log_impl(&dword_181A37000, v140, v143, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v140 = __nwlog_obj();
            v178 = uu[0];
            if (os_log_type_enabled(v140, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3469;
              _os_log_impl(&dword_181A37000, v140, v178, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

LABEL_1084:

LABEL_532:
            if (!v139)
            {
              break;
            }

LABEL_533:
            v29 = v139;
LABEL_31:
            free(v29);
            break;
          }

          v166 = __nw_create_backtrace_string();
          v163 = __nwlog_obj();
          v167 = uu[0];
          v168 = os_log_type_enabled(v163, uu[0]);
          if (!v166)
          {
            if (v168)
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3469;
              _os_log_impl(&dword_181A37000, v163, v167, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
            }

LABEL_531:

            goto LABEL_532;
          }

          if (v168)
          {
            *buf = 136447490;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = 100;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_parse_necp_parameters";
            *&buf[34] = 1024;
            *&buf[36] = 3469;
            *&buf[40] = 2082;
            *&buf[42] = v166;
            _os_log_impl(&dword_181A37000, v163, v167, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
          }

LABEL_401:

          free(v166);
          if (v139)
          {
            goto LABEL_533;
          }

          break;
        case 101:
          if (v31 != 1)
          {
            v404 = __nwlog_obj();
            if (os_log_type_enabled(v404, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 101;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v404, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v74 = _nw_interface_functional_type_to_interface_type();
          v75 = _nw_interface_functional_type_to_interface_subtype(*v40);
          v76 = v75;
          if (v75)
          {
            if (v75 == 1002)
            {
              ++v513;
              break;
            }

            v56 = nw_parameters_copy_prohibited_interface_subtypes(parameters);
            if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
            {
              xpc_array_set_uint64(v56, 0xFFFFFFFFFFFFFFFFLL, v76);
              nw_parameters_set_prohibited_interface_subtypes(parameters, v56);
              goto LABEL_869;
            }

            v218 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            LODWORD(v500) = 12;
            v219 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v218, 16, "%{public}s xpc_array_create failed", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v219, uu, &v525))
            {
              goto LABEL_931;
            }

            if (uu[0] == 17)
            {
              v220 = __nwlog_obj();
              v221 = uu[0];
              if (os_log_type_enabled(v220, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v220, v221, "%{public}s xpc_array_create failed", buf, 0xCu);
              }

              goto LABEL_930;
            }

            if (v525 == OS_LOG_TYPE_INFO)
            {
              v254 = __nw_create_backtrace_string();
              v220 = __nwlog_obj();
              v255 = uu[0];
              v256 = os_log_type_enabled(v220, uu[0]);
              if (v254)
              {
                if (v256)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v254;
                  _os_log_impl(&dword_181A37000, v220, v255, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v254);
                goto LABEL_931;
              }

              if (v256)
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v220, v255, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v220 = __nwlog_obj();
              v375 = uu[0];
              if (os_log_type_enabled(v220, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v220, v375, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

LABEL_930:

LABEL_931:
            if (v219)
            {
              free(v219);
            }

            v56 = 0;
            goto LABEL_869;
          }

          if (!v74)
          {
            break;
          }

          v56 = nw_parameters_copy_prohibited_interface_types(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uint64(v56, 0xFFFFFFFFFFFFFFFFLL, v74);
            nw_parameters_set_prohibited_interface_types(parameters, v56);
            goto LABEL_869;
          }

          v234 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v235 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v234, 16, "%{public}s xpc_array_create failed", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v235, uu, &v525))
          {
            goto LABEL_937;
          }

          if (uu[0] == 17)
          {
            v236 = __nwlog_obj();
            v237 = uu[0];
            if (os_log_type_enabled(v236, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v236, v237, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_936:

            goto LABEL_937;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v236 = __nwlog_obj();
            v392 = uu[0];
            if (os_log_type_enabled(v236, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v236, v392, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_936;
          }

          v260 = __nw_create_backtrace_string();
          v236 = __nwlog_obj();
          v261 = uu[0];
          v262 = os_log_type_enabled(v236, uu[0]);
          if (!v260)
          {
            if (v262)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v236, v261, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_936;
          }

          if (v262)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v260;
            _os_log_impl(&dword_181A37000, v236, v261, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v260);
LABEL_937:
          if (v235)
          {
            free(v235);
          }

          v56 = 0;
LABEL_869:

          break;
        case 102:
          if (v31 == 16)
          {
            goto LABEL_259;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v418 = __nwlog_obj();
          if (os_log_type_enabled(v418, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 102;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v418, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_259:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_prohibited_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_prohibited_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v210 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v211 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v210, 16, "%{public}s xpc_array_create failed", buf, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v211, &v525, &v520))
          {
            goto LABEL_919;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v212 = __nwlog_obj();
            v213 = v525;
            if (os_log_type_enabled(v212, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v212, v213, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_918:

            goto LABEL_919;
          }

          if (v520 != 1)
          {
            v212 = __nwlog_obj();
            v347 = v525;
            if (os_log_type_enabled(v212, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v212, v347, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_918;
          }

          v248 = __nw_create_backtrace_string();
          v212 = __nwlog_obj();
          v249 = v525;
          v250 = os_log_type_enabled(v212, v525);
          if (!v248)
          {
            if (v250)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v212, v249, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_918;
          }

          if (v250)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v248;
            _os_log_impl(&dword_181A37000, v212, v249, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v248);
LABEL_919:
          if (v211)
          {
            free(v211);
          }

          v56 = 0;
          goto LABEL_869;
        case 103:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_131;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v398 = __nwlog_obj();
          if (os_log_type_enabled(v398, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 103;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v529) = 1024;
            *(&v529 + 2) = 64;
            _os_log_impl(&dword_181A37000, v398, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_131:
          v57 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v57;
          v58 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v58;
          v59 = nw_parameters_copy_prohibited_netagent_domains(parameters);
          v60 = nw_parameters_copy_prohibited_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_626;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_626;
          }

          v61 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s xpc_array_create failed", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v62, &v525, &v520))
          {
            goto LABEL_623;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v63 = __nwlog_obj();
            v64 = v525;
            if (os_log_type_enabled(v63, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v63, v64, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_622:

            goto LABEL_623;
          }

          if (v520 != 1)
          {
            v63 = __nwlog_obj();
            v230 = v525;
            if (os_log_type_enabled(v63, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v63, v230, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_622;
          }

          v188 = __nw_create_backtrace_string();
          v63 = __nwlog_obj();
          v189 = v525;
          v190 = os_log_type_enabled(v63, v525);
          if (!v188)
          {
            if (v190)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v63, v189, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_622;
          }

          if (v190)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v188;
            _os_log_impl(&dword_181A37000, v63, v189, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v188);
LABEL_623:
          if (v62)
          {
            free(v62);
          }

          v59 = 0;
LABEL_626:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v280 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              LODWORD(v500) = 12;
              v281 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v280, 16, "%{public}s xpc_array_create failed", uu, v500);

              v525 = OS_LOG_TYPE_ERROR;
              v520 = 0;
              if (__nwlog_fault(v281, &v525, &v520))
              {
                if (v525 == OS_LOG_TYPE_FAULT)
                {
                  v282 = __nwlog_obj();
                  v283 = v525;
                  if (os_log_type_enabled(v282, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v282, v283, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_806;
                }

                if (v520 == 1)
                {
                  v287 = __nw_create_backtrace_string();
                  v282 = __nwlog_obj();
                  v288 = v525;
                  v289 = os_log_type_enabled(v282, v525);
                  if (v287)
                  {
                    if (v289)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v287;
                      _os_log_impl(&dword_181A37000, v282, v288, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v287);
                    goto LABEL_807;
                  }

                  if (v289)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v282, v288, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v282 = __nwlog_obj();
                  v292 = v525;
                  if (os_log_type_enabled(v282, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v282, v292, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_806:
              }

LABEL_807:
              if (v281)
              {
                free(v281);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_prohibited_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v266 = __nwlog_obj();
          v267 = strnlen(buf, 0x20uLL);
          v268 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v267;
          *&uu[22] = 2048;
          v529 = v268;
          LODWORD(v500) = 32;
          v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v266, 16, "%{public}s invalid prohibited netagent string lengths %zu %zu", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v269, &v525, &v520))
          {
            goto LABEL_658;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v270 = __nwlog_obj();
            v271 = v525;
            if (os_log_type_enabled(v270, v525))
            {
              v272 = strnlen(buf, 0x20uLL);
              v273 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v272;
              *&uu[22] = 2048;
              v529 = v273;
              _os_log_impl(&dword_181A37000, v270, v271, "%{public}s invalid prohibited netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_636:

            goto LABEL_658;
          }

          if (v520 != 1)
          {
            v270 = __nwlog_obj();
            v284 = v525;
            if (os_log_type_enabled(v270, v525))
            {
              v285 = strnlen(buf, 0x20uLL);
              v286 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v285;
              *&uu[22] = 2048;
              v529 = v286;
              _os_log_impl(&dword_181A37000, v270, v284, "%{public}s invalid prohibited netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_636;
          }

          v274 = __nw_create_backtrace_string();
          v275 = __nwlog_obj();
          v276 = v525;
          v277 = os_log_type_enabled(v275, v525);
          if (v274)
          {
            if (v277)
            {
              v278 = strnlen(buf, 0x20uLL);
              v279 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v278;
              *&uu[22] = 2048;
              v529 = v279;
              v530 = 2082;
              v531 = v274;
              _os_log_impl(&dword_181A37000, v275, v276, "%{public}s invalid prohibited netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v274);
          }

          else
          {
            if (v277)
            {
              v290 = strnlen(buf, 0x20uLL);
              v291 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v290;
              *&uu[22] = 2048;
              v529 = v291;
              _os_log_impl(&dword_181A37000, v275, v276, "%{public}s invalid prohibited netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_658:
          if (v269)
          {
LABEL_800:
            free(v269);
          }

LABEL_831:

          break;
        case 111:
          if (v31 != 1)
          {
            v403 = __nwlog_obj();
            if (os_log_type_enabled(v403, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 111;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v403, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v72 = _nw_interface_functional_type_to_interface_type();
          _nw_parameters_set_required_interface_type(parameters, v72);
          v73 = _nw_interface_functional_type_to_interface_subtype(*v40);
          _nw_parameters_set_required_interface_subtype(parameters, v73);
          break;
        case 112:
          if (v31 == 16)
          {
            goto LABEL_144;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v400 = __nwlog_obj();
          if (os_log_type_enabled(v400, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 112;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v400, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_144:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_required_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_required_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v206 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s xpc_array_create failed", buf, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v207, &v525, &v520))
          {
            goto LABEL_913;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v208 = __nwlog_obj();
            v209 = v525;
            if (os_log_type_enabled(v208, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v208, v209, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_912:

            goto LABEL_913;
          }

          if (v520 != 1)
          {
            v208 = __nwlog_obj();
            v294 = v525;
            if (os_log_type_enabled(v208, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v208, v294, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_912;
          }

          v245 = __nw_create_backtrace_string();
          v208 = __nwlog_obj();
          v246 = v525;
          v247 = os_log_type_enabled(v208, v525);
          if (!v245)
          {
            if (v247)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v208, v246, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_912;
          }

          if (v247)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v245;
            _os_log_impl(&dword_181A37000, v208, v246, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v245);
LABEL_913:
          if (v207)
          {
            free(v207);
          }

          v56 = 0;
          goto LABEL_869;
        case 113:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_179;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v408 = __nwlog_obj();
          if (os_log_type_enabled(v408, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 113;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v529) = 1024;
            *(&v529 + 2) = 64;
            _os_log_impl(&dword_181A37000, v408, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_179:
          v77 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v77;
          v78 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v78;
          v59 = nw_parameters_copy_required_netagent_domains(parameters);
          v60 = nw_parameters_copy_required_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_718;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_718;
          }

          v79 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s xpc_array_create failed", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v80, &v525, &v520))
          {
            goto LABEL_715;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v81 = __nwlog_obj();
            v82 = v525;
            if (os_log_type_enabled(v81, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v81, v82, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_714:

            goto LABEL_715;
          }

          if (v520 != 1)
          {
            v81 = __nwlog_obj();
            v232 = v525;
            if (os_log_type_enabled(v81, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v81, v232, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_714;
          }

          v194 = __nw_create_backtrace_string();
          v81 = __nwlog_obj();
          v195 = v525;
          v196 = os_log_type_enabled(v81, v525);
          if (!v194)
          {
            if (v196)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v81, v195, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_714;
          }

          if (v196)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v194;
            _os_log_impl(&dword_181A37000, v81, v195, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v194);
LABEL_715:
          if (v80)
          {
            free(v80);
          }

          v59 = 0;
LABEL_718:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v334 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              LODWORD(v500) = 12;
              v335 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v334, 16, "%{public}s xpc_array_create failed", uu, v500);

              v525 = OS_LOG_TYPE_ERROR;
              v520 = 0;
              if (__nwlog_fault(v335, &v525, &v520))
              {
                if (v525 == OS_LOG_TYPE_FAULT)
                {
                  v336 = __nwlog_obj();
                  v337 = v525;
                  if (os_log_type_enabled(v336, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v336, v337, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_820;
                }

                if (v520 == 1)
                {
                  v341 = __nw_create_backtrace_string();
                  v336 = __nwlog_obj();
                  v342 = v525;
                  v343 = os_log_type_enabled(v336, v525);
                  if (v341)
                  {
                    if (v343)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v341;
                      _os_log_impl(&dword_181A37000, v336, v342, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v341);
                    goto LABEL_821;
                  }

                  if (v343)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v336, v342, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v336 = __nwlog_obj();
                  v346 = v525;
                  if (os_log_type_enabled(v336, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v336, v346, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_820:
              }

LABEL_821:
              if (v335)
              {
                free(v335);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_required_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v321 = __nwlog_obj();
          v322 = strnlen(buf, 0x20uLL);
          v323 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v322;
          *&uu[22] = 2048;
          v529 = v323;
          LODWORD(v500) = 32;
          v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v321, 16, "%{public}s invalid required netagent string lengths %zu %zu", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v269, &v525, &v520))
          {
            goto LABEL_750;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v324 = __nwlog_obj();
            v325 = v525;
            if (os_log_type_enabled(v324, v525))
            {
              v326 = strnlen(buf, 0x20uLL);
              v327 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v326;
              *&uu[22] = 2048;
              v529 = v327;
              _os_log_impl(&dword_181A37000, v324, v325, "%{public}s invalid required netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_728:

            goto LABEL_750;
          }

          if (v520 != 1)
          {
            v324 = __nwlog_obj();
            v338 = v525;
            if (os_log_type_enabled(v324, v525))
            {
              v339 = strnlen(buf, 0x20uLL);
              v340 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v339;
              *&uu[22] = 2048;
              v529 = v340;
              _os_log_impl(&dword_181A37000, v324, v338, "%{public}s invalid required netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_728;
          }

          v328 = __nw_create_backtrace_string();
          v329 = __nwlog_obj();
          v330 = v525;
          v331 = os_log_type_enabled(v329, v525);
          if (v328)
          {
            if (v331)
            {
              v332 = strnlen(buf, 0x20uLL);
              v333 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v332;
              *&uu[22] = 2048;
              v529 = v333;
              v530 = 2082;
              v531 = v328;
              _os_log_impl(&dword_181A37000, v329, v330, "%{public}s invalid required netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v328);
          }

          else
          {
            if (v331)
            {
              v344 = strnlen(buf, 0x20uLL);
              v345 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v344;
              *&uu[22] = 2048;
              v529 = v345;
              _os_log_impl(&dword_181A37000, v329, v330, "%{public}s invalid required netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_750:
          if (!v269)
          {
            goto LABEL_831;
          }

          goto LABEL_800;
        case 122:
          if (v31 == 16)
          {
            goto LABEL_139;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v399 = __nwlog_obj();
          if (os_log_type_enabled(v399, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 122;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v399, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_139:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_preferred_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_preferred_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v202 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v203 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v202, 16, "%{public}s xpc_array_create failed", buf, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v203, &v525, &v520))
          {
            goto LABEL_907;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v204 = __nwlog_obj();
            v205 = v525;
            if (os_log_type_enabled(v204, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v204, v205, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_906:

            goto LABEL_907;
          }

          if (v520 != 1)
          {
            v204 = __nwlog_obj();
            v293 = v525;
            if (os_log_type_enabled(v204, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v204, v293, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_906;
          }

          v242 = __nw_create_backtrace_string();
          v204 = __nwlog_obj();
          v243 = v525;
          v244 = os_log_type_enabled(v204, v525);
          if (!v242)
          {
            if (v244)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v204, v243, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_906;
          }

          if (v244)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v242;
            _os_log_impl(&dword_181A37000, v204, v243, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v242);
LABEL_907:
          if (v203)
          {
            free(v203);
          }

          v56 = 0;
          goto LABEL_869;
        case 123:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_283;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v421 = __nwlog_obj();
          if (os_log_type_enabled(v421, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 123;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v529) = 1024;
            *(&v529 + 2) = 64;
            _os_log_impl(&dword_181A37000, v421, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_283:
          v124 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v124;
          v125 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v125;
          v59 = nw_parameters_copy_preferred_netagent_domains(parameters);
          v60 = nw_parameters_copy_preferred_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_767;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_767;
          }

          v126 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v127 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s xpc_array_create failed", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v127, &v525, &v520))
          {
            goto LABEL_764;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v128 = __nwlog_obj();
            v129 = v525;
            if (os_log_type_enabled(v128, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v128, v129, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_763:

            goto LABEL_764;
          }

          if (v520 != 1)
          {
            v128 = __nwlog_obj();
            v233 = v525;
            if (os_log_type_enabled(v128, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v128, v233, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_763;
          }

          v197 = __nw_create_backtrace_string();
          v128 = __nwlog_obj();
          v198 = v525;
          v199 = os_log_type_enabled(v128, v525);
          if (!v197)
          {
            if (v199)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v128, v198, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_763;
          }

          if (v199)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v197;
            _os_log_impl(&dword_181A37000, v128, v198, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v197);
LABEL_764:
          if (v127)
          {
            free(v127);
          }

          v59 = 0;
LABEL_767:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v362 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              LODWORD(v500) = 12;
              v363 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v362, 16, "%{public}s xpc_array_create failed", uu, v500);

              v525 = OS_LOG_TYPE_ERROR;
              v520 = 0;
              if (__nwlog_fault(v363, &v525, &v520))
              {
                if (v525 == OS_LOG_TYPE_FAULT)
                {
                  v364 = __nwlog_obj();
                  v365 = v525;
                  if (os_log_type_enabled(v364, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v364, v365, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_827;
                }

                if (v520 == 1)
                {
                  v369 = __nw_create_backtrace_string();
                  v364 = __nwlog_obj();
                  v370 = v525;
                  v371 = os_log_type_enabled(v364, v525);
                  if (v369)
                  {
                    if (v371)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v369;
                      _os_log_impl(&dword_181A37000, v364, v370, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v369);
                    goto LABEL_828;
                  }

                  if (v371)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v364, v370, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v364 = __nwlog_obj();
                  v374 = v525;
                  if (os_log_type_enabled(v364, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v364, v374, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_827:
              }

LABEL_828:
              if (v363)
              {
                free(v363);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_preferred_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v349 = __nwlog_obj();
          v350 = strnlen(buf, 0x20uLL);
          v351 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v350;
          *&uu[22] = 2048;
          v529 = v351;
          LODWORD(v500) = 32;
          v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v349, 16, "%{public}s invalid preferred netagent string lengths %zu %zu", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v269, &v525, &v520))
          {
            goto LABEL_799;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v352 = __nwlog_obj();
            v353 = v525;
            if (os_log_type_enabled(v352, v525))
            {
              v354 = strnlen(buf, 0x20uLL);
              v355 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v354;
              *&uu[22] = 2048;
              v529 = v355;
              _os_log_impl(&dword_181A37000, v352, v353, "%{public}s invalid preferred netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_777:

            goto LABEL_799;
          }

          if (v520 != 1)
          {
            v352 = __nwlog_obj();
            v366 = v525;
            if (os_log_type_enabled(v352, v525))
            {
              v367 = strnlen(buf, 0x20uLL);
              v368 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v367;
              *&uu[22] = 2048;
              v529 = v368;
              _os_log_impl(&dword_181A37000, v352, v366, "%{public}s invalid preferred netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_777;
          }

          v356 = __nw_create_backtrace_string();
          v357 = __nwlog_obj();
          v358 = v525;
          v359 = os_log_type_enabled(v357, v525);
          if (v356)
          {
            if (v359)
            {
              v360 = strnlen(buf, 0x20uLL);
              v361 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v360;
              *&uu[22] = 2048;
              v529 = v361;
              v530 = 2082;
              v531 = v356;
              _os_log_impl(&dword_181A37000, v357, v358, "%{public}s invalid preferred netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v356);
          }

          else
          {
            if (v359)
            {
              v372 = strnlen(buf, 0x20uLL);
              v373 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v372;
              *&uu[22] = 2048;
              v529 = v373;
              _os_log_impl(&dword_181A37000, v357, v358, "%{public}s invalid preferred netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_799:
          if (!v269)
          {
            goto LABEL_831;
          }

          goto LABEL_800;
        case 124:
          if (v31 == 16)
          {
            goto LABEL_278;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v420 = __nwlog_obj();
          if (os_log_type_enabled(v420, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 124;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v420, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_278:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_avoided_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_avoided_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v214 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v215 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v214, 16, "%{public}s xpc_array_create failed", buf, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v215, &v525, &v520))
          {
            goto LABEL_925;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v216 = __nwlog_obj();
            v217 = v525;
            if (os_log_type_enabled(v216, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v216, v217, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_924:

            goto LABEL_925;
          }

          if (v520 != 1)
          {
            v216 = __nwlog_obj();
            v348 = v525;
            if (os_log_type_enabled(v216, v525))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v216, v348, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_924;
          }

          v251 = __nw_create_backtrace_string();
          v216 = __nwlog_obj();
          v252 = v525;
          v253 = os_log_type_enabled(v216, v525);
          if (!v251)
          {
            if (v253)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v216, v252, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_924;
          }

          if (v253)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v251;
            _os_log_impl(&dword_181A37000, v216, v252, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v251);
LABEL_925:
          if (v215)
          {
            free(v215);
          }

          v56 = 0;
          goto LABEL_869;
        case 125:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_152;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v402 = __nwlog_obj();
          if (os_log_type_enabled(v402, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 125;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v529) = 1024;
            *(&v529 + 2) = 64;
            _os_log_impl(&dword_181A37000, v402, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_152:
          v65 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v65;
          v66 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v66;
          v59 = nw_parameters_copy_avoided_netagent_domains(parameters);
          v60 = nw_parameters_copy_avoided_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_675;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_675;
          }

          v67 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s xpc_array_create failed", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v68, &v525, &v520))
          {
            goto LABEL_672;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v69 = __nwlog_obj();
            v70 = v525;
            if (os_log_type_enabled(v69, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v69, v70, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_671:

            goto LABEL_672;
          }

          if (v520 != 1)
          {
            v69 = __nwlog_obj();
            v231 = v525;
            if (os_log_type_enabled(v69, v525))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v69, v231, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_671;
          }

          v191 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v192 = v525;
          v193 = os_log_type_enabled(v69, v525);
          if (!v191)
          {
            if (v193)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v69, v192, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_671;
          }

          if (v193)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v191;
            _os_log_impl(&dword_181A37000, v69, v192, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v191);
LABEL_672:
          if (v68)
          {
            free(v68);
          }

          v59 = 0;
LABEL_675:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v308 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              LODWORD(v500) = 12;
              v309 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v308, 16, "%{public}s xpc_array_create failed", uu, v500);

              v525 = OS_LOG_TYPE_ERROR;
              v520 = 0;
              if (__nwlog_fault(v309, &v525, &v520))
              {
                if (v525 == OS_LOG_TYPE_FAULT)
                {
                  v310 = __nwlog_obj();
                  v311 = v525;
                  if (os_log_type_enabled(v310, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v310, v311, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_813;
                }

                if (v520 == 1)
                {
                  v315 = __nw_create_backtrace_string();
                  v310 = __nwlog_obj();
                  v316 = v525;
                  v317 = os_log_type_enabled(v310, v525);
                  if (v315)
                  {
                    if (v317)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v315;
                      _os_log_impl(&dword_181A37000, v310, v316, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v315);
                    goto LABEL_814;
                  }

                  if (v317)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v310, v316, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v310 = __nwlog_obj();
                  v320 = v525;
                  if (os_log_type_enabled(v310, v525))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v310, v320, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_813:
              }

LABEL_814:
              if (v309)
              {
                free(v309);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_avoided_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v295 = __nwlog_obj();
          v296 = strnlen(buf, 0x20uLL);
          v297 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v296;
          *&uu[22] = 2048;
          v529 = v297;
          LODWORD(v500) = 32;
          v269 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v295, 16, "%{public}s invalid avoided netagent string lengths %zu %zu", uu, v500);

          v525 = OS_LOG_TYPE_ERROR;
          v520 = 0;
          if (!__nwlog_fault(v269, &v525, &v520))
          {
            goto LABEL_707;
          }

          if (v525 == OS_LOG_TYPE_FAULT)
          {
            v298 = __nwlog_obj();
            v299 = v525;
            if (os_log_type_enabled(v298, v525))
            {
              v300 = strnlen(buf, 0x20uLL);
              v301 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v300;
              *&uu[22] = 2048;
              v529 = v301;
              _os_log_impl(&dword_181A37000, v298, v299, "%{public}s invalid avoided netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_685:

            goto LABEL_707;
          }

          if (v520 != 1)
          {
            v298 = __nwlog_obj();
            v312 = v525;
            if (os_log_type_enabled(v298, v525))
            {
              v313 = strnlen(buf, 0x20uLL);
              v314 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v313;
              *&uu[22] = 2048;
              v529 = v314;
              _os_log_impl(&dword_181A37000, v298, v312, "%{public}s invalid avoided netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_685;
          }

          v302 = __nw_create_backtrace_string();
          v303 = __nwlog_obj();
          v304 = v525;
          v305 = os_log_type_enabled(v303, v525);
          if (v302)
          {
            if (v305)
            {
              v306 = strnlen(buf, 0x20uLL);
              v307 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v306;
              *&uu[22] = 2048;
              v529 = v307;
              v530 = 2082;
              v531 = v302;
              _os_log_impl(&dword_181A37000, v303, v304, "%{public}s invalid avoided netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v302);
          }

          else
          {
            if (v305)
            {
              v318 = strnlen(buf, 0x20uLL);
              v319 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v318;
              *&uu[22] = 2048;
              v529 = v319;
              _os_log_impl(&dword_181A37000, v303, v304, "%{public}s invalid avoided netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_707:
          if (!v269)
          {
            goto LABEL_831;
          }

          goto LABEL_800;
        case 140:
          if (v31 != 1)
          {
            v405 = __nwlog_obj();
            if (os_log_type_enabled(v405, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 140;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v405, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_parameters_set_fallback_mode(parameters, *v40);
          break;
        case 150:
          if (v31 == 16)
          {
            goto LABEL_211;
          }

          if (v31 >= 0x11)
          {
            v410 = __nwlog_obj();
            if (os_log_type_enabled(v410, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 150;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v410, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_211:
            v92 = parameters;
            _nw_parameters_add_parent_id(v92, v40);
          }

          break;
        case 151:
          if (v31 != 1)
          {
            v406 = __nwlog_obj();
            if (os_log_type_enabled(v406, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 151;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v406, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_parameters_set_data_mode(parameters, *v40);
          break;
        case 152:
          if (v31 == 4)
          {
            goto LABEL_295;
          }

          if (v31 < 5)
          {
            v131 = 0;
          }

          else
          {
            v425 = __nwlog_obj();
            if (os_log_type_enabled(v425, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 152;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v425, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_295:
            v131 = *v40;
            if (*v40)
            {
              _nw_parameters_set_dry_run(parameters, 1);
            }

            if ((v131 & 2) != 0)
            {
              _nw_parameters_set_use_awdl();
            }

            if ((v131 & 4) != 0)
            {
              _nw_parameters_set_use_p2p(parameters, 1);
            }

            if ((v131 & 0x10) != 0)
            {
              _nw_parameters_set_include_ble(parameters, 1);
            }
          }

          v513 += (v131 << 28) >> 31;
          v509 |= (v131 & 0x40) >> 6;
          if ((v131 & 0x20) != 0)
          {
            _nw_parameters_set_include_screen_off_devices(parameters, 1);
          }

          break;
        case 154:
          if (v31 == 6)
          {
            goto LABEL_149;
          }

          if (v31 >= 7)
          {
            v401 = __nwlog_obj();
            if (os_log_type_enabled(v401, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 154;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v401, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_149:
            v523 = *v40;
            v524 = *(v40 + 2);
          }

          BYTE4(v507) = 1;
          break;
        case 155:
          if (v31 == 6)
          {
            goto LABEL_238;
          }

          if (v31 >= 7)
          {
            v417 = __nwlog_obj();
            if (os_log_type_enabled(v417, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 155;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v417, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_238:
            v521 = *v40;
            v522 = *(v40 + 2);
          }

          LOBYTE(v507) = 1;
          break;
        case 156:
          goto LABEL_863;
        case 157:
          if (v31 != 1)
          {
            v424 = __nwlog_obj();
            if (os_log_type_enabled(v424, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 157;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v424, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v130 = _nw_interface_functional_type_to_interface_type();
          _nw_parameters_set_next_hop_required_interface_type(parameters, v130);
          break;
        case 158:
          if (!v516)
          {
            v144 = __nwlog_obj();
            if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
            }

            goto LABEL_872;
          }

          *buf = 0;
          asprintf(buf, "%.*s", v31, v40);
          v55 = *buf;
          v516 = v516;
          _nw_endpoint_set_device_id(v516, v55);

          v29 = *buf;
          if (*buf)
          {
            goto LABEL_31;
          }

          break;
        case 159:
          if (v516)
          {
            v93 = [MEMORY[0x1E695DEF0] dataWithBytes:v40 length:v31];
            nw_endpoint_append_public_key(v516, v93);

            break;
          }

          v144 = __nwlog_obj();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
          }

          goto LABEL_872;
        case 160:
          if (v31 != 1)
          {
            v397 = __nwlog_obj();
            if (os_log_type_enabled(v397, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 160;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v397, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v50 = _nw_interface_functional_type_to_interface_subtype(*v40);
          if (!v50)
          {
            break;
          }

          v51 = nw_parameters_copy_preferred_interface_subtypes(parameters);
          if (v51 || (v51 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uint64(v51, 0xFFFFFFFFFFFFFFFFLL, v50);
            v52 = parameters;
            v53 = v51;
            _nw_parameters_clear_preferred_interface_subtypes(v52);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_parameters_set_preferred_interface_subtypes_block_invoke;
            *&buf[24] = &unk_1E6A3D300;
            v54 = v52;
            *&buf[32] = v54;
            xpc_array_apply(v53, buf);

            goto LABEL_121;
          }

          v184 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          LODWORD(v500) = 12;
          v185 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v184, 16, "%{public}s xpc_array_create failed", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v185, uu, &v525))
          {
            goto LABEL_895;
          }

          if (uu[0] == 17)
          {
            v186 = __nwlog_obj();
            v187 = uu[0];
            if (os_log_type_enabled(v186, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v186, v187, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_894:

            goto LABEL_895;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v186 = __nwlog_obj();
            v259 = uu[0];
            if (os_log_type_enabled(v186, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v186, v259, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_894;
          }

          v227 = __nw_create_backtrace_string();
          v186 = __nwlog_obj();
          v228 = uu[0];
          v229 = os_log_type_enabled(v186, uu[0]);
          if (!v227)
          {
            if (v229)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v186, v228, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_894;
          }

          if (v229)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v227;
            _os_log_impl(&dword_181A37000, v186, v228, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v227);
LABEL_895:
          if (v185)
          {
            free(v185);
          }

          v53 = 0;
LABEL_121:

          break;
        case 163:
          if (v31 == 16)
          {
            goto LABEL_110;
          }

          if (v31 >= 0x11)
          {
            v396 = __nwlog_obj();
            if (os_log_type_enabled(v396, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 163;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v396, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_110:
            _nw_parameters_set_migration_controller_session_uuid(parameters, v40);
          }

          break;
        case 200:
          v71 = nw_path_copy_endpoint_from_tlv(200, v31, v40);

          v56 = v71;
          v516 = v56;
          if (v56)
          {
            _nw_parameters_set_local_endpoint(parameters, v56);
          }

          goto LABEL_869;
        case 201:
          if (v518 && !*v518)
          {
            v83 = nw_path_copy_endpoint_from_tlv(201, v31, v40);

            v516 = v83;
            if (v516)
            {
              objc_storeStrong(v518, v83);
            }
          }

          break;
        case 202:
          if (!v514 || *v514)
          {
            break;
          }

          v56 = nw_path_copy_browse_descriptor_from_tlv(v31, v40, v18);
          if (v56)
          {
            objc_storeStrong(v514, v56);
          }

          goto LABEL_869;
        case 203:
          v512 = v31;
          v515 = v40;
          break;
        case 204:
          if (!location || *location)
          {
            break;
          }

          v56 = nw_path_copy_advertise_descriptor_from_tlv(v31, v40, v18);
          if (v56)
          {
            objc_storeStrong(location, v56);
          }

          goto LABEL_869;
        case 205:
          if (!v508 || *v508)
          {
            break;
          }

          v56 = nw_path_copy_group_descriptor_from_tlv(v31, v40, v18);
          if (v56)
          {
            objc_storeStrong(v508, v56);
          }

          goto LABEL_869;
        case 210:
          if (v31 == 8)
          {
            goto LABEL_229;
          }

          if (v31 >= 9)
          {
            v412 = __nwlog_obj();
            if (os_log_type_enabled(v412, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 210;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 8;
              _os_log_impl(&dword_181A37000, v412, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_229:
            _nw_parameters_set_delegated_unique_pid(parameters, *v40);
          }

          break;
        case 220:
          if (v31 <= 2)
          {
            break;
          }

          v56 = __nwlog_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 220;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 2;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

          goto LABEL_869;
        case 221:
          if (v31 != 1)
          {
            v411 = __nwlog_obj();
            if (os_log_type_enabled(v411, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 221;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v411, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          if (*v40 == 253)
          {
            v96 = _nw_parameters_copy_default_protocol_stack();
            stream_options = _nw_quic_create_stream_options(v96);
            nw_protocol_stack_set_transport_protocol(v96, stream_options);
          }

          break;
        case 222:
          if (v31 < 0x2A)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v136 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            LODWORD(v500) = 18;
            v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v525))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v137 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v137, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, 0x12u);
              }

              goto LABEL_28;
            }

            if (v525 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v176 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v176, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, backtrace limit exceeded", buf, 0x12u);
              }

LABEL_28:

LABEL_29:
              if (!v85)
              {
                break;
              }

LABEL_30:
              v29 = v85;
              goto LABEL_31;
            }

            v145 = __nw_create_backtrace_string();
            v146 = __nwlog_obj();
            v160 = uu[0];
            v161 = os_log_type_enabled(v146, uu[0]);
            if (!v145)
            {
              if (v161)
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v146, v160, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, no backtrace", buf, 0x12u);
              }

LABEL_595:

              goto LABEL_29;
            }

            if (v161)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              *&buf[18] = 2082;
              *&buf[20] = v145;
              _os_log_impl(&dword_181A37000, v146, v160, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
            }
          }

          else
          {
            v45 = *(v40 + 20);
            if (v45 + 42 == v31)
            {
              v46 = *(v40 + 1);
              *buf = *v40;
              *&buf[16] = v46;
              *&buf[32] = *(v40 + 4);
              v47 = nw_protocol_copy_definition_for_identifier(buf);
              v48 = v47;
              if (v47)
              {
                if (*(v40 + 20))
                {
                  deserialized_options = _nw_protocol_create_deserialized_options(v47, v40 + 42, *(v40 + 20));
                }

                else
                {
                  deserialized_options = _nw_protocol_create_options(v47);
                }

                v179 = deserialized_options;
                if (deserialized_options)
                {
                  v201 = _nw_parameters_copy_default_protocol_stack();
                  nw_protocol_stack_append_application_protocol(v201, v179);
                }

                else
                {
                  v201 = __nwlog_obj();
                  if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                  {
                    *uu = 136446466;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    *&uu[12] = 2112;
                    *&uu[14] = v48;
                    _os_log_impl(&dword_181A37000, v201, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to deserialize options for %@", uu, 0x16u);
                  }
                }
              }

              else
              {
                v179 = __nwlog_obj();
                if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                {
                  *uu = 136446466;
                  *&uu[4] = "nw_path_parse_necp_parameters";
                  *&uu[12] = 2080;
                  *&uu[14] = buf;
                  _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEFAULT, "%{public}s No protocol definition registered for %s", uu, 0x16u);
                }
              }

              break;
            }

            v158 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            LODWORD(v500) = 24;
            v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v158, 16, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u)", buf, v500);

            uu[0] = 16;
            v525 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v525))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v159 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                _os_log_impl(&dword_181A37000, v86, v159, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u)", buf, 0x18u);
              }

              goto LABEL_28;
            }

            if (v525 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v200 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                _os_log_impl(&dword_181A37000, v86, v200, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_28;
            }

            v145 = __nw_create_backtrace_string();
            v146 = __nwlog_obj();
            v174 = uu[0];
            v175 = os_log_type_enabled(v146, uu[0]);
            if (!v145)
            {
              if (v175)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                _os_log_impl(&dword_181A37000, v146, v174, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), no backtrace", buf, 0x18u);
              }

              goto LABEL_595;
            }

            if (v175)
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v45;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2082;
              *&buf[26] = v145;
              _os_log_impl(&dword_181A37000, v146, v174, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), dumping backtrace:%{public}s", buf, 0x22u);
            }
          }

LABEL_422:

          free(v145);
          if (v85)
          {
            goto LABEL_30;
          }

          break;
        case 223:
          if (v514 && *v514)
          {
            v43 = *v514;
            nw_browse_descriptor_set_predicate(v43, v40, v31);
          }

          break;
        case 230:
          if (v31 != 1)
          {
            v426 = __nwlog_obj();
            if (os_log_type_enabled(v426, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 230;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v426, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v132 = *v40;
          v133 = _nw_parameters_copy_default_protocol_stack();
          v134 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v133, 1);
          v135 = v134;
          if (v134)
          {
            _nw_ip_options_set_local_address_preference(v134, v132);
          }

          break;
        case 231:
          if (v31 == 16)
          {
            goto LABEL_291;
          }

          v422 = __nwlog_obj();
          v423 = v422;
          if (v31 >= 0x11)
          {
            if (os_log_type_enabled(v422, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v423, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_291:
            _nw_parameters_set_persona(parameters, v40);
            break;
          }

          *buf = 136447234;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = 231;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_parse_necp_parameters";
          *&buf[34] = 1024;
          *&buf[36] = 4047;
          LODWORD(v500) = 40;
          v139 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v422, 16, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, v500);

          uu[0] = 16;
          v525 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v139, uu, &v525))
          {
            goto LABEL_532;
          }

          if (uu[0] == 17)
          {
            v140 = __nwlog_obj();
            v428 = uu[0];
            if (os_log_type_enabled(v140, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 4047;
              _os_log_impl(&dword_181A37000, v140, v428, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          if (v525 != OS_LOG_TYPE_INFO)
          {
            v140 = __nwlog_obj();
            v431 = uu[0];
            if (os_log_type_enabled(v140, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 4047;
              _os_log_impl(&dword_181A37000, v140, v431, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          v166 = __nw_create_backtrace_string();
          v163 = __nwlog_obj();
          v429 = uu[0];
          v430 = os_log_type_enabled(v163, uu[0]);
          if (v166)
          {
            if (v430)
            {
              *buf = 136447490;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 4047;
              *&buf[40] = 2082;
              *&buf[42] = v166;
              _os_log_impl(&dword_181A37000, v163, v429, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
            }

            goto LABEL_401;
          }

          if (v430)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = 231;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_parse_necp_parameters";
            *&buf[34] = 1024;
            *&buf[36] = 4047;
            _os_log_impl(&dword_181A37000, v163, v429, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_531;
        case 232:
          if (location && *location)
          {
            nw_advertise_descriptor_set_custom_service(*location, v40, v31);
          }

          else if (v514 && *v514)
          {
            nw_browse_descriptor_set_custom_service(*v514, v40, v31);
          }

          break;
        case 233:
          if (v31 == 2)
          {
            goto LABEL_235;
          }

          if (v31 >= 3)
          {
            v416 = __nwlog_obj();
            if (os_log_type_enabled(v416, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 233;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 2;
              _os_log_impl(&dword_181A37000, v416, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_235:
            _nw_parameters_set_next_hop_required_interface_subtype(parameters, *v40);
          }

          break;
        case 234:
          v115 = xpc_data_create(v40, v31);
          v116 = parameters;
          nw_parameters_set_metadata(v116, v115);
          _nw_parameters_set_encode_custom_options(v116, 1);

          break;
        case 250:
          if (v31 == 4)
          {
            goto LABEL_72;
          }

          if (v31 < 5)
          {
            v44 = 0;
            if (!a9)
            {
              goto LABEL_82;
            }

LABEL_80:
            if ((v44 & 0x800) != 0)
            {
              *a9 = 1;
            }

            goto LABEL_82;
          }

          v395 = __nwlog_obj();
          if (os_log_type_enabled(v395, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 250;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 4;
            _os_log_impl(&dword_181A37000, v395, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_72:
          v44 = *v40;
          if (*v40)
          {
            _nw_parameters_set_multipath_service(parameters, 2);
          }

          if ((v44 & 0x100) != 0)
          {
            _nw_parameters_set_only_primary_requires_type(parameters, 1);
          }

          if (v503 && (v44 & 8) != 0)
          {
            *v503 = 1;
          }

          if (a9)
          {
            goto LABEL_80;
          }

LABEL_82:
          if ((v44 & 4) != 0)
          {
            _nw_parameters_set_prohibit_expensive(parameters, 1);
          }

          if ((v44 & 0x1000) != 0)
          {
            _nw_parameters_set_prohibit_constrained(parameters, 1);
          }

          if ((v44 & 0x4000000) != 0)
          {
            _nw_parameters_set_allow_ultra_constrained(parameters, 1);
          }

          if ((v44 & 0x20000) != 0)
          {
            _nw_parameters_set_allow_socket_access(parameters, 1);
          }

          if ((v44 & 0x10000) != 0)
          {
            _nw_parameters_set_is_known_tracker(parameters, 1);
          }

          if ((v44 & 0x40000) != 0)
          {
            _nw_parameters_set_internal_attribution(parameters, 2);
          }

          if ((v44 & 0x80000) != 0)
          {
            _nw_parameters_set_is_third_party_web_content(parameters, 1);
          }

          if ((v44 & 0x200000) != 0)
          {
            _nw_parameters_set_is_approved_app_domain(parameters, 1);
          }

          if ((v44 & 0x800000) != 0)
          {
            _nw_parameters_set_reuse_local_address(parameters, 1);
          }

          if ((v44 & 0x1000000) != 0)
          {
            _nw_parameters_set_use_enhanced_privacy_mode(parameters, 1);
          }

          if ((v44 & 0x2000000) != 0)
          {
            _nw_parameters_set_web_search_content(parameters, 1);
          }

          LODWORD(v510) = v510 | ((v44 & 0x200) >> 9);
          HIDWORD(v510) |= (v44 & 0x400) >> 10;
          if ((v44 & 0x4000) != 0)
          {
            _nw_parameters_set_server_mode(parameters, 1);
          }

          break;
        case 251:
          v527 = 0;
          memset(buf, 0, sizeof(buf));
          if (v31 == 68)
          {
            goto LABEL_274;
          }

          if (v31 >= 0x45)
          {
            v419 = __nwlog_obj();
            if (os_log_type_enabled(v419, OS_LOG_TYPE_DEBUG))
            {
              *uu = 136446978;
              *&uu[4] = "nw_path_verify_tlv_length";
              *&uu[12] = 1024;
              *&uu[14] = 251;
              *&uu[18] = 1024;
              *&uu[20] = v31;
              LOWORD(v529) = 1024;
              *(&v529 + 2) = 68;
              _os_log_impl(&dword_181A37000, v419, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
            }

LABEL_274:
            v121 = *(v40 + 3);
            *&buf[32] = *(v40 + 2);
            *&buf[48] = v121;
            v527 = v40[16];
            v122 = *(v40 + 1);
            *buf = *v40;
            *&buf[16] = v122;
            v123 = v517;
            if (!v517)
            {
              v123 = nw_demux_create_options();
            }

            v517 = v123;
            nw_demux_options_add_pattern(v123, *buf, *&buf[2], &buf[36], &buf[4]);
          }

          break;
        default:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v30;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_ERROR, "%{public}s Received unknown client parameter TLV (type %d)", buf, 0x12u);
          }

          goto LABEL_869;
      }
    }

    if (v23 >= a11 - 5)
    {
      goto LABEL_1107;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v432 = gLogObj;
  *buf = 136446978;
  *&buf[4] = "nw_path_parse_necp_parameters";
  *&buf[12] = 1024;
  *&buf[14] = v31;
  *&buf[18] = 2048;
  *&buf[20] = v23;
  *&buf[28] = 2048;
  *&buf[30] = a11;
  LODWORD(v500) = 38;
  v433 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v432, 16, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, v500);

  uu[0] = 16;
  v525 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v433, uu, &v525))
  {
    goto LABEL_1105;
  }

  if (uu[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v434 = gLogObj;
    v435 = uu[0];
    if (os_log_type_enabled(v434, uu[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_181A37000, v434, v435, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
    }

    goto LABEL_1104;
  }

  if (v525 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v434 = gLogObj;
    v440 = uu[0];
    if (os_log_type_enabled(v434, uu[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_181A37000, v434, v440, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
    }

    goto LABEL_1104;
  }

  v436 = __nw_create_backtrace_string();
  if (!v436)
  {
    v434 = __nwlog_obj();
    v441 = uu[0];
    if (os_log_type_enabled(v434, uu[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_181A37000, v434, v441, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
    }

LABEL_1104:

LABEL_1105:
    if (!v433)
    {
      goto LABEL_1107;
    }

    goto LABEL_1106;
  }

  v437 = v436;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v438 = gLogObj;
  v439 = uu[0];
  if (os_log_type_enabled(v438, uu[0]))
  {
    *buf = 136447234;
    *&buf[4] = "nw_path_parse_necp_parameters";
    *&buf[12] = 1024;
    *&buf[14] = v31;
    *&buf[18] = 2048;
    *&buf[20] = v23;
    *&buf[28] = 2048;
    *&buf[30] = a11;
    *&buf[38] = 2082;
    *&buf[40] = v437;
    _os_log_impl(&dword_181A37000, v438, v439, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
  }

  free(v437);
  if (v433)
  {
LABEL_1106:
    free(v433);
  }

LABEL_1107:
  if (v23 == a11)
  {
    goto LABEL_1108;
  }

  v480 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_path_parse_necp_parameters";
  *&buf[12] = 2048;
  *&buf[14] = v23;
  *&buf[22] = 2048;
  *&buf[24] = a11;
  LODWORD(v500) = 32;
  v481 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v480, 16, "%{public}s cursor has unexpected value %zu != %zu", buf, v500);

  uu[0] = 16;
  v525 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v481, uu, &v525))
  {
    if (uu[0] == 17)
    {
      v482 = __nwlog_obj();
      v483 = uu[0];
      if (os_log_type_enabled(v482, uu[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2048;
        *&buf[24] = a11;
        _os_log_impl(&dword_181A37000, v482, v483, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
      }

      goto LABEL_1200;
    }

    if (v525 == OS_LOG_TYPE_INFO)
    {
      v487 = __nw_create_backtrace_string();
      v488 = __nwlog_obj();
      v489 = uu[0];
      v490 = os_log_type_enabled(v488, uu[0]);
      if (v487)
      {
        if (v490)
        {
          *buf = 136446978;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 2048;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          *&buf[24] = a11;
          *&buf[32] = 2082;
          *&buf[34] = v487;
          _os_log_impl(&dword_181A37000, v488, v489, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v487);
      }

      else
      {
        if (v490)
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 2048;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          *&buf[24] = a11;
          _os_log_impl(&dword_181A37000, v488, v489, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
        }
      }
    }

    else
    {
      v482 = __nwlog_obj();
      v491 = uu[0];
      if (os_log_type_enabled(v482, uu[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2048;
        *&buf[24] = a11;
        _os_log_impl(&dword_181A37000, v482, v491, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
      }

LABEL_1200:
    }
  }

  if (v481)
  {
    free(v481);
  }

LABEL_1108:
  if (((v505 != 0) & v510) == 1)
  {
    *v505 = 0;
  }

  v442 = v518;
  if ((v510 & 0x100000000) != 0)
  {
    if (v506)
    {
      *v506 = v504;
    }

    v443 = _nw_parameters_copy_default_protocol_stack();
    v444 = _nw_custom_ip_create_options(v504);
    nw_protocol_stack_set_transport_protocol(v443, v444);

    v442 = v518;
  }

  if (v509)
  {
    v445 = _nw_parameters_copy_default_protocol_stack();
    if (v445)
    {
      v446 = _nw_protocol_stack_copy_transport_protocol();
      v447 = v446;
      if (v446 && _nw_protocol_options_is_udp(v446))
      {
        _nw_udp_options_set_no_metadata(v447, 1);
      }
    }

    v442 = v518;
  }

  if ((v507 & 0x100000000) == 0)
  {
LABEL_1129:
    if (v442 != 0 && (v507 & 1) != 0)
    {
      memset(buf, 0, 28);
      if (nw_endpoint_fillout_v4v6_address(*v442, buf))
      {
        if (nw_endpoint_get_type(*v442) == nw_endpoint_type_address)
        {
          address_with_ethernet = _nw_endpoint_create_address_with_ethernet(buf);
          v453 = *v442;
          *v442 = address_with_ethernet;

          v442 = v518;
        }
      }
    }

    if (v442 && v515 && v512)
    {
      nw_endpoint_set_signature(*v442, v515, v512);
    }

    if (v513 < 1)
    {
      goto LABEL_1142;
    }

    v454 = nw_parameters_copy_prohibited_interface_subtypes(parameters);
    if (v454 || (v454 = xpc_array_create(0, 0)) != 0)
    {
      xpc_array_set_uint64(v454, 0xFFFFFFFFFFFFFFFFLL, 0x3EAuLL);
      v455 = parameters;
      v456 = v454;
      _nw_parameters_clear_prohibited_interface_subtypes(v455);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_parameters_set_prohibited_interface_subtypes_block_invoke;
      *&buf[24] = &unk_1E6A3D300;
      v457 = v455;
      *&buf[32] = v457;
      xpc_array_apply(v456, buf);

LABEL_1141:
LABEL_1142:
      if (v517)
      {
        _nw_parameters_set_channel_demux_options(parameters, v517);
      }

      v28 = 1;
      goto LABEL_1145;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v459 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    LODWORD(v500) = 12;
    v460 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v459, 16, "%{public}s xpc_array_create failed", buf, v500);

    uu[0] = 16;
    v525 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v460, uu, &v525))
    {
      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v461 = gLogObj;
        v462 = uu[0];
        if (os_log_type_enabled(v461, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          _os_log_impl(&dword_181A37000, v461, v462, "%{public}s xpc_array_create failed", buf, 0xCu);
        }
      }

      else if (v525 == OS_LOG_TYPE_INFO)
      {
        v463 = __nw_create_backtrace_string();
        v461 = __nwlog_obj();
        v464 = uu[0];
        v465 = os_log_type_enabled(v461, uu[0]);
        if (v463)
        {
          if (v465)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v463;
            _os_log_impl(&dword_181A37000, v461, v464, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v463);
          goto LABEL_1163;
        }

        if (v465)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          _os_log_impl(&dword_181A37000, v461, v464, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v461 = __nwlog_obj();
        v466 = uu[0];
        if (os_log_type_enabled(v461, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          _os_log_impl(&dword_181A37000, v461, v466, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_1163:
    if (v460)
    {
      free(v460);
    }

    v456 = 0;
    goto LABEL_1141;
  }

  v448 = _nw_parameters_copy_local_endpoint(parameters);
  if (!v448)
  {
    v451 = 0;
LABEL_1128:

    v442 = v518;
    goto LABEL_1129;
  }

  v449 = v448;
  v450 = _nw_endpoint_get_type(v449);

  if (v450 != 1)
  {
    v451 = v449;
    goto LABEL_1128;
  }

  memset(buf, 0, 28);
  if (nw_endpoint_fillout_v4v6_address(v449, buf))
  {
    v451 = _nw_endpoint_create_address_with_ethernet(buf);

    _nw_parameters_set_local_endpoint(parameters, v451);
    goto LABEL_1128;
  }

  v492 = __nwlog_obj();
  *uu = 136446210;
  *&uu[4] = "nw_path_parse_necp_parameters";
  LODWORD(v500) = 12;
  v493 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v492, 16, "%{public}s called with null success_local", uu, v500);

  v525 = OS_LOG_TYPE_ERROR;
  v520 = 0;
  if (__nwlog_fault(v493, &v525, &v520))
  {
    if (v525 == OS_LOG_TYPE_FAULT)
    {
      v494 = __nwlog_obj();
      v495 = v525;
      if (os_log_type_enabled(v494, v525))
      {
        *uu = 136446210;
        *&uu[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v494, v495, "%{public}s called with null success_local", uu, 0xCu);
      }

      goto LABEL_1247;
    }

    if (v520 == 1)
    {
      v496 = __nw_create_backtrace_string();
      v494 = __nwlog_obj();
      v497 = v525;
      v498 = os_log_type_enabled(v494, v525);
      if (v496)
      {
        if (v498)
        {
          *uu = 136446466;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2082;
          *&uu[14] = v496;
          _os_log_impl(&dword_181A37000, v494, v497, "%{public}s called with null success_local, dumping backtrace:%{public}s", uu, 0x16u);
        }

        free(v496);
        goto LABEL_1248;
      }

      if (v498)
      {
        *uu = 136446210;
        *&uu[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v494, v497, "%{public}s called with null success_local, no backtrace", uu, 0xCu);
      }
    }

    else
    {
      v494 = __nwlog_obj();
      v499 = v525;
      if (os_log_type_enabled(v494, v525))
      {
        *uu = 136446210;
        *&uu[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v494, v499, "%{public}s called with null success_local, backtrace limit exceeded", uu, 0xCu);
      }
    }

LABEL_1247:
  }

LABEL_1248:
  if (v493)
  {
    free(v493);
  }

  v28 = 0;
LABEL_1145:

LABEL_1146:
  return v28;
}

NSObject *nw_listener_socket_inbox_create_socket(void *a1, const unsigned __int8 *a2, int *a3)
{
  v288 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v108 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_listener_socket_inbox_create_socket";
    v109 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s called with null parameters", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v282) = 0;
    if (!__nwlog_fault(v109, type, &v282))
    {
      goto LABEL_388;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v111 = type[0];
      if (os_log_type_enabled(v110, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v282 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v110 = __nwlog_obj();
      v119 = type[0];
      v120 = os_log_type_enabled(v110, type[0]);
      if (backtrace_string)
      {
        if (v120)
        {
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v110, v119, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v109)
        {
          goto LABEL_390;
        }

        goto LABEL_389;
      }

      if (v120)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v110, v119, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v110 = __nwlog_obj();
      v125 = type[0];
      if (os_log_type_enabled(v110, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v110, v125, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_387;
  }

  if (!a3)
  {
    v112 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_listener_socket_inbox_create_socket";
    v109 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s called with null outFD", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v282) = 0;
    if (!__nwlog_fault(v109, type, &v282))
    {
      goto LABEL_388;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v113 = type[0];
      if (os_log_type_enabled(v110, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v110, v113, "%{public}s called with null outFD", buf, 0xCu);
      }
    }

    else if (v282 == 1)
    {
      v121 = __nw_create_backtrace_string();
      v110 = __nwlog_obj();
      v122 = type[0];
      v123 = os_log_type_enabled(v110, type[0]);
      if (v121)
      {
        if (v123)
        {
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 2082;
          *&buf[14] = v121;
          _os_log_impl(&dword_181A37000, v110, v122, "%{public}s called with null outFD, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v121);
LABEL_388:
        if (!v109)
        {
LABEL_390:
          v24 = 0;
          goto LABEL_115;
        }

LABEL_389:
        free(v109);
        goto LABEL_390;
      }

      if (v123)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v110, v122, "%{public}s called with null outFD, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v110 = __nwlog_obj();
      v126 = type[0];
      if (os_log_type_enabled(v110, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v110, v126, "%{public}s called with null outFD, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_387:

    goto LABEL_388;
  }

  *a3 = -1;
  v7 = _nw_parameters_copy_local_endpoint(v5);
  v8 = _nw_parameters_copy_default_protocol_stack();
  v9 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v8, 0);
  if (!v9)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  version = _nw_ip_options_get_version();
  if (version != 4)
  {
    if (version == 6)
    {
      v11 = 30;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = 2;
LABEL_9:

  if (!v7)
  {
    endpoint = 0;
    goto LABEL_21;
  }

  memset(buf, 0, 28);
  nw_endpoint_fillout_v4v6_address(v7, buf);
  v12 = v7;
  is_multicast = _nw_endpoint_is_multicast(v12);

  if (is_multicast)
  {
    v14 = v12;
    v15 = buf[1];
    v11 = buf[1];
  }

  else
  {
    v14 = 0;
    v15 = buf[1];
  }

  endpoint = v14;
  if (v15 != 30)
  {
    if (v15 != 2)
    {
      goto LABEL_29;
    }

    if (!*&buf[4])
    {
      goto LABEL_20;
    }

LABEL_19:
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (vmaxv_u16(vmovn_s32(vtstq_s32(*&buf[8], *&buf[8]))))
  {
    goto LABEL_19;
  }

LABEL_20:
  LOWORD(v7) = *&buf[2];

LABEL_21:
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = 30;
  }

  if (v16 == 30)
  {
    memset(&buf[4], 0, 24);
    *buf = 7708;
    *&buf[2] = v7;
    address = _nw_endpoint_create_address(buf);
  }

  else
  {
    if (v16 != 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s listener created without a local address specified", buf, 0xCu);
      }

      v24 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v18 = 0;
      goto LABEL_114;
    }

    *buf = 528;
    *&buf[2] = v7;
    *&buf[4] = 0;
    *&buf[8] = 0;
    address = _nw_endpoint_create_address(buf);
  }

  v12 = address;
  if (!address)
  {
    v18 = 0;
LABEL_38:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s listener created without a local address specified", buf, 0xCu);
    }

    goto LABEL_60;
  }

LABEL_29:
  v18 = v12;
  v19 = _nw_endpoint_get_address(v18);

  if (!v19)
  {
    goto LABEL_38;
  }

  if (v11 && v19->sa_family != v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s Required address family doesn't match local address", buf, 0xCu);
    }
  }

  else
  {
    ip_protocol = nw_parameters_get_ip_protocol(v6);
    v21 = ip_protocol;
    if (ip_protocol == 6)
    {
      v22 = 1;
      goto LABEL_43;
    }

    if (ip_protocol == 17)
    {
      v22 = 2;
LABEL_43:
      v26 = socket(v19->sa_family, v22, 0);
      v27 = v26;
      if ((v26 & 0x80000000) == 0)
      {
        v281 = 0;
        v282 = 1;
        v274 = v26;
        if (setsockopt(v26, 0xFFFF, 4, &v282, 4u))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          error_code = nw_error_get_error_code(posix_error);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = error_code;
          v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s SO_REUSEADDR failed %{darwin.errno}d", buf, 18);

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v280) = 0;
          if (!__nwlog_fault(v31, type, &v280))
          {
            goto LABEL_141;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            v33 = type[0];
            if (os_log_type_enabled(v32, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = error_code;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s SO_REUSEADDR failed %{darwin.errno}d", buf, 0x12u);
            }

LABEL_131:

            goto LABEL_141;
          }

          if (v280 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            v58 = type[0];
            if (os_log_type_enabled(v32, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = error_code;
              _os_log_impl(&dword_181A37000, v32, v58, "%{public}s SO_REUSEADDR failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_131;
          }

          v43 = __nw_create_backtrace_string();
          v44 = __nwlog_obj();
          v45 = type[0];
          v46 = os_log_type_enabled(v44, type[0]);
          if (v43)
          {
            if (v46)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = error_code;
              *&buf[18] = 2082;
              *&buf[20] = v43;
              _os_log_impl(&dword_181A37000, v44, v45, "%{public}s SO_REUSEADDR failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

LABEL_72:

            free(v43);
            goto LABEL_141;
          }

          if (v46)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = error_code;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s SO_REUSEADDR failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }

          goto LABEL_140;
        }

        if (v21 != 6 && setsockopt(v27, 0xFFFF, 512, &v282, 4u))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          v40 = nw_error_get_error_code(posix_error);
          v41 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = v40;
          v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s SO_REUSEPORT failed %{darwin.errno}d", buf, 18);

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v280) = 0;
          if (!__nwlog_fault(v31, type, &v280))
          {
            goto LABEL_141;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v32 = __nwlog_obj();
            v42 = type[0];
            if (os_log_type_enabled(v32, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v40;
              _os_log_impl(&dword_181A37000, v32, v42, "%{public}s SO_REUSEPORT failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_131;
          }

          if (v280 != 1)
          {
            v32 = __nwlog_obj();
            v65 = type[0];
            if (os_log_type_enabled(v32, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v40;
              _os_log_impl(&dword_181A37000, v32, v65, "%{public}s SO_REUSEPORT failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_131;
          }

          v43 = __nw_create_backtrace_string();
          v44 = __nwlog_obj();
          v60 = type[0];
          v61 = os_log_type_enabled(v44, type[0]);
          if (v43)
          {
            if (v61)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v40;
              *&buf[18] = 2082;
              *&buf[20] = v43;
              _os_log_impl(&dword_181A37000, v44, v60, "%{public}s SO_REUSEPORT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_72;
          }

          if (v61)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v40;
            _os_log_impl(&dword_181A37000, v44, v60, "%{public}s SO_REUSEPORT failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }

LABEL_140:

LABEL_141:
          v71 = v274;
          if (v31)
          {
            free(v31);
          }

          if (posix_error)
          {
            goto LABEL_144;
          }

          goto LABEL_322;
        }

        if (_nw_parameters_get_use_awdl(v6) && setsockopt(v27, 0xFFFF, 4356, &v282, 4u))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          v50 = nw_error_get_error_code(posix_error);
          v51 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = v50;
          v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d", buf, 18);

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v280) = 0;
          if (!__nwlog_fault(v31, type, &v280))
          {
            goto LABEL_141;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v32 = __nwlog_obj();
            v52 = type[0];
            if (os_log_type_enabled(v32, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v50;
              _os_log_impl(&dword_181A37000, v32, v52, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_131;
          }

          if (v280 != 1)
          {
            v32 = __nwlog_obj();
            v69 = type[0];
            if (os_log_type_enabled(v32, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v50;
              _os_log_impl(&dword_181A37000, v32, v69, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_131;
          }

          v43 = __nw_create_backtrace_string();
          v44 = __nwlog_obj();
          v63 = type[0];
          v64 = os_log_type_enabled(v44, type[0]);
          if (v43)
          {
            if (v64)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v50;
              *&buf[18] = 2082;
              *&buf[20] = v43;
              _os_log_impl(&dword_181A37000, v44, v63, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_72;
          }

          if (v64)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v50;
            _os_log_impl(&dword_181A37000, v44, v63, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }

          goto LABEL_140;
        }

        if (!_nw_parameters_get_no_wake_from_sleep(v6) || !setsockopt(v27, 0xFFFF, 0x10000, &v282, 4u))
        {
LABEL_150:
          v72 = _nw_parameters_copy_required_interface(v6);
          v73 = v72;
          v273 = v72;
          if (v72)
          {
            index = _nw_interface_get_index(v72);
          }

          else
          {
            index = 0;
          }

          v280 = index;
          sa_family = v19->sa_family;
          if (sa_family == 30)
          {
            *type = v11 == 30;
            if (setsockopt(v27, 41, 27, type, 4u))
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v76 = nw_error_get_error_code(v271);
              v77 = __nwlog_obj();
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              if (*type)
              {
                v78 = "on";
              }

              else
              {
                v78 = "off";
              }

              *&buf[12] = 2082;
              *&buf[14] = v78;
              *&buf[22] = 1024;
              *&buf[24] = v76;
              LODWORD(v266) = 28;
              v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d", buf, v266);

              v279 = OS_LOG_TYPE_ERROR;
              v278 = 0;
              if (!__nwlog_fault(v79, &v279, &v278))
              {
LABEL_319:
                v73 = v273;
                if (v79)
                {
                  free(v79);
                }

LABEL_321:

                v71 = v274;
                posix_error = v271;
                if (v271)
                {
LABEL_144:
                  close(v71);
LABEL_323:
                  v24 = posix_error;

                  goto LABEL_114;
                }

LABEL_322:
                *a3 = v71;
                goto LABEL_323;
              }

              if (v279 == OS_LOG_TYPE_FAULT)
              {
                v80 = __nwlog_obj();
                v81 = v279;
                if (os_log_type_enabled(v80, v279))
                {
                  v82 = "on";
                  if (!*type)
                  {
                    v82 = "off";
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v82;
                  *&buf[22] = 1024;
                  *&buf[24] = v76;
                  _os_log_impl(&dword_181A37000, v80, v81, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d", buf, 0x1Cu);
                }

LABEL_396:

                goto LABEL_319;
              }

              if (v278 != 1)
              {
                v80 = __nwlog_obj();
                v96 = v279;
                if (os_log_type_enabled(v80, v279))
                {
                  v97 = "on";
                  if (!*type)
                  {
                    v97 = "off";
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v97;
                  *&buf[22] = 1024;
                  *&buf[24] = v76;
                  _os_log_impl(&dword_181A37000, v80, v96, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
                }

                goto LABEL_396;
              }

              v91 = __nw_create_backtrace_string();
              v92 = __nwlog_obj();
              v93 = v279;
              v94 = os_log_type_enabled(v92, v279);
              if (v91)
              {
                if (v94)
                {
                  v95 = "on";
                  if (!*type)
                  {
                    v95 = "off";
                  }

                  *buf = 136446978;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v95;
                  *&buf[22] = 1024;
                  *&buf[24] = v76;
                  *&buf[28] = 2082;
                  *&buf[30] = v91;
                  _os_log_impl(&dword_181A37000, v92, v93, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                }

LABEL_317:

                v150 = v91;
                goto LABEL_318;
              }

              if (v94)
              {
                v103 = "on";
                if (!*type)
                {
                  v103 = "off";
                }

                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2082;
                *&buf[14] = v103;
                *&buf[22] = 1024;
                *&buf[24] = v76;
                _os_log_impl(&dword_181A37000, v92, v93, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d, no backtrace", buf, 0x1Cu);
              }

LABEL_437:

              goto LABEL_319;
            }

            if (v280 && setsockopt(v27, 41, 125, &v280, 4u))
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v86 = nw_error_get_error_code(v271);
              v87 = __nwlog_obj();
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v280;
              *&buf[18] = 1024;
              *&buf[20] = v86;
              LODWORD(v266) = 24;
              v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d", buf, v266);

              v279 = OS_LOG_TYPE_ERROR;
              v278 = 0;
              if (!__nwlog_fault(v79, &v279, &v278))
              {
                goto LABEL_319;
              }

              if (v279 == OS_LOG_TYPE_FAULT)
              {
                v80 = __nwlog_obj();
                v88 = v279;
                if (os_log_type_enabled(v80, v279))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v280;
                  *&buf[18] = 1024;
                  *&buf[20] = v86;
                  _os_log_impl(&dword_181A37000, v80, v88, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d", buf, 0x18u);
                }

                goto LABEL_396;
              }

              if (v278 != 1)
              {
                v80 = __nwlog_obj();
                v114 = v279;
                if (os_log_type_enabled(v80, v279))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v280;
                  *&buf[18] = 1024;
                  *&buf[20] = v86;
                  _os_log_impl(&dword_181A37000, v80, v114, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
                }

                goto LABEL_396;
              }

              v91 = __nw_create_backtrace_string();
              v92 = __nwlog_obj();
              v101 = v279;
              v102 = os_log_type_enabled(v92, v279);
              if (v91)
              {
                if (v102)
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v280;
                  *&buf[18] = 1024;
                  *&buf[20] = v86;
                  *&buf[24] = 2082;
                  *&buf[26] = v91;
                  _os_log_impl(&dword_181A37000, v92, v101, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
                }

                goto LABEL_317;
              }

              if (v102)
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v86;
                _os_log_impl(&dword_181A37000, v92, v101, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d, no backtrace", buf, 0x18u);
              }

              goto LABEL_437;
            }
          }

          else if (sa_family == 2 && index && setsockopt(v27, 0, 25, &v280, 4u))
          {
            v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
            v83 = nw_error_get_error_code(v271);
            v84 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v280;
            *&buf[18] = 1024;
            *&buf[20] = v83;
            LODWORD(v266) = 24;
            v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d", buf, v266);

            type[0] = OS_LOG_TYPE_ERROR;
            v279 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v79, type, &v279))
            {
              goto LABEL_319;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v80 = __nwlog_obj();
              v85 = type[0];
              if (os_log_type_enabled(v80, type[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v83;
                _os_log_impl(&dword_181A37000, v80, v85, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d", buf, 0x18u);
              }

              goto LABEL_396;
            }

            if (v279 != OS_LOG_TYPE_INFO)
            {
              v80 = __nwlog_obj();
              v100 = type[0];
              if (os_log_type_enabled(v80, type[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v83;
                _os_log_impl(&dword_181A37000, v80, v100, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_396;
            }

            v91 = __nw_create_backtrace_string();
            v92 = __nwlog_obj();
            v98 = type[0];
            v99 = os_log_type_enabled(v92, type[0]);
            if (v91)
            {
              if (v99)
              {
                *buf = 136446978;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v83;
                *&buf[24] = 2082;
                *&buf[26] = v91;
                _os_log_impl(&dword_181A37000, v92, v98, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
              }

              goto LABEL_317;
            }

            if (v99)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v280;
              *&buf[18] = 1024;
              *&buf[20] = v83;
              _os_log_impl(&dword_181A37000, v92, v98, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d, no backtrace", buf, 0x18u);
            }

            goto LABEL_437;
          }

          if (uuid_is_null(a2) || !setsockopt(v27, 0xFFFF, 4384, a2, 0x10u))
          {
LABEL_272:
            if (bind(v27, v19, v19->sa_len))
            {
              v127 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v128 = nw_error_get_error_code(v127);
              v129 = v128;
              v271 = v127;
              if (v128 > 0x31 || ((1 << v128) & 0x3000000002006) == 0)
              {
                v140 = __nwlog_obj();
                *buf = 136447235;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v27;
                *&buf[18] = 2113;
                *&buf[20] = v18;
                *&buf[28] = 2114;
                *&buf[30] = v6;
                v284 = 1024;
                v285 = v129;
                LODWORD(v266) = 44;
                v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d", buf, v266);

                type[0] = OS_LOG_TYPE_ERROR;
                v279 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v79, type, &v279))
                {
                  goto LABEL_319;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v80 = __nwlog_obj();
                  v141 = type[0];
                  if (os_log_type_enabled(v80, type[0]))
                  {
                    *buf = 136447235;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v274;
                    *&buf[18] = 2113;
                    *&buf[20] = v18;
                    *&buf[28] = 2114;
                    *&buf[30] = v6;
                    v284 = 1024;
                    v285 = v129;
                    _os_log_impl(&dword_181A37000, v80, v141, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d", buf, 0x2Cu);
                  }

                  goto LABEL_396;
                }

                if (v279 != OS_LOG_TYPE_INFO)
                {
                  v80 = __nwlog_obj();
                  v154 = type[0];
                  if (os_log_type_enabled(v80, type[0]))
                  {
                    *buf = 136447235;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v274;
                    *&buf[18] = 2113;
                    *&buf[20] = v18;
                    *&buf[28] = 2114;
                    *&buf[30] = v6;
                    v284 = 1024;
                    v285 = v129;
                    _os_log_impl(&dword_181A37000, v80, v154, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x2Cu);
                  }

                  goto LABEL_396;
                }

                v91 = __nw_create_backtrace_string();
                v92 = __nwlog_obj();
                v151 = type[0];
                v152 = os_log_type_enabled(v92, type[0]);
                if (v91)
                {
                  if (v152)
                  {
                    *buf = 136447491;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v274;
                    *&buf[18] = 2113;
                    *&buf[20] = v18;
                    *&buf[28] = 2114;
                    *&buf[30] = v6;
                    v284 = 1024;
                    v285 = v129;
                    v286 = 2082;
                    v287 = v91;
                    _os_log_impl(&dword_181A37000, v92, v151, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x36u);
                  }

                  goto LABEL_317;
                }

                if (v152)
                {
                  *buf = 136447235;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v274;
                  *&buf[18] = 2113;
                  *&buf[20] = v18;
                  *&buf[28] = 2114;
                  *&buf[30] = v6;
                  v284 = 1024;
                  v285 = v129;
                  _os_log_impl(&dword_181A37000, v92, v151, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d, no backtrace", buf, 0x2Cu);
                }

                goto LABEL_437;
              }

              v130 = __nwlog_obj();
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                *buf = 136447235;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v27;
                *&buf[18] = 2113;
                *&buf[20] = v18;
                *&buf[28] = 2114;
                *&buf[30] = v6;
                v284 = 1024;
                v285 = v129;
                _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d", buf, 0x2Cu);
              }

LABEL_278:
              v73 = v273;
              goto LABEL_321;
            }

            if (v21 == 6)
            {
              if (listen(v27, 1024))
              {
                v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
                v131 = nw_error_get_error_code(v271);
                v132 = __nwlog_obj();
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v131;
                LODWORD(v266) = 18;
                v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v132, 16, "%{public}s listen failed %{darwin.errno}d", buf, v266);

                type[0] = OS_LOG_TYPE_ERROR;
                v279 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v79, type, &v279))
                {
                  goto LABEL_319;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v80 = __nwlog_obj();
                  v133 = type[0];
                  if (os_log_type_enabled(v80, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v131;
                    _os_log_impl(&dword_181A37000, v80, v133, "%{public}s listen failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                if (v279 != OS_LOG_TYPE_INFO)
                {
                  v80 = __nwlog_obj();
                  v153 = type[0];
                  if (os_log_type_enabled(v80, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v131;
                    _os_log_impl(&dword_181A37000, v80, v153, "%{public}s listen failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                v147 = __nw_create_backtrace_string();
                v92 = __nwlog_obj();
                v148 = type[0];
                v149 = os_log_type_enabled(v92, type[0]);
                if (!v147)
                {
                  if (v149)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v131;
                    _os_log_impl(&dword_181A37000, v92, v148, "%{public}s listen failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                  }

                  goto LABEL_437;
                }

                if (v149)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v131;
                  *&buf[18] = 2082;
                  *&buf[20] = v147;
                  _os_log_impl(&dword_181A37000, v92, v148, "%{public}s listen failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

LABEL_312:

                v150 = v147;
LABEL_318:
                free(v150);
                goto LABEL_319;
              }

LABEL_458:
              v271 = 0;
              goto LABEL_321;
            }

            v134 = v19->sa_family;
            if (v134 != 2)
            {
              if (v134 != 30)
              {
                goto LABEL_458;
              }

              if (setsockopt(v27, 41, 61, &v282, 4u) < 0)
              {
                v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
                v155 = nw_error_get_error_code(v271);
                v156 = __nwlog_obj();
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v155;
                LODWORD(v266) = 18;
                v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v156, 16, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d", buf, v266);

                type[0] = OS_LOG_TYPE_ERROR;
                v279 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v79, type, &v279))
                {
                  goto LABEL_319;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v80 = __nwlog_obj();
                  v157 = type[0];
                  if (os_log_type_enabled(v80, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v155;
                    _os_log_impl(&dword_181A37000, v80, v157, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                if (v279 != OS_LOG_TYPE_INFO)
                {
                  v80 = __nwlog_obj();
                  v174 = type[0];
                  if (os_log_type_enabled(v80, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v155;
                    _os_log_impl(&dword_181A37000, v80, v174, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                v147 = __nw_create_backtrace_string();
                v92 = __nwlog_obj();
                v164 = type[0];
                v165 = os_log_type_enabled(v92, type[0]);
                if (!v147)
                {
                  if (v165)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v155;
                    _os_log_impl(&dword_181A37000, v92, v164, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                  }

                  goto LABEL_437;
                }

                if (v165)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v155;
                  *&buf[18] = 2082;
                  *&buf[20] = v147;
                  _os_log_impl(&dword_181A37000, v92, v164, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                goto LABEL_312;
              }

              if ((setsockopt(v27, 41, 35, &v282, 4u) & 0x80000000) == 0)
              {
                goto LABEL_411;
              }

              v135 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              v136 = __nwlog_obj();
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v135;
              LODWORD(v266) = 18;
              v137 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d", buf, v266);

              type[0] = OS_LOG_TYPE_ERROR;
              v279 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v137, type, &v279))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v138 = __nwlog_obj();
                  v139 = type[0];
                  if (os_log_type_enabled(v138, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v135;
                    _os_log_impl(&dword_181A37000, v138, v139, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d", buf, 0x12u);
                  }
                }

                else
                {
                  if (v279 == OS_LOG_TYPE_INFO)
                  {
                    v168 = __nw_create_backtrace_string();
                    v169 = __nwlog_obj();
                    v170 = type[0];
                    v171 = os_log_type_enabled(v169, type[0]);
                    if (v168)
                    {
                      if (v171)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v135;
                        *&buf[18] = 2082;
                        *&buf[20] = v168;
                        _os_log_impl(&dword_181A37000, v169, v170, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v168);
                    }

                    else
                    {
                      if (v171)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v135;
                        _os_log_impl(&dword_181A37000, v169, v170, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                      }
                    }

                    goto LABEL_409;
                  }

                  v138 = __nwlog_obj();
                  v180 = type[0];
                  if (os_log_type_enabled(v138, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v135;
                    _os_log_impl(&dword_181A37000, v138, v180, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                  }
                }
              }

LABEL_409:
              v73 = v273;
              if (v137)
              {
                free(v137);
              }

LABEL_411:
              if (!endpoint)
              {
                goto LABEL_458;
              }

              v183 = __nwlog_obj();
              if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = endpoint;
                _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_DEBUG, "%{public}s Joining multicast group %@", buf, 0x16u);
              }

              memset(type, 0, sizeof(type));
              v277 = 0;
              *type = *&nw_endpoint_get_address(endpoint)->sa_data[6];
              v184 = _nw_parameters_copy_required_interface(v6);
              v185 = v274;
              v186 = v184;
              if (!v184)
              {
LABEL_417:
                if ((setsockopt(v274, 41, 13, type, 0x14u) & 0x80000000) == 0)
                {
                  goto LABEL_487;
                }

                v187 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                v188 = __nwlog_obj();
                v189 = v188;
                if (v187 == 49)
                {
                  if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = endpoint;
                    *&buf[22] = 1024;
                    *&buf[24] = 49;
                    _os_log_impl(&dword_181A37000, v189, OS_LOG_TYPE_ERROR, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                  }

LABEL_486:
                  v185 = v274;
LABEL_487:
                  if ((setsockopt(v185, 41, 12, type, 0x14u) & 0x80000000) == 0)
                  {
                    v217 = _nw_parameters_copy_default_protocol_stack();
                    v218 = v217;
                    if (v217)
                    {
                      v219 = _nw_protocol_stack_copy_internet_protocol(v217);
                      if (v219)
                      {
                        v220 = _nw_ip_options_get_disable_multicast_loopback() ? &v281 : &v282;
                        if (setsockopt(v274, 41, 11, v220, 4u))
                        {
                          v221 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          v222 = __nwlog_obj();
                          *buf = 136446466;
                          *&buf[4] = "nw_listener_socket_inbox_create_socket";
                          *&buf[12] = 1024;
                          *&buf[14] = v221;
                          LODWORD(v266) = 18;
                          v223 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, v266);

                          v279 = OS_LOG_TYPE_ERROR;
                          v278 = 0;
                          if (__nwlog_fault(v223, &v279, &v278))
                          {
                            if (v279 == OS_LOG_TYPE_FAULT)
                            {
                              v224 = __nwlog_obj();
                              v225 = v279;
                              if (os_log_type_enabled(v224, v279))
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                *&buf[12] = 1024;
                                *&buf[14] = v221;
                                _os_log_impl(&dword_181A37000, v224, v225, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x12u);
                              }
                            }

                            else
                            {
                              if (v278 == 1)
                              {
                                v237 = __nw_create_backtrace_string();
                                v238 = __nwlog_obj();
                                v239 = v279;
                                v269 = v238;
                                v240 = os_log_type_enabled(v238, v279);
                                if (v237)
                                {
                                  if (v240)
                                  {
                                    *buf = 136446722;
                                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                    *&buf[12] = 1024;
                                    *&buf[14] = v221;
                                    *&buf[18] = 2082;
                                    *&buf[20] = v237;
                                    _os_log_impl(&dword_181A37000, v269, v239, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                  }

                                  free(v237);
                                }

                                else
                                {
                                  if (v240)
                                  {
                                    *buf = 136446466;
                                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                    *&buf[12] = 1024;
                                    *&buf[14] = v221;
                                    _os_log_impl(&dword_181A37000, v269, v239, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                                  }
                                }

                                goto LABEL_529;
                              }

                              v224 = __nwlog_obj();
                              v241 = v279;
                              if (os_log_type_enabled(v224, v279))
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                *&buf[12] = 1024;
                                *&buf[14] = v221;
                                _os_log_impl(&dword_181A37000, v224, v241, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                              }
                            }
                          }

LABEL_529:
                          if (v223)
                          {
                            free(v223);
                          }
                        }
                      }
                    }

                    else
                    {
                      v219 = 0;
                    }

                    v271 = 0;
                    goto LABEL_532;
                  }

                  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v271 = nw_error_create_posix_error(**(StatusReg + 8));
                  v227 = **(StatusReg + 8);
                  v228 = __nwlog_obj();
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v227;
                  LODWORD(v266) = 18;
                  v229 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v228, 16, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d", buf, v266);

                  v279 = OS_LOG_TYPE_ERROR;
                  v278 = 0;
                  if (__nwlog_fault(v229, &v279, &v278))
                  {
                    if (v279 == OS_LOG_TYPE_FAULT)
                    {
                      v230 = __nwlog_obj();
                      v231 = v279;
                      if (os_log_type_enabled(v230, v279))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v227;
                        _os_log_impl(&dword_181A37000, v230, v231, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d", buf, 0x12u);
                      }

LABEL_503:

                      goto LABEL_524;
                    }

                    if (v278 != 1)
                    {
                      v230 = __nwlog_obj();
                      v236 = v279;
                      if (os_log_type_enabled(v230, v279))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v227;
                        _os_log_impl(&dword_181A37000, v230, v236, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                      }

                      goto LABEL_503;
                    }

                    v232 = __nw_create_backtrace_string();
                    v233 = __nwlog_obj();
                    v234 = v279;
                    v235 = os_log_type_enabled(v233, v279);
                    if (v232)
                    {
                      if (v235)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v227;
                        *&buf[18] = 2082;
                        *&buf[20] = v232;
                        _os_log_impl(&dword_181A37000, v233, v234, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v232);
                    }

                    else
                    {
                      if (v235)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v227;
                        _os_log_impl(&dword_181A37000, v233, v234, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                      }
                    }
                  }

LABEL_524:
                  if (v229)
                  {
LABEL_525:
                    free(v229);
                  }

LABEL_532:

                  goto LABEL_278;
                }

                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = endpoint;
                *&buf[22] = 1024;
                *&buf[24] = v187;
                LODWORD(v266) = 28;
                v191 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v188, 16, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d", buf, v266);

                v279 = OS_LOG_TYPE_ERROR;
                v278 = 0;
                if (__nwlog_fault(v191, &v279, &v278))
                {
                  if (v279 == OS_LOG_TYPE_FAULT)
                  {
                    v192 = __nwlog_obj();
                    v193 = v279;
                    if (os_log_type_enabled(v192, v279))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 2112;
                      *&buf[14] = endpoint;
                      *&buf[22] = 1024;
                      *&buf[24] = v187;
                      _os_log_impl(&dword_181A37000, v192, v193, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    if (v278 == 1)
                    {
                      v194 = __nw_create_backtrace_string();
                      v195 = __nwlog_obj();
                      v196 = v279;
                      v197 = os_log_type_enabled(v195, v279);
                      if (v194)
                      {
                        if (v197)
                        {
                          *buf = 136446978;
                          *&buf[4] = "nw_listener_socket_inbox_create_socket";
                          *&buf[12] = 2112;
                          *&buf[14] = endpoint;
                          *&buf[22] = 1024;
                          *&buf[24] = v187;
                          *&buf[28] = 2082;
                          *&buf[30] = v194;
                          _os_log_impl(&dword_181A37000, v195, v196, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                        }

                        free(v194);
                      }

                      else
                      {
                        if (v197)
                        {
                          *buf = 136446722;
                          *&buf[4] = "nw_listener_socket_inbox_create_socket";
                          *&buf[12] = 2112;
                          *&buf[14] = endpoint;
                          *&buf[22] = 1024;
                          *&buf[24] = v187;
                          _os_log_impl(&dword_181A37000, v195, v196, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d, no backtrace", buf, 0x1Cu);
                        }
                      }

                      goto LABEL_484;
                    }

                    v192 = __nwlog_obj();
                    v215 = v279;
                    if (os_log_type_enabled(v192, v279))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 2112;
                      *&buf[14] = endpoint;
                      *&buf[22] = 1024;
                      *&buf[24] = v187;
                      _os_log_impl(&dword_181A37000, v192, v215, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
                    }
                  }
                }

LABEL_484:
                if (v191)
                {
                  free(v191);
                }

                goto LABEL_486;
              }

              if (_nw_interface_supports_multicast(v184))
              {
                v277 = _nw_interface_get_index(v186);
                goto LABEL_417;
              }

              v190 = __nwlog_obj();
              if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = v186;
                _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_ERROR, "%{public}s Interface %@ doesn't support multicast", buf, 0x16u);
              }

LABEL_424:

              v271 = nw_error_create_posix_error(22);
              goto LABEL_532;
            }

            if (setsockopt(v27, 0, 20, &v282, 4u) < 0)
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v158 = nw_error_get_error_code(v271);
              v159 = __nwlog_obj();
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v158;
              LODWORD(v266) = 18;
              v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s IP_RECVIF failed %{darwin.errno}d", buf, v266);

              type[0] = OS_LOG_TYPE_ERROR;
              v279 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v79, type, &v279))
              {
                goto LABEL_319;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v80 = __nwlog_obj();
                v160 = type[0];
                if (os_log_type_enabled(v80, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v158;
                  _os_log_impl(&dword_181A37000, v80, v160, "%{public}s IP_RECVIF failed %{darwin.errno}d", buf, 0x12u);
                }

                goto LABEL_396;
              }

              if (v279 != OS_LOG_TYPE_INFO)
              {
                v80 = __nwlog_obj();
                v175 = type[0];
                if (os_log_type_enabled(v80, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v158;
                  _os_log_impl(&dword_181A37000, v80, v175, "%{public}s IP_RECVIF failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                }

                goto LABEL_396;
              }

              v147 = __nw_create_backtrace_string();
              v92 = __nwlog_obj();
              v166 = type[0];
              v167 = os_log_type_enabled(v92, type[0]);
              if (!v147)
              {
                if (v167)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v158;
                  _os_log_impl(&dword_181A37000, v92, v166, "%{public}s IP_RECVIF failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                }

                goto LABEL_437;
              }

              if (v167)
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v158;
                *&buf[18] = 2082;
                *&buf[20] = v147;
                _os_log_impl(&dword_181A37000, v92, v166, "%{public}s IP_RECVIF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_312;
            }

            if (setsockopt(v27, 0, 7, &v282, 4u) < 0)
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v161 = nw_error_get_error_code(v271);
              v162 = __nwlog_obj();
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v161;
              LODWORD(v266) = 18;
              v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d", buf, v266);

              type[0] = OS_LOG_TYPE_ERROR;
              v279 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v79, type, &v279))
              {
                goto LABEL_319;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v80 = __nwlog_obj();
                v163 = type[0];
                if (os_log_type_enabled(v80, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v161;
                  _os_log_impl(&dword_181A37000, v80, v163, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d", buf, 0x12u);
                }

                goto LABEL_396;
              }

              if (v279 != OS_LOG_TYPE_INFO)
              {
                v80 = __nwlog_obj();
                v181 = type[0];
                if (os_log_type_enabled(v80, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v161;
                  _os_log_impl(&dword_181A37000, v80, v181, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                }

                goto LABEL_396;
              }

              v147 = __nw_create_backtrace_string();
              v92 = __nwlog_obj();
              v172 = type[0];
              v173 = os_log_type_enabled(v92, type[0]);
              if (!v147)
              {
                if (v173)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v161;
                  _os_log_impl(&dword_181A37000, v92, v172, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                }

                goto LABEL_437;
              }

              if (v173)
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v161;
                *&buf[18] = 2082;
                *&buf[20] = v147;
                _os_log_impl(&dword_181A37000, v92, v172, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_312;
            }

            if ((setsockopt(v27, 0, 27, &v282, 4u) & 0x80000000) == 0)
            {
LABEL_444:
              if (!endpoint)
              {
                goto LABEL_458;
              }

              v198 = __nwlog_obj();
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = endpoint;
                _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_DEBUG, "%{public}s Joining multicast group %@", buf, 0x16u);
              }

              *type = 0;
              *type = *&nw_endpoint_get_address(endpoint)->sa_data[2];
              *&type[4] = 0;
              v199 = _nw_parameters_copy_required_interface(v6);
              v200 = v274;
              v186 = v199;
              if (v199)
              {
                if (!_nw_interface_supports_multicast(v199))
                {
                  v190 = __nwlog_obj();
                  if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = v186;
                    _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_ERROR, "%{public}s Interface %@ doesn't support multicast", buf, 0x16u);
                  }

                  goto LABEL_424;
                }

                host = nw_endpoint_create_host("0.0.0.0", "0");
                v202 = nw_interface_copy_local_address_for_remote_address(v186, host);
                v203 = v202;
                if (!v202)
                {
                  v207 = __nwlog_obj();
                  if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = v186;
                    _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_ERROR, "%{public}s Did not find interface address for %@", buf, 0x16u);
                  }

                  v271 = nw_error_create_posix_error(2);
                  goto LABEL_532;
                }

                if (nw_endpoint_get_address(v202))
                {
                  *&type[4] = *&v19->sa_data[2];
                }

                v200 = v274;
              }

              if ((setsockopt(v200, 0, 13, type, 8u) & 0x80000000) == 0)
              {
LABEL_539:
                if ((setsockopt(v200, 0, 12, type, 8u) & 0x80000000) == 0)
                {
                  v242 = _nw_parameters_copy_default_protocol_stack();
                  v243 = v242;
                  if (v242)
                  {
                    v244 = _nw_protocol_stack_copy_internet_protocol(v242);
                    if (v244)
                    {
                      v245 = _nw_ip_options_get_disable_multicast_loopback() ? &v281 : &v282;
                      if (setsockopt(v274, 0, 11, v245, 4u))
                      {
                        v246 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        v247 = __nwlog_obj();
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v246;
                        LODWORD(v266) = 18;
                        v248 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v247, 16, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d", buf, v266);

                        v279 = OS_LOG_TYPE_ERROR;
                        v278 = 0;
                        if (__nwlog_fault(v248, &v279, &v278))
                        {
                          if (v279 == OS_LOG_TYPE_FAULT)
                          {
                            v249 = __nwlog_obj();
                            v250 = v279;
                            if (os_log_type_enabled(v249, v279))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_listener_socket_inbox_create_socket";
                              *&buf[12] = 1024;
                              *&buf[14] = v246;
                              _os_log_impl(&dword_181A37000, v249, v250, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x12u);
                            }
                          }

                          else
                          {
                            if (v278 == 1)
                            {
                              v261 = __nw_create_backtrace_string();
                              v262 = __nwlog_obj();
                              v263 = v279;
                              v270 = v262;
                              v264 = os_log_type_enabled(v262, v279);
                              if (v261)
                              {
                                if (v264)
                                {
                                  *buf = 136446722;
                                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                  *&buf[12] = 1024;
                                  *&buf[14] = v246;
                                  *&buf[18] = 2082;
                                  *&buf[20] = v261;
                                  _os_log_impl(&dword_181A37000, v270, v263, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v261);
                              }

                              else
                              {
                                if (v264)
                                {
                                  *buf = 136446466;
                                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                  *&buf[12] = 1024;
                                  *&buf[14] = v246;
                                  _os_log_impl(&dword_181A37000, v270, v263, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                                }
                              }

                              goto LABEL_581;
                            }

                            v249 = __nwlog_obj();
                            v265 = v279;
                            if (os_log_type_enabled(v249, v279))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_listener_socket_inbox_create_socket";
                              *&buf[12] = 1024;
                              *&buf[14] = v246;
                              _os_log_impl(&dword_181A37000, v249, v265, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                            }
                          }
                        }

LABEL_581:
                        if (v248)
                        {
                          free(v248);
                        }
                      }
                    }
                  }

                  else
                  {
                    v244 = 0;
                  }

                  v271 = 0;
                  goto LABEL_532;
                }

                v251 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v271 = nw_error_create_posix_error(**(v251 + 8));
                v252 = **(v251 + 8);
                v253 = __nwlog_obj();
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v252;
                LODWORD(v266) = 18;
                v229 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v253, 16, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d", buf, v266);

                v279 = OS_LOG_TYPE_ERROR;
                v278 = 0;
                if (__nwlog_fault(v229, &v279, &v278))
                {
                  if (v279 == OS_LOG_TYPE_FAULT)
                  {
                    v254 = __nwlog_obj();
                    v255 = v279;
                    if (os_log_type_enabled(v254, v279))
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v252;
                      _os_log_impl(&dword_181A37000, v254, v255, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d", buf, 0x12u);
                    }

LABEL_555:

                    goto LABEL_576;
                  }

                  if (v278 != 1)
                  {
                    v254 = __nwlog_obj();
                    v260 = v279;
                    if (os_log_type_enabled(v254, v279))
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v252;
                      _os_log_impl(&dword_181A37000, v254, v260, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                    }

                    goto LABEL_555;
                  }

                  v256 = __nw_create_backtrace_string();
                  v257 = __nwlog_obj();
                  v258 = v279;
                  v259 = os_log_type_enabled(v257, v279);
                  if (v256)
                  {
                    if (v259)
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v252;
                      *&buf[18] = 2082;
                      *&buf[20] = v256;
                      _os_log_impl(&dword_181A37000, v257, v258, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                    }

                    free(v256);
                  }

                  else
                  {
                    if (v259)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v252;
                      _os_log_impl(&dword_181A37000, v257, v258, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                    }
                  }
                }

LABEL_576:
                if (!v229)
                {
                  goto LABEL_532;
                }

                goto LABEL_525;
              }

              v204 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              v205 = __nwlog_obj();
              v206 = v205;
              if (v204 == 49)
              {
                if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2112;
                  *&buf[14] = endpoint;
                  *&buf[22] = 1024;
                  *&buf[24] = 49;
                  _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_ERROR, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                }

LABEL_538:
                v200 = v274;
                goto LABEL_539;
              }

              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 2112;
              *&buf[14] = endpoint;
              *&buf[22] = 1024;
              *&buf[24] = v204;
              LODWORD(v266) = 28;
              v208 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v205, 16, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d", buf, v266);

              v279 = OS_LOG_TYPE_ERROR;
              v278 = 0;
              if (__nwlog_fault(v208, &v279, &v278))
              {
                if (v279 == OS_LOG_TYPE_FAULT)
                {
                  v209 = __nwlog_obj();
                  v210 = v279;
                  if (os_log_type_enabled(v209, v279))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = endpoint;
                    *&buf[22] = 1024;
                    *&buf[24] = v204;
                    _os_log_impl(&dword_181A37000, v209, v210, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                  }
                }

                else
                {
                  if (v278 == 1)
                  {
                    v211 = __nw_create_backtrace_string();
                    v212 = __nwlog_obj();
                    v213 = v279;
                    v214 = os_log_type_enabled(v212, v279);
                    if (v211)
                    {
                      if (v214)
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 2112;
                        *&buf[14] = endpoint;
                        *&buf[22] = 1024;
                        *&buf[24] = v204;
                        *&buf[28] = 2082;
                        *&buf[30] = v211;
                        _os_log_impl(&dword_181A37000, v212, v213, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                      }

                      free(v211);
                    }

                    else
                    {
                      if (v214)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 2112;
                        *&buf[14] = endpoint;
                        *&buf[22] = 1024;
                        *&buf[24] = v204;
                        _os_log_impl(&dword_181A37000, v212, v213, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d, no backtrace", buf, 0x1Cu);
                      }
                    }

                    goto LABEL_536;
                  }

                  v209 = __nwlog_obj();
                  v216 = v279;
                  if (os_log_type_enabled(v209, v279))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = endpoint;
                    *&buf[22] = 1024;
                    *&buf[24] = v204;
                    _os_log_impl(&dword_181A37000, v209, v216, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
                  }
                }
              }

LABEL_536:
              if (v208)
              {
                free(v208);
              }

              goto LABEL_538;
            }

            v142 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            v143 = __nwlog_obj();
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v142;
            LODWORD(v266) = 18;
            v144 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v143, 16, "%{public}s IP_RECVTOS failed %{darwin.errno}d", buf, v266);

            type[0] = OS_LOG_TYPE_ERROR;
            v279 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v144, type, &v279))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v145 = __nwlog_obj();
                v146 = type[0];
                if (os_log_type_enabled(v145, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v142;
                  _os_log_impl(&dword_181A37000, v145, v146, "%{public}s IP_RECVTOS failed %{darwin.errno}d", buf, 0x12u);
                }
              }

              else
              {
                if (v279 == OS_LOG_TYPE_INFO)
                {
                  v176 = __nw_create_backtrace_string();
                  v177 = __nwlog_obj();
                  v178 = type[0];
                  v179 = os_log_type_enabled(v177, type[0]);
                  if (v176)
                  {
                    if (v179)
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v142;
                      *&buf[18] = 2082;
                      *&buf[20] = v176;
                      _os_log_impl(&dword_181A37000, v177, v178, "%{public}s IP_RECVTOS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                    }

                    free(v176);
                  }

                  else
                  {
                    if (v179)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v142;
                      _os_log_impl(&dword_181A37000, v177, v178, "%{public}s IP_RECVTOS failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                    }
                  }

                  goto LABEL_441;
                }

                v145 = __nwlog_obj();
                v182 = type[0];
                if (os_log_type_enabled(v145, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v142;
                  _os_log_impl(&dword_181A37000, v145, v182, "%{public}s IP_RECVTOS failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                }
              }
            }

LABEL_441:
            if (v144)
            {
              free(v144);
            }

            v73 = v273;
            goto LABEL_444;
          }

          v89 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (v89 <= 0x2A && ((1 << v89) & 0x40000400004) != 0)
          {
            v90 = __nwlog_obj();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v89;
              _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, 0x12u);
            }

            v27 = v274;
            v73 = v273;
            goto LABEL_272;
          }

          v104 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = v89;
          LODWORD(v266) = 18;
          v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, v266);

          type[0] = OS_LOG_TYPE_ERROR;
          v279 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v105, type, &v279))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v106 = __nwlog_obj();
              v107 = type[0];
              if (os_log_type_enabled(v106, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v89;
                _os_log_impl(&dword_181A37000, v106, v107, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, 0x12u);
              }
            }

            else
            {
              if (v279 == OS_LOG_TYPE_INFO)
              {
                v115 = __nw_create_backtrace_string();
                v116 = __nwlog_obj();
                v268 = type[0];
                v117 = os_log_type_enabled(v116, type[0]);
                if (v115)
                {
                  if (v117)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v89;
                    *&buf[18] = 2082;
                    *&buf[20] = v115;
                    _os_log_impl(&dword_181A37000, v116, v268, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v115);
                }

                else
                {
                  if (v117)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v89;
                    _os_log_impl(&dword_181A37000, v116, v268, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                  }
                }

                goto LABEL_269;
              }

              v106 = __nwlog_obj();
              v124 = type[0];
              if (os_log_type_enabled(v106, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v89;
                _os_log_impl(&dword_181A37000, v106, v124, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
              }
            }
          }

LABEL_269:
          v73 = v273;
          if (v105)
          {
            free(v105);
          }

          v27 = v274;
          goto LABEL_272;
        }

        v53 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        v54 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        *&buf[12] = 1024;
        v272 = v53;
        *&buf[14] = v53;
        v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 18);

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v280) = 0;
        if (__nwlog_fault(v55, type, &v280))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v56 = __nwlog_obj();
            v57 = type[0];
            if (os_log_type_enabled(v56, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v272;
              _os_log_impl(&dword_181A37000, v56, v57, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x12u);
            }
          }

          else
          {
            if (v280 == 1)
            {
              v66 = __nw_create_backtrace_string();
              v67 = __nwlog_obj();
              v267 = type[0];
              v68 = os_log_type_enabled(v67, type[0]);
              if (v66)
              {
                if (v68)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v272;
                  *&buf[18] = 2082;
                  *&buf[20] = v66;
                  _os_log_impl(&dword_181A37000, v67, v267, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v66);
              }

              else
              {
                if (v68)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v272;
                  _os_log_impl(&dword_181A37000, v67, v267, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                }
              }

              goto LABEL_148;
            }

            v56 = __nwlog_obj();
            v70 = type[0];
            if (os_log_type_enabled(v56, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v272;
              _os_log_impl(&dword_181A37000, v56, v70, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

LABEL_148:
        v27 = v274;
        if (v55)
        {
          free(v55);
        }

        goto LABEL_150;
      }

      v34 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v35 = gLogObj;
      *buf = 136446466;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      *&buf[12] = 1024;
      *&buf[14] = v34;
      v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s socket failed %{darwin.errno}d", buf, 18);

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v282) = 0;
      if (__nwlog_fault(v36, type, &v282))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v34;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s socket failed %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v282 == 1)
        {
          v47 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v48 = type[0];
          v49 = os_log_type_enabled(v37, type[0]);
          if (v47)
          {
            if (v49)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v34;
              *&buf[18] = 2082;
              *&buf[20] = v47;
              _os_log_impl(&dword_181A37000, v37, v48, "%{public}s socket failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v47);
            if (!v36)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          if (v49)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v34;
            _os_log_impl(&dword_181A37000, v37, v48, "%{public}s socket failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v37 = __nwlog_obj();
          v59 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v34;
            _os_log_impl(&dword_181A37000, v37, v59, "%{public}s socket failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

      if (!v36)
      {
LABEL_112:
        v39 = nw_error_create_posix_error(v34);
        goto LABEL_113;
      }

LABEL_111:
      free(v36);
      goto LABEL_112;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s IP Protocol %u unrecognized", buf, 0x12u);
    }
  }

LABEL_60:

  v39 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
LABEL_113:
  v24 = v39;
LABEL_114:

LABEL_115:
  return v24;
}