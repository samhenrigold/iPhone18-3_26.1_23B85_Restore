void nw_socket_fillout_socket_properties(nw_protocol *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v52 = __nwlog_obj();
    *&__dst[0].sa_len = 136446210;
    *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
    v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null protocol", __dst, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v61) = 0;
    if (!__nwlog_fault(v1, type, &v61))
    {
      goto LABEL_125;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = type[0];
      if (!os_log_type_enabled(v53, type[0]))
      {
        goto LABEL_125;
      }

      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v55 = "%{public}s called with null protocol";
    }

    else if (v61 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = type[0];
      v57 = os_log_type_enabled(v53, type[0]);
      if (backtrace_string)
      {
        if (v57)
        {
          *&__dst[0].sa_len = 136446466;
          *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
          *&__dst[0].sa_data[10] = 2082;
          *&__dst[0].sa_data[12] = backtrace_string;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null protocol, dumping backtrace:%{public}s", &__dst[0].sa_len, 0x16u);
        }

        free(backtrace_string);
LABEL_125:
        if (!v1)
        {
          return;
        }

        goto LABEL_109;
      }

      if (!v57)
      {
        goto LABEL_125;
      }

      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v55 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v53 = __nwlog_obj();
      v54 = type[0];
      if (!os_log_type_enabled(v53, type[0]))
      {
        goto LABEL_125;
      }

      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v55 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v53, v54, v55, &__dst[0].sa_len, 0xCu);
    goto LABEL_125;
  }

  v1 = a1;
  handle = a1->handle;
  v3 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v4 = 1;
    goto LABEL_11;
  }

  v3 = *a1[1].flow_id;
  if (v3)
  {
LABEL_6:
    callbacks = v3[1].callbacks;
    v4 = 0;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v4 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v6 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", __dst, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v61) = 0;
      if (!__nwlog_fault(v7, type, &v61))
      {
        goto LABEL_48;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_48;
        }

        *&__dst[0].sa_len = 136446210;
        *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
        v10 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v61 == 1)
        {
          v28 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = type[0];
          v31 = os_log_type_enabled(gLogObj, type[0]);
          if (v28)
          {
            if (v31)
            {
              *&__dst[0].sa_len = 136446466;
              *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
              *&__dst[0].sa_data[10] = 2082;
              *&__dst[0].sa_data[12] = v28;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", &__dst[0].sa_len, 0x16u);
            }

            free(v28);
            goto LABEL_48;
          }

          if (!v31)
          {
LABEL_48:
            if (v7)
            {
              free(v7);
            }

            goto LABEL_98;
          }

          *&__dst[0].sa_len = 136446210;
          *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
          v10 = "%{public}s called with null socket_handler, no backtrace";
          v32 = v29;
          v33 = v30;
LABEL_47:
          _os_log_impl(&dword_181A37000, v32, v33, v10, &__dst[0].sa_len, 0xCu);
          goto LABEL_48;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_48;
        }

        *&__dst[0].sa_len = 136446210;
        *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
        v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v32 = v8;
      v33 = v9;
      goto LABEL_47;
    }

    v6 = *a1[1].flow_id;
  }

  memset(__dst, 0, sizeof(__dst));
  v62 = 0;
  callbacks_high = HIDWORD(v6[4].callbacks);
  if (callbacks_high < 0)
  {
    goto LABEL_98;
  }

  remote = nw_socket_get_remote(a1);
  if (remote && (v13 = remote, v14 = _nw_endpoint_get_type(v13), v13, v14 == 1))
  {
    v15 = v13;
    address_family = _nw_endpoint_get_address_family(v15);

    v61 = 0;
    v17 = address_family == 2;
    if ((address_family == 30 || address_family == 2) && !copyconninfo(callbacks_high, 0, &v61))
    {
      v18 = v61;
      v19 = *(v61 + 8);
      if (v19)
      {
        v20 = *v19;
        if (v20 <= 0x80)
        {
          v21 = v61;
          memcpy(__dst, v19, v20);
          v18 = v21;
        }
      }

      v62 = *(v18 + 4);
      freeconninfo(v18);
      goto LABEL_88;
    }
  }

  else
  {
    v17 = 0;
    address_family = 0;
    v61 = 0;
  }

  if ((HIBYTE(v6[6].callbacks) & 2) != 0)
  {
    goto LABEL_88;
  }

  v60 = 128;
  if (getsockname(callbacks_high, __dst, &v60))
  {
    v22 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v23 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *type = 136446722;
      v64 = "nw_socket_fillout_socket_properties";
      v65 = 2082;
      *v66 = v6 + 420;
      *&v66[8] = 1024;
      *&v66[10] = v22;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockname failed %{darwin.errno}d", type, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *type = 136446466;
    v64 = "nw_socket_fillout_socket_properties";
    v65 = 1024;
    *v66 = v22;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s getsockname failed %{darwin.errno}d", type, 18);
    v59 = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v24, &v59, &v58))
    {
      if (v59 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = v59;
        if (!os_log_type_enabled(gLogObj, v59))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v22;
        v27 = "%{public}s getsockname failed %{darwin.errno}d";
      }

      else if (v58 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = v59;
        v39 = os_log_type_enabled(v25, v59);
        if (v38)
        {
          if (v39)
          {
            *type = 136446722;
            v64 = "nw_socket_fillout_socket_properties";
            v65 = 1024;
            *v66 = v22;
            *&v66[4] = 2082;
            *&v66[6] = v38;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s getsockname failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
          }

          free(v38);
          if (!v24)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

        if (!v39)
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v22;
        v27 = "%{public}s getsockname failed %{darwin.errno}d, no backtrace";
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = v59;
        if (!os_log_type_enabled(v25, v59))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v22;
        v27 = "%{public}s getsockname failed %{darwin.errno}d, backtrace limit exceeded";
      }

      goto LABEL_85;
    }
  }

  else
  {
    if (address_family != 30 && address_family != 2)
    {
      goto LABEL_88;
    }

    v60 = 4;
    v34 = v17 ? 0 : 41;
    if (!getsockopt(callbacks_high, v34, 9696, &v62, &v60))
    {
      goto LABEL_88;
    }

    v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v36 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *type = 136446722;
      v64 = "nw_socket_fillout_socket_properties";
      v65 = 2082;
      *v66 = v6 + 420;
      *&v66[8] = 1024;
      *&v66[10] = v35;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt OUT_IF failed %{darwin.errno}d", type, 0x1Cu);
    }

    v37 = __nwlog_obj();
    *type = 136446466;
    v64 = "nw_socket_fillout_socket_properties";
    v65 = 1024;
    *v66 = v35;
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s getsockopt OUT_IF failed %{darwin.errno}d", type, 18);
    v59 = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v24, &v59, &v58))
    {
      if (v59 == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = v59;
        if (!os_log_type_enabled(v25, v59))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v35;
        v27 = "%{public}s getsockopt OUT_IF failed %{darwin.errno}d";
LABEL_85:
        _os_log_impl(&dword_181A37000, v25, v26, v27, type, 0x12u);
        goto LABEL_86;
      }

      if (v58 != 1)
      {
        v25 = __nwlog_obj();
        v26 = v59;
        if (!os_log_type_enabled(v25, v59))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v35;
        v27 = "%{public}s getsockopt OUT_IF failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_85;
      }

      v40 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = v59;
      v41 = os_log_type_enabled(v25, v59);
      if (!v40)
      {
        if (!v41)
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v35;
        v27 = "%{public}s getsockopt OUT_IF failed %{darwin.errno}d, no backtrace";
        goto LABEL_85;
      }

      if (v41)
      {
        *type = 136446722;
        v64 = "nw_socket_fillout_socket_properties";
        v65 = 1024;
        *v66 = v35;
        *&v66[4] = 2082;
        *&v66[6] = v40;
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s getsockopt OUT_IF failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
      }

      free(v40);
    }
  }

LABEL_86:
  if (v24)
  {
LABEL_87:
    free(v24);
  }

LABEL_88:
  if (__dst[0].sa_len)
  {
    v42 = *v6[3].flow_id;
    if (v42)
    {
      os_release(v42);
      *v6[3].flow_id = 0;
    }

    *v6[3].flow_id = _nw_endpoint_create_address(&__dst[0].sa_len);
  }

  v43 = v62;
  if (v62)
  {
    v44 = *&v6[3].flow_id[8];
    if (v44)
    {
      os_release(v44);
      *&v6[3].flow_id[8] = 0;
      v43 = v62;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v45 = nw_context_copy_implicit_context::implicit_context;
    v46 = nw_path_copy_interface_with_generation(v45, v43, 0);

    *&v6[3].flow_id[8] = v46;
  }

LABEL_98:
  if ((v4 & 1) == 0)
  {
    v47 = v1->handle;
    if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v48 = v1[1].callbacks;
      if (v48)
      {
        v49 = (v48 - 1);
        v1[1].callbacks = v49;
        if (!v49)
        {
          v50 = *v1[1].flow_id;
          if (v50)
          {
            *v1[1].flow_id = 0;
            v50[2](v50);
            _Block_release(v50);
          }

          if (v1[1].flow_id[8])
          {
            v51 = *v1[1].flow_id;
            if (v51)
            {
              _Block_release(v51);
            }
          }

LABEL_109:
          free(v1);
        }
      }
    }
  }
}

uint64_t copyconninfo(int a1, int a2, void *a3)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *v94 = 136446210;
    *&v94[4] = "copyconninfo";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null cfop", v94, 12);
    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, buf, &type))
    {
      goto LABEL_63;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_63;
      }

      *v94 = 136446210;
      *&v94[4] = "copyconninfo";
      v10 = "%{public}s called with null cfop";
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = buf[0];
        v18 = os_log_type_enabled(gLogObj, buf[0]);
        if (backtrace_string)
        {
          if (v18)
          {
            *v94 = 136446466;
            *&v94[4] = "copyconninfo";
            *&v94[12] = 2082;
            *&v94[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null cfop, dumping backtrace:%{public}s", v94, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_63;
        }

        if (!v18)
        {
LABEL_63:
          if (v7)
          {
            free(v7);
          }

          goto LABEL_103;
        }

        *v94 = 136446210;
        *&v94[4] = "copyconninfo";
        v10 = "%{public}s called with null cfop, no backtrace";
        v41 = v16;
        v42 = v17;
LABEL_62:
        _os_log_impl(&dword_181A37000, v41, v42, v10, v94, 0xCu);
        goto LABEL_63;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_63;
      }

      *v94 = 136446210;
      *&v94[4] = "copyconninfo";
      v10 = "%{public}s called with null cfop, backtrace limit exceeded";
    }

    v41 = v8;
    v42 = v9;
    goto LABEL_62;
  }

  if (a1 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *v94 = 136446466;
    *&v94[4] = "copyconninfo";
    *&v94[12] = 1024;
    *&v94[14] = a1;
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null s (%d)", v94, 18);
    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v11, buf, &type))
    {
      goto LABEL_101;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_101;
      }

      *v94 = 136446466;
      *&v94[4] = "copyconninfo";
      *&v94[12] = 1024;
      *&v94[14] = a1;
      v14 = "%{public}s called with null s (%d)";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v39 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = buf[0];
      v40 = os_log_type_enabled(gLogObj, buf[0]);
      if (v39)
      {
        if (v40)
        {
          *v94 = 136446722;
          *&v94[4] = "copyconninfo";
          *&v94[12] = 1024;
          *&v94[14] = a1;
          *&v94[18] = 2082;
          *&v94[20] = v39;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null s (%d), dumping backtrace:%{public}s", v94, 0x1Cu);
        }

        free(v39);
        goto LABEL_101;
      }

      if (!v40)
      {
LABEL_101:
        if (v11)
        {
          free(v11);
        }

LABEL_103:
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
        return 0xFFFFFFFFLL;
      }

      *v94 = 136446466;
      *&v94[4] = "copyconninfo";
      *&v94[12] = 1024;
      *&v94[14] = a1;
      v14 = "%{public}s called with null s (%d), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_101;
      }

      *v94 = 136446466;
      *&v94[4] = "copyconninfo";
      *&v94[12] = 1024;
      *&v94[14] = a1;
      v14 = "%{public}s called with null s (%d), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, v94, 0x12u);
    goto LABEL_101;
  }

  *v95 = 0u;
  *size = 0u;
  memset(v94, 0, sizeof(v94));
  *v94 = a2;
  if (ioctl(a1, 0xC0407398uLL, v94))
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if ((v5 | 0x10) == 0x16)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v5;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d", buf, 0x18u);
      }

      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v90 = "copyconninfo";
    v91 = 1024;
    *v92 = a1;
    *&v92[4] = 1024;
    *&v92[6] = v5;
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d", buf, 24);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v43, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_136;
        }

        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v5;
        v46 = "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d";
        goto LABEL_135;
      }

      if (v87 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_136;
        }

        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v5;
        v46 = "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_135;
      }

      v60 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = gLogObj;
      v45 = type;
      v61 = os_log_type_enabled(gLogObj, type);
      if (v60)
      {
        if (v61)
        {
          *buf = 136446978;
          v90 = "copyconninfo";
          v91 = 1024;
          *v92 = a1;
          *&v92[4] = 1024;
          *&v92[6] = v5;
          LOWORD(v93[0]) = 2082;
          *(v93 + 2) = v60;
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v60);
        goto LABEL_136;
      }

      if (v61)
      {
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v5;
        v46 = "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d, no backtrace";
LABEL_135:
        _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0x18u);
      }
    }

LABEL_136:
    if (v43)
    {
      free(v43);
    }

    return 0xFFFFFFFFLL;
  }

  if (*&v94[24])
  {
    if (*&v94[24] <= 0x1Cu)
    {
      v19 = 28;
    }

    else
    {
      v19 = *&v94[24];
    }

    *&v94[24] = v19;
    v20 = malloc_type_calloc(1uLL, v19, 0xAA8F0193uLL);
    if (!v20)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      *buf = 136446722;
      v90 = "copyconninfo";
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v91 = 2048;
      *v92 = 1;
      *&v92[8] = 2048;
      v93[0] = v19;
      v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
      result = __nwlog_should_abort(v23);
      if (result)
      {
        goto LABEL_170;
      }

      free(v23);
      v20 = 0;
    }

    *&v94[16] = v20;
  }

  if (LODWORD(v95[1]))
  {
    if (LODWORD(v95[1]) <= 0x1C)
    {
      v25 = 28;
    }

    else
    {
      v25 = LODWORD(v95[1]);
    }

    LODWORD(v95[1]) = v25;
    v26 = malloc_type_calloc(1uLL, v25, 0x22DDA856uLL);
    if (!v26)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v90 = "copyconninfo";
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v91 = 2048;
      *v92 = 1;
      *&v92[8] = 2048;
      v93[0] = v25;
      LODWORD(v86) = 32;
      v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v86);
      result = __nwlog_should_abort(v30);
      if (result)
      {
        goto LABEL_170;
      }

      free(v30);
      v26 = 0;
    }

    v95[0] = v26;
  }

  v31 = LODWORD(size[1]);
  if (LODWORD(size[1]))
  {
    v32 = malloc_type_calloc(1uLL, LODWORD(size[1]), 0xB6B9B674uLL);
    if (!v32)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v90 = "copyconninfo";
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v91 = 2048;
      *v92 = 1;
      *&v92[8] = 2048;
      v93[0] = v31;
      LODWORD(v86) = 32;
      v36 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v86);
      result = __nwlog_should_abort(v36);
      if (result)
      {
        goto LABEL_170;
      }

      free(v36);
      v32 = 0;
    }

    size[0] = v32;
  }

  if (ioctl(a1, 0xC0407398uLL, v94))
  {
    v37 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if ((v37 | 0x10) == 0x16)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v37;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d", buf, 0x18u);
      }

LABEL_149:
      if (*&v94[16])
      {
        free(*&v94[16]);
        *&v94[16] = 0;
      }

      if (v95[0])
      {
        free(v95[0]);
        v95[0] = 0;
      }

      if (size[0])
      {
        free(size[0]);
      }

      *a3 = 0;
      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v90 = "copyconninfo";
    v91 = 1024;
    *v92 = a1;
    *&v92[4] = 1024;
    *&v92[6] = v37;
    LODWORD(v86) = 24;
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d", buf, v86);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v62, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (!os_log_type_enabled(v63, type))
        {
          goto LABEL_147;
        }

        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v37;
        v65 = "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d";
        goto LABEL_146;
      }

      if (v87 != 1)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (!os_log_type_enabled(v63, type))
        {
          goto LABEL_147;
        }

        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v37;
        v65 = "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_146;
      }

      v74 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v64 = type;
      v75 = os_log_type_enabled(v63, type);
      if (v74)
      {
        if (v75)
        {
          *buf = 136446978;
          v90 = "copyconninfo";
          v91 = 1024;
          *v92 = a1;
          *&v92[4] = 1024;
          *&v92[6] = v37;
          LOWORD(v93[0]) = 2082;
          *(v93 + 2) = v74;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v74);
        goto LABEL_147;
      }

      if (v75)
      {
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = a1;
        *&v92[4] = 1024;
        *&v92[6] = v37;
        v65 = "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d, no backtrace";
LABEL_146:
        _os_log_impl(&dword_181A37000, v63, v64, v65, buf, 0x18u);
      }
    }

