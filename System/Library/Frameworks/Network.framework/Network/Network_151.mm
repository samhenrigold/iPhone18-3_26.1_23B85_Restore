void nw_parameters_set_migration_controller_session_uuid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_migration_controller_session_uuid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_migration_controller_session_uuid";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_set_migration_controller_session_uuid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_set_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_parameters_get_migration_controller_session_uuid(char *a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_get_migration_controller_session_uuid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_migration_controller_session_uuid";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_get_migration_controller_session_uuid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

uint64_t nw_parameters_has_migration_controller_session_uuid(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_migration_controller_session_uuid(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_migration_controller_session_uuid";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_migration_controller_session_uuid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_migration_controller_session_uuid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

BOOL nw_parameters_are_valid(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1 != 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_are_valid";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_are_valid";
        v6 = "%{public}s called with null parameters";
LABEL_16:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_are_valid";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_are_valid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_are_valid";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  a1 = 0;
  return a1 != 0;
}

uint64_t nw_parameters_is_equal(char *a1, char *a2)
{
  if (a1 != a2 && a1 && a2)
  {
    return _nw_parameters_is_equal(a1, a2);
  }

  else
  {
    return a1 == a2;
  }
}

BOOL nw_parameters_are_compatible(void *a1, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a1 != a3 && a1 && a3)
  {
    return _nw_parameters_are_compatible(a1, a2, a3, a4, a5);
  }

  else
  {
    return a1 == a3;
  }
}

uint64_t nw_path_parameters_are_equal(char *a1, char *a2, unsigned int a3)
{
  if (a1 != a2 && a1 && a2)
  {
    return _nw_path_parameters_are_equal(a1, a2, a3);
  }

  else
  {
    return a1 == a2;
  }
}

char *nw_parameters_get_hash(char *result)
{
  if (result)
  {
    return _nw_parameters_get_hash(result);
  }

  return result;
}

char *nw_path_parameters_get_hash(char *a1)
{
  if (a1)
  {
    return _nw_path_parameters_get_hash(a1);
  }

  return a1;
}

BOOL nw_parameters_get_tls_experiments_enabled(void *a1)
{
  if (nw_parameters_get_should_skip_probe_sampling(a1))
  {
    return 1;
  }

  v2 = nw_setting_tcpconn_enable_tls_experiments;

  return networkd_settings_get_BOOL(v2);
}

void nw_parameters_disable_legacy_tls_versions(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_parameters_copy_default_protocol_stack();
    if (v2)
    {
      v3 = _nw_protocol_stack_copy_transport_protocol();
      v4 = _nw_parameters_copy_default_protocol_stack();
      v5 = nw_protocol_boringssl_copy_definition();
      v6 = nw_protocol_stack_includes_protocol(v4, v5);

      if (v6 && !nw_protocol_options_is_udp(v3))
      {
        v7 = nw_protocol_boringssl_copy_definition();
        v8 = nw_parameters_copy_protocol_options_for_definition(v1, v7);

        v9 = v8;
        v10 = v9;
        if (v9)
        {
          sec_protocol_options_set_min_tls_protocol_version(v9, tls_protocol_version_TLSv12);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 136446210;
            v22 = "nw_parameters_disable_legacy_tls_versions";
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s Disabling legacy TLS 1.0/1.1 for connection parameters", buf, 0xCu);
          }
        }
      }
    }

    goto LABEL_12;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_disable_legacy_tls_versions";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v13, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_disable_legacy_tls_versions";
        v16 = "%{public}s called with null parameters";
LABEL_26:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v22 = "nw_parameters_disable_legacy_tls_versions";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v18)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v22 = "nw_parameters_disable_legacy_tls_versions";
        v16 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_26;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_disable_legacy_tls_versions";
        v16 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v13)
  {
    free(v13);
  }

LABEL_12:
}

uint64_t nw_parameters_create_data(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      BYTE2(v16) = 0;
      LOWORD(v16) = 0;
      necp_parameters = nw_path_create_necp_parameters(a2, 0, 0, 0, 0, v3, 0, 0, v16);
      goto LABEL_4;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_data";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null data_len", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v7, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_data";
          v10 = "%{public}s called with null data_len";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v17 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_data";
          v10 = "%{public}s called with null data_len, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v15 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_data";
          v10 = "%{public}s called with null data_len, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_create_data";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null data_len, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v8, v9, v14, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_data";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v7, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_data";
          v10 = "%{public}s called with null parameters";
LABEL_31:
          _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v17 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_data";
          v10 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_data";
          v10 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v13)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v20 = "nw_parameters_create_data";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v7)
  {
    free(v7);
  }

  necp_parameters = 0;
LABEL_4:

  return necp_parameters;
}

BOOL nw_parameters_has_companion_proxy_required_interface_type(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return _nw_parameters_get_next_hop_required_interface_type(a1) != 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_companion_proxy_required_interface_type";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_companion_proxy_required_interface_type";
        v6 = "%{public}s called with null parameters";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_parameters_has_companion_proxy_required_interface_type";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_parameters_has_companion_proxy_required_interface_type";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_companion_proxy_required_interface_type";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

id nw_parameters_copy_application_service_identity()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697AD50];
  v8[0] = *MEMORY[0x1E697AD68];
  v8[1] = v0;
  v9[0] = *MEMORY[0x1E697ADA8];
  v9[1] = &unk_1EF011D20;
  v8[2] = *MEMORY[0x1E697B390];
  v9[2] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __nw_parameters_copy_application_service_identity_block_invoke;
  v6[3] = &unk_1E6A3D868;
  v7 = v1;
  v2 = nw_parameters_copy_application_service_identity_once;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_parameters_copy_application_service_identity_once, v6);
  }

  v4 = nw_parameters_copy_application_service_identity_identity;

  return v4;
}

void __nw_parameters_copy_application_service_identity_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  error = 0;
  v1 = SecKeyCreateRandomKey(*(a1 + 32), &error);
  v2 = v1;
  if (v1)
  {
    v3 = error == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446466;
    v46 = "nw_parameters_copy_application_service_identity_block_invoke";
    v47 = 2114;
    v48 = error;
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s SecKeyCreateRandomKey failed: %{public}@", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v5, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_37;
        }

        *buf = 136446466;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v47 = 2114;
        v48 = error;
        v8 = "%{public}s SecKeyCreateRandomKey failed: %{public}@";
LABEL_35:
        v27 = v6;
        v28 = v7;
        goto LABEL_36;
      }

      if (v42 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_37;
        }

        *buf = 136446466;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v47 = 2114;
        v48 = error;
        v8 = "%{public}s SecKeyCreateRandomKey failed: %{public}@, backtrace limit exceeded";
        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v20 = type;
      v21 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v21)
        {
LABEL_37:

          if (!v5)
          {
LABEL_25:
            if (error)
            {
              CFRelease(error);
              error = 0;
            }

            if (!v2)
            {
              return;
            }

LABEL_63:
            CFRelease(v2);
            return;
          }

LABEL_24:
          free(v5);
          goto LABEL_25;
        }

        *buf = 136446466;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v47 = 2114;
        v48 = error;
        v8 = "%{public}s SecKeyCreateRandomKey failed: %{public}@, no backtrace";
        v27 = v6;
        v28 = v20;
LABEL_36:
        _os_log_impl(&dword_181A37000, v27, v28, v8, buf, 0x16u);
        goto LABEL_37;
      }

      if (v21)
      {
        *buf = 136446722;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v47 = 2114;
        v48 = error;
        v49 = 2082;
        v50 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s SecKeyCreateRandomKey failed: %{public}@, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v9 = SecKeyCopyPublicKey(v1);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (v9)
  {
    CFRelease(v9);
  }

  if (!SelfSignedCertificate)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v46 = "nw_parameters_copy_application_service_identity_block_invoke";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s SecGenerateSelfSignedCertificate failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v23, &type, &v42))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v26 = "%{public}s SecGenerateSelfSignedCertificate failed";
LABEL_58:
        v36 = v24;
        v37 = v25;
