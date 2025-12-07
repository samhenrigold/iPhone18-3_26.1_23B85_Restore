void *nw_service_connector_copy_active_connection_with_endpoint_and_service(void *a1, void *a2, unsigned __int8 *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v19 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null serviceConnector", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null serviceConnector", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v38 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null serviceConnector, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v30 = buf[0];
    v31 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v31)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v31)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v52, 0x16u);
    }

LABEL_68:

    free(backtrace_string);
    goto LABEL_93;
  }

  if (!v5[11])
  {
    v23 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null serviceConnector->activeConnections", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v24 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null serviceConnector->activeConnections", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v39 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v39, "%{public}s called with null serviceConnector->activeConnections, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v32 = buf[0];
    v33 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v33)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->activeConnections, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v33)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->activeConnections, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!v6)
  {
    v25 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null endpoint", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v26 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null endpoint", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v40 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v40, "%{public}s called with null endpoint, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v34 = buf[0];
    v35 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v35)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!a3)
  {
    v27 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null service", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v20, buf, &type))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null service", v52, 0xCu);
        }

LABEL_92:

        goto LABEL_93;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v21 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          _os_log_impl(&dword_181A37000, v21, v41, "%{public}s called with null service, backtrace limit exceeded", v52, 0xCu);
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v36 = buf[0];
      v37 = os_log_type_enabled(v21, buf[0]);
      if (!backtrace_string)
      {
        if (v37)
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, no backtrace", v52, 0xCu);
        }

        goto LABEL_92;
      }

      if (v37)
      {
        *v52 = 136446466;
        *&v52[4] = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
        *&v52[12] = 2082;
        *&v52[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, dumping backtrace:%{public}s", v52, 0x16u);
      }

      goto LABEL_68;
    }

LABEL_93:
    if (!v20)
    {
      goto LABEL_27;
    }

    v17 = v20;
    goto LABEL_26;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  memset(v52, 0, sizeof(v52));
  if ((nwsc_get_identifier(v6, a3, v52, 0x1B4uLL) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446722;
    v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
    v46 = 2114;
    v47 = v7;
    v48 = 2082;
    v49 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v10, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 0x20u);
        }
      }

      else if (v42 == 1)
      {
        v13 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v11, type);
        if (v13)
        {
          if (v15)
          {
            *buf = 136446978;
            v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
            v46 = 2114;
            v47 = v7;
            v48 = 2082;
            v49 = a3;
            v50 = 2082;
            v51 = v13;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v13);
          if (!v10)
          {
            goto LABEL_27;
          }

LABEL_25:
          v17 = v10;
LABEL_26:
          free(v17);
          goto LABEL_27;
        }

        if (v15)
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_active_connection_with_endpoint_and_service";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v10)
    {
LABEL_27:
      v8 = 0;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = nw_dictionary_copy_value(v5[11], v52);
LABEL_28:

  return v8;
}

void nwsc_unique_connection_shutdown_socket(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nwsc_unique_connection_shutdown_socket";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null serviceConnector", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v14, &type, &v27))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nwsc_unique_connection_shutdown_socket";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v30 = "nwsc_unique_connection_shutdown_socket";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v14)
        {
          goto LABEL_11;
        }

        goto LABEL_46;
      }

      if (v21)
      {
        *buf = 136446210;
        v30 = "nwsc_unique_connection_shutdown_socket";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nwsc_unique_connection_shutdown_socket";
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!v4)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nwsc_unique_connection_shutdown_socket";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null uniqueConnection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v14, &type, &v27))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nwsc_unique_connection_shutdown_socket";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null uniqueConnection", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v15, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v30 = "nwsc_unique_connection_shutdown_socket";
          v31 = 2082;
          v32 = v22;
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null uniqueConnection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v14);
        goto LABEL_11;
      }

      if (v24)
      {
        *buf = 136446210;
        v30 = "nwsc_unique_connection_shutdown_socket";
        _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null uniqueConnection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nwsc_unique_connection_shutdown_socket";
        _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null uniqueConnection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_44;
  }

  dupedSocketFD = v4->dupedSocketFD;
  if ((dupedSocketFD & 0x80000000) == 0)
  {
    if (shutdown(dupedSocketFD, 2))
    {
      v7 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v30 = "nwsc_unique_connection_shutdown_socket";
        v31 = 2114;
        v32 = v3;
        v33 = 2114;
        v34 = v5;
        v35 = 1024;
        v36 = v7;
        v9 = "%{public}s %{public}@ failed to shutdown socket on %{public}@ %{darwin.errno}d";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 38;
LABEL_9:
        _os_log_impl(&dword_181A37000, v10, v11, v9, buf, v12);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v30 = "nwsc_unique_connection_shutdown_socket";
        v31 = 2114;
        v32 = v3;
        v33 = 2114;
        v34 = v5;
        v9 = "%{public}s %{public}@ shutdown socket on %{public}@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 32;
        goto LABEL_9;
      }
    }

    close(v5[124]);
    v5[124] = -1;
  }

LABEL_11:
}

void nwsc_cancel_connection_group_for_connection(NWConcrete_nw_service_connector *a1, NWConcrete_nw_connection *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *v49 = 136446210;
    *&v49[4] = "nwsc_cancel_connection_group_for_connection";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null serviceConnector", v49, 12);

    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v18, buf, &v42))
    {
      goto LABEL_48;
    }

    if (buf[0] == 17)
    {
      v19 = __nwlog_obj();
      v20 = buf[0];
      if (os_log_type_enabled(v19, buf[0]))
      {
        *v49 = 136446210;
        *&v49[4] = "nwsc_cancel_connection_group_for_connection";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null serviceConnector", v49, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = buf[0];
      v25 = os_log_type_enabled(v19, buf[0]);
      if (backtrace_string)
      {
        if (v25)
        {
          *v49 = 136446466;
          *&v49[4] = "nwsc_cancel_connection_group_for_connection";
          *&v49[12] = 2082;
          *&v49[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v49, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v18)
        {
          goto LABEL_14;
        }

LABEL_49:
        free(v18);
        goto LABEL_14;
      }

      if (v25)
      {
        *v49 = 136446210;
        *&v49[4] = "nwsc_cancel_connection_group_for_connection";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null serviceConnector, no backtrace", v49, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = buf[0];
      if (os_log_type_enabled(v19, buf[0]))
      {
        *v49 = 136446210;
        *&v49[4] = "nwsc_cancel_connection_group_for_connection";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null serviceConnector, backtrace limit exceeded", v49, 0xCu);
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (v4)
  {
    v6 = v4;
    v7 = v6[1];

    if (v7)
    {
      *v49 = 0;
      *&v49[8] = v49;
      *&v49[16] = 0x2020000000;
      v50 = 0;
      activeConnections = v3->activeConnections;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke;
      v38[3] = &unk_1E6A34B78;
      v9 = v7;
      v39 = v9;
      v10 = v3;
      v40 = v10;
      v41 = v49;
      nw_dictionary_apply(activeConnections, v38);
      if ((*(*&v49[8] + 24) & 1) == 0)
      {
        pendingIncomingRequests = v10->pendingIncomingRequests;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke_222;
        v34[3] = &unk_1E6A34B78;
        v12 = v9;
        v35 = v12;
        v13 = v10;
        v36 = v13;
        v37 = v49;
        nw_dictionary_apply(pendingIncomingRequests, v34);
        if ((*(*&v49[8] + 24) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v44 = "nwsc_cancel_connection_group_for_connection";
            v45 = 2114;
            v46 = v13;
            v47 = 2112;
            v48 = v12;
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ no active use of endpoint %@", buf, 0x20u);
          }

          activeConnectionGroups = v13->activeConnectionGroups;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke_223;
          aBlock[3] = &unk_1E6A35E80;
          v32 = v12;
          v16 = v13;
          v33 = v16;
          if (activeConnectionGroups)
          {
            _nw_array_apply(activeConnectionGroups, aBlock);
            v16 = v33;
          }
        }
      }

      _Block_object_dispose(v49, 8);
    }

    goto LABEL_14;
  }

  v21 = __nwlog_obj();
  *v49 = 136446210;
  *&v49[4] = "nwsc_cancel_connection_group_for_connection";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null connection", v49, 12);

  buf[0] = 16;
  v42 = 0;
  if (!__nwlog_fault(v18, buf, &v42))
  {
    goto LABEL_48;
  }

  if (buf[0] == 17)
  {
    v19 = __nwlog_obj();
    v22 = buf[0];
    if (os_log_type_enabled(v19, buf[0]))
    {
      *v49 = 136446210;
      *&v49[4] = "nwsc_cancel_connection_group_for_connection";
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null connection", v49, 0xCu);
    }

    goto LABEL_47;
  }

  if (v42 != 1)
  {
    v19 = __nwlog_obj();
    v30 = buf[0];
    if (os_log_type_enabled(v19, buf[0]))
    {
      *v49 = 136446210;
      *&v49[4] = "nwsc_cancel_connection_group_for_connection";
      _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null connection, backtrace limit exceeded", v49, 0xCu);
    }

    goto LABEL_47;
  }

  v26 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v27 = buf[0];
  v28 = os_log_type_enabled(v19, buf[0]);
  if (!v26)
  {
    if (v28)
    {
      *v49 = 136446210;
      *&v49[4] = "nwsc_cancel_connection_group_for_connection";
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null connection, no backtrace", v49, 0xCu);
    }

    goto LABEL_47;
  }

  if (v28)
  {
    *v49 = 136446466;
    *&v49[4] = "nwsc_cancel_connection_group_for_connection";
    *&v49[12] = 2082;
    *&v49[14] = v26;
    _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null connection, dumping backtrace:%{public}s", v49, 0x16u);
  }

  free(v26);
  if (v18)
  {
    goto LABEL_49;
  }

LABEL_14:
}

void sub_18282E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32)
{
  _Block_object_dispose((v35 - 160), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1[4];
  v6 = nw_connection_copy_endpoint(v4[61]);
  LODWORD(v5) = nw_endpoint_is_equal(v5, v6, 0);

  if (v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v8 = a1[5];
      v12 = 136446978;
      v13 = "nwsc_cancel_connection_group_for_connection_block_invoke";
      v14 = 2114;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ activeConnection %@ using endpoint %@", &v12, 0x2Au);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *(*(a1[6] + 8) + 24);

  return (v10 ^ 1) & 1;
}

uint64_t ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke_222(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1[4];
  v6 = nw_connection_copy_endpoint(v4[72]);
  LODWORD(v5) = nw_endpoint_is_equal(v5, v6, 0);

  if (v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v8 = a1[5];
      v12 = 136446978;
      v13 = "nwsc_cancel_connection_group_for_connection_block_invoke";
      v14 = 2114;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ pendingRequest %@ using endpoint %@", &v12, 0x2Au);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v10 = *(*(a1[6] + 8) + 24);

  return (v10 ^ 1) & 1;
}

uint64_t ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke_223(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_connection_group_copy_descriptor(v4);
  v6 = nw_group_descriptor_copy_members(v5);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke_2;
  aBlock[3] = &unk_1E6A3B418;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = v4;
  v13 = v7;
  v8 = v7;
  if (v6)
  {
    _nw_array_apply(v6, aBlock);
    v8 = v13;
  }

  return 1;
}

uint64_t ___ZL43nwsc_cancel_connection_group_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (nw_endpoint_is_equal(*(a1 + 32), v4, 0))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = 136446722;
      v10 = "nwsc_cancel_connection_group_for_connection_block_invoke_2";
      v11 = 2114;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ cancelling connection group %@", &v9, 0x20u);
    }

    nw_connection_group_cancel(*(a1 + 48));
  }

  return 1;
}

void ___ZL31nwsc_request_start_path_watcherP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_requestP24NWConcrete_nw_connectionb_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(a1 + 32) + 16) == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v20 = 136446978;
      v21 = "nwsc_request_start_path_watcher_block_invoke";
      v22 = 2114;
      v23 = v5;
      v24 = 2114;
      v25 = v3;
      v26 = 2114;
      v27 = v6;
      v7 = "%{public}s %{public}@ already cancelled, ignoring received path update %{public}@ for request %{public}@";
      v8 = v4;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_181A37000, v8, v9, v7, &v20, 0x2Au);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 584);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v11 != v10)
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v20 = 136446978;
      v21 = "nwsc_request_start_path_watcher_block_invoke";
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v3;
      v26 = 2114;
      v27 = v14;
      v7 = "%{public}s %{public}@ ignoring received path update %{public}@ for request %{public}@";
      v8 = v4;
      v9 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v12)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v20 = 136446978;
    v21 = "nwsc_request_start_path_watcher_block_invoke";
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v3;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ received path update %{public}@ for request %{public}@", &v20, 0x2Au);
  }

  if ((nw_path_get_status(v3) & 0xFFFFFFFD) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = 136446978;
      v21 = "nwsc_request_start_path_watcher_block_invoke";
      v22 = 2114;
      v23 = v18;
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ restarting connection for request %{public}@ due to path update %{public}@", &v20, 0x2Au);
    }

    v4 = nwsc_request_create_and_start_connection_inner(*(a1 + 32), *(a1 + 40), 0);
    goto LABEL_8;
  }

LABEL_9:
}

void ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v8 = a2;
  if ((nw_service_connector_verify_read_succeeded(*(a1 + 32), *(a1 + 40), *(a1 + 56), 2, v8, v6, a5, "first") & 1) == 0)
  {
    goto LABEL_42;
  }

  v39 = 0;
  *type = 0;
  v42 = type;
  v43 = 0x2000000000;
  v44 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2000000000;
  v40[3] = &v39;
  if (v8)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
    *v46 = &unk_1E6A34348;
    *&v46[16] = v40;
    *&v46[24] = 2;
    *&v46[8] = type;
    dispatch_data_apply(v8, applier);
    v9 = *(v42 + 3);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(type, 8);
  if (v9 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *applier = 136446978;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v18;
      *&applier[22] = 2048;
      *v46 = v9;
      *&v46[8] = 2114;
      *&v46[10] = v19;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ first read copyout had insufficient length %zu, cancelling %{public}@", applier, 0x2Au);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *applier = 136446210;
    *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s first nw_dispatch_data_copyout failed", applier, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v40[0]) = 0;
    if (__nwlog_fault(v21, type, v40))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type[0];
        if (os_log_type_enabled(v22, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s first nw_dispatch_data_copyout failed", applier, 0xCu);
        }
      }

      else if (LOBYTE(v40[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = type[0];
        v30 = os_log_type_enabled(v22, type[0]);
        if (backtrace_string)
        {
          if (v30)
          {
            *applier = 136446466;
            *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
            *&applier[12] = 2082;
            *&applier[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v29, "%{public}s first nw_dispatch_data_copyout failed, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(backtrace_string);
          if (!v21)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if (v30)
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s first nw_dispatch_data_copyout failed, no backtrace", applier, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v31 = type[0];
        if (os_log_type_enabled(v22, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s first nw_dispatch_data_copyout failed, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

    if (!v21)
    {
LABEL_41:
      nw_connection_cancel(*(a1 + 40));
      goto LABEL_42;
    }

LABEL_40:
    free(v21);
    goto LABEL_41;
  }

  v10 = bswap32(v39) >> 16;
  if (*(a1 + 56))
  {
    v11 = 79;
  }

  else
  {
    v11 = 42;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v13 = v12;
  if (v11 <= v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v24 = "outgoing";
      if (*(a1 + 56))
      {
        v24 = "incoming";
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *applier = 136447234;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v25;
      *&applier[22] = 1024;
      *v46 = v10;
      *&v46[4] = 2082;
      *&v46[6] = v24;
      *&v46[14] = 2114;
      *&v46[16] = v26;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ performing second read of length %u on %{public}s connection %{public}@", applier, 0x30u);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke_204;
    v32[3] = &unk_1E6A34A88;
    v27 = *(a1 + 40);
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v38 = *(a1 + 56);
    v36 = v10;
    v35 = *(a1 + 48);
    v37 = v39;
    nw_connection_receive_internal(v27, 0, v10, v10, v32);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = "outgoing";
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      if (*(a1 + 56))
      {
        v14 = "incoming";
      }

      *applier = 136447490;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v15;
      *&applier[22] = 1024;
      *v46 = v10;
      *&v46[4] = 1024;
      *&v46[6] = v11;
      *&v46[10] = 2082;
      *&v46[12] = v14;
      *&v46[20] = 2114;
      *&v46[22] = v16;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ message length %u < %u on %{public}s connection %{public}@", applier, 0x36u);
    }

    nw_connection_cancel(*(a1 + 40));
  }

LABEL_42:
}

uint64_t nw_service_connector_verify_read_succeeded(void *a1, void *a2, int a3, int a4, void *a5, int a6, void *a7, void *a8)
{
  v98 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  data = a5;
  v17 = a7;
  v18 = v17;
  if (!v15)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_service_connector_verify_read_succeeded";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null serviceConnector", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v74, &type, &v90))
    {
      goto LABEL_186;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v93 = "nw_service_connector_verify_read_succeeded";
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null serviceConnector", buf, 0xCu);
      }

      goto LABEL_185;
    }

    if (v90 != 1)
    {
      v75 = __nwlog_obj();
      v84 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v93 = "nw_service_connector_verify_read_succeeded";
        _os_log_impl(&dword_181A37000, v75, v84, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_185;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v80 = type;
    v81 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (v81)
      {
        *buf = 136446210;
        v93 = "nw_service_connector_verify_read_succeeded";
        _os_log_impl(&dword_181A37000, v75, v80, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }

      goto LABEL_185;
    }

    if (v81)
    {
      *buf = 136446466;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2082;
      v95 = backtrace_string;
      _os_log_impl(&dword_181A37000, v75, v80, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_173;
  }

  if (!v16)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_service_connector_verify_read_succeeded";
    v74 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v74, &type, &v90))
    {
      goto LABEL_186;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v78 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v93 = "nw_service_connector_verify_read_succeeded";
        _os_log_impl(&dword_181A37000, v75, v78, "%{public}s called with null connection", buf, 0xCu);
      }

LABEL_185:

LABEL_186:
      if (v74)
      {
        free(v74);
      }

      goto LABEL_110;
    }

    if (v90 != 1)
    {
      v75 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v93 = "nw_service_connector_verify_read_succeeded";
        _os_log_impl(&dword_181A37000, v75, v85, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_185;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v82 = type;
    v83 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (v83)
      {
        *buf = 136446210;
        v93 = "nw_service_connector_verify_read_succeeded";
        _os_log_impl(&dword_181A37000, v75, v82, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_185;
    }

    if (v83)
    {
      *buf = 136446466;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2082;
      v95 = backtrace_string;
      _os_log_impl(&dword_181A37000, v75, v82, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_173:

    free(backtrace_string);
    goto LABEL_186;
  }

  if (v15->state == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2114;
      v95 = v15;
      v96 = 2082;
      *v97 = a8;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, ignoring %{public}s read data", buf, 0x20u);
    }

    nw_connection_cancel(&v16->super);
    goto LABEL_110;
  }

  if (!v17)
  {
    v21 = 0;
    if (data)
    {
      goto LABEL_27;
    }

LABEL_11:
    if (v21)
    {
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = "in";
      *buf = 136447490;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2114;
      v95 = v15;
      if (a6)
      {
        v23 = "";
      }

      v96 = 2082;
      *v97 = v23;
      v24 = "incoming";
      *&v97[8] = 2082;
      if (!a3)
      {
        v24 = "outgoing";
      }

      *&v97[10] = a8;
      *&v97[18] = 2082;
      *&v97[20] = v24;
      *&v97[28] = 2114;
      *&v97[30] = v16;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received %{public}scomplete empty %{public}s read on %{public}s %{public}@", buf, 0x3Eu);
    }

    if ((a6 & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      *buf = 136446722;
      v93 = "nw_service_connector_verify_read_succeeded";
      if (a3)
      {
        v26 = "incoming";
      }

      else
      {
        v26 = "outgoing";
      }

      v94 = 2082;
      v95 = v26;
      v96 = 2082;
      *v97 = a8;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s %{public}s %{public}s read got no error no data but not complete failed", buf, 32);

      type = OS_LOG_TYPE_ERROR;
      v90 = 0;
      if (!__nwlog_fault(v27, &type, &v90))
      {
LABEL_75:
        if (!v27)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = v26;
          v96 = 2082;
          *v97 = a8;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s %{public}s %{public}s read got no error no data but not complete failed", buf, 0x20u);
        }

LABEL_74:

        goto LABEL_75;
      }

      if (v90 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v45 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = v26;
          v96 = 2082;
          *v97 = a8;
          _os_log_impl(&dword_181A37000, v28, v45, "%{public}s %{public}s %{public}s read got no error no data but not complete failed, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_74;
      }

      v33 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v28, type);
      if (!v33)
      {
        if (v35)
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = v26;
          v96 = 2082;
          *v97 = a8;
          _os_log_impl(&dword_181A37000, v28, v34, "%{public}s %{public}s %{public}s read got no error no data but not complete failed, no backtrace", buf, 0x20u);
        }

        goto LABEL_74;
      }

      if (v35)
      {
        *buf = 136446978;
        v93 = "nw_service_connector_verify_read_succeeded";
        v94 = 2082;
        v95 = v26;
        v96 = 2082;
        *v97 = a8;
        *&v97[8] = 2082;
        *&v97[10] = v33;
        _os_log_impl(&dword_181A37000, v28, v34, "%{public}s %{public}s %{public}s read got no error no data but not complete failed, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v33);
      if (v27)
      {
LABEL_76:
        free(v27);
      }
    }

LABEL_77:
    v21 = 5;
    if (a3)
    {
LABEL_29:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        v93 = "nw_service_connector_verify_read_succeeded";
        v94 = 2114;
        v95 = v15;
        v96 = 2082;
        *v97 = a8;
        *&v97[8] = 2114;
        *&v97[10] = v16;
        *&v97[18] = 1024;
        *&v97[20] = v21;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed %{public}s read for incoming request on %{public}@ %{darwin.errno}d", buf, 0x30u);
      }

      if ((v21 - 32) <= 0x39 && ((1 << (v21 - 32)) & 0x200000212420001) != 0 || v21 == 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s Failed %{public}s read of incoming request %{darwin.errno}d", buf, 0x1Cu);
        }

        goto LABEL_36;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      *buf = 136446722;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2082;
      v95 = a8;
      v96 = 1024;
      *v97 = v21;
      LODWORD(v86) = 28;
      v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s Failed %{public}s read of incoming request %{darwin.errno}d", buf, v86);

      type = OS_LOG_TYPE_ERROR;
      v90 = 0;
      if (__nwlog_fault(v37, &type, &v90))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446722;
            v93 = "nw_service_connector_verify_read_succeeded";
            v94 = 2082;
            v95 = a8;
            v96 = 1024;
            *v97 = v21;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Failed %{public}s read of incoming request %{darwin.errno}d", buf, 0x1Cu);
          }
        }

        else if (v90 == 1)
        {
          v46 = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v47 = type;
          v48 = os_log_type_enabled(v38, type);
          if (v46)
          {
            if (v48)
            {
              *buf = 136446978;
              v93 = "nw_service_connector_verify_read_succeeded";
              v94 = 2082;
              v95 = a8;
              v96 = 1024;
              *v97 = v21;
              *&v97[4] = 2082;
              *&v97[6] = v46;
              _os_log_impl(&dword_181A37000, v38, v47, "%{public}s Failed %{public}s read of incoming request %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
            }

            free(v46);
            goto LABEL_138;
          }

          if (v48)
          {
            *buf = 136446722;
            v93 = "nw_service_connector_verify_read_succeeded";
            v94 = 2082;
            v95 = a8;
            v96 = 1024;
            *v97 = v21;
            _os_log_impl(&dword_181A37000, v38, v47, "%{public}s Failed %{public}s read of incoming request %{darwin.errno}d, no backtrace", buf, 0x1Cu);
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v68 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446722;
            v93 = "nw_service_connector_verify_read_succeeded";
            v94 = 2082;
            v95 = a8;
            v96 = 1024;
            *v97 = v21;
            _os_log_impl(&dword_181A37000, v38, v68, "%{public}s Failed %{public}s read of incoming request %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
          }
        }
      }

LABEL_138:
      if (v37)
      {
        free(v37);
      }

LABEL_36:
      if (v21 != 89)
      {
        nw_connection_cancel(&v16->super);
      }

      goto LABEL_110;
    }

LABEL_78:
    v49 = nw_service_connector_copy_active_request_for_connection(v15, v16);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        *buf = 136447234;
        v93 = "nw_service_connector_verify_read_succeeded";
        v94 = 2114;
        v95 = v15;
        v96 = 2082;
        *v97 = a8;
        *&v97[8] = 2114;
        *&v97[10] = v49;
        *&v97[18] = 1024;
        *&v97[20] = v21;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed %{public}s read of reply to %{public}@ %{darwin.errno}d", buf, 0x30u);
      }

      if ((v21 - 5) <= 0x3C && ((1 << (v21 - 5)) & 0x1092100008000001) != 0 || v21 == 96 || v21 == 89)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v52 = gLogObj;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s Failed %{public}s read of reply (with known request) %{darwin.errno}d", buf, 0x1Cu);
        }

        goto LABEL_86;
      }

      v55 = __nwlog_obj();
      *buf = 136446722;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2082;
      v95 = a8;
      v96 = 1024;
      *v97 = v21;
      LODWORD(v86) = 28;
      v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s Failed %{public}s read of reply (with known request) %{darwin.errno}d", buf, v86);

      type = OS_LOG_TYPE_ERROR;
      v90 = 0;
      v57 = v56;
      if (!__nwlog_fault(v56, &type, &v90))
      {
LABEL_147:
        if (v57)
        {
          free(v57);
        }

LABEL_86:
        if (*(v49 + 617))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v54 = gLogObj;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v93 = "nw_service_connector_verify_read_succeeded";
            v94 = 2114;
            v95 = v15;
            v96 = 2114;
            *v97 = v49;
            _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ retrying request %{public}@", buf, 0x20u);
          }

          *(v49 + 617) &= ~1u;
          nwsc_request_create_and_start_connection_inner(v15, v49, 0);
        }

        else if (nwsc_is_error_allowlisted(v18, 0))
        {
          nwsc_request_start_path_watcher(v15, v49, v16, 0);
        }

        else
        {
          nw_service_connector_cancel_request_inner(v15, *(v49 + 1), v49 + 24, v16, 0);
          nw_service_connector_trigger_request_complete_block_inner(v15, v49, 0, 0, v21);
        }

LABEL_109:

LABEL_110:
        v43 = 0;
        goto LABEL_111;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v58 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v58, type))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v58, v59, "%{public}s Failed %{public}s read of reply (with known request) %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else
      {
        if (v90 == 1)
        {
          v65 = __nw_create_backtrace_string();
          v66 = __nwlog_obj();
          v87 = type;
          v67 = os_log_type_enabled(v66, type);
          if (v65)
          {
            if (v67)
            {
              *buf = 136446978;
              v93 = "nw_service_connector_verify_read_succeeded";
              v94 = 2082;
              v95 = a8;
              v96 = 1024;
              *v97 = v21;
              *&v97[4] = 2082;
              *&v97[6] = v65;
              _os_log_impl(&dword_181A37000, v66, v87, "%{public}s Failed %{public}s read of reply (with known request) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
            }

            free(v65);
          }

          else
          {
            if (v67)
            {
              *buf = 136446722;
              v93 = "nw_service_connector_verify_read_succeeded";
              v94 = 2082;
              v95 = a8;
              v96 = 1024;
              *v97 = v21;
              _os_log_impl(&dword_181A37000, v66, v87, "%{public}s Failed %{public}s read of reply (with known request) %{darwin.errno}d, no backtrace", buf, 0x1Cu);
            }
          }

          goto LABEL_146;
        }

        v58 = __nwlog_obj();
        v71 = type;
        if (os_log_type_enabled(v58, type))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v58, v71, "%{public}s Failed %{public}s read of reply (with known request) %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

LABEL_146:
      v57 = v56;
      goto LABEL_147;
    }

    if (v51)
    {
      *buf = 136447234;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2114;
      v95 = v15;
      v96 = 2082;
      *v97 = a8;
      *&v97[8] = 2114;
      *&v97[10] = v16;
      *&v97[18] = 1024;
      *&v97[20] = v21;
      _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed %{public}s read reply on %{public}@ %{darwin.errno}d", buf, 0x30u);
    }

    if ((v21 - 5) <= 0x3C && ((1 << (v21 - 5)) & 0x1092100008000001) != 0 || v21 == 96 || v21 == 89)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v53 = gLogObj;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v93 = "nw_service_connector_verify_read_succeeded";
        v94 = 2082;
        v95 = a8;
        v96 = 1024;
        *v97 = v21;
        _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s Failed %{public}s read of reply (did not find request) %{darwin.errno}d", buf, 0x1Cu);
      }

      goto LABEL_96;
    }

    v61 = __nwlog_obj();
    *buf = 136446722;
    v93 = "nw_service_connector_verify_read_succeeded";
    v94 = 2082;
    v95 = a8;
    v96 = 1024;
    *v97 = v21;
    LODWORD(v86) = 28;
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s Failed %{public}s read of reply (did not find request) %{darwin.errno}d", buf, v86);

    type = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (__nwlog_fault(v62, &type, &v90))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (os_log_type_enabled(v63, type))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s Failed %{public}s read of reply (did not find request) %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v90 == 1)
      {
        v69 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v88 = type;
        v70 = os_log_type_enabled(v63, type);
        if (v69)
        {
          if (v70)
          {
            *buf = 136446978;
            v93 = "nw_service_connector_verify_read_succeeded";
            v94 = 2082;
            v95 = a8;
            v96 = 1024;
            *v97 = v21;
            *&v97[4] = 2082;
            *&v97[6] = v69;
            _os_log_impl(&dword_181A37000, v63, v88, "%{public}s Failed %{public}s read of reply (did not find request) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v69);
          goto LABEL_152;
        }

        if (v70)
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v63, v88, "%{public}s Failed %{public}s read of reply (did not find request) %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v63 = __nwlog_obj();
        v72 = type;
        if (os_log_type_enabled(v63, type))
        {
          *buf = 136446722;
          v93 = "nw_service_connector_verify_read_succeeded";
          v94 = 2082;
          v95 = a8;
          v96 = 1024;
          *v97 = v21;
          _os_log_impl(&dword_181A37000, v63, v72, "%{public}s Failed %{public}s read of reply (did not find request) %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_152:
    if (v62)
    {
      free(v62);
    }

LABEL_96:
    if (v21 != 89)
    {
      nw_connection_cancel(&v16->super);
    }

    goto LABEL_109;
  }

  v20 = v17;
  v21 = v20[3];

  if (!data)
  {
    goto LABEL_11;
  }

LABEL_27:
  if (v21)
  {
    if (a3)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

  if (data)
  {
    size = dispatch_data_get_size(data);
  }

  else
  {
    size = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v40 = gLogObj;
  v41 = v40;
  if (size != a4)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v44 = "outgoing";
      *buf = 136447746;
      v93 = "nw_service_connector_verify_read_succeeded";
      v94 = 2114;
      v95 = v15;
      if (a3)
      {
        v44 = "incoming";
      }

      v96 = 2082;
      *v97 = a8;
      *&v97[8] = 1024;
      *&v97[10] = size;
      *&v97[14] = 1024;
      *&v97[16] = a4;
      *&v97[20] = 2082;
      *&v97[22] = v44;
      *&v97[30] = 2114;
      *&v97[32] = v16;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received %{public}s read with length %u but expected %u on %{public}s %{public}@", buf, 0x40u);
    }

    goto LABEL_77;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v42 = "outgoing";
    *buf = 136447490;
    v93 = "nw_service_connector_verify_read_succeeded";
    v94 = 2114;
    v95 = v15;
    if (a3)
    {
      v42 = "incoming";
    }

    v96 = 2082;
    *v97 = a8;
    *&v97[8] = 1024;
    *&v97[10] = a4;
    *&v97[14] = 2082;
    *&v97[16] = v42;
    *&v97[24] = 2114;
    *&v97[26] = v16;
    _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ received %{public}s read with length %u on %{public}s %{public}@", buf, 0x3Au);
  }

  v43 = 1;
LABEL_111:

  return v43;
}

void ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke_204(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v277 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v228 = a3;
  v10 = a5;
  if ((nw_service_connector_verify_read_succeeded(*(a1 + 32), *(a1 + 40), *(a1 + 60), *(a1 + 56), v9, a4, v10, "second") & 1) == 0)
  {
    goto LABEL_292;
  }

  if (*(a1 + 60) != 1)
  {
    v13 = nw_service_connector_copy_active_request_for_connection(*(a1 + 32), *(a1 + 40));
    memset(__src, 0, 44);
    *applier = 0;
    *&applier[8] = applier;
    *&applier[16] = 0x2000000000;
    *&applier[24] = 0;
    *&buffer = 0;
    *(&buffer + 1) = &buffer;
    *&v255 = 0x2000000000;
    *(&v255 + 1) = __src + 2;
    if (v9)
    {
      *key = MEMORY[0x1E69E9820];
      *&key[8] = 0x40000000;
      *&key[16] = __nw_dispatch_data_copyout_block_invoke;
      *&key[24] = &unk_1E6A34348;
      v258[2] = 42;
      v258[0] = applier;
      v258[1] = &buffer;
      dispatch_data_apply(v9, key);
      v14 = *(*&applier[8] + 24);
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&buffer, 8);
    _Block_object_dispose(applier, 8);
    if (*(a1 + 56) >= 0x2Au)
    {
      v15 = 42;
    }

    else
    {
      v15 = *(a1 + 56);
    }

    v227 = v13;
    if (v14 == v15)
    {
      v221 = BYTE2(__src[0]);
      v16 = bswap64(*(__src + 4));
      v239 = 0u;
      v238 = 0u;
      if (v14 >= 0x2A)
      {
        v238 = *(&__src[1] + 4);
        v239 = *(&__src[3] + 4);
      }

      v17 = *(a1 + 32);
      v18 = nw_connection_copy_endpoint(*(a1 + 40));
      v19 = v17;
      v20 = v18;
      v222 = v16;
      endpoint = v20;
      if (v19)
      {
        if (v19[13])
        {
          v21 = v20;
          if (v20)
          {
            v276 = 0;
            v274 = 0u;
            memset(v275, 0, sizeof(v275));
            v272 = 0u;
            v273 = 0u;
            v270 = 0u;
            v271 = 0u;
            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v259 = 0u;
            memset(v258, 0, sizeof(v258));
            memset(key, 0, sizeof(key));
            if (nwsc_get_endpoint_identifier(v20, key, 0x1B4uLL))
            {
              v22 = xpc_dictionary_get_value(v19[13], key);
              v23 = v22;
              v256 = 0;
              buffer = 0u;
              v255 = 0u;
              if (!v22 || xpc_data_get_bytes(v22, &buffer, 0, 0x28uLL) >= 0x28)
              {
                goto LABEL_186;
              }

              v24 = __nwlog_obj();
              *applier = 136446210;
              *&applier[4] = "nwsc_save_remote_pub_key";
              v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s Insufficient length in remotePubKeys", applier, 12);

              type[0] = OS_LOG_TYPE_ERROR;
              v237 = 0;
              if (__nwlog_fault(v25, type, &v237))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v26 = __nwlog_obj();
                  v27 = type[0];
                  if (os_log_type_enabled(v26, type[0]))
                  {
                    *applier = 136446210;
                    *&applier[4] = "nwsc_save_remote_pub_key";
                    _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Insufficient length in remotePubKeys", applier, 0xCu);
                  }
                }

                else
                {
                  if (v237 == 1)
                  {
                    backtrace_string = __nw_create_backtrace_string();
                    v98 = __nwlog_obj();
                    HIDWORD(v220) = type[0];
                    v99 = os_log_type_enabled(v98, type[0]);
                    if (backtrace_string)
                    {
                      if (v99)
                      {
                        *applier = 136446466;
                        *&applier[4] = "nwsc_save_remote_pub_key";
                        *&applier[12] = 2082;
                        *&applier[14] = backtrace_string;
                        _os_log_impl(&dword_181A37000, v98, BYTE4(v220), "%{public}s Insufficient length in remotePubKeys, dumping backtrace:%{public}s", applier, 0x16u);
                      }

                      free(backtrace_string);
                    }

                    else
                    {
                      if (v99)
                      {
                        *applier = 136446210;
                        *&applier[4] = "nwsc_save_remote_pub_key";
                        _os_log_impl(&dword_181A37000, v98, BYTE4(v220), "%{public}s Insufficient length in remotePubKeys, no backtrace", applier, 0xCu);
                      }
                    }

                    goto LABEL_183;
                  }

                  v26 = __nwlog_obj();
                  v109 = type[0];
                  if (os_log_type_enabled(v26, type[0]))
                  {
                    *applier = 136446210;
                    *&applier[4] = "nwsc_save_remote_pub_key";
                    _os_log_impl(&dword_181A37000, v26, v109, "%{public}s Insufficient length in remotePubKeys, backtrace limit exceeded", applier, 0xCu);
                  }
                }
              }

LABEL_183:
              v16 = v222;
              if (v25)
              {
                free(v25);
              }

              *&buffer = 0;
LABEL_186:
              v137 = cc_cmp_safe();
              v138 = v137;
              if (buffer > v16)
              {
                if (v137)
                {
                  v139 = __nwlog_obj();
                  if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                  {
                    *applier = 136449282;
                    *&applier[4] = "nwsc_save_remote_pub_key";
                    *&applier[12] = 2114;
                    *&applier[14] = v19;
                    *&applier[22] = 2048;
                    *&applier[24] = v222;
                    *&applier[32] = 1024;
                    *&applier[34] = v238;
                    *&applier[38] = 1024;
                    *&applier[40] = BYTE1(v238);
                    *&applier[44] = 1024;
                    *&applier[46] = BYTE2(v238);
                    *&applier[50] = 1024;
                    *&applier[52] = BYTE3(v238);
                    *&applier[56] = 2048;
                    v245 = buffer;
                    v246 = 1024;
                    *v247 = BYTE8(buffer);
                    *&v247[4] = 1024;
                    *&v247[6] = BYTE9(buffer);
                    v248 = 1024;
                    v249 = BYTE10(buffer);
                    v250 = 1024;
                    v251 = BYTE11(buffer);
                    v252 = 2114;
                    v253 = endpoint;
                    _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ ignoring received seq %llu pubKey %02x%02x%02x%02x previous seq %llu %02x%02x%02x%02x for %{public}@", applier, 0x64u);
                  }
                }

LABEL_200:

                goto LABEL_201;
              }

              v140 = __nwlog_obj();
              v141 = os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT);
              if (v138)
              {
                if (v141)
                {
                  *applier = 136449282;
                  *&applier[4] = "nwsc_save_remote_pub_key";
                  *&applier[12] = 2114;
                  *&applier[14] = v19;
                  *&applier[22] = 2048;
                  *&applier[24] = v16;
                  *&applier[32] = 1024;
                  *&applier[34] = v238;
                  *&applier[38] = 1024;
                  *&applier[40] = BYTE1(v238);
                  *&applier[44] = 1024;
                  *&applier[46] = BYTE2(v238);
                  *&applier[50] = 1024;
                  *&applier[52] = BYTE3(v238);
                  *&applier[56] = 2048;
                  v245 = buffer;
                  v246 = 1024;
                  *v247 = BYTE8(buffer);
                  *&v247[4] = 1024;
                  *&v247[6] = BYTE9(buffer);
                  v248 = 1024;
                  v249 = BYTE10(buffer);
                  v250 = 1024;
                  v251 = BYTE11(buffer);
                  v252 = 2114;
                  v253 = endpoint;
                  v142 = "%{public}s %{public}@ saving different received seq %llu pubKey %02x%02x%02x%02x previous seq %llu %02x%02x%02x%02x for %{public}@";
                  v143 = v140;
                  v144 = 100;
LABEL_196:
                  _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_DEFAULT, v142, applier, v144);
                }
              }

              else if (v141)
              {
                *applier = 136448258;
                *&applier[4] = "nwsc_save_remote_pub_key";
                *&applier[12] = 2114;
                *&applier[14] = v19;
                *&applier[22] = 2048;
                *&applier[24] = v16;
                *&applier[32] = 1024;
                *&applier[34] = v238;
                *&applier[38] = 1024;
                *&applier[40] = BYTE1(v238);
                *&applier[44] = 1024;
                *&applier[46] = BYTE2(v238);
                *&applier[50] = 1024;
                *&applier[52] = BYTE3(v238);
                *&applier[56] = 2048;
                v245 = buffer;
                v246 = 2114;
                *v247 = endpoint;
                v142 = "%{public}s %{public}@ saving same pubKey received seq %llu pubKey %02x%02x%02x%02x previous seq %llu for %{public}@";
                v143 = v140;
                v144 = 76;
                goto LABEL_196;
              }

              *type = v222;
              v242 = v238;
              v243 = v239;
              xpc_dictionary_set_data(v19[13], key, type, 0x28uLL);
              v145 = v19[9];
              *applier = MEMORY[0x1E69E9820];
              *&applier[8] = 3221225472;
              *&applier[16] = ___ZL24nwsc_save_remote_pub_keyP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObjectyPh_block_invoke;
              *&applier[24] = &unk_1E6A34B00;
              v146 = v19;
              *&applier[32] = v146;
              *&applier[40] = v222;
              if (v145)
              {
                _nw_array_apply(v145, applier);
                v146 = *&applier[32];
              }

              goto LABEL_200;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v40 = gLogObj;
            *applier = 136446466;
            *&applier[4] = "nwsc_save_remote_pub_key";
            *&applier[12] = 2114;
            *&applier[14] = v21;
            v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s Could not get identifier for endpoint %{public}@", applier, 22);

            LOBYTE(buffer) = 16;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v41, &buffer, type))
            {
              goto LABEL_131;
            }

            if (buffer == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              v43 = buffer;
              if (os_log_type_enabled(v42, buffer))
              {
                *applier = 136446466;
                *&applier[4] = "nwsc_save_remote_pub_key";
                *&applier[12] = 2114;
                *&applier[14] = endpoint;
                _os_log_impl(&dword_181A37000, v42, v43, "%{public}s Could not get identifier for endpoint %{public}@", applier, 0x16u);
              }

LABEL_331:

              goto LABEL_131;
            }

            if (type[0] != OS_LOG_TYPE_INFO)
            {
              v42 = __nwlog_obj();
              v87 = buffer;
              if (os_log_type_enabled(v42, buffer))
              {
                *applier = 136446466;
                *&applier[4] = "nwsc_save_remote_pub_key";
                *&applier[12] = 2114;
                *&applier[14] = endpoint;
                _os_log_impl(&dword_181A37000, v42, v87, "%{public}s Could not get identifier for endpoint %{public}@, backtrace limit exceeded", applier, 0x16u);
              }

              goto LABEL_331;
            }

            v72 = __nw_create_backtrace_string();
            v73 = __nwlog_obj();
            v74 = buffer;
            v75 = os_log_type_enabled(v73, buffer);
            if (v72)
            {
              if (v75)
              {
                *applier = 136446722;
                *&applier[4] = "nwsc_save_remote_pub_key";
                *&applier[12] = 2114;
                *&applier[14] = endpoint;
                *&applier[22] = 2082;
                *&applier[24] = v72;
                _os_log_impl(&dword_181A37000, v73, v74, "%{public}s Could not get identifier for endpoint %{public}@, dumping backtrace:%{public}s", applier, 0x20u);
              }

              goto LABEL_80;
            }

            if (v75)
            {
              *applier = 136446466;
              *&applier[4] = "nwsc_save_remote_pub_key";
              *&applier[12] = 2114;
              *&applier[14] = endpoint;
              _os_log_impl(&dword_181A37000, v73, v74, "%{public}s Could not get identifier for endpoint %{public}@, no backtrace", applier, 0x16u);
            }
          }

          else
          {
            v208 = __nwlog_obj();
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v208, 16, "%{public}s called with null endpoint", key, 12);

            applier[0] = 16;
            LOBYTE(buffer) = 0;
            if (!__nwlog_fault(v41, applier, &buffer))
            {
              goto LABEL_131;
            }

            if (applier[0] == 17)
            {
              v42 = __nwlog_obj();
              v209 = applier[0];
              if (os_log_type_enabled(v42, applier[0]))
              {
                *key = 136446210;
                *&key[4] = "nwsc_save_remote_pub_key";
                _os_log_impl(&dword_181A37000, v42, v209, "%{public}s called with null endpoint", key, 0xCu);
              }

              goto LABEL_331;
            }

            if (buffer != 1)
            {
              v42 = __nwlog_obj();
              v219 = applier[0];
              if (os_log_type_enabled(v42, applier[0]))
              {
                *key = 136446210;
                *&key[4] = "nwsc_save_remote_pub_key";
                _os_log_impl(&dword_181A37000, v42, v219, "%{public}s called with null endpoint, backtrace limit exceeded", key, 0xCu);
              }

              goto LABEL_331;
            }

            v214 = __nw_create_backtrace_string();
            v73 = __nwlog_obj();
            v215 = applier[0];
            v216 = os_log_type_enabled(v73, applier[0]);
            if (v214)
            {
              if (v216)
              {
                *key = 136446466;
                *&key[4] = "nwsc_save_remote_pub_key";
                *&key[12] = 2082;
                *&key[14] = v214;
                _os_log_impl(&dword_181A37000, v73, v215, "%{public}s called with null endpoint, dumping backtrace:%{public}s", key, 0x16u);
              }

              free(v214);
LABEL_131:
              if (!v41)
              {
                goto LABEL_201;
              }

              goto LABEL_132;
            }

            if (v216)
            {
              *key = 136446210;
              *&key[4] = "nwsc_save_remote_pub_key";
              _os_log_impl(&dword_181A37000, v73, v215, "%{public}s called with null endpoint, no backtrace", key, 0xCu);
            }
          }

LABEL_130:

          goto LABEL_131;
        }

        v206 = __nwlog_obj();
        *key = 136446210;
        *&key[4] = "nwsc_save_remote_pub_key";
        v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s called with null serviceConnector->remotePubKeys", key, 12);

        applier[0] = 16;
        LOBYTE(buffer) = 0;
        if (!__nwlog_fault(v41, applier, &buffer))
        {
          goto LABEL_131;
        }

        if (applier[0] == 17)
        {
          v42 = __nwlog_obj();
          v207 = applier[0];
          if (os_log_type_enabled(v42, applier[0]))
          {
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            _os_log_impl(&dword_181A37000, v42, v207, "%{public}s called with null serviceConnector->remotePubKeys", key, 0xCu);
          }

          goto LABEL_331;
        }

        if (buffer != 1)
        {
          v42 = __nwlog_obj();
          v218 = applier[0];
          if (os_log_type_enabled(v42, applier[0]))
          {
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            _os_log_impl(&dword_181A37000, v42, v218, "%{public}s called with null serviceConnector->remotePubKeys, backtrace limit exceeded", key, 0xCu);
          }

          goto LABEL_331;
        }

        v72 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        v212 = applier[0];
        v213 = os_log_type_enabled(v73, applier[0]);
        if (!v72)
        {
          if (v213)
          {
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            _os_log_impl(&dword_181A37000, v73, v212, "%{public}s called with null serviceConnector->remotePubKeys, no backtrace", key, 0xCu);
          }

          goto LABEL_130;
        }

        if (v213)
        {
          *key = 136446466;
          *&key[4] = "nwsc_save_remote_pub_key";
          *&key[12] = 2082;
          *&key[14] = v72;
          _os_log_impl(&dword_181A37000, v73, v212, "%{public}s called with null serviceConnector->remotePubKeys, dumping backtrace:%{public}s", key, 0x16u);
        }
      }

      else
      {
        v204 = __nwlog_obj();
        *key = 136446210;
        *&key[4] = "nwsc_save_remote_pub_key";
        v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v204, 16, "%{public}s called with null serviceConnector", key, 12);

        applier[0] = 16;
        LOBYTE(buffer) = 0;
        if (!__nwlog_fault(v41, applier, &buffer))
        {
          goto LABEL_131;
        }

        if (applier[0] == 17)
        {
          v42 = __nwlog_obj();
          v205 = applier[0];
          if (os_log_type_enabled(v42, applier[0]))
          {
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            _os_log_impl(&dword_181A37000, v42, v205, "%{public}s called with null serviceConnector", key, 0xCu);
          }

          goto LABEL_331;
        }

        if (buffer != 1)
        {
          v42 = __nwlog_obj();
          v217 = applier[0];
          if (os_log_type_enabled(v42, applier[0]))
          {
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            _os_log_impl(&dword_181A37000, v42, v217, "%{public}s called with null serviceConnector, backtrace limit exceeded", key, 0xCu);
          }

          goto LABEL_331;
        }

        v72 = __nw_create_backtrace_string();
        v73 = __nwlog_obj();
        v210 = applier[0];
        v211 = os_log_type_enabled(v73, applier[0]);
        if (!v72)
        {
          if (v211)
          {
            *key = 136446210;
            *&key[4] = "nwsc_save_remote_pub_key";
            _os_log_impl(&dword_181A37000, v73, v210, "%{public}s called with null serviceConnector, no backtrace", key, 0xCu);
          }

          goto LABEL_130;
        }

        if (v211)
        {
          *key = 136446466;
          *&key[4] = "nwsc_save_remote_pub_key";
          *&key[12] = 2082;
          *&key[14] = v72;
          _os_log_impl(&dword_181A37000, v73, v210, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", key, 0x16u);
        }
      }

LABEL_80:

      free(v72);
      if (!v41)
      {
LABEL_201:

        if (v227)
        {
          v147 = *(a1 + 40);
          if ((*(v227 + 617) & 4) != 0)
          {
            if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
            }

            v148 = nw_protocol_copy_quic_stream_definition_quic_definition;
            v149 = nw_connection_copy_protocol_metadata(v147, v148);
          }

          else
          {
            if (nw_protocol_setup_tcp_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
            }

            v148 = g_tcp_definition;
            v149 = nw_connection_copy_protocol_metadata(v147, v148);
          }

          v154 = v149;

          if (v154)
          {
            if (nw_context_copy_implicit_context::onceToken[0] != -1)
            {
              dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
            }

            v155 = nw_context_copy_implicit_context::implicit_context;
            v233[0] = MEMORY[0x1E69E9820];
            v233[1] = 3221225472;
            v233[2] = ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke_206;
            v233[3] = &unk_1E6A3B4E0;
            v234 = *(a1 + 32);
            v235 = v227;
            v236 = v154;
            nw_queue_context_async_if_needed(v155, v233);

            v156 = v234;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v156 = gLogObj;
            if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
            {
              v157 = *(a1 + 32);
              v158 = *(a1 + 40);
              *key = 136446978;
              *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&key[12] = 2114;
              *&key[14] = v157;
              *&key[22] = 2114;
              *&key[24] = v158;
              LOWORD(v258[0]) = 2114;
              *(v258 + 2) = v227;
              _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ metadata for connection %{public}@ is nil -- unable to disable keep alives for request %{public}@", key, 0x2Au);
            }
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v159 = gLogObj;
          v160 = os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT);
          if (v221 < 0)
          {
            if (v160)
            {
              v164 = *(a1 + 32);
              *key = 136446978;
              *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&key[12] = 2114;
              *&key[14] = v164;
              *&key[22] = 2114;
              *&key[24] = v227;
              LOWORD(v258[0]) = 2048;
              *(v258 + 2) = v222;
              _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ outgoing request %{public}@ was accepted by peer with reply seq %llu", key, 0x2Au);
            }

            v227->sequenceNumber = v222;
            v165 = *(a1 + 32);
            v166 = *(a1 + 40);
            v229[0] = MEMORY[0x1E69E9820];
            v229[1] = 3221225472;
            v229[2] = ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke_207;
            v229[3] = &unk_1E6A34A60;
            v230 = v165;
            v231 = v227;
            v232 = *(a1 + 40);
            nw_service_connector_accept_connection_for_request(v230, v166, v231, v229);
          }

          else
          {
            if (v160)
            {
              v161 = "";
              v162 = *(a1 + 32);
              *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *key = 136447234;
              if ((v221 & 0x40) == 0)
              {
                v161 = "not ";
              }

              *&key[12] = 2114;
              *&key[14] = v162;
              *&key[22] = 2114;
              *&key[24] = v227;
              LOWORD(v258[0]) = 2082;
              *(v258 + 2) = v161;
              WORD1(v258[1]) = 2048;
              *(&v258[1] + 4) = v222;
              _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ outgoing request %{public}@ was rejected (%{public}sby policy) by peer with reply seq %llu", key, 0x34u);
            }

            v163 = *(a1 + 32);
            if ((v221 & 0x40) != 0)
            {
              nw_service_connector_cancel_request_inner(v163, v227->endpoint, v227->service, *(a1 + 40), 0);
              nw_service_connector_trigger_request_complete_block_inner(*(a1 + 32), v227, 0, 0, 61);
            }

            else
            {
              nwsc_request_start_path_watcher(v163, v227, *(a1 + 40), 0);
            }
          }

          goto LABEL_290;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v150 = gLogObj;
        v151 = v150;
        if ((v221 & 0x80) == 0)
        {
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            v152 = *(a1 + 32);
            v153 = *(a1 + 40);
            *key = 136446978;
            *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
            *&key[12] = 2114;
            *&key[14] = v152;
            *&key[22] = 2114;
            *&key[24] = v153;
            LOWORD(v258[0]) = 2048;
            *(v258 + 2) = v222;
            _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ did not find a matching outgoing request for %{public}@, denied with seq %llu", key, 0x2Au);
          }

          v88 = 0;
LABEL_249:
          nw_connection_cancel(*(a1 + 40));
          goto LABEL_291;
        }

        v167 = *(a1 + 32);
        v168 = *(a1 + 40);
        *key = 136446978;
        *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
        *&key[12] = 2114;
        *&key[14] = v167;
        *&key[22] = 2114;
        *&key[24] = v168;
        LOWORD(v258[0]) = 2048;
        *(v258 + 2) = v222;
        LODWORD(v220) = 42;
        v169 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v150, 16, "%{public}s %{public}@ did not find a matching outgoing request for %{public}@, accepted with seq %llu", key, v220);

        applier[0] = 16;
        LOBYTE(buffer) = 0;
        if (__nwlog_fault(v169, applier, &buffer))
        {
          if (applier[0] == 17)
          {
            v170 = __nwlog_obj();
            v171 = applier[0];
            if (os_log_type_enabled(v170, applier[0]))
            {
              v172 = *(a1 + 32);
              v173 = *(a1 + 40);
              *key = 136446978;
              *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&key[12] = 2114;
              *&key[14] = v172;
              *&key[22] = 2114;
              *&key[24] = v173;
              LOWORD(v258[0]) = 2048;
              *(v258 + 2) = v222;
              _os_log_impl(&dword_181A37000, v170, v171, "%{public}s %{public}@ did not find a matching outgoing request for %{public}@, accepted with seq %llu", key, 0x2Au);
            }
          }

          else
          {
            if (buffer == 1)
            {
              v174 = __nw_create_backtrace_string();
              v175 = __nwlog_obj();
              v176 = applier[0];
              v177 = os_log_type_enabled(v175, applier[0]);
              if (v174)
              {
                if (v177)
                {
                  v178 = *(a1 + 32);
                  v179 = *(a1 + 40);
                  *key = 136447234;
                  *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
                  *&key[12] = 2114;
                  *&key[14] = v178;
                  *&key[22] = 2114;
                  *&key[24] = v179;
                  LOWORD(v258[0]) = 2048;
                  *(v258 + 2) = v222;
                  WORD1(v258[1]) = 2082;
                  *(&v258[1] + 4) = v174;
                  _os_log_impl(&dword_181A37000, v175, v176, "%{public}s %{public}@ did not find a matching outgoing request for %{public}@, accepted with seq %llu, dumping backtrace:%{public}s", key, 0x34u);
                }

                free(v174);
              }

              else
              {
                if (v177)
                {
                  v183 = *(a1 + 32);
                  v184 = *(a1 + 40);
                  *key = 136446978;
                  *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
                  *&key[12] = 2114;
                  *&key[14] = v183;
                  *&key[22] = 2114;
                  *&key[24] = v184;
                  LOWORD(v258[0]) = 2048;
                  *(v258 + 2) = v222;
                  _os_log_impl(&dword_181A37000, v175, v176, "%{public}s %{public}@ did not find a matching outgoing request for %{public}@, accepted with seq %llu, no backtrace", key, 0x2Au);
                }
              }

              goto LABEL_247;
            }

            v170 = __nwlog_obj();
            v180 = applier[0];
            if (os_log_type_enabled(v170, applier[0]))
            {
              v181 = *(a1 + 32);
              v182 = *(a1 + 40);
              *key = 136446978;
              *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&key[12] = 2114;
              *&key[14] = v181;
              *&key[22] = 2114;
              *&key[24] = v182;
              LOWORD(v258[0]) = 2048;
              *(v258 + 2) = v222;
              _os_log_impl(&dword_181A37000, v170, v180, "%{public}s %{public}@ did not find a matching outgoing request for %{public}@, accepted with seq %llu, backtrace limit exceeded", key, 0x2Au);
            }
          }
        }