LABEL_147:
    if (v62)
    {
      free(v62);
    }

    goto LABEL_149;
  }

  v47 = malloc_type_calloc(1uLL, 0x28uLL, 0x1306AC71uLL);
  if (v47)
  {
LABEL_78:
    if (!LODWORD(size[1]) && size[0])
    {
      free(size[0]);
      size[0] = 0;
    }

    v52 = *&v94[16];
    if (!*&v94[24])
    {
      if (!*&v94[16])
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

    if (*&v94[24] >= **&v94[16])
    {
      goto LABEL_107;
    }

    v53 = __nwlog_obj();
    v54 = **&v94[16];
    *buf = 136446722;
    v90 = "copyconninfo";
    v91 = 1024;
    *v92 = v54;
    *&v92[4] = 1024;
    *&v92[6] = *&v94[24];
    LODWORD(v86) = 24;
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed", buf, v86);
    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v55, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (!os_log_type_enabled(v56, type))
        {
          goto LABEL_159;
        }

        v58 = **&v94[16];
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = v58;
        *&v92[4] = 1024;
        *&v92[6] = *&v94[24];
        v59 = "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed";
LABEL_158:
        _os_log_impl(&dword_181A37000, v56, v57, v59, buf, 0x18u);
        goto LABEL_159;
      }

      if (v87 != 1)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (!os_log_type_enabled(v56, type))
        {
          goto LABEL_159;
        }

        v82 = **&v94[16];
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = v82;
        *&v92[4] = 1024;
        *&v92[6] = *&v94[24];
        v59 = "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed, backtrace limit exceeded";
        goto LABEL_158;
      }

      v76 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v77 = os_log_type_enabled(v56, type);
      if (!v76)
      {
        if (!v77)
        {
          goto LABEL_159;
        }

        v84 = **&v94[16];
        *buf = 136446722;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = v84;
        *&v92[4] = 1024;
        *&v92[6] = *&v94[24];
        v59 = "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed, no backtrace";
        goto LABEL_158;
      }

      if (v77)
      {
        v78 = **&v94[16];
        *buf = 136446978;
        v90 = "copyconninfo";
        v91 = 1024;
        *v92 = v78;
        *&v92[4] = 1024;
        *&v92[6] = *&v94[24];
        LOWORD(v93[0]) = 2082;
        *(v93 + 2) = v76;
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed, dumping backtrace:%{public}s", buf, 0x22u);
      }

      free(v76);
    }

LABEL_159:
    if (v55)
    {
      free(v55);
    }

    v52 = *&v94[16];
    if (!*&v94[16])
    {
LABEL_107:
      v66 = v95[0];
      if (LODWORD(v95[1]))
      {
        if (LODWORD(v95[1]) < *v95[0])
        {
          v67 = __nwlog_obj();
          v68 = *v95[0];
          *buf = 136446722;
          v90 = "copyconninfo";
          v91 = 1024;
          *v92 = v68;
          *&v92[4] = 1024;
          *&v92[6] = v95[1];
          LODWORD(v86) = 24;
          v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed", buf, v86);
          type = OS_LOG_TYPE_ERROR;
          v87 = 0;
          if (!__nwlog_fault(v69, &type, &v87))
          {
            goto LABEL_166;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v70 = __nwlog_obj();
            v71 = type;
            if (!os_log_type_enabled(v70, type))
            {
              goto LABEL_166;
            }

            v72 = *v95[0];
            *buf = 136446722;
            v90 = "copyconninfo";
            v91 = 1024;
            *v92 = v72;
            *&v92[4] = 1024;
            *&v92[6] = v95[1];
            v73 = "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed";
          }

          else if (v87 == 1)
          {
            v79 = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v71 = type;
            v80 = os_log_type_enabled(v70, type);
            if (v79)
            {
              if (v80)
              {
                v81 = *v95[0];
                *buf = 136446978;
                v90 = "copyconninfo";
                v91 = 1024;
                *v92 = v81;
                *&v92[4] = 1024;
                *&v92[6] = v95[1];
                LOWORD(v93[0]) = 2082;
                *(v93 + 2) = v79;
                _os_log_impl(&dword_181A37000, v70, v71, "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed, dumping backtrace:%{public}s", buf, 0x22u);
              }

              free(v79);
LABEL_166:
              if (v69)
              {
                free(v69);
              }

              v66 = v95[0];
              if (!v95[0])
              {
                goto LABEL_115;
              }

              goto LABEL_114;
            }

            if (!v80)
            {
              goto LABEL_166;
            }

            v85 = *v95[0];
            *buf = 136446722;
            v90 = "copyconninfo";
            v91 = 1024;
            *v92 = v85;
            *&v92[4] = 1024;
            *&v92[6] = v95[1];
            v73 = "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed, no backtrace";
          }

          else
          {
            v70 = __nwlog_obj();
            v71 = type;
            if (!os_log_type_enabled(v70, type))
            {
              goto LABEL_166;
            }

            v83 = *v95[0];
            *buf = 136446722;
            v90 = "copyconninfo";
            v91 = 1024;
            *v92 = v83;
            *&v92[4] = 1024;
            *&v92[6] = v95[1];
            v73 = "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x18u);
          goto LABEL_166;
        }
      }

      else if (v95[0])
      {
LABEL_114:
        free(v66);
        v66 = 0;
      }

LABEL_115:
      result = 0;
      *v47 = *&v94[4];
      v47[1] = *&v94[16];
      v47[2] = v66;
      *(v47 + 6) = *&v94[12];
      *(v47 + 7) = HIDWORD(v95[1]);
      v47[4] = size[0];
      *a3 = v47;
      return result;
    }

LABEL_106:
    free(v52);
    *&v94[16] = 0;
    goto LABEL_107;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v48 = gLogObj;
  v49 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v90 = "copyconninfo";
  if (v49)
  {
    v50 = 3;
  }

  else
  {
    v50 = 2;
  }

  v91 = 2048;
  *v92 = 1;
  *&v92[8] = 2048;
  v93[0] = 40;
  LODWORD(v86) = 32;
  v51 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v86);
  result = __nwlog_should_abort(v51);
  if (!result)
  {
    free(v51);
    goto LABEL_78;
  }

LABEL_170:
  __break(1u);
  return result;
}

void nw_socket_internal_connect(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = mach_continuous_time();
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = nw_delta_nanos(v2, v4);
  v6 = (v5 / 0xF4240);
  if (v5 > 0xF423FFFFFFFFFLL)
  {
    v6 = 0xFFFFFFFFLL;
  }

  a1[5] = v6;
  v7 = a1[7];
  if (v7)
  {
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = *(v8 + 40);
      if (v9)
      {

        v9();
        return;
      }
    }

    v10 = a1[7];
    v11 = __nwlog_obj();
    v12 = v10;
    v13 = *(v10 + 16);
    if (!v13)
    {
      v13 = "invalid";
    }
  }

  else
  {
    v12 = 0;
    v11 = __nwlog_obj();
    v13 = "invalid";
  }

  *buf = 136446466;
  v27 = "nw_socket_internal_connect";
  v28 = 2082;
  v29 = v13;
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s protocol %{public}s has invalid connected callback", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v14, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_42;
      }

      v17 = "invalid";
      if (v12 && *(v12 + 16))
      {
        v17 = *(v12 + 16);
      }

      *buf = 136446466;
      v27 = "nw_socket_internal_connect";
      v28 = 2082;
      v29 = v17;
      v18 = "%{public}s protocol %{public}s has invalid connected callback";
      goto LABEL_41;
    }

    if (v24 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_42;
      }

      v22 = "invalid";
      if (v12 && *(v12 + 16))
      {
        v22 = *(v12 + 16);
      }

      *buf = 136446466;
      v27 = "nw_socket_internal_connect";
      v28 = 2082;
      v29 = v22;
      v18 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v20 = os_log_type_enabled(v15, type);
    if (backtrace_string)
    {
      if (v20)
      {
        v21 = "invalid";
        if (v12 && *(v12 + 16))
        {
          v21 = *(v12 + 16);
        }

        *buf = 136446722;
        v27 = "nw_socket_internal_connect";
        v28 = 2082;
        v29 = v21;
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_42;
    }

    if (v20)
    {
      v23 = "invalid";
      if (v12 && *(v12 + 16))
      {
        v23 = *(v12 + 16);
      }

      *buf = 136446466;
      v27 = "nw_socket_internal_connect";
      v28 = 2082;
      v29 = v23;
      v18 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_41:
      _os_log_impl(&dword_181A37000, v15, v16, v18, buf, 0x16u);
    }
  }

LABEL_42:
  if (v14)
  {
    free(v14);
  }
}

BOOL nw_socket_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_socket_waiting_for_output";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v26, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v35 = "nw_socket_waiting_for_output";
          v29 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v31 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v35 = "nw_socket_waiting_for_output";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v31)
        {
          *buf = 136446210;
          v35 = "nw_socket_waiting_for_output";
          v29 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v35 = "nw_socket_waiting_for_output";
          v29 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v26)
    {
      free(v26);
    }

    return 0;
  }

  v2 = a1;
  handle = a1->handle;
  v4 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = *a1[1].flow_id;
  if (v4)
  {
LABEL_6:
    callbacks = v4[1].callbacks;
    v5 = 0;
    if (callbacks)
    {
      v4[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v5 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v7 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
LABEL_18:
    result = *(&v7[6].callbacks + 5) < 0;
    if (v5)
    {
      return result;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v35 = "nw_socket_waiting_for_output";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v8, &type, &v32))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v35 = "nw_socket_waiting_for_output";
    v11 = "%{public}s called with null socket_handler";
LABEL_27:
    v17 = v9;
    v18 = v10;
LABEL_28:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_29;
  }

  if (v32 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v35 = "nw_socket_waiting_for_output";
    v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_27;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v35 = "nw_socket_waiting_for_output";
      v36 = 2082;
      v37 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

  else if (v16)
  {
    *buf = 136446210;
    v35 = "nw_socket_waiting_for_output";
    v11 = "%{public}s called with null socket_handler, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_28;
  }

LABEL_29:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_32:
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = result;
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            (v23)[2](v23, a2);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
            if (v24)
            {
              _Block_release(v24);
            }
          }

          free(v2);
          return v22;
        }
      }
    }
  }

  return result;
}

uint64_t nw_socket_get_output_local(nw_protocol *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_socket_get_output_local";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v25, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_socket_get_output_local";
          v28 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v34 = "nw_socket_get_output_local";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "nw_socket_get_output_local";
          v28 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_socket_get_output_local";
          v28 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

  v1 = a1;
  handle = a1->handle;
  v3 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v4 = 1;
    goto LABEL_11;
  }

  v3 = *a1[1].flow_id;
  if (v3)
  {
LABEL_6:
    callbacks = v3[1].callbacks;
    v4 = 0;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v4 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v6 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v6 = *a1[1].flow_id;
LABEL_18:
    result = *v6[3].flow_id;
    if (v4)
    {
      return result;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v34 = "nw_socket_get_output_local";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v7, &type, &v31))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_socket_get_output_local";
    v10 = "%{public}s called with null socket_handler";
LABEL_27:
    v16 = v8;
    v17 = v9;
LABEL_28:
    _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
    goto LABEL_29;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_socket_get_output_local";
    v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_27;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(gLogObj, type);
  if (v12)
  {
    if (v15)
    {
      *buf = 136446466;
      v34 = "nw_socket_get_output_local";
      v35 = 2082;
      v36 = v12;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
  }

  else if (v15)
  {
    *buf = 136446210;
    v34 = "nw_socket_get_output_local";
    v10 = "%{public}s called with null socket_handler, no backtrace";
    v16 = v13;
    v17 = v14;
    goto LABEL_28;
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }

  result = 0;
  if ((v4 & 1) == 0)
  {
LABEL_32:
    v18 = v1->handle;
    if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v19 = v1[1].callbacks;
      if (v19)
      {
        v20 = (v19 - 1);
        v1[1].callbacks = v20;
        if (!v20)
        {
          v21 = result;
          v22 = *v1[1].flow_id;
          if (v22)
          {
            *v1[1].flow_id = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v1[1].flow_id[8])
          {
            v23 = *v1[1].flow_id;
            if (v23)
            {
              _Block_release(v23);
            }
          }

          free(v1);
          return v21;
        }
      }
    }
  }

  return result;
}