LABEL_59:
        _os_log_impl(&dword_181A37000, v36, v37, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v42 == 1)
      {
        v30 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v31 = type;
        v32 = os_log_type_enabled(v24, type);
        if (v30)
        {
          if (v32)
          {
            *buf = 136446466;
            v46 = "nw_parameters_copy_application_service_identity_block_invoke";
            v47 = 2082;
            v48 = v30;
            _os_log_impl(&dword_181A37000, v24, v31, "%{public}s SecGenerateSelfSignedCertificate failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v30);
          goto LABEL_61;
        }

        if (!v32)
        {
          goto LABEL_60;
        }

        *buf = 136446210;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v26 = "%{public}s SecGenerateSelfSignedCertificate failed, no backtrace";
        v36 = v24;
        v37 = v31;
        goto LABEL_59;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v26 = "%{public}s SecGenerateSelfSignedCertificate failed, backtrace limit exceeded";
        goto LABEL_58;
      }
    }

LABEL_60:

LABEL_61:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_63;
  }

  v11 = SecIdentityCreate();
  CFRelease(v2);
  CFRelease(SelfSignedCertificate);
  if (v11)
  {
    v12 = sec_identity_create(v11);
    v13 = nw_parameters_copy_application_service_identity_identity;
    nw_parameters_copy_application_service_identity_identity = v12;

    CFRelease(v11);
    if (nw_parameters_copy_application_service_identity_identity)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v46 = "nw_parameters_copy_application_service_identity_block_invoke";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s sec_identity_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v15, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v46 = "nw_parameters_copy_application_service_identity_block_invoke";
          v18 = "%{public}s sec_identity_create failed";
LABEL_80:
          v40 = v16;
          v41 = v17;
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      if (v42 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v46 = "nw_parameters_copy_application_service_identity_block_invoke";
          v18 = "%{public}s sec_identity_create failed, backtrace limit exceeded";
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      v38 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v39 = os_log_type_enabled(v16, type);
      if (!v38)
      {
        if (v39)
        {
          *buf = 136446210;
          v46 = "nw_parameters_copy_application_service_identity_block_invoke";
          v18 = "%{public}s sec_identity_create failed, no backtrace";
          goto LABEL_80;
        }

        goto LABEL_82;
      }

      if (v39)
      {
        *buf = 136446466;
        v46 = "nw_parameters_copy_application_service_identity_block_invoke";
        v47 = 2082;
        v48 = v38;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s sec_identity_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v38);
    }

LABEL_83:
    if (!v15)
    {
      return;
    }

LABEL_84:
    free(v15);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v29 = gLogObj;
  *buf = 136446210;
  v46 = "nw_parameters_copy_application_service_identity_block_invoke";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s SecIdentityCreate failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (!__nwlog_fault(v15, &type, &v42))
  {
    goto LABEL_83;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v46 = "nw_parameters_copy_application_service_identity_block_invoke";
      v18 = "%{public}s SecIdentityCreate failed";
      goto LABEL_80;
    }

LABEL_82:

    goto LABEL_83;
  }

  if (v42 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type;
    if (os_log_type_enabled(v16, type))
    {
      *buf = 136446210;
      v46 = "nw_parameters_copy_application_service_identity_block_invoke";
      v18 = "%{public}s SecIdentityCreate failed, backtrace limit exceeded";
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  v33 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  v34 = type;
  v35 = os_log_type_enabled(v16, type);
  if (!v33)
  {
    if (v35)
    {
      *buf = 136446210;
      v46 = "nw_parameters_copy_application_service_identity_block_invoke";
      v18 = "%{public}s SecIdentityCreate failed, no backtrace";
      v40 = v16;
      v41 = v34;
LABEL_81:
      _os_log_impl(&dword_181A37000, v40, v41, v18, buf, 0xCu);
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  if (v35)
  {
    *buf = 136446466;
    v46 = "nw_parameters_copy_application_service_identity_block_invoke";
    v47 = 2082;
    v48 = v33;
    _os_log_impl(&dword_181A37000, v16, v34, "%{public}s SecIdentityCreate failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v33);
  if (v15)
  {
    goto LABEL_84;
  }
}

id nw_parameters_create_application_service_quic()
{
  v0 = _nw_parameters_create();
  if (nw_parameters_configure_application_service_quic(v0))
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

BOOL nw_parameters_configure_application_service_quic(void *a1)
{
  v1 = a1;
  v2 = nw_parameters_copy_application_service_identity();
  if (v2)
  {
    options = _nw_quic_create_options();
    v4 = _nw_udp_create_options();
    nw_parameters_configure_application_service_quic_using_identity_with_options(v1, v2, options, v4);
  }

  return v2 != 0;
}

void nw_parameters_configure_application_service_quic_using_identity_with_options(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  nw_parameters_set_migrating_peer_to_peer(v10);
  _nw_udp_options_set_use_quic_stats(v7, 1);
  _nw_udp_options_set_no_metadata(v7, 1);
  v11 = nw_quic_copy_sec_protocol_options(v8);
  sec_protocol_options_add_tls_application_protocol(v11, "application-service");

  v12 = nw_quic_stream_copy_shared_connection_options(v8);
  nw_quic_connection_set_probe_simultaneously(v12);

  v15 = nw_quic_copy_sec_protocol_options(v8);
  sec_protocol_options_set_peer_authentication_required(v15, 1);
  v13 = nw_quic_stream_copy_shared_connection_options(v8);
  nw_quic_connection_set_local_identity(v13, v9);

  nw_quic_connection_set_pmtud_for_non_transport(v13);
  nw_quic_connection_set_migration_for_non_transport(v13);
  nw_quic_connection_set_source_connection_id_length(v13, 4);
  nw_quic_connection_set_ignore_path_errors(v13, 1);
  v14 = nw_parameters_copy_default_protocol_stack(v10);

  nw_protocol_stack_append_application_protocol(v14, v8);
  nw_protocol_stack_set_transport_protocol(v14, v7);
}

BOOL nw_parameters_configure_application_service_quic_with_options(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = nw_parameters_copy_application_service_identity();
  if (v8)
  {
    nw_parameters_configure_application_service_quic_using_identity_with_options(v5, v8, v6, v7);
  }

  return v8 != 0;
}

id nw_parameters_create_application_service_quic_using_identity(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_parameters_create();
    v3 = v1;
    options = _nw_quic_create_options();
    v5 = _nw_udp_create_options();
    nw_parameters_configure_application_service_quic_using_identity_with_options(v2, v3, options, v5);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_create_application_service_quic_using_identity";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null identity", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v8, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_create_application_service_quic_using_identity";
        v11 = "%{public}s called with null identity";
LABEL_17:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v17 = "nw_parameters_create_application_service_quic_using_identity";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null identity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v13)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_parameters_create_application_service_quic_using_identity";
        v11 = "%{public}s called with null identity, no backtrace";
        goto LABEL_17;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_create_application_service_quic_using_identity";
        v11 = "%{public}s called with null identity, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v8)
  {
    free(v8);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

id __nw_parameters_create_secure_http_messaging_block_invoke(_BYTE *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = nw_protocol_boringssl_copy_definition();
  options = nw_protocol_create_options(v2);

  if (options)
  {
    v4 = options;
    if (a1[32] == 1)
    {
      sec_protocol_options_add_transport_specific_application_protocol();
    }

    if (a1[33] == 1)
    {
      sec_protocol_options_add_transport_specific_application_protocol();
    }

    if (a1[34] == 1)
    {
      sec_protocol_options_add_transport_specific_application_protocol();
    }

    goto LABEL_16;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v17 = "nw_parameters_create_secure_http_messaging_block_invoke";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s nw_tls_create_options failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v6, &type, &v14))
  {
    goto LABEL_14;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v17 = "nw_parameters_create_secure_http_messaging_block_invoke";
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s nw_tls_create_options failed", buf, 0xCu);
    }

LABEL_13:

LABEL_14:
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v17 = "nw_parameters_create_secure_http_messaging_block_invoke";
      _os_log_impl(&dword_181A37000, v7, v13, "%{public}s nw_tls_create_options failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_13;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v11 = type;
  v12 = os_log_type_enabled(v7, type);
  if (!backtrace_string)
  {
    if (v12)
    {
      *buf = 136446210;
      v17 = "nw_parameters_create_secure_http_messaging_block_invoke";
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_tls_create_options failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (v12)
  {
    *buf = 136446466;
    v17 = "nw_parameters_create_secure_http_messaging_block_invoke";
    v18 = 2082;
    v19 = backtrace_string;
    _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_tls_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v6)
  {
LABEL_15:
    free(v6);
  }

LABEL_16:

  return options;
}

NSObject *nw_parameters_create_webtransport_http(void *a1, void *a2, void *a3, void *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v8)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_parameters_create_webtransport_http";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null configure_tls", buf, 12);

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v21, &v69, &v68))
    {
      goto LABEL_124;
    }

    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null configure_tls", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v68 != 1)
    {
      v22 = __nwlog_obj();
      v52 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v52, "%{public}s called with null configure_tls, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_123;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v38 = v69;
    v39 = os_log_type_enabled(v22, v69);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v38, "%{public}s called with null configure_tls, no backtrace", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v39)
    {
      *buf = 136446466;
      v71 = "nw_parameters_create_webtransport_http";
      v72 = 2082;
      v73 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v38, "%{public}s called with null configure_tls, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_79:

    free(backtrace_string);
    goto LABEL_124;
  }

  if (v8 == &__block_literal_global_19409)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_parameters_create_webtransport_http";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable))", buf, 12);

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v21, &v69, &v68))
    {
      goto LABEL_124;
    }

    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v25 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable))", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v68 != 1)
    {
      v22 = __nwlog_obj();
      v53 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v53, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_123;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v40 = v69;
    v41 = os_log_type_enabled(v22, v69);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v40, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable)), no backtrace", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v41)
    {
      *buf = 136446466;
      v71 = "nw_parameters_create_webtransport_http";
      v72 = 2082;
      v73 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v40, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_79;
  }

  if (!v9)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_parameters_create_webtransport_http";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null configure_quic", buf, 12);

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v21, &v69, &v68))
    {
      goto LABEL_124;
    }

    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v27 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null configure_quic", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v68 != 1)
    {
      v22 = __nwlog_obj();
      v54 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v54, "%{public}s called with null configure_quic, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_123;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v42 = v69;
    v43 = os_log_type_enabled(v22, v69);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v42, "%{public}s called with null configure_quic, no backtrace", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v43)
    {
      *buf = 136446466;
      v71 = "nw_parameters_create_webtransport_http";
      v72 = 2082;
      v73 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v42, "%{public}s called with null configure_quic, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_79;
  }

  if (!v10)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_parameters_create_webtransport_http";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null configure_tcp", buf, 12);

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v21, &v69, &v68))
    {
      goto LABEL_124;
    }

    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v29 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null configure_tcp", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v68 != 1)
    {
      v22 = __nwlog_obj();
      v55 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v55, "%{public}s called with null configure_tcp, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_123;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v44 = v69;
    v45 = os_log_type_enabled(v22, v69);
    if (!backtrace_string)
    {
      if (v45)
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v44, "%{public}s called with null configure_tcp, no backtrace", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v45)
    {
      *buf = 136446466;
      v71 = "nw_parameters_create_webtransport_http";
      v72 = 2082;
      v73 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v44, "%{public}s called with null configure_tcp, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_79;
  }

  if (!v7)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_parameters_create_webtransport_http";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null configure_webtransport", buf, 12);

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v21, &v69, &v68))
    {
      goto LABEL_124;
    }

    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v31 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null configure_webtransport", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v68 != 1)
    {
      v22 = __nwlog_obj();
      v56 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v56, "%{public}s called with null configure_webtransport, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_123;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v46 = v69;
    v47 = os_log_type_enabled(v22, v69);
    if (!backtrace_string)
    {
      if (v47)
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v46, "%{public}s called with null configure_webtransport, no backtrace", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v47)
    {
      *buf = 136446466;
      v71 = "nw_parameters_create_webtransport_http";
      v72 = 2082;
      v73 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v46, "%{public}s called with null configure_webtransport, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_79;
  }

  if (v7 != &__block_literal_global_19409)
  {
    if (nw_protocol_copy_webtransport_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
    }

    options = nw_protocol_create_options(nw_protocol_copy_webtransport_definition::definition);
    if (v7 != &__block_literal_global_2)
    {
      v7[2](v7, options);
    }

    connection_max_sessions = nw_webtransport_options_get_connection_max_sessions(options);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_parameters_create_webtransport_http_block_invoke;
    aBlock[3] = &unk_1E6A2E478;
    v67 = v9;
    v14 = _Block_copy(aBlock);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __nw_parameters_create_webtransport_http_block_invoke_2;
    v64[3] = &unk_1E6A2E4A0;
    v65 = v8;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __nw_parameters_create_webtransport_http_block_invoke_3;
    v63[3] = &__block_descriptor_40_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
    v63[4] = connection_max_sessions;
    secure_http_messaging = nw_parameters_create_secure_http_messaging(v64, v14, &__block_literal_global_2, v11, v63);
    v16 = nw_parameters_copy_default_protocol_stack(secure_http_messaging);
    v17 = v16;
    if (v16)
    {
      nw_protocol_stack_prepend_application_protocol(v16, options);
      v18 = secure_http_messaging;
LABEL_13:

      goto LABEL_14;
    }

    v34 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_parameters_create_webtransport_http";
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null stack", buf, 12);

    v69 = OS_LOG_TYPE_ERROR;
    v68 = 0;
    v35 = v62;
    if (!__nwlog_fault(v62, &v69, &v68))
    {
LABEL_131:
      if (v35)
      {
        free(v35);
      }

      v18 = 0;
      goto LABEL_13;
    }

    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      type = v69;
      if (os_log_type_enabled(v36, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v36, type, "%{public}s called with null stack", buf, 0xCu);
      }
    }

    else
    {
      if (v68 == 1)
      {
        v50 = __nw_create_backtrace_string();
        typea = __nwlog_obj();
        v58 = v69;
        v51 = os_log_type_enabled(typea, v69);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446466;
            v71 = "nw_parameters_create_webtransport_http";
            v72 = 2082;
            v73 = v50;
            _os_log_impl(&dword_181A37000, typea, v58, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
        }

        else
        {
          if (v51)
          {
            *buf = 136446210;
            v71 = "nw_parameters_create_webtransport_http";
            _os_log_impl(&dword_181A37000, typea, v58, "%{public}s called with null stack, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_130;
      }

      v36 = __nwlog_obj();
      typeb = v69;
      if (os_log_type_enabled(v36, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v36, typeb, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_130:
    v35 = v62;
    goto LABEL_131;
  }

  v32 = __nwlog_obj();
  *buf = 136446210;
  v71 = "nw_parameters_create_webtransport_http";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null (configure_webtransport != (_nw_parameters_configure_protocol_disable))", buf, 12);

  v69 = OS_LOG_TYPE_ERROR;
  v68 = 0;
  if (__nwlog_fault(v21, &v69, &v68))
  {
    if (v69 == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v33 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v33, "%{public}s called with null (configure_webtransport != (_nw_parameters_configure_protocol_disable))", buf, 0xCu);
      }

LABEL_123:

      goto LABEL_124;
    }

    if (v68 != 1)
    {
      v22 = __nwlog_obj();
      v57 = v69;
      if (os_log_type_enabled(v22, v69))
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v57, "%{public}s called with null (configure_webtransport != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_123;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v48 = v69;
    v49 = os_log_type_enabled(v22, v69);
    if (!backtrace_string)
    {
      if (v49)
      {
        *buf = 136446210;
        v71 = "nw_parameters_create_webtransport_http";
        _os_log_impl(&dword_181A37000, v22, v48, "%{public}s called with null (configure_webtransport != (_nw_parameters_configure_protocol_disable)), no backtrace", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (v49)
    {
      *buf = 136446466;
      v71 = "nw_parameters_create_webtransport_http";
      v72 = 2082;
      v73 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v48, "%{public}s called with null (configure_webtransport != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_79;
  }

LABEL_124:
  if (v21)
  {
    free(v21);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

void __nw_parameters_create_webtransport_http_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = nw_quic_stream_copy_shared_connection_options(v6);
  nw_quic_connection_set_datagram_quarter_stream_id(v3);

  v4 = nw_quic_stream_copy_shared_connection_options(v6);
  nw_quic_connection_set_datagram_variant_flow_id_enabled(v4);

  v5 = *(a1 + 32);
  if (v5 != &__block_literal_global_2)
  {
    (*(v5 + 16))(v5, v6);
  }
}

uint64_t __nw_parameters_create_webtransport_http_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != &__block_literal_global_2)
  {
    return (*(result + 16))();
  }

  return result;
}

void __nw_parameters_create_webtransport_http_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  nw_http_messaging_options_set_http1_options(v3, 0);
  nw_http_messaging_options_set_http2_options(v3, 0);
  nw_http3_set_0rtt_enabled(v3, 0);
  nw_http3_set_max_webtransport_sessions(v3, *(a1 + 32));
}

uint64_t nw_parameters_enumerate_transformed_parameters(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __nw_parameters_enumerate_transformed_parameters_block_invoke;
      v18[3] = &unk_1E6A2E4E8;
      v19 = v3;
      v20 = v5;
      _nw_parameters_iterate_transforms(v19, v18);

      v6 = 1;
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_enumerate_transformed_parameters";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null enumerator", buf, 12);

    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &v22, &v21))
    {
      if (v22 == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = v22;
        if (os_log_type_enabled(v10, v22))
        {
          *buf = 136446210;
          v24 = "nw_parameters_enumerate_transformed_parameters";
          v12 = "%{public}s called with null enumerator";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v11 = v22;
        if (os_log_type_enabled(v10, v22))
        {
          *buf = 136446210;
          v24 = "nw_parameters_enumerate_transformed_parameters";
          v12 = "%{public}s called with null enumerator, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = v22;
      v17 = os_log_type_enabled(v10, v22);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v24 = "nw_parameters_enumerate_transformed_parameters";
          v12 = "%{public}s called with null enumerator, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v24 = "nw_parameters_enumerate_transformed_parameters";
      v25 = 2082;
      v26 = backtrace_string;
      v16 = "%{public}s called with null enumerator, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_enumerate_transformed_parameters";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null parameters", buf, 12);

    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &v22, &v21))
    {
      if (v22 == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = v22;
        if (os_log_type_enabled(v10, v22))
        {
          *buf = 136446210;
          v24 = "nw_parameters_enumerate_transformed_parameters";
          v12 = "%{public}s called with null parameters";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v11 = v22;
        if (os_log_type_enabled(v10, v22))
        {
          *buf = 136446210;
          v24 = "nw_parameters_enumerate_transformed_parameters";
          v12 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = v22;
      v15 = os_log_type_enabled(v10, v22);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v24 = "nw_parameters_enumerate_transformed_parameters";
          v12 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v24 = "nw_parameters_enumerate_transformed_parameters";
      v25 = 2082;
      v26 = backtrace_string;
      v16 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

uint64_t __nw_parameters_enumerate_transformed_parameters_block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v73 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  if (!v4)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_with_protocol_instances";
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null parameters", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v36, &type, &v68))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
LABEL_49:

LABEL_50:
        if (!v36)
        {
LABEL_52:
          v32 = 0;
          goto LABEL_16;
        }

LABEL_51:
        free(v36);
        goto LABEL_52;
      }

      *buf = 136446210;
      *&buf[4] = "nw_parameters_copy_with_protocol_instances";
      v39 = "%{public}s called with null parameters";
    }

    else
    {
      if (v68 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v51 = __nwlog_obj();
        v52 = type;
        v53 = os_log_type_enabled(v51, type);
        if (backtrace_string)
        {
          if (v53)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_copy_with_protocol_instances";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          v4 = 0;
          if (!v36)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v53)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_copy_with_protocol_instances";
            _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }

          v4 = 0;
          if (!v36)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_51;
      }

      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      *&buf[4] = "nw_parameters_copy_with_protocol_instances";
      v39 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
    goto LABEL_49;
  }

  v6 = _nw_parameters_copy();
  v7 = nw_parameters_copy_default_protocol_stack(v6);
  if (!v7)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_with_protocol_instances";
    v41 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null new_stack", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v41, &type, &v68))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v42 = __nwlog_obj();
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
LABEL_56:

LABEL_57:
        if (!v41)
        {
LABEL_59:
          v32 = 0;
          goto LABEL_15;
        }

LABEL_58:
        free(v41);
        goto LABEL_59;
      }

      *buf = 136446210;
      *&buf[4] = "nw_parameters_copy_with_protocol_instances";
      v44 = "%{public}s called with null new_stack";
    }

    else
    {
      if (v68 == 1)
      {
        v54 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v56 = type;
        v57 = os_log_type_enabled(v55, type);
        if (v54)
        {
          if (v57)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_copy_with_protocol_instances";
            *&buf[12] = 2082;
            *&buf[14] = v54;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null new_stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          v7 = 0;
          if (!v41)
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v57)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_copy_with_protocol_instances";
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null new_stack, no backtrace", buf, 0xCu);
          }

          v7 = 0;
          if (!v41)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_58;
      }

      v42 = __nwlog_obj();
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_parameters_copy_with_protocol_instances";
      v44 = "%{public}s called with null new_stack, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
    goto LABEL_56;
  }

  v8 = _nw_parameters_copy_default_protocol_stack();
  v9 = v8;
  v67 = v7;
  if (!v8)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_with_protocol_instances";
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null existing_stack", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v46, &type, &v68))
    {
LABEL_76:
      if (v46)
      {
        free(v46);
      }

      v32 = 0;
      goto LABEL_14;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
LABEL_63:

        goto LABEL_76;
      }

      *buf = 136446210;
      *&buf[4] = "nw_parameters_copy_with_protocol_instances";
      v49 = "%{public}s called with null existing_stack";
    }

    else
    {
      if (v68 == 1)
      {
        v58 = v6;
        v59 = v5;
        v60 = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v62 = type;
        v63 = os_log_type_enabled(v61, type);
        if (v60)
        {
          if (v63)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_copy_with_protocol_instances";
            *&buf[12] = 2082;
            *&buf[14] = v60;
            _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null existing_stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v60);
        }

        else
        {
          if (v63)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_copy_with_protocol_instances";
            _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null existing_stack, no backtrace", buf, 0xCu);
          }
        }

        v5 = v59;
        v6 = v58;
        goto LABEL_76;
      }

      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      *&buf[4] = "nw_parameters_copy_with_protocol_instances";
      v49 = "%{public}s called with null existing_stack, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
    goto LABEL_63;
  }

  v65 = v4;
  v66 = v5;
  v64 = v3;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_parameters_copy_with_protocol_instances_block_invoke;
  v71 = &unk_1E6A2E3B8;
  v10 = v8;
  v72 = v10;
  v11 = v7;
  v12 = buf;
  _nw_protocol_stack_iterate_application_protocols_with_index(v11, 1, 1, v12);

  v13 = _nw_protocol_stack_copy_transport_protocol();
  v14 = _nw_protocol_stack_copy_transport_protocol();
  v15 = v14;
  if (v13 && v14)
  {
    v16 = v14;
    v17 = v13;
    _nw_protocol_options_inherit_log_id(v16, v17);

    protocol_handle = _nw_protocol_options_get_protocol_handle(v16);
    _nw_protocol_options_set_instance(v17, protocol_handle);
  }

  v19 = v6;
  v20 = _nw_protocol_stack_copy_secondary_transport_protocol(v11);
  v21 = _nw_protocol_stack_copy_secondary_transport_protocol(v10);
  v22 = v21;
  if (v20 && v21)
  {
    v23 = v21;
    v24 = v20;
    _nw_protocol_options_inherit_log_id(v23, v24);

    v25 = _nw_protocol_options_get_protocol_handle(v23);
    _nw_protocol_options_set_instance(v24, v25);
  }

  v26 = _nw_protocol_stack_copy_internet_protocol(v11);
  v27 = _nw_protocol_stack_copy_internet_protocol(v10);
  v28 = v27;
  if (v26 && v27)
  {
    v29 = v27;
    v30 = v26;
    _nw_protocol_options_inherit_log_id(v29, v30);

    v31 = _nw_protocol_options_get_protocol_handle(v29);
    _nw_protocol_options_set_instance(v30, v31);
  }

  v6 = v19;
  v32 = v19;

  v3 = v64;
  v4 = v65;
  v5 = v66;
LABEL_14:

  v7 = v67;
LABEL_15:

LABEL_16:
  nw_protocol_transform_modify_parameters(v5, v32);

  v33 = (*(*(v3 + 40) + 16))();
  return v33;
}

uint64_t __nw_parameters_copy_with_protocol_instances_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nw_protocol_stack_copy_application_protocol_at_index(*(a1 + 32), a2);
  v7 = v6;
  if (v5 && v6)
  {
    v8 = v6;
    v9 = v5;
    _nw_protocol_options_inherit_log_id(v8, v9);

    protocol_handle = _nw_protocol_options_get_protocol_handle(v8);
    _nw_protocol_options_set_instance(v9, protocol_handle);
  }

  return 1;
}