LABEL_247:
        v88 = 0;
        if (v169)
        {
          free(v169);
        }

        goto LABEL_249;
      }

LABEL_132:
      free(v41);
      goto LABEL_201;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    *key = 136446210;
    *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s nw_dispatch_data_copyout failed", key, 12);

    applier[0] = 16;
    LOBYTE(buffer) = 0;
    if (__nwlog_fault(v29, applier, &buffer))
    {
      if (applier[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = applier[0];
        if (os_log_type_enabled(v30, applier[0]))
        {
          *key = 136446210;
          *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_dispatch_data_copyout failed", key, 0xCu);
        }

LABEL_30:

        goto LABEL_101;
      }

      if (buffer != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v71 = applier[0];
        if (os_log_type_enabled(v30, applier[0]))
        {
          *key = 136446210;
          *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v30, v71, "%{public}s nw_dispatch_data_copyout failed, backtrace limit exceeded", key, 0xCu);
        }

        goto LABEL_30;
      }

      v36 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = applier[0];
      v39 = os_log_type_enabled(v37, applier[0]);
      if (v36)
      {
        if (v39)
        {
          *key = 136446466;
          *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
          *&key[12] = 2082;
          *&key[14] = v36;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_dispatch_data_copyout failed, dumping backtrace:%{public}s", key, 0x16u);
        }

        free(v36);
        if (!v29)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v39)
      {
        *key = 136446210;
        *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_dispatch_data_copyout failed, no backtrace", key, 0xCu);
      }
    }

LABEL_101:
    if (!v29)
    {
LABEL_103:
      v88 = v227;
      nw_connection_cancel(*(a1 + 40));
LABEL_291:

      goto LABEL_292;
    }

LABEL_102:
    free(v29);
    goto LABEL_103;
  }

  v11 = objc_alloc_init(NWConcrete_nw_unique_connection_request);
  v227 = v11;
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *key = 136446210;
    *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s [nw_unique_connection_request init:] failed", key, 12);

    applier[0] = 16;
    LOBYTE(__src[0]) = 0;
    if (!__nwlog_fault(v33, applier, __src))
    {
      goto LABEL_120;
    }

    if (applier[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = applier[0];
      if (os_log_type_enabled(v34, applier[0]))
      {
        *key = 136446210;
        *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s [nw_unique_connection_request init:] failed", key, 0xCu);
      }
    }

    else
    {
      if (LOBYTE(__src[0]) == 1)
      {
        v57 = __nw_create_backtrace_string();
        v58 = __nwlog_obj();
        v59 = applier[0];
        v60 = os_log_type_enabled(v58, applier[0]);
        if (v57)
        {
          if (v60)
          {
            *key = 136446466;
            *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
            *&key[12] = 2082;
            *&key[14] = v57;
            _os_log_impl(&dword_181A37000, v58, v59, "%{public}s [nw_unique_connection_request init:] failed, dumping backtrace:%{public}s", key, 0x16u);
          }

          free(v57);
          if (!v33)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        if (v60)
        {
          *key = 136446210;
          *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v58, v59, "%{public}s [nw_unique_connection_request init:] failed, no backtrace", key, 0xCu);
        }

LABEL_120:
        if (!v33)
        {
LABEL_122:
          nw_connection_cancel(*(a1 + 40));
LABEL_292:

          return;
        }

LABEL_121:
        free(v33);
        goto LABEL_122;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v76 = applier[0];
      if (os_log_type_enabled(v34, applier[0]))
      {
        *key = 136446210;
        *&key[4] = "nw_service_connector_should_accept_connection_block_invoke";
        _os_log_impl(&dword_181A37000, v34, v76, "%{public}s [nw_unique_connection_request init:] failed, backtrace limit exceeded", key, 0xCu);
      }
    }

    goto LABEL_120;
  }

  *(v11 + 616) |= 1u;
  v274 = 0u;
  memset(v275, 0, 28);
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v259 = 0u;
  memset(v258, 0, sizeof(v258));
  memset(key, 0, sizeof(key));
  __src[0] = 0;
  __src[1] = __src;
  __src[2] = 0x2000000000;
  __src[3] = 0;
  *&buffer = 0;
  *(&buffer + 1) = &buffer;
  *&v255 = 0x2000000000;
  *(&v255 + 1) = &key[2];
  if (v9)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
    *&applier[24] = &unk_1E6A34348;
    *&applier[40] = &buffer;
    *&applier[48] = 346;
    *&applier[32] = __src;
    dispatch_data_apply(v9, applier);
    v12 = *(__src[1] + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&buffer, 8);
  _Block_object_dispose(__src, 8);
  if (v12 <= 0x4E)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 32);
      v46 = *(a1 + 40);
      *applier = 136446978;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v45;
      *&applier[22] = 2048;
      *&applier[24] = v12;
      *&applier[32] = 2114;
      *&applier[34] = v46;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ second read copyout insufficient req length %zu, cancelling %{public}@", applier, 0x2Au);
    }

    nw_connection_cancel(*(a1 + 40));
    goto LABEL_290;
  }

  v47 = *&key[2];
  v48 = nw_connection_copy_connected_remote_endpoint(*(a1 + 40));
  if (nw_endpoint_get_type(v48) != nw_endpoint_type_address)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = gLogObj;
    v62 = *(a1 + 32);
    endpointb = v48;
    v63 = nw_endpoint_get_type(v48);
    v64 = *(a1 + 40);
    *applier = 136447234;
    *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
    *&applier[12] = 2114;
    *&applier[14] = v62;
    *&applier[22] = 2114;
    *&applier[24] = v48;
    *&applier[32] = 1024;
    *&applier[34] = v63;
    *&applier[38] = 2114;
    *&applier[40] = v64;
    v65 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s %{public}@ got bad endpoint %{public}@ type %u from %{public}@", applier, 48);

    LOBYTE(__src[0]) = 16;
    LOBYTE(buffer) = 0;
    if (__nwlog_fault(v65, __src, &buffer))
    {
      if (LOBYTE(__src[0]) == 17)
      {
        v66 = __nwlog_obj();
        v67 = __src[0];
        if (os_log_type_enabled(v66, __src[0]))
        {
          v68 = *(a1 + 32);
          v69 = nw_endpoint_get_type(endpointb);
          v70 = *(a1 + 40);
          *applier = 136447234;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v68;
          *&applier[22] = 2114;
          *&applier[24] = endpointb;
          *&applier[32] = 1024;
          *&applier[34] = v69;
          *&applier[38] = 2114;
          *&applier[40] = v70;
          _os_log_impl(&dword_181A37000, v66, v67, "%{public}s %{public}@ got bad endpoint %{public}@ type %u from %{public}@", applier, 0x30u);
        }
      }

      else if (buffer == 1)
      {
        v82 = __nw_create_backtrace_string();
        v66 = __nwlog_obj();
        v83 = __src[0];
        v84 = os_log_type_enabled(v66, __src[0]);
        if (v82)
        {
          if (v84)
          {
            v223 = *(a1 + 32);
            v85 = nw_endpoint_get_type(endpointb);
            v86 = *(a1 + 40);
            *applier = 136447490;
            *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
            *&applier[12] = 2114;
            *&applier[14] = v223;
            *&applier[22] = 2114;
            *&applier[24] = endpointb;
            *&applier[32] = 1024;
            *&applier[34] = v85;
            *&applier[38] = 2114;
            *&applier[40] = v86;
            *&applier[48] = 2082;
            *&applier[50] = v82;
            _os_log_impl(&dword_181A37000, v66, v83, "%{public}s %{public}@ got bad endpoint %{public}@ type %u from %{public}@, dumping backtrace:%{public}s", applier, 0x3Au);
          }

          free(v82);
          goto LABEL_147;
        }

        if (v84)
        {
          v110 = *(a1 + 32);
          v111 = nw_endpoint_get_type(endpointb);
          v112 = *(a1 + 40);
          *applier = 136447234;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v110;
          *&applier[22] = 2114;
          *&applier[24] = endpointb;
          *&applier[32] = 1024;
          *&applier[34] = v111;
          *&applier[38] = 2114;
          *&applier[40] = v112;
          _os_log_impl(&dword_181A37000, v66, v83, "%{public}s %{public}@ got bad endpoint %{public}@ type %u from %{public}@, no backtrace", applier, 0x30u);
        }
      }

      else
      {
        v66 = __nwlog_obj();
        v93 = __src[0];
        if (os_log_type_enabled(v66, __src[0]))
        {
          v94 = *(a1 + 32);
          v95 = nw_endpoint_get_type(endpointb);
          v96 = *(a1 + 40);
          *applier = 136447234;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v94;
          *&applier[22] = 2114;
          *&applier[24] = endpointb;
          *&applier[32] = 1024;
          *&applier[34] = v95;
          *&applier[38] = 2114;
          *&applier[40] = v96;
          _os_log_impl(&dword_181A37000, v66, v93, "%{public}s %{public}@ got bad endpoint %{public}@ type %u from %{public}@, backtrace limit exceeded", applier, 0x30u);
        }
      }
    }