void *nw_socket_copy_info(void *a1, int a2, void *a3)
{
  v177 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = a1[8];
    if (v5)
    {
LABEL_6:
      v7 = v5[11];
      v6 = 0;
      if (v7)
      {
        v5[11] = v7 + 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v4 = a1[5];
LABEL_11:
    v8 = a1;
    if (v4 != &nw_protocol_ref_counted_handle)
    {
      if (v4 != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        type[0] = 16;
        LOBYTE(v150[0]) = 0;
        if (!__nwlog_fault(v9, type, v150))
        {
          goto LABEL_51;
        }

        if (type[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_51;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_copy_info";
          v12 = "%{public}s called with null socket_handler";
          goto LABEL_48;
        }

        if (LOBYTE(v150[0]) != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_51;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_copy_info";
          v12 = "%{public}s called with null socket_handler, backtrace limit exceeded";
          goto LABEL_48;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type[0];
        v21 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_39;
        }

        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socket_copy_info";
          v12 = "%{public}s called with null socket_handler, no backtrace";
          v24 = v19;
          v25 = v20;
          goto LABEL_49;
        }

        goto LABEL_51;
      }

      v8 = a1[8];
    }

    result = 0;
    if (a2 > 4)
    {
      if (a2 <= 253)
      {
        if (a2 != 5)
        {
          if (a2 != 6)
          {
            goto LABEL_54;
          }

          v14 = v3;
          if (v4 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_168;
          }

          if (v4 != &nw_protocol_ref_counted_additional_handle)
          {
            v15 = 1;
            goto LABEL_172;
          }

          v14 = v3[8];
          if (v14)
          {
LABEL_168:
            v73 = v14[11];
            if (v73)
            {
              v14[11] = v73 + 1;
            }

            if (v4 == &nw_protocol_ref_counted_handle)
            {
              v74 = 0;
              v83 = v3;
              goto LABEL_237;
            }

            v74 = 0;
            v15 = 0;
            if (v4 != &nw_protocol_ref_counted_additional_handle)
            {
LABEL_172:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_fd_wrapper";
              v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
              type[0] = 16;
              LOBYTE(v150[0]) = 0;
              if (!__nwlog_fault(v75, type, v150))
              {
                goto LABEL_209;
              }

              if (type[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v76 = gLogObj;
                v77 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_209;
                }

                *buf = 136446210;
                *&buf[4] = "nw_socket_copy_fd_wrapper";
                v78 = "%{public}s called with null socket_handler";
              }

              else
              {
                if (LOBYTE(v150[0]) == 1)
                {
                  v79 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v80 = gLogObj;
                  v81 = type[0];
                  v82 = os_log_type_enabled(gLogObj, type[0]);
                  if (v79)
                  {
                    if (v82)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_socket_copy_fd_wrapper";
                      *&buf[12] = 2082;
                      *&buf[14] = v79;
                      _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v79);
                  }

                  else if (v82)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_socket_copy_fd_wrapper";
                    v78 = "%{public}s called with null socket_handler, no backtrace";
                    v90 = v80;
                    v91 = v81;
                    goto LABEL_208;
                  }

LABEL_209:
                  if (v75)
                  {
                    free(v75);
                  }

                  result = 0;
                  if (v15)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_240;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v76 = gLogObj;
                v77 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_209;
                }

                *buf = 136446210;
                *&buf[4] = "nw_socket_copy_fd_wrapper";
                v78 = "%{public}s called with null socket_handler, backtrace limit exceeded";
              }

              v90 = v76;
              v91 = v77;
LABEL_208:
              _os_log_impl(&dword_181A37000, v90, v91, v78, buf, 0xCu);
              goto LABEL_209;
            }
          }

          else
          {
            v74 = 1;
          }

          v83 = v3[8];
LABEL_237:
          result = v83[22];
          if (result)
          {
            result = os_retain(result);
          }

          if (v74)
          {
            goto LABEL_54;
          }

LABEL_240:
          v109 = v3[5];
          v110 = v3;
          if (v109 == &nw_protocol_ref_counted_handle || v109 == &nw_protocol_ref_counted_additional_handle && (v110 = v3[8]) != 0)
          {
            v111 = v110[11];
            if (v111)
            {
              v112 = v111 - 1;
              v110[11] = v112;
              if (!v112)
              {
                v113 = result;
                v114 = v110[8];
                if (v114)
                {
                  v110[8] = 0;
                  v114[2](v114);
                  _Block_release(v114);
                }

                if (v110[9])
                {
                  v115 = v110[8];
                  if (v115)
                  {
                    _Block_release(v115);
                  }
                }

                free(v110);
                result = v113;
              }
            }
          }

          goto LABEL_54;
        }

        if (*(v8 + 72) == 1)
        {
          result = malloc_type_calloc(1uLL, 0xE0uLL, 0xAAB38528uLL);
          if (result)
          {
LABEL_92:
            result[6] = v8[12];
            result[9] = v8[13];
            result[1] = v8[14];
            result[5] = v8[15];
            goto LABEL_301;
          }

          v43 = __nwlog_obj();
          *buf = 136446722;
          *&buf[4] = "nw_socket_copy_info";
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = 3;
          }

          else
          {
            v44 = 2;
          }

          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 224;
          v45 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (!__nwlog_should_abort(v45))
          {
            free(v45);
            result = 0;
            goto LABEL_92;
          }

          goto LABEL_346;
        }

        *v150 = 0;
        if ((*(v8 + 415) & 2) != 0 && !copymptcpinfo(*(v8 + 71), v150))
        {
          v98 = nw_calloc_type<nw_data_transfer_snapshot>(*(*v150 + 16));
          v99 = *v150;
          v100 = *(*v150 + 16);
          if (v100)
          {
            v101 = *(*v150 + 8);
            v102 = (v98 + 8);
            v103 = *(*v150 + 16);
            do
            {
              if (*v101)
              {
                v104 = *(*v101 + 32);
                *(v102 - 8) = *(v104 + 60);
                *(v102 + 1) = *(v104 + 76);
                *(v102 - 1) = *(v104 + 108);
                *v102 = *(v104 + 124);
                *(v102 + 2) = *(v104 + 84);
                *(v102 - 7) = *(v104 + 100);
                *(v102 - 3) = *(v104 + 68);
                v105 = *(v104 + 20);
                v106.i64[0] = DWORD2(v105);
                v106.i64[1] = HIDWORD(v105);
                v107 = v106;
                v106.i64[0] = v105;
                v106.i64[1] = DWORD1(v105);
                *(v102 + 72) = vzip1q_s64(v106, v107);
                *(v102 + 56) = vzip2q_s64(v106, v107);
              }

              v102 += 224;
              v101 += 8;
              --v103;
            }

            while (v103);
          }

          v108 = v98;
          if (a3)
          {
            *a3 = 224 * v100;
          }

          freemptcpinfo(v99);
          result = v108;
          goto LABEL_54;
        }

        v62 = *(v8 + 416);
        if (v62 == 30 || v62 == 2)
        {
          v146 = malloc_type_calloc(1uLL, 0xE0uLL, 0x2312D0AEuLL);
          if (v146)
          {
            goto LABEL_147;
          }

          v63 = __nwlog_obj();
          v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_socket_copy_info";
          if (v64)
          {
            v65 = 3;
          }

          else
          {
            v65 = 2;
          }

          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 224;
          v66 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (!__nwlog_should_abort(v66))
          {
            free(v66);
LABEL_147:
            v176 = 0;
            v174 = 0u;
            v175 = 0u;
            v172 = 0u;
            v173 = 0u;
            v170 = 0u;
            v171 = 0u;
            v168 = 0u;
            v169 = 0u;
            v166 = 0u;
            v167 = 0u;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v160 = 0u;
            v161 = 0u;
            v159 = 0u;
            memset(v158, 0, sizeof(v158));
            memset(v157, 0, sizeof(v157));
            v155 = 0u;
            v156 = 0u;
            memset(buf, 0, sizeof(buf));
            v149 = 424;
            if (!getsockopt(*(v8 + 71), 6, 512, buf, &v149))
            {
              result = v146;
              *(v146 + 9) = *(v157 + 12);
              *(v146 + 3) = *&v158[3];
              *(v146 + 8) = *&v158[7];
              *(v146 + 10) = *(&v157[1] + 4);
              *(v146 + 1) = *&v158[1];
              *(v146 + 5) = *(v157 + 4);
              v96.i64[0] = *&buf[28];
              v96.i64[1] = v155;
              v97 = v96;
              v96.i64[0] = *&buf[20];
              v96.i64[1] = *&buf[24];
              *(v146 + 136) = vzip1q_s64(v96, v97);
              *(v146 + 120) = vzip2q_s64(v96, v97);
              v96.i64[0] = DWORD1(v155);
              v96.i64[1] = DWORD2(v155);
              *(v146 + 152) = vextq_s8(v96, v96, 8uLL);
              *(v146 + 88) = v169;
              *(v146 + 104) = v170;
              goto LABEL_301;
            }

            v67 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v68 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *type = 136446722;
              *&type[4] = "nw_socket_copy_info";
              v152 = 2082;
              *v153 = v8 + 420;
              *&v153[8] = 1024;
              *&v153[10] = v67;
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x1Cu);
            }

            v69 = __nwlog_obj();
            v70 = v69;
            if (v67 == 102)
            {
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                *type = 136446466;
                *&type[4] = "nw_socket_copy_info";
                v152 = 1024;
                *v153 = 102;
                _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x12u);
              }

LABEL_300:
              result = v146;
              *(v146 + 6) = v8[12];
              *(v146 + 9) = v8[13];
LABEL_301:
              if (a3)
              {
                *a3 = 224;
              }

              goto LABEL_54;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_copy_info";
            v152 = 1024;
            *v153 = v67;
            LODWORD(v144) = 18;
            v116 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, v144);
            v148 = OS_LOG_TYPE_ERROR;
            v147 = 0;
            if (__nwlog_fault(v116, &v148, &v147))
            {
              if (v148 == OS_LOG_TYPE_FAULT)
              {
                v117 = __nwlog_obj();
                v118 = v148;
                if (!os_log_type_enabled(v117, v148))
                {
                  goto LABEL_298;
                }

                *type = 136446466;
                *&type[4] = "nw_socket_copy_info";
                v152 = 1024;
                *v153 = v67;
                v119 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
LABEL_296:
                v134 = v117;
LABEL_297:
                _os_log_impl(&dword_181A37000, v134, v118, v119, type, 0x12u);
                goto LABEL_298;
              }

              if (v147 != 1)
              {
                v117 = __nwlog_obj();
                v118 = v148;
                if (!os_log_type_enabled(v117, v148))
                {
                  goto LABEL_298;
                }

                *type = 136446466;
                *&type[4] = "nw_socket_copy_info";
                v152 = 1024;
                *v153 = v67;
                v119 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_296;
              }

              v127 = __nw_create_backtrace_string();
              v128 = __nwlog_obj();
              v118 = v148;
              log = v128;
              v129 = os_log_type_enabled(v128, v148);
              if (v127)
              {
                if (v129)
                {
                  *type = 136446722;
                  *&type[4] = "nw_socket_copy_info";
                  v152 = 1024;
                  *v153 = v67;
                  *&v153[4] = 2082;
                  *&v153[6] = v127;
                  _os_log_impl(&dword_181A37000, log, v118, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
                }

                free(v127);
                goto LABEL_298;
              }

              if (v129)
              {
                *type = 136446466;
                *&type[4] = "nw_socket_copy_info";
                v152 = 1024;
                *v153 = v67;
                v119 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, no backtrace";
                v134 = log;
                goto LABEL_297;
              }
            }

LABEL_298:
            if (v116)
            {
              free(v116);
            }

            goto LABEL_300;
          }

LABEL_346:
          __break(1u);
          goto LABEL_347;
        }

        result = malloc_type_calloc(1uLL, 0xE0uLL, 0x1ED40163uLL);
        if (!result)
        {
          v92 = __nwlog_obj();
          v93 = os_log_type_enabled(v92, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_socket_copy_info";
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 224;
          v95 = _os_log_send_and_compose_impl(v94, 0, 0, 0, &dword_181A37000, v92, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
          if (__nwlog_should_abort(v95))
          {
            goto LABEL_346;
          }

          free(v95);
          result = 0;
        }

        result[6] = v8[12];
        result[9] = v8[13];
        goto LABEL_301;
      }

      if (a2 != 254)
      {
        if (a2 != 255)
        {
          goto LABEL_54;
        }

        if (v8[21])
        {
          result = _nw_array_create();
          if (result)
          {
            v22 = v8[21];
            if (v22)
            {
              v23 = result;
              _nw_array_append(result, v22);
              result = v23;
            }
          }

          goto LABEL_54;
        }

        goto LABEL_53;
      }

      if (*(v8 + 72) != 2)
      {
        goto LABEL_53;
      }

      if (nw_protocol_setup_tcp_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
      }

      v46 = g_tcp_definition;
      v47 = nw_protocol_establishment_report_create(v46, v8[17], v8[17]);
      if (v46)
      {
        os_release(v46);
      }

      v176 = 0;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      memset(v158, 0, sizeof(v158));
      memset(v157, 0, sizeof(v157));
      v155 = 0u;
      v156 = 0u;
      memset(buf, 0, sizeof(buf));
      v150[0] = 424;
      if (!getsockopt(*(v8 + 71), 6, 512, buf, v150))
      {
        if ((DWORD2(v168) - 2) >= 8)
        {
          v84 = 1;
        }

        else
        {
          v84 = DWORD2(v168);
        }

        if ((HIDWORD(v168) - 2) >= 9)
        {
          v85 = 1;
        }

        else
        {
          v85 = HIDWORD(v168);
        }

        nw_protocol_establishment_report_set_client_accurate_ecn_state(v47, v84);
        nw_protocol_establishment_report_set_server_accurate_ecn_state(v47, v85);
        nw_protocol_establishment_report_set_l4s_enabled(v47, (DWORD1(v165) & 0x10000000) != 0);
        goto LABEL_308;
      }

      v48 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v49 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *type = 136446722;
        *&type[4] = "nw_socket_copy_info";
        v152 = 2082;
        *v153 = v8 + 420;
        *&v153[8] = 1024;
        *&v153[10] = v48;
        _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x1Cu);
      }

      v50 = __nwlog_obj();
      v51 = v50;
      if (v48 == 102)
      {
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v152 = 1024;
          *v153 = 102;
          _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x12u);
        }

        goto LABEL_308;
      }

      *type = 136446466;
      *&type[4] = "nw_socket_copy_info";
      v152 = 1024;
      *v153 = v48;
      v86 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 18);
      LOBYTE(v149) = 16;
      v148 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v86, &v149, &v148))
      {
        if (v149 == 17)
        {
          v87 = __nwlog_obj();
          v88 = v149;
          if (!os_log_type_enabled(v87, v149))
          {
            goto LABEL_306;
          }

          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v152 = 1024;
          *v153 = v48;
          v89 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
          goto LABEL_305;
        }

        if (v148 != OS_LOG_TYPE_INFO)
        {
          v87 = __nwlog_obj();
          v88 = v149;
          if (!os_log_type_enabled(v87, v149))
          {
            goto LABEL_306;
          }

          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v152 = 1024;
          *v153 = v48;
          v89 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_305;
        }

        v120 = __nw_create_backtrace_string();
        v87 = __nwlog_obj();
        v88 = v149;
        v121 = os_log_type_enabled(v87, v149);
        if (v120)
        {
          if (v121)
          {
            *type = 136446722;
            *&type[4] = "nw_socket_copy_info";
            v152 = 1024;
            *v153 = v48;
            *&v153[4] = 2082;
            *&v153[6] = v120;
            _os_log_impl(&dword_181A37000, v87, v88, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
          }

          free(v120);
          goto LABEL_306;
        }

        if (v121)
        {
          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v152 = 1024;
          *v153 = v48;
          v89 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, no backtrace";
LABEL_305:
          _os_log_impl(&dword_181A37000, v87, v88, v89, type, 0x12u);
        }
      }

LABEL_306:
      if (v86)
      {
        free(v86);
      }

LABEL_308:
      v135 = _nw_array_create();
      if (v135 && v47)
      {
        v136 = v135;
        _nw_array_append(v135, v47);
      }

      else
      {
        v136 = v135;
        if (!v47)
        {
LABEL_313:
          result = v136;
LABEL_54:
          if ((v6 & 1) == 0)
          {
            v27 = v3[5];
            if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
            {
              v28 = v3[11];
              if (v28)
              {
                v29 = v28 - 1;
                v3[11] = v29;
                if (!v29)
                {
                  v30 = result;
                  v31 = v3[8];
                  if (v31)
                  {
                    v3[8] = 0;
                    v31[2](v31);
                    _Block_release(v31);
                  }

                  if (v3[9])
                  {
                    v32 = v3[8];
                    if (v32)
                    {
                      _Block_release(v32);
                    }
                  }

                  free(v3);
                  return v30;
                }
              }
            }
          }

          return result;
        }
      }

      os_release(v47);
      goto LABEL_313;
    }

    switch(a2)
    {
      case 1:
        if (*(v8 + 72) != 2 || (v33 = *(v8 + 416), v33 != 30) && v33 != 2)
        {
          if ((*(v8 + 413) & 0x80) != 0 || gLogDatapath != 1)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] == -1)
          {
LABEL_128:
            v59 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v8 + 420;
              v17 = "%{public}s %{public}s ignoring tcp_info request for non-TCP socket";
LABEL_136:
              v60 = v59;
              v61 = OS_LOG_TYPE_DEBUG;
LABEL_200:
              _os_log_impl(&dword_181A37000, v60, v61, v17, buf, 0x16u);
            }

LABEL_53:
            result = 0;
            goto LABEL_54;
          }