uint64_t NWPBAgentReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v52[0]) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v52[0] & 0x7F) << v8;
        if ((v52[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_20;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_20:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        if (v16 <= 6)
        {
          if (v16 == 5)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              LOBYTE(v52[0]) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v52[0] & 0x7F) << v39;
              if ((v52[0] & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v14 = v40++ >= 9;
              if (v14)
              {
                LOBYTE(v5) = 0;
                goto LABEL_93;
              }
            }

            v5 = (v41 != 0) & ~[a2 hasError];
LABEL_93:
            v6 = 43;
            goto LABEL_5;
          }

          if (v16 == 6)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              LOBYTE(v52[0]) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v52[0] & 0x7F) << v25;
              if ((v52[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v14 = v26++ >= 9;
              if (v14)
              {
                LOBYTE(v5) = 0;
                goto LABEL_89;
              }
            }

            v5 = (v27 != 0) & ~[a2 hasError];
LABEL_89:
            v6 = 44;
            goto LABEL_5;
          }
        }

        else
        {
          switch(v16)
          {
            case 7:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 48) |= 2u;
              while (1)
              {
                LOBYTE(v52[0]) = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v52[0] & 0x7F) << v33;
                if ((v52[0] & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v14 = v34++ >= 9;
                if (v14)
                {
                  LOBYTE(v5) = 0;
                  goto LABEL_91;
                }
              }

              v5 = (v35 != 0) & ~[a2 hasError];
LABEL_91:
              v6 = 41;
              goto LABEL_5;
            case 8:
              v45 = 0;
              v46 = 0;
              v47 = 0;
              *(a1 + 48) |= 4u;
              while (1)
              {
                LOBYTE(v52[0]) = 0;
                v48 = [a2 position] + 1;
                if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                {
                  v50 = [a2 data];
                  [v50 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v47 |= (v52[0] & 0x7F) << v45;
                if ((v52[0] & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v14 = v46++ >= 9;
                if (v14)
                {
                  LOBYTE(v5) = 0;
                  goto LABEL_95;
                }
              }

              v5 = (v47 != 0) & ~[a2 hasError];
LABEL_95:
              v6 = 42;
LABEL_5:
              *(a1 + v6) = v5;
              goto LABEL_6;
            case 9:
              v17 = PBReaderReadData();
              v18 = 16;
LABEL_58:
              v32 = *(a1 + v18);
              *(a1 + v18) = v17;

              goto LABEL_6;
          }
        }

        goto LABEL_86;
      }

      if (v16 > 2)
      {
        break;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
          goto LABEL_58;
        }

LABEL_86:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v31 = objc_alloc_init(NWPBAgentClass);
      objc_storeStrong((a1 + 8), v31);
      v52[0] = 0;
      v52[1] = 0;
      if (!PBReaderPlaceMark() || !NWPBAgentClassReadFrom(v31, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_6:
      v7 = [a2 position];
      if (v7 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v16 == 3)
    {
      v17 = PBReaderReadString();
      v18 = 24;
      goto LABEL_58;
    }

    if (v16 == 4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 48) |= 1u;
      do
      {
        LOBYTE(v52[0]) = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v52[0] & 0x7F) << v19;
        if ((v52[0] & 0x80) == 0)
        {
          v5 = (v21 != 0) & ~[a2 hasError];
          goto LABEL_4;
        }

        v19 += 7;
        v14 = v20++ >= 9;
      }

      while (!v14);
      LOBYTE(v5) = 0;
LABEL_4:
      v6 = 40;
      goto LABEL_5;
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NWPBAgentClassReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v19 = 0;
        v13 = [a2 position] + 1;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 1, v14 <= objc_msgSend(a2, "length")))
        {
          v15 = [a2 data];
          [v15 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v12 |= (v19 & 0x7F) << v10;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      v17 = [a2 hasError] ? 0 : v12;
LABEL_19:
      if (([a2 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v17 >> 3) == 1)
      {
        break;
      }

      if ((v17 >> 3) == 2)
      {
        v5 = &OBJC_IVAR___NWPBAgentClass__type;
        goto LABEL_4;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      v9 = [a2 position];
      if (v9 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v5 = &OBJC_IVAR___NWPBAgentClass__domain;
LABEL_4:
    v6 = PBReaderReadString();
    v7 = *v5;
    v8 = *(a1 + v7);
    *(a1 + v7) = v6;

    goto LABEL_5;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __nw_protocol_http_joining_create_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void nw_protocol_http_joining_listen_protocol_disconnected(nw_listen_protocol *a1, nw_protocol *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null listener", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v3, &type, &v25))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null listener";
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v17 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null existing_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v3, &type, &v25))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null existing_protocol";
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v19 = os_log_type_enabled(v4, type);
      if (v18)
      {
        if (!v19)
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
        v29 = 2082;
        v30 = v18;
        v20 = "%{public}s called with null existing_protocol, dumping backtrace:%{public}s";
        goto LABEL_52;
      }

      if (!v19)
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null existing_protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null existing_protocol, backtrace limit exceeded";
    }

LABEL_20:
    v11 = v4;
    v12 = v5;
LABEL_21:
    _os_log_impl(&dword_181A37000, v11, v12, v6, buf, 0xCu);
    goto LABEL_22;
  }

  handle = a1->handle;
  if (!handle)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v3, &type, &v25))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null http_joining";
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v21 = os_log_type_enabled(v4, type);
      if (v18)
      {
        if (!v21)
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
        v29 = 2082;
        v30 = v18;
        v20 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_52:
        _os_log_impl(&dword_181A37000, v4, v5, v20, buf, 0x16u);
LABEL_53:
        free(v18);
        if (!v3)
        {
          return;
        }

        goto LABEL_23;
      }

      if (!v21)
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null http_joining, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s called with null http_joining, backtrace limit exceeded";
    }

    goto LABEL_20;
  }

  if (handle[17] != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Ignoring listen protocol disconnected, not sent by output handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v3, &type, &v25))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s Ignoring listen protocol disconnected, not sent by output handler";
      goto LABEL_20;
    }

    if (v25 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s Ignoring listen protocol disconnected, not sent by output handler, backtrace limit exceeded";
      goto LABEL_20;
    }

    v7 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    v10 = os_log_type_enabled(gLogObj, type);
    if (v7)
    {
      if (v10)
      {
        *buf = 136446466;
        v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
        v29 = 2082;
        v30 = v7;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Ignoring listen protocol disconnected, not sent by output handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v7);
      if (!v3)
      {
        return;
      }

LABEL_23:
      free(v3);
      return;
    }

    if (v10)
    {
      *buf = 136446210;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v6 = "%{public}s Ignoring listen protocol disconnected, not sent by output handler, no backtrace";
      v11 = v8;
      v12 = v9;
      goto LABEL_21;
    }

LABEL_22:
    if (!v3)
    {
      return;
    }

    goto LABEL_23;
  }

  if ((*(handle + 294) & 2) == 0 && gLogDatapath == 1)
  {
    v22 = handle;
    v23 = __nwlog_obj();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    handle = v22;
    if (v24)
    {
      *buf = 136446722;
      v28 = "nw_protocol_http_joining_listen_protocol_disconnected";
      v29 = 2082;
      v30 = (v22 + 26);
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%slower protocol is disconnected", buf, 0x20u);
      handle = v22;
    }
  }

  nw_protocol_http_joining_teardown(handle);
}

void nw_protocol_http_joining_teardown(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_http_joining_teardown";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_joining_teardown";
      v7 = "%{public}s called with null protocol";
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
          v16 = "nw_protocol_http_joining_teardown";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v4)
        {
          return;
        }

LABEL_41:
        free(v4);
        return;
      }

      if (!v10)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_joining_teardown";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v16 = "nw_protocol_http_joining_teardown";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_40;
  }

  v1 = *(a1 + 40);
  if (v1)
  {
    nw_protocol_remove_instance(*(a1 + 40));
    v2 = *(v1 + 136);
    if (v2)
    {
      nw_protocol_remove_listen_handler(v2, v1 + 64);
      *(v1 + 136) = 0;
    }

    if ((*(v1 + 294) & 4) == 0 && !*(v1 + 48) && *(v1 + 184) == *(v1 + 192))
    {

      nw_http_joining_destroy(v1);
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_http_joining_teardown";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null http_joining", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v16 = "nw_protocol_http_joining_teardown";
    v7 = "%{public}s called with null http_joining";
    goto LABEL_39;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v16 = "nw_protocol_http_joining_teardown";
    v7 = "%{public}s called with null http_joining, backtrace limit exceeded";
    goto LABEL_39;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v16 = "nw_protocol_http_joining_teardown";
    v7 = "%{public}s called with null http_joining, no backtrace";
    goto LABEL_39;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_http_joining_teardown";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http_joining, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_41;
  }
}

void nw_http_joining_destroy(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 294) & 2) == 0 && gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446722;
      v10 = "nw_http_joining_destroy";
      v11 = 2082;
      v12 = a1 + 208;
      v13 = 2080;
      v14 = " ";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v9, 0x20u);
    }
  }

  if ((*(a1 + 294) & 0x10) != 0)
  {
    *(a1 + 294) &= ~0x10u;
  }

  else
  {
    (*(*(a1 + 176) + 16))();
    v2 = *(a1 + 176);
    if (v2)
    {
      _Block_release(v2);
      *(a1 + 176) = 0;
    }

    v3 = *(a1 + 184);
    if (v3)
    {
      *(a1 + 192) = v3;
      operator delete(v3);
    }

    if (*(a1 + 168))
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 160) = 0;
    if (*(a1 + 152))
    {
      v5 = *(a1 + 144);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 144) = 0;
    if (*(a1 + 128))
    {
      v6 = *(a1 + 120);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 120) = 0;
    if (*(a1 + 112))
    {
      v7 = *(a1 + 104);
      if (v7)
      {
        os_release(v7);
      }
    }

    free(a1);
  }
}

void ___ZL38nw_protocol_http_joining_get_callbacksv_block_invoke()
{
  qword_1EA83F8D0 = nw_protocol_common_get_input_frames;
  qword_1EA83F8D8 = nw_protocol_common_get_output_frames;
  qword_1EA83F8E0 = nw_protocol_common_finalize_output_frames;
  qword_1EA83F8F8 = nw_protocol_common_get_path;
  qword_1EA83F900 = nw_protocol_common_get_local_endpoint;
  qword_1EA83F948 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA83F950 = nw_protocol_common_get_output_interface;
  qword_1EA83F8C0 = nw_protocol_common_input_available;
  qword_1EA83F8C8 = nw_protocol_common_output_available;
  qword_1EA83F938 = nw_protocol_common_input_finished;
  qword_1EA83F940 = nw_protocol_common_output_finished;
  qword_1EA83F988 = nw_protocol_common_input_flush;
  qword_1EA83F980 = nw_protocol_common_reset;
  qword_1EA83F978 = nw_protocol_common_get_message_properties;
  qword_1EA83F960 = nw_protocol_common_copy_info;
  qword_1EA83F930 = nw_protocol_common_supports_external_data;
  qword_1EA83F958 = nw_protocol_common_waiting_for_output;
  qword_1EA83F910 = nw_protocol_common_register_notification;
  qword_1EA83F918 = nw_protocol_common_unregister_notification;
  qword_1EA83F920 = nw_protocol_common_notify;
  qword_1EA83F928 = nw_protocol_common_updated_path;
  qword_1EA83F8E8 = nw_protocol_common_link_state;
  nw_protocol_http_joining_get_callbacks(void)::protocol_callbacks = nw_protocol_http_joining_add_input_handler;
  qword_1EA83F890 = nw_protocol_http_joining_replace_input_handler;
  qword_1EA83F888 = nw_protocol_http_joining_remove_input_handler;
  qword_1EA83F8F0 = nw_protocol_http_joining_get_parameters;
  qword_1EA83F908 = nw_protocol_http_joining_get_remote_endpoint;
  qword_1EA83F898 = nw_protocol_http_joining_connect;
  qword_1EA83F8A8 = nw_protocol_http_joining_connected;
  qword_1EA83F8A0 = nw_protocol_http_joining_disconnect;
  qword_1EA83F8B0 = nw_protocol_http_joining_disconnected;
  qword_1EA83F8B8 = nw_protocol_http_joining_error;
}

void nw_protocol_http_joining_error(nw_protocol *a1, nw_protocol *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http_joining_error";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http_joining_error";
      v8 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_protocol_http_joining_error";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v5)
        {
          return;
        }

        goto LABEL_49;
      }

      if (!v12)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http_joining_error";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http_joining_error";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_47;
  }

  handle = a1->handle;
  if (!handle)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http_joining_error";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v17 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v20 = "nw_protocol_http_joining_error";
        v8 = "%{public}s called with null http_joining, backtrace limit exceeded";
        goto LABEL_47;
      }

      v13 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (!v13)
      {
        if (!v14)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v20 = "nw_protocol_http_joining_error";
        v8 = "%{public}s called with null http_joining, no backtrace";
        goto LABEL_47;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "nw_protocol_http_joining_error";
        v21 = 2082;
        v22 = v13;
        v15 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_32:
        _os_log_impl(&dword_181A37000, v6, v7, v15, buf, 0x16u);
      }

LABEL_33:
      free(v13);
      if (!v5)
      {
        return;
      }

LABEL_49:
      free(v5);
      return;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v20 = "nw_protocol_http_joining_error";
    v8 = "%{public}s called with null http_joining";
LABEL_47:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_48;
  }

  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_http_joining_error";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http_joining_error";
      v8 = "%{public}s called with null other_protocol";
      goto LABEL_47;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http_joining_error";
      v8 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_47;
    }

    v13 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v16 = os_log_type_enabled(v6, type);
    if (!v13)
    {
      if (!v16)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v20 = "nw_protocol_http_joining_error";
      v8 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_47;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_http_joining_error";
      v21 = 2082;
      v22 = v13;
      v15 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v3 = *(handle + 6);

  nw_protocol_error(v3, a2);
}

void nw_protocol_http_joining_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_joining_disconnected";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &type, &v18))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http_joining_disconnected";
      v9 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v21 = "nw_protocol_http_joining_disconnected";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_48:
        if (!v6)
        {
          return;
        }

        goto LABEL_49;
      }

      if (!v13)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http_joining_disconnected";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http_joining_disconnected";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_47;
  }

  handle = a1->handle;
  if (!handle)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_joining_disconnected";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &type, &v18))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v21 = "nw_protocol_http_joining_disconnected";
        v9 = "%{public}s called with null http_joining, backtrace limit exceeded";
        goto LABEL_47;
      }

      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!v14)
      {
        if (!v15)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v21 = "nw_protocol_http_joining_disconnected";
        v9 = "%{public}s called with null http_joining, no backtrace";
        goto LABEL_47;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_protocol_http_joining_disconnected";
        v22 = 2082;
        v23 = v14;
        v16 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_32:
        _os_log_impl(&dword_181A37000, v7, v8, v16, buf, 0x16u);
      }

LABEL_33:
      free(v14);
      if (!v6)
      {
        return;
      }

LABEL_49:
      free(v6);
      return;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v21 = "nw_protocol_http_joining_disconnected";
    v9 = "%{public}s called with null http_joining";
LABEL_47:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_48;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_http_joining_disconnected";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v6, &type, &v18))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http_joining_disconnected";
      v9 = "%{public}s called with null other_protocol";
      goto LABEL_47;
    }

    if (v18 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http_joining_disconnected";
      v9 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_47;
    }

    v14 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!v14)
    {
      if (!v17)
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v21 = "nw_protocol_http_joining_disconnected";
      v9 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_47;
    }

    if (v17)
    {
      *buf = 136446466;
      v21 = "nw_protocol_http_joining_disconnected";
      v22 = 2082;
      v23 = v14;
      v16 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  nw_protocol_remove_instance(a1->handle);
  v4 = *(handle + 6);

  nw_protocol_disconnected(v4, a2);
}

void nw_protocol_http_joining_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http_joining_disconnect";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v15, &type, &v27))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_joining_disconnect";
      v18 = "%{public}s called with null protocol";
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v30 = "nw_protocol_http_joining_disconnect";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_74:
        if (!v15)
        {
          return;
        }

        goto LABEL_75;
      }

      if (!v22)
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_joining_disconnect";
      v18 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_joining_disconnect";
      v18 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_73;
  }

  handle = a1->handle;
  if (!handle)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http_joining_disconnect";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v15, &type, &v27))
    {
      goto LABEL_74;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v16, type))
        {
          goto LABEL_74;
        }

        *buf = 136446210;
        v30 = "nw_protocol_http_joining_disconnect";
        v18 = "%{public}s called with null http_joining, backtrace limit exceeded";
        goto LABEL_73;
      }

      v23 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v24 = os_log_type_enabled(v16, type);
      if (!v23)
      {
        if (!v24)
        {
          goto LABEL_74;
        }

        *buf = 136446210;
        v30 = "nw_protocol_http_joining_disconnect";
        v18 = "%{public}s called with null http_joining, no backtrace";
        goto LABEL_73;
      }

      if (v24)
      {
        *buf = 136446466;
        v30 = "nw_protocol_http_joining_disconnect";
        v31 = 2082;
        v32 = v23;
        v25 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_58:
        _os_log_impl(&dword_181A37000, v16, v17, v25, buf, 0x16u);
      }

LABEL_59:
      free(v23);
      if (!v15)
      {
        return;
      }

LABEL_75:
      v13 = v15;
LABEL_31:
      free(v13);
      return;
    }

    v16 = __nwlog_obj();
    v17 = type;
    if (!os_log_type_enabled(v16, type))
    {
      goto LABEL_74;
    }

    *buf = 136446210;
    v30 = "nw_protocol_http_joining_disconnect";
    v18 = "%{public}s called with null http_joining";