LABEL_147:
    if (v65)
    {
      free(v65);
    }

    v113 = endpointb;
    nw_connection_cancel(*(a1 + 40));
    goto LABEL_289;
  }

  memset(__src, 0, 28);
  if ((nw_endpoint_fillout_v4v6_address(v48, __src) & 1) == 0)
  {
    v77 = v48;
    v78 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
    v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s NW_ENDPOINT_FILLOUT_V4V6_ADDRESS failed", applier, 12);

    LOBYTE(buffer) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v79, &buffer, type))
    {
      if (buffer == 17)
      {
        v80 = __nwlog_obj();
        v81 = buffer;
        if (os_log_type_enabled(v80, buffer))
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s NW_ENDPOINT_FILLOUT_V4V6_ADDRESS failed", applier, 0xCu);
        }
      }

      else
      {
        if (type[0] == OS_LOG_TYPE_INFO)
        {
          v89 = __nw_create_backtrace_string();
          v90 = __nwlog_obj();
          v91 = buffer;
          v92 = os_log_type_enabled(v90, buffer);
          if (v89)
          {
            if (v92)
            {
              *applier = 136446466;
              *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&applier[12] = 2082;
              *&applier[14] = v89;
              _os_log_impl(&dword_181A37000, v90, v91, "%{public}s NW_ENDPOINT_FILLOUT_V4V6_ADDRESS failed, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(v89);
          }

          else
          {
            if (v92)
            {
              *applier = 136446210;
              *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
              _os_log_impl(&dword_181A37000, v90, v91, "%{public}s NW_ENDPOINT_FILLOUT_V4V6_ADDRESS failed, no backtrace", applier, 0xCu);
            }
          }

          goto LABEL_177;
        }

        v80 = __nwlog_obj();
        v108 = buffer;
        if (os_log_type_enabled(v80, buffer))
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v80, v108, "%{public}s NW_ENDPOINT_FILLOUT_V4V6_ADDRESS failed, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

LABEL_177:
    if (v79)
    {
      free(v79);
    }

    v113 = v77;
    nw_connection_cancel(*(a1 + 40));
    goto LABEL_289;
  }

  endpointa = v48;
  buffer = 0uLL;
  DWORD2(v255) = 0;
  *&v255 = 0;
  if (LOBYTE(__src[0]) >= 0x1Cu)
  {
    v49 = 28;
  }

  else
  {
    v49 = LOBYTE(__src[0]);
  }

  memcpy(&buffer, __src, v49);
  if (BYTE1(buffer) != 2 && BYTE1(buffer) != 30)
  {
    v100 = __nwlog_obj();
    *applier = 136446466;
    *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
    *&applier[12] = 1024;
    *&applier[14] = BYTE1(buffer);
    v101 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s Unsupported address family %u", applier, 18);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v238) = 0;
    if (__nwlog_fault(v101, type, &v238))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v102 = __nwlog_obj();
        v103 = type[0];
        if (os_log_type_enabled(v102, type[0]))
        {
          *applier = 136446466;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          *&applier[12] = 1024;
          *&applier[14] = BYTE1(buffer);
          _os_log_impl(&dword_181A37000, v102, v103, "%{public}s Unsupported address family %u", applier, 0x12u);
        }
      }

      else
      {
        if (v238 == 1)
        {
          v114 = __nw_create_backtrace_string();
          v115 = __nwlog_obj();
          v116 = type[0];
          v117 = os_log_type_enabled(v115, type[0]);
          if (v114)
          {
            if (v117)
            {
              *applier = 136446722;
              *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&applier[12] = 1024;
              *&applier[14] = BYTE1(buffer);
              *&applier[18] = 2082;
              *&applier[20] = v114;
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s Unsupported address family %u, dumping backtrace:%{public}s", applier, 0x1Cu);
            }

            free(v114);
          }

          else
          {
            if (v117)
            {
              *applier = 136446466;
              *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&applier[12] = 1024;
              *&applier[14] = BYTE1(buffer);
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s Unsupported address family %u, no backtrace", applier, 0x12u);
            }
          }

          goto LABEL_278;
        }

        v102 = __nwlog_obj();
        v185 = type[0];
        if (os_log_type_enabled(v102, type[0]))
        {
          *applier = 136446466;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          *&applier[12] = 1024;
          *&applier[14] = BYTE1(buffer);
          _os_log_impl(&dword_181A37000, v102, v185, "%{public}s Unsupported address family %u, backtrace limit exceeded", applier, 0x12u);
        }
      }
    }

LABEL_278:
    if (v101)
    {
      free(v101);
    }

    nw_connection_cancel(*(a1 + 40));
    goto LABEL_288;
  }

  WORD1(buffer) = v47;
  address = _nw_endpoint_create_address(&buffer);
  if (!address)
  {
    v104 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
    v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s nw_endpoint_create_address failed", applier, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v238) = 0;
    if (__nwlog_fault(v105, type, &v238))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v106 = __nwlog_obj();
        v107 = type[0];
        if (os_log_type_enabled(v106, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s nw_endpoint_create_address failed", applier, 0xCu);
        }
      }

      else
      {
        if (v238 == 1)
        {
          v133 = __nw_create_backtrace_string();
          v134 = __nwlog_obj();
          v135 = type[0];
          v136 = os_log_type_enabled(v134, type[0]);
          if (v133)
          {
            if (v136)
            {
              *applier = 136446466;
              *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
              *&applier[12] = 2082;
              *&applier[14] = v133;
              _os_log_impl(&dword_181A37000, v134, v135, "%{public}s nw_endpoint_create_address failed, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(v133);
          }

          else
          {
            if (v136)
            {
              *applier = 136446210;
              *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
              _os_log_impl(&dword_181A37000, v134, v135, "%{public}s nw_endpoint_create_address failed, no backtrace", applier, 0xCu);
            }
          }

          goto LABEL_284;
        }

        v106 = __nwlog_obj();
        v196 = type[0];
        if (os_log_type_enabled(v106, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
          _os_log_impl(&dword_181A37000, v106, v196, "%{public}s nw_endpoint_create_address failed, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

LABEL_284:
    if (v105)
    {
      free(v105);
    }

    nw_connection_cancel(*(a1 + 40));
    goto LABEL_287;
  }

  if (*(a1 + 48))
  {
    *(v227 + 617) |= 4u;
    *applier = 0;
    *&applier[8] = 0;
    uuid_generate_random(applier);
    string_ptr = xpc_string_get_string_ptr(*(a1 + 48));
    application_service = nw_endpoint_create_application_service(string_ptr, applier);
    v53 = v227->endpoint;
    v227->endpoint = application_service;

    v54 = nw_connection_copy_endpoint(*(a1 + 40));
    v55 = v227->endpoint;
    device_id = nw_endpoint_get_device_id(v54);
    nw_endpoint_set_device_id(v55, device_id);
  }

  else
  {
    objc_storeStrong(&v227->endpoint, address);
  }

  objc_storeStrong(&v227->connection, *(a1 + 40));
  if (!*&key[12])
  {
    v121 = v260;
    v122 = __nwlog_obj();
    v123 = v122;
    if (v121 == 1)
    {
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        v197 = *(a1 + 32);
        v198 = *(a1 + 40);
        *applier = 136446978;
        *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
        *&applier[12] = 2114;
        *&applier[14] = v197;
        *&applier[22] = 2114;
        *&applier[24] = address;
        *&applier[32] = 2114;
        *&applier[34] = v198;
        _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ received operation code retry from %{public}@ on %{public}@", applier, 0x2Au);
      }

      nwsc_restart_outgoing_requests_waiting_for_path(*(a1 + 32), address);
      goto LABEL_271;
    }

    if (v121)
    {
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v199 = *(a1 + 32);
        v200 = *(a1 + 40);
        *applier = 136447234;
        *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
        *&applier[12] = 2114;
        *&applier[14] = v199;
        *&applier[22] = 1024;
        *&applier[24] = v121;
        *&applier[28] = 2114;
        *&applier[30] = address;
        *&applier[38] = 2114;
        *&applier[40] = v200;
        v126 = "%{public}s %{public}@ received unsupported operation code %u from %{public}@ on %{public}@";
        v127 = v123;
        v128 = OS_LOG_TYPE_ERROR;
        v129 = 48;
        goto LABEL_269;
      }
    }

    else if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v124 = *(a1 + 32);
      v125 = *(a1 + 40);
      *applier = 136446978;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v124;
      *&applier[22] = 2114;
      *&applier[24] = address;
      *&applier[32] = 2114;
      *&applier[34] = v125;
      v126 = "%{public}s %{public}@ received operation code no-op from %{public}@ on %{public}@";
      v127 = v123;
      v128 = OS_LOG_TYPE_DEFAULT;
      v129 = 42;
LABEL_269:
      _os_log_impl(&dword_181A37000, v127, v128, v126, applier, v129);
    }

LABEL_271:
    new_sequence_number = nw_service_connector_get_new_sequence_number();
    nwsc_send_feedback(*(a1 + 32), *(a1 + 40), new_sequence_number, 0, 0, 0);
    goto LABEL_287;
  }

  if (v12 <= 0x5A)
  {
    v118 = __nwlog_obj();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v119 = *(a1 + 32);
      v120 = *(a1 + 40);
      *applier = 136446978;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v119;
      *&applier[22] = 2048;
      *&applier[24] = v12;
      *&applier[32] = 2114;
      *&applier[34] = v120;
      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ second read copyout insufficient start req length %zu, cancelling %{public}@", applier, 0x2Au);
    }

LABEL_274:

    nw_connection_cancel(*(a1 + 40));
    goto LABEL_287;
  }

  v227->sequenceNumber = bswap64(*&key[4]);
  *v227->uuid = *(key | 0xC);
  v130 = key[28];
  if (v12 < key[28] + 91)
  {
    v118 = __nwlog_obj();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v131 = *(a1 + 32);
      v132 = *(a1 + 40);
      *applier = 136447234;
      *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v131;
      *&applier[22] = 2048;
      *&applier[24] = v12;
      *&applier[32] = 1024;
      *&applier[34] = v130;
      *&applier[38] = 2114;
      *&applier[40] = v132;
      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ second read copyout insufficient start req length %zu for service length %u, cancelling %{public}@", applier, 0x30u);
    }

    goto LABEL_274;
  }

  *v227->service = 0u;
  *&v227->service[432] = 0;
  *&v227->service[400] = 0u;
  *&v227->service[416] = 0u;
  *&v227->service[368] = 0u;
  *&v227->service[384] = 0u;
  *&v227->service[336] = 0u;
  *&v227->service[352] = 0u;
  *&v227->service[304] = 0u;
  *&v227->service[320] = 0u;
  *&v227->service[272] = 0u;
  *&v227->service[288] = 0u;
  *&v227->service[240] = 0u;
  *&v227->service[256] = 0u;
  *&v227->service[208] = 0u;
  *&v227->service[224] = 0u;
  *&v227->service[176] = 0u;
  *&v227->service[192] = 0u;
  *&v227->service[144] = 0u;
  *&v227->service[160] = 0u;
  *&v227->service[112] = 0u;
  *&v227->service[128] = 0u;
  *&v227->service[80] = 0u;
  *&v227->service[96] = 0u;
  *&v227->service[48] = 0u;
  *&v227->service[64] = 0u;
  *&v227->service[16] = 0u;
  *&v227->service[32] = 0u;
  memcpy(v227->service, &key[29], v130);
  v186 = *(a1 + 56);
  v227->incomingReqBytesToVerifyLen = v186 + 2;
  v187 = malloc_type_malloc(v186 + 2, 0xA01B0447uLL);
  if (v187)
  {
    goto LABEL_259;
  }

  v188 = __nwlog_obj();
  if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
  {
    v189 = 3;
  }

  else
  {
    v189 = 2;
  }

  *applier = 136446210;
  *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
  v190 = _os_log_send_and_compose_impl(v189, 0, 0, 0, &dword_181A37000, v188, 16, "%{public}s strict allocator failed", applier, 12);

  if (!__nwlog_should_abort(v190))
  {
    free(v190);
    v187 = 0;
LABEL_259:
    v227->incomingReqBytesToVerify = v187;
    *v187 = *(a1 + 58);
    v191 = nw_dispatch_data_copyout(v9, (v227->incomingReqBytesToVerify + 2), *(a1 + 56));
    if (v191 != *(a1 + 56))
    {
      v202 = v191;
      v118 = __nwlog_obj();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v203 = *(a1 + 32);
        *applier = 136446978;
        *&applier[4] = "nw_service_connector_should_accept_connection_block_invoke";
        *&applier[12] = 2114;
        *&applier[14] = v203;
        *&applier[22] = 2048;
        *&applier[24] = v202;
        *&applier[32] = 2114;
        *&applier[34] = v227;
        _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ copyout for sig insufficient req length %zu, cancelling %{public}@", applier, 0x2Au);
      }

      goto LABEL_274;
    }

    v192 = *&key[v130 + 29];
    v193 = *(&v258[1] + v130 + 5);
    v194 = *(&v259 + v130 + 13);
    *&v227->signature[32] = *(&v258[3] + v130 + 5);
    *&v227->signature[48] = v194;
    *v227->signature = v192;
    *&v227->signature[16] = v193;
    v195 = &v227->incomingReqBytesToVerify[v130];
    *(v195 + 45) = 0u;
    *(v195 + 61) = 0u;
    *(v195 + 77) = 0u;
    *(v195 + 29) = 0u;
    nwsc_process_incoming_request(*(a1 + 32), v227);
    nwsc_restart_outgoing_requests_waiting_for_path(*(a1 + 32), address);
LABEL_287:

LABEL_288:
    v113 = endpointa;
LABEL_289:

LABEL_290:
    v88 = v227;
    goto LABEL_291;
  }

  __break(1u);
}

void nwsc_restart_outgoing_requests_waiting_for_path(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null serviceConnector", buf, 12);

    v25 = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &v25, &v24))
    {
      goto LABEL_38;
    }

    if (v25 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = v25;
      v15 = os_log_type_enabled(v9, v25);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v8);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  v6 = v3[12];
  if (v6)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZL47nwsc_restart_outgoing_requests_waiting_for_pathP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
    v21[3] = &unk_1E6A35DB8;
    v22 = v4;
    v23 = v3;
    nw_dictionary_apply(v6, v21);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null serviceConnector->activeOutgoingRequests", buf, 12);

  v25 = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &v25, &v24))
  {
    goto LABEL_38;
  }

  if (v25 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null serviceConnector->activeOutgoingRequests", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v9 = __nwlog_obj();
    v20 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null serviceConnector->activeOutgoingRequests, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = v25;
  v18 = os_log_type_enabled(v9, v25);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null serviceConnector->activeOutgoingRequests, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nwsc_restart_outgoing_requests_waiting_for_path";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null serviceConnector->activeOutgoingRequests, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}

unint64_t nw_service_connector_get_new_sequence_number(void)
{
  if (nw_service_connector_get_new_sequence_number(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_service_connector_get_new_sequence_number(void)::onceToken, &__block_literal_global_199_52039);
  }

    ;
  }

  return result;
}

void nwsc_send_feedback(void *a1, void *a2, unint64_t a3, int a4, int a5, void *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a6;
  buffer = 10752;
  if ((a4 & 1) != 0 || a5)
  {
    if (a4)
    {
      v14 = 128;
    }

    else
    {
      v14 = 64;
    }

    HIWORD(buffer) = v14;
  }

  v40 = bswap64(a3);
  v41 = *(v11 + 152);
  v42 = *(v11 + 168);
  v15 = dispatch_data_create(&buffer, 0x2CuLL, 0, 0);
  if (v15)
  {
    if (a4)
    {
      v16 = &__block_literal_global_44658;
    }

    else
    {
      v16 = &__block_literal_global_6_44667;
    }

    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL18nwsc_send_feedbackP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionybbU13block_pointerFviE_block_invoke;
    completion[3] = &unk_1E6A34AD8;
    v27 = v11;
    v28 = v12;
    v32 = a4;
    v30 = v13;
    v31 = a3;
    v29 = v16;
    v17 = v16;
    nw_connection_send(v28, v15, v17, 1, completion);

    goto LABEL_21;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  *buf = 136446210;
  v36 = "nwsc_send_feedback";
  v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s dispatch_data_create failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (!__nwlog_fault(v19, &type, &v33))
  {
LABEL_17:
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v21 = type;
    if (os_log_type_enabled(v20, type))
    {
      *buf = 136446210;
      v36 = "nwsc_send_feedback";
      _os_log_impl(&dword_181A37000, v20, v21, "%{public}s dispatch_data_create failed", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v33 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    v25 = type;
    if (os_log_type_enabled(v20, type))
    {
      *buf = 136446210;
      v36 = "nwsc_send_feedback";
      _os_log_impl(&dword_181A37000, v20, v25, "%{public}s dispatch_data_create failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_16;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  v23 = type;
  v24 = os_log_type_enabled(v20, type);
  if (!backtrace_string)
  {
    if (v24)
    {
      *buf = 136446210;
      v36 = "nwsc_send_feedback";
      _os_log_impl(&dword_181A37000, v20, v23, "%{public}s dispatch_data_create failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (v24)
  {
    *buf = 136446466;
    v36 = "nwsc_send_feedback";
    v37 = 2082;
    v38 = backtrace_string;
    _os_log_impl(&dword_181A37000, v20, v23, "%{public}s dispatch_data_create failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_18:
  free(v19);
LABEL_19:
  if (v13)
  {
    (*(v13 + 2))(v13, 12);
  }

LABEL_21:
}

void nwsc_process_incoming_request(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2)
{
  v179 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v133 = v3;
  if ((*(v4 + 616) & 0x40) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *key = 136446722;
      *&key[4] = "nwsc_process_incoming_request";
      *&key[12] = 2114;
      *&key[14] = v133;
      *&key[22] = 2114;
      *&key[24] = v5;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ already processed incoming request %{public}@", key, 0x20u);
    }

    goto LABEL_117;
  }

  error = 0;
  v147 = 0u;
  v148 = 0u;
  endpoint = v4->endpoint;
  v7 = v3;
  v8 = endpoint;
  v9 = v8;
  if (!v7)
  {
    v95 = __nwlog_obj();
    *key = 136446210;
    *&key[4] = "nwsc_get_remote_pub_key";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v95, 16, "%{public}s called with null serviceConnector", key, 12);

    LOBYTE(buffer[0]) = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v18, buffer, buf))
    {
      goto LABEL_40;
    }

    if (LOBYTE(buffer[0]) == 17)
    {
      v96 = __nwlog_obj();
      v97 = buffer[0];
      if (os_log_type_enabled(v96, buffer[0]))
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null serviceConnector", key, 0xCu);
      }

      goto LABEL_223;
    }

    if (buf[0] != 1)
    {
      v96 = __nwlog_obj();
      v128 = buffer[0];
      if (os_log_type_enabled(v96, buffer[0]))
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v128, "%{public}s called with null serviceConnector, backtrace limit exceeded", key, 0xCu);
      }

      goto LABEL_223;
    }

    backtrace_string = __nw_create_backtrace_string();
    v96 = __nwlog_obj();
    v121 = buffer[0];
    v122 = os_log_type_enabled(v96, buffer[0]);
    if (!backtrace_string)
    {
      if (v122)
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v121, "%{public}s called with null serviceConnector, no backtrace", key, 0xCu);
      }

      goto LABEL_223;
    }

    if (v122)
    {
      *key = 136446466;
      *&key[4] = "nwsc_get_remote_pub_key";
      *&key[12] = 2082;
      *&key[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v96, v121, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", key, 0x16u);
    }

    goto LABEL_195;
  }

  if (!v7->remotePubKeys)
  {
    v98 = __nwlog_obj();
    *key = 136446210;
    *&key[4] = "nwsc_get_remote_pub_key";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s called with null serviceConnector->remotePubKeys", key, 12);

    LOBYTE(buffer[0]) = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v18, buffer, buf))
    {
      goto LABEL_40;
    }

    if (LOBYTE(buffer[0]) == 17)
    {
      v96 = __nwlog_obj();
      v99 = buffer[0];
      if (os_log_type_enabled(v96, buffer[0]))
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v99, "%{public}s called with null serviceConnector->remotePubKeys", key, 0xCu);
      }

      goto LABEL_223;
    }

    if (buf[0] != 1)
    {
      v96 = __nwlog_obj();
      v129 = buffer[0];
      if (os_log_type_enabled(v96, buffer[0]))
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v129, "%{public}s called with null serviceConnector->remotePubKeys, backtrace limit exceeded", key, 0xCu);
      }

      goto LABEL_223;
    }

    backtrace_string = __nw_create_backtrace_string();
    v96 = __nwlog_obj();
    v123 = buffer[0];
    v124 = os_log_type_enabled(v96, buffer[0]);
    if (!backtrace_string)
    {
      if (v124)
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v123, "%{public}s called with null serviceConnector->remotePubKeys, no backtrace", key, 0xCu);
      }

      goto LABEL_223;
    }

    if (v124)
    {
      *key = 136446466;
      *&key[4] = "nwsc_get_remote_pub_key";
      *&key[12] = 2082;
      *&key[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v96, v123, "%{public}s called with null serviceConnector->remotePubKeys, dumping backtrace:%{public}s", key, 0x16u);
    }

LABEL_195:

    goto LABEL_26;
  }

  if (!v8)
  {
    v100 = __nwlog_obj();
    *key = 136446210;
    *&key[4] = "nwsc_get_remote_pub_key";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s called with null endpoint", key, 12);

    LOBYTE(buffer[0]) = 16;
    buf[0] = 0;
    if (!__nwlog_fault(v18, buffer, buf))
    {
      goto LABEL_40;
    }

    if (LOBYTE(buffer[0]) == 17)
    {
      v96 = __nwlog_obj();
      v101 = buffer[0];
      if (os_log_type_enabled(v96, buffer[0]))
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v101, "%{public}s called with null endpoint", key, 0xCu);
      }
    }

    else if (buf[0] == 1)
    {
      v125 = __nw_create_backtrace_string();
      v96 = __nwlog_obj();
      v126 = buffer[0];
      v127 = os_log_type_enabled(v96, buffer[0]);
      if (v125)
      {
        if (v127)
        {
          *key = 136446466;
          *&key[4] = "nwsc_get_remote_pub_key";
          *&key[12] = 2082;
          *&key[14] = v125;
          _os_log_impl(&dword_181A37000, v96, v126, "%{public}s called with null endpoint, dumping backtrace:%{public}s", key, 0x16u);
        }

        free(v125);
        goto LABEL_40;
      }

      if (v127)
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v126, "%{public}s called with null endpoint, no backtrace", key, 0xCu);
      }
    }

    else
    {
      v96 = __nwlog_obj();
      v130 = buffer[0];
      if (os_log_type_enabled(v96, buffer[0]))
      {
        *key = 136446210;
        *&key[4] = "nwsc_get_remote_pub_key";
        _os_log_impl(&dword_181A37000, v96, v130, "%{public}s called with null endpoint, backtrace limit exceeded", key, 0xCu);
      }
    }