LABEL_347:
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          goto LABEL_128;
        }

        *type = 424;
        if ((*(v8 + 415) & 2) == 0)
        {
          v34 = a3;
          v9 = malloc_type_malloc(0x1A8uLL, 0x88ABFBCFuLL);
          if (!v9)
          {
            v35 = __nwlog_obj();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = 3;
            }

            else
            {
              v36 = 2;
            }

            *buf = 136446210;
            *&buf[4] = "nw_socket_copy_info";
            v37 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s strict allocator failed", buf, 12);
            if (__nwlog_should_abort(v37))
            {
              goto LABEL_346;
            }

            free(v37);
          }

          if (getsockopt(*(v8 + 71), 6, 512, v9, type))
          {
            v38 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v39 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v8 + 420;
              *&buf[22] = 1024;
              *&buf[24] = v38;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_INFO failed %{darwin.errno}d", buf, 0x1Cu);
            }

            v40 = __nwlog_obj();
            v41 = v40;
            if (v38 == 102)
            {
              if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 1024;
              *&buf[14] = 102;
              v12 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
              goto LABEL_124;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 1024;
            *&buf[14] = v38;
            LODWORD(v144) = 18;
            backtrace_string = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", buf, v144);
            LOBYTE(v150[0]) = 16;
            LOBYTE(v149) = 0;
            if (__nwlog_fault(backtrace_string, v150, &v149))
            {
              if (LOBYTE(v150[0]) == 17)
              {
                v124 = __nwlog_obj();
                v125 = v150[0];
                if (!os_log_type_enabled(v124, v150[0]))
                {
                  goto LABEL_331;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v38;
                v126 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
LABEL_330:
                _os_log_impl(&dword_181A37000, v124, v125, v126, buf, 0x12u);
                goto LABEL_331;
              }

              if (v149 != 1)
              {
                v124 = __nwlog_obj();
                v125 = v150[0];
                if (!os_log_type_enabled(v124, v150[0]))
                {
                  goto LABEL_331;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v38;
                v126 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_330;
              }

              v130 = __nw_create_backtrace_string();
              v124 = __nwlog_obj();
              v125 = v150[0];
              v131 = os_log_type_enabled(v124, v150[0]);
              if (!v130)
              {
                if (!v131)
                {
                  goto LABEL_331;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v38;
                v126 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, no backtrace";
                goto LABEL_330;
              }

              if (v131)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v38;
                *&buf[18] = 2082;
                *&buf[20] = v130;
                v132 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_292:
                _os_log_impl(&dword_181A37000, v124, v125, v132, buf, 0x1Cu);
              }

LABEL_293:
              free(v130);
            }

LABEL_331:
            if (backtrace_string)
            {
LABEL_39:
              free(backtrace_string);
            }

LABEL_51:
            if (v9)
            {
              free(v9);
            }

            goto LABEL_53;
          }

LABEL_220:
          if (v34)
          {
            *v34 = *type;
          }

          result = v9;
          goto LABEL_54;
        }

        if ((*(v8 + 413) & 0x80) != 0)
        {
          goto LABEL_53;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        *&buf[4] = "nw_socket_copy_info";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 420;
        v17 = "%{public}s %{public}s Can't get TCP_INFO on a multipath socket";
        break;
      case 2:
        if (*(v8 + 72) != 2 || (v52 = *(v8 + 416), v52 != 30) && v52 != 2)
        {
          if ((*(v8 + 413) & 0x80) != 0 || gLogDatapath != 1)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v59 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 420;
          v17 = "%{public}s %{public}s ignoring tcp_connection_info request for non-TCP socket";
          goto LABEL_136;
        }

        *type = 112;
        if ((*(v8 + 415) & 2) == 0)
        {
          v34 = a3;
          v9 = malloc_type_malloc(0x70uLL, 0x2E8E6DAuLL);
          if (!v9)
          {
            v53 = __nwlog_obj();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            *buf = 136446210;
            *&buf[4] = "nw_socket_copy_info";
            v55 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s strict allocator failed", buf, 12);
            if (__nwlog_should_abort(v55))
            {
              goto LABEL_346;
            }

            free(v55);
          }

          if (getsockopt(*(v8 + 71), 6, 262, v9, type))
          {
            v56 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v57 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v8 + 420;
              *&buf[22] = 1024;
              *&buf[24] = v56;
              _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d", buf, 0x1Cu);
            }

            v58 = __nwlog_obj();
            v41 = v58;
            if (v56 == 102)
            {
              if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 1024;
              *&buf[14] = 102;
              v12 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d";
LABEL_124:
              v24 = v41;
              v25 = OS_LOG_TYPE_ERROR;
              v26 = 18;
              goto LABEL_50;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 1024;
            *&buf[14] = v56;
            LODWORD(v144) = 18;
            backtrace_string = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d", buf, v144);
            LOBYTE(v150[0]) = 16;
            LOBYTE(v149) = 0;
            if (__nwlog_fault(backtrace_string, v150, &v149))
            {
              if (LOBYTE(v150[0]) == 17)
              {
                v124 = __nwlog_obj();
                v125 = v150[0];
                if (!os_log_type_enabled(v124, v150[0]))
                {
                  goto LABEL_331;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v56;
                v126 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d";
                goto LABEL_330;
              }

              if (v149 != 1)
              {
                v124 = __nwlog_obj();
                v125 = v150[0];
                if (!os_log_type_enabled(v124, v150[0]))
                {
                  goto LABEL_331;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v56;
                v126 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_330;
              }

              v130 = __nw_create_backtrace_string();
              v124 = __nwlog_obj();
              v125 = v150[0];
              v133 = os_log_type_enabled(v124, v150[0]);
              if (!v130)
              {
                if (!v133)
                {
                  goto LABEL_331;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v56;
                v126 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d, no backtrace";
                goto LABEL_330;
              }

              if (v133)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v56;
                *&buf[18] = 2082;
                *&buf[20] = v130;
                v132 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s";
                goto LABEL_292;
              }

              goto LABEL_293;
            }

            goto LABEL_331;
          }

          goto LABEL_220;
        }

        if ((*(v8 + 413) & 0x80) != 0)
        {
          goto LABEL_53;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        *&buf[4] = "nw_socket_copy_info";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 420;
        v17 = "%{public}s %{public}s Can't get TCP_CONNECTION_INFO on a multipath socket";
        break;
      case 3:
        *type = 0;
        if (*(v8 + 72) == 2)
        {
          if ((*(v8 + 415) & 2) != 0)
          {
            if (!copymptcpinfo(*(v8 + 71), type))
            {
              if (a3)
              {
                *a3 = 24;
              }

              result = *type;
              goto LABEL_54;
            }

            v72 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_socket_copy_info";
            v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s copymptcpinfo failed", buf, 12);
            LOBYTE(v150[0]) = 16;
            LOBYTE(v149) = 0;
            if (!__nwlog_fault(v9, v150, &v149))
            {
              goto LABEL_51;
            }

            if (LOBYTE(v150[0]) == 17)
            {
              v10 = __nwlog_obj();
              v11 = v150[0];
              if (!os_log_type_enabled(v10, v150[0]))
              {
                goto LABEL_51;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_info";
              v12 = "%{public}s copymptcpinfo failed";
            }

            else if (v149 == 1)
            {
              v122 = __nw_create_backtrace_string();
              v10 = __nwlog_obj();
              v11 = v150[0];
              v123 = os_log_type_enabled(v10, v150[0]);
              if (v122)
              {
                if (v123)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_copy_info";
                  *&buf[12] = 2082;
                  *&buf[14] = v122;
                  _os_log_impl(&dword_181A37000, v10, v11, "%{public}s copymptcpinfo failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v122);
                goto LABEL_51;
              }

              if (!v123)
              {
                goto LABEL_51;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_info";
              v12 = "%{public}s copymptcpinfo failed, no backtrace";
            }

            else
            {
              v10 = __nwlog_obj();
              v11 = v150[0];
              if (!os_log_type_enabled(v10, v150[0]))
              {
                goto LABEL_51;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_info";
              v12 = "%{public}s copymptcpinfo failed, backtrace limit exceeded";
            }

LABEL_48:
            v24 = v10;
            v25 = v11;
LABEL_49:
            v26 = 12;
LABEL_50:
            _os_log_impl(&dword_181A37000, v24, v25, v12, buf, v26);
            goto LABEL_51;
          }

          if ((*(v8 + 413) & 0x80) != 0)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 420;
          v17 = "%{public}s %{public}s Can't get MPTCP_INFO on a TCP socket";
        }

        else
        {
          if ((*(v8 + 413) & 0x80) != 0)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 420;
          v17 = "%{public}s %{public}s Can't get MPTCP_INFO on a non-stream socket";
        }

        break;
      default:
        goto LABEL_54;
    }

    v60 = v16;
    v61 = OS_LOG_TYPE_ERROR;
    goto LABEL_200;
  }

  v137 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_copy_info";
  v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v137, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = 16;
  LOBYTE(v150[0]) = 0;
  if (__nwlog_fault(v138, type, v150))
  {
    if (type[0] == 17)
    {
      v139 = __nwlog_obj();
      v140 = type[0];
      if (os_log_type_enabled(v139, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v141 = "%{public}s called with null protocol";
LABEL_342:
        _os_log_impl(&dword_181A37000, v139, v140, v141, buf, 0xCu);
      }
    }

    else if (LOBYTE(v150[0]) == 1)
    {
      v142 = __nw_create_backtrace_string();
      v139 = __nwlog_obj();
      v140 = type[0];
      v143 = os_log_type_enabled(v139, type[0]);
      if (v142)
      {
        if (v143)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v142;
          _os_log_impl(&dword_181A37000, v139, v140, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v142);
        goto LABEL_343;
      }

      if (v143)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v141 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_342;
      }
    }

    else
    {
      v139 = __nwlog_obj();
      v140 = type[0];
      if (os_log_type_enabled(v139, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v141 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_342;
      }
    }
  }

LABEL_343:
  if (v138)
  {
    free(v138);
  }

  return 0;
}

char *nw_protocol_http3_create(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_create";
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null identifier", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (__nwlog_fault(v28, &type, &v48))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http3_create";
          v31 = "%{public}s called with null identifier";
LABEL_72:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }
      }

      else if (v48 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v39 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v39)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http3_create";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_73;
        }

        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http3_create";
          v31 = "%{public}s called with null identifier, no backtrace";
          goto LABEL_72;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http3_create";
          v31 = "%{public}s called with null identifier, backtrace limit exceeded";
          goto LABEL_72;
        }
      }
    }

LABEL_73:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x578uLL, 0x1F8C1217uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, 0x578uLL);
    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http3_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v51 = 1400;
  v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    bzero(0, 0x578uLL);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_create";
    LODWORD(v45) = 12;
    v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s strict_placement_new(nw_protocol_http3, strict_calloc(1, sizeof(nw_protocol_http3)),) failed", buf, v45);
    result = __nwlog_should_abort(v15);
    if (!result)
    {
      free(v15);
LABEL_13:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v51 = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_protocol_http3_create_block_invoke;
      aBlock[3] = &unk_1E6A388A0;
      aBlock[4] = buf;
      *(v8 + 132) = _Block_copy(aBlock);
      _Block_object_dispose(buf, 8);
      if (nw_protocol_http3_get_callbacks(void)::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_http3_get_callbacks(void)::onceToken, &__block_literal_global_60_63242);
      }

      *(v8 + 2) = a1;
      *(v8 + 3) = &nw_protocol_http3_get_callbacks(void)::protocol_callbacks;
      *(v8 + 5) = v8;
      *(v8 + 8) = 0;
      *(v8 + 9) = v8;
      v8[120] = 0;
      if (nw_protocol_http3_get_listen_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_get_listen_callbacks(void)::onceToken, &__block_literal_global_180);
      }

      *(v8 + 16) = &nw_protocol_http3_get_listen_callbacks(void)::listen_protocol_callbacks;
      *(v8 + 19) = v8;
      *(v8 + 20) = -1;
      *(v8 + 168) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 27) = v8 + 208;
      *(v8 + 14) = 0u;
      *(v8 + 120) = 0;
      *(v8 + 23) = v8;
      *(v8 + 24) = v8;
      *(v8 + 143) = 0;
      *(v8 + 1397) = *(v8 + 1397) & 0xFFFE | nw_parameters_get_server_mode(a4);
      v16 = nw_parameters_copy_context(a4);
      *(v8 + 248) = 0u;
      *(v8 + 159) = v16;
      *(v8 + 328) = 0u;
      *(v8 + 344) = 0u;
      *(v8 + 264) = 0u;
      *(v8 + 280) = 0u;
      *(v8 + 296) = 0u;
      *(v8 + 312) = 0u;
      *(v8 + 360) = 0u;
      *(v8 + 376) = 0u;
      *(v8 + 392) = 0u;
      *(v8 + 408) = 0u;
      *(v8 + 424) = 0u;
      *(v8 + 440) = 0u;
      *(v8 + 456) = 0u;
      *(v8 + 472) = 0u;
      *(v8 + 39) = v8 + 304;
      *(v8 + 42) = v8 + 328;
      *(v8 + 44) = v8 + 344;
      *(v8 + 46) = v8 + 360;
      *(v8 + 808) = 0u;
      *(v8 + 824) = 0u;
      *(v8 + 776) = 0u;
      *(v8 + 792) = 0u;
      *(v8 + 744) = 0u;
      *(v8 + 760) = 0u;
      *(v8 + 712) = 0u;
      *(v8 + 728) = 0u;
      *(v8 + 680) = 0u;
      *(v8 + 696) = 0u;
      *(v8 + 648) = 0u;
      *(v8 + 664) = 0u;
      *(v8 + 616) = 0u;
      *(v8 + 632) = 0u;
      *(v8 + 584) = 0u;
      *(v8 + 600) = 0u;
      *(v8 + 552) = 0u;
      *(v8 + 568) = 0u;
      *(v8 + 520) = 0u;
      *(v8 + 536) = 0u;
      *(v8 + 488) = 0u;
      *(v8 + 504) = 0u;
      *(v8 + 492) = 0x3FFF00003FFFLL;
      *(v8 + 65) = vdup_n_s32(0x3FDu);
      *(v8 + 63) = 0x1FF00000064;
      *(v8 + 66) = &nw_qpack_dec_callbacks;
      *(v8 + 72) = v8 + 568;
      *(v8 + 74) = v8 + 584;
      *(v8 + 76) = v8 + 600;
      *(v8 + 78) = v8 + 616;
      *(v8 + 80) = v8 + 632;
      *(v8 + 82) = v8 + 648;
      *(v8 + 84) = v8 + 664;
      *(v8 + 86) = v8 + 680;
      *(v8 + 88) = v8 + 696;
      *(v8 + 111) = 0;
      *(v8 + 112) = v8 + 888;
      *(v8 + 115) = 0;
      *(v8 + 116) = v8 + 920;
      *(v8 + 117) = 0;
      *(v8 + 118) = v8 + 936;
      *(v8 + 119) = 0;
      *(v8 + 120) = v8 + 952;
      *(v8 + 121) = 0;
      *(v8 + 122) = v8 + 968;
      *(v8 + 123) = 0;
      *(v8 + 124) = v8 + 984;
      *(v8 + 1016) = 0u;
      *(v8 + 129) = -1;
      *(v8 + 322) = 0;
      if (nw_parameters_get_logging_disabled(a4))
      {
        v17 = 32;
      }

      else
      {
        v17 = 0;
      }

      v8[1399] = v8[1399] & 0xDF | v17;
      *(v8 + 130) = 240000;
      if (a3)
      {
        *(v8 + 139) = os_retain(a3);
        if (a4)
        {
LABEL_22:
          v18 = os_retain(a4);
          goto LABEL_25;
        }
      }

      else
      {
        *(v8 + 139) = 0;
        if (a4)
        {
          goto LABEL_22;
        }
      }

      v18 = 0;
LABEL_25:
      *(v8 + 142) = v18;
      v19 = *(v8 + 159);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 0x40000000;
      v46[2] = __nw_protocol_http3_create_block_invoke_2;
      v46[3] = &__block_descriptor_tmp_6_63243;
      v46[4] = v8;
      metadata = nw_http_connection_create_metadata(v19, v46, 0);
      *(v8 + 158) = metadata;
      nw_http_connection_metadata_set_version(metadata, 5);
      v21 = *(v8 + 158);
      v22 = &__block_literal_global_63244;
      if (v21)
      {
        if (nw_protocol_copy_http_connection_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
        }

        if (nw_protocol_metadata_matches_definition(v21, nw_protocol_copy_http_connection_definition_definition))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nw_http_connection_metadata_set_send_certificate_block_invoke;
          v51 = &unk_1E6A3AA28;
          v53 = v8;
          v23 = &__block_literal_global_63244;
          v52 = &__block_literal_global_63244;
          handle = _nw_protocol_metadata_get_handle();
          if (handle)
          {
            (*&buf[16])(buf, handle);
          }

          goto LABEL_32;
        }

        v37 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
        LODWORD(v44) = 12;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s metadata must be http_connection", buf, v44);

        type = OS_LOG_TYPE_ERROR;
        v48 = 0;
        if (__nwlog_fault(v33, &type, &v48))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v34 = __nwlog_obj();
            v35 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
              v36 = "%{public}s metadata must be http_connection";
              goto LABEL_80;
            }
          }

          else
          {
            if (v48 == 1)
            {
              v42 = __nw_create_backtrace_string();
              v34 = __nwlog_obj();
              v35 = type;
              v43 = os_log_type_enabled(v34, type);
              if (v42)
              {
                if (v43)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
                  *&buf[12] = 2082;
                  *&buf[14] = v42;
                  _os_log_impl(&dword_181A37000, v34, v35, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v42);
                if (!v33)
                {
                  goto LABEL_32;
                }

LABEL_83:
                free(v33);
LABEL_32:

                if ((v8[1399] & 0x20) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v25 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v26 = *(v8 + 326);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_http3_create";
                    *&buf[12] = 2082;
                    *&buf[14] = v8 + 1313;
                    *&buf[22] = 2080;
                    v51 = " ";
                    LOWORD(v52) = 1024;
                    *(&v52 + 2) = v26;
                    HIWORD(v52) = 2048;
                    v53 = v8;
                    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created %p", buf, 0x30u);
                  }
                }

                return v8;
              }

              if (!v43)
              {
                goto LABEL_81;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
              v36 = "%{public}s metadata must be http_connection, no backtrace";
              goto LABEL_80;
            }

            v34 = __nwlog_obj();
            v35 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
              v36 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
              goto LABEL_80;
            }
          }

          goto LABEL_81;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
        LODWORD(v44) = 12;
        v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null metadata", buf, v44);

        type = OS_LOG_TYPE_ERROR;
        v48 = 0;
        if (!__nwlog_fault(v33, &type, &v48))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v34 = __nwlog_obj();
          v35 = type;
          if (os_log_type_enabled(v34, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
            v36 = "%{public}s called with null metadata";
LABEL_80:
            _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
          }

LABEL_81:

          goto LABEL_82;
        }

        if (v48 != 1)
        {
          v34 = __nwlog_obj();
          v35 = type;
          if (os_log_type_enabled(v34, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
            v36 = "%{public}s called with null metadata, backtrace limit exceeded";
            goto LABEL_80;
          }

          goto LABEL_81;
        }

        v40 = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v35 = type;
        v41 = os_log_type_enabled(v34, type);
        if (!v40)
        {
          if (v41)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
            v36 = "%{public}s called with null metadata, no backtrace";
            goto LABEL_80;
          }

          goto LABEL_81;
        }

        if (v41)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v40);
      }

LABEL_82:
      if (!v33)
      {
        goto LABEL_32;
      }

      goto LABEL_83;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_http_connection_create_metadata(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_connection_definition_definition);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __nw_http_connection_create_metadata_block_invoke;
  v13[3] = &unk_1E6A3ACF8;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  nw_protocol_metadata_access_handle(singleton, v13);

  return singleton;
}

uint64_t nw_protocol_definition_get_metadata_initializer(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    if (v2)
    {
      v3 = *(v2 + 240);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_get_metadata_initializer";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null definition", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_initializer";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_protocol_definition_get_metadata_initializer";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_initializer";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_initializer";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_5:

  return v3;
}

uint64_t __nw_http_connection_create_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 104), *(a1 + 32));
  v4 = _Block_copy(*(a1 + 40));
  v5 = *(a2 + 112);
  *(a2 + 112) = v4;

  v6 = _Block_copy(*(a1 + 48));
  v7 = *(a2 + 136);
  *(a2 + 136) = v6;

  return 1;
}

void nw_http_connection_metadata_set_version(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_version";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_version";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_connection_metadata_set_version";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_version";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_version";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_connection_metadata_set_version_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_connection_metadata_set_version";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s metadata must be http_connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_version";
      v9 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_version";
      v9 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_version";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_version";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t __nw_http_connection_metadata_set_send_certificate_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a2 + 8) = *(a1 + 40);
  if (*(a2 + 16))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446210;
      v8 = "nw_http_connection_metadata_set_send_certificate_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring duplicate setting of nw_http_connection_metadata_set_send_certificate", &v7, 0xCu);
    }
  }

  else
  {
    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  return 1;
}