LABEL_73:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    goto LABEL_74;
  }

  if (!a2)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_http_joining_disconnect";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v15, &type, &v27))
    {
      goto LABEL_74;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_joining_disconnect";
      v18 = "%{public}s called with null other_protocol";
      goto LABEL_73;
    }

    if (v27 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_joining_disconnect";
      v18 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_73;
    }

    v23 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v26 = os_log_type_enabled(v16, type);
    if (!v23)
    {
      if (!v26)
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v30 = "nw_protocol_http_joining_disconnect";
      v18 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_73;
    }

    if (v26)
    {
      *buf = 136446466;
      v30 = "nw_protocol_http_joining_disconnect";
      v31 = 2082;
      v32 = v23;
      v25 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  if (*(handle + 6) != a2)
  {
    nw_protocol_disconnected(a2, handle);
    v4 = *(handle + 23);
    v5 = *(handle + 24);
    if (v4 != v5)
    {
      while (*v4 != a2)
      {
        v4 += 16;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }
    }

    if (v4 != v5)
    {
      *(v4 + 8) = 2;
      return;
    }

LABEL_15:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v30 = "nw_protocol_http_joining_disconnect";
    v31 = 2048;
    v32 = a2;
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Protocol %p isn't an input handler of http joining", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v7, &type, &v27))
    {
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v30 = "nw_protocol_http_joining_disconnect";
        v31 = 2048;
        v32 = a2;
        v10 = "%{public}s Protocol %p isn't an input handler of http joining";
LABEL_28:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0x16u);
      }
    }

    else if (v27 == 1)
    {
      v11 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      v12 = os_log_type_enabled(gLogObj, type);
      if (v11)
      {
        if (v12)
        {
          *buf = 136446722;
          v30 = "nw_protocol_http_joining_disconnect";
          v31 = 2048;
          v32 = a2;
          v33 = 2082;
          v34 = v11;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Protocol %p isn't an input handler of http joining, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v11);
        goto LABEL_29;
      }

      if (v12)
      {
        *buf = 136446466;
        v30 = "nw_protocol_http_joining_disconnect";
        v31 = 2048;
        v32 = a2;
        v10 = "%{public}s Protocol %p isn't an input handler of http joining, no backtrace";
        goto LABEL_28;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v30 = "nw_protocol_http_joining_disconnect";
        v31 = 2048;
        v32 = a2;
        v10 = "%{public}s Protocol %p isn't an input handler of http joining, backtrace limit exceeded";
        goto LABEL_28;
      }
    }

LABEL_29:
    if (!v7)
    {
      return;
    }

    v13 = v7;
    goto LABEL_31;
  }

  if ((handle[294] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v30 = "nw_protocol_http_joining_disconnect";
      v31 = 2082;
      v32 = (handle + 208);
      v33 = 2080;
      v34 = " ";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sdisconnecting output handler", buf, 0x20u);
    }
  }

  handle[294] |= 8u;
  nw_protocol_disconnect(*(handle + 4), handle);
}

uint64_t nw_protocol_http_joining_accept(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_accept";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    v50[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v17, v50, &type))
    {
      goto LABEL_77;
    }

    if (v50[0] == 17)
    {
      v18 = __nwlog_obj();
      v19 = v50[0];
      if (!os_log_type_enabled(v18, v50[0]))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null protocol";
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v18 = __nwlog_obj();
      v19 = v50[0];
      if (!os_log_type_enabled(v18, v50[0]))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = v50[0];
    v24 = os_log_type_enabled(v18, v50[0]);
    if (!backtrace_string)
    {
      if (!v24)
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_76;
    }

    if (!v24)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_accept";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_41:
    _os_log_impl(&dword_181A37000, v18, v19, v25, buf, 0x16u);
    goto LABEL_42;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_accept";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null http_joining", buf, 12);
    v50[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v17, v50, &type))
    {
      goto LABEL_77;
    }

    if (v50[0] == 17)
    {
      v18 = __nwlog_obj();
      v19 = v50[0];
      if (!os_log_type_enabled(v18, v50[0]))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null http_joining";
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v18 = __nwlog_obj();
      v19 = v50[0];
      if (!os_log_type_enabled(v18, v50[0]))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = v50[0];
    v26 = os_log_type_enabled(v18, v50[0]);
    if (!backtrace_string)
    {
      if (!v26)
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_76;
    }

    if (!v26)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_accept";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v25 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
    goto LABEL_41;
  }

  if (!a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_accept";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null endpoint", buf, 12);
    v50[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v17, v50, &type))
    {
      goto LABEL_77;
    }

    if (v50[0] == 17)
    {
      v18 = __nwlog_obj();
      v19 = v50[0];
      if (!os_log_type_enabled(v18, v50[0]))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null endpoint";
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v18 = __nwlog_obj();
      v19 = v50[0];
      if (!os_log_type_enabled(v18, v50[0]))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_accept";
      v20 = "%{public}s called with null endpoint, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = v50[0];
    v27 = os_log_type_enabled(v18, v50[0]);
    if (backtrace_string)
    {
      if (v27)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_accept";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v25 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
        goto LABEL_41;
      }

LABEL_42:
      free(backtrace_string);
      goto LABEL_77;
    }

    if (!v27)
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_accept";
    v20 = "%{public}s called with null endpoint, no backtrace";
LABEL_76:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_77:
    if (v17)
    {
      free(v17);
    }

    goto LABEL_79;
  }

  if ((nw_http_joining_stalled(*(a1 + 40)) & 1) != 0 || (v6 = *(v3 + 136)) != 0 && !nw_protocol_http_messaging_accept(v6, a2, a3))
  {
LABEL_79:
    v15 = 0;
    return v15 & 1;
  }

  if (nw_protocol_copy_http_joining_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_joining_definition_onceToken, &__block_literal_global_92_78715);
  }

  v7 = nw_protocol_copy_http_joining_definition_definition;
  v8 = nw_parameters_copy_protocol_options_for_definition(a3, v7);
  if (v7)
  {
    os_release(v7);
  }

  v9 = v8;
  v10 = v9;
  if (!v9)
  {
    v28 = __nwlog_obj();
    *v50 = 136446210;
    *&v50[4] = "nw_http_joining_options_get_deny_joining";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null options", v50, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v29, &type, &v45))
    {
      goto LABEL_92;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *v50 = 136446210;
        *&v50[4] = "nw_http_joining_options_get_deny_joining";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null options", v50, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      v34 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v30, type);
      if (v34)
      {
        if (v36)
        {
          *v50 = 136446466;
          *&v50[4] = "nw_http_joining_options_get_deny_joining";
          *&v50[12] = 2082;
          *&v50[14] = v34;
          _os_log_impl(&dword_181A37000, v30, v35, "%{public}s called with null options, dumping backtrace:%{public}s", v50, 0x16u);
        }

        free(v34);
        if (!v29)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      if (v36)
      {
        *v50 = 136446210;
        *&v50[4] = "nw_http_joining_options_get_deny_joining";
        _os_log_impl(&dword_181A37000, v30, v35, "%{public}s called with null options, no backtrace", v50, 0xCu);
      }
    }

    else
    {
      v30 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v30, type))
      {
        *v50 = 136446210;
        *&v50[4] = "nw_http_joining_options_get_deny_joining";
        _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null options, backtrace limit exceeded", v50, 0xCu);
      }
    }

    goto LABEL_91;
  }

  v11 = nw_protocol_copy_http_joining_definition_onceToken;
  v12 = v9;
  if (v11 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_joining_definition_onceToken, &__block_literal_global_92_78715);
  }

  v13 = nw_protocol_options_matches_definition(v12, nw_protocol_copy_http_joining_definition_definition);

  if (v13)
  {
    *v50 = 0;
    *&v50[8] = v50;
    *&v50[16] = 0x2020000000;
    v51 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_http_joining_options_get_deny_joining_block_invoke;
    v48 = &unk_1E6A3A858;
    v49 = v50;
    nw_protocol_options_access_handle(v12, buf);
    v14 = *(*&v50[8] + 24);
    _Block_object_dispose(v50, 8);

    if (v14)
    {
      v15 = 0;
      goto LABEL_102;
    }

    goto LABEL_95;
  }

  v32 = __nwlog_obj();
  *v50 = 136446210;
  *&v50[4] = "nw_http_joining_options_get_deny_joining";
  v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s protocol options are not http_joining", v50, 12);

  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v29, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v30, type))
      {
        *v50 = 136446210;
        *&v50[4] = "nw_http_joining_options_get_deny_joining";
        _os_log_impl(&dword_181A37000, v30, v33, "%{public}s protocol options are not http_joining", v50, 0xCu);
      }

LABEL_91:

      goto LABEL_92;
    }

    if (v45 != 1)
    {
      v30 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v30, type))
      {
        *v50 = 136446210;
        *&v50[4] = "nw_http_joining_options_get_deny_joining";
        _os_log_impl(&dword_181A37000, v30, v41, "%{public}s protocol options are not http_joining, backtrace limit exceeded", v50, 0xCu);
      }

      goto LABEL_91;
    }

    v37 = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v38 = type;
    v39 = os_log_type_enabled(v30, type);
    if (!v37)
    {
      if (v39)
      {
        *v50 = 136446210;
        *&v50[4] = "nw_http_joining_options_get_deny_joining";
        _os_log_impl(&dword_181A37000, v30, v38, "%{public}s protocol options are not http_joining, no backtrace", v50, 0xCu);
      }

      goto LABEL_91;
    }

    if (v39)
    {
      *v50 = 136446466;
      *&v50[4] = "nw_http_joining_options_get_deny_joining";
      *&v50[12] = 2082;
      *&v50[14] = v37;
      _os_log_impl(&dword_181A37000, v30, v38, "%{public}s protocol options are not http_joining, dumping backtrace:%{public}s", v50, 0x16u);
    }

    free(v37);
  }

LABEL_92:
  if (v29)
  {
LABEL_93:
    free(v29);
  }

LABEL_94:

LABEL_95:
  if (nw_endpoint_is_equal(*(v3 + 120), a2, 0))
  {
    v15 = 1;
    if (!v10)
    {
      return v15 & 1;
    }

    goto LABEL_102;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LOBYTE(v48) = 0;
  v42 = *(v3 + 144);
  if (v42)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = __nw_protocol_http_joining_accept_block_invoke;
    v44[3] = &unk_1E6A2E550;
    v44[4] = buf;
    v44[5] = v3;
    nw_http_connection_metadata_enumerate_secondary_certificates(v42, v44);
    v15 = *(*&buf[8] + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(buf, 8);
  if (v10)
  {
LABEL_102:
    os_release(v10);
  }

  return v15 & 1;
}

uint64_t nw_http_joining_add_to_messaging(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v5 = parameters;
      v6 = _nw_parameters_copy_default_protocol_stack();
      v76[0] = 0;
      v76[1] = v76;
      v76[2] = 0x2000000000;
      v77 = 0;
      *type = 0;
      v70 = type;
      v71 = 0x3802000000;
      v72 = __Block_byref_object_copy__22898;
      v73 = __Block_byref_object_dispose__22899;
      v74 = 0;
      v75 = -1;
      iterate_block[0] = MEMORY[0x1E69E9820];
      iterate_block[1] = 0x40000000;
      iterate_block[2] = ___ZL32nw_http_joining_add_to_messagingP24nw_protocol_http_joiningP11nw_protocol_block_invoke;
      iterate_block[3] = &unk_1E6A2E5B8;
      iterate_block[4] = v76;
      iterate_block[5] = type;
      iterate_block[6] = a1;
      nw_protocol_stack_iterate_application_protocols(v6, iterate_block);
      if (!*(v70 + 5))
      {
        v36 = __nwlog_obj();
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null messaging_options", __s, 12);
        v59[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v66[0]) = 0;
        if (!__nwlog_fault(v37, v59, v66))
        {
          goto LABEL_115;
        }

        if (v59[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = v59[0];
          if (!os_log_type_enabled(v38, v59[0]))
          {
            goto LABEL_115;
          }

          *__s = 136446210;
          v79 = "nw_http_joining_add_to_messaging";
          v40 = "%{public}s called with null messaging_options";
        }

        else if (LOBYTE(v66[0]) == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v39 = v59[0];
          v51 = os_log_type_enabled(v38, v59[0]);
          if (backtrace_string)
          {
            if (v51)
            {
              *__s = 136446466;
              v79 = "nw_http_joining_add_to_messaging";
              v80 = 2082;
              v81 = backtrace_string;
              v52 = "%{public}s called with null messaging_options, dumping backtrace:%{public}s";
LABEL_108:
              _os_log_impl(&dword_181A37000, v38, v39, v52, __s, 0x16u);
            }

LABEL_109:
            free(backtrace_string);
            goto LABEL_115;
          }

          if (!v51)
          {
            goto LABEL_115;
          }

          *__s = 136446210;
          v79 = "nw_http_joining_add_to_messaging";
          v40 = "%{public}s called with null messaging_options, no backtrace";
        }

        else
        {
          v38 = __nwlog_obj();
          v39 = v59[0];
          if (!os_log_type_enabled(v38, v59[0]))
          {
            goto LABEL_115;
          }

          *__s = 136446210;
          v79 = "nw_http_joining_add_to_messaging";
          v40 = "%{public}s called with null messaging_options, backtrace limit exceeded";
        }

LABEL_114:
        _os_log_impl(&dword_181A37000, v38, v39, v40, __s, 0xCu);
        goto LABEL_115;
      }

      v7 = v5;
      if (a1)
      {
        v8 = _nw_parameters_copy_protocol_options_with_level();

        if (v8)
        {
          v9 = v8;
          _nw_protocol_options_get_log_id_str(v9, __s);

          v10 = strlen(__s);
          v11 = strchr(__s, 58);
          if (v11)
          {
            *v11 = 0;
          }

          v12 = *(v70 + 5);
          log_id_num = _nw_protocol_options_get_log_id_num(v9);
          nw_protocol_options_set_log_id(v12, "C", &__s[2 * (v10 > 2)], (log_id_num + 1));
          v14 = *(v70 + 5);
          if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
          }

          v15 = nw_protocol_copy_http_messaging_definition_definition;
          nw_parameters_set_protocol_instance(v14, v16, *(a1 + 136));
          if (v15)
          {
            os_release(v15);
          }

          v17 = *(a1 + 160);
          if (v17)
          {
            _nw_parameters_set_effective_proxy_config(v7, v17);
          }

          if (!nw_protocol_get_parameters(*(a1 + 136)))
          {
            goto LABEL_33;
          }

          v18 = _nw_parameters_copy_default_protocol_stack();
          v66[0] = 0;
          v66[1] = v66;
          v66[2] = 0x2000000000;
          v67 = 0;
          *v59 = 0;
          v60 = v59;
          v61 = 0x3802000000;
          v62 = __Block_byref_object_copy__22898;
          v63 = __Block_byref_object_dispose__22899;
          object = 0;
          v65 = -1;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 0x40000000;
          v58[2] = ___ZL32nw_http_joining_add_to_messagingP24nw_protocol_http_joiningP11nw_protocol_block_invoke_24;
          v58[3] = &unk_1E6A2E5E0;
          v58[5] = v59;
          v58[6] = a1;
          v58[4] = v66;
          nw_protocol_stack_iterate_application_protocols(v18, v58);
          if (!*(v60 + 5))
          {
            v19 = nw_protocol_stack_copy_transport_protocol(v18);
            v20 = v60;
            v21 = *(v60 + 48);
            if ((v21 & 1) != 0 && *(v60 + 5))
            {
              v22 = v19;
              os_release(*(v60 + 5));
              v19 = v22;
              v21 = *(v20 + 48);
            }

            *(v20 + 5) = v19;
            *(v20 + 48) = v21 | 1;
          }

          v23 = _nw_parameters_copy_default_protocol_stack();
          v24 = nw_protocol_stack_copy_transport_protocol(v23);
          if (*(v60 + 5))
          {
            if (v24)
            {
              v25 = _nw_protocol_options_copy_definition();
              if (nw_protocol_options_matches_definition(v24, v25))
              {
                protocol_handle = nw_protocol_options_get_protocol_handle(*(v60 + 5));
                v27 = v24;
                _nw_protocol_options_set_instance(v27, protocol_handle);
              }

              goto LABEL_25;
            }
          }

          else if (v24)
          {
LABEL_25:
            os_release(v24);
          }

          if (v23)
          {
            os_release(v23);
          }

          _Block_object_dispose(v59, 8);
          if ((v65 & 1) != 0 && object)
          {
            os_release(object);
          }

          _Block_object_dispose(v66, 8);
          if (v18)
          {
            os_release(v18);
          }

LABEL_33:
          nw_protocol_set_output_handler(a2, 0);
          v28 = nw_protocol_add_input_handler(*(a1 + 136), a2);
          os_release(v9);
LABEL_34:
          _Block_object_dispose(type, 8);
          if ((v75 & 1) != 0 && v74)
          {
            os_release(v74);
          }

          _Block_object_dispose(v76, 8);
          if (v6)
          {
            os_release(v6);
          }

          return v28;
        }

LABEL_100:
        v55 = __nwlog_obj();
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        LODWORD(v57) = 12;
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v55, 16, "%{public}s called with null options", __s, v57);
        v59[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v66[0]) = 0;
        if (!__nwlog_fault(v37, v59, v66))
        {
          goto LABEL_115;
        }

        if (v59[0] == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = v59[0];
          if (os_log_type_enabled(v38, v59[0]))
          {
            *__s = 136446210;
            v79 = "nw_http_joining_add_to_messaging";
            v40 = "%{public}s called with null options";
            goto LABEL_114;
          }

LABEL_115:
          if (v37)
          {
            free(v37);
          }

          v28 = 0;
          goto LABEL_34;
        }

        if (LOBYTE(v66[0]) != 1)
        {
          v38 = __nwlog_obj();
          v39 = v59[0];
          if (os_log_type_enabled(v38, v59[0]))
          {
            *__s = 136446210;
            v79 = "nw_http_joining_add_to_messaging";
            v40 = "%{public}s called with null options, backtrace limit exceeded";
            goto LABEL_114;
          }

          goto LABEL_115;
        }

        backtrace_string = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = v59[0];
        v56 = os_log_type_enabled(v38, v59[0]);
        if (!backtrace_string)
        {
          if (v56)
          {
            *__s = 136446210;
            v79 = "nw_http_joining_add_to_messaging";
            v40 = "%{public}s called with null options, no backtrace";
            goto LABEL_114;
          }

          goto LABEL_115;
        }

        if (v56)
        {
          *__s = 136446466;
          v79 = "nw_http_joining_add_to_messaging";
          v80 = 2082;
          v81 = backtrace_string;
          v52 = "%{public}s called with null options, dumping backtrace:%{public}s";
          goto LABEL_108;
        }

        goto LABEL_109;
      }

      v41 = __nwlog_obj();
      *__s = 136446210;
      v79 = "nw_parameters_copy_protocol_options_legacy";
      v42 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null protocol_handle", __s, 12);

      v59[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v66[0]) = 0;
      if (!__nwlog_fault(v42, v59, v66))
      {
LABEL_97:
        if (v42)
        {
          free(v42);
        }

        goto LABEL_100;
      }

      if (v59[0] == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = v59[0];
        if (os_log_type_enabled(v43, v59[0]))
        {
          *__s = 136446210;
          v79 = "nw_parameters_copy_protocol_options_legacy";
          v45 = "%{public}s called with null protocol_handle";
LABEL_95:
          _os_log_impl(&dword_181A37000, v43, v44, v45, __s, 0xCu);
        }
      }

      else
      {
        if (LOBYTE(v66[0]) == 1)
        {
          v53 = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = v59[0];
          v54 = os_log_type_enabled(v43, v59[0]);
          if (v53)
          {
            if (v54)
            {
              *__s = 136446466;
              v79 = "nw_parameters_copy_protocol_options_legacy";
              v80 = 2082;
              v81 = v53;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null protocol_handle, dumping backtrace:%{public}s", __s, 0x16u);
            }

            free(v53);
            goto LABEL_97;
          }

          if (!v54)
          {
            goto LABEL_96;
          }

          *__s = 136446210;
          v79 = "nw_parameters_copy_protocol_options_legacy";
          v45 = "%{public}s called with null protocol_handle, no backtrace";
          goto LABEL_95;
        }

        v43 = __nwlog_obj();
        v44 = v59[0];
        if (os_log_type_enabled(v43, v59[0]))
        {
          *__s = 136446210;
          v79 = "nw_parameters_copy_protocol_options_legacy";
          v45 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
          goto LABEL_95;
        }
      }

LABEL_96:

      goto LABEL_97;
    }

    v35 = __nwlog_obj();
    *__s = 136446210;
    v79 = "nw_http_joining_add_to_messaging";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null parameters", __s, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v59[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v31, type, v59))
    {
      goto LABEL_88;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        v34 = "%{public}s called with null parameters";
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    if (v59[0] != OS_LOG_TYPE_INFO)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        v34 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    v46 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type[0];
    v49 = os_log_type_enabled(v32, type[0]);
    if (!v46)
    {
      if (v49)
      {
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        v34 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    if (v49)
    {
      *__s = 136446466;
      v79 = "nw_http_joining_add_to_messaging";
      v80 = 2082;
      v81 = v46;
      v48 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v30 = __nwlog_obj();
  *__s = 136446210;
  v79 = "nw_http_joining_add_to_messaging";
  v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null input_protocol", __s, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v59[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v31, type, v59))
  {
    goto LABEL_88;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v59[0] != OS_LOG_TYPE_INFO)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        v34 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    v46 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type[0];
    v47 = os_log_type_enabled(v32, type[0]);
    if (!v46)
    {
      if (v47)
      {
        *__s = 136446210;
        v79 = "nw_http_joining_add_to_messaging";
        v34 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_87;
      }

      goto LABEL_88;
    }

    if (v47)
    {
      *__s = 136446466;
      v79 = "nw_http_joining_add_to_messaging";
      v80 = 2082;
      v81 = v46;
      v48 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
LABEL_64:
      _os_log_impl(&dword_181A37000, v32, v33, v48, __s, 0x16u);
    }

LABEL_65:
    free(v46);
    goto LABEL_88;
  }

  v32 = __nwlog_obj();
  v33 = type[0];
  if (os_log_type_enabled(v32, type[0]))
  {
    *__s = 136446210;
    v79 = "nw_http_joining_add_to_messaging";
    v34 = "%{public}s called with null input_protocol";
LABEL_87:
    _os_log_impl(&dword_181A37000, v32, v33, v34, __s, 0xCu);
  }

LABEL_88:
  if (v31)
  {
    free(v31);
  }

  return 0;
}

uint64_t __Block_byref_object_copy__22898(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__22899(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL32nw_http_joining_add_to_messagingP24nw_protocol_http_joiningP11nw_protocol_block_invoke(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_http_messaging(a2))
    {
      if (a2)
      {
        v4 = os_retain(a2);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1[5] + 8);
      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          os_release(v7);
          v6 = *(v5 + 48);
        }
      }

      *(v5 + 40) = v4;
      *(v5 + 48) = v6 | 1;
    }
  }

  else if (nw_protocol_options_get_protocol_handle(a2) == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

void ___ZL32nw_http_joining_add_to_messagingP24nw_protocol_http_joiningP11nw_protocol_block_invoke_24(void *a1, void *a2)
{
  v2 = a2;
  protocol_handle = nw_protocol_options_get_protocol_handle(a2);
  v5 = *(a1[4] + 8);
  if (protocol_handle == *(a1[6] + 136))
  {
    *(v5 + 24) = 1;
  }

  else if (*(v5 + 24) == 1)
  {
    if (v2)
    {
      v2 = os_retain(v2);
    }

    v6 = *(a1[5] + 8);
    v7 = *(v6 + 48);
    if (v7)
    {
      v8 = *(v6 + 40);
      if (v8)
      {
        os_release(v8);
        v7 = *(v6 + 48);
      }
    }

    *(v6 + 40) = v2;
    *(v6 + 48) = v7 | 1;
    *(*(a1[4] + 8) + 24) = 0;
  }
}

uint64_t nw_http_joining_stalled(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_http_joining_stalled";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v18, &type, &v24))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v27 = "nw_http_joining_stalled";
      v21 = "%{public}s called with null http_joining";
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v23 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v27 = "nw_http_joining_stalled";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null http_joining, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_34;
      }

      if (!v23)
      {
LABEL_34:
        if (v18)
        {
          free(v18);
        }

        return 0;
      }

      *buf = 136446210;
      v27 = "nw_http_joining_stalled";
      v21 = "%{public}s called with null http_joining, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v27 = "nw_http_joining_stalled";
      v21 = "%{public}s called with null http_joining, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_34;
  }

  if (*(a1 + 136))
  {
    return 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = mach_continuous_approximate_time();
    v5 = v4 <= 1 ? 1 : v4;
    v6 = nw_delta_nanos(v3, v5);
    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5);
    if (v6 > 1000000000 * int64_with_default)
    {
      if ((*(a1 + 294) & 2) == 0)
      {
        v8 = int64_with_default;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
        result = 1;
        if (v10)
        {
          *buf = 136446978;
          v27 = "nw_http_joining_stalled";
          v28 = 2082;
          v29 = (a1 + 208);
          v30 = 2080;
          v31 = " ";
          v32 = 2048;
          v33 = v8;
          v11 = "%{public}s %{public}s%sdenying join attempt because http_joining was not ready within %lld seconds";
          v12 = v9;
          v13 = 42;
LABEL_18:
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
          return 1;
        }

        return result;
      }

      return 1;
    }
  }

  if (!*(a1 + 292) || networkd_settings_get_int64_with_default(nw_setting_proxy_maximum_stall_count, 5) >= *(a1 + 292))
  {
    return 0;
  }

  if ((*(a1 + 294) & 2) != 0)
  {
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  result = 1;
  if (v15)
  {
    v16 = *(a1 + 292);
    *buf = 136446978;
    v27 = "nw_http_joining_stalled";
    v28 = 2082;
    v29 = (a1 + 208);
    v30 = 2080;
    v31 = " ";
    v32 = 1024;
    LODWORD(v33) = v16;
    v11 = "%{public}s %{public}s%sdenying join attempt because http_joining hit %u stalls";
    v12 = v14;
    v13 = 38;
    goto LABEL_18;
  }

  return result;
}

uint64_t __nw_protocol_http_joining_accept_block_invoke(uint64_t a1, nw_endpoint_t endpoint)
{
  hostname = nw_endpoint_get_hostname(endpoint);
  port = nw_endpoint_get_port(*(*(a1 + 40) + 120));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, port);
  is_equal = nw_endpoint_is_equal(*(*(a1 + 40) + 120), host_with_numeric_port, 0);
  if (is_equal)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  if (host_with_numeric_port)
  {
    os_release(host_with_numeric_port);
  }

  return is_equal ^ 1u;
}

uint64_t ___ZL32nw_protocol_http_joining_connectP11nw_protocolS0__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  result = (*(*(a1 + 32) + 16))();
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
    v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null http_messaging_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v99 = 0;
    if (!__nwlog_fault(v66, type, &v99))
    {
      goto LABEL_124;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
      v69 = "%{public}s called with null http_messaging_protocol";
    }

    else if (v99 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v67 = __nwlog_obj();
      v68 = type[0];
      v72 = os_log_type_enabled(v67, type[0]);
      if (backtrace_string)
      {
        if (v72)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null http_messaging_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_124;
      }

      if (!v72)
      {
LABEL_124:
        if (v66)
        {
          free(v66);
        }

        return 0;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
      v69 = "%{public}s called with null http_messaging_protocol, no backtrace";
    }

    else
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
      v69 = "%{public}s called with null http_messaging_protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0xCu);
    goto LABEL_124;
  }

  v6 = result;
  if (nw_protocol_copy_info(a2))
  {
    if ((*(v6 + 294) & 2) != 0 || gLogDatapath != 1)
    {
      return 0;
    }

    v70 = __nwlog_obj();
    result = os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
      *&buf[12] = 2082;
      *&buf[14] = v6 + 208;
      *&buf[22] = 2080;
      v101 = " ";
      v37 = "%{public}s %{public}s%sreplacing protocol already has a listen handler, ignoring";
      v38 = v70;
      v39 = OS_LOG_TYPE_DEBUG;
      goto LABEL_63;
    }

    return result;
  }

  v7 = a2[2];
  if (nw_protocol_http_messaging_identifier::onceToken != -1)
  {
    v73 = a2[2];
    dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    v7 = v73;
  }

  v8 = nw_protocols_are_equal(v7, &nw_protocol_http_messaging_identifier::protocol_identifier);
  v9 = a2[2];
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    v74 = a2[2];
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    v9 = v74;
  }

  if (nw_protocols_are_equal(v9, &nw_protocol_http1_identifier::http1_protocol_identifier))
  {
    goto LABEL_18;
  }

  v10 = a2[2];
  if (nw_protocol_http2_identifier::onceToken != -1)
  {
    v75 = a2[2];
    dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
    v10 = v75;
  }

  if (nw_protocols_are_equal(v10, &nw_protocol_http2_identifier::http2_protocol_identifier))
  {
    goto LABEL_18;
  }

  v11 = a2[2];
  if (nw_protocol_http3_identifier::onceToken != -1)
  {
    v81 = a2[2];
    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
    v11 = v81;
  }

  if (nw_protocols_are_equal(v11, &nw_protocol_http3_identifier::http3_protocol_identifier))
  {
LABEL_18:
    v12 = 1;
    v13 = *(v6 + 136);
    if (v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v14 = a2[2];
    if (nw_protocol_oblivious_http_identifier::onceToken != -1)
    {
      v88 = a2[2];
      dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
      v14 = v88;
    }

    v12 = nw_protocols_are_equal(v14, &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier);
    v13 = *(v6 + 136);
    if (v13)
    {
      goto LABEL_26;
    }
  }

  if (v8 || v12)
  {
    if ((*(v6 + 294) & 2) == 0 && gLogDatapath == 1)
    {
      v76 = v12;
      v77 = __nwlog_obj();
      v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG);
      LOBYTE(v12) = v76;
      if (v78)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 208;
        *&buf[22] = 2080;
        v101 = " ";
        *v102 = 2048;
        *&v102[2] = a2;
        _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%ssetting http_messaging %p", buf, 0x2Au);
        LOBYTE(v12) = v76;
      }
    }

    *(v6 + 136) = a2;