LABEL_223:

    goto LABEL_40;
  }

  v178 = 0;
  v176 = 0u;
  v177 = 0u;
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
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v155 = 0u;
  memset(key, 0, sizeof(key));
  if (nwsc_get_endpoint_identifier(v8, key, 0x1B4uLL))
  {
    v10 = xpc_dictionary_get_value(v7->remotePubKeys, key);
    v11 = v10;
    memset(buffer, 0, 40);
    if (!v10 || xpc_data_get_bytes(v10, buffer, 0, 0x28uLL) >= 0x28)
    {
      goto LABEL_51;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    v150 = "nwsc_get_remote_pub_key";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s Insufficient length in remotePubKeys", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v143 = 0;
    if (__nwlog_fault(v13, &type, &v143))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v150 = "nwsc_get_remote_pub_key";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Insufficient length in remotePubKeys", buf, 0xCu);
        }
      }

      else if (v143 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v14, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v150 = "nwsc_get_remote_pub_key";
            v151 = 2082;
            v152 = v25;
            _os_log_impl(&dword_181A37000, v14, v26, "%{public}s Insufficient length in remotePubKeys, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v27)
        {
          *buf = 136446210;
          v150 = "nwsc_get_remote_pub_key";
          _os_log_impl(&dword_181A37000, v14, v26, "%{public}s Insufficient length in remotePubKeys, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v150 = "nwsc_get_remote_pub_key";
          _os_log_impl(&dword_181A37000, v14, v29, "%{public}s Insufficient length in remotePubKeys, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v13)
    {
LABEL_51:
      v147 = *(buffer + 8);
      v148 = *(&buffer[1] + 8);
      v28 = *&buffer[0];

      goto LABEL_52;
    }

LABEL_50:
    free(v13);
    goto LABEL_51;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  LODWORD(buffer[0]) = 136446466;
  *(buffer + 4) = "nwsc_get_remote_pub_key";
  WORD6(buffer[0]) = 2114;
  *(buffer + 14) = v9;
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s Could not get identifier for endpoint %{public}@", buffer, 22);

  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v18, buf, &type))
  {
    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = buf[0];
      if (os_log_type_enabled(v19, buf[0]))
      {
        LODWORD(buffer[0]) = 136446466;
        *(buffer + 4) = "nwsc_get_remote_pub_key";
        WORD6(buffer[0]) = 2114;
        *(buffer + 14) = v9;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Could not get identifier for endpoint %{public}@", buffer, 0x16u);
      }

LABEL_39:

      goto LABEL_40;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v24 = buf[0];
      if (os_log_type_enabled(v19, buf[0]))
      {
        LODWORD(buffer[0]) = 136446466;
        *(buffer + 4) = "nwsc_get_remote_pub_key";
        WORD6(buffer[0]) = 2114;
        *(buffer + 14) = v9;
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s Could not get identifier for endpoint %{public}@, backtrace limit exceeded", buffer, 0x16u);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v22 = buf[0];
    v23 = os_log_type_enabled(v19, buf[0]);
    if (!backtrace_string)
    {
      if (v23)
      {
        LODWORD(buffer[0]) = 136446466;
        *(buffer + 4) = "nwsc_get_remote_pub_key";
        WORD6(buffer[0]) = 2114;
        *(buffer + 14) = v9;
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s Could not get identifier for endpoint %{public}@, no backtrace", buffer, 0x16u);
      }

      goto LABEL_39;
    }

    if (v23)
    {
      LODWORD(buffer[0]) = 136446722;
      *(buffer + 4) = "nwsc_get_remote_pub_key";
      WORD6(buffer[0]) = 2114;
      *(buffer + 14) = v9;
      WORD3(buffer[1]) = 2082;
      *(&buffer[1] + 1) = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s Could not get identifier for endpoint %{public}@, dumping backtrace:%{public}s", buffer, 0x20u);
    }

LABEL_26:
    free(backtrace_string);
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v18)
  {
LABEL_41:
    free(v18);
  }

LABEL_42:
  v28 = 0;
LABEL_52:

  if (nw_endpoint_get_type(*(v5 + 8)) == (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    goto LABEL_55;
  }

  v30 = *MEMORY[0x1E697AD88];
  v31 = *MEMORY[0x1E697AD30];
  v145[0] = *MEMORY[0x1E697AD68];
  v145[1] = v31;
  v32 = *MEMORY[0x1E697AD40];
  v146[0] = v30;
  v146[1] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:2];
  v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v147 length:32 freeWhenDone:0];
  v35 = SecKeyCreateWithData(v34, v33, &error);
  if (v35)
  {
    v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*(v5 + 560) length:*(v5 + 568) freeWhenDone:0];
    v37 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v5 + 496 length:64 freeWhenDone:0];
    v38 = SecKeyVerifySignature(v35, *MEMORY[0x1E697B148], v36, v37, &error);
    CFRelease(v35);

    if (v38)
    {
LABEL_55:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(v5 + 496);
        v41 = *(v5 + 497);
        v42 = *(v5 + 498);
        v43 = *(v5 + 499);
        *key = 136448770;
        *&key[4] = "nwsc_process_incoming_request";
        *&key[12] = 2114;
        *&key[14] = v7;
        *&key[22] = 2114;
        *&key[24] = v5;
        *&key[32] = 1024;
        *&key[34] = v40;
        *&key[38] = 1024;
        *&key[40] = v41;
        *&key[44] = 1024;
        *&key[46] = v42;
        *&key[50] = 1024;
        *&key[52] = v43;
        *&key[56] = 1024;
        *&key[58] = v147;
        *&key[62] = 1024;
        LODWORD(v155) = BYTE1(v147);
        WORD2(v155) = 1024;
        *(&v155 + 6) = BYTE2(v147);
        WORD5(v155) = 1024;
        HIDWORD(v155) = BYTE3(v147);
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ verified signature on incoming request %{public}@ sig %02x%02x%02x%02x remotePubKey %02x%02x%02x%02x", key, 0x50u);
      }

      *(v5 + 616) |= 0x40u;
      if ((*(v7 + 184) & 4) != 0)
      {
        v102 = __nwlog_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *key = 136446722;
          *&key[4] = "nwsc_process_incoming_request";
          *&key[12] = 2114;
          *&key[14] = v7;
          *&key[22] = 2114;
          *&key[24] = v5;
          _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ failing incoming connection for testing: %{public}@", key, 0x20u);
        }

        nw_connection_cancel_current_endpoint(*(v5 + 576));
      }

      nw_service_connector_remove_pending_unverified_incoming_request(v7, v5);
      v44 = nw_service_connector_copy_active_connection_with_endpoint_and_service(v7, *(v5 + 8), (v5 + 24));
      v45 = v44;
      if (v44)
      {
        v46 = *(v44 + 61);
        if (!v46 || (v47 = v46, *&buffer[0] = 0, *(&buffer[0] + 1) = buffer, *&buffer[1] = 0x2020000000, BYTE8(buffer[1]) = 0, *key = MEMORY[0x1E69E9820], *&key[8] = 3221225472, *&key[16] = __nw_connection_is_cancelled_or_failed_block_invoke, *&key[24] = &unk_1E6A3D738, *&key[40] = buffer, v48 = v47, *&key[32] = v48, os_unfair_lock_lock(v47 + 34), (*&key[16])(key), os_unfair_lock_unlock(v47 + 34), v49 = *(*(&buffer[0] + 1) + 24), *&key[32], _Block_object_dispose(buffer, 8), v48, v49))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *key = 136446978;
            *&key[4] = "nwsc_process_incoming_request";
            *&key[12] = 2114;
            *&key[14] = v7;
            *&key[22] = 2114;
            *&key[24] = v45;
            *&key[32] = 2114;
            *&key[34] = v5;
            _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Cleaning up dead activeConnection %{public}@ due to receiving incoming request %{public}@", key, 0x2Au);
          }

          nw_service_connector_cancel_request_inner(v7, *(v5 + 8), (v5 + 24), *(v45 + 61), 0);
LABEL_75:
          v58 = nw_service_connector_copy_active_outgoing_request(v7, *(v5 + 8), (v5 + 24));
          v56 = v58;
          if (!v58)
          {
LABEL_82:
            v56 = 0;
            nw_service_connector_handle_unsolicited_requests(v7, v5);
            v45 = 0;
LABEL_115:

LABEL_116:
            goto LABEL_117;
          }

          v59 = v58[616];
          if ((v59 & 0x10) == 0)
          {
            v60 = *(v58 + 72);
            if (!v60 || (nw_connection_is_cancelled(v60) & 1) != 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = gLogObj;
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *key = 136446978;
                *&key[4] = "nwsc_process_incoming_request";
                *&key[12] = 2114;
                *&key[14] = v7;
                *&key[22] = 2114;
                *&key[24] = v56;
                *&key[32] = 2114;
                *&key[34] = v5;
                _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Cleaning up dead outgoing request %{public}@ due to receiving incoming request %{public}@", key, 0x2Au);
              }

              nw_service_connector_cancel_request_inner(v7, *(v5 + 8), (v5 + 24), *(v56 + 72), 0);
              goto LABEL_82;
            }

            v59 = v56[616];
          }

          v69 = v59 & 0xEF;
          v56[616] = v69;
          v70 = *(v56 + 76);
          if (v70)
          {
            nw_queue_cancel_source(v70);
            *(v56 + 76) = 0;
            v69 = v56[616];
          }

          if ((v69 & 0x80) == 0 && nwsc_compare_uuid(v56 + 480, (v5 + 480)))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v71 = gLogObj;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *key = 136446978;
              *&key[4] = "nwsc_process_incoming_request";
              *&key[12] = 2114;
              *&key[14] = v7;
              *&key[22] = 2114;
              *&key[24] = v56;
              *&key[32] = 2114;
              *&key[34] = v5;
              _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ existing outgoing request %{public}@ has a larger UUID, rejecting incoming request %{public}@", key, 0x2Au);
            }

            v72 = v56[617];
            if ((v72 & 6) == 4)
            {
              v56[617] = v72 | 3;
            }

            nw_service_connector_reject_incoming_request(v7, v5, 0);
            v45 = 0;
            goto LABEL_115;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v73 = gLogObj;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = v56[616];
            v75 = "has a smaller UUID";
            *&key[4] = "nwsc_process_incoming_request";
            *key = 136447234;
            *&key[12] = 2114;
            if (v74 < 0)
            {
              v75 = "is waiting for path";
            }

            *&key[14] = v7;
            *&key[22] = 2114;
            *&key[24] = v56;
            *&key[32] = 2082;
            *&key[34] = v75;
            *&key[42] = 2114;
            *&key[44] = v5;
            _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ existing outgoing request %{public}@ %{public}s, cancelling our outgoing request and accepting incoming request %{public}@", key, 0x34u);
          }

          nw_service_connector_cancel_request_inner(v7, *(v56 + 1), v56 + 24, *(v56 + 72), 0);
          v76 = *(v5 + 576);
          v138[0] = MEMORY[0x1E69E9820];
          v138[1] = 3221225472;
          v138[2] = ___ZL29nwsc_process_incoming_requestP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke;
          v138[3] = &unk_1E6A34A60;
          v139 = v7;
          v56 = v56;
          v140 = v56;
          v141 = v5;
          nw_service_connector_accept_connection_for_request(v139, v76, v141, v138);
          v45 = 0;
          v77 = &v139;
          v78 = &v140;
          v79 = &v141;
LABEL_114:

          goto LABEL_115;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *key = 136446978;
        *&key[4] = "nwsc_process_incoming_request";
        *&key[12] = 2114;
        *&key[14] = v7;
        *&key[22] = 2114;
        *&key[24] = v5;
        *&key[32] = 2114;
        *&key[34] = v45;
        _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ Received incoming request %{public}@ activeConnection %{public}@", key, 0x2Au);
      }

      if (!v45)
      {
        goto LABEL_75;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = gLogObj;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *key = 136446978;
        *&key[4] = "nwsc_process_incoming_request";
        *&key[12] = 2114;
        *&key[14] = v7;
        *&key[22] = 2114;
        *&key[24] = v5;
        *&key[32] = 2114;
        *&key[34] = v45;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ received incoming request %{public}@ while we have activeConnection %{public}@", key, 0x2Au);
      }

      v53 = *(v45 + 57);
      v54 = *(v5 + 464);
      if (v53 < v54)
      {
        v55 = nw_service_connector_copy_active_outgoing_request(v7, *(v5 + 8), (v5 + 24));
        v56 = v55;
        if (!v55 || (v55[616] & 0x10) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v57 = gLogObj;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *key = 136446978;
            *&key[4] = "nwsc_process_incoming_request";
            *&key[12] = 2114;
            *&key[14] = v7;
            *&key[22] = 2114;
            *&key[24] = v45;
            *&key[32] = 2114;
            *&key[34] = v5;
            _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ active connection %{public}@ has a lower sequence number than incoming request %{public}@, accepting incoming request and cancelling active connection", key, 0x2Au);
          }

          nw_service_connector_cancel_request_inner(v7, *(v45 + 1), v45 + 16, *(v45 + 61), 1);
          nw_service_connector_handle_unsolicited_requests(v7, v5);
          goto LABEL_115;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v80 = gLogObj;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *key = 136447234;
          *&key[4] = "nwsc_process_incoming_request";
          *&key[12] = 2114;
          *&key[14] = v7;
          *&key[22] = 2114;
          *&key[24] = v45;
          *&key[32] = 2114;
          *&key[34] = v5;
          *&key[42] = 2114;
          *&key[44] = v56;
          _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ active connection %{public}@ has a lower sequence number than incoming request %{public}@, accepting incoming request, cancelling active connection and using %{public}@", key, 0x34u);
        }

        v56[616] &= ~0x10u;
        v81 = *(v56 + 76);
        if (v81)
        {
          nw_queue_cancel_source(v81);
          *(v56 + 76) = 0;
        }

        nw_service_connector_cancel_request_inner(v7, *(v45 + 1), v45 + 16, *(v45 + 61), 1);
        v82 = *(v5 + 576);
        v134[0] = MEMORY[0x1E69E9820];
        v134[1] = 3221225472;
        v134[2] = ___ZL29nwsc_process_incoming_requestP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_217;
        v134[3] = &unk_1E6A34A60;
        v135 = v7;
        v83 = v56;
        v136 = v83;
        v137 = v5;
        nw_service_connector_accept_connection_for_request(v135, v82, v137, v134);
        v77 = &v135;
        v78 = &v136;
        v79 = &v137;
        v56 = v83;
        goto LABEL_114;
      }

      if (v53 > v54)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v62 = gLogObj;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *key = 136446978;
          *&key[4] = "nwsc_process_incoming_request";
          *&key[12] = 2114;
          *&key[14] = v7;
          *&key[22] = 2114;
          *&key[24] = v45;
          *&key[32] = 2114;
          *&key[34] = v5;
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ active connection %{public}@ has a higher sequence number than incoming request %{public}@, rejecting incoming request", key, 0x2Au);
        }

        goto LABEL_144;
      }

      v63 = nwsc_compare_uuid(v45 + 472, (v5 + 480));
      v64 = __nwlog_obj();
      v65 = v64;
      if (v63)
      {
        *key = 136446978;
        *&key[4] = "nwsc_process_incoming_request";
        *&key[12] = 2114;
        *&key[14] = v7;
        *&key[22] = 2114;
        *&key[24] = v45;
        *&key[32] = 2114;
        *&key[34] = v5;
        LODWORD(v132) = 42;
        v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but higher UUID, rejecting incoming request", key, v132);

        LOBYTE(buffer[0]) = 16;
        buf[0] = 0;
        if (__nwlog_fault(v66, buffer, buf))
        {
          if (LOBYTE(buffer[0]) == 17)
          {
            v67 = __nwlog_obj();
            v68 = buffer[0];
            if (os_log_type_enabled(v67, buffer[0]))
            {
              *key = 136446978;
              *&key[4] = "nwsc_process_incoming_request";
              *&key[12] = 2114;
              *&key[14] = v7;
              *&key[22] = 2114;
              *&key[24] = v45;
              *&key[32] = 2114;
              *&key[34] = v5;
              _os_log_impl(&dword_181A37000, v67, v68, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but higher UUID, rejecting incoming request", key, 0x2Au);
            }
          }

          else if (buf[0] == 1)
          {
            v87 = __nw_create_backtrace_string();
            v67 = __nwlog_obj();
            v88 = buffer[0];
            v89 = os_log_type_enabled(v67, buffer[0]);
            if (v87)
            {
              if (v89)
              {
                *key = 136447234;
                *&key[4] = "nwsc_process_incoming_request";
                *&key[12] = 2114;
                *&key[14] = v7;
                *&key[22] = 2114;
                *&key[24] = v45;
                *&key[32] = 2114;
                *&key[34] = v5;
                *&key[42] = 2082;
                *&key[44] = v87;
                _os_log_impl(&dword_181A37000, v67, v88, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but higher UUID, rejecting incoming request, dumping backtrace:%{public}s", key, 0x34u);
              }

              free(v87);
              goto LABEL_142;
            }

            if (v89)
            {
              *key = 136446978;
              *&key[4] = "nwsc_process_incoming_request";
              *&key[12] = 2114;
              *&key[14] = v7;
              *&key[22] = 2114;
              *&key[24] = v45;
              *&key[32] = 2114;
              *&key[34] = v5;
              _os_log_impl(&dword_181A37000, v67, v88, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but higher UUID, rejecting incoming request, no backtrace", key, 0x2Au);
            }
          }

          else
          {
            v67 = __nwlog_obj();
            v93 = buffer[0];
            if (os_log_type_enabled(v67, buffer[0]))
            {
              *key = 136446978;
              *&key[4] = "nwsc_process_incoming_request";
              *&key[12] = 2114;
              *&key[14] = v7;
              *&key[22] = 2114;
              *&key[24] = v45;
              *&key[32] = 2114;
              *&key[34] = v5;
              _os_log_impl(&dword_181A37000, v67, v93, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but higher UUID, rejecting incoming request, backtrace limit exceeded", key, 0x2Au);
            }
          }
        }

LABEL_142:
        if (v66)
        {
          free(v66);
        }

LABEL_144:
        nw_service_connector_reject_incoming_request(v7, v5, 0);
        goto LABEL_116;
      }

      *key = 136446978;
      *&key[4] = "nwsc_process_incoming_request";
      *&key[12] = 2114;
      *&key[14] = v7;
      *&key[22] = 2114;
      *&key[24] = v45;
      *&key[32] = 2114;
      *&key[34] = v5;
      LODWORD(v132) = 42;
      v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v64, 16, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but lower UUID, accepting incoming request and cancelling active connection", key, v132);

      LOBYTE(buffer[0]) = 16;
      buf[0] = 0;
      if (__nwlog_fault(v84, buffer, buf))
      {
        if (LOBYTE(buffer[0]) == 17)
        {
          v85 = __nwlog_obj();
          v86 = buffer[0];
          if (os_log_type_enabled(v85, buffer[0]))
          {
            *key = 136446978;
            *&key[4] = "nwsc_process_incoming_request";
            *&key[12] = 2114;
            *&key[14] = v7;
            *&key[22] = 2114;
            *&key[24] = v45;
            *&key[32] = 2114;
            *&key[34] = v5;
            _os_log_impl(&dword_181A37000, v85, v86, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but lower UUID, accepting incoming request and cancelling active connection", key, 0x2Au);
          }
        }

        else if (buf[0] == 1)
        {
          v90 = __nw_create_backtrace_string();
          v85 = __nwlog_obj();
          v91 = buffer[0];
          v92 = os_log_type_enabled(v85, buffer[0]);
          if (v90)
          {
            if (v92)
            {
              *key = 136447234;
              *&key[4] = "nwsc_process_incoming_request";
              *&key[12] = 2114;
              *&key[14] = v7;
              *&key[22] = 2114;
              *&key[24] = v45;
              *&key[32] = 2114;
              *&key[34] = v5;
              *&key[42] = 2082;
              *&key[44] = v90;
              _os_log_impl(&dword_181A37000, v85, v91, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but lower UUID, accepting incoming request and cancelling active connection, dumping backtrace:%{public}s", key, 0x34u);
            }

            free(v90);
            goto LABEL_148;
          }

          if (v92)
          {
            *key = 136446978;
            *&key[4] = "nwsc_process_incoming_request";
            *&key[12] = 2114;
            *&key[14] = v7;
            *&key[22] = 2114;
            *&key[24] = v45;
            *&key[32] = 2114;
            *&key[34] = v5;
            _os_log_impl(&dword_181A37000, v85, v91, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but lower UUID, accepting incoming request and cancelling active connection, no backtrace", key, 0x2Au);
          }
        }

        else
        {
          v85 = __nwlog_obj();
          v94 = buffer[0];
          if (os_log_type_enabled(v85, buffer[0]))
          {
            *key = 136446978;
            *&key[4] = "nwsc_process_incoming_request";
            *&key[12] = 2114;
            *&key[14] = v7;
            *&key[22] = 2114;
            *&key[24] = v45;
            *&key[32] = 2114;
            *&key[34] = v5;
            _os_log_impl(&dword_181A37000, v85, v94, "%{public}s %{public}@ active connection %{public}@ has same sequence number than incoming request %{public}@ but lower UUID, accepting incoming request and cancelling active connection, backtrace limit exceeded", key, 0x2Au);
          }
        }
      }

LABEL_148:
      if (v84)
      {
        free(v84);
      }

      nw_service_connector_handle_unsolicited_requests(v7, v5);
      nw_service_connector_cancel_request_inner(v7, *(v45 + 1), v45 + 16, *(v45 + 61), 1);
      goto LABEL_116;
    }
  }

  else
  {
    v103 = __nwlog_obj();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *key = 136446466;
      *&key[4] = "nwsc_process_incoming_request";
      *&key[12] = 2112;
      *&key[14] = error;
      _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_ERROR, "%{public}s SecKeyCreateWithData failed with error %@", key, 0x16u);
    }

    if (error)
    {
      CFRelease(error);
      error = 0;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v104 = gLogObj;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    *key = 136446722;
    *&key[4] = "nwsc_process_incoming_request";
    *&key[12] = 2114;
    *&key[14] = v7;
    *&key[22] = 2114;
    *&key[24] = error;
    _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ signature verification error: %{public}@", key, 0x20u);
  }

  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v28 >= *(v5 + 464))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v112 = gLogObj;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      v113 = *(v5 + 496);
      v114 = *(v5 + 497);
      v115 = *(v5 + 498);
      v116 = *(v5 + 499);
      *key = 136449026;
      *&key[4] = "nwsc_process_incoming_request";
      *&key[12] = 2114;
      *&key[14] = v7;
      *&key[22] = 2114;
      *&key[24] = v5;
      *&key[32] = 1024;
      *&key[34] = v113;
      *&key[38] = 1024;
      *&key[40] = v114;
      *&key[44] = 1024;
      *&key[46] = v115;
      *&key[50] = 1024;
      *&key[52] = v116;
      *&key[56] = 1024;
      *&key[58] = v147;
      *&key[62] = 1024;
      LODWORD(v155) = BYTE1(v147);
      WORD2(v155) = 1024;
      *(&v155 + 6) = BYTE2(v147);
      WORD5(v155) = 1024;
      HIDWORD(v155) = BYTE3(v147);
      LOWORD(v156) = 2048;
      *(&v156 + 2) = v28;
      _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ cancelling due to bad signature on incoming request %{public}@ sig %02x%02x%02x%02x remotePubKey %02x%02x%02x%02x remotePubKeySeqNo %llu", key, 0x5Au);
    }

    *(v5 + 616) |= 0x40u;
    nw_service_connector_reject_incoming_request(v7, v5, 0);
  }

  else
  {
    if ((*(v5 + 616) & 0x20) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v117 = *(v5 + 496);
        v118 = *(v5 + 497);
        v119 = *(v5 + 498);
        v120 = *(v5 + 499);
        *key = 136448770;
        *&key[4] = "nwsc_process_incoming_request";
        *&key[12] = 2114;
        *&key[14] = v7;
        *&key[22] = 2114;
        *&key[24] = v5;
        *&key[32] = 1024;
        *&key[34] = v117;
        *&key[38] = 1024;
        *&key[40] = v118;
        *&key[44] = 1024;
        *&key[46] = v119;
        *&key[50] = 1024;
        *&key[52] = v120;
        *&key[56] = 1024;
        *&key[58] = v147;
        *&key[62] = 1024;
        LODWORD(v155) = BYTE1(v147);
        WORD2(v155) = 1024;
        *(&v155 + 6) = BYTE2(v147);
        WORD5(v155) = 1024;
        HIDWORD(v155) = BYTE3(v147);
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ signature did not verify on incoming request %{public}@ sig %02x%02x%02x%02x remotePubKey %02x%02x%02x%02x not requesting newer remotePubKey", key, 0x50u);
      }

      goto LABEL_116;
    }

    *(v5 + 616) |= 0x20u;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v105 = gLogObj;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = *(v5 + 496);
      v107 = *(v5 + 497);
      v108 = *(v5 + 498);
      v109 = *(v5 + 499);
      *key = 136448770;
      *&key[4] = "nwsc_process_incoming_request";
      *&key[12] = 2114;
      *&key[14] = v7;
      *&key[22] = 2114;
      *&key[24] = v5;
      *&key[32] = 1024;
      *&key[34] = v106;
      *&key[38] = 1024;
      *&key[40] = v107;
      *&key[44] = 1024;
      *&key[46] = v108;
      *&key[50] = 1024;
      *&key[52] = v109;
      *&key[56] = 1024;
      *&key[58] = v147;
      *&key[62] = 1024;
      LODWORD(v155) = BYTE1(v147);
      WORD2(v155) = 1024;
      *(&v155 + 6) = BYTE2(v147);
      WORD5(v155) = 1024;
      HIDWORD(v155) = BYTE3(v147);
      _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ signature did not verify on incoming request %{public}@ sig %02x%02x%02x%02x remotePubKey %02x%02x%02x%02x requesting newer remotePubKey", key, 0x50u);
    }

    if ((*(v7 + 184) & 2) != 0)
    {
      v131 = __nwlog_obj();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        *key = 136446722;
        *&key[4] = "nwsc_process_incoming_request";
        *&key[12] = 2114;
        *&key[14] = v7;
        *&key[22] = 2114;
        *&key[24] = v5;
        _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ failing incoming connection for testing: %{public}@", key, 0x20u);
      }

      nw_connection_cancel_current_endpoint(*(v5 + 576));
    }

    v110 = nwsc_request_create_and_start_connection_inner(v7, 0, *(v5 + 8));
    pendingUnverifiedIncomingRequests = v7->pendingUnverifiedIncomingRequests;
    if (pendingUnverifiedIncomingRequests && v5)
    {
      _nw_array_append(pendingUnverifiedIncomingRequests, v5);
    }
  }