uint64_t nw_protocol_http3_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v240 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v157 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v157, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v237[0] = 0;
    if (!__nwlog_fault(v158, type, v237))
    {
      goto LABEL_399;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v159 = __nwlog_obj();
      v160 = type[0];
      if (!os_log_type_enabled(v159, type[0]))
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null protocol";
      goto LABEL_398;
    }

    if (v237[0] != 1)
    {
      v159 = __nwlog_obj();
      v160 = type[0];
      if (!os_log_type_enabled(v159, type[0]))
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_398;
    }

    backtrace_string = __nw_create_backtrace_string();
    v159 = __nwlog_obj();
    v160 = type[0];
    v164 = os_log_type_enabled(v159, type[0]);
    if (!backtrace_string)
    {
      if (!v164)
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_398;
    }

    if (!v164)
    {
      goto LABEL_324;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v165 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_323:
    _os_log_impl(&dword_181A37000, v159, v160, v165, buf, 0x16u);
    goto LABEL_324;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    v162 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s called with null http3", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v237[0] = 0;
    if (!__nwlog_fault(v158, type, v237))
    {
      goto LABEL_399;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v159 = __nwlog_obj();
      v160 = type[0];
      if (!os_log_type_enabled(v159, type[0]))
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null http3";
      goto LABEL_398;
    }

    if (v237[0] != 1)
    {
      v159 = __nwlog_obj();
      v160 = type[0];
      if (!os_log_type_enabled(v159, type[0]))
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_398;
    }

    backtrace_string = __nw_create_backtrace_string();
    v159 = __nwlog_obj();
    v160 = type[0];
    v167 = os_log_type_enabled(v159, type[0]);
    if (!backtrace_string)
    {
      if (!v167)
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null http3, no backtrace";
      goto LABEL_398;
    }

    if (!v167)
    {
      goto LABEL_324;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v165 = "%{public}s called with null http3, dumping backtrace:%{public}s";
    goto LABEL_323;
  }

  v230 = handle + 1397;
  if ((*(handle + 1397) & 8) == 0)
  {
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v6 = parameters;
      v7 = _nw_parameters_copy_context();
      v228 = v2;
      if (nw_context_shares_workloop(*(handle + 159), v7))
      {
        goto LABEL_25;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = *(handle + 159);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      *&buf[24] = v7;
      *&buf[32] = 2112;
      *&buf[34] = v8;
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@", buf, 42);
      type[0] = OS_LOG_TYPE_ERROR;
      v237[0] = 0;
      if (__nwlog_fault(v9, type, v237))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_23;
          }

          v12 = *(handle + 159);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2112;
          *&buf[24] = v7;
          *&buf[32] = 2112;
          *&buf[34] = v12;
          v13 = "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@";
          goto LABEL_22;
        }

        if (v237[0] != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_23;
          }

          v20 = *(handle + 159);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2112;
          *&buf[24] = v7;
          *&buf[32] = 2112;
          *&buf[34] = v20;
          v13 = "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, backtrace limit exceeded";
          goto LABEL_22;
        }

        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        v18 = os_log_type_enabled(gLogObj, type[0]);
        if (v17)
        {
          if (v18)
          {
            v19 = *(handle + 159);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2048;
            *&buf[14] = a2;
            *&buf[22] = 2112;
            *&buf[24] = v7;
            *&buf[32] = 2112;
            *&buf[34] = v19;
            *&buf[42] = 2082;
            *&buf[44] = v17;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v17);
          v2 = v228;
          goto LABEL_23;
        }

        v2 = v228;
        if (v18)
        {
          v21 = *(handle + 159);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2112;
          *&buf[24] = v7;
          *&buf[32] = 2112;
          *&buf[34] = v21;
          v13 = "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, no backtrace";
LABEL_22:
          _os_log_impl(&dword_181A37000, v10, v11, v13, buf, 0x2Au);
        }
      }

LABEL_23:
      if (v9)
      {
        free(v9);
      }

LABEL_25:
      if (v7)
      {
        os_release(v7);
      }

      if (!*(handle + 140))
      {
        if (!a2)
        {
          v227 = (handle + 1128);
          goto LABEL_39;
        }

        callbacks = a2->callbacks;
        if (callbacks)
        {
          get_local_endpoint = callbacks->get_local_endpoint;
          if (get_local_endpoint)
          {
            v24 = get_local_endpoint(a2);
            if (v24)
            {
              *(handle + 140) = os_retain(v24);
            }
          }
        }
      }

      v227 = (handle + 1128);
      if (a2)
      {
        if (!*(handle + 141))
        {
          v25 = a2->callbacks;
          if (v25)
          {
            get_path = v25->get_path;
            if (get_path)
            {
              v27 = get_path(a2);
              if (v27)
              {
                *(handle + 141) = os_retain(v27);
              }
            }
          }
        }
      }

LABEL_39:
      v28 = *(handle + 4);
      v29 = *(handle + 111);
      v231 = (v29 | v28) == 0;
      if (v29)
      {
        v30 = v28 == 0;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(handle + 4);
      }

      if (v30)
      {
        while (1)
        {
          v31 = *(v29 + 32);
          if (v31)
          {
            break;
          }

          v29 = *(v29 + 536);
          if (!v29)
          {
            v31 = 0;
            break;
          }
        }
      }

      *v237 = 0;
      *&v237[8] = v237;
      *&v237[16] = 0x2000000000;
      v238 = 0;
      v32 = _nw_parameters_copy_default_protocol_stack();
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL43nw_http3_set_prohibit_joining_on_parametersP11nw_protocolP13nw_parameters_block_invoke;
      *&buf[24] = &unk_1E6A38D10;
      *&buf[32] = v237;
      *&buf[40] = v2;
      nw_protocol_stack_iterate_application_protocols(v32, buf);
      if (*(*&v237[8] + 24) == 1)
      {
        v33 = nw_protocol_stack_copy_transport_protocol(v32);
        if (v33)
        {
          v34 = v33;
          v35 = _nw_protocol_options_copy_definition();
          identifier = nw_protocol_definition_get_identifier(v35);
          if (gLogDatapath == 1)
          {
            v201 = identifier;
            v202 = __nwlog_obj();
            if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
            {
              name = v228->identifier->name;
              if (!name)
              {
                name = "invalid";
              }

              *type = 136446978;
              *&type[4] = "nw_http3_set_prohibit_joining_on_parameters";
              *&type[12] = 2080;
              *&type[14] = name;
              *&type[22] = 2048;
              *&type[24] = v228;
              *&type[32] = 2080;
              *&type[34] = v201;
              _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_DEBUG, "%{public}s %s (%p) setting prohibit joining on %s", type, 0x2Au);
            }
          }

          if (v35)
          {
            os_release(v35);
          }

          _nw_protocol_options_set_prohibit_joining(v34, 1);
          *(*&v237[8] + 24) = 0;
          os_release(v34);
          v2 = v228;
        }
      }

      if (v32)
      {
        os_release(v32);
      }

      _Block_object_dispose(v237, 8);
      if (v231)
      {
        v37 = _nw_parameters_shallow_copy(v6, 1);
        v38 = nw_parameters_copy_protocol_options_legacy(v37, v2);
        if (v38)
        {
          v39 = v38;
          v40 = _nw_protocol_options_copy(v38);
          if (nw_protocol_copy_http3_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
          }

          v41 = nw_protocol_copy_http3_definition_http3_definition;
          nw_parameters_set_protocol_instance(v40, v42, handle);
          if (v41)
          {
            os_release(v41);
          }

          v43 = nw_parameters_copy_default_protocol_stack(v37);
          nw_protocol_stack_replace_protocol_with_handle(v43, v2, v40);
          if (v43)
          {
            os_release(v43);
          }

          if (v40)
          {
            os_release(v40);
          }

          os_release(v39);
        }

        else if ((handle[1399] & 0x20) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v45 = *(handle + 326);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = handle + 1313;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v45;
            *&buf[38] = 2048;
            *&buf[40] = v37;
            *&buf[48] = 2048;
            *&buf[50] = v6;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to find http3 options in new parameters %p, copy of %p", buf, 0x3Au);
          }
        }

        v46 = *(handle + 142);
        if (v46)
        {
          os_release(v46);
        }

        *(handle + 142) = v37;
      }

      v47 = *(handle + 2);
      v48 = *(handle + 139);
      v49 = malloc_type_calloc(1uLL, 0x2E0uLL, 0x1BA78196uLL);
      v50 = v49;
      v229 = a2;
      if (v49)
      {
        bzero(v49, 0x2E0uLL);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        v52 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_create";
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        *&buf[24] = 736;
        LODWORD(v223) = 32;
        v54 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v223);
        result = __nwlog_should_abort(v54);
        if (result)
        {
          goto LABEL_418;
        }

        free(v54);
        bzero(0, 0x2E0uLL);
        MEMORY[0x118] = 0;
        MEMORY[0x120] = 0;
        MEMORY[0x128] = 0;
        MEMORY[0x130] = 0;
        MEMORY[0x138] = 0;
        MEMORY[0x140] = 0;
        MEMORY[0x148] = 0;
        MEMORY[0x149] = 0;
        MEMORY[0x198] = 0;
        MEMORY[0x1A0] &= ~1u;
        MEMORY[0x1F0] = 0;
        MEMORY[0x1F8] &= ~1u;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v55 = gLogObj;
        v56 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
        *buf = 136446210;
        *&buf[4] = "nw_http3_stream_create";
        LODWORD(v224) = 12;
        v57 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s strict_placement_new(nw_protocol_http3_stream, strict_calloc(1, sizeof(nw_protocol_http3_stream)),) failed", buf, v224);
        result = __nwlog_should_abort(v57);
        if (result)
        {
          goto LABEL_418;
        }

        free(v57);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *&buf[24] = v50;
      *type = MEMORY[0x1E69E9820];
      *&type[8] = 0x40000000;
      *&type[16] = ___ZL22nw_http3_stream_createPK22nw_protocol_identifierP17nw_protocol_http3P11nw_endpointP13nw_parametersb_block_invoke;
      *&type[24] = &unk_1E6A38D38;
      *&type[32] = buf;
      *(v50 + 336) = _Block_copy(type);
      _Block_object_dispose(buf, 8);
      *(v50 + 16) = v47;
      if (nw_protocol_http3_stream_get_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_stream_get_callbacks(void)::onceToken, &__block_literal_global_95);
      }

      *(v50 + 24) = &nw_protocol_http3_stream_get_callbacks(void)::protocol_callbacks;
      *(v50 + 40) = v50;
      if (nw_protocol_http3_identifier::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      }

      *(v50 + 80) = &nw_protocol_http3_identifier::http3_protocol_identifier;
      if (nw_protocol_http3_stream_get_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_stream_get_callbacks(void)::onceToken, &__block_literal_global_95);
      }

      *(v50 + 88) = &nw_protocol_http3_stream_get_callbacks(void)::protocol_callbacks;
      *(v50 + 104) = v50;
      *(v50 + 344) = handle;
      *(v50 + 128) = -1;
      *(v50 + 136) = 0;
      *(v50 + 144) = 0;
      *(v50 + 152) = v50;
      *(v50 + 160) = 0;
      *(v50 + 168) = 0;
      *(v50 + 176) = 0;
      *(v50 + 192) = 0;
      *(v50 + 200) = 0;
      *(v50 + 184) = v50 + 176;
      *(v50 + 208) = 0;
      if (v48)
      {
        v58 = os_retain(v48);
      }

      else
      {
        v58 = 0;
      }

      *(v50 + 352) = v58;
      *(v50 + 360) = os_retain(v6);
      *(v50 + 376) = 0;
      *(v50 + 272) = -1;
      v59 = nw_frame_create(0, 0, 0, 0, 0);
      *(v50 + 216) = 0;
      *(v50 + 392) = v59;
      *(v50 + 224) = v50 + 216;
      *(v50 + 480) = 0;
      *(v50 + 488) = 0;
      *(v50 + 732) |= 0x10u;
      if (_nw_parameters_get_logging_disabled(v6))
      {
        v60 = 0x2000;
      }

      else
      {
        v60 = 0;
      }

      *(v50 + 732) = *(v50 + 732) & 0xDFFF | v60;
      *(v50 + 328) = *v230 & 1;
      *(v50 + 240) = -1;
      *(v50 + 264) = -1;
      v61 = v6;
      v62 = _nw_parameters_copy_protocol_options_with_level();

      if (!v62 || (singleton = nw_http_messaging_options_copy_transaction_metadata(v62), os_release(v62), !singleton))
      {
        if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
        }

        singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_transaction_definition_definition);
      }

      *(v50 + 400) = singleton;
      v64 = *(v50 + 732);
      if (v231)
      {
        v65 = 2;
      }

      else
      {
        v65 = 0;
      }

      *(v50 + 732) = v64 & 0xFFFD | v65;
      if ((v64 & 0x2000) == 0 && gLogDatapath == 1)
      {
        v173 = __nwlog_obj();
        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
        {
          v174 = *(*(v50 + 344) + 1304);
          v175 = *(v50 + 240);
          *buf = 136447490;
          *&buf[4] = "nw_http3_stream_create";
          *&buf[12] = 2082;
          *&buf[14] = v50 + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v174;
          *&buf[38] = 2048;
          *&buf[40] = v175;
          *&buf[48] = 2048;
          *&buf[50] = v50;
          _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> created HTTP/3 stream %p", buf, 0x3Au);
        }
      }

      if (a2)
      {
        nw_protocol_set_input_handler(v50, a2);
        *v50 = *a2->flow_id;
        nw_protocol_set_output_handler(a2, v50);
        *(v50 + 152) = v50;
        v66 = a2->callbacks;
        if (v66)
        {
          supports_external_data = v66->supports_external_data;
          if (supports_external_data)
          {
            *(v50 + 732) = *(v50 + 732) & 0xFFFE | supports_external_data(a2);
          }
        }

        v68 = *(v50 + 360);
        v69 = nw_protocol_get_parameters(a2);
        if (!v69)
        {
          v176 = v61;
          v177 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_add_input_handler";
          LODWORD(v223) = 12;
          v178 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v177, 16, "%{public}s called with null parameters", buf, v223);
          type[0] = OS_LOG_TYPE_ERROR;
          v237[0] = 0;
          if (!__nwlog_fault(v178, type, v237))
          {
            goto LABEL_366;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v179 = __nwlog_obj();
            v180 = type[0];
            if (!os_log_type_enabled(v179, type[0]))
            {
              goto LABEL_366;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v181 = "%{public}s called with null parameters";
LABEL_364:
            v206 = v179;
            v207 = v180;
LABEL_365:
            _os_log_impl(&dword_181A37000, v206, v207, v181, buf, 0xCu);
            goto LABEL_366;
          }

          if (v237[0] != 1)
          {
            v179 = __nwlog_obj();
            v180 = type[0];
            if (!os_log_type_enabled(v179, type[0]))
            {
              goto LABEL_366;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v181 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_364;
          }

          v193 = __nw_create_backtrace_string();
          v194 = __nwlog_obj();
          v195 = type[0];
          v196 = os_log_type_enabled(v194, type[0]);
          if (v193)
          {
            if (v196)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v193;
              _os_log_impl(&dword_181A37000, v194, v195, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v193);
          }

          else if (v196)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v181 = "%{public}s called with null parameters, no backtrace";
LABEL_408:
            v206 = v194;
            v207 = v195;
            goto LABEL_365;
          }

LABEL_366:
          if (!v178)
          {
LABEL_368:
            v85 = v229;
            v61 = v176;
            goto LABEL_143;
          }

LABEL_367:
          free(v178);
          goto LABEL_368;
        }

        v70 = v69;
        *(v50 + 360) = os_retain(v69);
        v71 = nw_parameters_copy_context(v68);
        v72 = _nw_parameters_copy_context();
        if (nw_context_shares_workloop(v71, v72))
        {
LABEL_131:
          if (v71)
          {
            os_release(v71);
          }

          if (v72)
          {
            os_release(v72);
          }

          if (v68)
          {
            os_release(v68);
          }

          v84 = *(v50 + 344);
          v85 = v229;
          if (v84)
          {
            nw_http3_stream_replace_protocol_instance(v50, *(v50 + 360), v84, v50);
            v86 = v70;
            v87 = _nw_parameters_copy_protocol_options_with_level();

            if (v87)
            {
              v88 = v87;
              _nw_protocol_options_get_log_id_str(v88, (v50 + 632));

              *(v50 + 628) = _nw_protocol_options_get_log_id_num(v88);
              *(v50 + 624) = nw_http3_get_stream_mode(v88);
              *(v50 + 264) = nw_http3_get_webtransport_session_id(v88);
              os_release(v88);
            }

            else if ((*(v50 + 732) & 0x2000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v89 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v90 = *(*(v50 + 344) + 1304);
                v91 = *(v50 + 240);
                v92 = *(v50 + 360);
                *buf = 136447746;
                *&buf[4] = "nw_http3_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v50 + 632;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v90;
                *&buf[38] = 2048;
                *&buf[40] = v91;
                *&buf[48] = 2048;
                *&buf[50] = v50;
                *&buf[58] = 2048;
                *&buf[60] = v92;
                _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to access options for protocol %p, parameters %p", buf, 0x44u);
              }
            }

            goto LABEL_143;
          }

          v176 = v61;
          v182 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_add_input_handler";
          LODWORD(v223) = 12;
          v178 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v182, 16, "%{public}s called with null options_protocol", buf, v223);
          type[0] = OS_LOG_TYPE_ERROR;
          v237[0] = 0;
          if (__nwlog_fault(v178, type, v237))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v179 = __nwlog_obj();
              v180 = type[0];
              if (!os_log_type_enabled(v179, type[0]))
              {
                goto LABEL_366;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              v181 = "%{public}s called with null options_protocol";
              goto LABEL_364;
            }

            if (v237[0] != 1)
            {
              v179 = __nwlog_obj();
              v180 = type[0];
              if (!os_log_type_enabled(v179, type[0]))
              {
                goto LABEL_366;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              v181 = "%{public}s called with null options_protocol, backtrace limit exceeded";
              goto LABEL_364;
            }

            v197 = __nw_create_backtrace_string();
            v194 = __nwlog_obj();
            v195 = type[0];
            v198 = os_log_type_enabled(v194, type[0]);
            if (v197)
            {
              if (v198)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v197;
                _os_log_impl(&dword_181A37000, v194, v195, "%{public}s called with null options_protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v197);
              if (!v178)
              {
                goto LABEL_368;
              }

              goto LABEL_367;
            }

            if (v198)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              v181 = "%{public}s called with null options_protocol, no backtrace";
              goto LABEL_408;
            }
          }

          goto LABEL_366;
        }

        v225 = v61;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446978;
        *&buf[4] = "nw_http3_stream_add_input_handler";
        *&buf[12] = 2048;
        *&buf[14] = v229;
        *&buf[22] = 2112;
        *&buf[24] = v72;
        *&buf[32] = 2112;
        *&buf[34] = v71;
        LODWORD(v223) = 42;
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@", buf, v223);
        type[0] = OS_LOG_TYPE_ERROR;
        v237[0] = 0;
        if (__nwlog_fault(v73, type, v237))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v74 = gLogObj;
            v75 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446978;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2048;
              *&buf[14] = v229;
              *&buf[22] = 2112;
              *&buf[24] = v72;
              *&buf[32] = 2112;
              *&buf[34] = v71;
              v76 = "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@";
              v77 = v74;
              v78 = v75;