LABEL_27:
    if ((*(v6 + 294) & 1) == 0 && v12)
    {
      if ((*(v6 + 294) & 2) == 0 && gLogDatapath == 1)
      {
        v79 = __nwlog_obj();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          v80 = *(v6 + 136);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
          *&buf[12] = 2082;
          *&buf[14] = v6 + 208;
          *&buf[22] = 2080;
          v101 = " ";
          *v102 = 2048;
          *&v102[2] = v80;
          *&v102[10] = 2048;
          *&v102[12] = a2;
          _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreplacing http_messaging %p with %p", buf, 0x34u);
        }
      }

      *(v6 + 136) = a2;
    }

    if (*(a2[2] + 36) != 2)
    {
      if ((*(v6 + 294) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
          *&buf[12] = 2082;
          *&buf[14] = v6 + 208;
          *&buf[22] = 2080;
          v101 = " ";
          _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sReverse proxy tunnel is not multiplex", buf, 0x20u);
        }
      }

      return 1;
    }

    *(v6 + 136) = a2;
    nw_protocol_add_listen_handler(a2, v6 + 64);
    v15 = *(v6 + 72);
    if (v15 != *(v6 + 136))
    {
      *(v6 + 136) = v15;
    }

    if (a3)
    {
      v16 = a3;
      if (nw_protocol_copy_http_connection_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
      }

      v17 = nw_protocol_metadata_matches_definition(v16, nw_protocol_copy_http_connection_definition_definition);

      if (v17)
      {
        v18 = os_retain(v16);
        v19 = *(v6 + 152);
        if ((v19 & 1) != 0 && *(v6 + 144))
        {
          v20 = v18;
          os_release(*(v6 + 144));
          v18 = v20;
          v19 = *(v6 + 152);
        }

        *(v6 + 144) = v18;
        *(v6 + 152) = v19 | 1;
        v21 = v18;
        v22 = &__block_literal_global_35_22971;
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
            *&buf[16] = __nw_http_connection_metadata_set_certificate_added_handler_block_invoke;
            v101 = &unk_1E6A3AA28;
            *&v102[8] = v6;
            v23 = &__block_literal_global_35_22971;
            *v102 = &__block_literal_global_35_22971;
            handle = _nw_protocol_metadata_get_handle();
            if (handle)
            {
              (*&buf[16])(buf, handle);
            }

            goto LABEL_48;
          }

          v87 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
          v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s metadata must be http_connection", buf, 12);

          type[0] = OS_LOG_TYPE_ERROR;
          v99 = 0;
          if (!__nwlog_fault(v83, type, &v99))
          {
            goto LABEL_157;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v84 = __nwlog_obj();
            v85 = type[0];
            if (os_log_type_enabled(v84, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
              v86 = "%{public}s metadata must be http_connection";
              goto LABEL_155;
            }
          }

          else
          {
            if (v99 == 1)
            {
              v91 = __nw_create_backtrace_string();
              v84 = __nwlog_obj();
              v85 = type[0];
              v92 = os_log_type_enabled(v84, type[0]);
              if (v91)
              {
                if (v92)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v91;
                  _os_log_impl(&dword_181A37000, v84, v85, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v91);
                if (!v83)
                {
LABEL_48:

                  v25 = *(v6 + 144);
                  *type = MEMORY[0x1E69E9820];
                  v95 = 0x40000000;
                  v96 = ___ZL48nw_protocol_http_joining_override_http_messagingP24nw_protocol_http_joiningP11nw_protocolP20nw_protocol_metadata_block_invoke_2;
                  v97 = &__block_descriptor_tmp_36_22972;
                  v98 = v6;
                  nw_http_connection_metadata_enumerate_secondary_certificates(v25, type);
                  if (!nw_protocol_get_parameters(*(v6 + 136)))
                  {
                    goto LABEL_73;
                  }

                  v26 = *(v6 + 104);
                  v27 = _nw_parameters_copy_default_protocol_stack();
                  v28 = nw_parameters_copy_default_protocol_stack(v26);
                  v29 = nw_protocol_stack_copy_transport_protocol(v27);
                  v30 = nw_protocol_stack_copy_transport_protocol(v28);
                  v31 = v30;
                  if (v29)
                  {
                    if (v30)
                    {
                      v32 = _nw_protocol_options_copy_definition();
                      if (nw_protocol_options_matches_definition(v31, v32))
                      {
                        protocol_handle = _nw_protocol_options_get_protocol_handle(v29);
                        nw_parameters_set_protocol_instance(v31, v34, protocol_handle);
                        if ((*(v6 + 294) & 2) == 0 && gLogDatapath == 1)
                        {
                          v93 = __nwlog_obj();
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136447234;
                            *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
                            *&buf[12] = 2082;
                            *&buf[14] = v6 + 208;
                            *&buf[22] = 2080;
                            v101 = " ";
                            *v102 = 2048;
                            *&v102[2] = v31;
                            *&v102[10] = 2048;
                            *&v102[12] = v29;
                            _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sChanged http_joining transport from %p to %p", buf, 0x34u);
                          }
                        }
                      }

                      os_release(v31);
                    }
                  }

                  else
                  {
                    v29 = v30;
                    if (!v30)
                    {
LABEL_66:
                      if (v28)
                      {
                        os_release(v28);
                      }

                      if (v27)
                      {
                        os_release(v27);
                      }

                      goto LABEL_73;
                    }
                  }

                  os_release(v29);
                  goto LABEL_66;
                }

LABEL_158:
                free(v83);
                goto LABEL_48;
              }

              if (!v92)
              {
                goto LABEL_156;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
              v86 = "%{public}s metadata must be http_connection, no backtrace";
              goto LABEL_155;
            }

            v84 = __nwlog_obj();
            v85 = type[0];
            if (os_log_type_enabled(v84, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
              v86 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

        else
        {
          v82 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
          v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s called with null metadata", buf, 12);

          type[0] = OS_LOG_TYPE_ERROR;
          v99 = 0;
          if (!__nwlog_fault(v83, type, &v99))
          {
            goto LABEL_157;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v84 = __nwlog_obj();
            v85 = type[0];
            if (os_log_type_enabled(v84, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
              v86 = "%{public}s called with null metadata";
LABEL_155:
              _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0xCu);
            }
          }

          else if (v99 == 1)
          {
            v89 = __nw_create_backtrace_string();
            v84 = __nwlog_obj();
            v85 = type[0];
            v90 = os_log_type_enabled(v84, type[0]);
            if (v89)
            {
              if (v90)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
                *&buf[12] = 2082;
                *&buf[14] = v89;
                _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v89);
LABEL_157:
              if (!v83)
              {
                goto LABEL_48;
              }

              goto LABEL_158;
            }

            if (v90)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
              v86 = "%{public}s called with null metadata, no backtrace";
              goto LABEL_155;
            }
          }

          else
          {
            v84 = __nwlog_obj();
            v85 = type[0];
            if (os_log_type_enabled(v84, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_certificate_added_handler";
              v86 = "%{public}s called with null metadata, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

LABEL_156:

        goto LABEL_157;
      }
    }

    while (1)
    {
LABEL_73:
      v42 = *(v6 + 184);
      v41 = *(v6 + 192);
      v43 = v42;
      if (v42 != v41)
      {
        while (*(v43 + 8) == 2)
        {
          v43 += 16;
          if (v43 == v41)
          {
            v43 = *(v6 + 192);
            break;
          }
        }
      }

      if (v41 == v43)
      {
        return 1;
      }

      v44 = *v43;
      v45 = *(v43 + 8);
      v46 = v43 + 16;
      if (v43 + 16 != v41)
      {
        v47 = v41 - v43 - 32;
        if (v47 >= 0x10)
        {
          v48 = v43 - v42;
          v49 = (v47 >> 4) + 1;
          v50 = 16 * (v49 & 0x1FFFFFFFFFFFFFFELL);
          v43 += v50;
          v51 = v42 + v48 + 24;
          v52 = v49 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v53 = *(v51 + 8);
            *(v51 - 24) = *(v51 - 8);
            *(v51 - 8) = v53;
            LODWORD(v53) = *(v51 + 16);
            *(v51 - 16) = *v51;
            *v51 = v53;
            v51 += 32;
            v52 -= 2;
          }

          while (v52);
          if (v49 == (v49 & 0x1FFFFFFFFFFFFFFELL))
          {
            goto LABEL_85;
          }

          v46 += v50;
        }

        do
        {
          *v43 = *v46;
          *(v43 + 8) = *(v46 + 8);
          v46 += 16;
          v43 += 16;
        }

        while (v46 != v41);
      }

LABEL_85:
      *(v6 + 192) = v43;
      parameters = nw_protocol_get_parameters(v44);
      if (nw_protocol_http_joining_accept(v6, *(v6 + 120), parameters) && (nw_http_joining_add_to_messaging(v6, v44) & 1) != 0)
      {
        if (v45 == 1)
        {
          nw_protocol_connect(*(v44 + 32), v44);
        }
      }

      else
      {
        if ((*(v6 + 294) & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v55 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
            *&buf[12] = 2082;
            *&buf[14] = v6 + 208;
            *&buf[22] = 2080;
            v101 = " ";
            _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sMessaging cannot accept stream", buf, 0x20u);
          }
        }

        v57 = *(v6 + 192);
        v56 = *(v6 + 200);
        if (v57 < v56)
        {
          *v57 = v44;
          *(v57 + 8) = 2;
          v40 = v57 + 16;
        }

        else
        {
          v58 = *(v6 + 184);
          v59 = v57 - v58;
          v60 = (v57 - v58) >> 4;
          v61 = v60 + 1;
          if ((v60 + 1) >> 60)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v62 = v56 - v58;
          if (v62 >> 3 > v61)
          {
            v61 = v62 >> 3;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF0)
          {
            v63 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            if (!(v63 >> 60))
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v64 = 16 * v60;
          *v64 = v44;
          *(v64 + 8) = 2;
          v40 = 16 * v60 + 16;
          memcpy(0, v58, v59);
          *(v6 + 184) = 0;
          *(v6 + 192) = v40;
          *(v6 + 200) = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        *(v6 + 192) = v40;
        nw_protocol_error(v44, v6);
        nw_protocol_disconnected(v44, v6);
      }
    }
  }

LABEL_26:
  if (v13)
  {
    goto LABEL_27;
  }

  if ((*(v6 + 294) & 2) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v36 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_joining_override_http_messaging";
    *&buf[12] = 2082;
    *&buf[14] = v6 + 208;
    *&buf[22] = 2080;
    v101 = " ";
    v37 = "%{public}s %{public}s%spassed messaging protocol invalid for overriding";
    v38 = v36;
    v39 = OS_LOG_TYPE_INFO;
LABEL_63:
    _os_log_impl(&dword_181A37000, v38, v39, v37, buf, 0x20u);
    return 0;
  }

  return result;
}

uint64_t ___ZL32nw_protocol_http_joining_connectP11nw_protocolS0__block_invoke_2(uint64_t a1)
{
  v2 = 1;
  if ((*(*(a1 + 32) + 16))())
  {
    return nw_http_joining_stalled(*(a1 + 40)) ^ 1;
  }

  return v2;
}

uint64_t ___ZL48nw_protocol_http_joining_override_http_messagingP24nw_protocol_http_joiningP11nw_protocolP20nw_protocol_metadata_block_invoke_2(uint64_t a1, nw_endpoint_t endpoint)
{
  v20 = *MEMORY[0x1E69E9840];
  hostname = nw_endpoint_get_hostname(endpoint);
  port = nw_endpoint_get_port(*(*(a1 + 32) + 120));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, port);
  v6 = *(a1 + 32);
  if ((!v6 || (*(v6 + 294) & 2) == 0) && gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    v6 = *(a1 + 32);
    if (v9)
    {
      v10 = (v6 + 208);
      if (!v6)
      {
        v10 = "";
      }

      v12 = 136446978;
      v13 = "nw_protocol_http_joining_override_http_messaging_block_invoke_2";
      v14 = 2082;
      v15 = v10;
      v11 = " ";
      if (!v6)
      {
        v11 = "";
      }

      v16 = 2080;
      v17 = v11;
      v18 = 2112;
      v19 = host_with_numeric_port;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%smaking endpoint %@ joinable by http_joining", &v12, 0x2Au);
      v6 = *(a1 + 32);
    }
  }

  nw_protocol_http_joining_endpoint_joinable(v6, host_with_numeric_port);
  if (host_with_numeric_port)
  {
    os_release(host_with_numeric_port);
  }

  return 1;
}

void nw_protocol_http_joining_endpoint_joinable(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http_joining_endpoint_joinable";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_joining_endpoint_joinable";
      v9 = "%{public}s called with null http_joining";
    }

    else if (v15 == 1)
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
          v18 = "nw_protocol_http_joining_endpoint_joinable";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_joining, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v6)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!v12)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_joining_endpoint_joinable";
      v9 = "%{public}s called with null http_joining, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http_joining_endpoint_joinable";
      v9 = "%{public}s called with null http_joining, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_35;
  }

  if (a2)
  {
    v4 = nw_endpoint_copy_registrar_for_identifier(*(a1 + 120), *(a1 + 16), 0);
    nw_protocol_instance_registrar_add_wildcard_edge_for_instance(v4, *(a1 + 120), a1, a2);
    if (v4)
    {

      os_release(v4);
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_http_joining_endpoint_joinable";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null endpoint", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http_joining_endpoint_joinable";
    v9 = "%{public}s called with null endpoint";
    goto LABEL_34;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http_joining_endpoint_joinable";
    v9 = "%{public}s called with null endpoint, backtrace limit exceeded";
    goto LABEL_34;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http_joining_endpoint_joinable";
    v9 = "%{public}s called with null endpoint, no backtrace";
    goto LABEL_34;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_http_joining_endpoint_joinable";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
LABEL_36:
    free(v6);
  }
}

void ___ZL48nw_protocol_http_joining_override_http_messagingP24nw_protocol_http_joiningP11nw_protocolP20nw_protocol_metadata_block_invoke(int a1, uint64_t a2, nw_endpoint_t endpoint)
{
  hostname = nw_endpoint_get_hostname(endpoint);
  port = nw_endpoint_get_port(*(a2 + 120));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, port);
  nw_protocol_http_joining_endpoint_joinable(a2, host_with_numeric_port);
  if (host_with_numeric_port)
  {

    os_release(host_with_numeric_port);
  }
}

uint64_t nw_protocol_http_joining_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_protocol_http_joining_remove_input_handler";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v33, &type, &v46))
    {
      goto LABEL_104;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v49 = "nw_protocol_http_joining_remove_input_handler";
      v36 = "%{public}s called with null protocol";
LABEL_103:
      _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
      goto LABEL_104;
    }

    if (v46 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v40 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    if (!v40)
    {
      goto LABEL_88;
    }

    *buf = 136446466;
    v49 = "nw_protocol_http_joining_remove_input_handler";
    v50 = 2082;
    v51 = backtrace_string;
    v41 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_87:
    _os_log_impl(&dword_181A37000, v34, v35, v41, buf, 0x16u);
    goto LABEL_88;
  }

  handle = a1->handle;
  if (!handle)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_protocol_http_joining_remove_input_handler";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v33, &type, &v46))
    {
      goto LABEL_104;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v49 = "nw_protocol_http_joining_remove_input_handler";
      v36 = "%{public}s called with null http_joining";
      goto LABEL_103;
    }

    if (v46 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null http_joining, backtrace limit exceeded";
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v42 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (v42)
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null http_joining, no backtrace";
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    if (!v42)
    {
      goto LABEL_88;
    }

    *buf = 136446466;
    v49 = "nw_protocol_http_joining_remove_input_handler";
    v50 = 2082;
    v51 = backtrace_string;
    v41 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
    goto LABEL_87;
  }

  if (!a2)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_protocol_http_joining_remove_input_handler";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v33, &type, &v46))
    {
      goto LABEL_104;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null other_protocol";
        goto LABEL_103;
      }

LABEL_104:
      if (!v33)
      {
        return 0;
      }

      v30 = v33;
      goto LABEL_57;
    }

    if (v46 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v43 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v36 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    if (v43)
    {
      *buf = 136446466;
      v49 = "nw_protocol_http_joining_remove_input_handler";
      v50 = 2082;
      v51 = backtrace_string;
      v41 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_87;
    }

LABEL_88:
    free(backtrace_string);
    goto LABEL_104;
  }

  if (handle->default_input_handler != a2)
  {
    output_handler_context = handle[2].output_handler_context;
    v6 = *handle[3].flow_id;
    if (output_handler_context != v6)
    {
      while (*output_handler_context != a2)
      {
        output_handler_context += 16;
        if (output_handler_context == v6)
        {
          output_handler_context = *handle[3].flow_id;
          break;
        }
      }
    }

    if (v6 != output_handler_context)
    {
      v8 = output_handler_context + 16;
      if (output_handler_context + 16 != v6)
      {
        v9 = v6 - output_handler_context - 32;
        if (v9 >= 0x10)
        {
          v10 = (v9 >> 4) + 1;
          v11 = 16 * (v10 & 0x1FFFFFFFFFFFFFFELL);
          v12 = &output_handler_context[v11];
          v13 = output_handler_context + 24;
          v14 = v10 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v15 = *(v13 + 1);
            *(v13 - 3) = *(v13 - 1);
            *(v13 - 1) = v15;
            LODWORD(v15) = v13[4];
            *(v13 - 4) = *v13;
            *v13 = v15;
            v13 += 8;
            v14 -= 2;
          }

          while (v14);
          if (v10 == (v10 & 0x1FFFFFFFFFFFFFFELL))
          {
            output_handler_context = v12;
            goto LABEL_31;
          }

          v8 += v11;
          output_handler_context = v12;
        }

        do
        {
          *output_handler_context = *v8;
          *(output_handler_context + 2) = *(v8 + 2);
          v8 += 16;
          output_handler_context += 16;
        }

        while (v8 != v6);
      }

LABEL_31:
      *handle[3].flow_id = output_handler_context;
      v24 = WORD2(handle[4].output_handler)++ + 1;
      if ((v24 & 0x10000) != 0)
      {
        if (gLogDatapath == 1)
        {
          v44 = __nwlog_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v45 = WORD2(handle[4].output_handler);
            *buf = 136446978;
            v49 = "nw_protocol_http_joining_remove_input_handler";
            v50 = 2082;
            v51 = "http_joining->stream_stall_count";
            v52 = 2048;
            v53 = 1;
            v54 = 2048;
            v55 = v45;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
          }
        }

        WORD2(handle[4].output_handler) = -1;
      }

      if ((BYTE6(handle[4].output_handler) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v26 = WORD2(handle[4].output_handler);
          *buf = 136446978;
          v49 = "nw_protocol_http_joining_remove_input_handler";
          v50 = 2082;
          v51 = (handle + 208);
          v52 = 2080;
          v53 = " ";
          v54 = 1024;
          LODWORD(v55) = v26;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sstream setup stalls incremented to %u", buf, 0x26u);
        }
      }

      goto LABEL_37;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v49 = "nw_protocol_http_joining_remove_input_handler";
    v50 = 2048;
    v51 = a2;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Protocol %p isn't an input handler of http joining", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v18, &type, &v46))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v50 = 2048;
        v51 = a2;
        v21 = "%{public}s Protocol %p isn't an input handler of http joining";
LABEL_54:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0x16u);
      }
    }

    else if (v46 == 1)
    {
      v22 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      v23 = os_log_type_enabled(gLogObj, type);
      if (v22)
      {
        if (v23)
        {
          *buf = 136446722;
          v49 = "nw_protocol_http_joining_remove_input_handler";
          v50 = 2048;
          v51 = a2;
          v52 = 2082;
          v53 = v22;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Protocol %p isn't an input handler of http joining, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v22);
        goto LABEL_55;
      }

      if (v23)
      {
        *buf = 136446466;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v50 = 2048;
        v51 = a2;
        v21 = "%{public}s Protocol %p isn't an input handler of http joining, no backtrace";
        goto LABEL_54;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v49 = "nw_protocol_http_joining_remove_input_handler";
        v50 = 2048;
        v51 = a2;
        v21 = "%{public}s Protocol %p isn't an input handler of http joining, backtrace limit exceeded";
        goto LABEL_54;
      }
    }

LABEL_55:
    if (!v18)
    {
      return 0;
    }

    v30 = v18;
LABEL_57:
    free(v30);
    return 0;
  }

  nw_protocol_http_joining_teardown(a1->handle);
  v17 = handle[2].output_handler_context;
  v16 = *handle[3].flow_id;
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  nw_protocol_set_input_handler(handle, 0);
LABEL_37:
  if (a2->output_handler != handle)
  {
    if (!*&handle[2].flow_id[8])
    {
      goto LABEL_41;
    }

    return 1;
  }

  nw_protocol_set_output_handler(a2, 0);
  if (*&handle[2].flow_id[8])
  {
    return 1;
  }

LABEL_41:
  if (handle->default_input_handler || handle[2].output_handler_context != *handle[3].flow_id || (BYTE6(handle[4].output_handler) & 4) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v27 = 4;
  }

  else
  {
    v27 = 0;
  }

  BYTE6(handle[4].output_handler) |= v27;
  output_handler = handle->output_handler;
  if (output_handler)
  {
    result = nw_protocol_remove_input_handler(output_handler, handle);
  }

  else
  {
    result = 1;
  }

  if (a3)
  {
    v31 = result;
    nw_protocol_remove_instance(handle);
    handle->handle = 0;
    nw_http_joining_destroy(handle);
    return v31;
  }

  return result;
}