LABEL_117:
}

id nw_service_connector_copy_active_request_for_connection(NWConcrete_nw_service_connector *a1, NWConcrete_nw_connection *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null serviceConnector", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v10, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null serviceConnector", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v30 != 1)
    {
      v11 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v24, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    goto LABEL_54;
  }

  activeOutgoingRequests = v3->activeOutgoingRequests;
  if (!activeOutgoingRequests)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null serviceConnector->activeOutgoingRequests", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v10, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null serviceConnector->activeOutgoingRequests", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v30 != 1)
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null serviceConnector->activeOutgoingRequests, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null serviceConnector->activeOutgoingRequests, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v21)
    {
      *buf = 136446466;
      *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null serviceConnector->activeOutgoingRequests, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__51955;
    v34 = __Block_byref_object_dispose__51956;
    v35 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = ___ZL55nw_service_connector_copy_active_request_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke;
    v27[3] = &unk_1E6A3BF70;
    v28 = v4;
    v29 = buf;
    nw_dictionary_apply(activeOutgoingRequests, v27);
    v7 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v10, &type, &v30))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection", buf, 0xCu);
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v30 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v23)
    {
      *buf = 136446466;
      *&buf[4] = "nw_service_connector_copy_active_request_for_connection";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_54:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_5:

  return v7;
}

uint64_t ___ZL24nwsc_save_remote_pub_keyP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObjectyPh_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v5[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL24nwsc_save_remote_pub_keyP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObjectyPh_block_invoke_2;
  block[3] = &unk_1E6A3BCF0;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 40);
  v7 = v4;
  dispatch_async(v6, block);

  return 1;
}

void ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke_206(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 136446722;
    v34 = "nw_service_connector_should_accept_connection_block_invoke";
    v35 = 2114;
    v36 = v3;
    v37 = 2114;
    v38 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ disabling keep alives for request %{public}@", buf, 0x20u);
  }

  v5 = a1[6];
  if ((*(a1[5] + 617) & 4) != 0)
  {
    v11 = nw_quic_stream_copy_connection_metadata(v5);
    nw_quic_connection_set_keepalive(v11, 0);

    return;
  }

  if (!nw_tcp_reset_keepalives(v5))
  {
    return;
  }

  v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v8 = v7;
  if (v6 == 22)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 136446978;
      v34 = "nw_service_connector_should_accept_connection_block_invoke";
      v35 = 2114;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      v39 = 1024;
      v40 = 22;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error disabling keep alives for request %{public}@ %{darwin.errno}d", buf, 0x26u);
    }

    return;
  }

  v12 = a1[4];
  v13 = a1[5];
  *buf = 136446978;
  v34 = "nw_service_connector_should_accept_connection_block_invoke";
  v35 = 2114;
  v36 = v12;
  v37 = 2114;
  v38 = v13;
  v39 = 1024;
  v40 = v6;
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s %{public}@ error disabling keep alives for request %{public}@ %{darwin.errno}d", buf, 38);

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v14, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        v17 = a1[4];
        v18 = a1[5];
        *buf = 136446978;
        v34 = "nw_service_connector_should_accept_connection_block_invoke";
        v35 = 2114;
        v36 = v17;
        v37 = 2114;
        v38 = v18;
        v39 = 1024;
        v40 = v6;
        v19 = "%{public}s %{public}@ error disabling keep alives for request %{public}@ %{darwin.errno}d";
LABEL_22:
        v27 = v15;
        v28 = v16;
LABEL_23:
        _os_log_impl(&dword_181A37000, v27, v28, v19, buf, 0x26u);
      }
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v22)
          {
            v23 = a1[4];
            v24 = a1[5];
            *buf = 136447234;
            v34 = "nw_service_connector_should_accept_connection_block_invoke";
            v35 = 2114;
            v36 = v23;
            v37 = 2114;
            v38 = v24;
            v39 = 1024;
            v40 = v6;
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v21, "%{public}s %{public}@ error disabling keep alives for request %{public}@ %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v22)
        {
          goto LABEL_24;
        }

        v29 = a1[4];
        v30 = a1[5];
        *buf = 136446978;
        v34 = "nw_service_connector_should_accept_connection_block_invoke";
        v35 = 2114;
        v36 = v29;
        v37 = 2114;
        v38 = v30;
        v39 = 1024;
        v40 = v6;
        v19 = "%{public}s %{public}@ error disabling keep alives for request %{public}@ %{darwin.errno}d, no backtrace";
        v27 = v15;
        v28 = v21;
        goto LABEL_23;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        v25 = a1[4];
        v26 = a1[5];
        *buf = 136446978;
        v34 = "nw_service_connector_should_accept_connection_block_invoke";
        v35 = 2114;
        v36 = v25;
        v37 = 2114;
        v38 = v26;
        v39 = 1024;
        v40 = v6;
        v19 = "%{public}s %{public}@ error disabling keep alives for request %{public}@ %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v14)
  {
    free(v14);
  }
}

void ___ZL45nw_service_connector_should_accept_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionbPU24objcproto13OS_xpc_object8NSObject_block_invoke_207(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v12 = 136446978;
      v13 = "nw_service_connector_should_accept_connection_block_invoke";
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error when accepting request %{public}@ %{darwin.errno}d", &v12, 0x26u);
    }

    v8 = a1[4];
    v7 = (a1 + 4);
    nw_service_connector_cancel_request_inner(v8, *(v7[1] + 1), v7[1] + 24, v7[2], 0);
    nw_service_connector_trigger_request_complete_block_inner(*v7, v7[1], 0, 0, a2);
  }

  else
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];

    nw_service_connector_trigger_request_complete_block_inner(v9, v10, 0, v11, 0);
  }
}