LABEL_127:
              _os_log_impl(&dword_181A37000, v77, v78, v76, buf, 0x2Au);
            }
          }

          else if (v237[0] == 1)
          {
            v79 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v80 = gLogObj;
            HIDWORD(v223) = type[0];
            v81 = os_log_type_enabled(gLogObj, type[0]);
            if (v79)
            {
              if (v81)
              {
                *buf = 136447234;
                *&buf[4] = "nw_http3_stream_add_input_handler";
                *&buf[12] = 2048;
                *&buf[14] = v229;
                *&buf[22] = 2112;
                *&buf[24] = v72;
                *&buf[32] = 2112;
                *&buf[34] = v71;
                *&buf[42] = 2082;
                *&buf[44] = v79;
                _os_log_impl(&dword_181A37000, v80, BYTE4(v223), "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v79);
              goto LABEL_128;
            }

            if (v81)
            {
              *buf = 136446978;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2048;
              *&buf[14] = v229;
              *&buf[22] = 2112;
              *&buf[24] = v72;
              *&buf[32] = 2112;
              *&buf[34] = v71;
              v76 = "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@, no backtrace";
              v77 = v80;
              v78 = BYTE4(v223);
              goto LABEL_127;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v82 = gLogObj;
            v83 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446978;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2048;
              *&buf[14] = v229;
              *&buf[22] = 2112;
              *&buf[24] = v72;
              *&buf[32] = 2112;
              *&buf[34] = v71;
              v76 = "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@, backtrace limit exceeded";
              v77 = v82;
              v78 = v83;
              goto LABEL_127;
            }
          }
        }

LABEL_128:
        if (v73)
        {
          free(v73);
        }

        v61 = v225;
        goto LABEL_131;
      }

      v226 = v61;
      v168 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http3_stream_add_input_handler";
      LODWORD(v223) = 12;
      v169 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v168, 16, "%{public}s called with null input_protocol", buf, v223);
      type[0] = OS_LOG_TYPE_ERROR;
      v237[0] = 0;
      if (__nwlog_fault(v169, type, v237))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v170 = __nwlog_obj();
          v171 = type[0];
          if (os_log_type_enabled(v170, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v172 = "%{public}s called with null input_protocol";
LABEL_355:
            v204 = v170;
            v205 = v171;
LABEL_356:
            _os_log_impl(&dword_181A37000, v204, v205, v172, buf, 0xCu);
          }
        }

        else if (v237[0] == 1)
        {
          v186 = __nw_create_backtrace_string();
          v187 = __nwlog_obj();
          v188 = type[0];
          v189 = os_log_type_enabled(v187, type[0]);
          if (v186)
          {
            if (v189)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v186;
              _os_log_impl(&dword_181A37000, v187, v188, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v186);
            goto LABEL_357;
          }

          if (v189)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v172 = "%{public}s called with null input_protocol, no backtrace";
            v204 = v187;
            v205 = v188;
            goto LABEL_356;
          }
        }

        else
        {
          v170 = __nwlog_obj();
          v171 = type[0];
          if (os_log_type_enabled(v170, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v172 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_355;
          }
        }
      }

LABEL_357:
      if (v169)
      {
        free(v169);
      }

      v85 = 0;
      v61 = v226;