uint64_t nw_protocol_http_joining_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_84;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v33 = "nw_protocol_http_joining_replace_input_handler";
          v20 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v25 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v33 = "nw_protocol_http_joining_replace_input_handler";
          v20 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (!v25)
      {
        goto LABEL_66;
      }

      *buf = 136446466;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2082;
      v35 = backtrace_string;
      v26 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_65;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_84;
    }

    *buf = 136446210;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v20 = "%{public}s called with null protocol";
LABEL_83:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_84;
  }

  handle = a1->handle;
  if (!handle)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_84;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v33 = "nw_protocol_http_joining_replace_input_handler";
          v20 = "%{public}s called with null http_joining, backtrace limit exceeded";
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v27 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v33 = "nw_protocol_http_joining_replace_input_handler";
          v20 = "%{public}s called with null http_joining, no backtrace";
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (!v27)
      {
        goto LABEL_66;
      }

      *buf = 136446466;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2082;
      v35 = backtrace_string;
      v26 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
      goto LABEL_65;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_84;
    }

    *buf = 136446210;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v20 = "%{public}s called with null http_joining";
    goto LABEL_83;
  }

  if (!a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null old_input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v20 = "%{public}s called with null old_input_protocol";
      goto LABEL_83;
    }

    if (v30 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_http_joining_replace_input_handler";
        v20 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v28 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v33 = "nw_protocol_http_joining_replace_input_handler";
        v20 = "%{public}s called with null old_input_protocol, no backtrace";
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    if (!v28)
    {
      goto LABEL_66;
    }

    *buf = 136446466;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v34 = 2082;
    v35 = backtrace_string;
    v26 = "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s";
LABEL_65:
    _os_log_impl(&dword_181A37000, v18, v19, v26, buf, 0x16u);
    goto LABEL_66;
  }

  if (!a3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_http_joining_replace_input_handler";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null new_input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_http_joining_replace_input_handler";
        v20 = "%{public}s called with null new_input_protocol";
        goto LABEL_83;
      }

LABEL_84:
      if (!v17)
      {
        return 0;
      }

      v15 = v17;
      goto LABEL_30;
    }

    if (v30 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_http_joining_replace_input_handler";
        v20 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v29 = os_log_type_enabled(v18, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v33 = "nw_protocol_http_joining_replace_input_handler";
        v20 = "%{public}s called with null new_input_protocol, no backtrace";
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    if (v29)
    {
      *buf = 136446466;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2082;
      v35 = backtrace_string;
      v26 = "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s";
      goto LABEL_65;
    }

LABEL_66:
    free(backtrace_string);
    goto LABEL_84;
  }

  if (*(handle + 6) == a2)
  {
    nw_protocol_set_output_handler(a2, 0);
    nw_protocol_set_input_handler(handle, a3);
    return 1;
  }

  v7 = *(handle + 23);
  v6 = *(handle + 24);
  if (v7 != v6)
  {
    while (*v7 != a2)
    {
      v7 += 2;
      if (v7 == v6)
      {
        goto LABEL_14;
      }
    }
  }

  if (v7 != v6)
  {
    nw_protocol_set_output_handler(a2, 0);
    *v7 = a3;
    return 1;
  }

LABEL_14:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v33 = "nw_protocol_http_joining_replace_input_handler";
  v34 = 2048;
  v35 = a2;
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Protocol %p isn't an input handler of http joining", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v9, &type, &v30))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2048;
      v35 = a2;
      v12 = "%{public}s Protocol %p isn't an input handler of http joining";
LABEL_27:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x16u);
      goto LABEL_28;
    }

    if (v30 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2048;
      v35 = a2;
      v12 = "%{public}s Protocol %p isn't an input handler of http joining, backtrace limit exceeded";
      goto LABEL_27;
    }

    v13 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    v14 = os_log_type_enabled(gLogObj, type);
    if (!v13)
    {
      if (!v14)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2048;
      v35 = a2;
      v12 = "%{public}s Protocol %p isn't an input handler of http joining, no backtrace";
      goto LABEL_27;
    }

    if (v14)
    {
      *buf = 136446722;
      v33 = "nw_protocol_http_joining_replace_input_handler";
      v34 = 2048;
      v35 = a2;
      v36 = 2082;
      v37 = v13;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Protocol %p isn't an input handler of http joining, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(v13);
  }

LABEL_28:
  if (v9)
  {
    v15 = v9;
LABEL_30:
    free(v15);
  }

  return 0;
}

double __nw_protocol_http_joining_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_joining_identifier::protocol_identifier, "http_joining");
  *&result = 0x200000005;
  qword_1EA83F9E0 = 0x200000005;
  return result;
}

BOOL ___Z44nw_endpoint_flow_get_multipath_subflow_countP27NWConcrete_nw_endpoint_flow_block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0;
  if (!copyconninfo(a2, -1, &v25))
  {
    v4 = v25;
    v5 = *(v25 + 7);
    v3 = v5 == 2;
    if (v5 == 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = **(v25 + 4);
      v6 = v4[1];
      if (v6)
      {
        free(v6);
        v4[1] = 0;
      }

      v7 = v4[2];
      if (v7)
      {
        free(v7);
        v4[2] = 0;
      }

      v8 = v4[4];
      if (!v8)
      {
        v3 = 1;
LABEL_34:
        free(v4);
        return v3;
      }

LABEL_33:
      free(v8);
      goto LABEL_34;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v27 = "nw_endpoint_flow_get_multipath_subflow_count_block_invoke";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s Didn't get a CIAUX_MPTCP", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v10, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_flow_get_multipath_subflow_count_block_invoke";
          v14 = "%{public}s Didn't get a CIAUX_MPTCP";
LABEL_22:
          v18 = v12;
          v19 = v13;
LABEL_23:
          _os_log_impl(&dword_181A37000, v18, v19, v14, buf, 0xCu);
          goto LABEL_24;
        }

        goto LABEL_24;
      }

      if (v23 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_flow_get_multipath_subflow_count_block_invoke";
          v14 = "%{public}s Didn't get a CIAUX_MPTCP, backtrace limit exceeded";
          goto LABEL_22;
        }

LABEL_24:

        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v16 = type;
      v17 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (!v17)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v27 = "nw_endpoint_flow_get_multipath_subflow_count_block_invoke";
        v14 = "%{public}s Didn't get a CIAUX_MPTCP, no backtrace";
        v18 = v12;
        v19 = v16;
        goto LABEL_23;
      }

      if (v17)
      {
        *buf = 136446466;
        v27 = "nw_endpoint_flow_get_multipath_subflow_count_block_invoke";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v16, "%{public}s Didn't get a CIAUX_MPTCP, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_25:
    if (v10)
    {
      free(v10);
    }

    v4 = v25;
    if (!v25)
    {
      return 0;
    }

    v20 = *(v25 + 1);
    if (v20)
    {
      free(v20);
      v4[1] = 0;
    }

    v21 = v4[2];
    if (v21)
    {
      free(v21);
      v4[2] = 0;
    }

    v8 = v4[4];
    if (!v8)
    {
      v3 = 0;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return 0;
}

uint64_t ___Z46nw_endpoint_flow_copy_multipath_subflow_countsP27NWConcrete_nw_endpoint_flow_block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!copyconninfo(a2, -1, (*(*(a1 + 32) + 8) + 24)))
  {
    if (*(*(*(*(a1 + 32) + 8) + 24) + 28) == 2)
    {
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v18 = "nw_endpoint_flow_copy_multipath_subflow_counts_block_invoke";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s Didn't get a CIAUX_MPTCP", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_copy_multipath_subflow_counts_block_invoke";
        v9 = "%{public}s Didn't get a CIAUX_MPTCP";
LABEL_20:
        v13 = v7;
        v14 = v8;
LABEL_21:
        _os_log_impl(&dword_181A37000, v13, v14, v9, buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_endpoint_flow_copy_multipath_subflow_counts_block_invoke";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v11, "%{public}s Didn't get a CIAUX_MPTCP, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_copy_multipath_subflow_counts_block_invoke";
        v9 = "%{public}s Didn't get a CIAUX_MPTCP, no backtrace";
        v13 = v7;
        v14 = v11;
        goto LABEL_21;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_copy_multipath_subflow_counts_block_invoke";
        v9 = "%{public}s Didn't get a CIAUX_MPTCP, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_23:
    if (v6)
    {
      free(v6);
    }

    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v18 = "nw_endpoint_flow_copy_multipath_subflow_counts_block_invoke";
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s copyconninfo failed", buf, 0xCu);
  }

  return 0;
}

uint64_t nw_connection_copy_proxy_settings(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__23506;
    v21 = __Block_byref_object_dispose__23507;
    v22 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_connection_copy_proxy_settings_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v15 = v1;
    v16 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_proxy_settings_block_invoke(v14);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);
    if (v3)
    {
      v4 = _nw_parameters_copy_effective_proxy_config(v3);
    }

    else
    {
      v4 = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_proxy_settings";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_proxy_settings";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_copy_proxy_settings";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_proxy_settings";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_proxy_settings";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

void sub_1824A5208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23506(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __nw_connection_copy_proxy_settings_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = nw_endpoint_handler_copy_connected_path(*(*(a1 + 32) + 144));
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = _nw_path_copy_parameters(v4);

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = *(*(a1 + 32) + 16);
      if (v8)
      {
        if (!_nw_parameters_get_logging_disabled(v8))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v9 = gconnectionLogObj;
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          v10 = *(*(a1 + 32) + 448);
          v14 = 136446466;
          v15 = "nw_connection_copy_proxy_settings_block_invoke";
          v16 = 1024;
          v17 = v10;
          v11 = "%{public}s [C%u] has no connected parameters";
LABEL_15:
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v11, &v14, 0x12u);
LABEL_16:
        }
      }
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);
    if (v12 && !_nw_parameters_get_logging_disabled(v12))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v9 = gconnectionLogObj;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v13 = *(*(a1 + 32) + 448);
      v14 = 136446466;
      v15 = "nw_connection_copy_proxy_settings_block_invoke";
      v16 = 1024;
      v17 = v13;
      v11 = "%{public}s [C%u] has no connected path";
      goto LABEL_15;
    }
  }
}

void __nw_mem_region_init_block_invoke()
{
  os_unfair_lock_lock(&nw_mem_region_lock);
  v0 = nw_mem_region_head;
  if (nw_mem_region_head)
  {
    v1 = MEMORY[0x1E69E9820];
    while (1)
    {
      block[0] = v1;
      block[1] = 0x40000000;
      v5 = ___ZL20nw_mem_region_updateP13nw_mem_region_block_invoke;
      v6 = &__block_descriptor_tmp_27;
      v7 = v0;
      if (!*(v0 + 272))
      {
        break;
      }

      if (dispatch_workloop_is_current())
      {
        v5(block);
LABEL_8:
        v0 = *(v0 + 144);
        if (!v0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        dispatch_async(*(v0 + 272), block);
        v0 = *(v0 + 144);
        if (!v0)
        {
          goto LABEL_9;
        }
      }
    }

    ___ZL20nw_mem_region_updateP13nw_mem_region_block_invoke(block);
    goto LABEL_8;
  }

LABEL_9:
  os_unfair_lock_unlock(&nw_mem_region_lock);
  v2 = nw_mem_region_update_source;
  if (nw_mem_region_update_source)
  {
    v3 = dispatch_time(0x8000000000000000, 13000000000);
    if (*v2)
    {
      dispatch_source_set_timer(*v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      *(v2 + 32) = v3;
      *(v2 + 40) = -1;
      if (*(v2 + 48) == 1 && *(v2 + 49) == 1)
      {
        nw_queue_source_run_timer(v2);
      }
    }

    nw_queue_activate_source(nw_mem_region_update_source);
  }
}

void ___ZL20nw_mem_region_updateP13nw_mem_region_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 384))
  {
    if (gLogDatapath == 1)
    {
      v37 = __nwlog_obj();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
      v1 = *(a1 + 32);
      if (v38)
      {
        v39 = *(v1 + 384);
        *buf = 136446466;
        *&buf[4] = "nw_mem_region_update_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v39;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s waking up %u waiters to reclaim", buf, 0x12u);
        v1 = *(a1 + 32);
      }
    }

    *(v1 + 384) = 0;
  }

  v2 = *(v1 + 328);
  if (v2 <= 1 << (flsll(3 * *(v1 + 16) + 4) - 2))
  {
    v3 = 1 << (flsll(3 * *(v1 + 16) + 4) - 2);
  }

  else
  {
    v3 = *(v1 + 328);
  }

  if (*(v1 + 336) >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v1 + 336);
  }

  v5 = *(v1 + 352) + 1;
  if (v4 < v5 >> 1 || v4 > 2 * v5)
  {
    if (v4)
    {
      if (!(v4 >> 60))
      {
        goto LABEL_17;
      }

      v44 = __nwlog_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "nw_calloc_type";
      v42 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s strict_calloc count * size would overflow", buf, 12, *buf, *&buf[8]);
    }

    else
    {
      v40 = __nwlog_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      *buf = 136446210;
      *&buf[4] = "nw_calloc_type";
      v42 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s strict_calloc called with count 0", buf, 12, *buf, *&buf[8]);
    }

    v46 = v42;
    if (__nwlog_should_abort(v42))
    {
      goto LABEL_65;
    }

    free(v46);
LABEL_17:
    v7 = malloc_type_calloc(v4, 0x10uLL, 0x1B7E0D9uLL);
    if (v7)
    {
      goto LABEL_23;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_calloc_type";
    *&buf[12] = 2048;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *&buf[14] = v4;
    v49 = 2048;
    *v50 = 16;
    LODWORD(v47) = 32;
    v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v47);
    if (!__nwlog_should_abort(v11))
    {
      free(v11);
      v7 = 0;
LABEL_23:
      if (v4)
      {
        if (v4 >= 0xA && (v4 ? (v12 = (v4 - 1) >> 32 == 0) : (v12 = 0), v12))
        {
          v13 = v4 & 0x1FFFFFFFCLL;
          v31 = (v7 + 32);
          v32 = 0uLL;
          v33 = v4 & 0x1FFFFFFFCLL;
          do
          {
            *&v54.val[1].f64[0] = v31 - 4;
            *&v54.val[1].f64[1] = v31 - 2;
            v34 = v31;
            v35 = v31 + 2;
            v54.val[0] = 0uLL;
            vst2q_f64(*&v54.val[1].f64[0], v54);
            vst2q_f64(v31, *&v32);
            v31 += 8;
            v33 -= 4;
          }

          while (v33);
          v14 = v4 & 0xFFFFFFFC;
          if (v4 == v13)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v15 = v14 + 1;
        do
        {
          v16 = &v7[16 * v13];
          *v16 = 0;
          *(v16 + 1) = v16;
          v13 = v15++;
        }

        while (v4 > v13);
      }

LABEL_32:
      v17 = *(v1 + 352);
      v18 = *(v1 + 360);
      *(v1 + 352) = v4 - 1;
      *(v1 + 360) = v7;
      ++*(v1 + 24);
      v19 = v17 + 1;
      if (v17 == -1)
      {
        v20 = 0;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        do
        {
          v22 = &v18[16 * v21];
          v23 = *v22;
          if (*v22)
          {
            v24 = *(v1 + 344);
            do
            {
              v25 = *v23;
              v26 = v23[1];
              if (*v23)
              {
                v27 = *v23;
              }

              else
              {
                v27 = &v18[16 * v21];
              }

              *(v27 + 1) = v26;
              *v26 = v25;
              v28 = &v23[3][(v23[3] >> v24) + (v23[3] >> (2 * v24))] & (v4 - 1);
              *v23 = 0;
              v29 = &v7[16 * v28];
              v30 = *(v29 + 1);
              v23[1] = v30;
              *v30 = v23;
              *(v29 + 1) = v23;
              ++v20;
              v23 = *v22;
            }

            while (*v22);
          }

          ++v21;
        }

        while (v19 > v21);
      }

      if (gLogDatapath == 1)
      {
        v43 = __nwlog_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          *&buf[4] = "nw_mem_region_hash_rescale";
          *&buf[12] = 2048;
          *&buf[14] = v1;
          v49 = 1024;
          *v50 = v19;
          *&v50[4] = 1024;
          *&v50[6] = v4;
          v51 = 1024;
          v52 = v20;
          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s nwr %p old_size %u new_size %u [%u moved]", buf, 0x28u);
        }
      }

      if (v18)
      {
        free(v18);
      }

      return;
    }

LABEL_65:
    __break(1u);
  }
}