void nw_service_connector_accept_connection_for_request(void *a1, void *a2, void *a3, void *a4)
{
  v125 = *MEMORY[0x1E69E9840];
  v91 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_alloc_init(NWConcrete_nw_unique_connection);
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->connection, a2);
      objc_storeStrong(&v11->endpoint, v8->endpoint);
      *(v11 + 500) = *(v11 + 500) & 0xFD | (*(v8 + 617) >> 1) & 2;
      service = v8->service;
      v13 = 436;
      v14 = v11->service;
      while (*v14)
      {
        ++v14;
        if (!--v13)
        {
          goto LABEL_11;
        }
      }

      if (v13 < 2)
      {
LABEL_10:
        *v14 = 0;
      }

      else
      {
        while (1)
        {
          v15 = *service;
          *v14 = v15;
          if (!v15)
          {
            break;
          }

          ++v14;
          ++service;
          if (--v13 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_11:
      *v11->uuid = *v8->uuid;
      v11->receivedSequenceNumber = v8->sequenceNumber;
      *(v11 + 500) = *(v11 + 500) & 0xFE | *(v8 + 616) & 1;
      if (!v7 || (v16 = v7, *v94 = 0, *&v94[8] = v94, *&v94[16] = 0x2020000000, LOBYTE(v95) = 0, *buf = MEMORY[0x1E69E9820], *&buf[8] = 3221225472, *&buf[16] = __nw_connection_is_cancelled_or_failed_block_invoke, *&buf[24] = &unk_1E6A3D738, *&buf[40] = v94, v17 = v16, *&buf[32] = v17, os_unfair_lock_lock(v16 + 34), (*&buf[16])(buf), os_unfair_lock_unlock(v16 + 34), LODWORD(v16) = *(*&v94[8] + 24), *&buf[32], _Block_object_dispose(v94, 8), v17, v16))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "nw_service_connector_accept_connection_for_request";
          *&buf[12] = 2114;
          *&buf[14] = v91;
          *&buf[22] = 2114;
          *&buf[24] = v8;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Bad connection for request %{public}@", buf, 0x20u);
        }

        v19 = 57;
LABEL_16:
        v9[2](v9, v19);
LABEL_17:

        goto LABEL_18;
      }

      connected_socket = nw_connection_get_connected_socket(v17);
      v21 = connected_socket;
      if (connected_socket < 0)
      {
        if (nw_endpoint_get_type(v11->endpoint) != (nw_endpoint_type_url|nw_endpoint_type_host))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v40 = gLogObj;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "nw_service_connector_accept_connection_for_request";
            *&buf[12] = 2114;
            *&buf[14] = v91;
            *&buf[22] = 2114;
            *&buf[24] = v17;
            *&buf[32] = 2114;
            *&buf[34] = v11;
            _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed to extract socket of connection %{public}@ for activeConnection %{public}@", buf, 0x2Au);
          }

          v41 = 57;
LABEL_79:
          v9[2](v9, v41);
          goto LABEL_17;
        }
      }

      else
      {
        v22 = dup(connected_socket);
        v23 = v22;
        if (v22 < 0)
        {
          v38 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447490;
            *&buf[4] = "nw_service_connector_accept_connection_for_request";
            *&buf[12] = 2114;
            *&buf[14] = v91;
            *&buf[22] = 1024;
            *&buf[24] = v21;
            *&buf[28] = 2114;
            *&buf[30] = v17;
            *&buf[38] = 2114;
            *&buf[40] = v11;
            *&buf[48] = 1024;
            *&buf[50] = v38;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed to dup socket from internal [socket%d] of connection %{public}@ for activeConnection %{public}@ %{darwin.errno}d", buf, 0x36u);
          }

          v9[2](v9, v38);
          goto LABEL_17;
        }

        v11->dupedSocketFD = v22;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          *&buf[4] = "nw_service_connector_accept_connection_for_request";
          *&buf[12] = 2114;
          *&buf[14] = v91;
          *&buf[22] = 1024;
          *&buf[24] = v23;
          *&buf[28] = 1024;
          *&buf[30] = v21;
          *&buf[34] = 2114;
          *&buf[36] = v17;
          *&buf[44] = 2114;
          *&buf[46] = v11;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ duped [socket%d] from internal [socket%d] of connection %{public}@ for activeConnection %{public}@", buf, 0x36u);
        }
      }

      v25 = v91;
      v89 = v25;
      v90 = v11;
      if (v25)
      {
        if (*(v25 + 11))
        {
          v124 = 0;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          memset(buf, 0, sizeof(buf));
          if (nwsc_get_identifier(v11->endpoint, v11->service, buf, 0x1B4uLL))
          {
            v26 = nw_dictionary_copy_value(*(v25 + 11), buf);
            v27 = v26;
            if (!v26 || (*(v26 + 124) & 0x80000000) != 0)
            {
LABEL_74:
              nw_dictionary_set_value(*(v25 + 11), buf, v90);

              goto LABEL_75;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            *v94 = 136446978;
            *&v94[4] = "nw_service_connector_add_active_connection";
            *&v94[12] = 2114;
            *&v94[14] = v89;
            *&v94[22] = 2114;
            v95 = v27;
            v96 = 2114;
            v97 = v90;
            v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s %{public}@ previous %{public}@ has socket when adding new %{public}@", v94, 42);

            v25 = v89;
            type = OS_LOG_TYPE_ERROR;
            v92 = 0;
            if (__nwlog_fault(v29, &type, &v92))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v30 = __nwlog_obj();
                v31 = type;
                if (os_log_type_enabled(v30, type))
                {
                  *v94 = 136446978;
                  *&v94[4] = "nw_service_connector_add_active_connection";
                  *&v94[12] = 2114;
                  *&v94[14] = v89;
                  *&v94[22] = 2114;
                  v95 = v27;
                  v96 = 2114;
                  v97 = v90;
                  _os_log_impl(&dword_181A37000, v30, v31, "%{public}s %{public}@ previous %{public}@ has socket when adding new %{public}@", v94, 0x2Au);
                }
              }

              else
              {
                if (v92 == 1)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  v88 = __nwlog_obj();
                  v86 = type;
                  v49 = os_log_type_enabled(v88, type);
                  if (backtrace_string)
                  {
                    if (v49)
                    {
                      *v94 = 136447234;
                      *&v94[4] = "nw_service_connector_add_active_connection";
                      *&v94[12] = 2114;
                      *&v94[14] = v89;
                      *&v94[22] = 2114;
                      v95 = v27;
                      v96 = 2114;
                      v97 = v90;
                      v98 = 2082;
                      v99 = backtrace_string;
                      _os_log_impl(&dword_181A37000, v88, v86, "%{public}s %{public}@ previous %{public}@ has socket when adding new %{public}@, dumping backtrace:%{public}s", v94, 0x34u);
                    }

                    free(backtrace_string);
                  }

                  else
                  {
                    if (v49)
                    {
                      *v94 = 136446978;
                      *&v94[4] = "nw_service_connector_add_active_connection";
                      *&v94[12] = 2114;
                      *&v94[14] = v89;
                      *&v94[22] = 2114;
                      v95 = v27;
                      v96 = 2114;
                      v97 = v90;
                      _os_log_impl(&dword_181A37000, v88, v86, "%{public}s %{public}@ previous %{public}@ has socket when adding new %{public}@, no backtrace", v94, 0x2Au);
                    }
                  }

                  goto LABEL_72;
                }

                v30 = __nwlog_obj();
                v50 = type;
                if (os_log_type_enabled(v30, type))
                {
                  *v94 = 136446978;
                  *&v94[4] = "nw_service_connector_add_active_connection";
                  *&v94[12] = 2114;
                  *&v94[14] = v89;
                  *&v94[22] = 2114;
                  v95 = v27;
                  v96 = 2114;
                  v97 = v90;
                  _os_log_impl(&dword_181A37000, v30, v50, "%{public}s %{public}@ previous %{public}@ has socket when adding new %{public}@, backtrace limit exceeded", v94, 0x2Au);
                }
              }

              v25 = v89;
            }

LABEL_72:
            if (v29)
            {
              free(v29);
            }

            goto LABEL_74;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          endpoint = v11->endpoint;
          *v94 = 136446722;
          *&v94[4] = "nw_service_connector_add_active_connection";
          *&v94[12] = 2114;
          *&v94[14] = endpoint;
          *&v94[22] = 2082;
          v95 = v11->service;
          v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", v94, 32);

          v25 = v89;
          type = OS_LOG_TYPE_ERROR;
          v92 = 0;
          if (__nwlog_fault(v34, &type, &v92))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              v36 = type;
              if (os_log_type_enabled(v35, type))
              {
                v37 = v11->endpoint;
                *v94 = 136446722;
                *&v94[4] = "nw_service_connector_add_active_connection";
                *&v94[12] = 2114;
                *&v94[14] = v37;
                *&v94[22] = 2082;
                v95 = v11->service;
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", v94, 0x20u);
              }

LABEL_39:

              v25 = v89;
              goto LABEL_66;
            }

            if (v92 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              v46 = type;
              if (os_log_type_enabled(v35, type))
              {
                v47 = v11->endpoint;
                *v94 = 136446722;
                *&v94[4] = "nw_service_connector_add_active_connection";
                *&v94[12] = 2114;
                *&v94[14] = v47;
                *&v94[22] = 2082;
                v95 = v11->service;
                _os_log_impl(&dword_181A37000, v35, v46, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", v94, 0x20u);
              }

              goto LABEL_39;
            }

            v42 = __nw_create_backtrace_string();
            v43 = __nwlog_obj();
            v87 = type;
            v44 = os_log_type_enabled(v43, type);
            if (v42)
            {
              if (v44)
              {
                v45 = v11->endpoint;
                *v94 = 136446978;
                *&v94[4] = "nw_service_connector_add_active_connection";
                *&v94[12] = 2114;
                *&v94[14] = v45;
                *&v94[22] = 2082;
                v95 = v11->service;
                v96 = 2082;
                v97 = v42;
                _os_log_impl(&dword_181A37000, v43, v87, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", v94, 0x2Au);
              }

              free(v42);
              if (!v34)
              {
                goto LABEL_75;
              }

LABEL_67:
              v52 = v34;
LABEL_68:
              free(v52);
              goto LABEL_75;
            }

            if (v44)
            {
              v51 = v11->endpoint;
              *v94 = 136446722;
              *&v94[4] = "nw_service_connector_add_active_connection";
              *&v94[12] = 2114;
              *&v94[14] = v51;
              *&v94[22] = 2082;
              v95 = v11->service;
              _os_log_impl(&dword_181A37000, v43, v87, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", v94, 0x20u);
            }
          }

LABEL_66:
          if (!v34)
          {
LABEL_75:

            if (*(v8 + 616))
            {
              if (nw_service_connector_get_new_sequence_number(void)::onceToken[0] != -1)
              {
                dispatch_once(nw_service_connector_get_new_sequence_number(void)::onceToken, &__block_literal_global_199_52039);
              }

                ;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v55 = gLogObj;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136447234;
                *&buf[4] = "nw_service_connector_accept_connection_for_request";
                *&buf[12] = 2114;
                *&buf[14] = v25;
                *&buf[22] = 2114;
                *&buf[24] = v8;
                *&buf[32] = 2114;
                *&buf[34] = v90;
                *&buf[42] = 2048;
                *&buf[44] = i;
                _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ accepting incoming request %{public}@ activeConnection %{public}@ reply seq %llu", buf, 0x34u);
              }

              nwsc_send_feedback(v25, v17, i, 1, 0, v9);
              goto LABEL_17;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446978;
              *&buf[4] = "nw_service_connector_accept_connection_for_request";
              *&buf[12] = 2114;
              *&buf[14] = v25;
              *&buf[22] = 2114;
              *&buf[24] = v17;
              *&buf[32] = 2114;
              *&buf[34] = v90;
              _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ outgoing connection %{public}@ was accepted activeConnection %{public}@", buf, 0x2Au);
            }

            nw_service_connector_remove_active_outgoing_request(v25, v8);
            v41 = 0;
            goto LABEL_79;
          }

          goto LABEL_67;
        }

        v76 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_add_active_connection";
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null serviceConnector->activeConnections", buf, 12);

        v25 = v89;
        v94[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v73, v94, &type))
        {
          goto LABEL_157;
        }

        if (v94[0] == 17)
        {
          v74 = __nwlog_obj();
          v77 = v94[0];
          if (os_log_type_enabled(v74, v94[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_add_active_connection";
            _os_log_impl(&dword_181A37000, v74, v77, "%{public}s called with null serviceConnector->activeConnections", buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v81 = __nw_create_backtrace_string();
          v74 = __nwlog_obj();
          v82 = v94[0];
          v83 = os_log_type_enabled(v74, v94[0]);
          if (v81)
          {
            if (v83)
            {
              *buf = 136446466;
              *&buf[4] = "nw_service_connector_add_active_connection";
              *&buf[12] = 2082;
              *&buf[14] = v81;
              _os_log_impl(&dword_181A37000, v74, v82, "%{public}s called with null serviceConnector->activeConnections, dumping backtrace:%{public}s", buf, 0x16u);
            }

            v25 = v89;
            free(v81);
            if (!v73)
            {
              goto LABEL_75;
            }

LABEL_158:
            v52 = v73;
            goto LABEL_68;
          }

          if (v83)
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_add_active_connection";
            _os_log_impl(&dword_181A37000, v74, v82, "%{public}s called with null serviceConnector->activeConnections, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v74 = __nwlog_obj();
          v85 = v94[0];
          if (os_log_type_enabled(v74, v94[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_add_active_connection";
            _os_log_impl(&dword_181A37000, v74, v85, "%{public}s called with null serviceConnector->activeConnections, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      else
      {
        v72 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_service_connector_add_active_connection";
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null serviceConnector", buf, 12);

        v25 = 0;
        v94[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v73, v94, &type))
        {
          goto LABEL_157;
        }

        if (v94[0] == 17)
        {
          v74 = __nwlog_obj();
          v75 = v94[0];
          if (os_log_type_enabled(v74, v94[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_add_active_connection";
            _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null serviceConnector", buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v78 = __nw_create_backtrace_string();
          v74 = __nwlog_obj();
          v79 = v94[0];
          v80 = os_log_type_enabled(v74, v94[0]);
          if (v78)
          {
            if (v80)
            {
              *buf = 136446466;
              *&buf[4] = "nw_service_connector_add_active_connection";
              *&buf[12] = 2082;
              *&buf[14] = v78;
              _os_log_impl(&dword_181A37000, v74, v79, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
            }

            v25 = 0;
            free(v78);
LABEL_157:
            if (!v73)
            {
              goto LABEL_75;
            }

            goto LABEL_158;
          }

          if (v80)
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_add_active_connection";
            _os_log_impl(&dword_181A37000, v74, v79, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v74 = __nwlog_obj();
          v84 = v94[0];
          if (os_log_type_enabled(v74, v94[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_service_connector_add_active_connection";
            _os_log_impl(&dword_181A37000, v74, v84, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      v25 = v89;
      goto LABEL_157;
    }

    v60 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_service_connector_accept_connection_for_request";
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s [nw_unique_connection init:] failed", buf, 12);

    v94[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v61, v94, &type))
    {
      if (v94[0] == 17)
      {
        v62 = __nwlog_obj();
        v63 = v94[0];
        if (os_log_type_enabled(v62, v94[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_accept_connection_for_request";
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s [nw_unique_connection init:] failed", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v67 = __nw_create_backtrace_string();
        v62 = __nwlog_obj();
        v68 = v94[0];
        v69 = os_log_type_enabled(v62, v94[0]);
        if (v67)
        {
          if (v69)
          {
            *buf = 136446466;
            *&buf[4] = "nw_service_connector_accept_connection_for_request";
            *&buf[12] = 2082;
            *&buf[14] = v67;
            _os_log_impl(&dword_181A37000, v62, v68, "%{public}s [nw_unique_connection init:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v67);
          goto LABEL_131;
        }

        if (v69)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_accept_connection_for_request";
          _os_log_impl(&dword_181A37000, v62, v68, "%{public}s [nw_unique_connection init:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v62 = __nwlog_obj();
        v71 = v94[0];
        if (os_log_type_enabled(v62, v94[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_accept_connection_for_request";
          _os_log_impl(&dword_181A37000, v62, v71, "%{public}s [nw_unique_connection init:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_131:
    if (v61)
    {
      free(v61);
    }

    v19 = 12;
    goto LABEL_16;
  }

  v56 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_service_connector_accept_connection_for_request";
  *&buf[12] = 2114;
  *&buf[14] = v91;
  *&buf[22] = 2114;
  *&buf[24] = v8;
  v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s %{public}@ Expected completion block %{public}@", buf, 32);

  v94[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v57, v94, &type))
  {
    if (v94[0] == 17)
    {
      v58 = __nwlog_obj();
      v59 = v94[0];
      if (os_log_type_enabled(v58, v94[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_accept_connection_for_request";
        *&buf[12] = 2114;
        *&buf[14] = v91;
        *&buf[22] = 2114;
        *&buf[24] = v8;
        _os_log_impl(&dword_181A37000, v58, v59, "%{public}s %{public}@ Expected completion block %{public}@", buf, 0x20u);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v64 = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v65 = v94[0];
      v66 = os_log_type_enabled(v58, v94[0]);
      if (v64)
      {
        if (v66)
        {
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_accept_connection_for_request";
          *&buf[12] = 2114;
          *&buf[14] = v91;
          *&buf[22] = 2114;
          *&buf[24] = v8;
          *&buf[32] = 2082;
          *&buf[34] = v64;
          _os_log_impl(&dword_181A37000, v58, v65, "%{public}s %{public}@ Expected completion block %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v64);
        goto LABEL_126;
      }

      if (v66)
      {
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_accept_connection_for_request";
        *&buf[12] = 2114;
        *&buf[14] = v91;
        *&buf[22] = 2114;
        *&buf[24] = v8;
        _os_log_impl(&dword_181A37000, v58, v65, "%{public}s %{public}@ Expected completion block %{public}@, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v58 = __nwlog_obj();
      v70 = v94[0];
      if (os_log_type_enabled(v58, v94[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_accept_connection_for_request";
        *&buf[12] = 2114;
        *&buf[14] = v91;
        *&buf[22] = 2114;
        *&buf[24] = v8;
        _os_log_impl(&dword_181A37000, v58, v70, "%{public}s %{public}@ Expected completion block %{public}@, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

LABEL_126:
  if (v57)
  {
    free(v57);
  }

LABEL_18:
}

void ___ZL24nwsc_save_remote_pub_keyP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObjectyPh_block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16) == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 136446978;
      *&buf[4] = "nwsc_save_remote_pub_key_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v3;
      *&buf[22] = 2114;
      v23 = v4;
      LOWORD(v24) = 2048;
      *(&v24 + 2) = v5;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, not reevaluating %{public}@ due to received seq %llu", buf, 0x2Au);
    }
  }

  else
  {
    v6 = *(*(a1 + 40) + 576);
    if (v6 && (v7 = v6, v18 = 0, v19 = &v18, v20 = 0x2020000000, v21 = 0, *buf = MEMORY[0x1E69E9820], *&buf[8] = 3221225472, *&buf[16] = __nw_connection_is_cancelled_or_failed_block_invoke, v23 = &unk_1E6A3D738, *(&v24 + 1) = &v18, v8 = v7, *&v24 = v8, os_unfair_lock_lock(v7 + 34), (*&buf[16])(buf), os_unfair_lock_unlock(v7 + 34), LODWORD(v7) = *(v19 + 24), v24, _Block_object_dispose(&v18, 8), v8, !v7))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        *buf = 136446978;
        *&buf[4] = "nwsc_save_remote_pub_key_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v15;
        *&buf[22] = 2114;
        v23 = v16;
        LOWORD(v24) = 2048;
        *(&v24 + 2) = v17;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ reevaluating %{public}@ due to received seq %llu", buf, 0x2Au);
      }

      nwsc_process_incoming_request(*(a1 + 32), *(a1 + 40));
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        *buf = 136446722;
        *&buf[4] = "nwsc_save_remote_pub_key_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v10;
        *&buf[22] = 2114;
        v23 = v11;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ removing unverified incoming request %{public}@ with bad connection", buf, 0x20u);
      }

      v12 = *(a1 + 40);
      p_super = &v12->connection->super;
      if (p_super)
      {
        nw_connection_cancel(p_super);
        v12 = *(a1 + 40);
      }

      nw_service_connector_remove_pending_unverified_incoming_request(*(a1 + 32), v12);
    }
  }
}

void nw_service_connector_remove_pending_unverified_incoming_request(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null serviceConnector", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v8)
        {
          goto LABEL_7;
        }

LABEL_58:
        free(v8);
        goto LABEL_7;
      }

      if (v17)
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!v3->pendingUnverifiedIncomingRequests)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null serviceConnector->pendingUnverifiedIncomingRequests", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null serviceConnector->pendingUnverifiedIncomingRequests", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null serviceConnector->pendingUnverifiedIncomingRequests, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null serviceConnector->pendingUnverifiedIncomingRequests, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v20)
    {
      *buf = 136446466;
      v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null serviceConnector->pendingUnverifiedIncomingRequests, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!v4)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null request", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null request", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_service_connector_remove_pending_unverified_incoming_request";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_37:

    free(v18);
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

  incomingReqBytesToVerify = v4->incomingReqBytesToVerify;
  if (incomingReqBytesToVerify)
  {
    free(incomingReqBytesToVerify);
    v5->incomingReqBytesToVerify = 0;
  }

  v5->incomingReqBytesToVerifyLen = 0;
  nw_array_remove_object(v3->pendingUnverifiedIncomingRequests, v5);
LABEL_7:
}

BOOL ___ZL55nw_service_connector_copy_active_request_for_connectionP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5[72];
  v7 = *(a1 + 32);
  if (v6 == v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return v6 != v7;
}

void nw_service_connector_reject_incoming_request(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2, int a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = *(v6 + 616);
  if (v8)
  {
    rejectTimer = v6->rejectTimer;
    if (rejectTimer)
    {
      nw_queue_cancel_source(rejectTimer);
      v7->rejectTimer = 0;
      v8 = *(v7 + 616);
    }

    if ((v8 & 2) == 0)
    {
      goto LABEL_48;
    }

    v14 = v5;
    v15 = v7;
    v16 = v15;
    if (v14)
    {
      if (v14[10])
      {
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        if (nwsc_get_identifier(v15->endpoint, v15->service, buf, 0x1B4uLL))
        {
          nw_dictionary_set_value(v14[10], buf, 0);
          goto LABEL_47;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        endpoint = v16->endpoint;
        *type = 136446722;
        v56 = "nw_service_connector_remove_pending_incoming_request";
        v57 = 2114;
        v58 = endpoint;
        v59 = 2082;
        service = v16->service;
        v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", type, 32);

        v54 = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (__nwlog_fault(v23, &v54, &v53))
        {
          if (v54 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v25 = v54;
            if (os_log_type_enabled(v24, v54))
            {
              v26 = v16->endpoint;
              *type = 136446722;
              v56 = "nw_service_connector_remove_pending_incoming_request";
              v57 = 2114;
              v58 = v26;
              v59 = 2082;
              service = v16->service;
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", type, 0x20u);
            }

LABEL_44:

            goto LABEL_45;
          }

          if (v53 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v31 = v54;
            if (os_log_type_enabled(v24, v54))
            {
              v32 = v16->endpoint;
              *type = 136446722;
              v56 = "nw_service_connector_remove_pending_incoming_request";
              v57 = 2114;
              v58 = v32;
              v59 = 2082;
              service = v16->service;
              _os_log_impl(&dword_181A37000, v24, v31, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", type, 0x20u);
            }

            goto LABEL_44;
          }

          backtrace_string = __nw_create_backtrace_string();
          v24 = __nwlog_obj();
          v28 = v54;
          v29 = os_log_type_enabled(v24, v54);
          if (!backtrace_string)
          {
            if (v29)
            {
              v33 = v16->endpoint;
              *type = 136446722;
              v56 = "nw_service_connector_remove_pending_incoming_request";
              v57 = 2114;
              v58 = v33;
              v59 = 2082;
              service = v16->service;
              _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", type, 0x20u);
            }

            goto LABEL_44;
          }

          if (v29)
          {
            v30 = v16->endpoint;
            *type = 136446978;
            v56 = "nw_service_connector_remove_pending_incoming_request";
            v57 = 2114;
            v58 = v30;
            v59 = 2082;
            service = v16->service;
            v61 = 2082;
            v62 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", type, 0x2Au);
          }

          free(backtrace_string);
          if (!v23)
          {
LABEL_47:

            v34 = *(v7 + 616);
            *(v7 + 616) = v34 & 0xFD;
            if ((v34 & 4) != 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v39 = gLogObj;
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                *&buf[4] = "nw_service_connector_reject_incoming_request";
                *&buf[12] = 2114;
                *&buf[14] = v14;
                *&buf[22] = 2114;
                *&buf[24] = v16;
                _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ not rejecting accepted incoming request %{public}@", buf, 0x20u);
              }

              goto LABEL_59;
            }

LABEL_48:
            if (v7->connection)
            {
              if (nw_service_connector_get_new_sequence_number(void)::onceToken[0] != -1)
              {
                dispatch_once(nw_service_connector_get_new_sequence_number(void)::onceToken, &__block_literal_global_199_52039);
              }

                ;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v36 = gLogObj;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_service_connector_reject_incoming_request";
                *&buf[12] = 2114;
                *&buf[14] = v5;
                *&buf[22] = 2114;
                *&buf[24] = v7;
                LOWORD(v64) = 2048;
                *(&v64 + 2) = i;
                _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ rejecting incoming request %{public}@ reply seq %llu", buf, 0x2Au);
              }

              connection = v7->connection;
              v7->connection = 0;
              v38 = connection;

              nwsc_send_feedback(v5, v38, i, 0, a3, 0);
            }

            goto LABEL_59;
          }

LABEL_46:
          free(v23);
          goto LABEL_47;
        }

LABEL_45:
        if (!v23)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v43 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null serviceConnector->pendingIncomingRequests", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v54 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v23, type, &v54))
      {
        goto LABEL_45;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v41, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null serviceConnector->pendingIncomingRequests", buf, 0xCu);
        }
      }

      else if (v54 == OS_LOG_TYPE_INFO)
      {
        v48 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v49 = type[0];
        v50 = os_log_type_enabled(v41, type[0]);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
            *&buf[12] = 2082;
            *&buf[14] = v48;
            _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null serviceConnector->pendingIncomingRequests, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          if (!v23)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        if (v50)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null serviceConnector->pendingIncomingRequests, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v52 = type[0];
        if (os_log_type_enabled(v41, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v41, v52, "%{public}s called with null serviceConnector->pendingIncomingRequests, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v40 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
      v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null serviceConnector", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v54 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v23, type, &v54))
      {
        goto LABEL_45;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type[0];
        if (os_log_type_enabled(v41, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null serviceConnector", buf, 0xCu);
        }
      }

      else if (v54 == OS_LOG_TYPE_INFO)
      {
        v45 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v46 = type[0];
        v47 = os_log_type_enabled(v41, type[0]);
        if (v45)
        {
          if (v47)
          {
            *buf = 136446466;
            *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
            *&buf[12] = 2082;
            *&buf[14] = v45;
            _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v45);
          goto LABEL_45;
        }

        if (v47)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v51 = type[0];
        if (os_log_type_enabled(v41, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_remove_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v41, v51, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_45;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_service_connector_reject_incoming_request";
  *&buf[12] = 2114;
  *&buf[14] = v5;
  *&buf[22] = 2114;
  *&buf[24] = v7;
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s %{public}@ attempted to reject outgoing request %{public}@", buf, 32);

  type[0] = OS_LOG_TYPE_ERROR;
  v54 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v10, type, &v54))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_reject_incoming_request";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        *&buf[24] = v7;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %{public}@ attempted to reject outgoing request %{public}@", buf, 0x20u);
      }
    }

    else if (v54 == OS_LOG_TYPE_INFO)
    {
      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v18 = type[0];
      v19 = os_log_type_enabled(v11, type[0]);
      if (v17)
      {
        if (v19)
        {
          *buf = 136446978;
          *&buf[4] = "nw_service_connector_reject_incoming_request";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          *&buf[22] = 2114;
          *&buf[24] = v7;
          LOWORD(v64) = 2082;
          *(&v64 + 2) = v17;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s %{public}@ attempted to reject outgoing request %{public}@, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v17);
        if (v10)
        {
          goto LABEL_38;
        }

        goto LABEL_59;
      }

      if (v19)
      {
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_reject_incoming_request";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        *&buf[24] = v7;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s %{public}@ attempted to reject outgoing request %{public}@, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v20 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_service_connector_reject_incoming_request";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        *&buf[24] = v7;
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s %{public}@ attempted to reject outgoing request %{public}@, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

  if (v10)
  {
LABEL_38:
    free(v10);
  }

LABEL_59:
}

BOOL nwsc_compare_uuid(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3 && (v2 = a1[1], v3 = a2[1], v2 == v3) && (v2 = a1[2], v3 = a2[2], v2 == v3) && (v2 = a1[3], v3 = a2[3], v2 == v3) && (v2 = a1[4], v3 = a2[4], v2 == v3) && (v2 = a1[5], v3 = a2[5], v2 == v3) && (v2 = a1[6], v3 = a2[6], v2 == v3) && (v2 = a1[7], v3 = a2[7], v2 == v3) && (v2 = a1[8], v3 = a2[8], v2 == v3) && (v2 = a1[9], v3 = a2[9], v2 == v3) && (v2 = a1[10], v3 = a2[10], v2 == v3) && (v2 = a1[11], v3 = a2[11], v2 == v3) && (v2 = a1[12], v3 = a2[12], v2 == v3) && (v2 = a1[13], v3 = a2[13], v2 == v3) && (v2 = a1[14], v3 = a2[14], v2 == v3) && (v2 = a1[15], v3 = a2[15], v2 == v3))
  {
    return 0;
  }

  else
  {
    return v2 > v3;
  }
}

void ___ZL29nwsc_process_incoming_requestP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v10 = 136446978;
      v11 = "nwsc_process_incoming_request_block_invoke";
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error when accepting request %{public}@ %{darwin.errno}d", &v10, 0x26u);
    }

    nw_service_connector_cancel_request_inner(*(a1 + 32), *(*(a1 + 48) + 8), (*(a1 + 48) + 24), *(*(a1 + 48) + 576), 0);
    nw_service_connector_trigger_request_complete_block_inner(*(a1 + 32), *(a1 + 40), 0, 0, a2);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 576);

    nw_service_connector_trigger_request_complete_block_inner(v7, v8, 0, v9, 0);
  }
}

void nw_service_connector_handle_unsolicited_requests(NWConcrete_nw_service_connector *a1, NWConcrete_nw_unique_connection_request *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  memset(v50, 0, sizeof(v50));
  service = v4->service;
  nwsc_get_identifier(v4->endpoint, v4->service, v50, 0x80uLL);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "nw_service_connector_handle_unsolicited_requests";
    *&buf[12] = 2114;
    *&buf[14] = v3;
    *&buf[22] = 2080;
    *&buf[24] = v50;
    LOWORD(v60) = 2114;
    *(&v60 + 2) = v4;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ handling unsolicited incoming request with identifier %s %{public}@", buf, 0x2Au);
  }

  v7 = nw_service_connector_copy_pending_incoming_request(v3, v4->endpoint, service);
  v8 = v7;
  if (!v7)
  {
LABEL_11:

    v13 = v3;
    v14 = v4;
    v15 = v14;
    if (v13)
    {
      if (v13->pendingIncomingRequests)
      {
        *(v14 + 616) |= 2u;
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        memset(buf, 0, sizeof(buf));
        if (nwsc_get_identifier(v4->endpoint, service, buf, 0x1B4uLL))
        {
          nw_dictionary_set_value(v13->pendingIncomingRequests, buf, v15);
LABEL_35:

          serviceConnectorQueue = v13->serviceConnectorQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___ZL48nw_service_connector_handle_unsolicited_requestsP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke;
          block[3] = &unk_1E6A3D760;
          v46 = v13;
          v47 = v15;
          dispatch_async(serviceConnectorQueue, block);

          v8 = v46;
          goto LABEL_36;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        endpoint = v4->endpoint;
        *v51 = 136446722;
        v52 = "nw_service_connector_add_pending_incoming_request";
        v53 = 2114;
        v54 = endpoint;
        v55 = 2082;
        v56 = v4->service;
        v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", v51, 32);

        type = OS_LOG_TYPE_ERROR;
        v48 = 0;
        if (__nwlog_fault(v18, &type, &v48))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            if (os_log_type_enabled(v19, type))
            {
              v21 = v4->endpoint;
              *v51 = 136446722;
              v52 = "nw_service_connector_add_pending_incoming_request";
              v53 = 2114;
              v54 = v21;
              v55 = 2082;
              v56 = v4->service;
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", v51, 0x20u);
            }
          }

          else if (v48 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v23 = type;
            v24 = os_log_type_enabled(v19, type);
            if (backtrace_string)
            {
              if (v24)
              {
                v25 = v4->endpoint;
                *v51 = 136446978;
                v52 = "nw_service_connector_add_pending_incoming_request";
                v53 = 2114;
                v54 = v25;
                v55 = 2082;
                v56 = v4->service;
                v57 = 2082;
                v58 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v23, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", v51, 0x2Au);
              }

              free(backtrace_string);
              if (!v18)
              {
                goto LABEL_35;
              }

LABEL_33:
              v29 = v18;
LABEL_34:
              free(v29);
              goto LABEL_35;
            }

            if (v24)
            {
              v28 = v4->endpoint;
              *v51 = 136446722;
              v52 = "nw_service_connector_add_pending_incoming_request";
              v53 = 2114;
              v54 = v28;
              v55 = 2082;
              v56 = v4->service;
              _os_log_impl(&dword_181A37000, v19, v23, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", v51, 0x20u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v26 = type;
            if (os_log_type_enabled(v19, type))
            {
              v27 = v4->endpoint;
              *v51 = 136446722;
              v52 = "nw_service_connector_add_pending_incoming_request";
              v53 = 2114;
              v54 = v27;
              v55 = 2082;
              v56 = v4->service;
              _os_log_impl(&dword_181A37000, v19, v26, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", v51, 0x20u);
            }
          }
        }

        if (!v18)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v35 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_service_connector_add_pending_incoming_request";
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null serviceConnector->pendingIncomingRequests", buf, 12);

      v51[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v32, v51, &type))
      {
        goto LABEL_70;
      }

      if (v51[0] == 17)
      {
        v33 = __nwlog_obj();
        v36 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_add_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s called with null serviceConnector->pendingIncomingRequests", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v41 = v51[0];
        v42 = os_log_type_enabled(v33, v51[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            *&buf[4] = "nw_service_connector_add_pending_incoming_request";
            *&buf[12] = 2082;
            *&buf[14] = v40;
            _os_log_impl(&dword_181A37000, v33, v41, "%{public}s called with null serviceConnector->pendingIncomingRequests, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          if (!v32)
          {
            goto LABEL_35;
          }

LABEL_71:
          v29 = v32;
          goto LABEL_34;
        }

        if (v42)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_add_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v33, v41, "%{public}s called with null serviceConnector->pendingIncomingRequests, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v44 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_add_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v33, v44, "%{public}s called with null serviceConnector->pendingIncomingRequests, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v31 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_service_connector_add_pending_incoming_request";
      v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null serviceConnector", buf, 12);

      v51[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v32, v51, &type))
      {
        goto LABEL_70;
      }

      if (v51[0] == 17)
      {
        v33 = __nwlog_obj();
        v34 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_add_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null serviceConnector", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v37 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v38 = v51[0];
        v39 = os_log_type_enabled(v33, v51[0]);
        if (v37)
        {
          if (v39)
          {
            *buf = 136446466;
            *&buf[4] = "nw_service_connector_add_pending_incoming_request";
            *&buf[12] = 2082;
            *&buf[14] = v37;
            _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
LABEL_70:
          if (!v32)
          {
            goto LABEL_35;
          }

          goto LABEL_71;
        }

        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_add_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v33, v38, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v43 = v51[0];
        if (os_log_type_enabled(v33, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_service_connector_add_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v33, v43, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_70;
  }

  sequenceNumber = v7->sequenceNumber;
  v10 = v4->sequenceNumber;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (sequenceNumber <= v10)
  {
    if (v12)
    {
      *buf = 136446978;
      *&buf[4] = "nw_service_connector_handle_unsolicited_requests";
      *&buf[12] = 2114;
      *&buf[14] = v3;
      *&buf[22] = 2114;
      *&buf[24] = v8;
      LOWORD(v60) = 2114;
      *(&v60 + 2) = v4;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ rejecting %{public}@ in favor of %{public}@", buf, 0x2Au);
    }

    nw_service_connector_reject_incoming_request(v3, v8, 0);
    goto LABEL_11;
  }

  if (v12)
  {
    *buf = 136446978;
    *&buf[4] = "nw_service_connector_handle_unsolicited_requests";
    *&buf[12] = 2114;
    *&buf[14] = v3;
    *&buf[22] = 2114;
    *&buf[24] = v4;
    LOWORD(v60) = 2114;
    *(&v60 + 2) = v8;
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ rejecting %{public}@ in favor of %{public}@", buf, 0x2Au);
  }

  nw_service_connector_reject_incoming_request(v3, v4, 0);
LABEL_36:
}

void ___ZL29nwsc_process_incoming_requestP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_217(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v10 = 136446978;
      v11 = "nwsc_process_incoming_request_block_invoke";
      v12 = 2114;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ error when accepting request %{public}@ %{darwin.errno}d", &v10, 0x26u);
    }

    nw_service_connector_cancel_request_inner(*(a1 + 32), *(*(a1 + 48) + 8), (*(a1 + 48) + 24), *(*(a1 + 48) + 576), 0);
    nw_service_connector_trigger_request_complete_block_inner(*(a1 + 32), *(a1 + 40), 0, 0, a2);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 576);

    nw_service_connector_trigger_request_complete_block_inner(v7, v8, 0, v9, 0);
  }
}

void *nw_service_connector_copy_pending_incoming_request(void *a1, void *a2, unsigned __int8 *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v19 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null serviceConnector", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null serviceConnector", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v38 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null serviceConnector, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v30 = buf[0];
    v31 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v31)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v31)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", v52, 0x16u);
    }

LABEL_68:

    free(backtrace_string);
    goto LABEL_93;
  }

  if (!v5[10])
  {
    v23 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null serviceConnector->pendingIncomingRequests", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v24 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null serviceConnector->pendingIncomingRequests", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v39 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v39, "%{public}s called with null serviceConnector->pendingIncomingRequests, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v32 = buf[0];
    v33 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v33)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->pendingIncomingRequests, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v33)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null serviceConnector->pendingIncomingRequests, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!v6)
  {
    v25 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null endpoint", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, buf, &type))
    {
      goto LABEL_93;
    }

    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v26 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null endpoint", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v40 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v40, "%{public}s called with null endpoint, backtrace limit exceeded", v52, 0xCu);
      }

      goto LABEL_92;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v34 = buf[0];
    v35 = os_log_type_enabled(v21, buf[0]);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v52 = 136446210;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, no backtrace", v52, 0xCu);
      }

      goto LABEL_92;
    }

    if (v35)
    {
      *v52 = 136446466;
      *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
      *&v52[12] = 2082;
      *&v52[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v34, "%{public}s called with null endpoint, dumping backtrace:%{public}s", v52, 0x16u);
    }

    goto LABEL_68;
  }

  if (!a3)
  {
    v27 = __nwlog_obj();
    *v52 = 136446210;
    *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null service", v52, 12);

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v20, buf, &type))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v28 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v21, v28, "%{public}s called with null service", v52, 0xCu);
        }

LABEL_92:

        goto LABEL_93;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v21 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v21, v41, "%{public}s called with null service, backtrace limit exceeded", v52, 0xCu);
        }

        goto LABEL_92;
      }

      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v36 = buf[0];
      v37 = os_log_type_enabled(v21, buf[0]);
      if (!backtrace_string)
      {
        if (v37)
        {
          *v52 = 136446210;
          *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
          _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, no backtrace", v52, 0xCu);
        }

        goto LABEL_92;
      }

      if (v37)
      {
        *v52 = 136446466;
        *&v52[4] = "nw_service_connector_copy_pending_incoming_request";
        *&v52[12] = 2082;
        *&v52[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null service, dumping backtrace:%{public}s", v52, 0x16u);
      }

      goto LABEL_68;
    }

LABEL_93:
    if (!v20)
    {
      goto LABEL_27;
    }

    v17 = v20;
    goto LABEL_26;
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  memset(v52, 0, sizeof(v52));
  if ((nwsc_get_identifier(v6, a3, v52, 0x1B4uLL) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446722;
    v45 = "nw_service_connector_copy_pending_incoming_request";
    v46 = 2114;
    v47 = v7;
    v48 = 2082;
    v49 = a3;
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v10, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_pending_incoming_request";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s", buf, 0x20u);
        }
      }

      else if (v42 == 1)
      {
        v13 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v11, type);
        if (v13)
        {
          if (v15)
          {
            *buf = 136446978;
            v45 = "nw_service_connector_copy_pending_incoming_request";
            v46 = 2114;
            v47 = v7;
            v48 = 2082;
            v49 = a3;
            v50 = 2082;
            v51 = v13;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v13);
          if (!v10)
          {
            goto LABEL_27;
          }

LABEL_25:
          v17 = v10;
LABEL_26:
          free(v17);
          goto LABEL_27;
        }

        if (v15)
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_pending_incoming_request";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446722;
          v45 = "nw_service_connector_copy_pending_incoming_request";
          v46 = 2114;
          v47 = v7;
          v48 = 2082;
          v49 = a3;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s Could not get identifier for endpoint %{public}@, service %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v10)
    {
LABEL_27:
      v8 = 0;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = nw_dictionary_copy_value(v5[10], v52);
LABEL_28:

  return v8;
}

void ___ZL48nw_service_connector_handle_unsolicited_requestsP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 136446466;
      v20 = "nw_service_connector_handle_unsolicited_requests_block_invoke";
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, ignoring unsolicited request", buf, 0x16u);
    }
  }

  else
  {
    v5 = *(v2 + 64);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = *(v9 + 8);
        *buf = 136447234;
        v20 = "nw_service_connector_handle_unsolicited_requests_block_invoke";
        v21 = 2114;
        v22 = v8;
        v23 = 2114;
        v24 = v10;
        v25 = 2082;
        v26 = v9 + 24;
        v27 = 2114;
        v28 = v9;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ calling client service available block with %{public}@ %{public}s for %{public}@", buf, 0x34u);
      }

      (*(*(*(a1 + 32) + 64) + 16))();
    }

    else
    {
      if (v7)
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 136446722;
        v20 = "nw_service_connector_handle_unsolicited_requests_block_invoke";
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ no client service available block to call for %{public}@", buf, 0x20u);
      }
    }

    objc_initWeak(buf, *(a1 + 40));
    v13 = *(*(a1 + 40) + 600);
    if (v13)
    {
      nw_queue_cancel_source(v13);
      *(*(a1 + 40) + 600) = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL48nw_service_connector_handle_unsolicited_requestsP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_218;
    v16[3] = &unk_1E6A3BCC8;
    v17 = *(a1 + 32);
    objc_copyWeak(&v18, buf);
    *(*(a1 + 40) + 600) = nw_queue_context_create_source(0, 2, 3, 0, v16, 0);
    v14 = *(*(a1 + 40) + 600);
    v15 = dispatch_time(0x8000000000000000, 20000000000);
    nw_queue_set_timer_values(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    nw_queue_activate_source(*(*(a1 + 40) + 600));
    objc_destroyWeak(&v18);

    objc_destroyWeak(buf);
  }
}

void ___ZL48nw_service_connector_handle_unsolicited_requestsP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_218(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL48nw_service_connector_handle_unsolicited_requestsP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_2;
  v3[3] = &unk_1E6A3BCC8;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void ___ZL48nw_service_connector_handle_unsolicited_requestsP31NWConcrete_nw_service_connectorP39NWConcrete_nw_unique_connection_request_block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 16) == 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v9 = 136446466;
        v10 = "nw_service_connector_handle_unsolicited_requests_block_invoke_2";
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, ignoring unsolicited request timeout", &v9, 0x16u);
      }
    }

    else if ((*(WeakRetained + 616) & 2) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        endpoint = v3->endpoint;
        v9 = 136447490;
        v10 = "nw_service_connector_handle_unsolicited_requests_block_invoke";
        v11 = 2114;
        v12 = v7;
        v13 = 2114;
        v14 = endpoint;
        v15 = 2082;
        service = v3->service;
        v17 = 2048;
        v18 = 20;
        v19 = 2114;
        v20 = v3;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ client did not react to service available block for %{public}@ %{public}s after %llds, rejecting %{public}@", &v9, 0x3Eu);
      }

      nw_service_connector_reject_incoming_request(*(a1 + 32), v3, 1);
      nwsc_cancel_asquic_listener_for_endpoint(*(a1 + 32), v3->endpoint);
    }
  }
}

void nwsc_cancel_asquic_listener_for_endpoint(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nwsc_cancel_asquic_listener_for_endpoint";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null serviceConnector", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v16, &type, &v34))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v37 = "nwsc_cancel_asquic_listener_for_endpoint";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null serviceConnector", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v37 = "nwsc_cancel_asquic_listener_for_endpoint";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null serviceConnector, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_49:
        free(v16);
        goto LABEL_14;
      }

      if (v23)
      {
        *buf = 136446210;
        v37 = "nwsc_cancel_asquic_listener_for_endpoint";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null serviceConnector, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v37 = "nwsc_cancel_asquic_listener_for_endpoint";
        _os_log_impl(&dword_181A37000, v17, v27, "%{public}s called with null serviceConnector, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (v4)
  {
    if (v3[15])
    {
      v6 = v4;
      v7 = _nw_endpoint_get_type(v6);

      if (v7 == 6)
      {
        v8 = v6;
        application_service_name = _nw_endpoint_get_application_service_name(v8);

        if (application_service_name)
        {
          v10 = nw_dictionary_copy_value(v3[15], application_service_name);
          if (v10)
          {
            if (nwsc_should_cancel_asquic_listener_for_endpoint(v3, v8))
            {
              v11 = xpc_string_create(application_service_name);
              v12 = dispatch_time(0, 5000000000);
              v13 = v3[4];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = ___ZL40nwsc_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
              block[3] = &unk_1E6A3C038;
              v30 = v11;
              v31 = v3;
              v32 = v8;
              v33 = v10;
              v14 = v11;
              dispatch_after(v12, v13, block);
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                v37 = "nwsc_cancel_asquic_listener_for_endpoint";
                v38 = 2114;
                v39 = v3;
                v40 = 2112;
                v41 = v10;
                v42 = 2082;
                v43 = application_service_name;
                _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ not cancelling listener %@ for service %{public}s", buf, 0x2Au);
              }
            }
          }
        }
      }

      else
      {
      }
    }

    goto LABEL_14;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nwsc_cancel_asquic_listener_for_endpoint";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v16, &type, &v34))
  {
    goto LABEL_48;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v17 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v17, type))
    {
      *buf = 136446210;
      v37 = "nwsc_cancel_asquic_listener_for_endpoint";
      _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null endpoint", buf, 0xCu);
    }

    goto LABEL_47;
  }

  if (v34 != 1)
  {
    v17 = __nwlog_obj();
    v28 = type;
    if (os_log_type_enabled(v17, type))
    {
      *buf = 136446210;
      v37 = "nwsc_cancel_asquic_listener_for_endpoint";
      _os_log_impl(&dword_181A37000, v17, v28, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_47;
  }

  v24 = __nw_create_backtrace_string();
  v17 = __nwlog_obj();
  v25 = type;
  v26 = os_log_type_enabled(v17, type);
  if (!v24)
  {
    if (v26)
    {
      *buf = 136446210;
      v37 = "nwsc_cancel_asquic_listener_for_endpoint";
      _os_log_impl(&dword_181A37000, v17, v25, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_47;
  }

  if (v26)
  {
    *buf = 136446466;
    v37 = "nwsc_cancel_asquic_listener_for_endpoint";
    v38 = 2082;
    v39 = v24;
    _os_log_impl(&dword_181A37000, v17, v25, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v24);
  if (v16)
  {
    goto LABEL_49;
  }

LABEL_14:
}

uint64_t nwsc_should_cancel_asquic_listener_for_endpoint(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3[15])
  {
    goto LABEL_12;
  }

  v6 = v4;
  v7 = v6;
  if (!v6 || (v8 = v6, type = _nw_endpoint_get_type(v8), v8, type != 6))
  {

    goto LABEL_12;
  }

  v10 = v8;
  application_service_name = _nw_endpoint_get_application_service_name(v10);

  if (!application_service_name)
  {
    goto LABEL_13;
  }

  v12 = v3[17];
  if (v12 && (nw_endpoint_is_equal(v12, v10, 31) & 1) != 0)
  {
LABEL_12:
    LOBYTE(application_service_name) = 0;
    goto LABEL_13;
  }

  v13 = nw_dictionary_copy_value(v3[15], application_service_name);
  if (v13)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v14 = v3[12];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZL47nwsc_should_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
    v20[3] = &unk_1E6A34C68;
    v20[4] = &v21;
    v20[5] = application_service_name;
    nw_dictionary_apply(v14, v20);
    if (v22[3] & 1) != 0 || (v15 = v3[11], v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = ___ZL47nwsc_should_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_2, v19[3] = &unk_1E6A34C68, v19[4] = &v21, v19[5] = application_service_name, nw_dictionary_apply(v15, v19), (v22[3]))
    {
      LOBYTE(application_service_name) = 0;
    }

    else
    {
      v17 = v3[10];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = ___ZL47nwsc_should_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_3;
      v18[3] = &unk_1E6A34C68;
      v18[4] = &v21;
      v18[5] = application_service_name;
      nw_dictionary_apply(v17, v18);
      LOBYTE(application_service_name) = *(v22 + 24) ^ 1;
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    LOBYTE(application_service_name) = 0;
  }

LABEL_13:

  return application_service_name & 1;
}

void ___ZL40nwsc_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  string_ptr = xpc_string_get_string_ptr(*(a1 + 32));
  should_cancel_asquic_listener_for_endpoint = nwsc_should_cancel_asquic_listener_for_endpoint(*(a1 + 40), *(a1 + 48));
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (should_cancel_asquic_listener_for_endpoint)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v10 = 136446978;
      v11 = "nwsc_cancel_asquic_listener_for_endpoint_block_invoke";
      v12 = 2114;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v16 = 2082;
      v17 = string_ptr;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ cancelling listener %@ for service%{public}s", &v10, 0x2Au);
    }

    nw_listener_cancel(*(a1 + 56));
    nw_dictionary_set_value(*(*(a1 + 40) + 120), string_ptr, 0);
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v10 = 136446978;
      v11 = "nwsc_cancel_asquic_listener_for_endpoint_block_invoke";
      v12 = 2114;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2082;
      v17 = string_ptr;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ not cancelling listener %@ for service%{public}s", &v10, 0x2Au);
    }
  }
}

BOOL ___ZL47nwsc_should_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4[1];
  v6 = v5;
  if (v5 && (v7 = v5, type = _nw_endpoint_get_type(v7), v7, type == 6))
  {
    v9 = v7;
    application_service_name = _nw_endpoint_get_application_service_name(v9);

    if (application_service_name && !strcmp(application_service_name, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
  }

  v11 = *(*(*(a1 + 32) + 8) + 24);

  return (v11 & 1) == 0;
}

BOOL ___ZL47nwsc_should_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4[1];
  v6 = v5;
  if (v5 && (v7 = v5, type = _nw_endpoint_get_type(v7), v7, type == 6))
  {
    v9 = v7;
    application_service_name = _nw_endpoint_get_application_service_name(v9);

    if (application_service_name && !strcmp(application_service_name, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
  }

  v11 = *(*(*(a1 + 32) + 8) + 24);

  return (v11 & 1) == 0;
}

BOOL ___ZL47nwsc_should_cancel_asquic_listener_for_endpointP31NWConcrete_nw_service_connectorPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4[1];
  v6 = v5;
  if (v5 && (v7 = v5, type = _nw_endpoint_get_type(v7), v7, type == 6))
  {
    v9 = v7;
    application_service_name = _nw_endpoint_get_application_service_name(v9);

    if (application_service_name && !strcmp(application_service_name, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
  }

  v11 = *(*(*(a1 + 32) + 8) + 24);

  return (v11 & 1) == 0;
}

void ___ZL18nwsc_send_feedbackP31NWConcrete_nw_service_connectorP24NWConcrete_nw_connectionybbU13block_pointerFviE_block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 16) == 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 136446722;
      v42 = "nwsc_send_feedback_block_invoke";
      v43 = 2114;
      v44 = v6;
      v45 = 2114;
      *v46 = v7;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ already cancelled, ignoring connection %{public}@ send callback", buf, 0x20u);
    }

    nw_connection_cancel(*(a1 + 40));
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 22);
    }

    goto LABEL_30;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 64);
      if (*(a1 + 72))
      {
        v21 = "accept";
      }

      else
      {
        v21 = "deny";
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      *buf = 136447234;
      v42 = "nwsc_send_feedback_block_invoke";
      v43 = 2114;
      v44 = v22;
      v45 = 2082;
      *v46 = v21;
      *&v46[8] = 2048;
      *&v46[10] = v20;
      v47 = 2114;
      v48 = v23;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ sent %{public}s feedback seq %llu on connection %{public}@", buf, 0x34u);
    }

    v10 = 0;
    goto LABEL_26;
  }

  v9 = v3;
  v10 = v9[3];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 64);
    if (*(a1 + 72))
    {
      v13 = "accept";
    }

    else
    {
      v13 = "deny";
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 136447490;
    v42 = "nwsc_send_feedback_block_invoke";
    v43 = 2114;
    v44 = v14;
    v45 = 2082;
    *v46 = v13;
    *&v46[8] = 2048;
    *&v46[10] = v12;
    v47 = 2114;
    v48 = v15;
    v49 = 1024;
    v50 = v10;
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed to send %{public}s feedback seq %llu on %{public}@ %{darwin.errno}d", buf, 0x3Au);
  }

  if ((v10 - 32) > 0x39 || ((1 << (v10 - 32)) & 0x200000212420001) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = *(a1 + 72);
    *buf = 136446722;
    v42 = "nwsc_send_feedback_block_invoke";
    if (v26)
    {
      v27 = "accept";
    }

    else
    {
      v27 = "deny";
    }

    v43 = 2082;
    v44 = v27;
    v45 = 1024;
    *v46 = v10;
    v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s Failed to send %{public}s feedback %{darwin.errno}d", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v28, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          if (*(a1 + 72))
          {
            v31 = "accept";
          }

          else
          {
            v31 = "deny";
          }

          *buf = 136446722;
          v42 = "nwsc_send_feedback_block_invoke";
          v43 = 2082;
          v44 = v31;
          v45 = 1024;
          *v46 = v10;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Failed to send %{public}s feedback %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v33 = type;
        v34 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v34)
          {
            if (*(a1 + 72))
            {
              v35 = "accept";
            }

            else
            {
              v35 = "deny";
            }

            *buf = 136446978;
            v42 = "nwsc_send_feedback_block_invoke";
            v43 = 2082;
            v44 = v35;
            v45 = 1024;
            *v46 = v10;
            *&v46[4] = 2082;
            *&v46[6] = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Failed to send %{public}s feedback %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_62;
        }

        if (v34)
        {
          if (*(a1 + 72))
          {
            v38 = "accept";
          }

          else
          {
            v38 = "deny";
          }

          *buf = 136446722;
          v42 = "nwsc_send_feedback_block_invoke";
          v43 = 2082;
          v44 = v38;
          v45 = 1024;
          *v46 = v10;
          _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Failed to send %{public}s feedback %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v29, type))
        {
          if (*(a1 + 72))
          {
            v37 = "accept";
          }

          else
          {
            v37 = "deny";
          }

          *buf = 136446722;
          v42 = "nwsc_send_feedback_block_invoke";
          v43 = 2082;
          v44 = v37;
          v45 = 1024;
          *v46 = v10;
          _os_log_impl(&dword_181A37000, v29, v36, "%{public}s Failed to send %{public}s feedback %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_62:
    if (v28)
    {
      free(v28);
    }

    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 72);
    v42 = "nwsc_send_feedback_block_invoke";
    *buf = 136446722;
    if (v17)
    {
      v18 = "accept";
    }

    else
    {
      v18 = "deny";
    }

    v43 = 2082;
    v44 = v18;
    v45 = 1024;
    *v46 = v10;
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Failed to send %{public}s feedback %{darwin.errno}d", buf, 0x1Cu);
  }

LABEL_26:
  if (*(a1 + 48) == &__block_literal_global_6_44667)
  {
    nwsc_drain_and_cancel_connection(*(a1 + 32), *(a1 + 40), v4 == 0);
  }

  v24 = *(a1 + 56);
  if (v24)
  {
    (*(v24 + 16))(v24, v10);
  }

LABEL_30:
}