LABEL_143:
      v93 = *(handle + 111);
      *(v50 + 536) = v93;
      if (v93)
      {
        v94 = (v93 + 544);
      }

      else
      {
        v94 = handle + 896;
      }

      *v94 = v50 + 536;
      *(handle + 111) = v50;
      *(v50 + 544) = handle + 888;
      v95 = *(handle + 162);
      if (v95)
      {
        nw_protocol_replace_input_handler(*(v95 + 32), *(handle + 162), v50);
        v96 = *(v95 + 64);
        if (v96)
        {
          v97 = *(v50 + 184);
          *v97 = v96;
          *(*(v95 + 64) + 40) = v97;
          *(v50 + 184) = *(v95 + 72);
          *(v95 + 64) = 0;
          *(v95 + 72) = v95 + 64;
        }

        *(v50 + 264) = *(v95 + 96);
        *(v50 + 732) = *(v50 + 732) & 0xFBFF | (((*(v95 + 188) & 4) != 0) << 10);
        nw_protocol_http3_untyped_stream_destroy(v95);
        *(handle + 162) = 0;
      }

      if (*(v50 + 624))
      {
        if (nw_http3_passthrough_stream_get_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_http3_passthrough_stream_get_callbacks(void)::onceToken, &__block_literal_global_158);
        }

        *(v50 + 24) = &nw_http3_passthrough_stream_get_callbacks(void)::protocol_callbacks;
        if ((*(v50 + 732) & 0x400) != 0)
        {
          v98 = *(v50 + 336);
          v99 = *(*(v50 + 344) + 1272);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL43nw_http3_stream_reinitialize_as_passthroughP24nw_protocol_http3_stream_block_invoke;
          *&buf[24] = &unk_1E6A391E0;
          *&buf[32] = v98;
          *&buf[40] = v50;
          nw_queue_context_async(v99, buf);
        }
      }

      if (*(handle + 6))
      {
        if (v231)
        {
LABEL_157:
          *handle = *v85->flow_id;
          if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
          {
            v190 = __nwlog_obj();
            if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
            {
              v191 = *(handle + 326);
              v192 = *(handle + 6);
              *buf = 136447746;
              *&buf[4] = "nw_protocol_http3_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v191;
              *&buf[38] = 2048;
              *&buf[40] = handle;
              *&buf[48] = 2048;
              *&buf[50] = v192;
              *&buf[58] = 2048;
              *&buf[60] = v85;
              _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> protocol %p protocol->default_input_handler %p input_protocol %p", buf, 0x44u);
            }
          }

          if (!*(handle + 154))
          {
            v118 = _nw_parameters_copy_context();
            v119 = *(handle + 153);
            if (v119)
            {
              os_release(v119);
              *(handle + 153) = 0;
            }

            v120 = nw_path_copy_flow_registration(v118, handle);
            *(handle + 153) = v120;
            if (v118)
            {
              os_release(v118);
              v120 = *(handle + 153);
            }

            if (v120)
            {
              v121 = nw_path_flow_registration_copy_endpoint(v120);
              v122 = nw_path_flow_registration_copy_parameters(*(handle + 153));
              v123 = nw_endpoint_copy_association_with_evaluator(v121, v122, 0);
              *(handle + 154) = v123;
              if (v121)
              {
                os_release(v121);
                v123 = *(handle + 154);
              }

              if (v123)
              {
                v124 = nw_protocol_instance_stub_create(handle);
                *(handle + 155) = v124;
                nw_association_register_internal(*(handle + 154), v61, v124, 0, 0, &__block_literal_global_164);
                v125 = nw_association_copy_current_path(*(handle + 154), v122);
                if (v125)
                {
                  v126 = v125;
                  v127 = nw_path_copy_for_flow_registration(v125, *(handle + 153));
                  if (v127)
                  {
                    v128 = v127;
                    v129 = *v227;
                    if (*v227 != v128)
                    {
                      if (v129)
                      {
                        os_release(v129);
                        *v227 = 0;
                      }

                      *v227 = os_retain(v128);
                    }

                    if (nw_path_has_flows(v128))
                    {
                      v130 = 64;
                    }

                    else
                    {
                      v130 = 0;
                    }

                    handle[1399] = handle[1399] & 0xBF | v130;
                    v131 = _nw_parameters_copy_effective_proxy_config(v61);
                    if (v131)
                    {
                      v132 = v131;
                      if (nw_path_has_proxy_config(v126, v131))
                      {
                        v133 = *(handle + 156);
                        if (v133)
                        {
                          os_release(v133);
                        }

                        *(handle + 156) = v132;
                      }

                      else
                      {
                        os_release(v132);
                      }
                    }

                    os_release(v126);
                  }

                  else
                  {
                    v128 = v126;
                  }

                  os_release(v128);
                }
              }

              if (v122)
              {
                os_release(v122);
              }
            }
          }

          v100 = v61;
          v101 = _nw_parameters_copy_protocol_options_with_level();

          if (!v101)
          {
            goto LABEL_259;
          }

          v102 = v101;
          _nw_protocol_options_get_log_id_str(v102, handle + 1313);

          *(handle + 655) = _nw_protocol_options_get_log_id_num(v102);
          *(handle + 130) = 1000 * nw_http3_get_idle_timeout(v102);
          *(handle + 323) = nw_http3_get_keepalive_mode(v102);
          if (nw_http3_get_0rtt_enabled(v102))
          {
            v103 = 32;
          }

          else
          {
            v103 = 0;
          }

          *v230 = *v230 & 0xFFDF | v103;
          handle[1312] = nw_http3_get_sessions_to_request(v102);
          nw_http3_get_resumable_session_agent(v102, (handle + 840));
          *(handle + 326) = nw_protocol_get_next_instance_id();
          top_id = _nw_protocol_options_get_top_id(v102);
          if ((handle[1399] & 0x20) == 0)
          {
            v105 = top_id;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v106 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v107 = *(handle + 326);
              *buf = 136447490;
              *&buf[4] = "nw_protocol_http3_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v107;
              *&buf[38] = 1024;
              *&buf[40] = v107;
              *&buf[44] = 1024;
              *&buf[46] = v105;
              _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created HTTP/3 and assigned instance ID: %u from C%u", buf, 0x32u);
            }
          }

          v108 = *(handle + 107);
          if (v108)
          {
            _Block_release(v108);
            *(handle + 107) = 0;
          }

          v109 = *(handle + 108);
          if (v109)
          {
            dispatch_release(v109);
            *(handle + 108) = 0;
          }

          v110 = *(handle + 109);
          if (v110)
          {
            _Block_release(v110);
            *(handle + 109) = 0;
          }

          v111 = *(handle + 110);
          if (v111)
          {
            dispatch_release(v111);
            *(handle + 110) = 0;
          }

          *(handle + 107) = nw_http3_copy_resumable_session_handler(v102);
          *(handle + 108) = nw_http3_copy_resumable_session_handler_queue(v102);
          *(handle + 109) = nw_http3_copy_remote_settings_handler(v102);
          *(handle + 110) = nw_http3_copy_remote_settings_handler_queue(v102);
          v233 = 0;
          v234 = 0;
          v232 = 0;
          if (!nw_http3_get_initial_remote_settings(v102, &v234, &v233, &v232))
          {
            v134 = nw_http3_copy_initial_remote_settings_data(v102);
            if (!v134)
            {
              goto LABEL_256;
            }

            goto LABEL_255;
          }

          memset(type, 0, 63);
          v112 = v233;
          v113 = v234;
          v114 = v232;
          memset(buf, 0, 63);
          if (v234 == -1)
          {
            v135 = 0;
          }

          else
          {
            __src = 6;
            buf[0] = 6;
            if (v234 > 0x3F)
            {
              if (v234 >> 14)
              {
                if (v234 >> 30)
                {
                  if (v234 >> 62)
                  {
                    v136 = __nwlog_obj();
                    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                    {
                      v137 = 3;
                    }

                    else
                    {
                      v137 = 2;
                    }

                    *v237 = 136446466;
                    *&v237[4] = "_http_vle_encode";
                    *&v237[12] = 2048;
                    *&v237[14] = v113;
                    LODWORD(v223) = 22;
                    v138 = _os_log_send_and_compose_impl(v137, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s unable to encode value: %llu", v237, v223);
                    result = __nwlog_should_abort(v138);
                    if (result)
                    {
                      goto LABEL_418;
                    }

                    free(v138);
                    v115 = 0;
                  }

                  else
                  {
                    __src = bswap64(v234 | 0xC000000000000000);
                    v115 = 8;
                  }
                }

                else
                {
                  __src = bswap32(v234 | 0x80000000);
                  v115 = 4;
                }
              }

              else
              {
                __src = bswap32(v234 | 0x4000) >> 16;
                v115 = 2;
              }
            }

            else
            {
              __src = v234;
              v115 = 1;
            }

            memcpy(&buf[1], &__src, v115);
            v135 = v115 + 1;
          }

          __src = 1;
          buf[v135] = 1;
          if (v112 > 0x3F)
          {
            if (v112 >> 14)
            {
              if (v112 >> 30)
              {
                if (v112 >> 62)
                {
                  v140 = __nwlog_obj();
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    v141 = 3;
                  }

                  else
                  {
                    v141 = 2;
                  }

                  *v237 = 136446466;
                  *&v237[4] = "_http_vle_encode";
                  *&v237[12] = 2048;
                  *&v237[14] = v112;
                  LODWORD(v223) = 22;
                  v142 = _os_log_send_and_compose_impl(v141, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s unable to encode value: %llu", v237, v223);
                  result = __nwlog_should_abort(v142);
                  if (result)
                  {
                    goto LABEL_418;
                  }

                  free(v142);
                  v139 = 0;
                }

                else
                {
                  __src = bswap64(v112 | 0xC000000000000000);
                  v139 = 8;
                }
              }

              else
              {
                __src = bswap32(v112 | 0x80000000);
                v139 = 4;
              }
            }

            else
            {
              __src = bswap32(v112 | 0x4000) >> 16;
              v139 = 2;
            }
          }

          else
          {
            __src = v112;
            v139 = 1;
          }

          memcpy(&buf[v135 + 1], &__src, v139);
          v143 = v139 + v135 + 1;
          __src = 7;
          buf[v143] = 7;
          if (v114 <= 0x3F)
          {
            __src = v114;
            v144 = 1;
LABEL_254:
            memcpy(&buf[v143 + 1], &__src, v144);
            memcpy(type, buf, v144 + v143 + 1);
            v134 = dispatch_data_create(type, v144 + v143 + 1, 0, 0);
LABEL_255:
            *(handle + 146) = v134;
            *v230 |= 0x40u;
LABEL_256:
            max_webtransport_sessions = nw_http3_get_max_webtransport_sessions(v102);
            if (max_webtransport_sessions)
            {
              v149 = max_webtransport_sessions;
              webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(handle + 158));
              nw_webtransport_connection_state_set_max_sessions(webtransport_state, v149);
            }

            os_release(v102);
            goto LABEL_259;
          }

          if (!(v114 >> 14))
          {
            __src = bswap32(v114 | 0x4000) >> 16;
            v144 = 2;
            goto LABEL_254;
          }

          if (!(v114 >> 30))
          {
            __src = bswap32(v114 | 0x80000000);
            v144 = 4;
            goto LABEL_254;
          }

          if (!(v114 >> 62))
          {
            __src = bswap64(v114 | 0xC000000000000000);
            v144 = 8;
            goto LABEL_254;
          }

          v145 = __nwlog_obj();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
          {
            v146 = 3;
          }

          else
          {
            v146 = 2;
          }

          *v237 = 136446466;
          *&v237[4] = "_http_vle_encode";
          *&v237[12] = 2048;
          *&v237[14] = v114;
          LODWORD(v223) = 22;
          v147 = _os_log_send_and_compose_impl(v146, 0, 0, 0, &dword_181A37000, v145, 16, "%{public}s unable to encode value: %llu", v237, v223);
          result = __nwlog_should_abort(v147);
          if (!result)
          {
            free(v147);
            v144 = 0;
            goto LABEL_254;
          }

LABEL_418:
          __break(1u);
          return result;
        }
      }

      else
      {
        nw_protocol_set_input_handler(handle, v85);
        if (v231)
        {
          goto LABEL_157;
        }
      }

      if (*(v50 + 32))
      {
LABEL_259:
        if (*(handle + 160))
        {
          if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
          {
            v183 = __nwlog_obj();
            if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
            {
              v184 = *(handle + 326);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_http3_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v184;
              _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> deactivating destroy timer because we are active again", buf, 0x26u);
            }
          }

          nw_queue_cancel_source(*(handle + 160));
          *(handle + 160) = 0;
        }

        v151 = handle[1399];
        if ((v151 & 0x10) != 0)
        {
          handle[1399] = v151 & 0xEF;
          if (*(handle + 157) && *(handle + 323) == 2)
          {
            if ((v151 & 0x20) == 0 && gLogDatapath == 1)
            {
              v218 = __nwlog_obj();
              if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
              {
                v219 = *(handle + 326);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_http3_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = handle + 1313;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v219;
                _os_log_impl(&dword_181A37000, v218, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> re-enabling QUIC keepalives", buf, 0x26u);
              }
            }

            nw_quic_connection_set_keepalive(*(handle + 157), 0xFFFFLL);
          }

          buf[0] = 0;
          output_handler = v228->output_handler;
          if (output_handler)
          {
            v153 = output_handler->callbacks;
            if (v153)
            {
              notify = v153->notify;
              if (notify)
              {
                notify();
              }
            }
          }

          v151 = handle[1399];
        }

        if ((v151 & 0x20) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v155 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
          {
            v156 = *(handle + 326);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = handle + 1313;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v156;
            *&buf[38] = 2048;
            *&buf[40] = v85;
            *&buf[48] = 2082;
            *&buf[50] = v50 + 632;
            _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> added input handler %p from %{public}s", buf, 0x3Au);
          }
        }

        return 1;
      }

      if (v31)
      {
        v116 = *(v31 + 24);
        if (v116)
        {
          v117 = *v116;
          if (v117)
          {
            v117(v31, v50);
            goto LABEL_259;
          }
        }

        v199 = __nwlog_obj();
        v200 = *(v31 + 16);
        if (!v200)
        {
          v200 = "invalid";
        }
      }

      else
      {
        v199 = __nwlog_obj();
        v200 = "invalid";
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v200;
      LODWORD(v223) = 22;
      v208 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s protocol %{public}s has invalid add_input_handler callback", buf, v223);
      type[0] = OS_LOG_TYPE_ERROR;
      v237[0] = 0;
      if (!__nwlog_fault(v208, type, v237))
      {
LABEL_416:
        if (v208)
        {
          free(v208);
        }

        goto LABEL_259;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v209 = __nwlog_obj();
        v210 = type[0];
        if (os_log_type_enabled(v209, type[0]))
        {
          v211 = "invalid";
          if (v31 && *(v31 + 16))
          {
            v211 = *(v31 + 16);
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v211;
          _os_log_impl(&dword_181A37000, v209, v210, "%{public}s protocol %{public}s has invalid add_input_handler callback", buf, 0x16u);
        }

        goto LABEL_416;
      }

      v212 = v85;
      if (v237[0] == 1)
      {
        v213 = __nw_create_backtrace_string();
        v214 = __nwlog_obj();
        v215 = type[0];
        v216 = os_log_type_enabled(v214, type[0]);
        if (v213)
        {
          if (v216)
          {
            v217 = "invalid";
            if (v31 && *(v31 + 16))
            {
              v217 = *(v31 + 16);
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v217;
            *&buf[22] = 2082;
            *&buf[24] = v213;
            _os_log_impl(&dword_181A37000, v214, v215, "%{public}s protocol %{public}s has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v213);
          goto LABEL_415;
        }

        v85 = v212;
        if (!v216)
        {
          goto LABEL_416;
        }

        v222 = "invalid";
        if (v31 && *(v31 + 16))
        {
          v222 = *(v31 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v222;
        v221 = "%{public}s protocol %{public}s has invalid add_input_handler callback, no backtrace";
      }

      else
      {
        v214 = __nwlog_obj();
        v215 = type[0];
        if (!os_log_type_enabled(v214, type[0]))
        {
          goto LABEL_416;
        }

        v220 = "invalid";
        if (v31 && *(v31 + 16))
        {
          v220 = *(v31 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v220;
        v221 = "%{public}s protocol %{public}s has invalid add_input_handler callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v214, v215, v221, buf, 0x16u);
LABEL_415:
      v85 = v212;
      goto LABEL_416;
    }

    v166 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v166, 16, "%{public}s called with null parameters", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v237[0] = 0;
    if (!__nwlog_fault(v158, type, v237))
    {
      goto LABEL_399;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v159 = __nwlog_obj();
      v160 = type[0];
      if (!os_log_type_enabled(v159, type[0]))
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null parameters";
      goto LABEL_398;
    }

    if (v237[0] != 1)
    {
      v159 = __nwlog_obj();
      v160 = type[0];
      if (!os_log_type_enabled(v159, type[0]))
      {
        goto LABEL_399;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v161 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_398;
    }

    backtrace_string = __nw_create_backtrace_string();
    v159 = __nwlog_obj();
    v160 = type[0];
    v185 = os_log_type_enabled(v159, type[0]);
    if (backtrace_string)
    {
      if (v185)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v165 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_323;
      }

LABEL_324:
      free(backtrace_string);
      goto LABEL_399;
    }

    if (!v185)
    {
      goto LABEL_399;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v161 = "%{public}s called with null parameters, no backtrace";
LABEL_398:
    _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0xCu);
LABEL_399:
    if (v158)
    {
      free(v158);
    }

    return 0;
  }

  if ((handle[1399] & 0x20) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v16 = *(handle + 326);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 1313;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v16;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot add input handler to closed connection", buf, 0x26u);
    return 0;
  }

  return result;
}

void ___ZL43nw_http3_set_prohibit_joining_on_parametersP11nw_protocolP13nw_parameters_block_invoke(uint64_t a1, NSObject *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  protocol_handle = nw_protocol_options_get_protocol_handle(a2);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = nw_protocol_options_copy_definition(a2);
    identifier = nw_protocol_definition_get_identifier(v5);
    if (gLogDatapath == 1)
    {
      v7 = identifier;
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 40);
        v10 = "invalid";
        if (v9 && *(v9 + 16))
        {
          v10 = *(v9 + 16);
        }

        v11 = 136446978;
        v12 = "nw_http3_set_prohibit_joining_on_parameters_block_invoke";
        v13 = 2080;
        v14 = v10;
        v15 = 2048;
        v16 = v9;
        v17 = 2080;
        v18 = v7;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %s (%p) setting prohibit joining on %s", &v11, 0x2Au);
      }
    }

    if (v5)
    {
      os_release(v5);
    }

    nw_protocol_options_set_prohibit_joining(a2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (*(a1 + 40) == protocol_handle)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t _nw_protocol_options_set_prohibit_joining(uint64_t a1, char a2)
{
  v4 = *(*a1 + 184);

  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_181D384EC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = (v1 + 16);
  *(v1 + 32) = 0;
  *(v1 + 40) = xmmword_182AE3C80;
  *(v1 + 56) = xmmword_182AE6A00;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_182AE3C90;
  *(v1 + 104) = 0xF000000000000007;
  v5 = sub_181AC9084();
  v7 = v5;
  v8 = v5[4];
  v9 = v5[3] + v8;
  if (v5[2] < v9)
  {
    v9 = v5[2];
  }

  v69 = v5;
  v70 = v8;
  v71 = v9;
  if (v8 == v9)
  {
LABEL_4:
    if (sub_181AC81FC(v6))
    {
      v7 = v69;
      v8 = v70;
      goto LABEL_6;
    }

    v27 = sub_181A54748();
    v29 = v27;
    v30 = v27[4];
    v31 = v27[3] + v30;
    if (v27[2] < v31)
    {
      v31 = v27[2];
    }

    v69 = v27;
    v70 = v30;
    v71 = v31;
    if (v30 == v31)
    {
LABEL_24:
      if (sub_181AC81FC(v28))
      {
        v29 = v69;
        v30 = v70;
        goto LABEL_26;
      }

      ProtocolStack.transport.getter(&v69);
      v48 = v70;
      if ((~v70 & 0xF000000000000007) != 0)
      {
        v49 = v2[4];
        v50 = v2[5];
        v2[4] = v69;
        v2[5] = v48;
        sub_181A5301C(v49, v50);
      }

      v51 = a1[13];
      if ((~v51 & 0xF000000000000007) != 0)
      {
        v52 = a1[12];
        v53 = v2[12];
        v54 = v2[13];
        v2[12] = v52;
        v2[13] = v51;
        sub_181AACFF4(v52, v51);
        sub_181A53008(v53, v54);
      }

      v55 = a1[11];
      if ((~v55 & 0xF000000000000007) != 0)
      {
        v56 = a1[10];
        v57 = v2[10];
        v58 = v2[11];
        v2[10] = v56;
        v2[11] = v55;
        sub_181AACFF4(v56, v55);
        sub_181A53008(v57, v58);
      }

      swift_beginAccess();
      v59 = a1[7];
      if ((~v59 & 0xF000000000000007) != 0)
      {
        v60 = a1[6];
        swift_beginAccess();
        v61 = v2[6];
        v62 = v2[7];
        v2[6] = v60;
        v2[7] = v59;
        sub_181B2C3E0(v60, v59);
        sub_181A52FE0(v61, v62);
      }

      ProtocolStack.link.getter(v68);

      if (v68[0] != 1)
      {
        v63 = v68[1];
        v64 = v2[8];
        v65 = v2[9];
        v2[8] = v68[0];
        v2[9] = v63;
        sub_181AC3890(v64, v65);
      }

      return v2;
    }

LABEL_26:
    while (1)
    {
      v32 = v30 + 1;
      v70 = v30 + 1;
      v33 = v29 + 16 * v30;
      v34 = *(v33 + 40);
      v35 = *(v33 + 48);
      sub_181B2C3E0(v34, v35);
      result = sub_181A54748();
      v67 = result;
      v36 = *(result + 24);
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v38 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v38[2] < v37 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v37, 0);
        v38 = v67;
      }

      v39 = v38[3];
      v40 = v38[4];
      v22 = __OFADD__(v40, v39);
      v41 = v40 + v39;
      if (v22)
      {
        goto LABEL_56;
      }

      if (v39 < 0)
      {
        if (v41 < 0)
        {
          v45 = v38[2];
          v22 = __OFADD__(v41, v45);
          v41 += v45;
          if (v22)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        v42 = v38[2];
        v43 = __OFSUB__(v41, v42);
        v44 = v41 - v42;
        if (v44 < 0 == v43)
        {
          v41 = v44;
          if (v43)
          {
            goto LABEL_59;
          }
        }
      }

      v46 = &v38[2 * v41];
      v46[5] = v34;
      v46[6] = v35;
      v22 = __OFADD__(v39, 1);
      v47 = v39 + 1;
      if (v22)
      {
        goto LABEL_57;
      }

      v38[3] = v47;
      v2[3] = v38;

      v30 = v32;
      if (v32 == v71)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v10 = v8 + 1;
      v70 = v8 + 1;
      v11 = v7 + 16 * v8;
      v12 = *(v11 + 40);
      v13 = *(v11 + 48);
      sub_181B2C3E0(v12, v13);
      result = sub_181AC9084();
      v66 = result;
      v15 = *(result + 24);
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v17[2] < v16 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v16, 0);
        v17 = v66;
      }

      v18 = v17[3];
      v19 = v17[4];
      v22 = __OFADD__(v19, v18);
      v20 = v19 + v18;
      if (v22)
      {
        goto LABEL_53;
      }

      if (v18 < 0)
      {
        if (v20 < 0)
        {
          v24 = v17[2];
          v22 = __OFADD__(v20, v24);
          v20 += v24;
          if (v22)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v21 = v17[2];
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v23 < 0 == v22)
        {
          v20 = v23;
          if (v22)
          {
            goto LABEL_58;
          }
        }
      }

      v25 = &v17[2 * v20];
      v25[5] = v12;
      v25[6] = v13;
      v22 = __OFADD__(v18, 1);
      v26 = v18 + 1;
      if (v22)
      {
        goto LABEL_54;
      }

      v17[3] = v26;
      *v4 = v17;

      v8 = v10;
      if (v10 == v71)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void nw_parameters_set_protocol_instance(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = v4;
  if (v4)
  {
    _nw_protocol_options_set_instance(v4, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_set_protocol_instance";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol_parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_protocol_instance";
        v10 = "%{public}s called with null protocol_parameters";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_parameters_set_protocol_instance";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_parameters_set_protocol_instance";
        v10 = "%{public}s called with null protocol_parameters, no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_protocol_instance";
        v10 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void nw_protocol_stack_replace_protocol_with_handle(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_stack_replace_protocol_with_handle";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null stack", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_stack_replace_protocol_with_handle";
        v12 = "%{public}s called with null stack";
LABEL_32:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_protocol_stack_replace_protocol_with_handle";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v9);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_protocol_stack_replace_protocol_with_handle";
        v12 = "%{public}s called with null stack, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_stack_replace_protocol_with_handle";
        v12 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v6)
  {
    _nw_protocol_stack_replace_protocol_with_handle(v5, a2, v6);
    goto LABEL_4;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_stack_replace_protocol_with_handle";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null new_options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v21 = "nw_protocol_stack_replace_protocol_with_handle";
      v12 = "%{public}s called with null new_options";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v18 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v21 = "nw_protocol_stack_replace_protocol_with_handle";
      v12 = "%{public}s called with null new_options, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *buf = 136446210;
      v21 = "nw_protocol_stack_replace_protocol_with_handle";
      v12 = "%{public}s called with null new_options, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_stack_replace_protocol_with_handle";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null new_options, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t sub_181D38F90(uint64_t a1, uint64_t a2, uint64_t ObjectType)
{
  v116 = sub_182AD2388();
  v6 = *v116;
  v126 = *v116;

  v117 = v3;
  v7 = sub_181AC9084();
  v9 = v7;
  v10 = v7[4];
  v11 = v7[3] + v10;
  if (v7[2] < v11)
  {
    v11 = v7[2];
  }

  v123 = v7;
  v124 = v10;
  v125 = v11;
  v115 = ObjectType;
  v118 = ObjectType | 0x4000000000000000;
  while (1)
  {
    if (v10 != v11)
    {
      goto LABEL_8;
    }

    if ((sub_181AC81FC(v8) & 1) == 0)
    {
      break;
    }

    v9 = v123;
    v10 = v124;
LABEL_8:
    v12 = v10 + 1;
    v124 = v10 + 1;
    v13 = *(v9 + 16 * v10 + 40);
    v120 = v13;
    v14 = *(v9 + 16 * v10 + 48);
    if (*(&v13 + 1) >> 62)
    {
      if (*(&v13 + 1) >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        swift_unknownObjectRetain();
        if (v15(a1, ObjectType, v14 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v16 = *(v13 + 56);
      v17 = ~v16 & 0x1000000000000007;
      v18 = v16 & 0x1000000000000000;
      if (v17)
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
      }

      else
      {
        v20 = *(v13 + 48);

        if (v20 == a1)
        {
LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            ObjectType = v31;
          }

          else
          {
            ObjectType = a2;
          }

          if (v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = v118;
          }

          v33 = v6[3];
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_153;
          }

          swift_unknownObjectRetain();
          result = swift_isUniquelyReferenced_nonNull_native();
          if (v6[2] < v34 || (result & 1) == 0)
          {
            result = sub_181B2C3FC(result, v34, 0);
            v6 = v126;
          }

          v35 = v6[3];
          v36 = v6[4];
          v27 = __OFADD__(v36, v35);
          v37 = v36 + v35;
          if (v27)
          {
            goto LABEL_154;
          }

          if (v35 < 0)
          {
            if (v37 < 0)
            {
              v41 = v6[2];
              v27 = __OFADD__(v37, v41);
              v37 += v41;
              if (v27)
              {
                goto LABEL_170;
              }
            }
          }

          else
          {
            v38 = v6[2];
            v39 = __OFSUB__(v37, v38);
            v40 = v37 - v38;
            if (v40 < 0 == v39)
            {
              v37 = v40;
              if (v39)
              {
                goto LABEL_168;
              }
            }
          }

          v42 = &v6[2 * v37];
          v42[5] = ObjectType;
          v42[6] = v32;
          v27 = __OFADD__(v35, 1);
          v43 = v35 + 1;
          if (v27)
          {
            goto LABEL_155;
          }

          v6[3] = v43;
          swift_unknownObjectRetain();
          sub_181AAD084(v120, v14);
          swift_unknownObjectRelease();
          goto LABEL_4;
        }
      }
    }

    v21 = v6[3];
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v6 = v126;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v126[2] < v14 || (result & 1) == 0)
    {
      result = sub_181B2C3FC(result, v14, 0);
      v6 = v126;
    }

    v23 = v6[3];
    v24 = v6[4];
    v27 = __OFADD__(v24, v23);
    v25 = v24 + v23;
    if (v27)
    {
      goto LABEL_117;
    }

    if (v23 < 0)
    {
      if (v25 < 0)
      {
        v29 = v6[2];
        v27 = __OFADD__(v25, v29);
        v25 += v29;
        if (v27)
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v26 = v6[2];
      v27 = __OFSUB__(v25, v26);
      v28 = v25 - v26;
      if (v28 < 0 == v27)
      {
        v25 = v28;
        if (v27)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
          v82 = swift_dynamicCastClass();
          swift_unknownObjectRetain();
          sub_181A53008(v6, v14);
          if (v82)
          {
            v83 = 0x8000000000000000;
          }

          else
          {
            v82 = a2;
            v83 = v115 | 0xA000000000000000;
          }

          goto LABEL_125;
        }
      }
    }

    v8 = v120;
    *&v6[2 * v25 + 5] = v120;
    v27 = __OFADD__(v23, 1);
    v30 = v23 + 1;
    if (v27)
    {
      goto LABEL_118;
    }

    v6[3] = v30;
LABEL_4:
    v11 = v125;
    v10 = v12;
  }

  ObjectType = v117[2];
  v117[2] = v6;

  v44 = *v116;

  v126 = v44;
  v45 = sub_181A54748();
  v6 = v45;
  v47 = v45[4];
  v48 = v45[3] + v47;
  if (v45[2] < v48)
  {
    v48 = v45[2];
  }

  v123 = v45;
  v124 = v47;
  v125 = v48;
  while (2)
  {
    if (v47 != v48)
    {
LABEL_63:
      v50 = v47 + 1;
      v124 = v47 + 1;
      v51 = *&v6[2 * v47 + 5];
      v121 = v51;
      v52 = v6[2 * v47 + 6];
      if (*(&v51 + 1) >> 62)
      {
        if (*(&v51 + 1) >> 62 == 1)
        {
          ObjectType = *(&v51 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v53 = swift_getObjectType();
          v54 = *((v52 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          swift_unknownObjectRetain();
          if (v54(a1, v53, v52 & 0x3FFFFFFFFFFFFFFFLL))
          {
            goto LABEL_84;
          }
        }
      }

      else
      {
        v55 = *(v51 + 56);
        v56 = ~v55 & 0x1000000000000007;
        v57 = v55 & 0x1000000000000000;
        if (v56)
        {
          v58 = v57 == 0;
        }

        else
        {
          v58 = 1;
        }

        if (v58)
        {
        }

        else
        {
          v59 = *(v51 + 48);

          if (v59 == a1)
          {
LABEL_84:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
            v67 = swift_dynamicCastClass();
            if (v67)
            {
              ObjectType = v67;
            }

            else
            {
              ObjectType = a2;
            }

            if (v67)
            {
              v68 = 0;
            }

            else
            {
              v68 = v118;
            }

            v69 = v44[3];
            v14 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_157;
            }

            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if (v44[2] < v14 || (result & 1) == 0)
            {
              result = sub_181B2C3FC(result, v14, 0);
              v44 = v126;
            }

            v70 = v44[3];
            v71 = v44[4];
            v27 = __OFADD__(v71, v70);
            v72 = v71 + v70;
            if (v27)
            {
              goto LABEL_158;
            }

            if (v70 < 0)
            {
              if (v72 < 0)
              {
                v77 = v44[2];
                v27 = __OFADD__(v72, v77);
                v72 += v77;
                if (v27)
                {
                  goto LABEL_171;
                }
              }
            }

            else
            {
              v73 = v44[2];
              v74 = __OFSUB__(v72, v73);
              v75 = v72 - v73;
              if (v75 < 0 == v74)
              {
                v72 = v75;
                if (v74)
                {
                  goto LABEL_169;
                }
              }
            }

            v78 = &v44[2 * v72];
            v78[5] = ObjectType;
            v78[6] = v68;
            v27 = __OFADD__(v70, 1);
            v79 = v70 + 1;
            if (v27)
            {
              goto LABEL_159;
            }

            v44[3] = v79;
            swift_unknownObjectRetain();
            sub_181AAD084(v121, v52);
            swift_unknownObjectRelease();
            goto LABEL_59;
          }
        }
      }

      v60 = v44[3];
      v14 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_119;
      }

      v44 = v126;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v126[2] < v14 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v14, 0);
        v44 = v126;
      }

      v61 = v44[3];
      v62 = v44[4];
      v27 = __OFADD__(v62, v61);
      v63 = v62 + v61;
      if (v27)
      {
        goto LABEL_120;
      }

      if (v61 < 0)
      {
        if (v63 < 0)
        {
          v76 = v44[2];
          v27 = __OFADD__(v63, v76);
          v63 += v76;
          if (v27)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        v64 = v44[2];
        v65 = __OFSUB__(v63, v64);
        v66 = v63 - v64;
        if (v66 < 0 == v65)
        {
          v63 = v66;
          if (v65)
          {
            goto LABEL_156;
          }
        }
      }

      v46 = v121;
      *&v44[2 * v63 + 5] = v121;
      v27 = __OFADD__(v61, 1);
      v49 = v61 + 1;
      if (v27)
      {
        goto LABEL_121;
      }

      v44[3] = v49;
LABEL_59:
      v48 = v125;
      v47 = v50;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v46))
  {
    v6 = v123;
    v47 = v124;
    goto LABEL_63;
  }

  v80 = v117;
  v117[3] = v44;

  ProtocolStack.transport.getter(&v123);
  v14 = v124;
  ObjectType = 0xF000000000000007;
  if ((~v124 & 0xF000000000000007) == 0)
  {
    goto LABEL_126;
  }

  v6 = v123;
  if (!sub_181BACEAC(a1))
  {
    sub_181A53008(v6, v14);
    v80 = v117;
    goto LABEL_126;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
  v81 = swift_dynamicCastClass();
  if (v81)
  {
    v82 = v81;
    v83 = 0;
    goto LABEL_124;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
  v84 = swift_dynamicCastClass();
  if (v84)
  {
    v82 = v84;
    v83 = 0x2000000000000000;
    goto LABEL_124;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
  v85 = swift_dynamicCastClass();
  if (v85)
  {
    v82 = v85;
    v83 = 0x4000000000000000;
    goto LABEL_124;
  }

LABEL_122:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v86 = swift_dynamicCastClass();
  if (!v86)
  {
    goto LABEL_160;
  }

  v82 = v86;
  v83 = 0x6000000000000000;
LABEL_124:
  swift_unknownObjectRetain();
  sub_181A53008(v6, v14);
LABEL_125:
  v80 = v117;
  v87 = v117[4];
  v88 = v117[5];
  v117[4] = v82;
  v117[5] = v83;
  sub_181A5301C(v87, v88);
LABEL_126:
  v89 = v80[13];
  if ((ObjectType & ~v89) != 0)
  {
    v90 = v80[12];
    v123 = v90;
    v124 = v89;
    sub_181AACFF4(v90, v89);
    if (sub_181BACEAC(a1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
      v91 = swift_dynamicCastClass();
      if (v91)
      {
        v92 = v91;
        v93 = 0;
        goto LABEL_137;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
      v94 = swift_dynamicCastClass();
      if (v94)
      {
        v92 = v94;
        v93 = 0x2000000000000000;
        goto LABEL_137;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
      v95 = swift_dynamicCastClass();
      if (v95)
      {
        v92 = v95;
        v93 = 0x4000000000000000;
        goto LABEL_137;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
      v96 = swift_dynamicCastClass();
      if (v96)
      {
        v92 = v96;
        v93 = 0x6000000000000000;
LABEL_137:
        swift_unknownObjectRetain();
        sub_181A53008(v90, v89);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0, &qword_182AE4BE0);
        v92 = swift_dynamicCastClass();
        swift_unknownObjectRetain();
        sub_181A53008(v90, v89);
        if (v92)
        {
          v93 = 0x8000000000000000;
        }

        else
        {
          v92 = a2;
          v93 = v115 | 0xA000000000000000;
        }
      }

      v80 = v117;
      v97 = v117[12];
      v98 = v117[13];
      v117[12] = v92;
      v117[13] = v93;
      sub_181A53008(v97, v98);
    }

    else
    {
      sub_181A53008(v90, v89);
      v80 = v117;
    }
  }

  swift_beginAccess();
  v99 = v80[7];
  if ((~v99 & 0xF000000000000007) != 0)
  {
    v100 = v80[6];
    if (v99 >> 62)
    {
      if (v99 >> 62 == 1)
      {
        v101 = swift_getObjectType();
        v102 = *((v99 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        sub_181B2C3E0(v100, v99);
        v103 = v101;
        v80 = v117;
        if (v102(a1, v103, v99 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_143;
        }

LABEL_147:
        v105 = v100;
        v106 = v99;
        goto LABEL_148;
      }
    }

    else
    {
      v107 = *(v100 + 56);
      if ((~v107 & 0x1000000000000007) != 0 && (v107 & 0x1000000000000000) != 0)
      {
        v108 = *(v100 + 48);
        sub_181B2C3E0(v80[6], v80[7]);
        if (v108 != a1)
        {
          goto LABEL_147;
        }

LABEL_143:
        v104 = swift_unknownObjectRetain();
        sub_181F61FE0(v104, v115, &v122);
        sub_181A52FE0(v100, v99);
        v105 = v80[6];
        v106 = v80[7];
        *(v80 + 3) = v122;
LABEL_148:
        sub_181A52FE0(v105, v106);
      }
    }
  }

  ProtocolStack.link.getter(&v122);
  v109 = v122;
  if (v122 >= 2)
  {
    v110 = *(&v122 + 1);
    v111 = swift_getObjectType();
    v112 = (*(v110 + 56))(a1, v111, v110);
    sub_181B03DAC(v109);
    if (v112)
    {
      v113 = v80[8];
      v114 = v80[9];
      v80[8] = a2;
      v80[9] = v115;
      swift_unknownObjectRetain();
      sub_181AC3890(v113, v114);
    }
  }
}

uint64_t _nw_protocol_stack_replace_protocol_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_181AA847C(a3);
  sub_181D38F90(a2, v5, v6);

  return swift_unknownObjectRelease();
}

id nw_http_messaging_options_copy_transaction_metadata(void *a1)
{
  v1 = a1;
  v2 = nw_protocol_copy_http_messaging_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_messaging_definition_definition);

  if (v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__75915;
    v12 = __Block_byref_object_dispose__75916;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __nw_http_messaging_options_copy_transaction_metadata_block_invoke;
    v7[3] = &unk_1E6A3A858;
    v7[4] = &v8;
    nw_protocol_options_access_handle(v3, v7);
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_181D39BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_initialize_metadata(uint64_t a1, uint64_t a2)
{
  result = mach_continuous_time();
  if (result <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  *(a2 + 48) = v4;
  *(a2 + 96) = -1;
  *(a2 + 156) = 0;
  return result;
}

void nw_http_transaction_metadata_set_first_on_connection(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_transaction_metadata_set_first_on_connection";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_transaction_metadata_set_first_on_connection";
        v7 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_http_transaction_metadata_set_first_on_connection";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v4);
        goto LABEL_7;
      }

      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_http_transaction_metadata_set_first_on_connection";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_transaction_metadata_set_first_on_connection";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_transaction_definition_definition))
  {
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      __nw_http_transaction_metadata_set_first_on_connection_block_invoke(&__block_literal_global_104, handle);
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http_transaction_metadata_set_first_on_connection";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s metadata must be http_transaction", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_transaction_metadata_set_first_on_connection";
      v7 = "%{public}s metadata must be http_transaction";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_transaction_metadata_set_first_on_connection";
      v7 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_http_transaction_metadata_set_first_on_connection";
      v7 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http_transaction_metadata_set_first_on_connection";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http_transaction_metadata_set_connection_metadata(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_transaction_metadata_set_connection_metadata";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_connection_metadata";
        v10 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v23 = "nw_http_transaction_metadata_set_connection_metadata";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v7);
        goto LABEL_8;
      }

      if (v13)
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_connection_metadata";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_connection_metadata";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __nw_http_transaction_metadata_set_connection_metadata_block_invoke;
    v18 = &unk_1E6A3A950;
    v19 = v4;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v17(v16, handle);
    }

    goto LABEL_8;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_transaction_metadata_set_connection_metadata";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s metadata must be http_transaction", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_connection_metadata";
      v10 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_connection_metadata";
      v10 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_connection_metadata";
      v10 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v23 = "nw_http_transaction_metadata_set_connection_metadata";
    v24 = 2082;
    v25 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t __nw_http_transaction_metadata_set_connection_metadata_block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __nw_http_transaction_metadata_set_connection_metadata_block_invoke_2;
  v4[3] = &unk_1E6A3AC58;
  v6 = a2;
  v5 = *(a1 + 32);
  os_unfair_lock_lock(a2 + 39);
  __nw_http_transaction_metadata_set_connection_metadata_block_invoke_2(v4);
  os_unfair_lock_unlock(a2 + 39);

  return 1;
}

void nw_http3_stream_replace_protocol_instance(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http3_stream_replace_protocol_instance";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null http3_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v12, &type, &v34))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null http3_stream";
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v27 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v37 = "nw_http3_stream_replace_protocol_instance";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_68:
        if (!v12)
        {
          return;
        }

        goto LABEL_69;
      }

      if (!v27)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null http3_stream, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    }

    goto LABEL_67;
  }

  if (!a2)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http3_stream_replace_protocol_instance";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v12, &type, &v34))
    {
      goto LABEL_68;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v34 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        v37 = "nw_http3_stream_replace_protocol_instance";
        v15 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_67;
      }

      v28 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v29 = os_log_type_enabled(v13, type);
      if (!v28)
      {
        if (!v29)
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        v37 = "nw_http3_stream_replace_protocol_instance";
        v15 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_67;
      }

      if (v29)
      {
        *buf = 136446466;
        v37 = "nw_http3_stream_replace_protocol_instance";
        v38 = 2082;
        v39 = v28;
        v30 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_45:
        _os_log_impl(&dword_181A37000, v13, v14, v30, buf, 0x16u);
      }

LABEL_46:
      free(v28);
      if (!v12)
      {
        return;
      }

LABEL_69:
      free(v12);
      return;
    }

    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    v37 = "nw_http3_stream_replace_protocol_instance";
    v15 = "%{public}s called with null parameters";
LABEL_67:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_68;
  }

  if (!a4)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_http3_stream_replace_protocol_instance";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null new_instance", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v12, &type, &v34))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null new_instance";
      goto LABEL_67;
    }

    if (v34 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null new_instance, backtrace limit exceeded";
      goto LABEL_67;
    }

    v28 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v31 = os_log_type_enabled(v13, type);
    if (!v28)
    {
      if (!v31)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null new_instance, no backtrace";
      goto LABEL_67;
    }

    if (v31)
    {
      *buf = 136446466;
      v37 = "nw_http3_stream_replace_protocol_instance";
      v38 = 2082;
      v39 = v28;
      v30 = "%{public}s called with null new_instance, dumping backtrace:%{public}s";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v7 = a2;
  if (a3)
  {
    v8 = _nw_parameters_copy_protocol_options_with_level();

    if (v8)
    {
      if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v23 = __nwlog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(*(a1 + 344) + 1304);
          v25 = *(a1 + 240);
          *buf = 136448514;
          v37 = "nw_http3_stream_replace_protocol_instance";
          v38 = 2082;
          v39 = (a1 + 632);
          v40 = 2080;
          v41 = " ";
          v42 = 1024;
          v43 = v24;
          v44 = 2048;
          v45 = v25;
          v46 = 2048;
          v47 = a1;
          v48 = 2048;
          v49 = a4;
          v50 = 2048;
          v51 = a3;
          v52 = 2048;
          v53 = v7;
          v54 = 2048;
          v55 = v8;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> http3_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x62u);
        }
      }

      if (nw_protocol_copy_http3_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
      }

      v9 = nw_protocol_copy_http3_definition_http3_definition;
      v10 = v8;
      _nw_protocol_options_set_instance(v10, a4);

      if (v9)
      {
        os_release(v9);
      }

      os_release(v10);
    }

    return;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_parameters_copy_protocol_options_legacy";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol_handle", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v19, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_parameters_copy_protocol_options_legacy";
        v22 = "%{public}s called with null protocol_handle";
LABEL_72:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else
    {
      if (v34 == 1)
      {
        v32 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v33 = os_log_type_enabled(v20, type);
        if (v32)
        {
          if (v33)
          {
            *buf = 136446466;
            v37 = "nw_parameters_copy_protocol_options_legacy";
            v38 = 2082;
            v39 = v32;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v32);
          goto LABEL_74;
        }

        if (!v33)
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v37 = "nw_parameters_copy_protocol_options_legacy";
        v22 = "%{public}s called with null protocol_handle, no backtrace";
        goto LABEL_72;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_parameters_copy_protocol_options_legacy";
        v22 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
        goto LABEL_72;
      }
    }

LABEL_73:
  }

LABEL_74:
  if (v19)
  {
    free(v19);
  }
}

uint64_t nw_http3_get_stream_mode(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    stream_mode = nw_http3_get_stream_mode(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_stream_mode_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    stream_mode = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_stream_mode";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_stream_mode";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http3_get_stream_mode";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_stream_mode";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_stream_mode";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  stream_mode = 0;
LABEL_5:

  return stream_mode;
}

void sub_181D3B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_options_is_http_messaging(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http_messaging_definition_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http_messaging";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http_messaging";
        v8 = "%{public}s called with null options";
LABEL_19:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_protocol_options_is_http_messaging";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_http_messaging";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http_messaging";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_protocol_options_is_http3(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http3_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http3_definition_http3_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http3";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http3";
        v8 = "%{public}s called with null options";
LABEL_19:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            v14 = "nw_protocol_options_is_http3";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_http3";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http3";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_http3_get_webtransport_session_id(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    webtransport_session_id = nw_http3_get_webtransport_session_id(v2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = -1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_webtransport_session_id_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    webtransport_session_id = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_webtransport_session_id";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_webtransport_session_id";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http3_get_webtransport_session_id";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_webtransport_session_id";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_webtransport_session_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  webtransport_session_id = -1;
LABEL_5:

  return webtransport_session_id;
}

void sub_181D3BAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_establishment_report_set_client_accurate_ecn_state(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[6] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

id nw_path_flow_registration_copy_endpoint(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_flow_registration_copy_parent_evaluator(v1);
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    goto LABEL_6;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_path_flow_registration_copy_endpoint";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null flow_registration", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_endpoint";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null flow_registration", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_path_flow_registration_copy_endpoint";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_endpoint";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_endpoint";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void nw_protocol_establishment_report_set_server_accurate_ecn_state(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[7] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

void nw_protocol_establishment_report_set_l4s_enabled(void *a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[40] = v3[40] & 0xFE | a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_establishment_report_set_l4s_enabled";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null report", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_l4s_enabled";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_protocol_establishment_report_set_l4s_enabled";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_l4s_enabled";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_l4s_enabled";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

id nw_path_flow_registration_copy_parameters(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_flow_registration_copy_parent_evaluator(v1);
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 1);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    goto LABEL_6;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_path_flow_registration_copy_parameters";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null flow_registration", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_parameters";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null flow_registration", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_path_flow_registration_copy_parameters";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_parameters";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_parameters";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}