unint64_t nw_mem_region_alloc(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v87 = *MEMORY[0x1E69E9840];
  v80 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = *(a1 + 368);
  v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if (v9)
  {
LABEL_6:
    nw_segment_freelist_remove(a1, v9, 0);
    v11 = *(v9 + 24);
    v12 = (*(a1 + 360) + 16 * (((v11 >> *(a1 + 344)) + v11 + (v11 >> (2 * *(a1 + 344)))) & *(a1 + 352)));
    v13 = *v12;
    *v9 = *v12;
    if (!v13)
    {
      v13 = v12;
    }

    v13[1] = v9;
    *v12 = v9;
    *(v9 + 8) = v12;
    v14 = *(a1 + 16) + 1;
    *(a1 + 16) = v14;
    if (v14 > *(a1 + 48))
    {
      *(a1 + 48) = v14;
    }

    *(a1 + 8) += *(a1 + 88);
    os_unfair_lock_lock(&nw_mem_region_lock);
    g_total_memory_usage += *(a1 + 88);
    if (g_total_memory_usage >= 0x4B000)
    {
      g_transaction_touched = 1;
      if (!g_process_transaction)
      {
        g_process_transaction = os_transaction_create();
        if (gLogDatapath == 1)
        {
          v73 = __nwlog_obj();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            v83 = "nw_mem_region_alloc";
            _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s os transaction enabled", buf, 0xCu);
          }
        }
      }
    }

    os_unfair_lock_unlock(&nw_mem_region_lock);
  }

  else
  {
    v79 = a1 + 160;
    p_superclass = NWConcrete_nw_path_evaluator.superclass;
    v17 = MEMORY[0x1E69E9A60];
    v78 = a5;
    while (1)
    {
      address = 0;
      v18 = *(p_superclass + 335);
      if (*(a1 + 96) - *(a1 + 16) < v18)
      {
        v18 = *(a1 + 96) - *(a1 + 16);
      }

      if (v18)
      {
        v19 = *(a1 + 312);
        if (v19)
        {
          v20 = 0;
          v21 = v18 - 1;
LABEL_25:
          v22 = 0;
          v23 = 0;
          while (1)
          {
            if (v19 - 1 == v22)
            {
              v24 = -*(a1 + 96) & 0x3F;
            }

            else
            {
              LOBYTE(v24) = 0;
            }

            v25 = *(*(a1 + 304) + 8 * v22) & (0xFFFFFFFFFFFFFFFFLL >> v24);
            if (v25)
            {
              break;
            }

            v22 = ++v23;
            if (v19 <= v23)
            {
              goto LABEL_46;
            }
          }

          v26 = __clz(__rbit64(v25));
          v27 = v26 | (v23 << 6);
          if (mach_vm_allocate(*v17, &address, *(a1 + 88), 1493172227))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v29 = *(a1 + 88);
              v30 = *(a1 + 96);
              *buf = 136447234;
              v83 = "nw_segment_freelist_grow";
              v84 = 2082;
              *v85 = v79;
              *&v85[8] = 1024;
              *&v85[10] = v29;
              *&v85[14] = 1024;
              *&v85[16] = v30;
              *&v85[20] = 1024;
              *&v85[22] = v26 | (v23 << 6);
              _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s: [%u * %u] mach_vm_allocate idx %u failed", buf, 0x28u);
            }

            goto LABEL_46;
          }

          if (*(a1 + 88) != ((*(a1 + 88) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]))
          {
            v41 = __nwlog_obj();
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            if (v42)
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            v83 = "nw_segment_create";
            v84 = 2082;
            *v85 = "VERIFY segsize == round_page(segsize) failed";
            LODWORD(v74) = 22;
            v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s %{public}s", buf, v74);
            if (__nwlog_should_abort(v44))
            {
              goto LABEL_99;
            }

            free(v44);
            v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

          v31 = *(a1 + 304);
          v32 = v23 & 0x3FFFFFF;
          v33 = 1 << v26;
          if ((*(v31 + 8 * v32) & v33) == 0)
          {
            v45 = __nwlog_obj();
            v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            if (v46)
            {
              v47 = 3;
            }

            else
            {
              v47 = 2;
            }

            v83 = "nw_segment_create";
            v84 = 2082;
            *v85 = "VERIFY bit_test(*bmap, i % BMAPSZ) failed";
            LODWORD(v74) = 22;
            v48 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s %{public}s", buf, v74);
            if (__nwlog_should_abort(v48))
            {
              goto LABEL_99;
            }

            free(v48);
            v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

          v34 = malloc_type_zone_calloc(g_slab_zone, 1uLL, 0x38uLL, 0x72A14DB3uLL);
          if (!v34)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v35 = gLogObj;
            v36 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v83 = "nw_segment_create";
            v84 = 2048;
            *v85 = 1;
            *&v85[8] = 2048;
            *&v85[10] = 56;
            LODWORD(v74) = 32;
            v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s malloc_zone_calloc(..., %zu, %zu) failed", buf, v74);
            if (__nwlog_should_abort(v38))
            {
              goto LABEL_99;
            }

            free(v38);
            v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

          v34[2] = a1;
          *(v34 + 10) = v27;
          *(v34 + 12) = 1;
          *(v31 + 8 * v32) &= ~v33;
          v39 = address;
          v34[3] = address;
          v40 = *(a1 + 88) + v39;
          v34[4] = v40;
          v17 = MEMORY[0x1E69E9A60];
          if (!v39 || !v40)
          {
            v51 = __nwlog_obj();
            v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
            *buf = 136446466;
            if (v52)
            {
              v53 = 3;
            }

            else
            {
              v53 = 2;
            }

            v83 = "nw_segment_freelist_grow";
            v84 = 2082;
            *v85 = "VERIFY sg->sg_start != 0 && sg->sg_end != 0 failed";
            LODWORD(v74) = 22;
            v54 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s %{public}s", buf, v74);
            if (__nwlog_should_abort(v54))
            {
              goto LABEL_99;
            }

            free(v54);
            v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          }

          *(v34 + 12) = 3;
          nw_segment_freelist_insert(a1, v34, 1);
          ++*(a1 + 32);
          if (BYTE1(v10[82].isa) == 1)
          {
            v49 = __nwlog_obj();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v50 = *(a1 + 96);
              *buf = 136446722;
              v83 = "nw_segment_freelist_grow";
              v84 = 1024;
              *v85 = v27 + 1;
              *&v85[4] = 2048;
              *&v85[6] = v50;
              _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s sg %u/%zu", buf, 0x1Cu);
            }
          }

LABEL_46:
          while (v20 != v21)
          {
            ++v20;
            v19 = *(a1 + 312);
            if (v19)
            {
              goto LABEL_25;
            }
          }

          v9 = *(a1 + 368);
          a5 = v78;
          p_superclass = (NWConcrete_nw_path_evaluator + 8);
          if (v9)
          {
            v5 = a4;
            v7 = a2;
            v6 = a3;
            goto LABEL_6;
          }
        }
      }

      ++*(a1 + 56);
      if (a5)
      {
        break;
      }

      ++*(a1 + 384);
    }

    if ((a5 & 2) == 0)
    {
      v11 = 0;
      v55 = 0;
      v7 = a2;
      goto LABEL_81;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    v58 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v83 = "nw_mem_region_alloc";
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v84 = 2082;
    *v85 = v79;
    *&v85[8] = 2048;
    *&v85[10] = a1;
    LODWORD(v74) = 32;
    v60 = _os_log_send_and_compose_impl(v59, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s %{public}s: nwr 0x%p unable to satisfy mandatory allocation\n", buf, v74);
    v7 = a2;
    if (__nwlog_should_abort(v60))
    {
LABEL_99:
      __break(1u);
    }

    free(v60);
    v9 = 0;
    v11 = 0;
    v6 = a3;
    v5 = a4;
  }

  if (gLogDatapath == 1)
  {
    v61 = __nwlog_obj();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v83 = "nw_mem_region_alloc";
      v84 = 2048;
      *v85 = a1;
      *&v85[8] = 2048;
      *&v85[10] = v9;
      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s nwr %p sg %p", buf, 0x20u);
    }
  }

  v15 = *(a1 + 392);
  if (v15)
  {
    if ((*(v15 + 240) & 0x80000000) != 0)
    {
      if ((gLogDatapath & 1) == 0 || (v69 = __nwlog_obj(), !os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG)))
      {
LABEL_74:
        v55 = *(a1 + 392);
        if (v55)
        {
          v55 = nw_mem_region_alloc(v55, 0, &v80, 0, 3);
        }

        goto LABEL_76;
      }

      v70 = *(v9 + 40);
      v71 = *(v9 + 24);
      v72 = *(v9 + 32);
      *buf = 136447234;
      v83 = "nw_mem_region_alloc";
      v84 = 1024;
      *v85 = v70;
      *&v85[4] = 2048;
      *&v85[6] = v9;
      *&v85[14] = 2048;
      *&v85[16] = v71;
      *&v85[24] = 2048;
      v86 = v72;
      v66 = "%{public}s   [%u] seg %p [0x%llu-0x%llu) mirrored";
      v67 = v69;
      v68 = 48;
LABEL_96:
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, v66, buf, v68);
      goto LABEL_74;
    }

    if ((gLogDatapath & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_92:
    v62 = __nwlog_obj();
    if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_74;
    }

    v63 = *(v9 + 40);
    v64 = *(v9 + 24);
    v65 = *(v9 + 32);
    *buf = 136446978;
    v83 = "nw_mem_region_alloc";
    v84 = 1024;
    *v85 = v63;
    *&v85[4] = 2048;
    *&v85[6] = v64;
    *&v85[14] = 2048;
    *&v85[16] = v65;
    v66 = "%{public}s   [%u] [0x%llu-0x%llu)";
    v67 = v62;
    v68 = 38;
    goto LABEL_96;
  }

  if (gLogDatapath)
  {
    goto LABEL_92;
  }

  v55 = 0;
LABEL_76:
  if (v11)
  {
    if (v6)
    {
      *v6 = v9;
    }

    if (v5)
    {
      *v5 = v80;
    }
  }

LABEL_81:
  if (v7)
  {
    *v7 = v55;
  }

  return v11;
}

void nw_segment_freelist_insert(void *a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == 3)
  {
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 136446466;
    v20 = "nw_segment_freelist_insert";
    v21 = 2082;
    v22 = "VERIFY sg->sg_state == NW_SEG_STATE_MAPPED failed";
    LODWORD(v18) = 22;
    v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s %{public}s", &v19, v18);
    if (__nwlog_should_abort(v11))
    {
      goto LABEL_24;
    }

    free(v11);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[36];
  if (v5)
  {
    v5(a2, a1[33]);
  }

LABEL_5:
  HIDWORD(v18) = 2;
  if (!mach_vm_purgable_control(*MEMORY[0x1E69E9A60], *(a2 + 24), 0, &v18 + 1))
  {
    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v19 = 136446466;
  v20 = "nw_segment_freelist_insert";
  v21 = 2082;
  v22 = "VERIFY result == 0 failed";
  LODWORD(v18) = 22;
  v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s %{public}s", &v19, v18);
  if (__nwlog_should_abort(v14))
  {
LABEL_24:
    __break(1u);
    return;
  }

  free(v14);
LABEL_6:
  *(a2 + 44) = 0x200000002;
  *a2 = 0;
  v6 = a1[47];
  *(a2 + 8) = v6;
  *v6 = a2;
  a1[47] = a2;
  v7 = a1[40] + 1;
  a1[40] = v7;
  if (v7 > a1[12])
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v19 = 136446466;
    v20 = "nw_segment_freelist_insert";
    v21 = 2082;
    v22 = "VERIFY nwr->nwr_seg_free_cnt <= nwr->nwr_seg_max_cnt failed";
    LODWORD(v18) = 22;
    v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s %{public}s", &v19, v18);
    if (!__nwlog_should_abort(v17))
    {
      free(v17);
      return;
    }

    goto LABEL_24;
  }
}

uint64_t *nw_segment_freelist_remove(void *a1, uint64_t *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[1];
  v7 = a1 + 47;
  if (*a2)
  {
    v7 = (*a2 + 8);
  }

  *v7 = v6;
  *v6 = v5;
  *a2 = 0;
  a2[1] = 0;
  v8 = a1[40];
  if (!v8)
  {
    v11 = a3;
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 136446466;
    v23 = "nw_segment_freelist_remove";
    v24 = 2082;
    v25 = "VERIFY nwr->nwr_seg_free_cnt != 0 failed";
    LODWORD(v21) = 22;
    v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s %{public}s", &v22, v21);
    result = __nwlog_should_abort(v14);
    if (result)
    {
      goto LABEL_28;
    }

    free(v14);
    v8 = a1[40];
    a3 = v11;
  }

  a1[40] = v8 - 1;
  if (a3)
  {
    *(a2 + 11) = 3;
    return a2;
  }

  if (*(a2 + 12) != 2)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 136446466;
    v23 = "nw_segment_freelist_remove";
    v24 = 2082;
    v25 = "VERIFY sg->sg_state == NW_SEG_STATE_UNMAPPED failed";
    LODWORD(v21) = 22;
    v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s %{public}s", &v22, v21);
    result = __nwlog_should_abort(v17);
    if (result)
    {
      goto LABEL_28;
    }

    free(v17);
  }

  HIDWORD(v21) = 0;
  if (!mach_vm_purgable_control(*MEMORY[0x1E69E9A60], a2[3], 0, &v21 + 1))
  {
    v9 = a1[35];
    if (!v9)
    {
LABEL_9:
      *(a2 + 44) = 0x300000001;
      return a2;
    }

LABEL_8:
    v9(a2, a1[33]);
    goto LABEL_9;
  }

  v18 = __nwlog_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v22 = 136446466;
  v23 = "nw_segment_freelist_remove";
  v24 = 2082;
  v25 = "VERIFY result == 0 failed";
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s %{public}s", &v22, v21);
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v9 = a1[35];
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_28:
  __break(1u);
  return result;
}

void nw_mem_region_free(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 360) + 16 * (((a2 >> *(a1 + 344)) + a2 + (a2 >> (2 * *(a1 + 344)))) & *(a1 + 352));
  v7 = *v6;
  while (v7)
  {
    v8 = v7;
    v7 = *v7;
    if (*(v8 + 24) == a2)
    {
      v9 = *(v8 + 8);
      if (v7)
      {
        v6 = v7;
      }

      *(v6 + 8) = v9;
      *v9 = v7;
      nw_segment_freelist_insert(a1, v8, 0);
      goto LABEL_12;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  *buf = 136446466;
  v33 = "nw_mem_region_free";
  v34 = 2082;
  *v35 = "VERIFY sg != NULL failed";
  v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s %{public}s", buf, 22);
  if (__nwlog_should_abort(v12))
  {
    goto LABEL_40;
  }

  free(v12);
  nw_segment_freelist_insert(a1, 0, 0);
  v8 = 0;
LABEL_12:
  v13 = *(a1 + 16) - 1;
  *(a1 + 8) -= *(a1 + 88);
  *(a1 + 16) = v13;
  ++*(a1 + 40);
  os_unfair_lock_lock(&nw_mem_region_lock);
  v14 = g_total_memory_usage - *(a1 + 88);
  g_total_memory_usage = v14;
  if (g_process_transaction)
  {
    if (v14 <= 0x8000)
    {
      os_release(g_process_transaction);
      g_process_transaction = 0;
      g_transaction_touched = 0;
      if (gLogDatapath == 1)
      {
        v27 = __nwlog_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v33 = "nw_mem_region_free";
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s os transaction disabled", buf, 0xCu);
        }
      }
    }
  }

  os_unfair_lock_unlock(&nw_mem_region_lock);
  if (gLogDatapath == 1)
  {
    v23 = __nwlog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v33 = "nw_mem_region_free";
      v34 = 2048;
      *v35 = a1;
      *&v35[8] = 2048;
      *&v35[10] = v8;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s nwr %p sg %p", buf, 0x20u);
    }
  }

  v15 = *(a1 + 392);
  if (!v15)
  {
    if ((gLogDatapath & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_21:
    v16 = __nwlog_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v17 = *(v8 + 40);
    v18 = *(a1 + 88) + a2;
    *buf = 136446978;
    v33 = "nw_mem_region_free";
    v34 = 1024;
    *v35 = v17;
    *&v35[4] = 2048;
    *&v35[6] = a2;
    *&v35[14] = 2048;
    *&v35[16] = v18;
    v19 = "%{public}s   [%u] [%p-%p)";
    v20 = v16;
    v21 = 38;
    goto LABEL_39;
  }

  if ((*(v15 + 240) & 0x80000000) == 0)
  {
    if ((gLogDatapath & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (gLogDatapath)
  {
    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(v8 + 40);
      v30 = *(a1 + 88) + a2;
      *buf = 136447234;
      v33 = "nw_mem_region_free";
      v34 = 1024;
      *v35 = v29;
      *&v35[4] = 2048;
      *&v35[6] = v8;
      *&v35[14] = 2048;
      *&v35[16] = a2;
      v36 = 2048;
      v37 = v30;
      v19 = "%{public}s   [%u] sg %p [%p-%p) mirrored";
      v20 = v28;
      v21 = 48;
LABEL_39:
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
    }
  }

LABEL_24:
  v22 = *(a1 + 392);
  if (v22)
  {
    nw_mem_region_free(v22, a3, 0);
  }

LABEL_26:
  if (!*(a1 + 384))
  {
    return;
  }

  v24 = __nwlog_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

  *buf = 136446466;
  v33 = "nw_mem_region_free";
  v34 = 2082;
  *v35 = "VERIFY nwr->nwr_seg_waiters == 0 failed";
  LODWORD(v31) = 22;
  v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s %{public}s", buf, v31);
  if (!__nwlog_should_abort(v26))
  {
    free(v26);
    return;
  }

LABEL_40:
  __break(1u);
}