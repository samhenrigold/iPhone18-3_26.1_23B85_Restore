uint64_t nw_protocol_webtransport_session_get_remote_endpoint(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[48];
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v7 = "%{public}s called with null webtransport_session";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v7 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_get_remote_endpoint";
    v7 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_get_parameters(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[46];
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_get_parameters";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_parameters";
        v7 = "%{public}s called with null webtransport_session";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_parameters";
        v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_parameters";
        v7 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_session_get_parameters";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_webtransport_session_get_parameters";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_parameters";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_protocol_webtransport_session_get_parameters";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_webtransport_session_get_parameters";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v16 = "nw_protocol_webtransport_session_get_parameters";
    v7 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_finalize_output_frames";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_session_finalize_output_frames";
      v10 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
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
          v19 = "nw_protocol_webtransport_session_finalize_output_frames";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v7)
        {
          return 0;
        }

LABEL_36:
        free(v7);
        return 0;
      }

      if (!v13)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_session_finalize_output_frames";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_session_finalize_output_frames";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v4 = handle[123];
        *buf = 136446978;
        v19 = "nw_protocol_webtransport_session_finalize_output_frames";
        v20 = 2082;
        v21 = (handle + 124);
        v22 = 2080;
        v23 = " ";
        v24 = 1024;
        v25 = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called, ignoring", buf, 0x26u);
      }
    }

    return 0;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_webtransport_session_finalize_output_frames";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_finalize_output_frames";
    v10 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (!os_log_type_enabled(v8, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_finalize_output_frames";
    v10 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_finalize_output_frames";
    v10 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_webtransport_session_finalize_output_frames";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_output_frames";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v11, &type, &v20))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_webtransport_session_get_output_frames";
      v14 = "%{public}s called with null protocol";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v17 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v23 = "nw_protocol_webtransport_session_get_output_frames";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v11)
        {
          return 0;
        }

LABEL_36:
        free(v11);
        return 0;
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_webtransport_session_get_output_frames";
      v14 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_webtransport_session_get_output_frames";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v8 = handle[123];
        *buf = 136446978;
        v23 = "nw_protocol_webtransport_session_get_output_frames";
        v24 = 2082;
        v25 = (handle + 124);
        v26 = 2080;
        v27 = " ";
        v28 = 1024;
        v29 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called, ignoring", buf, 0x26u);
      }
    }

    return 0;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_webtransport_session_get_output_frames";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v11, &type, &v20))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_output_frames";
    v14 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v20 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_output_frames";
    v14 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v18 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type;
  v19 = os_log_type_enabled(v12, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_output_frames";
    v14 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v19)
  {
    *buf = 136446466;
    v23 = "nw_protocol_webtransport_session_get_output_frames";
    v24 = 2082;
    v25 = v18;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v11)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_input_frames";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v11, &type, &v20))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_webtransport_session_get_input_frames";
      v14 = "%{public}s called with null protocol";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v17 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v23 = "nw_protocol_webtransport_session_get_input_frames";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v11)
        {
          return 0;
        }

LABEL_36:
        free(v11);
        return 0;
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_webtransport_session_get_input_frames";
      v14 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v23 = "nw_protocol_webtransport_session_get_input_frames";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v8 = handle[123];
        *buf = 136446978;
        v23 = "nw_protocol_webtransport_session_get_input_frames";
        v24 = 2082;
        v25 = (handle + 124);
        v26 = 2080;
        v27 = " ";
        v28 = 1024;
        v29 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called, ignoring", buf, 0x26u);
      }
    }

    return 0;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_webtransport_session_get_input_frames";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v11, &type, &v20))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_input_frames";
    v14 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v20 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_input_frames";
    v14 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v18 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type;
  v19 = os_log_type_enabled(v12, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_get_input_frames";
    v14 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v19)
  {
    *buf = 136446466;
    v23 = "nw_protocol_webtransport_session_get_input_frames";
    v24 = 2082;
    v25 = v18;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v11)
  {
    goto LABEL_36;
  }

  return 0;
}

void nw_protocol_webtransport_session_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, type, &v30))
    {
      goto LABEL_54;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_output_available";
      v20 = "%{public}s called with null protocol";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type[0];
      v25 = os_log_type_enabled(v18, type[0]);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_output_available";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v17)
        {
          return;
        }

LABEL_55:
        free(v17);
        return;
      }

      if (!v25)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_output_available";
      v20 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type[0];
      if (!os_log_type_enabled(v18, type[0]))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_output_available";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_53:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_54;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[580] & 2) == 0 && gLogDatapath == 1)
    {
      v22 = __nwlog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_webtransport_session_output_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v37 = " ";
        LOWORD(v38) = 1024;
        *(&v38 + 2) = v23;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(handle + 119) != 4 && (handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(handle + 123);
        v6 = *(handle + 119);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_webtransport_session_output_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v37 = " ";
        LOWORD(v38) = 1024;
        *(&v38 + 2) = v5;
        HIWORD(v38) = 1024;
        LODWORD(v39) = v6;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> output_available called in state %d", buf, 0x2Cu);
      }
    }

    v7 = *(handle + 120);
    if (v7 == 1)
    {
      v15 = *(handle + 56);
      if (v15)
      {
        nw_protocol_output_available(v15, a1);
      }
    }

    else if (!v7)
    {
      v8 = *(handle + 25);
      if (v8 && !_nw_array_is_empty(v8))
      {
        v9 = _nw_array_create();
        v10 = *(handle + 25);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke;
        v37 = &__block_descriptor_tmp_50_36984;
        v38 = handle;
        v39 = v9;
        if (v10)
        {
          _nw_array_apply(v10, buf);
        }

        *type = MEMORY[0x1E69E9820];
        v32 = 0x40000000;
        v33 = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_51;
        v34 = &__block_descriptor_tmp_52;
        v35 = handle;
        if (v9)
        {
          _nw_array_apply(v9, type);
          os_release(v9);
        }
      }

      v11 = *(handle + 23);
      *(handle + 23) = -1;
      v12 = *(handle + 56);
      if (v12)
      {
        nw_protocol_output_available(v12, a1);
      }

      v13 = *(handle + 24);
      if (v13)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 0x40000000;
        v29[2] = ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke;
        v29[3] = &__block_descriptor_tmp_63_37284;
        v29[4] = v11;
        v29[5] = a1;
        nw_hash_table_apply(v13, v29);
        v14 = *(handle + 24);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 0x40000000;
        v28[2] = ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke_2;
        v28[3] = &__block_descriptor_tmp_64_37285;
        v28[4] = v11;
        v28[5] = a1;
        nw_hash_table_apply(v14, v28);
      }
    }

    return;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_webtransport_session_output_available";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null webtransport_session", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v17, type, &v30))
  {
    goto LABEL_54;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v19 = type[0];
    if (!os_log_type_enabled(v18, type[0]))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v20 = "%{public}s called with null webtransport_session";
    goto LABEL_53;
  }

  if (v30 != 1)
  {
    v18 = __nwlog_obj();
    v19 = type[0];
    if (!os_log_type_enabled(v18, type[0]))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v20 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_53;
  }

  v26 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v19 = type[0];
  v27 = os_log_type_enabled(v18, type[0]);
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v20 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_53;
  }

  if (v27)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    *&buf[12] = 2082;
    *&buf[14] = v26;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v26);
  if (v17)
  {
    goto LABEL_55;
  }
}

uint64_t ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (*(object + 64) > *(a1 + 32))
  {
    nw_protocol_output_available(object, *(a1 + 40));
  }

  return 1;
}

uint64_t ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (*(object + 64) <= *(a1 + 32))
  {
    nw_protocol_output_available(object, *(a1 + 40));
  }

  return 1;
}

void nw_protocol_webtransport_session_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v72 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v106[0]) = 0;
    if (!__nwlog_fault(v73, type, v106))
    {
      goto LABEL_209;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v106[0]) != 1)
      {
        v74 = __nwlog_obj();
        v75 = type[0];
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v76 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_208;
      }

      backtrace_string = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type[0];
      v84 = os_log_type_enabled(v74, type[0]);
      if (!backtrace_string)
      {
        if (!v84)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v76 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_208;
      }

      if (v84)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_209;
    }

    v74 = __nwlog_obj();
    v75 = type[0];
    if (!os_log_type_enabled(v74, type[0]))
    {
      goto LABEL_209;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v76 = "%{public}s called with null protocol";
LABEL_208:
    _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
    goto LABEL_209;
  }

  handle = a1->handle;
  if (!handle)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v106[0]) = 0;
    if (!__nwlog_fault(v73, type, v106))
    {
      goto LABEL_209;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v106[0]) != 1)
      {
        v74 = __nwlog_obj();
        v75 = type[0];
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v76 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_208;
      }

      v86 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type[0];
      v87 = os_log_type_enabled(v74, type[0]);
      if (!v86)
      {
        if (!v87)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v76 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_208;
      }

      if (v87)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v86;
        v88 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_191:
        _os_log_impl(&dword_181A37000, v74, v75, v88, buf, 0x16u);
      }

LABEL_192:
      free(v86);
      if (!v73)
      {
        return;
      }

LABEL_210:
      free(v73);
      return;
    }

    v74 = __nwlog_obj();
    v75 = type[0];
    if (!os_log_type_enabled(v74, type[0]))
    {
      goto LABEL_209;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v76 = "%{public}s called with null webtransport_session";
    goto LABEL_208;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v78 = __nwlog_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      v79 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v115 = " ";
      LOWORD(v116) = 1024;
      *(&v116 + 2) = v79;
      _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if (*(handle + 120) > 1u)
  {
    return;
  }

  v3 = *(handle + 4);
  if (!v3)
  {
    v85 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s called with null output_handler", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v106[0]) = 0;
    if (!__nwlog_fault(v73, type, v106))
    {
      goto LABEL_209;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type[0];
      if (!os_log_type_enabled(v74, type[0]))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v76 = "%{public}s called with null output_handler";
      goto LABEL_208;
    }

    if (LOBYTE(v106[0]) != 1)
    {
      v74 = __nwlog_obj();
      v75 = type[0];
      if (!os_log_type_enabled(v74, type[0]))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v76 = "%{public}s called with null output_handler, backtrace limit exceeded";
      goto LABEL_208;
    }

    v86 = __nw_create_backtrace_string();
    v74 = __nwlog_obj();
    v75 = type[0];
    v90 = os_log_type_enabled(v74, type[0]);
    if (!v86)
    {
      if (!v90)
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v76 = "%{public}s called with null output_handler, no backtrace";
      goto LABEL_208;
    }

    if (v90)
    {
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      *&buf[12] = 2082;
      *&buf[14] = v86;
      v88 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
      goto LABEL_191;
    }

    goto LABEL_192;
  }

  v4 = v3[3];
  if (!v4 || !*(v4 + 80))
  {
    if ((handle[580] & 2) == 0)
    {
      v80 = __nwlog_obj();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v115 = " ";
        LOWORD(v116) = 1024;
        *(&v116 + 2) = v81;
        _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
      }
    }

    v82 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s output handler has no get_input_frames callback", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v106[0]) = 0;
    if (__nwlog_fault(v73, type, v106))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v74 = __nwlog_obj();
        v75 = type[0];
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v76 = "%{public}s output handler has no get_input_frames callback";
        goto LABEL_208;
      }

      if (LOBYTE(v106[0]) != 1)
      {
        v74 = __nwlog_obj();
        v75 = type[0];
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v76 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
        goto LABEL_208;
      }

      v86 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type[0];
      v89 = os_log_type_enabled(v74, type[0]);
      if (!v86)
      {
        if (!v89)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v76 = "%{public}s output handler has no get_input_frames callback, no backtrace";
        goto LABEL_208;
      }

      if (v89)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = v86;
        v88 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
        goto LABEL_191;
      }

      goto LABEL_192;
    }

LABEL_209:
    if (!v73)
    {
      return;
    }

    goto LABEL_210;
  }

  while ((*(handle + 119) | 2) == 3)
  {
    if (!nw_protocol_get_input_frames(v3, handle, 0, 0, 0xFFFFFFFFLL, (handle + 120)))
    {
      return;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v115 = __Block_byref_object_copy__36471;
    v116 = __Block_byref_object_dispose__36472;
    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v117 = nw_protocol_copy_http_definition_http_definition;
    LOBYTE(v118) = v118 | 1;
    *type = MEMORY[0x1E69E9820];
    v95 = 0x40000000;
    v96 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
    v97 = &unk_1E6A31940;
    v98 = buf;
    v99 = handle;
    v100 = handle + 120;
    v5 = *(handle + 15);
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 32);
      v7 = (v96)(type);
      v5 = v6;
    }

    while ((v7 & 1) != 0);
    _Block_object_dispose(buf, 8);
    if (v118)
    {
      if (v117)
      {
        os_release(v117);
      }
    }
  }

  v8 = *(handle + 120);
  if (v8 == 1)
  {
    nw_webtransport_http3_handle_input(handle);
    v11 = *(handle + 56);
    if (v11 && *(v11 + 72))
    {
      nw_protocol_input_available(*(v11 + 48), v11);
    }
  }

  else if (!v8)
  {
    if ((handle[580] & 2) == 0 && gLogDatapath == 1)
    {
      v91 = __nwlog_obj();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        v92 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_http2_handle_capsules";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v115 = " ";
        LOWORD(v116) = 1024;
        *(&v116 + 2) = v92;
        _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(handle + 119) == 4)
    {
      v9 = (handle + 96);
      v10 = (handle + 136);
      while (1)
      {
        capsule = nw_http_capsule_framer_read_capsule(handle + 12, handle);
        if (!capsule && !*v10)
        {
          return;
        }

        if (*(handle + 57))
        {
          goto LABEL_36;
        }

        v23 = *v9;
        if (*v9 == -1)
        {
LABEL_103:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v40 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
          }

          goto LABEL_36;
        }

        v24 = *(handle + 13) != -1 && *(handle + 14) == 0;
        if (v23 <= 16770303)
        {
          if ((v23 - 16770048) < 6 || (v23 + 1) <= 4 && v23)
          {
            goto LABEL_103;
          }
        }

        else if ((v23 - 420171065) <= 9 && ((1 << (v23 - 57)) & 0x2EF) != 0)
        {
          v112 = -1;
          if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v112))
          {
            stream = nw_webtransport_session_get_stream(handle, v112);
            if (stream)
            {
              goto LABEL_96;
            }

            if ((v23 - 420171067) > 1)
            {
              goto LABEL_132;
            }

            v52 = v112;
            v53 = handle[580];
            if (v112 >> 60 || ((v112 ^ v53) & 1) == 0)
            {
              if ((v53 & 2) == 0)
              {
                v58 = __nwlog_obj();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v115 = " ";
                  LOWORD(v116) = 1024;
                  *(&v116 + 2) = v59;
                  v60 = v58;
                  v61 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                  goto LABEL_131;
                }
              }

LABEL_132:
              if ((handle[580] & 2) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v62 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v63 = *(handle + 123);
                  *buf = 136447490;
                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v115 = " ";
                  LOWORD(v116) = 1024;
                  *(&v116 + 2) = v63;
                  HIWORD(v116) = 2048;
                  v117 = v112;
                  v118 = 2048;
                  v119 = v23;
                  _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                }
              }

              goto LABEL_36;
            }

            v54 = *(handle + 53);
            if (!v54 || (v55 = *v54) == 0 || !*v55)
            {
              if ((v53 & 2) == 0)
              {
                v64 = __nwlog_obj();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  v65 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v115 = " ";
                  LOWORD(v116) = 1024;
                  *(&v116 + 2) = v65;
                  v60 = v64;
                  v61 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_131:
                  _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, v61, buf, 0x26u);
                }
              }

              goto LABEL_132;
            }

            v56 = _nw_parameters_copy();
            handle[580] |= 0x20u;
            *(handle + 22) = v52;
            object = v56;
            v57 = (***(handle + 53))(*(handle + 53), *(handle + 48));
            *(handle + 22) = -1;
            handle[580] &= ~0x20u;
            if (v57)
            {
              stream = nw_webtransport_session_get_stream(handle, v52);
            }

            else
            {
              stream = 0;
            }

            if (object)
            {
              v66 = stream;
              os_release(object);
              stream = v66;
            }

            if (!stream)
            {
              goto LABEL_132;
            }

            if (*(stream + 46) != 3)
            {
LABEL_96:
              *(handle + 57) = stream;
              goto LABEL_36;
            }

            if ((handle[580] & 2) != 0)
            {
              goto LABEL_36;
            }

            v67 = __nwlog_obj();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            v68 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v115 = " ";
            LOWORD(v116) = 1024;
            *(&v116 + 2) = v68;
            HIWORD(v116) = 2048;
            v117 = v112;
            v43 = v67;
            v44 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
          }

          else
          {
            if (!v24)
            {
              goto LABEL_36;
            }

            if ((handle[580] & 2) != 0)
            {
              goto LABEL_36;
            }

            v41 = __nwlog_obj();
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            v42 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v115 = " ";
            LOWORD(v116) = 1024;
            *(&v116 + 2) = v42;
            HIWORD(v116) = 2048;
            v117 = v23;
            v43 = v41;
            v44 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
          }

          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x30u);
        }

        else if ((v23 - 16770304) < 4)
        {
          goto LABEL_103;
        }

LABEL_36:
        v16 = *(handle + 12);
        if ((handle[580] & 2) == 0 && gLogDatapath == 1)
        {
          v69 = __nwlog_obj();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            v70 = *(handle + 123);
            v71 = *(handle + 13);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_http2_handle_capsules";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v115 = " ";
            LOWORD(v116) = 1024;
            *(&v116 + 2) = v70;
            HIWORD(v116) = 2048;
            v117 = v16;
            v118 = 2048;
            v119 = v71;
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
          }
        }

        if (v16 > 16770303)
        {
          if (v16 <= 420171064)
          {
            if ((v16 - 16770304) >= 4)
            {
              if (v16 == 420171064)
              {
                v17 = *v10;
                if (*v10)
                {
                  *(v17 + 40) = &v112;
                  v18 = *(handle + 18);
                  v112 = v17;
                  v113 = v18;
                  *(handle + 17) = 0;
                  *(handle + 18) = v10;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                  v115 = &__block_descriptor_tmp_21_49595;
                  LOBYTE(v116) = 1;
                  do
                  {
                    v19 = v112;
                    if (!v112)
                    {
                      break;
                    }

                    v20 = *(v112 + 32);
                    v21 = *(v112 + 40);
                    v22 = (v20 + 40);
                    if (!v20)
                    {
                      v22 = &v113;
                    }

                    *v22 = v21;
                    *v21 = v20;
                    *(v19 + 32) = 0;
                    *(v19 + 40) = 0;
                  }

                  while (((*&buf[16])(buf) & 1) != 0);
                }
              }

              goto LABEL_66;
            }

LABEL_64:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v29 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2048;
              *&buf[14] = v16;
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
            }

            goto LABEL_66;
          }

          if ((v16 - 420171065) >= 2)
          {
            if ((v16 - 420171067) >= 2)
            {
              goto LABEL_66;
            }

            v25 = *(handle + 57);
            v30 = v16 == 420171068 && capsule;
            v106[0] = MEMORY[0x1E69E9820];
            v106[1] = 0x40000000;
            v107 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
            v108 = &__block_descriptor_tmp_34_36485;
            v111 = v30;
            v109 = handle + 96;
            v110 = v25;
            v31 = *(handle + 17);
            do
            {
              if (!v31)
              {
                break;
              }

              v32 = *(v31 + 32);
              v33 = (v107)(v106);
              v31 = v32;
            }

            while ((v33 & 1) != 0);
            if (v30)
            {
              nw_protocol_input_finished(v25, handle);
              goto LABEL_66;
            }

            goto LABEL_63;
          }

          if (capsule)
          {
            v34 = *(handle + 57);
            v112 = -1;
            if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v112))
            {
              if (!v34 || (*(v34 + 276) & 0x10) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v35 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  if (v34)
                  {
                    v36 = (v34 + 192);
                  }

                  else
                  {
                    v36 = "";
                  }

                  v37 = " ";
                  if (!v34)
                  {
                    v37 = "";
                  }

                  v38 = *(v34 + 88);
                  if (v38)
                  {
                    v12 = *(v38 + 492);
                  }

                  else
                  {
                    v12 = -1;
                  }

                  v13 = *(v34 + 64);
                  *buf = 136448002;
                  *&buf[4] = "nw_webtransport_http2_handle_capsules";
                  *&buf[12] = 2082;
                  *&buf[14] = v36;
                  *&buf[22] = 2080;
                  v115 = v37;
                  LOWORD(v116) = 1024;
                  *(&v116 + 2) = v12;
                  HIWORD(v116) = 2048;
                  v117 = v13;
                  v118 = 2048;
                  v119 = v16;
                  v120 = 2048;
                  v121 = v13;
                  v122 = 2048;
                  v123 = v112;
                  _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                }
              }

              nw_protocol_webtransport_stream_error(v34, handle);
              nw_protocol_webtransport_stream_disconnect(v34, v14);
            }

            else if ((handle[580] & 2) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v45 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v46 = *(handle + 123);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v115 = " ";
                LOWORD(v116) = 1024;
                *(&v116 + 2) = v46;
                HIWORD(v116) = 2048;
                v117 = v16;
                _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
              }
            }

LABEL_32:
            *(handle + 57) = 0;
            nw_http_capsule_complete_capsule((handle + 96));
          }
        }

        else
        {
          if (v16 <= 16770047)
          {
            if ((v16 - 1) < 3 || v16 == -1)
            {
              goto LABEL_64;
            }

            if (!v16)
            {
              v25 = *(handle + 56);
              if (!v25)
              {
                v26 = *v10;
LABEL_113:
                if (v26)
                {
                  *(v26 + 40) = &v112;
                  v47 = *(handle + 18);
                  v112 = v26;
                  v113 = v47;
                  *(handle + 17) = 0;
                  *(handle + 18) = v10;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                  v115 = &__block_descriptor_tmp_21_49595;
                  LOBYTE(v116) = 1;
                  do
                  {
                    v48 = v112;
                    if (!v112)
                    {
                      break;
                    }

                    v49 = *(v112 + 32);
                    v50 = *(v112 + 40);
                    v51 = (v49 + 40);
                    if (!v49)
                    {
                      v51 = &v113;
                    }

                    *v51 = v50;
                    *v50 = v49;
                    *(v48 + 32) = 0;
                    *(v48 + 40) = 0;
                  }

                  while (((*&buf[16])(buf) & 1) != 0);
                }

                goto LABEL_66;
              }

              v26 = *v10;
              if (*(v25 + 184) == 3)
              {
                goto LABEL_113;
              }

              v101[0] = MEMORY[0x1E69E9820];
              v101[1] = 0x40000000;
              v102 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
              v103 = &__block_descriptor_tmp_35_36486;
              v104 = handle + 96;
              v105 = v25;
              do
              {
                if (!v26)
                {
                  break;
                }

                v27 = *(v26 + 32);
                v28 = (v102)(v101);
                v26 = v27;
              }

              while ((v28 & 1) != 0);
LABEL_63:
              nw_protocol_input_available(v25, handle);
            }
          }

          else if ((v16 - 16770048) < 6)
          {
            goto LABEL_64;
          }

LABEL_66:
          if (capsule)
          {
            goto LABEL_32;
          }
        }
      }
    }
  }
}

void nw_protocol_webtransport_session_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_error";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_session_error";
      v8 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v16 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_protocol_webtransport_session_error";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v5)
        {
          return;
        }

LABEL_38:
        free(v5);
        return;
      }

      if (!v16)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_session_error";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_session_error";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v10 = a3;
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      a3 = v10;
      if (v13)
      {
        v14 = handle[123];
        *buf = 136447234;
        v22 = "nw_protocol_webtransport_session_error";
        v23 = 2082;
        v24 = (handle + 124);
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v14;
        v29 = 2048;
        v30 = a2;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called, with other_protocol: %p", buf, 0x30u);
        a3 = v10;
      }
    }

    handle[121] = a3;
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_session_error";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_error";
    v8 = "%{public}s called with null webtransport_session";
    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_error";
    v8 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_36;
  }

  v17 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v18 = os_log_type_enabled(v6, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v22 = "nw_protocol_webtransport_session_error";
    v8 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_36;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_protocol_webtransport_session_error";
    v23 = 2082;
    v24 = v17;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v5)
  {
    goto LABEL_38;
  }
}

void nw_protocol_webtransport_session_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v214 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v83 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_disconnected";
    v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v200[0]) = 0;
    if (!__nwlog_fault(v84, type, v200))
    {
      goto LABEL_180;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v87 = "%{public}s called with null protocol";
      goto LABEL_179;
    }

    if (LOBYTE(v200[0]) != 1)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v87 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_179;
    }

    backtrace_string = __nw_create_backtrace_string();
    v85 = __nwlog_obj();
    v86 = type[0];
    v93 = os_log_type_enabled(v85, type[0]);
    if (!backtrace_string)
    {
      if (!v93)
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v87 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_179;
    }

    if (v93)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_180;
  }

  handle = a1->handle;
  if (!handle)
  {
    v88 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_disconnected";
    v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v200[0]) = 0;
    if (!__nwlog_fault(v84, type, v200))
    {
      goto LABEL_180;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v87 = "%{public}s called with null webtransport_session";
      goto LABEL_179;
    }

    if (LOBYTE(v200[0]) != 1)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (!os_log_type_enabled(v85, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v87 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_179;
    }

    v94 = __nw_create_backtrace_string();
    v85 = __nwlog_obj();
    v86 = type[0];
    v95 = os_log_type_enabled(v85, type[0]);
    if (!v94)
    {
      if (!v95)
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v87 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_179;
    }

    if (v95)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v94;
      v96 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_161:
      _os_log_impl(&dword_181A37000, v85, v86, v96, buf, 0x16u);
    }

LABEL_162:
    free(v94);
    if (!v84)
    {
      return;
    }

LABEL_181:
    free(v84);
    return;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v90 = __nwlog_obj();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      v91 = *(handle + 123);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v208 = " ";
      *v209 = 1024;
      *&v209[2] = v91;
      *&v209[6] = 2048;
      *&v209[8] = a2;
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called, with other_protocol: %p", buf, 0x30u);
    }
  }

  if (*(handle + 119) == 5)
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v4 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v208 = " ";
        *v209 = 1024;
        *&v209[2] = v4;
        v5 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v6 = v3;
        v7 = OS_LOG_TYPE_INFO;
LABEL_9:
        _os_log_impl(&dword_181A37000, v6, v7, v5, buf, 0x26u);
        return;
      }
    }

    return;
  }

  v8 = *(handle + 121);
  if (v8)
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v10 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v208 = " ";
        *v209 = 1024;
        *&v209[2] = v10;
        *&v209[6] = 1024;
        *&v209[8] = v8;
        v11 = "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d";
        v12 = v9;
        v13 = 44;
LABEL_17:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
      }
    }
  }

  else if ((handle[580] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v15 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v208 = " ";
      *v209 = 1024;
      *&v209[2] = v15;
      v11 = "%{public}s %{public}s%s<i%u> Closing webtransport session without error";
      v12 = v14;
      v13 = 38;
      goto LABEL_17;
    }
  }

  v16 = *(handle + 119);
  *(handle + 119) = 5;
  v17 = *(handle + 24);
  if (v17)
  {
    v185[0] = MEMORY[0x1E69E9820];
    v185[1] = 0x40000000;
    v185[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
    v185[3] = &__block_descriptor_tmp_24_36439;
    v186 = v8;
    nw_hash_table_apply(v17, v185);
  }

  v18 = *(handle + 56);
  if (v18)
  {
    v19 = *(v18 + 88);
    if (v8)
    {
      nw_protocol_error(*(v18 + 48), *(handle + 56));
    }

    nw_protocol_disconnect(v18, v19);
  }

  v20 = *(handle + 42);
  if (v20)
  {
    if (v8)
    {
      do
      {
        v21 = *(v20 + 112);
        v22 = *(v20 + 88);
        nw_protocol_error(*(v20 + 48), v20);
        nw_protocol_disconnect(v20, v22);
        v20 = v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v23 = *(v20 + 112);
        nw_protocol_disconnect(v20, *(v20 + 88));
        v20 = v23;
      }

      while (v23);
    }
  }

  v24 = *(handle + 55);
  if (v24)
  {
    v25 = *(v24 + 88);
    if (v8)
    {
      nw_protocol_error(*(v24 + 48), *(handle + 55));
    }

    nw_protocol_disconnect(v24, v25);
  }

  if (*(handle + 4))
  {
    nw_protocol_remove_instance(handle);
    nw_protocol_disconnect(*(handle + 4), handle);
  }

  v26 = *(handle + 50);
  if (!v26)
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(v26);
  if (!webtransport_state)
  {
    return;
  }

  v28 = webtransport_state;
  if (v16 != 4 && v16 != 1)
  {
    return;
  }

  v29 = *(webtransport_state + 16);
  *(webtransport_state + 16) = v29 - 1;
  if (!v29)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = v28[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v208 = 1;
    *v209 = 2048;
    *&v209[2] = v30;
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v200[0]) = 0;
    if (__nwlog_fault(v31, type, v200))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v34 = v28[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v208 = 1;
          *v209 = 2048;
          *&v209[2] = v34;
          v35 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_53:
          _os_log_impl(&dword_181A37000, v32, v33, v35, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v200[0]) == 1)
      {
        v36 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type[0];
        v37 = os_log_type_enabled(v32, type[0]);
        if (v36)
        {
          if (v37)
          {
            v38 = v28[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v208 = 1;
            *v209 = 2048;
            *&v209[2] = v38;
            *&v209[10] = 2082;
            *&v209[12] = v36;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v36);
          goto LABEL_54;
        }

        if (v37)
        {
          v40 = v28[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v208 = 1;
          *v209 = 2048;
          *&v209[2] = v40;
          v35 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_53;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          v39 = v28[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v208 = 1;
          *v209 = 2048;
          *&v209[2] = v39;
          v35 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_53;
        }
      }
    }

LABEL_54:
    if (v31)
    {
      free(v31);
    }

    v28[2] = 0;
  }

  if (handle[580])
  {
    return;
  }

  v41 = *v28;
  if (!*v28)
  {
    return;
  }

  v42 = *(v41 + 352);
  v43 = *(v41 + 360);
  v44 = (v42 + 360);
  if (!v42)
  {
    v44 = v28 + 1;
  }

  *v44 = v43;
  *v43 = v42;
  *(v41 + 352) = 0;
  *(v41 + 360) = 0;
  v45 = *(v41 + 32);
  if (v45 && *(v41 + 480) == 2)
  {
    v46 = v45[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v148 = v45[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v46 = v148;
    }

    if (nw_protocols_are_equal(v46, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_72;
    }

    v47 = v45[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v150 = v45[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v47 = v150;
    }

    if (nw_protocols_are_equal(v47, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_72;
    }

    v48 = v45[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v151 = v45[2];
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v48 = v151;
    }

    if (nw_protocols_are_equal(v48, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
LABEL_72:
      v49 = nw_protocol_copy_info(v45);
      v50 = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_27_36446;
      aBlock[4] = v41;
      if (v49)
      {
        _nw_array_apply(v49, aBlock);
        v51 = *(v41 + 400);
        if (!v51)
        {
          os_release(v50);
          return;
        }
      }

      else
      {
        v51 = *(v41 + 400);
        if (!v51)
        {
          return;
        }
      }

      version = nw_http_connection_metadata_get_version(v51);
      v53 = version;
      if (version == 4)
      {
        v54 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_81:
          v55 = v45[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v149 = v45[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v55 = v149;
          }

          v56 = nw_protocols_are_equal(v55, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v57 = *(v41 + 580);
          if (v56)
          {
            v57 |= 0x40u;
            *(v41 + 580) = v57;
          }

          if ((v57 & 2) == 0)
          {
            v58 = __nwlog_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = *(v41 + 492);
              if (v53 == 4)
              {
                v60 = 2;
              }

              else
              {
                v60 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v41 + 496;
              *&buf[22] = 2080;
              v208 = " ";
              *v209 = 1024;
              *&v209[2] = v59;
              *&v209[6] = 1024;
              *&v209[8] = v60;
              _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v50)
          {
            os_release(v50);
          }

          goto LABEL_93;
        }

        v54 = 1;
      }

      *(v41 + 480) = v54;
      goto LABEL_81;
    }
  }

LABEL_93:
  v61 = *(v41 + 480);
  if (v61 <= 1)
  {
    if ((*(v41 + 580) & 1) == 0)
    {
      if (!*(v41 + 476))
      {
        nw_webtransport_http_send_connect(v41);
      }

      return;
    }

    v64 = *(v41 + 476);
    if (v61 == 1)
    {
      if (v64 != 3)
      {
        if (v64)
        {
          return;
        }

        v65 = *(v41 + 48);
        if (v65)
        {
          v66 = *(v65 + 40);
          if (v66)
          {
            nw_protocol_replace_input_handler(*(v41 + 32), v41, *(v65 + 40));
            *(v41 + 440) = v66;
            nw_protocol_set_output_handler(v41, 0);
            nw_protocol_set_input_handler(v41, 0);
            if (*(v41 + 580))
            {
              v67 = *(*(v41 + 440) + 32);
              v68 = *(v67 + 16);
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v170 = *(v67 + 16);
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v68 = v170;
              }

              if (nw_protocols_are_equal(v68, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
                goto LABEL_112;
              }

              v69 = *(v67 + 16);
              if (nw_protocol_http3_identifier::onceToken != -1)
              {
                v173 = *(v67 + 16);
                dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                v69 = v173;
              }

              if (nw_protocols_are_equal(v69, &nw_protocol_http3_identifier::http3_protocol_identifier))
              {
LABEL_112:
                v70 = *(v41 + 368);
                if (v70)
                {
                  v71 = nw_parameters_copy_protocol_options_legacy(v70, v67);
                  if (v71)
                  {
                    if ((*(v66 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v174 = v71;
                      v175 = __nwlog_obj();
                      v176 = os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG);
                      v71 = v174;
                      if (v176)
                      {
                        v177 = *(v66 + 88);
                        if (v177)
                        {
                          v178 = *(v177 + 492);
                        }

                        else
                        {
                          v178 = -1;
                        }

                        v183 = *(v66 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v66 + 192;
                        *&buf[22] = 2080;
                        v208 = " ";
                        *v209 = 1024;
                        *&v209[2] = v178;
                        *&v209[6] = 2048;
                        *&v209[8] = v183;
                        *&v209[16] = 2048;
                        *&v209[18] = v174;
                        _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                        v71 = v174;
                      }
                    }

                    v72 = v71;
                    nw_http3_set_stream_mode(v71, 0);
                    os_release(v72);
                  }

                  else
                  {
                    if ((*(v41 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v181 = __nwlog_obj();
                      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                      {
                        v182 = *(v41 + 492);
                        *buf = 136446978;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v41 + 496;
                        *&buf[22] = 2080;
                        v208 = " ";
                        *v209 = 1024;
                        *&v209[2] = v182;
                        _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                      }
                    }

                    v98 = *(v66 + 88);
                    nw_protocol_error(*(v66 + 48), v66);
                    nw_protocol_disconnect(v66, v98);
                  }
                }
              }
            }

            goto LABEL_170;
          }

          v163 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          LODWORD(v184) = 12;
          v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s called with null webtransport_stream", buf, v184);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v200[0]) = 0;
          if (__nwlog_fault(v158, type, v200))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v159 = __nwlog_obj();
              v160 = type[0];
              if (!os_log_type_enabled(v159, type[0]))
              {
                goto LABEL_373;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v161 = "%{public}s called with null webtransport_stream";
              goto LABEL_372;
            }

            if (LOBYTE(v200[0]) != 1)
            {
              v159 = __nwlog_obj();
              v160 = type[0];
              if (!os_log_type_enabled(v159, type[0]))
              {
                goto LABEL_373;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v161 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
              goto LABEL_372;
            }

            v171 = __nw_create_backtrace_string();
            v159 = __nwlog_obj();
            v160 = type[0];
            v172 = os_log_type_enabled(v159, type[0]);
            if (v171)
            {
              if (v172)
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                *&buf[12] = 2082;
                *&buf[14] = v171;
                _os_log_impl(&dword_181A37000, v159, v160, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v171);
              if (!v158)
              {
                goto LABEL_170;
              }

              goto LABEL_374;
            }

            if (v172)
            {
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v161 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_372:
              _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0xCu);
            }
          }
        }

        else
        {
          v157 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          LODWORD(v184) = 12;
          v158 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v157, 16, "%{public}s called with null input_protocol", buf, v184);
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v200[0]) = 0;
          if (!__nwlog_fault(v158, type, v200))
          {
            goto LABEL_373;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v159 = __nwlog_obj();
            v160 = type[0];
            if (!os_log_type_enabled(v159, type[0]))
            {
              goto LABEL_373;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v161 = "%{public}s called with null input_protocol";
            goto LABEL_372;
          }

          if (LOBYTE(v200[0]) != 1)
          {
            v159 = __nwlog_obj();
            v160 = type[0];
            if (!os_log_type_enabled(v159, type[0]))
            {
              goto LABEL_373;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v161 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_372;
          }

          v167 = __nw_create_backtrace_string();
          v159 = __nwlog_obj();
          v160 = type[0];
          v168 = os_log_type_enabled(v159, type[0]);
          if (!v167)
          {
            if (!v168)
            {
              goto LABEL_373;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v161 = "%{public}s called with null input_protocol, no backtrace";
            goto LABEL_372;
          }

          if (v168)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v167;
            _os_log_impl(&dword_181A37000, v159, v160, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v167);
        }

LABEL_373:
        if (!v158)
        {
LABEL_170:
          *(v41 + 476) = 2;
          return;
        }

LABEL_374:
        free(v158);
        goto LABEL_170;
      }

      v75 = *(v41 + 32);
      if (v75)
      {
        v76 = v75[3];
        if (v76 && *(v76 + 80))
        {
          for (i = 3; (i | 2) == 3; i = *(v41 + 476))
          {
            if (!nw_protocol_get_input_frames(v75, v41, 0, 0, 0xFFFFFFFFLL, v41 + 120))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v208 = __Block_byref_object_copy__36471;
            *v209 = __Block_byref_object_dispose__36472;
            if (nw_protocol_copy_http_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
            }

            *&v209[8] = nw_protocol_copy_http_definition_http_definition;
            v209[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v189 = 0x40000000;
            v190 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v191 = &unk_1E6A31940;
            v192 = buf;
            v193 = v41;
            v194 = v41 + 120;
            v78 = *(v41 + 120);
            do
            {
              if (!v78)
              {
                break;
              }

              v79 = *(v78 + 32);
              v80 = (v190)(type);
              v78 = v79;
            }

            while ((v80 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v209[16] & 1) != 0 && *&v209[8])
            {
              os_release(*&v209[8]);
            }
          }

          v81 = *(v41 + 480);
          if (v81 == 1)
          {
            nw_webtransport_http3_handle_input(v41);
            v97 = *(v41 + 448);
            if (v97 && *(v97 + 72))
            {
              nw_protocol_input_available(*(v97 + 48), v97);
            }

            return;
          }

          if (v81)
          {
            return;
          }

          if ((*(v41 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v179 = __nwlog_obj();
            if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
            {
              v180 = *(v41 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = v41 + 496;
              *&buf[22] = 2080;
              v208 = " ";
              *v209 = 1024;
              *&v209[2] = v180;
              _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(v41 + 476) != 4)
          {
            return;
          }

          v82 = (v41 + 96);
          while (1)
          {
            capsule = nw_http_capsule_framer_read_capsule((v41 + 96), v41);
            if (!capsule && !*(v41 + 136))
            {
              return;
            }

            if (*(v41 + 456))
            {
              goto LABEL_190;
            }

            v104 = *v82;
            if (*v82 == -1)
            {
LABEL_247:
              v118 = __nwlog_obj();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v104;
                _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_190;
            }

            v105 = *(v41 + 104) != -1 && *(v41 + 112) == 0;
            if (v104 <= 16770303)
            {
              if ((v104 - 16770048) < 6 || (v104 + 1) <= 4 && v104)
              {
                goto LABEL_247;
              }
            }

            else if ((v104 - 420171065) <= 9 && ((1 << (v104 - 57)) & 0x2EF) != 0)
            {
              v206 = -1;
              if (nw_http_capsule_framer_parse_vle_value((v41 + 96), v41, &v206))
              {
                stream = nw_webtransport_session_get_stream(v41, v206);
                if (stream)
                {
                  goto LABEL_241;
                }

                if ((v104 - 420171067) > 1)
                {
                  goto LABEL_272;
                }

                v125 = v206;
                v126 = *(v41 + 580);
                if (v206 >> 60 || ((v206 ^ v126) & 1) == 0)
                {
                  if ((v126 & 2) == 0)
                  {
                    v135 = __nwlog_obj();
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                    {
                      v136 = *(v41 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v41 + 496;
                      *&buf[22] = 2080;
                      v208 = " ";
                      *v209 = 1024;
                      *&v209[2] = v136;
                      v137 = v135;
                      v138 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_271;
                    }
                  }

LABEL_272:
                  if ((*(v41 + 580) & 2) == 0)
                  {
                    v139 = __nwlog_obj();
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                    {
                      v140 = *(v41 + 492);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = v41 + 496;
                      *&buf[22] = 2080;
                      v208 = " ";
                      *v209 = 1024;
                      *&v209[2] = v140;
                      *&v209[6] = 2048;
                      *&v209[8] = v206;
                      *&v209[16] = 2048;
                      *&v209[18] = v104;
                      _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_190;
                }

                v127 = *(v41 + 424);
                if (!v127 || (v128 = *v127) == 0 || !*v128)
                {
                  if ((v126 & 2) == 0)
                  {
                    v141 = __nwlog_obj();
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                    {
                      v142 = *(v41 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v41 + 496;
                      *&buf[22] = 2080;
                      v208 = " ";
                      *v209 = 1024;
                      *&v209[2] = v142;
                      v137 = v141;
                      v138 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_271:
                      _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, v138, buf, 0x26u);
                    }
                  }

                  goto LABEL_272;
                }

                v129 = _nw_parameters_copy();
                *(v41 + 580) |= 0x20u;
                *(v41 + 176) = v125;
                v130 = (***(v41 + 424))(*(v41 + 424), *(v41 + 384), v129);
                *(v41 + 176) = -1;
                *(v41 + 580) &= ~0x20u;
                if (v130)
                {
                  v131 = nw_webtransport_session_get_stream(v41, v125);
                }

                else
                {
                  v131 = 0;
                }

                if (v129)
                {
                  os_release(v129);
                }

                if (!v131)
                {
                  goto LABEL_272;
                }

                stream = v131;
                if (*(v131 + 46) != 3)
                {
LABEL_241:
                  *(v41 + 456) = stream;
                  goto LABEL_190;
                }

                if ((*(v41 + 580) & 2) != 0)
                {
                  goto LABEL_190;
                }

                v143 = __nwlog_obj();
                if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_190;
                }

                v144 = *(v41 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v41 + 496;
                *&buf[22] = 2080;
                v208 = " ";
                *v209 = 1024;
                *&v209[2] = v144;
                *&v209[6] = 2048;
                *&v209[8] = v206;
                v121 = v143;
                v122 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v105)
                {
                  goto LABEL_190;
                }

                if ((*(v41 + 580) & 2) != 0)
                {
                  goto LABEL_190;
                }

                v119 = __nwlog_obj();
                if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_190;
                }

                v120 = *(v41 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v41 + 496;
                *&buf[22] = 2080;
                v208 = " ";
                *v209 = 1024;
                *&v209[2] = v120;
                *&v209[6] = 2048;
                *&v209[8] = v104;
                v121 = v119;
                v122 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_ERROR, v122, buf, 0x30u);
            }

            else if ((v104 - 16770304) < 4)
            {
              goto LABEL_247;
            }

LABEL_190:
            v103 = *(v41 + 96);
            if ((*(v41 + 580) & 2) == 0 && gLogDatapath == 1)
            {
              v145 = __nwlog_obj();
              if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
              {
                v146 = *(v41 + 492);
                v147 = *(v41 + 104);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v41 + 496;
                *&buf[22] = 2080;
                v208 = " ";
                *v209 = 1024;
                *&v209[2] = v146;
                *&v209[6] = 2048;
                *&v209[8] = v103;
                *&v209[16] = 2048;
                *&v209[18] = v147;
                _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v103 > 16770303)
            {
              if (v103 <= 420171064)
              {
                if ((v103 - 16770304) < 4)
                {
                  goto LABEL_209;
                }

                if (v103 == 420171064)
                {
                  goto LABEL_208;
                }

                goto LABEL_211;
              }

              if ((v103 - 420171065) >= 2)
              {
                if ((v103 - 420171067) < 2)
                {
                  v106 = *(v41 + 456);
                  v108 = v103 == 420171068 && capsule;
                  v200[0] = MEMORY[0x1E69E9820];
                  v200[1] = 0x40000000;
                  v201 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v202 = &__block_descriptor_tmp_34_36485;
                  v205 = v108;
                  v203 = v41 + 96;
                  v204 = v106;
                  v109 = *(v41 + 136);
                  do
                  {
                    if (!v109)
                    {
                      break;
                    }

                    v110 = *(v109 + 32);
                    v111 = (v201)(v200);
                    v109 = v110;
                  }

                  while ((v111 & 1) != 0);
                  if (!v108)
                  {
                    goto LABEL_267;
                  }

                  nw_protocol_input_finished(v106, v41);
                }

                goto LABEL_211;
              }

              if (capsule)
              {
                v112 = *(v41 + 456);
                v206 = -1;
                if (nw_http_capsule_framer_parse_vle_value((v41 + 96), v41, &v206))
                {
                  if (!v112 || (*(v112 + 276) & 0x10) == 0)
                  {
                    v113 = __nwlog_obj();
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                    {
                      if (v112)
                      {
                        v114 = (v112 + 192);
                      }

                      else
                      {
                        v114 = "";
                      }

                      v115 = " ";
                      if (!v112)
                      {
                        v115 = "";
                      }

                      v116 = *(v112 + 88);
                      if (v116)
                      {
                        v99 = *(v116 + 492);
                      }

                      else
                      {
                        v99 = -1;
                      }

                      v100 = *(v112 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v114;
                      *&buf[22] = 2080;
                      v208 = v115;
                      *v209 = 1024;
                      *&v209[2] = v99;
                      *&v209[6] = 2048;
                      *&v209[8] = v100;
                      *&v209[16] = 2048;
                      *&v209[18] = v103;
                      v210 = 2048;
                      v211 = v100;
                      v212 = 2048;
                      v213 = v206;
                      _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v112, v41);
                  nw_protocol_webtransport_stream_disconnect(v112, v101);
                }

                else if ((*(v41 + 580) & 2) == 0)
                {
                  v123 = __nwlog_obj();
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                  {
                    v124 = *(v41 + 492);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = v41 + 496;
                    *&buf[22] = 2080;
                    v208 = " ";
                    *v209 = 1024;
                    *&v209[2] = v124;
                    *&v209[6] = 2048;
                    *&v209[8] = v103;
                    _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_186:
                *(v41 + 456) = 0;
                nw_http_capsule_complete_capsule(v41 + 96);
              }
            }

            else
            {
              if (v103 <= 16770047)
              {
                if ((v103 - 1) < 3 || v103 == -1)
                {
LABEL_209:
                  v107 = __nwlog_obj();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v103;
                    _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_211;
                }

                if (!v103)
                {
                  v106 = *(v41 + 448);
                  if (v106 && *(v106 + 46) != 3)
                  {
                    v195[0] = MEMORY[0x1E69E9820];
                    v195[1] = 0x40000000;
                    v196 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v197 = &__block_descriptor_tmp_35_36486;
                    v198 = v41 + 96;
                    v199 = v106;
                    v132 = *(v41 + 136);
                    do
                    {
                      if (!v132)
                      {
                        break;
                      }

                      v133 = *(v132 + 32);
                      v134 = (v196)(v195);
                      v132 = v133;
                    }

                    while ((v134 & 1) != 0);
LABEL_267:
                    nw_protocol_input_available(v106, v41);
                    goto LABEL_211;
                  }

LABEL_208:
                  nw_frame_array_finalize(v41 + 136, 1, 1);
                }
              }

              else if ((v103 - 16770048) < 6)
              {
                goto LABEL_209;
              }

LABEL_211:
              if (capsule)
              {
                goto LABEL_186;
              }
            }
          }
        }

        if ((*(v41 + 580) & 2) == 0)
        {
          v152 = __nwlog_obj();
          if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
          {
            v153 = *(v41 + 492);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            *&buf[12] = 2082;
            *&buf[14] = v41 + 496;
            *&buf[22] = 2080;
            v208 = " ";
            *v209 = 1024;
            *&v209[2] = v153;
            _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
          }
        }

        v154 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        LODWORD(v184) = 12;
        v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v154, 16, "%{public}s output handler has no get_input_frames callback", buf, v184);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v200[0]) = 0;
        if (!__nwlog_fault(v84, type, v200))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v87 = "%{public}s output handler has no get_input_frames callback";
LABEL_179:
            _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0xCu);
            goto LABEL_180;
          }

          goto LABEL_180;
        }

        if (LOBYTE(v200[0]) != 1)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v87 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v94 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v86 = type[0];
        v164 = os_log_type_enabled(v85, type[0]);
        if (!v94)
        {
          if (v164)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v87 = "%{public}s output handler has no get_input_frames callback, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v164)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          v96 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }

      else
      {
        v162 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        LODWORD(v184) = 12;
        v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s called with null output_handler", buf, v184);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v200[0]) = 0;
        if (!__nwlog_fault(v84, type, v200))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v87 = "%{public}s called with null output_handler";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (LOBYTE(v200[0]) != 1)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v87 = "%{public}s called with null output_handler, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v94 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v86 = type[0];
        v169 = os_log_type_enabled(v85, type[0]);
        if (!v94)
        {
          if (v169)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v87 = "%{public}s called with null output_handler, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v169)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          v96 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }
    }

    else
    {
      if (v64)
      {
        return;
      }

      *(v41 + 476) = 3;
      v73 = *(v41 + 48);
      if (v73)
      {
        v74 = *(v73 + 40);
        if (v74)
        {
          *(v41 + 440) = v74;
          return;
        }

        v156 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        LODWORD(v184) = 12;
        v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v156, 16, "%{public}s called with null webtransport_stream", buf, v184);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v200[0]) = 0;
        if (!__nwlog_fault(v84, type, v200))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v87 = "%{public}s called with null webtransport_stream";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (LOBYTE(v200[0]) != 1)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v87 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v94 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v86 = type[0];
        v166 = os_log_type_enabled(v85, type[0]);
        if (!v94)
        {
          if (v166)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v87 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v166)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          v96 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }

      else
      {
        v155 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        LODWORD(v184) = 12;
        v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v155, 16, "%{public}s called with null input_protocol", buf, v184);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v200[0]) = 0;
        if (!__nwlog_fault(v84, type, v200))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v87 = "%{public}s called with null input_protocol";
            goto LABEL_179;
          }

LABEL_180:
          if (!v84)
          {
            return;
          }

          goto LABEL_181;
        }

        if (LOBYTE(v200[0]) != 1)
        {
          v85 = __nwlog_obj();
          v86 = type[0];
          if (os_log_type_enabled(v85, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v87 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v94 = __nw_create_backtrace_string();
        v85 = __nwlog_obj();
        v86 = type[0];
        v165 = os_log_type_enabled(v85, type[0]);
        if (!v94)
        {
          if (v165)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v87 = "%{public}s called with null input_protocol, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v165)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          v96 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }
    }

    goto LABEL_162;
  }

  if ((*(v41 + 580) & 2) == 0)
  {
    v62 = __nwlog_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = *(v41 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_establish";
      *&buf[12] = 2082;
      *&buf[14] = v41 + 496;
      *&buf[22] = 2080;
      v208 = " ";
      *v209 = 1024;
      *&v209[2] = v63;
      v5 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
      v6 = v62;
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }
  }
}

void nw_protocol_webtransport_session_connected(nw_protocol *a1, nw_protocol *a2)
{
  v321 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v112 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_connected";
    v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v306) = 0;
    if (!__nwlog_fault(v108, type, &v306))
    {
      goto LABEL_363;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v109 = __nwlog_obj();
      v110 = type[0];
      if (!os_log_type_enabled(v109, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v111 = "%{public}s called with null protocol";
      goto LABEL_362;
    }

    if (v306 != 1)
    {
      v109 = __nwlog_obj();
      v110 = type[0];
      if (!os_log_type_enabled(v109, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v111 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_362;
    }

    backtrace_string = __nw_create_backtrace_string();
    v109 = __nwlog_obj();
    v110 = type[0];
    v180 = os_log_type_enabled(v109, type[0]);
    if (!backtrace_string)
    {
      if (!v180)
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v111 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_362;
    }

    if (v180)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_363;
  }

  handle = a1->handle;
  if (!handle)
  {
    v113 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_connected";
    v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v306) = 0;
    if (!__nwlog_fault(v108, type, &v306))
    {
      goto LABEL_363;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v109 = __nwlog_obj();
      v110 = type[0];
      if (!os_log_type_enabled(v109, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v111 = "%{public}s called with null webtransport_session";
      goto LABEL_362;
    }

    if (v306 != 1)
    {
      v109 = __nwlog_obj();
      v110 = type[0];
      if (!os_log_type_enabled(v109, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v111 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_362;
    }

    v181 = __nw_create_backtrace_string();
    v109 = __nwlog_obj();
    v110 = type[0];
    v182 = os_log_type_enabled(v109, type[0]);
    if (!v181)
    {
      if (!v182)
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v111 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_362;
    }

    if (v182)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = v181;
      v183 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_342:
      _os_log_impl(&dword_181A37000, v109, v110, v183, buf, 0x16u);
    }

LABEL_343:
    free(v181);
    if (!v108)
    {
      return;
    }

LABEL_364:
    free(v108);
    return;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v114 = a2;
    v115 = a1;
    v116 = __nwlog_obj();
    v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG);
    a2 = v114;
    v118 = v117;
    a1 = v115;
    if (v118)
    {
      v119 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v315 = " ";
      *v316 = 1024;
      *&v316[2] = v119;
      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got a connected event from the lower layer", buf, 0x26u);
      a1 = v115;
      a2 = v114;
    }
  }

  if (a1->output_handler == a2)
  {
    v3 = *(handle + 4);
    if (!v3 || *(handle + 120) != 2)
    {
      goto LABEL_41;
    }

    v4 = v3[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v187 = v3[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v4 = v187;
    }

    if (!nw_protocols_are_equal(v4, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      v5 = v3[2];
      if (nw_protocol_http3_identifier::onceToken != -1)
      {
        v189 = v3[2];
        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
        v5 = v189;
      }

      if (!nw_protocols_are_equal(v5, &nw_protocol_http3_identifier::http3_protocol_identifier))
      {
        v6 = v3[2];
        if (nw_protocol_http_messaging_identifier::onceToken != -1)
        {
          v191 = v3[2];
          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
          v6 = v191;
        }

        if (!nw_protocols_are_equal(v6, &nw_protocol_http_messaging_identifier::protocol_identifier))
        {
          goto LABEL_41;
        }
      }
    }

    v7 = nw_protocol_copy_info(v3);
    v8 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v289 = 0x40000000;
    v290 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
    v291 = &__block_descriptor_tmp_27_36446;
    v292 = handle;
    if (v7)
    {
      _nw_array_apply(v7, &aBlock);
      v9 = *(handle + 50);
      if (!v9)
      {
        os_release(v8);
        goto LABEL_48;
      }
    }

    else
    {
      v9 = *(handle + 50);
      if (!v9)
      {
        goto LABEL_48;
      }
    }

    version = nw_http_connection_metadata_get_version(v9);
    v11 = version;
    if (version == 4)
    {
      v12 = 0;
    }

    else
    {
      if (version != 5)
      {
LABEL_29:
        v13 = v3[2];
        if (nw_protocol_http_messaging_identifier::onceToken != -1)
        {
          v188 = v3[2];
          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
          v13 = v188;
        }

        v14 = nw_protocols_are_equal(v13, &nw_protocol_http_messaging_identifier::protocol_identifier);
        v15 = handle[580];
        if (v14)
        {
          v15 |= 0x40u;
          handle[580] = v15;
        }

        if ((v15 & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v17 = *(handle + 123);
            if (v11 == 4)
            {
              v18 = 2;
            }

            else
            {
              v18 = 3;
            }

            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_establish";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v315 = " ";
            *v316 = 1024;
            *&v316[2] = v17;
            *&v316[6] = 1024;
            *&v316[8] = v18;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
          }
        }

        if (v8)
        {
          os_release(v8);
        }

LABEL_41:
        v19 = *(handle + 120);
        if (v19 <= 1)
        {
          if ((handle[580] & 1) == 0)
          {
            goto LABEL_43;
          }

          v50 = *(handle + 119);
          if (v19 != 1)
          {
            if (v50)
            {
              return;
            }

            *(handle + 119) = 3;
            v60 = *(handle + 6);
            if (v60)
            {
              v61 = *(v60 + 40);
              if (!v61)
              {
                goto LABEL_197;
              }

              goto LABEL_97;
            }

LABEL_484:
            v243 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            LODWORD(v285) = 12;
            v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v243, 16, "%{public}s called with null input_protocol", buf, v285);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v306) = 0;
            if (!__nwlog_fault(v108, type, &v306))
            {
              goto LABEL_363;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v109 = __nwlog_obj();
              v110 = type[0];
              if (os_log_type_enabled(v109, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v111 = "%{public}s called with null input_protocol";
                goto LABEL_362;
              }

LABEL_363:
              if (!v108)
              {
                return;
              }

              goto LABEL_364;
            }

            if (v306 != 1)
            {
              v109 = __nwlog_obj();
              v110 = type[0];
              if (os_log_type_enabled(v109, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v111 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_362;
              }

              goto LABEL_363;
            }

            v181 = __nw_create_backtrace_string();
            v109 = __nwlog_obj();
            v110 = type[0];
            v252 = os_log_type_enabled(v109, type[0]);
            if (!v181)
            {
              if (v252)
              {
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v111 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_362;
              }

              goto LABEL_363;
            }

            if (v252)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              *&buf[12] = 2082;
              *&buf[14] = v181;
              v183 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
              goto LABEL_342;
            }

            goto LABEL_343;
          }

          if (v50 != 3)
          {
            if (v50)
            {
              return;
            }

            v51 = *(handle + 6);
            if (v51)
            {
              v52 = *(v51 + 40);
              if (v52)
              {
                nw_protocol_replace_input_handler(*(handle + 4), handle, *(v51 + 40));
                *(handle + 55) = v52;
                nw_protocol_set_output_handler(handle, 0);
                nw_protocol_set_input_handler(handle, 0);
                if ((handle[580] & 1) == 0)
                {
                  goto LABEL_129;
                }

                v53 = *(*(handle + 55) + 32);
                v54 = *(v53 + 16);
                if (nw_protocol_http_messaging_identifier::onceToken != -1)
                {
                  v260 = *(v53 + 16);
                  dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                  v54 = v260;
                }

                if (!nw_protocols_are_equal(v54, &nw_protocol_http_messaging_identifier::protocol_identifier))
                {
                  v55 = *(v53 + 16);
                  if (nw_protocol_http3_identifier::onceToken != -1)
                  {
                    v261 = *(v53 + 16);
                    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                    v55 = v261;
                  }

                  if (!nw_protocols_are_equal(v55, &nw_protocol_http3_identifier::http3_protocol_identifier))
                  {
                    goto LABEL_129;
                  }
                }

                v56 = *(handle + 46);
                if (!v56)
                {
                  goto LABEL_129;
                }

                v57 = nw_parameters_copy_protocol_options_legacy(v56, v53);
                if (v57)
                {
                  if ((*(v52 + 276) & 0x10) == 0 && gLogDatapath == 1)
                  {
                    v263 = v57;
                    v264 = __nwlog_obj();
                    v265 = os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG);
                    v57 = v263;
                    if (v265)
                    {
                      v266 = *(v52 + 88);
                      if (v266)
                      {
                        v267 = *(v266 + 492);
                      }

                      else
                      {
                        v267 = -1;
                      }

                      v276 = *(v52 + 64);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v52 + 192;
                      *&buf[22] = 2080;
                      v315 = " ";
                      *v316 = 1024;
                      *&v316[2] = v267;
                      *&v316[6] = 2048;
                      *&v316[8] = v276;
                      *&v316[16] = 2048;
                      *&v316[18] = v263;
                      _os_log_impl(&dword_181A37000, v264, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                      v57 = v263;
                    }
                  }

                  v58 = v57;
                  nw_http3_set_stream_mode(v57, 0);
                  v59 = v58;
                  goto LABEL_93;
                }

                if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                {
                  v190 = __nwlog_obj();
                  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_554;
                  }
                }

                goto LABEL_128;
              }

LABEL_492:
              v245 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              LODWORD(v285) = 12;
              v246 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v245, 16, "%{public}s called with null webtransport_stream", buf, v285);
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v306) = 0;
              if (!__nwlog_fault(v246, type, &v306))
              {
                goto LABEL_572;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v247 = __nwlog_obj();
                v248 = type[0];
                if (!os_log_type_enabled(v247, type[0]))
                {
                  goto LABEL_572;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                v249 = "%{public}s called with null webtransport_stream";
LABEL_571:
                _os_log_impl(&dword_181A37000, v247, v248, v249, buf, 0xCu);
                goto LABEL_572;
              }

              if (v306 != 1)
              {
                v247 = __nwlog_obj();
                v248 = type[0];
                if (!os_log_type_enabled(v247, type[0]))
                {
                  goto LABEL_572;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                v249 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                goto LABEL_571;
              }

              v255 = __nw_create_backtrace_string();
              v247 = __nwlog_obj();
              v248 = type[0];
              v256 = os_log_type_enabled(v247, type[0]);
              if (!v255)
              {
                if (!v256)
                {
                  goto LABEL_572;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                v249 = "%{public}s called with null webtransport_stream, no backtrace";
                goto LABEL_571;
              }

              if (v256)
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                *&buf[12] = 2082;
                *&buf[14] = v255;
                v257 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_520:
                _os_log_impl(&dword_181A37000, v247, v248, v257, buf, 0x16u);
                goto LABEL_521;
              }

              goto LABEL_521;
            }

            v251 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v246 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v251, 16, "%{public}s called with null input_protocol", buf, 12);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v306) = 0;
            if (!__nwlog_fault(v246, type, &v306))
            {
              goto LABEL_572;
            }

            if (type[0] != OS_LOG_TYPE_FAULT)
            {
              if (v306 == 1)
              {
                v258 = __nw_create_backtrace_string();
                v247 = __nwlog_obj();
                v248 = type[0];
                v259 = os_log_type_enabled(v247, type[0]);
                if (v258)
                {
                  if (v259)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v258;
                    _os_log_impl(&dword_181A37000, v247, v248, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v258);
LABEL_572:
                  if (!v246)
                  {
                    goto LABEL_129;
                  }

LABEL_573:
                  free(v246);
                  goto LABEL_129;
                }

                goto LABEL_569;
              }

LABEL_567:
              v247 = __nwlog_obj();
              v248 = type[0];
              if (!os_log_type_enabled(v247, type[0]))
              {
                goto LABEL_572;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v249 = "%{public}s called with null input_protocol, backtrace limit exceeded";
              goto LABEL_571;
            }

LABEL_502:
            v247 = __nwlog_obj();
            v248 = type[0];
            if (!os_log_type_enabled(v247, type[0]))
            {
              goto LABEL_572;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v249 = "%{public}s called with null input_protocol";
            goto LABEL_571;
          }

          v62 = *(handle + 4);
          if (!v62)
          {
            goto LABEL_488;
          }

          v63 = v62[3];
          if (!v63 || !*(v63 + 80))
          {
            if ((handle[580] & 2) == 0)
            {
              v192 = __nwlog_obj();
              if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
              {
                v193 = *(handle + 123);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v315 = " ";
                *v316 = 1024;
                *&v316[2] = v193;
                _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
              }
            }

            v194 = __nwlog_obj();
            *buf = 136446210;
            goto LABEL_373;
          }

          for (i = 3; (i | 2) == 3; i = *(handle + 119))
          {
            if (!nw_protocol_get_input_frames(v62, handle, 0, 0, 0xFFFFFFFFLL, (handle + 120)))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v315 = __Block_byref_object_copy__36471;
            *v316 = __Block_byref_object_dispose__36472;
            if (nw_protocol_copy_http_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
            }

            *&v316[8] = nw_protocol_copy_http_definition_http_definition;
            v316[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v294 = 0x40000000;
            v295 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v296 = &unk_1E6A31940;
            v297 = buf;
            v298 = handle;
            v299 = handle + 120;
            v65 = *(handle + 15);
            do
            {
              if (!v65)
              {
                break;
              }

              v66 = *(v65 + 32);
              v67 = (v295)(type);
              v65 = v66;
            }

            while ((v67 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v316[16] & 1) != 0 && *&v316[8])
            {
              os_release(*&v316[8]);
            }
          }

          v71 = *(handle + 120);
          if (v71 == 1)
          {
            goto LABEL_355;
          }

          if (v71)
          {
            return;
          }

          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
          {
            v268 = __nwlog_obj();
            if (os_log_type_enabled(v268, OS_LOG_TYPE_DEBUG))
            {
              v269 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = handle + 496;
              *&buf[22] = 2080;
              v315 = " ";
              *v316 = 1024;
              *&v316[2] = v269;
              _os_log_impl(&dword_181A37000, v268, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(handle + 119) != 4)
          {
            return;
          }

          v72 = (handle + 96);
          while (1)
          {
            capsule = nw_http_capsule_framer_read_capsule(handle + 12, handle);
            if (!capsule && !*(handle + 17))
            {
              return;
            }

            if (*(handle + 57))
            {
              goto LABEL_218;
            }

            v125 = *v72;
            if (*v72 == -1)
            {
LABEL_276:
              v139 = __nwlog_obj();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v125;
                _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_218;
            }

            v126 = *(handle + 13) != -1 && *(handle + 14) == 0;
            if (v125 <= 16770303)
            {
              if ((v125 - 16770048) < 6 || (v125 + 1) <= 4 && v125)
              {
                goto LABEL_276;
              }
            }

            else if ((v125 - 420171065) <= 9 && ((1 << (v125 - 57)) & 0x2EF) != 0)
            {
              v286[0] = -1;
              if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, v286))
              {
                stream = nw_webtransport_session_get_stream(handle, v286[0]);
                if (stream)
                {
                  goto LABEL_269;
                }

                if ((v125 - 420171067) > 1)
                {
                  goto LABEL_301;
                }

                v146 = v286[0];
                v147 = handle[580];
                if (v286[0] >> 60 || ((LODWORD(v286[0]) ^ v147) & 1) == 0)
                {
                  if ((v147 & 2) == 0)
                  {
                    v156 = __nwlog_obj();
                    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                    {
                      v157 = *(handle + 123);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 496;
                      *&buf[22] = 2080;
                      v315 = " ";
                      *v316 = 1024;
                      *&v316[2] = v157;
                      v158 = v156;
                      v159 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_300;
                    }
                  }

LABEL_301:
                  if ((handle[580] & 2) == 0)
                  {
                    v160 = __nwlog_obj();
                    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                    {
                      v161 = *(handle + 123);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 496;
                      *&buf[22] = 2080;
                      v315 = " ";
                      *v316 = 1024;
                      *&v316[2] = v161;
                      *&v316[6] = 2048;
                      *&v316[8] = v286[0];
                      *&v316[16] = 2048;
                      *&v316[18] = v125;
                      _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_218;
                }

                v148 = *(handle + 53);
                if (!v148 || (v149 = *v148) == 0 || !*v149)
                {
                  if ((v147 & 2) == 0)
                  {
                    v162 = __nwlog_obj();
                    if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                    {
                      v163 = *(handle + 123);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 496;
                      *&buf[22] = 2080;
                      v315 = " ";
                      *v316 = 1024;
                      *&v316[2] = v163;
                      v158 = v162;
                      v159 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_300:
                      _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_ERROR, v159, buf, 0x26u);
                    }
                  }

                  goto LABEL_301;
                }

                v150 = _nw_parameters_copy();
                handle[580] |= 0x20u;
                *(handle + 22) = v146;
                v151 = (***(handle + 53))(*(handle + 53), *(handle + 48), v150);
                *(handle + 22) = -1;
                handle[580] &= ~0x20u;
                if (v151)
                {
                  v152 = nw_webtransport_session_get_stream(handle, v146);
                }

                else
                {
                  v152 = 0;
                }

                if (v150)
                {
                  os_release(v150);
                }

                if (!v152)
                {
                  goto LABEL_301;
                }

                stream = v152;
                if (*(v152 + 46) != 3)
                {
LABEL_269:
                  *(handle + 57) = stream;
                  goto LABEL_218;
                }

                if ((handle[580] & 2) != 0)
                {
                  goto LABEL_218;
                }

                v164 = __nwlog_obj();
                if (!os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_218;
                }

                v165 = *(handle + 123);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v315 = " ";
                *v316 = 1024;
                *&v316[2] = v165;
                *&v316[6] = 2048;
                *&v316[8] = v286[0];
                v142 = v164;
                v143 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v126)
                {
                  goto LABEL_218;
                }

                if ((handle[580] & 2) != 0)
                {
                  goto LABEL_218;
                }

                v140 = __nwlog_obj();
                if (!os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_218;
                }

                v141 = *(handle + 123);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v315 = " ";
                *v316 = 1024;
                *&v316[2] = v141;
                *&v316[6] = 2048;
                *&v316[8] = v125;
                v142 = v140;
                v143 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_ERROR, v143, buf, 0x30u);
            }

            else if ((v125 - 16770304) < 4)
            {
              goto LABEL_276;
            }

LABEL_218:
            v124 = *(handle + 12);
            if ((handle[580] & 2) == 0 && gLogDatapath == 1)
            {
              v166 = __nwlog_obj();
              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
              {
                v167 = *(handle + 123);
                v168 = *(handle + 13);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v315 = " ";
                *v316 = 1024;
                *&v316[2] = v167;
                *&v316[6] = 2048;
                *&v316[8] = v124;
                *&v316[16] = 2048;
                *&v316[18] = v168;
                _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v124 > 16770303)
            {
              if (v124 <= 420171064)
              {
                if ((v124 - 16770304) < 4)
                {
                  goto LABEL_237;
                }

                if (v124 == 420171064)
                {
                  goto LABEL_236;
                }

                goto LABEL_239;
              }

              if ((v124 - 420171065) >= 2)
              {
                if ((v124 - 420171067) < 2)
                {
                  v127 = *(handle + 57);
                  v129 = v124 == 420171068 && capsule;
                  v306 = MEMORY[0x1E69E9820];
                  v307 = 0x40000000;
                  v308 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v309 = &__block_descriptor_tmp_34_36485;
                  v312 = v129;
                  v310 = handle + 96;
                  v311 = v127;
                  v130 = *(handle + 17);
                  do
                  {
                    if (!v130)
                    {
                      break;
                    }

                    v131 = *(v130 + 32);
                    v132 = (v308)(&v306);
                    v130 = v131;
                  }

                  while ((v132 & 1) != 0);
                  if (!v129)
                  {
                    goto LABEL_296;
                  }

                  nw_protocol_input_finished(v127, handle);
                }

                goto LABEL_239;
              }

              if (capsule)
              {
                v133 = *(handle + 57);
                v286[0] = -1;
                if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, v286))
                {
                  if (!v133 || (*(v133 + 276) & 0x10) == 0)
                  {
                    v134 = __nwlog_obj();
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                    {
                      if (v133)
                      {
                        v135 = (v133 + 192);
                      }

                      else
                      {
                        v135 = "";
                      }

                      v136 = " ";
                      if (!v133)
                      {
                        v136 = "";
                      }

                      v137 = *(v133 + 88);
                      if (v137)
                      {
                        v120 = *(v137 + 492);
                      }

                      else
                      {
                        v120 = -1;
                      }

                      v121 = *(v133 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v135;
                      *&buf[22] = 2080;
                      v315 = v136;
                      *v316 = 1024;
                      *&v316[2] = v120;
                      *&v316[6] = 2048;
                      *&v316[8] = v121;
                      *&v316[16] = 2048;
                      *&v316[18] = v124;
                      v317 = 2048;
                      v318 = v121;
                      v319 = 2048;
                      v320 = v286[0];
                      _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v133, handle);
                  nw_protocol_webtransport_stream_disconnect(v133, v122);
                }

                else if ((handle[580] & 2) == 0)
                {
                  v144 = __nwlog_obj();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                  {
                    v145 = *(handle + 123);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = handle + 496;
                    *&buf[22] = 2080;
                    v315 = " ";
                    *v316 = 1024;
                    *&v316[2] = v145;
                    *&v316[6] = 2048;
                    *&v316[8] = v124;
                    _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_214:
                *(handle + 57) = 0;
                nw_http_capsule_complete_capsule((handle + 96));
              }
            }

            else
            {
              if (v124 <= 16770047)
              {
                if ((v124 - 1) < 3 || v124 == -1)
                {
LABEL_237:
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v128 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v124;
                    _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_239;
                }

                if (!v124)
                {
                  v127 = *(handle + 56);
                  if (v127 && *(v127 + 184) != 3)
                  {
                    v300 = MEMORY[0x1E69E9820];
                    v301 = 0x40000000;
                    v302 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v303 = &__block_descriptor_tmp_35_36486;
                    v304 = handle + 96;
                    v305 = v127;
                    v153 = *(handle + 17);
                    do
                    {
                      if (!v153)
                      {
                        break;
                      }

                      v154 = *(v153 + 32);
                      v155 = (v302)(&v300);
                      v153 = v154;
                    }

                    while ((v155 & 1) != 0);
LABEL_296:
                    nw_protocol_input_available(v127, handle);
                    goto LABEL_239;
                  }

LABEL_236:
                  nw_frame_array_finalize((handle + 136), 1, 1);
                }
              }

              else if ((v124 - 16770048) < 6)
              {
                goto LABEL_237;
              }

LABEL_239:
              if (capsule)
              {
                goto LABEL_214;
              }
            }
          }
        }

        if ((handle[580] & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v21 = *(handle + 123);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_establish";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v315 = " ";
            *v316 = 1024;
            *&v316[2] = v21;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing", buf, 0x26u);
          }
        }

LABEL_48:
        if (*(handle + 119) == 5)
        {
          if ((handle[580] & 2) != 0)
          {
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            return;
          }

          v23 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v315 = " ";
          *v316 = 1024;
          *&v316[2] = v23;
          v24 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
          v25 = v22;
          v26 = OS_LOG_TYPE_INFO;
          goto LABEL_52;
        }

        if ((handle[580] & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v29 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v315 = " ";
            *v316 = 1024;
            *&v316[2] = v29;
            *&v316[6] = 1024;
            *&v316[8] = 57;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
          }
        }

        v30 = *(handle + 119);
        *(handle + 119) = 5;
        v31 = *(handle + 24);
        if (v31)
        {
          v286[0] = MEMORY[0x1E69E9820];
          v286[1] = 0x40000000;
          v286[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
          v286[3] = &__block_descriptor_tmp_24_36439;
          v287 = 57;
          nw_hash_table_apply(v31, v286);
        }

        v32 = *(handle + 56);
        if (v32)
        {
          v33 = *(v32 + 88);
          nw_protocol_error(*(v32 + 48), *(handle + 56));
          nw_protocol_disconnect(v32, v33);
        }

        v34 = *(handle + 42);
        if (v34)
        {
          do
          {
            v35 = *(v34 + 112);
            v36 = *(v34 + 88);
            nw_protocol_error(*(v34 + 48), v34);
            nw_protocol_disconnect(v34, v36);
            v34 = v35;
          }

          while (v35);
        }

        v37 = *(handle + 55);
        if (v37)
        {
          v38 = *(v37 + 88);
          nw_protocol_error(*(v37 + 48), *(handle + 55));
          nw_protocol_disconnect(v37, v38);
        }

        if (*(handle + 4))
        {
          nw_protocol_remove_instance(handle);
          nw_protocol_disconnect(*(handle + 4), handle);
        }

        v39 = *(handle + 50);
        if (!v39)
        {
          return;
        }

        webtransport_state = nw_http_connection_metadata_get_webtransport_state(v39);
        if (!webtransport_state)
        {
          return;
        }

        v41 = webtransport_state;
        if (v30 != 4 && v30 != 1)
        {
          return;
        }

        v42 = *(webtransport_state + 16);
        *(webtransport_state + 16) = v42 - 1;
        if (v42)
        {
LABEL_136:
          if (handle[580])
          {
            return;
          }

          handle = *v41;
          if (!*v41)
          {
            return;
          }

          v76 = *(handle + 44);
          v77 = *(handle + 45);
          v78 = (v76 + 360);
          if (!v76)
          {
            v78 = (v41 + 8);
          }

          *v78 = v77;
          *v77 = v76;
          *(handle + 44) = 0;
          *(handle + 45) = 0;
          v79 = *(handle + 4);
          if (!v79 || *(handle + 120) != 2)
          {
            goto LABEL_172;
          }

          v80 = v79[2];
          if (nw_protocol_http2_identifier::onceToken != -1)
          {
            v262 = v79[2];
            dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
            v80 = v262;
          }

          if (!nw_protocols_are_equal(v80, &nw_protocol_http2_identifier::http2_protocol_identifier))
          {
            v81 = v79[2];
            if (nw_protocol_http3_identifier::onceToken != -1)
            {
              v271 = v79[2];
              dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
              v81 = v271;
            }

            if (!nw_protocols_are_equal(v81, &nw_protocol_http3_identifier::http3_protocol_identifier))
            {
              v82 = v79[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v273 = v79[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v82 = v273;
              }

              if (!nw_protocols_are_equal(v82, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
LABEL_172:
                v95 = *(handle + 120);
                if (v95 > 1)
                {
                  if ((handle[580] & 2) != 0)
                  {
                    return;
                  }

                  v104 = __nwlog_obj();
                  if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }

                  v105 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_establish";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v315 = " ";
                  *v316 = 1024;
                  *&v316[2] = v105;
                  v24 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
                  v25 = v104;
                  v26 = OS_LOG_TYPE_ERROR;
LABEL_52:
                  v27 = 38;
LABEL_53:
                  _os_log_impl(&dword_181A37000, v25, v26, v24, buf, v27);
                  return;
                }

                if (handle[580])
                {
                  v96 = *(handle + 119);
                  if (v95 == 1)
                  {
                    if (v96 != 3)
                    {
                      if (v96)
                      {
                        return;
                      }

                      v97 = *(handle + 6);
                      if (v97)
                      {
                        v52 = *(v97 + 40);
                        if (v52)
                        {
                          nw_protocol_replace_input_handler(*(handle + 4), handle, *(v97 + 40));
                          *(handle + 55) = v52;
                          nw_protocol_set_output_handler(handle, 0);
                          nw_protocol_set_input_handler(handle, 0);
                          if ((handle[580] & 1) == 0)
                          {
                            goto LABEL_129;
                          }

                          v98 = *(*(handle + 55) + 32);
                          v99 = *(v98 + 16);
                          if (nw_protocol_http_messaging_identifier::onceToken != -1)
                          {
                            v278 = *(v98 + 16);
                            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                            v99 = v278;
                          }

                          if (!nw_protocols_are_equal(v99, &nw_protocol_http_messaging_identifier::protocol_identifier))
                          {
                            v100 = *(v98 + 16);
                            if (nw_protocol_http3_identifier::onceToken != -1)
                            {
                              dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                            }

                            if (!nw_protocols_are_equal(v100, &nw_protocol_http3_identifier::http3_protocol_identifier))
                            {
                              goto LABEL_129;
                            }
                          }

                          v101 = *(handle + 46);
                          if (!v101)
                          {
                            goto LABEL_129;
                          }

                          v102 = nw_parameters_copy_protocol_options_legacy(v101, v98);
                          if (v102)
                          {
                            v103 = v102;
                            if ((*(v52 + 276) & 0x10) == 0 && gLogDatapath == 1)
                            {
                              v279 = __nwlog_obj();
                              if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
                              {
                                v280 = *(v52 + 88);
                                if (v280)
                                {
                                  v281 = *(v280 + 492);
                                }

                                else
                                {
                                  v281 = -1;
                                }

                                v284 = *(v52 + 64);
                                *buf = 136447490;
                                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v52 + 192;
                                *&buf[22] = 2080;
                                v315 = " ";
                                *v316 = 1024;
                                *&v316[2] = v281;
                                *&v316[6] = 2048;
                                *&v316[8] = v284;
                                *&v316[16] = 2048;
                                *&v316[18] = v103;
                                _os_log_impl(&dword_181A37000, v279, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                              }
                            }

                            nw_http3_set_stream_mode(v103, 0);
                            v59 = v103;
LABEL_93:
                            os_release(v59);
LABEL_129:
                            *(handle + 119) = 2;
                            return;
                          }

                          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                          {
                            v190 = __nwlog_obj();
                            if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                            {
LABEL_554:
                              v272 = *(handle + 123);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = handle + 496;
                              *&buf[22] = 2080;
                              v315 = " ";
                              *v316 = 1024;
                              *&v316[2] = v272;
                              _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                            }
                          }

LABEL_128:
                          v74 = *(v52 + 88);
                          nw_protocol_error(*(v52 + 48), v52);
                          nw_protocol_disconnect(v52, v74);
                          goto LABEL_129;
                        }

                        goto LABEL_492;
                      }

                      v277 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      LODWORD(v285) = 12;
                      v246 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v277, 16, "%{public}s called with null input_protocol", buf, v285);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v306) = 0;
                      if (!__nwlog_fault(v246, type, &v306))
                      {
                        goto LABEL_572;
                      }

                      if (type[0] != OS_LOG_TYPE_FAULT)
                      {
                        if (v306 == 1)
                        {
                          v255 = __nw_create_backtrace_string();
                          v247 = __nwlog_obj();
                          v248 = type[0];
                          v259 = os_log_type_enabled(v247, type[0]);
                          if (v255)
                          {
                            if (v259)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v255;
                              v257 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                              goto LABEL_520;
                            }

LABEL_521:
                            free(v255);
                            if (!v246)
                            {
                              goto LABEL_129;
                            }

                            goto LABEL_573;
                          }

LABEL_569:
                          if (!v259)
                          {
                            goto LABEL_572;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          v249 = "%{public}s called with null input_protocol, no backtrace";
                          goto LABEL_571;
                        }

                        goto LABEL_567;
                      }

                      goto LABEL_502;
                    }

                    v169 = *(handle + 4);
                    if (v169)
                    {
                      v170 = v169[3];
                      if (v170 && *(v170 + 80))
                      {
                        for (j = 3; (j | 2) == 3; j = *(handle + 119))
                        {
                          if (!nw_protocol_get_input_frames(v169, handle, 0, 0, 0xFFFFFFFFLL, (handle + 120)))
                          {
                            return;
                          }

                          *buf = 0;
                          *&buf[8] = buf;
                          *&buf[16] = 0x3802000000;
                          v315 = __Block_byref_object_copy__36471;
                          *v316 = __Block_byref_object_dispose__36472;
                          *&v316[8] = nw_protocol_copy_http_definition();
                          v316[16] |= 1u;
                          *type = MEMORY[0x1E69E9820];
                          v294 = 0x40000000;
                          v295 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                          v296 = &unk_1E6A31940;
                          v297 = buf;
                          v298 = handle;
                          v299 = handle + 120;
                          v172 = *(handle + 15);
                          do
                          {
                            if (!v172)
                            {
                              break;
                            }

                            v173 = *(v172 + 32);
                            v174 = (v295)(type);
                            v172 = v173;
                          }

                          while ((v174 & 1) != 0);
                          _Block_object_dispose(buf, 8);
                          if ((v316[16] & 1) != 0 && *&v316[8])
                          {
                            os_release(*&v316[8]);
                          }
                        }

                        v184 = *(handle + 120);
                        if (v184 != 1)
                        {
                          if (v184)
                          {
                            return;
                          }

                          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                          {
                            v282 = __nwlog_obj();
                            if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
                            {
                              v283 = *(handle + 123);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = handle + 496;
                              *&buf[22] = 2080;
                              v315 = " ";
                              *v316 = 1024;
                              *&v316[2] = v283;
                              _os_log_impl(&dword_181A37000, v282, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                            }
                          }

                          if (*(handle + 119) != 4)
                          {
                            return;
                          }

                          v185 = (handle + 96);
                          while (1)
                          {
                            v198 = nw_http_capsule_framer_read_capsule(handle + 12, handle);
                            if (!v198 && !*(handle + 17))
                            {
                              return;
                            }

                            if (*(handle + 57))
                            {
                              goto LABEL_384;
                            }

                            v200 = *v185;
                            if (*v185 == -1)
                            {
LABEL_439:
                              v214 = __nwlog_obj();
                              if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2048;
                                *&buf[14] = v200;
                                _os_log_impl(&dword_181A37000, v214, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                              }

                              goto LABEL_384;
                            }

                            v201 = *(handle + 13) != -1 && *(handle + 14) == 0;
                            if (v200 <= 16770303)
                            {
                              if ((v200 - 16770048) < 6 || (v200 + 1) <= 4 && v200)
                              {
                                goto LABEL_439;
                              }
                            }

                            else if ((v200 - 420171065) <= 9 && ((1 << (v200 - 57)) & 0x2EF) != 0)
                            {
                              v313 = -1;
                              if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v313))
                              {
                                v213 = nw_webtransport_session_get_stream(handle, v313);
                                if (v213)
                                {
                                  goto LABEL_433;
                                }

                                if ((v200 - 420171067) > 1)
                                {
                                  goto LABEL_464;
                                }

                                v217 = v313;
                                v218 = handle[580];
                                if (v313 >> 60 || ((v313 ^ v218) & 1) == 0)
                                {
                                  if ((v218 & 2) == 0)
                                  {
                                    v226 = __nwlog_obj();
                                    if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
                                    {
                                      v227 = *(handle + 123);
                                      *buf = 136446978;
                                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                      *&buf[12] = 2082;
                                      *&buf[14] = handle + 496;
                                      *&buf[22] = 2080;
                                      v315 = " ";
                                      *v316 = 1024;
                                      *&v316[2] = v227;
                                      v228 = v226;
                                      v229 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                                      goto LABEL_463;
                                    }
                                  }

LABEL_464:
                                  if ((handle[580] & 2) == 0)
                                  {
                                    v230 = __nwlog_obj();
                                    if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
                                    {
                                      v231 = *(handle + 123);
                                      *buf = 136447490;
                                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                      *&buf[12] = 2082;
                                      *&buf[14] = handle + 496;
                                      *&buf[22] = 2080;
                                      v315 = " ";
                                      *v316 = 1024;
                                      *&v316[2] = v231;
                                      *&v316[6] = 2048;
                                      *&v316[8] = v313;
                                      *&v316[16] = 2048;
                                      *&v316[18] = v200;
                                      _os_log_impl(&dword_181A37000, v230, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                                    }
                                  }

                                  goto LABEL_384;
                                }

                                v219 = *(handle + 53);
                                if (!v219 || (v220 = *v219) == 0 || !*v220)
                                {
                                  if ((v218 & 2) == 0)
                                  {
                                    v232 = __nwlog_obj();
                                    if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                                    {
                                      v233 = *(handle + 123);
                                      *buf = 136446978;
                                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                      *&buf[12] = 2082;
                                      *&buf[14] = handle + 496;
                                      *&buf[22] = 2080;
                                      v315 = " ";
                                      *v316 = 1024;
                                      *&v316[2] = v233;
                                      v228 = v232;
                                      v229 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_463:
                                      _os_log_impl(&dword_181A37000, v228, OS_LOG_TYPE_ERROR, v229, buf, 0x26u);
                                    }
                                  }

                                  goto LABEL_464;
                                }

                                v221 = _nw_parameters_copy();
                                handle[580] |= 0x20u;
                                *(handle + 22) = v217;
                                v222 = (***(handle + 53))(*(handle + 53), *(handle + 48), v221);
                                *(handle + 22) = -1;
                                handle[580] &= ~0x20u;
                                if (v222)
                                {
                                  v213 = nw_webtransport_session_get_stream(handle, v217);
                                }

                                else
                                {
                                  v213 = 0;
                                }

                                if (v221)
                                {
                                  os_release(v221);
                                }

                                if (!v213)
                                {
                                  goto LABEL_464;
                                }

                                if (*(v213 + 46) != 3)
                                {
LABEL_433:
                                  *(handle + 57) = v213;
                                  goto LABEL_384;
                                }

                                if ((handle[580] & 2) != 0)
                                {
                                  goto LABEL_384;
                                }

                                v234 = __nwlog_obj();
                                if (!os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_384;
                                }

                                v235 = *(handle + 123);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2082;
                                *&buf[14] = handle + 496;
                                *&buf[22] = 2080;
                                v315 = " ";
                                *v316 = 1024;
                                *&v316[2] = v235;
                                *&v316[6] = 2048;
                                *&v316[8] = v313;
                                v236 = v234;
                                v237 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                              }

                              else
                              {
                                if (!v201)
                                {
                                  goto LABEL_384;
                                }

                                if ((handle[580] & 2) != 0)
                                {
                                  goto LABEL_384;
                                }

                                v241 = __nwlog_obj();
                                if (!os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_384;
                                }

                                v242 = *(handle + 123);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2082;
                                *&buf[14] = handle + 496;
                                *&buf[22] = 2080;
                                v315 = " ";
                                *v316 = 1024;
                                *&v316[2] = v242;
                                *&v316[6] = 2048;
                                *&v316[8] = v200;
                                v236 = v241;
                                v237 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                              }

                              _os_log_impl(&dword_181A37000, v236, OS_LOG_TYPE_ERROR, v237, buf, 0x30u);
                            }

                            else if ((v200 - 16770304) < 4)
                            {
                              goto LABEL_439;
                            }

LABEL_384:
                            v199 = *(handle + 12);
                            if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                            {
                              v238 = __nwlog_obj();
                              if (os_log_type_enabled(v238, OS_LOG_TYPE_DEBUG))
                              {
                                v239 = *(handle + 123);
                                v240 = *(handle + 13);
                                *buf = 136447490;
                                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                *&buf[12] = 2082;
                                *&buf[14] = handle + 496;
                                *&buf[22] = 2080;
                                v315 = " ";
                                *v316 = 1024;
                                *&v316[2] = v239;
                                *&v316[6] = 2048;
                                *&v316[8] = v199;
                                *&v316[16] = 2048;
                                *&v316[18] = v240;
                                _os_log_impl(&dword_181A37000, v238, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                              }
                            }

                            if (v199 > 16770303)
                            {
                              if (v199 <= 420171064)
                              {
                                if ((v199 - 16770304) < 4)
                                {
                                  goto LABEL_403;
                                }

                                if (v199 == 420171064)
                                {
                                  goto LABEL_393;
                                }

                                goto LABEL_458;
                              }

                              if ((v199 - 420171065) >= 2)
                              {
                                if ((v199 - 420171067) < 2)
                                {
                                  v202 = *(handle + 57);
                                  v204 = v199 == 420171068 && v198;
                                  v306 = MEMORY[0x1E69E9820];
                                  v307 = 0x40000000;
                                  v308 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                                  v309 = &__block_descriptor_tmp_34_36485;
                                  v312 = v204;
                                  v310 = handle + 96;
                                  v311 = v202;
                                  v205 = *(handle + 17);
                                  do
                                  {
                                    if (!v205)
                                    {
                                      break;
                                    }

                                    v206 = *(v205 + 32);
                                    v207 = (v308)(&v306);
                                    v205 = v206;
                                  }

                                  while ((v207 & 1) != 0);
                                  if (!v204)
                                  {
                                    goto LABEL_457;
                                  }

                                  nw_protocol_input_finished(v202, handle);
                                }

                                goto LABEL_458;
                              }

                              if (v198)
                              {
                                v208 = *(handle + 57);
                                v313 = -1;
                                if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v313))
                                {
                                  if (!v208 || (*(v208 + 276) & 0x10) == 0)
                                  {
                                    v209 = __nwlog_obj();
                                    if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
                                    {
                                      if (v208)
                                      {
                                        v210 = (v208 + 192);
                                      }

                                      else
                                      {
                                        v210 = "";
                                      }

                                      v211 = " ";
                                      if (!v208)
                                      {
                                        v211 = "";
                                      }

                                      v212 = *(v208 + 88);
                                      if (v212)
                                      {
                                        v195 = *(v212 + 492);
                                      }

                                      else
                                      {
                                        v195 = -1;
                                      }

                                      v196 = *(v208 + 64);
                                      *buf = 136448002;
                                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v210;
                                      *&buf[22] = 2080;
                                      v315 = v211;
                                      *v316 = 1024;
                                      *&v316[2] = v195;
                                      *&v316[6] = 2048;
                                      *&v316[8] = v196;
                                      *&v316[16] = 2048;
                                      *&v316[18] = v199;
                                      v317 = 2048;
                                      v318 = v196;
                                      v319 = 2048;
                                      v320 = v313;
                                      _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                                    }
                                  }

                                  nw_protocol_webtransport_stream_error(v208, handle);
                                  nw_protocol_webtransport_stream_disconnect(v208, v197);
                                }

                                else if ((handle[580] & 2) == 0)
                                {
                                  v215 = __nwlog_obj();
                                  if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                                  {
                                    v216 = *(handle + 123);
                                    *buf = 136447234;
                                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                    *&buf[12] = 2082;
                                    *&buf[14] = handle + 496;
                                    *&buf[22] = 2080;
                                    v315 = " ";
                                    *v316 = 1024;
                                    *&v316[2] = v216;
                                    *&v316[6] = 2048;
                                    *&v316[8] = v199;
                                    _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                                  }
                                }

LABEL_380:
                                *(handle + 57) = 0;
                                nw_http_capsule_complete_capsule((handle + 96));
                              }
                            }

                            else
                            {
                              if (v199 <= 16770047)
                              {
                                if ((v199 - 1) < 3 || v199 == -1)
                                {
LABEL_403:
                                  v203 = __nwlog_obj();
                                  if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446466;
                                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v199;
                                    _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                                  }

                                  goto LABEL_458;
                                }

                                if (!v199)
                                {
                                  v202 = *(handle + 56);
                                  if (v202 && *(v202 + 184) != 3)
                                  {
                                    v300 = MEMORY[0x1E69E9820];
                                    v301 = 0x40000000;
                                    v302 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                                    v303 = &__block_descriptor_tmp_35_36486;
                                    v304 = handle + 96;
                                    v305 = v202;
                                    v223 = *(handle + 17);
                                    do
                                    {
                                      if (!v223)
                                      {
                                        break;
                                      }

                                      v224 = *(v223 + 32);
                                      v225 = (v302)(&v300);
                                      v223 = v224;
                                    }

                                    while ((v225 & 1) != 0);
LABEL_457:
                                    nw_protocol_input_available(v202, handle);
                                    goto LABEL_458;
                                  }

LABEL_393:
                                  nw_frame_array_finalize((handle + 136), 1, 1);
                                }
                              }

                              else if ((v199 - 16770048) < 6)
                              {
                                goto LABEL_403;
                              }

LABEL_458:
                              if (v198)
                              {
                                goto LABEL_380;
                              }
                            }
                          }
                        }

LABEL_355:
                        nw_webtransport_http3_handle_input(handle);
                        v186 = *(handle + 56);
                        if (v186 && *(v186 + 72))
                        {
                          nw_protocol_input_available(*(v186 + 48), v186);
                        }

                        return;
                      }

                      if ((handle[580] & 2) == 0)
                      {
                        v274 = __nwlog_obj();
                        if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
                        {
                          v275 = *(handle + 123);
                          *buf = 136446978;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          *&buf[12] = 2082;
                          *&buf[14] = handle + 496;
                          *&buf[22] = 2080;
                          v315 = " ";
                          *v316 = 1024;
                          *&v316[2] = v275;
                          _os_log_impl(&dword_181A37000, v274, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                        }
                      }

                      v194 = __nwlog_obj();
                      *buf = 136446210;
LABEL_373:
                      *&buf[4] = "nw_webtransport_session_http_get_input";
                      LODWORD(v285) = 12;
                      v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v194, 16, "%{public}s output handler has no get_input_frames callback", buf, v285);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v306) = 0;
                      if (!__nwlog_fault(v108, type, &v306))
                      {
                        goto LABEL_363;
                      }

                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v109 = __nwlog_obj();
                        v110 = type[0];
                        if (os_log_type_enabled(v109, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          v111 = "%{public}s output handler has no get_input_frames callback";
LABEL_362:
                          _os_log_impl(&dword_181A37000, v109, v110, v111, buf, 0xCu);
                          goto LABEL_363;
                        }

                        goto LABEL_363;
                      }

                      if (v306 != 1)
                      {
                        v109 = __nwlog_obj();
                        v110 = type[0];
                        if (os_log_type_enabled(v109, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          v111 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      v181 = __nw_create_backtrace_string();
                      v109 = __nwlog_obj();
                      v110 = type[0];
                      v250 = os_log_type_enabled(v109, type[0]);
                      if (!v181)
                      {
                        if (v250)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          v111 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      if (v250)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v181;
                        v183 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
                        goto LABEL_342;
                      }

                      goto LABEL_343;
                    }

LABEL_488:
                    v244 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    LODWORD(v285) = 12;
                    v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v244, 16, "%{public}s called with null output_handler", buf, v285);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v306) = 0;
                    if (!__nwlog_fault(v108, type, &v306))
                    {
                      goto LABEL_363;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v109 = __nwlog_obj();
                      v110 = type[0];
                      if (os_log_type_enabled(v109, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v111 = "%{public}s called with null output_handler";
                        goto LABEL_362;
                      }

                      goto LABEL_363;
                    }

                    if (v306 != 1)
                    {
                      v109 = __nwlog_obj();
                      v110 = type[0];
                      if (os_log_type_enabled(v109, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v111 = "%{public}s called with null output_handler, backtrace limit exceeded";
                        goto LABEL_362;
                      }

                      goto LABEL_363;
                    }

                    v181 = __nw_create_backtrace_string();
                    v109 = __nwlog_obj();
                    v110 = type[0];
                    v254 = os_log_type_enabled(v109, type[0]);
                    if (!v181)
                    {
                      if (v254)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v111 = "%{public}s called with null output_handler, no backtrace";
                        goto LABEL_362;
                      }

                      goto LABEL_363;
                    }

                    if (v254)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_http_get_input";
                      *&buf[12] = 2082;
                      *&buf[14] = v181;
                      v183 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }

                  if (v96)
                  {
                    return;
                  }

                  *(handle + 119) = 3;
                  v106 = *(handle + 6);
                  if (v106)
                  {
                    v61 = *(v106 + 40);
                    if (!v61)
                    {
LABEL_197:
                      v107 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                      LODWORD(v285) = 12;
                      v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null webtransport_stream", buf, v285);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v306) = 0;
                      if (!__nwlog_fault(v108, type, &v306))
                      {
                        goto LABEL_363;
                      }

                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v109 = __nwlog_obj();
                        v110 = type[0];
                        if (!os_log_type_enabled(v109, type[0]))
                        {
                          goto LABEL_363;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v111 = "%{public}s called with null webtransport_stream";
                        goto LABEL_362;
                      }

                      if (v306 != 1)
                      {
                        v109 = __nwlog_obj();
                        v110 = type[0];
                        if (os_log_type_enabled(v109, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                          v111 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      v181 = __nw_create_backtrace_string();
                      v109 = __nwlog_obj();
                      v110 = type[0];
                      v253 = os_log_type_enabled(v109, type[0]);
                      if (!v181)
                      {
                        if (v253)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                          v111 = "%{public}s called with null webtransport_stream, no backtrace";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      if (v253)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v181;
                        v183 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                        goto LABEL_342;
                      }

                      goto LABEL_343;
                    }

LABEL_97:
                    *(handle + 55) = v61;
                    return;
                  }

                  goto LABEL_484;
                }

LABEL_43:
                if (!*(handle + 119))
                {
                  nw_webtransport_http_send_connect(handle);
                }

                return;
              }
            }
          }

          v83 = nw_protocol_copy_info(v79);
          v84 = v83;
          aBlock = MEMORY[0x1E69E9820];
          v289 = 0x40000000;
          v290 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
          v291 = &__block_descriptor_tmp_27_36446;
          v292 = handle;
          if (v83)
          {
            _nw_array_apply(v83, &aBlock);
            v85 = *(handle + 50);
            if (!v85)
            {
              os_release(v84);
              return;
            }
          }

          else
          {
            v85 = *(handle + 50);
            if (!v85)
            {
              return;
            }
          }

          v86 = nw_http_connection_metadata_get_version(v85);
          v87 = v86;
          if (v86 == 4)
          {
            v88 = 0;
          }

          else
          {
            if (v86 != 5)
            {
LABEL_160:
              v89 = v79[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v270 = v79[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v89 = v270;
              }

              v90 = nw_protocols_are_equal(v89, &nw_protocol_http_messaging_identifier::protocol_identifier);
              v91 = handle[580];
              if (v90)
              {
                v91 |= 0x40u;
                handle[580] = v91;
              }

              if ((v91 & 2) == 0)
              {
                v92 = __nwlog_obj();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                {
                  v93 = *(handle + 123);
                  if (v87 == 4)
                  {
                    v94 = 2;
                  }

                  else
                  {
                    v94 = 3;
                  }

                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_establish";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v315 = " ";
                  *v316 = 1024;
                  *&v316[2] = v93;
                  *&v316[6] = 1024;
                  *&v316[8] = v94;
                  _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
                }
              }

              if (v84)
              {
                os_release(v84);
              }

              goto LABEL_172;
            }

            v88 = 1;
          }

          *(handle + 120) = v88;
          goto LABEL_160;
        }

        v43 = __nwlog_obj();
        v44 = *(v41 + 16);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = "connection_state->local_sessions";
        *&buf[22] = 2048;
        v315 = 1;
        *v316 = 2048;
        *&v316[2] = v44;
        v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v306) = 0;
        if (__nwlog_fault(v45, type, &v306))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v46 = __nwlog_obj();
            v47 = type[0];
            if (os_log_type_enabled(v46, type[0]))
            {
              v48 = *(v41 + 16);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v315 = 1;
              *v316 = 2048;
              *&v316[2] = v48;
              v49 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_132:
              _os_log_impl(&dword_181A37000, v46, v47, v49, buf, 0x2Au);
            }
          }

          else if (v306 == 1)
          {
            v68 = __nw_create_backtrace_string();
            v46 = __nwlog_obj();
            v47 = type[0];
            v69 = os_log_type_enabled(v46, type[0]);
            if (v68)
            {
              if (v69)
              {
                v70 = *(v41 + 16);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_terminate";
                *&buf[12] = 2082;
                *&buf[14] = "connection_state->local_sessions";
                *&buf[22] = 2048;
                v315 = 1;
                *v316 = 2048;
                *&v316[2] = v70;
                *&v316[10] = 2082;
                *&v316[12] = v68;
                _os_log_impl(&dword_181A37000, v46, v47, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v68);
              goto LABEL_133;
            }

            if (v69)
            {
              v75 = *(v41 + 16);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v315 = 1;
              *v316 = 2048;
              *&v316[2] = v75;
              v49 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_132;
            }
          }

          else
          {
            v46 = __nwlog_obj();
            v47 = type[0];
            if (os_log_type_enabled(v46, type[0]))
            {
              v73 = *(v41 + 16);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v315 = 1;
              *v316 = 2048;
              *&v316[2] = v73;
              v49 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_132;
            }
          }
        }

LABEL_133:
        if (v45)
        {
          free(v45);
        }

        *(v41 + 16) = 0;
        goto LABEL_136;
      }

      v12 = 1;
    }

    *(handle + 120) = v12;
    goto LABEL_29;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v175 = a2;
    v176 = __nwlog_obj();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
    {
      v177 = *(handle + 123);
      identifier = v175->identifier;
      *buf = 136447490;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v315 = " ";
      *v316 = 1024;
      *&v316[2] = v177;
      *&v316[6] = 2048;
      *&v316[8] = v175;
      *&v316[16] = 2080;
      *&v316[18] = identifier;
      v24 = "%{public}s %{public}s%s<i%u> connected protocol %p (%s) is not our output_handler, ignoring";
      v25 = v176;
      v26 = OS_LOG_TYPE_DEBUG;
      v27 = 58;
      goto LABEL_53;
    }
  }
}

void nw_protocol_webtransport_session_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_disconnect";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_session_disconnect";
      v7 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v13 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_webtransport_session_disconnect";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v4)
        {
          return;
        }

LABEL_37:
        free(v4);
        return;
      }

      if (!v13)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_session_disconnect";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_session_disconnect";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = handle[123];
        *buf = 136447234;
        v19 = "nw_protocol_webtransport_session_disconnect";
        v20 = 2082;
        v21 = (handle + 124);
        v22 = 2080;
        v23 = " ";
        v24 = 1024;
        v25 = v11;
        v26 = 2048;
        v27 = a2;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called, with other_protocol: %p", buf, 0x30u);
      }
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_webtransport_session_disconnect";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v4, &type, &v16))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_disconnect";
    v7 = "%{public}s called with null webtransport_session";
    goto LABEL_35;
  }

  if (v16 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_disconnect";
    v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_35;
  }

  v14 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v15 = os_log_type_enabled(v5, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_session_disconnect";
    v7 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_35;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_webtransport_session_disconnect";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v4)
  {
    goto LABEL_37;
  }
}

uint64_t nw_protocol_webtransport_session_connect(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_connect";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "nw_protocol_webtransport_session_connect";
          v12 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v19 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v29 = "nw_protocol_webtransport_session_connect";
          v12 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v19)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v29 = "nw_protocol_webtransport_session_connect";
      v30 = 2082;
      v31 = backtrace_string;
      v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_connect";
    v12 = "%{public}s called with null protocol";
LABEL_75:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_76;
  }

  handle = a1->handle;
  if (!handle)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_connect";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v29 = "nw_protocol_webtransport_session_connect";
          v12 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v21 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v29 = "nw_protocol_webtransport_session_connect";
          v12 = "%{public}s called with null webtransport_session, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v21)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v29 = "nw_protocol_webtransport_session_connect";
      v30 = 2082;
      v31 = backtrace_string;
      v20 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_connect";
    v12 = "%{public}s called with null webtransport_session";
    goto LABEL_75;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_connect";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      v29 = "nw_protocol_webtransport_session_connect";
      v12 = "%{public}s called with null other_protocol";
      goto LABEL_75;
    }

    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_webtransport_session_connect";
        v12 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v22 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v29 = "nw_protocol_webtransport_session_connect";
        v12 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    if (!v22)
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    v29 = "nw_protocol_webtransport_session_connect";
    v30 = 2082;
    v31 = backtrace_string;
    v20 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_55:
    _os_log_impl(&dword_181A37000, v10, v11, v20, buf, 0x16u);
    goto LABEL_56;
  }

  if (a2->handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = handle[123];
        *buf = 136446978;
        v29 = "nw_protocol_webtransport_session_connect";
        v30 = 2082;
        v31 = (handle + 124);
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        v35 = v17;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if ((handle[145] & 0x10) != 0)
    {
      if ((handle[145] & 2) == 0 && gLogDatapath == 1)
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = handle[123];
          *buf = 136446978;
          v29 = "nw_protocol_webtransport_session_connect";
          v30 = 2082;
          v31 = (handle + 124);
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v25;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Skipping received connect callback, already sent to output_handler", buf, 0x26u);
        }
      }
    }

    else
    {
      output_handler = a1->output_handler;
      if ((handle[145] & 4) == 0)
      {
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            if (callbacks->add_listen_handler)
            {
              *(handle + 54) = output_handler;
              if (nw_protocol_add_listen_handler(output_handler, (handle + 16)))
              {
                v6 = 4;
              }

              else
              {
                v6 = 0;
              }

              *(handle + 580) = handle[145] & 0xFB | v6;
              output_handler = a1->output_handler;
            }
          }
        }
      }

      nw_protocol_connect(output_handler, a1);
      *(handle + 580) |= 0x10u;
    }

    return 1;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_protocol_webtransport_session_connect";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v9, &type, &v26))
  {
    goto LABEL_76;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_webtransport_session_connect";
        v12 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v29 = "nw_protocol_webtransport_session_connect";
        v12 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    if (v23)
    {
      *buf = 136446466;
      v29 = "nw_protocol_webtransport_session_connect";
      v30 = 2082;
      v31 = backtrace_string;
      v20 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

LABEL_56:
    free(backtrace_string);
    goto LABEL_76;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_connect";
    v12 = "%{public}s called with null webtransport_stream";
    goto LABEL_75;
  }

LABEL_76:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v184 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (a2)
      {
        v5 = a2->handle;
        if (v5)
        {
          if ((handle[580] & 2) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v6 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v7 = *(handle + 123);
              default_input_handler = a1->default_input_handler;
              *buf = 136447746;
              *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v7;
              *&v181[4] = 2048;
              *&v181[6] = a1;
              *&v181[14] = 2048;
              *&v181[16] = default_input_handler;
              v182 = 2048;
              v183 = a2;
              _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, protocol %p, default_input_handler %p, input protocol %p", buf, 0x44u);
            }
          }

          v156 = handle;
          if ((v5[276] & 0x20) == 0)
          {
            if (*(handle + 55) == v5)
            {
              if ((handle[580] & 2) == 0 && gLogDatapath == 1)
              {
                v140 = __nwlog_obj();
                if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
                {
                  v141 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_remove_stream";
                  v176 = 2082;
                  v177 = handle + 496;
                  v178 = 2080;
                  v179 = " ";
                  v180 = 1024;
                  *v181 = v141;
                  _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
                }
              }

              *(handle + 55) = 0;
              goto LABEL_68;
            }

            if (*(handle + 56) == v5)
            {
              if ((handle[580] & 2) == 0 && gLogDatapath == 1)
              {
                v142 = __nwlog_obj();
                if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
                {
                  v143 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_remove_stream";
                  v176 = 2082;
                  v177 = handle + 496;
                  v178 = 2080;
                  v179 = " ";
                  v180 = 1024;
                  *v181 = v143;
                  _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
                }
              }

              *(handle + 56) = 0;
              goto LABEL_68;
            }

            *type = *(v5 + 8);
            node = nw_hash_table_get_node(*(handle + 24), type, 8);
            if (node)
            {
              if (nw_hash_table_remove_node(*(handle + 24), node))
              {
                goto LABEL_68;
              }

              if ((handle[580] & 2) != 0)
              {
                goto LABEL_68;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v10 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }

              v11 = *(handle + 123);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v11;
              *&v181[4] = 2048;
              *&v181[6] = *type;
              v12 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
            }

            else
            {
              if ((handle[580] & 2) != 0)
              {
                goto LABEL_68;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v10 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }

              v29 = *(handle + 123);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v29;
              *&v181[4] = 2048;
              *&v181[6] = *type;
              v12 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
            }

            v30 = v10;
            v31 = OS_LOG_TYPE_ERROR;
            v32 = 48;
LABEL_45:
            _os_log_impl(&dword_181A37000, v30, v31, v12, buf, v32);
LABEL_68:
            *(v5 + 11) = 0;
            v39 = *(handle + 6) == v5;
            v40 = &qword_1ED411000;
            if (!v39)
            {
              return 1;
            }

            if (*(handle + 119))
            {
              v41 = *(handle + 56);
              if (v41)
              {
LABEL_72:
                nw_protocol_set_input_handler(handle, v41);
                if ((handle[580] & 2) != 0)
                {
                  return 1;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v42 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  return 1;
                }

                v43 = *(handle + 123);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_stream";
                v176 = 2082;
                v177 = handle + 496;
                v178 = 2080;
                v179 = " ";
                v180 = 1024;
                *v181 = v43;
                v44 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
                goto LABEL_75;
              }
            }

            else
            {
              if ((handle[580] & 2) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v46 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v47 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_remove_stream";
                  v176 = 2082;
                  v177 = handle + 496;
                  v178 = 2080;
                  v179 = " ";
                  v180 = 1024;
                  *v181 = v47;
                  _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
                }
              }

              v48 = *(handle + 58);
              v49 = *(handle + 52);
              v157[0] = MEMORY[0x1E69E9820];
              v157[1] = 0x40000000;
              v157[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
              v157[3] = &unk_1E6A31A10;
              v157[4] = v48;
              nw_queue_context_async(v49, v157);
              v41 = *(handle + 56);
              if (v41)
              {
                goto LABEL_72;
              }
            }

            v50 = *(handle + 24);
            if (v50 && v50[12]._os_unfair_lock_opaque)
            {
              some_node = nw_hash_table_get_some_node(v50);
              object = nw_hash_node_get_object(some_node);
              nw_protocol_set_input_handler(handle, object);
              if ((handle[580] & 2) != 0)
              {
                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                return 1;
              }

              v53 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v53;
              v44 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
              goto LABEL_75;
            }

            if (*(handle + 122))
            {
              v54 = *(handle + 42);
              if (v54)
              {
                if ((*(v54 + 276) & 0x10) == 0 && gLogDatapath == 1)
                {
                  v147 = *(handle + 42);
                  v148 = __nwlog_obj();
                  v149 = os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG);
                  v54 = v147;
                  if (v149)
                  {
                    v150 = *(v147 + 88);
                    if (v150)
                    {
                      v151 = *(v150 + 492);
                    }

                    else
                    {
                      v151 = -1;
                    }

                    v152 = *(v147 + 64);
                    *buf = 136447490;
                    *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
                    v176 = 2082;
                    v177 = (v147 + 192);
                    v178 = 2080;
                    v179 = " ";
                    v180 = 1024;
                    *v181 = v151;
                    *&v181[4] = 2048;
                    *&v181[6] = v152;
                    *&v181[14] = 2048;
                    *&v181[16] = v147;
                    _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
                    v54 = v147;
                  }
                }
              }

              nw_protocol_set_input_handler(handle, v54);
              if ((handle[580] & 2) != 0)
              {
                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                return 1;
              }

              v55 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v55;
              v44 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_75:
              _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, v44, buf, 0x26u);
              return 1;
            }

            v56 = *(handle + 55);
            if (v56)
            {
              nw_protocol_set_input_handler(handle, v56);
              if ((handle[580] & 2) != 0)
              {
                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                return 1;
              }

              v57 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v57;
              v44 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
              goto LABEL_75;
            }

            nw_protocol_set_input_handler(handle, 0);
            if ((handle[580] & 2) == 0)
            {
              v58 = __nwlog_obj();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = *(handle + 123);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_destroy";
                v176 = 2082;
                v177 = handle + 496;
                v178 = 2080;
                v179 = " ";
                v180 = 1024;
                *v181 = v59;
                _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
              }
            }

            *buf = 0;
            nw::retained_ptr<nw_endpoint *>::operator=((handle + 368), buf);
            *buf = 0;
            nw::retained_ptr<nw_endpoint *>::operator=((handle + 384), buf);
            *buf = 0;
            nw::retained_ptr<nw_endpoint *>::operator=((handle + 400), buf);
            nw_http_capsule_framer_cleanup(handle + 12);
            v60 = *(handle + 53);
            if (v60)
            {
              (*(*v60 + 8))(v60, handle, 0);
            }

            if ((handle[580] & 4) != 0)
            {
              if ((nw_protocol_remove_listen_handler(*(handle + 54), (handle + 64)) & 1) == 0 && (handle[580] & 2) == 0)
              {
                v61 = __nwlog_obj();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  v62 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v176 = 2082;
                  v177 = handle + 496;
                  v178 = 2080;
                  v179 = " ";
                  v180 = 1024;
                  *v181 = v62;
                  _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
                }
              }

              *(handle + 54) = 0;
            }

            v63 = *(handle + 4);
            if (v63)
            {
              nw_protocol_remove_input_handler(v63, handle);
              if (*(handle + 119) != 5)
              {
                nw_protocol_remove_instance(handle);
              }
            }

            v164 = 0;
            v165 = &v164;
            v166 = 0x2000000000;
            v167 = 0;
            v64 = *(handle + 24);
            if (v64)
            {
              *type = MEMORY[0x1E69E9820];
              v159 = 0x40000000;
              v160 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
              v161 = &unk_1E6A31A38;
              v162 = &v164;
              v163 = handle;
              nw_hash_table_apply(v64, type);
              v65 = *(handle + 24);
              if (v65)
              {
                _nw_hash_table_release(v65);
                *(handle + 24) = 0;
              }
            }

            v66 = *(handle + 42);
            v165[3] = v66;
            if (!v66)
            {
              (*(*(handle + 58) + 16))();
              v115 = *(handle + 58);
              if (v115)
              {
                _Block_release(v115);
                *(handle + 58) = 0;
              }

              std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(handle);
              free(handle);
              _Block_object_dispose(&v164, 8);
              return 1;
            }

            v154 = handle + 496;
            v155 = handle + 344;
            while (1)
            {
              v66 = *(v66 + 112);
              if ((handle[580] & 2) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v67 = v40[275];
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v68 = *(handle + 123);
                  v69 = v165[3];
                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v176 = 2082;
                  v177 = v154;
                  v178 = 2080;
                  v179 = " ";
                  v180 = 1024;
                  *v181 = v68;
                  *&v181[4] = 2048;
                  *&v181[6] = v69;
                  _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
                }
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v70 = v40[275];
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_session_destroy";
              LODWORD(v153) = 12;
              v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s should not have streams left when destroying", buf, v153);
              v168[0] = OS_LOG_TYPE_ERROR;
              v174 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v71, v168, &v174))
              {
                if (v168[0] == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v72 = gLogObj;
                  v73 = v168[0];
                  if (!os_log_type_enabled(gLogObj, v168[0]))
                  {
                    goto LABEL_135;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v74 = v72;
                  v75 = v73;
                  v76 = "%{public}s should not have streams left when destroying";
LABEL_134:
                  _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
                  goto LABEL_135;
                }

                if (v174 != OS_LOG_TYPE_INFO)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v81 = gLogObj;
                  v82 = v168[0];
                  if (!os_log_type_enabled(gLogObj, v168[0]))
                  {
                    goto LABEL_135;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v74 = v81;
                  v75 = v82;
                  v76 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
                  goto LABEL_134;
                }

                backtrace_string = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v78 = gLogObj;
                v79 = v168[0];
                v80 = os_log_type_enabled(gLogObj, v168[0]);
                if (!backtrace_string)
                {
                  if (!v80)
                  {
                    goto LABEL_135;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v74 = v78;
                  v75 = v79;
                  v76 = "%{public}s should not have streams left when destroying, no backtrace";
                  goto LABEL_134;
                }

                if (v80)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v176 = 2082;
                  v177 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v78, v79, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
              }

LABEL_135:
              if (v71)
              {
                free(v71);
              }

              v83 = *(v66 + 112);
              v84 = *(v66 + 120);
              v85 = (v83 + 120);
              if (!v83)
              {
                v85 = v155;
              }

              *v85 = v84;
              *v84 = v83;
              *(v66 + 112) = 0;
              *(v66 + 120) = 0;
              v86 = v165[3];
              v40 = &qword_1ED411000;
              if (v86)
              {
                if ((*(v86 + 276) & 0x10) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v87 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v88 = *(v86 + 88);
                    if (v88)
                    {
                      v89 = *(v88 + 492);
                    }

                    else
                    {
                      v89 = -1;
                    }

                    v90 = *(v86 + 64);
                    *buf = 136447490;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v176 = 2082;
                    v177 = (v86 + 192);
                    v178 = 2080;
                    v179 = " ";
                    v180 = 1024;
                    *v181 = v89;
                    *&v181[4] = 2048;
                    *&v181[6] = v90;
                    *&v181[14] = 2048;
                    *&v181[16] = v86;
                    _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
                  }
                }

                if (*(v86 + 72))
                {
                  if ((*(v86 + 276) & 0x10) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v91 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                    {
                      v92 = *(v86 + 88);
                      if (v92)
                      {
                        v93 = *(v92 + 492);
                      }

                      else
                      {
                        v93 = -1;
                      }

                      v94 = *(v86 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_stream_destroy";
                      v176 = 2082;
                      v177 = (v86 + 192);
                      v178 = 2080;
                      v179 = " ";
                      v180 = 1024;
                      *v181 = v93;
                      *&v181[4] = 2048;
                      *&v181[6] = v94;
                      _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
                    }
                  }
                }

                *v168 = MEMORY[0x1E69E9820];
                v169 = 0x40000000;
                v170 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
                v171 = &__block_descriptor_tmp_39_36819;
                v172 = v86;
                v95 = *(v86 + 72);
                do
                {
                  if (!v95)
                  {
                    break;
                  }

                  v96 = *(v95 + 32);
                  v97 = (v170)(v168);
                  v95 = v96;
                }

                while ((v97 & 1) != 0);
                (*(*(v86 + 176) + 16))();
                v98 = *(v86 + 176);
                if (v98)
                {
                  _Block_release(v98);
                  *(v86 + 176) = 0;
                }

                if (*(v86 + 168))
                {
                  v99 = *(v86 + 160);
                  if (v99)
                  {
                    os_release(v99);
                  }
                }

                *(v86 + 160) = 0;
                if (*(v86 + 152))
                {
                  v100 = *(v86 + 144);
                  if (v100)
                  {
                    os_release(v100);
                  }
                }

                *(v86 + 144) = 0;
                if (*(v86 + 136))
                {
                  v101 = *(v86 + 128);
                  if (v101)
                  {
                    os_release(v101);
                  }
                }

                free(v86);
                goto LABEL_117;
              }

              v102 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_stream_destroy";
              LODWORD(v153) = 12;
              v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null webtransport_stream", buf, v153);
              v174 = OS_LOG_TYPE_ERROR;
              v173 = 0;
              if (__nwlog_fault(v103, &v174, &v173))
              {
                if (v174 == OS_LOG_TYPE_FAULT)
                {
                  v104 = __nwlog_obj();
                  v105 = v174;
                  if (os_log_type_enabled(v104, v174))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v106 = v104;
                    v107 = v105;
                    v108 = "%{public}s called with null webtransport_stream";
LABEL_180:
                    _os_log_impl(&dword_181A37000, v106, v107, v108, buf, 0xCu);
                  }
                }

                else if (v173 == 1)
                {
                  v109 = __nw_create_backtrace_string();
                  v110 = __nwlog_obj();
                  v111 = v174;
                  v112 = os_log_type_enabled(v110, v174);
                  if (v109)
                  {
                    if (v112)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_stream_destroy";
                      v176 = 2082;
                      v177 = v109;
                      _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v109);
                    goto LABEL_181;
                  }

                  if (v112)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v106 = v110;
                    v107 = v111;
                    v108 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_180;
                  }
                }

                else
                {
                  v113 = __nwlog_obj();
                  v114 = v174;
                  if (os_log_type_enabled(v113, v174))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v106 = v113;
                    v107 = v114;
                    v108 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_180;
                  }
                }
              }

LABEL_181:
              if (v103)
              {
                free(v103);
              }

              v40 = &qword_1ED411000;
LABEL_117:
              v165[3] = v66;
              handle = v156;
            }
          }

          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
          {
            v135 = __nwlog_obj();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
            {
              v136 = *(handle + 123);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v176 = 2082;
              v177 = handle + 496;
              v178 = 2080;
              v179 = " ";
              v180 = 1024;
              *v181 = v136;
              *&v181[4] = 2048;
              *&v181[6] = v5;
              _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
            }
          }

          if ((v5[276] & 0x20) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            v176 = 2048;
            v177 = v5;
            v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
            type[0] = OS_LOG_TYPE_ERROR;
            v168[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v13, type, v168))
            {
              goto LABEL_56;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_56;
              }

              *buf = 136446466;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v176 = 2048;
              v177 = v5;
              v16 = "%{public}s stream %p not in pending list, cannot remove";
            }

            else if (v168[0] == OS_LOG_TYPE_INFO)
            {
              v27 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type[0];
              v28 = os_log_type_enabled(gLogObj, type[0]);
              if (v27)
              {
                if (v28)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                  v176 = 2048;
                  v177 = v5;
                  v178 = 2082;
                  v179 = v27;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v27);
                goto LABEL_56;
              }

              if (!v28)
              {
LABEL_56:
                if (v13)
                {
                  free(v13);
                }

                goto LABEL_68;
              }

              *buf = 136446466;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v176 = 2048;
              v177 = v5;
              v16 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_56;
              }

              *buf = 136446466;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v176 = 2048;
              v177 = v5;
              v16 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x16u);
            goto LABEL_56;
          }

          v17 = *(v5 + 14);
          v18 = *(v5 + 15);
          v19 = handle + 344;
          if (v17)
          {
            v19 = (v17 + 120);
          }

          *v19 = v18;
          *v18 = v17;
          *(v5 + 14) = 0;
          *(v5 + 15) = 0;
          v20 = *(handle + 122);
          *(handle + 122) = v20 - 1;
          if (v20)
          {
LABEL_66:
            v38 = v5[276];
            v5[276] = v38 & 0xDF;
            if ((v38 & 0x10) != 0)
            {
              goto LABEL_68;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_68;
            }

            v137 = __nwlog_obj();
            if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_68;
            }

            v138 = *(v5 + 11);
            if (v138)
            {
              v139 = *(v138 + 492);
            }

            else
            {
              v139 = -1;
            }

            v145 = *(v5 + 8);
            v146 = *(handle + 122);
            *buf = 136447746;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            v176 = 2082;
            v177 = v5 + 192;
            v178 = 2080;
            v179 = " ";
            v180 = 1024;
            *v181 = v139;
            *&v181[4] = 2048;
            *&v181[6] = v145;
            *&v181[14] = 2048;
            *&v181[16] = v5;
            v182 = 1024;
            LODWORD(v183) = v146;
            v12 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
            v30 = v137;
            v31 = OS_LOG_TYPE_DEBUG;
            v32 = 64;
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = *(handle + 122);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          v176 = 2082;
          v177 = "webtransport_session->pending_stream_count";
          v178 = 2048;
          v179 = 1;
          v180 = 2048;
          *v181 = v21;
          v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
          type[0] = OS_LOG_TYPE_ERROR;
          v168[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v22, type, v168))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              v24 = type[0];
              if (os_log_type_enabled(gLogObj, type[0]))
              {
                v25 = *(handle + 122);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                v176 = 2082;
                v177 = "webtransport_session->pending_stream_count";
                v178 = 2048;
                v179 = 1;
                v180 = 2048;
                *v181 = v25;
                v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_62:
                _os_log_impl(&dword_181A37000, v23, v24, v26, buf, 0x2Au);
              }
            }

            else if (v168[0] == OS_LOG_TYPE_INFO)
            {
              v33 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              v24 = type[0];
              v34 = os_log_type_enabled(gLogObj, type[0]);
              if (v33)
              {
                if (v34)
                {
                  v35 = *(handle + 122);
                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                  v176 = 2082;
                  v177 = "webtransport_session->pending_stream_count";
                  v178 = 2048;
                  v179 = 1;
                  v180 = 2048;
                  *v181 = v35;
                  *&v181[8] = 2082;
                  *&v181[10] = v33;
                  _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v33);
                goto LABEL_63;
              }

              if (v34)
              {
                v37 = *(handle + 122);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                v176 = 2082;
                v177 = "webtransport_session->pending_stream_count";
                v178 = 2048;
                v179 = 1;
                v180 = 2048;
                *v181 = v37;
                v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_62;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              v24 = type[0];
              if (os_log_type_enabled(gLogObj, type[0]))
              {
                v36 = *(handle + 122);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                v176 = 2082;
                v177 = "webtransport_session->pending_stream_count";
                v178 = 2048;
                v179 = 1;
                v180 = 2048;
                *v181 = v36;
                v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_62;
              }
            }
          }

LABEL_63:
          if (v22)
          {
            free(v22);
          }

          *(handle + 122) = 0;
          goto LABEL_66;
        }

        v127 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v127, 16, "%{public}s called with null webtransport_stream", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v168[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v122, type, v168))
        {
LABEL_251:
          if (v122)
          {
            v144 = v122;
            goto LABEL_253;
          }

          return 0;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v123 = __nwlog_obj();
          v124 = type[0];
          if (!os_log_type_enabled(v123, type[0]))
          {
            goto LABEL_251;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v125 = "%{public}s called with null webtransport_stream";
          goto LABEL_250;
        }

        if (v168[0] != OS_LOG_TYPE_INFO)
        {
          v123 = __nwlog_obj();
          v124 = type[0];
          if (!os_log_type_enabled(v123, type[0]))
          {
            goto LABEL_251;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v125 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_250;
        }

        v130 = __nw_create_backtrace_string();
        v123 = __nwlog_obj();
        v124 = type[0];
        v134 = os_log_type_enabled(v123, type[0]);
        if (!v130)
        {
          if (!v134)
          {
            goto LABEL_251;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v125 = "%{public}s called with null webtransport_stream, no backtrace";
          goto LABEL_250;
        }

        if (v134)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v176 = 2082;
          v177 = v130;
          v132 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
          goto LABEL_220;
        }

LABEL_221:
        free(v130);
        goto LABEL_251;
      }

      v126 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s called with null input_protocol", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v168[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v122, type, v168))
      {
        goto LABEL_251;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v125 = "%{public}s called with null input_protocol";
        goto LABEL_250;
      }

      if (v168[0] != OS_LOG_TYPE_INFO)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v125 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_250;
      }

      v130 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v124 = type[0];
      v133 = os_log_type_enabled(v123, type[0]);
      if (!v130)
      {
        if (!v133)
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v125 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_250;
      }

      if (!v133)
      {
        goto LABEL_221;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v176 = 2082;
      v177 = v130;
      v132 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    }

    else
    {
      v121 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null webtransport_session", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v168[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v122, type, v168))
      {
        goto LABEL_251;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v125 = "%{public}s called with null webtransport_session";
LABEL_250:
        _os_log_impl(&dword_181A37000, v123, v124, v125, buf, 0xCu);
        goto LABEL_251;
      }

      if (v168[0] != OS_LOG_TYPE_INFO)
      {
        v123 = __nwlog_obj();
        v124 = type[0];
        if (!os_log_type_enabled(v123, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v125 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_250;
      }

      v130 = __nw_create_backtrace_string();
      v123 = __nwlog_obj();
      v124 = type[0];
      v131 = os_log_type_enabled(v123, type[0]);
      if (!v130)
      {
        if (!v131)
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v125 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_250;
      }

      if (!v131)
      {
        goto LABEL_221;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v176 = 2082;
      v177 = v130;
      v132 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
    }

LABEL_220:
    _os_log_impl(&dword_181A37000, v123, v124, v132, buf, 0x16u);
    goto LABEL_221;
  }

  v116 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
  v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v116, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v168[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v117, type, v168))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v118 = __nwlog_obj();
      v119 = type[0];
      if (!os_log_type_enabled(v118, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v120 = "%{public}s called with null protocol";
LABEL_241:
      _os_log_impl(&dword_181A37000, v118, v119, v120, buf, 0xCu);
      goto LABEL_242;
    }

    if (v168[0] != OS_LOG_TYPE_INFO)
    {
      v118 = __nwlog_obj();
      v119 = type[0];
      if (!os_log_type_enabled(v118, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v120 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_241;
    }

    v128 = __nw_create_backtrace_string();
    v118 = __nwlog_obj();
    v119 = type[0];
    v129 = os_log_type_enabled(v118, type[0]);
    if (!v128)
    {
      if (!v129)
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v120 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_241;
    }

    if (v129)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v176 = 2082;
      v177 = v128;
      _os_log_impl(&dword_181A37000, v118, v119, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v128);
  }

LABEL_242:
  if (v117)
  {
    v144 = v117;
LABEL_253:
    free(v144);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v387 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v223 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v223, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v371[0]) = 0;
    if (!__nwlog_fault(v224, type, v371))
    {
      goto LABEL_532;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v371[0]) != 1)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_531;
      }

      backtrace_string = __nw_create_backtrace_string();
      v225 = __nwlog_obj();
      v226 = type[0];
      v242 = os_log_type_enabled(v225, type[0]);
      if (!backtrace_string)
      {
        if (!v242)
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_531;
      }

      if (!v242)
      {
        goto LABEL_444;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v243 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_443;
    }

    v225 = __nwlog_obj();
    v226 = type[0];
    if (!os_log_type_enabled(v225, type[0]))
    {
      goto LABEL_532;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v227 = "%{public}s called with null protocol";
LABEL_531:
    _os_log_impl(&dword_181A37000, v225, v226, v227, buf, 0xCu);
    goto LABEL_532;
  }

  handle = a1->handle;
  if (!handle)
  {
    v228 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v228, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v371[0]) = 0;
    if (!__nwlog_fault(v224, type, v371))
    {
      goto LABEL_532;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v371[0]) != 1)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_531;
      }

      backtrace_string = __nw_create_backtrace_string();
      v225 = __nwlog_obj();
      v226 = type[0];
      v244 = os_log_type_enabled(v225, type[0]);
      if (!backtrace_string)
      {
        if (!v244)
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_531;
      }

      if (!v244)
      {
        goto LABEL_444;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v243 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_443;
    }

    v225 = __nwlog_obj();
    v226 = type[0];
    if (!os_log_type_enabled(v225, type[0]))
    {
      goto LABEL_532;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v227 = "%{public}s called with null webtransport_session";
    goto LABEL_531;
  }

  if (!a2)
  {
    v229 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v229, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v371[0]) = 0;
    if (!__nwlog_fault(v224, type, v371))
    {
      goto LABEL_532;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v371[0]) != 1)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_531;
      }

      backtrace_string = __nw_create_backtrace_string();
      v225 = __nwlog_obj();
      v226 = type[0];
      v246 = os_log_type_enabled(v225, type[0]);
      if (!backtrace_string)
      {
        if (!v246)
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_531;
      }

      if (!v246)
      {
        goto LABEL_444;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v243 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_443;
    }

    v225 = __nwlog_obj();
    v226 = type[0];
    if (!os_log_type_enabled(v225, type[0]))
    {
      goto LABEL_532;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v227 = "%{public}s called with null input_protocol";
    goto LABEL_531;
  }

  if ((handle[145] & 2) == 0 && gLogDatapath == 1)
  {
    v230 = __nwlog_obj();
    if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
    {
      v231 = handle[123];
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 124;
      *&buf[22] = 2080;
      v374 = " ";
      *v375 = 1024;
      *&v375[2] = v231;
      _os_log_impl(&dword_181A37000, v230, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if (handle[119] != 5)
  {
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v9 = parameters;
      remote_endpoint = nw_protocol_get_remote_endpoint(a2);
      if (remote_endpoint)
      {
        v11 = remote_endpoint;
        v361 = a2;
        if (*(handle + 46))
        {
          goto LABEL_34;
        }

        v12 = _nw_parameters_shallow_copy(v9, 1);
        v13 = nw_parameters_copy_protocol_options_legacy(v12, handle);
        nw_protocol_options_get_log_id_str(v13, handle + 124, 84);
        handle[123] = nw_protocol_get_next_instance_id();
        if (v13)
        {
          top_id = _nw_protocol_options_get_top_id(v13);
          if ((handle[145] & 2) != 0)
          {
LABEL_17:
            if (v13)
            {
              v17 = nw_parameters_copy_default_protocol_stack(v12);
              v18 = _nw_protocol_options_copy(v13);
              if (nw_protocol_copy_webtransport_definition::onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
              }

              v19 = nw_protocol_copy_webtransport_definition::definition;
              nw_parameters_set_protocol_instance(v18, v20, handle);
              if (v19)
              {
                os_release(v19);
              }

              nw_protocol_stack_replace_protocol_with_handle(v17, handle, v18);
              if (v18)
              {
                os_release(v18);
              }

              if (v17)
              {
                os_release(v17);
              }
            }

            else if ((handle[145] & 2) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v21 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v22 = handle[123];
                *buf = 136447490;
                *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = handle + 124;
                *&buf[22] = 2080;
                v374 = " ";
                *v375 = 1024;
                *&v375[2] = v22;
                *&v375[6] = 2048;
                *&v375[8] = v12;
                *&v375[16] = 2048;
                *&v375[18] = v9;
                _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> failed to find webtransport options in new parameters %p, copy of %p", buf, 0x3Au);
              }
            }

            v23 = *(handle + 376);
            if (v23)
            {
              v24 = *(handle + 46);
              if (v24)
              {
                os_release(v24);
                v23 = *(handle + 376);
              }
            }

            *(handle + 46) = v12;
            *(handle + 376) = v23 | 1;
            if (v13)
            {
              os_release(v13);
            }

LABEL_34:
            identifier = a1->identifier;
            v26 = v9;
            v27 = _nw_parameters_copy_protocol_options_with_level();

            if (v27)
            {
              v28 = malloc_type_calloc(1uLL, 0x118uLL, 0xCD3CE973uLL);
              v29 = v28;
              v30 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (v28)
              {
                v28[34] = 0;
                *(v28 + 15) = 0u;
                *(v28 + 16) = 0u;
                *(v28 + 13) = 0u;
                *(v28 + 14) = 0u;
                *(v28 + 11) = 0u;
                *(v28 + 12) = 0u;
                *(v28 + 9) = 0u;
                *(v28 + 10) = 0u;
                *(v28 + 7) = 0u;
                *(v28 + 8) = 0u;
                *(v28 + 5) = 0u;
                *(v28 + 6) = 0u;
                *(v28 + 3) = 0u;
                *(v28 + 4) = 0u;
                *(v28 + 1) = 0u;
                *(v28 + 2) = 0u;
                *v28 = 0u;
              }

              else
              {
                v359 = v27;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v35 = gLogObj;
                v36 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                *buf = 136446722;
                *&buf[4] = "nw_protocol_webtransport_stream_create";
                if (v36)
                {
                  v37 = 3;
                }

                else
                {
                  v37 = 2;
                }

                *&buf[12] = 2048;
                *&buf[14] = 1;
                *&buf[22] = 2048;
                v374 = 280;
                LODWORD(v356) = 32;
                v38 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v356);
                result = __nwlog_should_abort(v38);
                if (result || ((free(v38), MEMORY[0x110] = 0, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0xA0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, MEMORY[0x80] = 0, MEMORY[0x88] = 0, MEMORY[0x90] = 0, MEMORY[0x98] = 0, MEMORY[0xA0] = 0, MEMORY[0xA8] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v39 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v40 = 2) : (v40 = 3), *buf = 136446210, *&buf[4] = "nw_protocol_webtransport_stream_create", LODWORD(v357) = 12, v41 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s strict_placement_new(nw_webtransport_stream, strict_calloc(1, sizeof(nw_webtransport_stream)),) failed", buf, v357), result = __nwlog_should_abort(v41), result))
                {
                  __break(1u);
                  return result;
                }

                free(v41);
                v30 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                v27 = v359;
              }

              *(v29 + 16) = identifier;
              if (nw_protocol_webtransport_stream_callbacks(void)::onceToken != -1)
              {
                dispatch_once(&nw_protocol_webtransport_stream_callbacks(void)::onceToken, &__block_literal_global_22);
              }

              *(v29 + 24) = &nw_protocol_webtransport_stream_callbacks(void)::protocol_callbacks;
              *(v29 + 40) = v29;
              *(v29 + 72) = 0;
              *(v29 + 80) = v29 + 72;
              *(v29 + 88) = handle;
              v42 = os_retain(v11);
              v43 = *(v29 + 136);
              if ((v43 & 1) != 0 && *(v29 + 128))
              {
                v44 = v42;
                os_release(*(v29 + 128));
                v42 = v44;
                v43 = *(v29 + 136);
              }

              *(v29 + 128) = v42;
              *(v29 + 136) = v43 | 1;
              v45 = os_retain(v26);
              v46 = *(v29 + 152);
              if ((v46 & 1) != 0 && *(v29 + 144))
              {
                v47 = v45;
                os_release(*(v29 + 144));
                v45 = v47;
                v46 = *(v29 + 152);
              }

              *(v29 + 144) = v45;
              *(v29 + 152) = v46 | 1;
              if (nw_protocol_copy_webtransport_definition::onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
              }

              singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_webtransport_definition::definition);
              v49 = *(v29 + 168);
              if ((v49 & 1) != 0 && *(v29 + 160))
              {
                v50 = singleton;
                os_release(*(v29 + 160));
                singleton = v50;
                v49 = *(v29 + 168);
              }

              *(v29 + 160) = singleton;
              *(v29 + 168) = v49 | 1;
              if (_nw_parameters_get_logging_disabled(v26))
              {
                v51 = 16;
              }

              else
              {
                v51 = 0;
              }

              *(v29 + 276) = *(v29 + 276) & 0xEF | v51;
              *(v29 + 64) = -1;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              v374 = v29;
              *type = MEMORY[0x1E69E9820];
              v365 = 0x40000000;
              v366 = ___ZL38nw_protocol_webtransport_stream_createPK22nw_protocol_identifierP23nw_webtransport_sessionP11nw_endpointP13nw_parameters_block_invoke;
              v367 = &unk_1E6A31890;
              v368 = buf;
              *(v29 + 176) = _Block_copy(type);
              _Block_object_dispose(buf, 8);
              if ((*(v29 + 276) & 0x10) == 0 && BYTE1(v30[82].isa) == 1)
              {
                v253 = __nwlog_obj();
                if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
                {
                  v254 = *(v29 + 88);
                  if (v254)
                  {
                    v255 = *(v254 + 492);
                  }

                  else
                  {
                    v255 = -1;
                  }

                  v320 = *(v29 + 64);
                  *buf = 136447490;
                  *&buf[4] = "nw_protocol_webtransport_stream_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v29 + 192;
                  *&buf[22] = 2080;
                  v374 = " ";
                  *v375 = 1024;
                  *&v375[2] = v255;
                  *&v375[6] = 2048;
                  *&v375[8] = v320;
                  *&v375[16] = 2048;
                  *&v375[18] = v29;
                  _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> created WebTransport stream with protocol pointer %p", buf, 0x3Au);
                }
              }

              os_release(v27);
              v52 = v361;
              if ((*(v29 + 276) & 0x10) == 0 && BYTE1(v30[82].isa) == 1)
              {
                v256 = __nwlog_obj();
                if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
                {
                  v257 = *(v29 + 88);
                  if (v257)
                  {
                    v258 = *(v257 + 492);
                  }

                  else
                  {
                    v258 = -1;
                  }

                  v321 = *(v29 + 64);
                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v29 + 192;
                  *&buf[22] = 2080;
                  v374 = " ";
                  *v375 = 1024;
                  *&v375[2] = v258;
                  *&v375[6] = 2048;
                  *&v375[8] = v321;
                  _os_log_impl(&dword_181A37000, v256, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
                  v52 = v361;
                }
              }

              nw_protocol_set_input_handler(v29, v52);
              *v29 = *v52->flow_id;
              nw_protocol_set_output_handler(v52, v29);
              v53 = *(v29 + 88);
              if (v53)
              {
                v54 = *(v29 + 144);
                if (v54)
                {
                  if ((*(v29 + 276) & 0x10) == 0 && BYTE1(v30[82].isa) == 1)
                  {
                    v264 = __nwlog_obj();
                    if (os_log_type_enabled(v264, OS_LOG_TYPE_DEBUG))
                    {
                      v265 = *(v29 + 88);
                      if (v265)
                      {
                        v266 = *(v265 + 492);
                      }

                      else
                      {
                        v266 = -1;
                      }

                      v322 = *(v29 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v374 = " ";
                      *v375 = 1024;
                      *&v375[2] = v266;
                      *&v375[6] = 2048;
                      *&v375[8] = v322;
                      _os_log_impl(&dword_181A37000, v264, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
                    }
                  }

                  v55 = v54;
                  v56 = _nw_parameters_copy_protocol_options_with_level();

                  if (v56)
                  {
                    v57 = v27;
                    if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v269 = __nwlog_obj();
                      if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
                      {
                        v270 = *(v29 + 88);
                        if (v270)
                        {
                          v271 = *(v270 + 492);
                        }

                        else
                        {
                          v271 = -1;
                        }

                        v329 = *(v29 + 64);
                        *buf = 136448514;
                        *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v374 = " ";
                        *v375 = 1024;
                        *&v375[2] = v271;
                        *&v375[6] = 2048;
                        *&v375[8] = v329;
                        *&v375[16] = 2048;
                        *&v375[18] = v29;
                        *&v375[26] = 2048;
                        v376 = v29;
                        v377 = 2048;
                        v378 = v53;
                        v379 = 2048;
                        v380 = v55;
                        v381 = 2048;
                        v382 = v56;
                        _os_log_impl(&dword_181A37000, v269, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> webtransport_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x62u);
                      }
                    }

                    if (nw_protocol_copy_webtransport_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
                    }

                    v27 = v57;
                    v58 = nw_protocol_copy_webtransport_definition::definition;
                    v59 = v56;
                    _nw_protocol_options_set_instance(v59, v29);

                    if (v58)
                    {
                      os_release(v58);
                    }

                    os_release(v59);
                  }

                  goto LABEL_82;
                }

                v259 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                LODWORD(v356) = 12;
                v260 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v259, 16, "%{public}s called with null parameters", buf, v356);
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v371[0]) = 0;
                if (__nwlog_fault(v260, type, v371))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v261 = __nwlog_obj();
                    v262 = type[0];
                    if (!os_log_type_enabled(v261, type[0]))
                    {
                      goto LABEL_562;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                    v263 = "%{public}s called with null parameters";
                    goto LABEL_561;
                  }

                  v301 = v27;
                  if (LOBYTE(v371[0]) != 1)
                  {
                    v261 = __nwlog_obj();
                    v262 = type[0];
                    if (!os_log_type_enabled(v261, type[0]))
                    {
                      goto LABEL_562;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                    v263 = "%{public}s called with null parameters, backtrace limit exceeded";
                    goto LABEL_561;
                  }

                  v302 = __nw_create_backtrace_string();
                  v261 = __nwlog_obj();
                  v262 = type[0];
                  v303 = os_log_type_enabled(v261, type[0]);
                  if (v302)
                  {
                    if (v303)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                      *&buf[12] = 2082;
                      *&buf[14] = v302;
                      _os_log_impl(&dword_181A37000, v261, v262, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v302);
                    v27 = v301;
                    goto LABEL_562;
                  }

                  v27 = v301;
                  if (v303)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                    v263 = "%{public}s called with null parameters, no backtrace";
LABEL_561:
                    _os_log_impl(&dword_181A37000, v261, v262, v263, buf, 0xCu);
                  }
                }

LABEL_562:
                if (v260)
                {
                  free(v260);
                }

LABEL_82:
                v60 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                if (v60)
                {
                  v61 = v60;
                  _nw_protocol_options_get_log_id_str(v61, (v29 + 192));

                  os_release(v61);
                  goto LABEL_84;
                }

                if ((*(v29 + 276) & 0x10) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v63 = gLogObj;
                  v62 = v361;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                  {
                    v64 = *(v29 + 88);
                    if (v64)
                    {
                      v65 = *(v64 + 492);
                    }

                    else
                    {
                      v65 = -1;
                    }

                    v75 = *(v29 + 64);
                    v76 = *(v29 + 144);
                    *buf = 136447746;
                    *&buf[4] = "nw_webtransport_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v29 + 192;
                    *&buf[22] = 2080;
                    v374 = " ";
                    *v375 = 1024;
                    *&v375[2] = v65;
                    *&v375[6] = 2048;
                    *&v375[8] = v75;
                    *&v375[16] = 2048;
                    *&v375[18] = v29;
                    *&v375[26] = 2048;
                    v376 = v76;
                    _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to access options for protocol %p, parameters %p", buf, 0x44u);
                    if (*(handle + 6))
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_103;
                  }

                  goto LABEL_102;
                }

LABEL_84:
                v62 = v361;
                if (*(handle + 6))
                {
                  goto LABEL_108;
                }

LABEL_103:
                nw_protocol_set_input_handler(handle, v29);
                *handle = *v62->flow_id;
                if ((handle[145] & 2) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v72 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v73 = handle[123];
                    v74 = *(handle + 6);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = handle + 124;
                    *&buf[22] = 2080;
                    v374 = " ";
                    *v375 = 1024;
                    *&v375[2] = v73;
                    *&v375[6] = 2048;
                    *&v375[8] = v74;
                    _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Set session default_input_handler: %p", buf, 0x30u);
                  }
                }

LABEL_108:
                v77 = handle[145] & 0x20;
                v78 = handle[120];
                v79 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (v78 != 1)
                {
                  if (!v78)
                  {
                    if (v27)
                    {
                      if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                      {
                        v292 = __nwlog_obj();
                        if (os_log_type_enabled(v292, OS_LOG_TYPE_DEBUG))
                        {
                          v293 = *(v29 + 88);
                          if (v293)
                          {
                            v294 = *(v293 + 492);
                          }

                          else
                          {
                            v294 = -1;
                          }

                          v330 = *(v29 + 64);
                          *buf = 136447746;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v374 = " ";
                          *v375 = 1024;
                          *&v375[2] = v294;
                          *&v375[6] = 2048;
                          *&v375[8] = v330;
                          *&v375[16] = 2048;
                          *&v375[18] = v29;
                          *&v375[26] = 1024;
                          LODWORD(v376) = v77 >> 5;
                          _os_log_impl(&dword_181A37000, v292, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reconfiguring HTTP2 stream with protocol: %p, peer_initiated: %u", buf, 0x40u);
                          v62 = v361;
                        }
                      }

                      v80 = *(v29 + 88);
                      if (v80[55] == v29)
                      {
                        if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                        {
                          v317 = __nwlog_obj();
                          if (os_log_type_enabled(v317, OS_LOG_TYPE_DEBUG))
                          {
                            v318 = *(v29 + 88);
                            if (v318)
                            {
                              v319 = *(v318 + 492);
                            }

                            else
                            {
                              v319 = -1;
                            }

                            v349 = *(v29 + 64);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v374 = " ";
                            *v375 = 1024;
                            *&v375[2] = v319;
                            *&v375[6] = 2048;
                            *&v375[8] = v349;
                            _os_log_impl(&dword_181A37000, v317, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Returning without more reconfiguration for placeholder stream", buf, 0x30u);
                            v62 = v361;
                          }
                        }

                        nw_protocol_connected(*(v29 + 48), v29);
                      }

                      else
                      {
                        if (nw_protocol_webtransport_http2_stream_callbacks(void)::onceToken != -1)
                        {
                          v304 = *(v29 + 88);
                          dispatch_once(&nw_protocol_webtransport_http2_stream_callbacks(void)::onceToken, &__block_literal_global_42);
                          v80 = v304;
                        }

                        *(v29 + 24) = &nw_protocol_webtransport_http2_stream_callbacks(void)::protocol_callbacks;
                        nw_protocol_set_output_handler(v29, v80);
                        v81 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                        if (!v81)
                        {
                          v96 = &qword_1ED411000;
                          if ((*(v29 + 276) & 0x10) == 0)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v111 = gLogObj;
                            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                            {
                              v112 = *(v29 + 88);
                              if (v112)
                              {
                                v113 = *(v112 + 492);
                              }

                              else
                              {
                                v113 = -1;
                              }

                              v151 = *(v29 + 64);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                              *&buf[12] = 2082;
                              *&buf[14] = v29 + 192;
                              *&buf[22] = 2080;
                              v374 = " ";
                              *v375 = 1024;
                              *&v375[2] = v113;
                              *&v375[6] = 2048;
                              *&v375[8] = v151;
                              _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Could not find options for stream when reconfiguring", buf, 0x30u);
                            }
                          }

                          goto LABEL_281;
                        }

                        v82 = v81;
                        if (v77)
                        {
                          if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                          {
                            v114 = __nwlog_obj();
                            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
                            {
                              v115 = *(v29 + 88);
                              if (v115)
                              {
                                v116 = *(v115 + 492);
                              }

                              else
                              {
                                v116 = -1;
                              }

                              v354 = *(v29 + 64);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                              *&buf[12] = 2082;
                              *&buf[14] = v29 + 192;
                              *&buf[22] = 2080;
                              v374 = " ";
                              *v375 = 1024;
                              *&v375[2] = v116;
                              *&v375[6] = 2048;
                              *&v375[8] = v354;
                              _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Waiting for connected callback and stream ID assignment to setup metadata", buf, 0x30u);
                              v62 = v361;
                            }
                          }
                        }

                        else
                        {
                          v83 = v81;
                          if (nw_protocol_copy_webtransport_definition::onceToken != -1)
                          {
                            dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
                          }

                          v84 = nw_protocol_options_matches_definition(v83, nw_protocol_copy_webtransport_definition::definition);

                          if (v84)
                          {
                            *(v29 + 276) = *(v29 + 276) & 0xFC | 1;
                            if (nw_webtransport_options_get_is_datagram(v83))
                            {
                              v85 = 8;
                            }

                            else
                            {
                              v85 = 0;
                            }

                            *(v29 + 276) = *(v29 + 276) & 0xF7 | v85;
                            is_unidirectional = nw_webtransport_options_get_is_unidirectional(v83);
                            v87 = *(v29 + 276);
                            if (is_unidirectional)
                            {
                              v88 = 4;
                            }

                            else
                            {
                              v88 = 0;
                            }

                            *(v29 + 276) = v87 & 0xFB | v88;
                            v62 = v361;
                            if ((v87 & 0x10) == 0)
                            {
                              v89 = __nwlog_obj();
                              if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
                              {
                                v90 = *(v29 + 88);
                                if (v90)
                                {
                                  v91 = *(v90 + 492);
                                }

                                else
                                {
                                  v91 = -1;
                                }

                                v182 = *(v29 + 64);
                                v183 = *(v29 + 276);
                                *buf = 136448002;
                                *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                                *&buf[12] = 2082;
                                *&buf[14] = v29 + 192;
                                *&buf[22] = 2080;
                                v374 = " ";
                                *v375 = 1024;
                                *&v375[2] = v91;
                                *&v375[6] = 2048;
                                *&v375[8] = v182;
                                *&v375[16] = 1024;
                                *&v375[18] = (v183 >> 1) & 1;
                                *&v375[22] = 1024;
                                *&v375[24] = (v183 >> 3) & 1;
                                LOWORD(v376) = 1024;
                                *(&v376 + 2) = (v183 >> 2) & 1;
                                _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                              }
                            }

                            nw_webtransport_metadata_set_is_peer_initiated(*(v29 + 160), (*(v29 + 276) & 2) != 0);
                            nw_webtransport_metadata_set_is_datagram(*(v29 + 160), (*(v29 + 276) & 8) != 0);
                            nw_webtransport_metadata_set_is_unidirectional(*(v29 + 160), (*(v29 + 276) & 4) != 0);
                          }

                          else
                          {
                            v62 = v361;
                            if ((*(v29 + 276) & 0x10) == 0)
                            {
                              v141 = __nwlog_obj();
                              if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                              {
                                v142 = *(v29 + 88);
                                if (v142)
                                {
                                  v143 = *(v142 + 492);
                                }

                                else
                                {
                                  v143 = -1;
                                }

                                v184 = *(v29 + 64);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                                *&buf[12] = 2082;
                                *&buf[14] = v29 + 192;
                                *&buf[22] = 2080;
                                v374 = " ";
                                *v375 = 1024;
                                *&v375[2] = v143;
                                *&v375[6] = 2048;
                                *&v375[8] = v184;
                                _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Invalid protocol options for webtransport stream", buf, 0x30u);
                              }
                            }
                          }
                        }

                        os_release(v82);
                      }

LABEL_280:
                      v96 = &qword_1ED411000;
LABEL_281:
                      v148 = v29;
                      v149 = handle;
                      goto LABEL_282;
                    }

                    v277 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                    LODWORD(v356) = 12;
                    v278 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v277, 16, "%{public}s called with null webtransport_stream", buf, v356);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v371[0]) = 0;
                    if (__nwlog_fault(v278, type, v371))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v279 = __nwlog_obj();
                        v280 = type[0];
                        if (os_log_type_enabled(v279, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          v281 = "%{public}s called with null webtransport_stream";
LABEL_587:
                          _os_log_impl(&dword_181A37000, v279, v280, v281, buf, 0xCu);
                        }
                      }

                      else if (LOBYTE(v371[0]) == 1)
                      {
                        v308 = __nw_create_backtrace_string();
                        v279 = __nwlog_obj();
                        v280 = type[0];
                        v309 = os_log_type_enabled(v279, type[0]);
                        if (v308)
                        {
                          if (v309)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                            *&buf[12] = 2082;
                            *&buf[14] = v308;
                            _os_log_impl(&dword_181A37000, v279, v280, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v308);
                          goto LABEL_588;
                        }

                        if (v309)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          v281 = "%{public}s called with null webtransport_stream, no backtrace";
                          goto LABEL_587;
                        }
                      }

                      else
                      {
                        v279 = __nwlog_obj();
                        v280 = type[0];
                        if (os_log_type_enabled(v279, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          v281 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                          goto LABEL_587;
                        }
                      }
                    }

LABEL_588:
                    if (v278)
                    {
                      free(v278);
                    }

                    v62 = v361;
                    goto LABEL_280;
                  }

                  if (v27)
                  {
                    if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v295 = __nwlog_obj();
                      if (os_log_type_enabled(v295, OS_LOG_TYPE_DEBUG))
                      {
                        v296 = *(v29 + 88);
                        if (v296)
                        {
                          v297 = *(v296 + 492);
                        }

                        else
                        {
                          v297 = -1;
                        }

                        v331 = *(v29 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_session_add_pending_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v374 = " ";
                        *v375 = 1024;
                        *&v375[2] = v297;
                        *&v375[6] = 2048;
                        *&v375[8] = v331;
                        *&v375[16] = 2048;
                        *&v375[18] = v29;
                        _os_log_impl(&dword_181A37000, v295, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called for stream (%p)", buf, 0x3Au);
                        v62 = v361;
                      }
                    }

                    v96 = &qword_1ED411000;
                    if ((*(v29 + 276) & 0x20) == 0)
                    {
                      *(v29 + 112) = 0;
                      v97 = *(handle + 43);
                      *(v29 + 120) = v97;
                      *v97 = v29;
                      *(handle + 43) = v29 + 112;
                      v98 = handle[122] + 1;
                      handle[122] = v98;
                      if (v98 == v98 << 31 >> 31)
                      {
LABEL_265:
                        v179 = *(v29 + 276);
                        *(v29 + 276) = v179 | 0x20;
                        if ((v179 & 0x10) == 0 && BYTE1(v79[82].isa) == 1)
                        {
                          v314 = __nwlog_obj();
                          if (os_log_type_enabled(v314, OS_LOG_TYPE_DEBUG))
                          {
                            v315 = *(v29 + 88);
                            if (v315)
                            {
                              v316 = *(v315 + 492);
                            }

                            else
                            {
                              v316 = -1;
                            }

                            v344 = *(v29 + 64);
                            v345 = handle[122];
                            *buf = 136447746;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v374 = " ";
                            *v375 = 1024;
                            *&v375[2] = v316;
                            *&v375[6] = 2048;
                            *&v375[8] = v344;
                            *&v375[16] = 2048;
                            *&v375[18] = v29;
                            *&v375[26] = 1024;
                            LODWORD(v376) = v345;
                            _os_log_impl(&dword_181A37000, v314, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> added stream (%p), now have %u pending streams", buf, 0x40u);
                            v62 = v361;
                          }
                        }

LABEL_267:
                        if ((handle[145] & 2) == 0)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v180 = v96[275];
                          if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
                          {
                            v181 = handle[123];
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                            *&buf[12] = 2082;
                            *&buf[14] = handle + 124;
                            *&buf[22] = 2080;
                            v374 = " ";
                            *v375 = 1024;
                            *&v375[2] = v181;
                            v153 = "%{public}s %{public}s%s<i%u> Not reconfiguring stream, no transport mode determined yet";
                            v154 = v180;
                            v155 = OS_LOG_TYPE_INFO;
                            v156 = 38;
                            goto LABEL_270;
                          }
                        }

                        goto LABEL_387;
                      }

                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v99 = handle[122];
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = "webtransport_session->pending_stream_count";
                      *&buf[22] = 2048;
                      v374 = 1;
                      *v375 = 2048;
                      *&v375[2] = v99;
                      LODWORD(v356) = 42;
                      v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, v356);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v371[0]) = 0;
                      if (__nwlog_fault(v100, type, v371))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v101 = gLogObj;
                          v102 = type[0];
                          if (os_log_type_enabled(gLogObj, type[0]))
                          {
                            v103 = handle[122];
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = "webtransport_session->pending_stream_count";
                            *&buf[22] = 2048;
                            v374 = 1;
                            *v375 = 2048;
                            *&v375[2] = v103;
                            v104 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_261:
                            _os_log_impl(&dword_181A37000, v101, v102, v104, buf, 0x2Au);
                          }
                        }

                        else if (LOBYTE(v371[0]) == 1)
                        {
                          v138 = __nw_create_backtrace_string();
                          v101 = __nwlog_obj();
                          v102 = type[0];
                          v139 = os_log_type_enabled(v101, type[0]);
                          if (v138)
                          {
                            if (v139)
                            {
                              v140 = handle[122];
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_session_add_pending_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = "webtransport_session->pending_stream_count";
                              *&buf[22] = 2048;
                              v374 = 1;
                              *v375 = 2048;
                              *&v375[2] = v140;
                              *&v375[10] = 2082;
                              *&v375[12] = v138;
                              _os_log_impl(&dword_181A37000, v101, v102, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v138);
                            v79 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            goto LABEL_262;
                          }

                          v79 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          if (v139)
                          {
                            v178 = handle[122];
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = "webtransport_session->pending_stream_count";
                            *&buf[22] = 2048;
                            v374 = 1;
                            *v375 = 2048;
                            *&v375[2] = v178;
                            v104 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_261;
                          }
                        }

                        else
                        {
                          v101 = __nwlog_obj();
                          v102 = type[0];
                          if (os_log_type_enabled(v101, type[0]))
                          {
                            v150 = handle[122];
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = "webtransport_session->pending_stream_count";
                            *&buf[22] = 2048;
                            v374 = 1;
                            *v375 = 2048;
                            *&v375[2] = v150;
                            v104 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_261;
                          }
                        }
                      }

LABEL_262:
                      if (v100)
                      {
                        free(v100);
                      }

                      handle[122] = -1;
                      v62 = v361;
                      v96 = &qword_1ED411000;
                      goto LABEL_265;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_session_add_pending_stream";
                    *&buf[12] = 2048;
                    *&buf[14] = v29;
                    LODWORD(v356) = 22;
                    v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p already in pending list, cannot add again", buf, v356);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v371[0]) = 0;
                    if (!__nwlog_fault(v105, type, v371))
                    {
                      goto LABEL_223;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v106 = gLogObj;
                      v107 = type[0];
                      if (!os_log_type_enabled(gLogObj, type[0]))
                      {
                        goto LABEL_223;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2048;
                      *&buf[14] = v29;
                      v108 = "%{public}s stream %p already in pending list, cannot add again";
                    }

                    else if (LOBYTE(v371[0]) == 1)
                    {
                      v109 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v106 = gLogObj;
                      v107 = type[0];
                      v110 = os_log_type_enabled(gLogObj, type[0]);
                      if (v109)
                      {
                        if (v110)
                        {
                          *buf = 136446722;
                          *&buf[4] = "nw_webtransport_session_add_pending_stream";
                          *&buf[12] = 2048;
                          *&buf[14] = v29;
                          *&buf[22] = 2082;
                          v374 = v109;
                          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s stream %p already in pending list, cannot add again, dumping backtrace:%{public}s", buf, 0x20u);
                        }

                        free(v109);
                        goto LABEL_223;
                      }

                      if (!v110)
                      {
LABEL_223:
                        if (v105)
                        {
                          free(v105);
                        }

LABEL_225:
                        v62 = v361;
                        v96 = &qword_1ED411000;
                        goto LABEL_267;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2048;
                      *&buf[14] = v29;
                      v108 = "%{public}s stream %p already in pending list, cannot add again, no backtrace";
                    }

                    else
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v106 = gLogObj;
                      v107 = type[0];
                      if (!os_log_type_enabled(gLogObj, type[0]))
                      {
                        goto LABEL_223;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2048;
                      *&buf[14] = v29;
                      v108 = "%{public}s stream %p already in pending list, cannot add again, backtrace limit exceeded";
                    }

                    _os_log_impl(&dword_181A37000, v106, v107, v108, buf, 0x16u);
                    goto LABEL_223;
                  }

                  v287 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_add_pending_stream";
                  LODWORD(v356) = 12;
                  v288 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v287, 16, "%{public}s called with null webtransport_stream", buf, v356);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v371[0]) = 0;
                  if (__nwlog_fault(v288, type, v371))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v289 = __nwlog_obj();
                      v290 = type[0];
                      if (!os_log_type_enabled(v289, type[0]))
                      {
                        goto LABEL_601;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      v291 = "%{public}s called with null webtransport_stream";
                      goto LABEL_600;
                    }

                    if (LOBYTE(v371[0]) != 1)
                    {
                      v289 = __nwlog_obj();
                      v290 = type[0];
                      if (!os_log_type_enabled(v289, type[0]))
                      {
                        goto LABEL_601;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      v291 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                      goto LABEL_600;
                    }

                    v312 = __nw_create_backtrace_string();
                    v289 = __nwlog_obj();
                    v290 = type[0];
                    v313 = os_log_type_enabled(v289, type[0]);
                    if (v312)
                    {
                      if (v313)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_add_pending_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v312;
                        _os_log_impl(&dword_181A37000, v289, v290, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v312);
                      goto LABEL_601;
                    }

                    if (v313)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      v291 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_600:
                      _os_log_impl(&dword_181A37000, v289, v290, v291, buf, 0xCu);
                    }
                  }

LABEL_601:
                  if (v288)
                  {
                    free(v288);
                  }

                  goto LABEL_225;
                }

                if (v27)
                {
                  v92 = *(v29 + 88);
                  if ((*(v29 + 276) & 0x10) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v93 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      v94 = *(v29 + 88);
                      if (v94)
                      {
                        v95 = *(v94 + 492);
                      }

                      else
                      {
                        v95 = -1;
                      }

                      v117 = *(v29 + 64);
                      *buf = 136447746;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v374 = " ";
                      *v375 = 1024;
                      *&v375[2] = v95;
                      *&v375[6] = 2048;
                      *&v375[8] = v117;
                      *&v375[16] = 2048;
                      *&v375[18] = v29;
                      *&v375[26] = 1024;
                      LODWORD(v376) = v77 >> 5;
                      _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Reconfiguring HTTP3 stream with protocol: %p, peer_initiated: %u", buf, 0x40u);
                    }
                  }

                  if (*(v92 + 440) == v29)
                  {
                    v96 = &qword_1ED411000;
                    if ((*(v29 + 276) & 0x10) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v129 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        v130 = *(v29 + 88);
                        if (v130)
                        {
                          v131 = *(v130 + 492);
                        }

                        else
                        {
                          v131 = -1;
                        }

                        v147 = *(v29 + 64);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v374 = " ";
                        *v375 = 1024;
                        *&v375[2] = v131;
                        *&v375[6] = 2048;
                        *&v375[8] = v147;
                        _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Returning connected without more reconfiguration for placeholder stream", buf, 0x30u);
                      }
                    }

                    v148 = *(v29 + 48);
                    v149 = v29;
LABEL_282:
                    nw_protocol_connected(v148, v149);
                    if ((handle[145] & 2) != 0)
                    {
                      return 1;
                    }

LABEL_388:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v239 = v96[275];
                    if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
                    {
                      v240 = handle[123];
                      *buf = 136447490;
                      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 124;
                      *&buf[22] = 2080;
                      v374 = " ";
                      *v375 = 1024;
                      *&v375[2] = v240;
                      *&v375[6] = 2048;
                      *&v375[8] = v62;
                      *&v375[16] = 2082;
                      *&v375[18] = v29 + 192;
                      _os_log_impl(&dword_181A37000, v239, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> Added input handler %p from %{public}s", buf, 0x3Au);
                    }

                    return 1;
                  }

                  v118 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                  if (!v118)
                  {
                    v96 = &qword_1ED411000;
                    if ((*(v29 + 276) & 0x10) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v132 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v133 = *(v29 + 88);
                        if (v133)
                        {
                          v134 = *(v133 + 492);
                        }

                        else
                        {
                          v134 = -1;
                        }

                        v152 = *(v29 + 64);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v374 = " ";
                        *v375 = 1024;
                        *&v375[2] = v134;
                        *&v375[6] = 2048;
                        *&v375[8] = v152;
                        v153 = "%{public}s %{public}s%s<i%u:s%llu> Could not find options for stream when reconfiguring";
                        v154 = v132;
                        v155 = OS_LOG_TYPE_ERROR;
                        v156 = 48;
LABEL_270:
                        _os_log_impl(&dword_181A37000, v154, v155, v153, buf, v156);
                        if ((handle[145] & 2) == 0)
                        {
                          goto LABEL_388;
                        }

                        return 1;
                      }
                    }

LABEL_387:
                    if ((handle[145] & 2) == 0)
                    {
                      goto LABEL_388;
                    }

                    return 1;
                  }

                  v119 = v118;
                  if (nw_protocol_webtransport_http3_stream_callbacks(void)::onceToken != -1)
                  {
                    dispatch_once(&nw_protocol_webtransport_http3_stream_callbacks(void)::onceToken, &__block_literal_global_56_36593);
                  }

                  *(v29 + 24) = &nw_protocol_webtransport_http3_stream_callbacks(void)::protocol_callbacks;
                  if (!v77)
                  {
                    v120 = v119;
                    if (nw_protocol_copy_webtransport_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
                    }

                    v121 = nw_protocol_options_matches_definition(v120, nw_protocol_copy_webtransport_definition::definition);

                    if (v121)
                    {
                      *(v29 + 276) = *(v29 + 276) & 0xFC | 1;
                      if (nw_webtransport_options_get_is_datagram(v120))
                      {
                        v122 = 8;
                      }

                      else
                      {
                        v122 = 0;
                      }

                      *(v29 + 276) = *(v29 + 276) & 0xF7 | v122;
                      v123 = nw_webtransport_options_get_is_unidirectional(v120);
                      v124 = *(v29 + 276);
                      if (v123)
                      {
                        v125 = 4;
                      }

                      else
                      {
                        v125 = 0;
                      }

                      *(v29 + 276) = v124 & 0xFB | v125;
                      if ((v124 & 0x10) == 0)
                      {
                        v126 = __nwlog_obj();
                        if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
                        {
                          v127 = *(v29 + 88);
                          if (v127)
                          {
                            v128 = *(v127 + 492);
                          }

                          else
                          {
                            v128 = -1;
                          }

                          v185 = *(v29 + 64);
                          v186 = *(v29 + 276);
                          *buf = 136448002;
                          *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v374 = " ";
                          *v375 = 1024;
                          *&v375[2] = v128;
                          *&v375[6] = 2048;
                          *&v375[8] = v185;
                          *&v375[16] = 1024;
                          *&v375[18] = (v186 >> 1) & 1;
                          *&v375[22] = 1024;
                          *&v375[24] = (v186 >> 3) & 1;
                          LOWORD(v376) = 1024;
                          *(&v376 + 2) = (v186 >> 2) & 1;
                          _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                        }
                      }

                      nw_webtransport_metadata_set_is_peer_initiated(*(v29 + 160), (*(v29 + 276) & 2) != 0);
                      nw_webtransport_metadata_set_is_datagram(*(v29 + 160), (*(v29 + 276) & 8) != 0);
                      nw_webtransport_metadata_set_is_unidirectional(*(v29 + 160), (*(v29 + 276) & 4) != 0);
                    }

                    else if ((*(v29 + 276) & 0x10) == 0)
                    {
                      v144 = __nwlog_obj();
                      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                      {
                        v145 = *(v29 + 88);
                        if (v145)
                        {
                          v146 = *(v145 + 492);
                        }

                        else
                        {
                          v146 = -1;
                        }

                        v187 = *(v29 + 64);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v374 = " ";
                        *v375 = 1024;
                        *&v375[2] = v146;
                        *&v375[6] = 2048;
                        *&v375[8] = v187;
                        _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Invalid protocol options for webtransport stream", buf, 0x30u);
                      }
                    }

                    if ((*(v29 + 276) & 8) != 0)
                    {
                      v191 = *(v92 + 32);
                      *(v29 + 32) = v191;
                      nw_protocol_connected(v29, v191);
                      v62 = v361;
LABEL_386:
                      os_release(v119);
                      v96 = &qword_1ED411000;
                      goto LABEL_387;
                    }

                    nw_protocol_set_output_handler(v29, 0);
                    *(v29 + 56) = 0;
                    if (!*(v92 + 400))
                    {
                      v62 = v361;
                      if ((*(v29 + 276) & 0x10) != 0)
                      {
                        goto LABEL_385;
                      }

                      v188 = __nwlog_obj();
                      if (!os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_385;
                      }

                      v189 = *(v29 + 88);
                      if (v189)
                      {
                        v190 = *(v189 + 492);
                      }

                      else
                      {
                        v190 = -1;
                      }

                      v218 = *(v29 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v374 = " ";
                      *v375 = 1024;
                      *&v375[2] = v190;
                      *&v375[6] = 2048;
                      *&v375[8] = v218;
                      v219 = "%{public}s %{public}s%s<i%u:s%llu> no http connection metadata when attempting to start webtransport http3 stream";
LABEL_384:
                      _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_ERROR, v219, buf, 0x30u);
LABEL_385:
                      v238 = *(v29 + 88);
                      nw_protocol_error(*(v29 + 48), v29);
                      nw_protocol_disconnect(v29, v238);
                      goto LABEL_386;
                    }

LABEL_310:
                    if ((*(v92 + 580) & 0x40) == 0)
                    {
                      goto LABEL_336;
                    }

                    v360 = v92;
                    v198 = *(v92 + 32);
                    v199 = nw_protocol_get_parameters(v29);
                    if (v199)
                    {
                      nw_parameters_log_protocol_instances(v199);
                      v200 = _nw_parameters_copy_default_protocol_stack();
                      v371[0] = 0;
                      v371[1] = v371;
                      v371[2] = 0x2000000000;
                      v372 = 0;
                      *buf = 0;
                      *&buf[8] = buf;
                      *&buf[16] = 0x3802000000;
                      v374 = __Block_byref_object_copy__59;
                      *v375 = __Block_byref_object_dispose__60;
                      *&v375[8] = 0;
                      v375[16] |= 1u;
                      *type = MEMORY[0x1E69E9820];
                      v365 = 0x40000000;
                      v366 = ___ZL48nw_webtransport_session_setup_for_http_messagingP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
                      v367 = &unk_1E6A31BF8;
                      v368 = v371;
                      v369 = buf;
                      v370 = v29;
                      nw_protocol_stack_iterate_application_protocols(v200, type);
                      v201 = *(*&buf[8] + 40);
                      if (v201)
                      {
                        if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
                        {
                          dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
                        }

                        v202 = nw_protocol_copy_http_messaging_definition_definition;
                        v203 = v201;
                        _nw_protocol_options_set_instance(v203, v198);

                        v92 = v360;
                        if (v202)
                        {
                          os_release(v202);
                        }

                        if (!nw_protocol_get_parameters(v198))
                        {
                          goto LABEL_330;
                        }

                        v204 = _nw_parameters_copy_default_protocol_stack();
                        v205 = _nw_parameters_copy_default_protocol_stack();
                        v206 = nw_protocol_stack_copy_transport_protocol(v204);
                        v207 = nw_protocol_stack_copy_transport_protocol(v205);
                        v208 = v207;
                        if (v206)
                        {
                          if (v207)
                          {
                            v209 = _nw_protocol_options_copy_definition();
                            if (nw_protocol_options_matches_definition(v208, v209))
                            {
                              protocol_handle = _nw_protocol_options_get_protocol_handle(v206);
                              nw_parameters_set_protocol_instance(v208, v211, protocol_handle);
                            }

                            os_release(v208);
                          }

                          v208 = v206;
                        }

                        else if (!v207)
                        {
LABEL_326:
                          if (v205)
                          {
                            os_release(v205);
                          }

                          if (v204)
                          {
                            os_release(v204);
                          }

LABEL_330:
                          nw_protocol_set_output_handler(v29, 0);
LABEL_331:
                          _Block_object_dispose(buf, 8);
                          if ((v375[16] & 1) != 0 && *&v375[8])
                          {
                            os_release(*&v375[8]);
                          }

                          _Block_object_dispose(v371, 8);
                          if (v200)
                          {
                            os_release(v200);
                          }

LABEL_336:
                          if ((*(v29 + 276) & 0x40) != 0)
                          {
                            goto LABEL_338;
                          }

                          goto LABEL_337;
                        }

                        os_release(v208);
                        goto LABEL_326;
                      }

                      v337 = __nwlog_obj();
                      v383 = 136446210;
                      v384 = "nw_webtransport_session_setup_for_http_messaging";
                      LODWORD(v356) = 12;
                      v338 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v337, 16, "%{public}s called with null options", &v383, v356);
                      v363 = OS_LOG_TYPE_ERROR;
                      v362 = 0;
                      if (__nwlog_fault(v338, &v363, &v362))
                      {
                        if (v363 == OS_LOG_TYPE_FAULT)
                        {
                          v339 = __nwlog_obj();
                          v340 = v363;
                          if (os_log_type_enabled(v339, v363))
                          {
                            v383 = 136446210;
                            v384 = "nw_webtransport_session_setup_for_http_messaging";
                            v341 = "%{public}s called with null options";
LABEL_646:
                            _os_log_impl(&dword_181A37000, v339, v340, v341, &v383, 0xCu);
                          }
                        }

                        else if (v362 == 1)
                        {
                          v352 = __nw_create_backtrace_string();
                          v339 = __nwlog_obj();
                          v340 = v363;
                          v353 = os_log_type_enabled(v339, v363);
                          if (v352)
                          {
                            if (v353)
                            {
                              v383 = 136446466;
                              v384 = "nw_webtransport_session_setup_for_http_messaging";
                              v385 = 2082;
                              v386 = v352;
                              _os_log_impl(&dword_181A37000, v339, v340, "%{public}s called with null options, dumping backtrace:%{public}s", &v383, 0x16u);
                            }

                            free(v352);
                            goto LABEL_647;
                          }

                          if (v353)
                          {
                            v383 = 136446210;
                            v384 = "nw_webtransport_session_setup_for_http_messaging";
                            v341 = "%{public}s called with null options, no backtrace";
                            goto LABEL_646;
                          }
                        }

                        else
                        {
                          v339 = __nwlog_obj();
                          v340 = v363;
                          if (os_log_type_enabled(v339, v363))
                          {
                            v383 = 136446210;
                            v384 = "nw_webtransport_session_setup_for_http_messaging";
                            v341 = "%{public}s called with null options, backtrace limit exceeded";
                            goto LABEL_646;
                          }
                        }
                      }

LABEL_647:
                      if (v338)
                      {
                        free(v338);
                      }

                      v92 = v360;
                      goto LABEL_331;
                    }

                    v332 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                    LODWORD(v356) = 12;
                    v333 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v332, 16, "%{public}s called with null parameters", buf, v356);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v371[0]) = 0;
                    if (__nwlog_fault(v333, type, v371))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v334 = __nwlog_obj();
                        v335 = type[0];
                        if (!os_log_type_enabled(v334, type[0]))
                        {
                          goto LABEL_640;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        v336 = "%{public}s called with null parameters";
LABEL_639:
                        _os_log_impl(&dword_181A37000, v334, v335, v336, buf, 0xCu);
                        goto LABEL_640;
                      }

                      if (LOBYTE(v371[0]) != 1)
                      {
                        v334 = __nwlog_obj();
                        v335 = type[0];
                        if (!os_log_type_enabled(v334, type[0]))
                        {
                          goto LABEL_640;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        v336 = "%{public}s called with null parameters, backtrace limit exceeded";
                        goto LABEL_639;
                      }

                      v350 = __nw_create_backtrace_string();
                      v334 = __nwlog_obj();
                      v335 = type[0];
                      v351 = os_log_type_enabled(v334, type[0]);
                      if (!v350)
                      {
                        if (!v351)
                        {
                          goto LABEL_640;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        v336 = "%{public}s called with null parameters, no backtrace";
                        goto LABEL_639;
                      }

                      if (v351)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        *&buf[12] = 2082;
                        *&buf[14] = v350;
                        _os_log_impl(&dword_181A37000, v334, v335, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v350);
                    }

LABEL_640:
                    if (v333)
                    {
                      free(v333);
                    }

                    if ((*(v29 + 276) & 0x40) != 0)
                    {
LABEL_338:
                      v212 = *(v29 + 88);
                      if (v212)
                      {
                        if ((*(v212 + 580) & 1) != 0 && (*(v29 + 276) & 2) == 0)
                        {
                          v213 = *(v212 + 440);
                          if (v213)
                          {
                            if (*(v213 + 32))
                            {
                              v214 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                              if (v214)
                              {
                                if (((*(v29 + 276) ^ *(v213 + 276)) & 0xC) == 0)
                                {
                                  v220 = v214;
                                  nw_protocol_replace_input_handler(*(v213 + 32), v213, v29);
                                  nw_protocol_set_output_handler(v213, 0);
                                  os_release(v220);
                                  goto LABEL_375;
                                }

                                os_release(v214);
                              }

                              else if ((*(v29 + 276) & 0x10) == 0)
                              {
                                v215 = __nwlog_obj();
                                if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                                {
                                  v216 = *(v29 + 88);
                                  if (v216)
                                  {
                                    v217 = *(v216 + 492);
                                  }

                                  else
                                  {
                                    v217 = -1;
                                  }

                                  v232 = *(v29 + 64);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v29 + 192;
                                  *&buf[22] = 2080;
                                  v374 = " ";
                                  *v375 = 1024;
                                  *&v375[2] = v217;
                                  *&v375[6] = 2048;
                                  *&v375[8] = v232;
                                  _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Could not find options for stream when trying to reuse placeholder stream", buf, 0x30u);
                                }
                              }
                            }
                          }
                        }

LABEL_374:
                        if (!nw_protocol_add_input_handler(*(v92 + 32), v29))
                        {
LABEL_378:
                          v62 = v361;
                          if ((*(v29 + 276) & 0x10) != 0)
                          {
                            goto LABEL_385;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v188 = gLogObj;
                          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_385;
                          }

                          v235 = *(v29 + 88);
                          if (v235)
                          {
                            v236 = *(v235 + 492);
                          }

                          else
                          {
                            v236 = -1;
                          }

                          v237 = *(v29 + 64);
                          *buf = 136447234;
                          *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v374 = " ";
                          *v375 = 1024;
                          *&v375[2] = v236;
                          *&v375[6] = 2048;
                          *&v375[8] = v237;
                          v219 = "%{public}s %{public}s%s<i%u:s%llu> no http3 output handler for webtransport http3 stream";
                          goto LABEL_384;
                        }

LABEL_375:
                        if (*(v29 + 32))
                        {
                          v62 = v361;
                          if (!v77)
                          {
                            v233 = *(v29 + 176);
                            v234 = *(v92 + 416);
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 0x40000000;
                            *&buf[16] = ___ZL50nw_webtransport_http3_stream_reconfigure_and_startP22nw_webtransport_streamb_block_invoke;
                            v374 = &unk_1E6A31B70;
                            *v375 = v233;
                            nw_queue_context_async(v234, buf);
                          }

                          goto LABEL_386;
                        }

                        goto LABEL_378;
                      }

                      v324 = __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                      LODWORD(v356) = 12;
                      v325 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v324, 16, "%{public}s called with null webtransport_session", buf, v356);
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v371[0]) = 0;
                      if (__nwlog_fault(v325, type, v371))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v326 = __nwlog_obj();
                          v327 = type[0];
                          if (!os_log_type_enabled(v326, type[0]))
                          {
                            goto LABEL_632;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                          v328 = "%{public}s called with null webtransport_session";
                          goto LABEL_631;
                        }

                        if (LOBYTE(v371[0]) != 1)
                        {
                          v326 = __nwlog_obj();
                          v327 = type[0];
                          if (!os_log_type_enabled(v326, type[0]))
                          {
                            goto LABEL_632;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                          v328 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
                          goto LABEL_631;
                        }

                        v342 = __nw_create_backtrace_string();
                        v326 = __nwlog_obj();
                        v327 = type[0];
                        v343 = os_log_type_enabled(v326, type[0]);
                        if (v342)
                        {
                          if (v343)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v342;
                            _os_log_impl(&dword_181A37000, v326, v327, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v342);
                          goto LABEL_632;
                        }

                        if (v343)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                          v328 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_631:
                          _os_log_impl(&dword_181A37000, v326, v327, v328, buf, 0xCu);
                        }
                      }

LABEL_632:
                      if (v325)
                      {
                        free(v325);
                      }

                      goto LABEL_374;
                    }

LABEL_337:
                    nw_webtransport_http3_stream_fix_http_parameters(v92, v29);
                    goto LABEL_338;
                  }

                  if ((*(v29 + 276) & 0x10) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v135 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      v136 = *(v29 + 88);
                      if (v136)
                      {
                        v137 = *(v136 + 492);
                      }

                      else
                      {
                        v137 = -1;
                      }

                      v157 = *(v29 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v374 = " ";
                      *v375 = 1024;
                      *&v375[2] = v137;
                      *&v375[6] = 2048;
                      *&v375[8] = v157;
                      _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Preemptively configuring metadata with incoming stream ID", buf, 0x30u);
                    }
                  }

                  if (*(v92 + 176) != -1)
                  {
                    if (*(v29 + 64) == -1)
                    {
                      v168 = *(v29 + 88);
                      v169 = *(v168 + 176);
                      if (v169 == -1)
                      {
                        if ((*(v29 + 276) & 0x10) == 0)
                        {
                          v192 = __nwlog_obj();
                          v193 = os_log_type_enabled(v192, OS_LOG_TYPE_ERROR);
                          v168 = *(v29 + 88);
                          if (v193)
                          {
                            if (v168)
                            {
                              v194 = *(v168 + 492);
                            }

                            else
                            {
                              v194 = -1;
                            }

                            v222 = *(v29 + 64);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http3_stream_assign_stream_id";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v374 = " ";
                            *v375 = 1024;
                            *&v375[2] = v194;
                            *&v375[6] = 2048;
                            *&v375[8] = v222;
                            _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to get stream ID for HTTP/3 webtransport stream, failing", buf, 0x30u);
                            v168 = *(v29 + 88);
                          }
                        }

                        nw_protocol_error(*(v29 + 48), v29);
                        nw_protocol_disconnect(v29, v168);
                      }

                      else
                      {
                        *(v29 + 64) = v169;
                        nw_webtransport_metadata_set_stream_id(*(v29 + 160), v169);
                        if ((*(v29 + 276) & 0x10) == 0)
                        {
                          v170 = __nwlog_obj();
                          if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                          {
                            v171 = *(v29 + 88);
                            if (v171)
                            {
                              v172 = *(v171 + 492);
                            }

                            else
                            {
                              v172 = -1;
                            }

                            v221 = *(v29 + 64);
                            *buf = 136448002;
                            *&buf[4] = "nw_webtransport_http3_stream_assign_stream_id";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v374 = " ";
                            *v375 = 1024;
                            *&v375[2] = v172;
                            *&v375[6] = 2048;
                            *&v375[8] = v221;
                            *&v375[16] = 2048;
                            *&v375[18] = v221;
                            *&v375[26] = 2048;
                            v376 = v29;
                            v377 = 1024;
                            LODWORD(v378) = 1;
                            _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Assigned stream ID: %llu to stream with protocol %p, incoming: %u", buf, 0x4Au);
                          }
                        }
                      }
                    }

                    else if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v346 = __nwlog_obj();
                      if (os_log_type_enabled(v346, OS_LOG_TYPE_DEBUG))
                      {
                        v347 = *(v29 + 88);
                        if (v347)
                        {
                          v348 = *(v347 + 492);
                        }

                        else
                        {
                          v348 = -1;
                        }

                        v355 = *(v29 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http3_stream_assign_stream_id";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v374 = " ";
                        *v375 = 1024;
                        *&v375[2] = v348;
                        *&v375[6] = 2048;
                        *&v375[8] = v355;
                        *&v375[16] = 2048;
                        *&v375[18] = v355;
                        _os_log_impl(&dword_181A37000, v346, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Stream ID %llu already set, skipping", buf, 0x3Au);
                      }
                    }

                    v158 = *(v29 + 64);
                    v159 = *(v29 + 276);
                    if (v158 == -1)
                    {
                      if ((*(v29 + 276) & 0x10) == 0)
                      {
                        v173 = __nwlog_obj();
                        if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
                        {
                          v174 = *(v29 + 88);
                          if (v174)
                          {
                            v175 = *(v174 + 492);
                          }

                          else
                          {
                            v175 = -1;
                          }

                          v197 = *(v29 + 64);
                          *buf = 136447234;
                          *&buf[4] = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v374 = " ";
                          *v375 = 1024;
                          *&v375[2] = v175;
                          *&v375[6] = 2048;
                          *&v375[8] = v197;
                          _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Not configuring webtransport stream metadata with no stream ID set", buf, 0x30u);
                        }
                      }
                    }

                    else
                    {
                      *(v29 + 276) = v159 & 0xF0 | (4 * ((v158 & 2) != 0)) | 3;
                      if ((v159 & 0x10) == 0)
                      {
                        v160 = __nwlog_obj();
                        if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
                        {
                          v161 = *(v29 + 88);
                          if (v161)
                          {
                            v162 = *(v161 + 492);
                          }

                          else
                          {
                            v162 = -1;
                          }

                          v195 = *(v29 + 64);
                          v196 = *(v29 + 276);
                          *buf = 136448002;
                          *&buf[4] = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v374 = " ";
                          *v375 = 1024;
                          *&v375[2] = v162;
                          *&v375[6] = 2048;
                          *&v375[8] = v195;
                          *&v375[16] = 1024;
                          *&v375[18] = (v196 >> 1) & 1;
                          *&v375[22] = 1024;
                          *&v375[24] = (v196 >> 3) & 1;
                          LOWORD(v376) = 1024;
                          *(&v376 + 2) = (v196 >> 2) & 1;
                          _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                        }
                      }

                      nw_webtransport_metadata_set_is_peer_initiated(*(v29 + 160), (*(v29 + 276) & 2) != 0);
                      nw_webtransport_metadata_set_is_datagram(*(v29 + 160), (*(v29 + 276) & 8) != 0);
                      nw_webtransport_metadata_set_is_unidirectional(*(v29 + 160), (*(v29 + 276) & 4) != 0);
                    }

                    goto LABEL_310;
                  }

                  v163 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                  LODWORD(v356) = 12;
                  v164 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v163, 16, "%{public}s Incoming stream did not have a stream ID", buf, v356);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v371[0]) = 0;
                  if (__nwlog_fault(v164, type, v371))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v165 = __nwlog_obj();
                      v166 = type[0];
                      if (!os_log_type_enabled(v165, type[0]))
                      {
                        goto LABEL_308;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      v167 = "%{public}s Incoming stream did not have a stream ID";
                      goto LABEL_307;
                    }

                    if (LOBYTE(v371[0]) != 1)
                    {
                      v165 = __nwlog_obj();
                      v166 = type[0];
                      if (!os_log_type_enabled(v165, type[0]))
                      {
                        goto LABEL_308;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      v167 = "%{public}s Incoming stream did not have a stream ID, backtrace limit exceeded";
                      goto LABEL_307;
                    }

                    v176 = __nw_create_backtrace_string();
                    v165 = __nwlog_obj();
                    v166 = type[0];
                    v177 = os_log_type_enabled(v165, type[0]);
                    if (v176)
                    {
                      if (v177)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                        *&buf[12] = 2082;
                        *&buf[14] = v176;
                        _os_log_impl(&dword_181A37000, v165, v166, "%{public}s Incoming stream did not have a stream ID, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v176);
                      goto LABEL_308;
                    }

                    if (v177)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      v167 = "%{public}s Incoming stream did not have a stream ID, no backtrace";
LABEL_307:
                      _os_log_impl(&dword_181A37000, v165, v166, v167, buf, 0xCu);
                    }
                  }

LABEL_308:
                  if (v164)
                  {
                    free(v164);
                  }

                  goto LABEL_310;
                }

                v282 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                LODWORD(v356) = 12;
                v283 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v282, 16, "%{public}s called with null webtransport_stream", buf, v356);
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v371[0]) = 0;
                if (__nwlog_fault(v283, type, v371))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v284 = __nwlog_obj();
                    v285 = type[0];
                    if (!os_log_type_enabled(v284, type[0]))
                    {
                      goto LABEL_594;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    v286 = "%{public}s called with null webtransport_stream";
LABEL_593:
                    _os_log_impl(&dword_181A37000, v284, v285, v286, buf, 0xCu);
                    goto LABEL_594;
                  }

                  if (LOBYTE(v371[0]) != 1)
                  {
                    v284 = __nwlog_obj();
                    v285 = type[0];
                    if (!os_log_type_enabled(v284, type[0]))
                    {
                      goto LABEL_594;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    v286 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_593;
                  }

                  v310 = __nw_create_backtrace_string();
                  v284 = __nwlog_obj();
                  v285 = type[0];
                  v311 = os_log_type_enabled(v284, type[0]);
                  if (!v310)
                  {
                    if (!v311)
                    {
                      goto LABEL_594;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    v286 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_593;
                  }

                  if (v311)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    *&buf[12] = 2082;
                    *&buf[14] = v310;
                    _os_log_impl(&dword_181A37000, v284, v285, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v310);
                }

LABEL_594:
                if (v283)
                {
                  free(v283);
                }

                v62 = v361;
                v96 = &qword_1ED411000;
                if ((handle[145] & 2) != 0)
                {
                  return 1;
                }

                goto LABEL_388;
              }

              v248 = __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_stream_add_input_handler";
              LODWORD(v356) = 12;
              v249 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v248, 16, "%{public}s called with null options_protocol", buf, v356);
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v371[0]) = 0;
              if (__nwlog_fault(v249, type, v371))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v250 = __nwlog_obj();
                  v251 = type[0];
                  if (!os_log_type_enabled(v250, type[0]))
                  {
                    goto LABEL_557;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v252 = "%{public}s called with null options_protocol";
                  goto LABEL_556;
                }

                v298 = v27;
                if (LOBYTE(v371[0]) != 1)
                {
                  v250 = __nwlog_obj();
                  v251 = type[0];
                  if (!os_log_type_enabled(v250, type[0]))
                  {
                    goto LABEL_557;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v252 = "%{public}s called with null options_protocol, backtrace limit exceeded";
                  goto LABEL_556;
                }

                v299 = __nw_create_backtrace_string();
                v250 = __nwlog_obj();
                v251 = type[0];
                v300 = os_log_type_enabled(v250, type[0]);
                if (v299)
                {
                  if (v300)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v299;
                    _os_log_impl(&dword_181A37000, v250, v251, "%{public}s called with null options_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v299);
                  v27 = v298;
                  goto LABEL_557;
                }

                v27 = v298;
                if (v300)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v252 = "%{public}s called with null options_protocol, no backtrace";
LABEL_556:
                  _os_log_impl(&dword_181A37000, v250, v251, v252, buf, 0xCu);
                }
              }

LABEL_557:
              if (v249)
              {
                free(v249);
              }

              goto LABEL_84;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_add_input_handler";
            LODWORD(v356) = 12;
            v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null webtransport_stream", buf, v356);
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v371[0]) = 0;
            if (__nwlog_fault(v31, type, v371))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v33 = type[0];
                if (os_log_type_enabled(gLogObj, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v34 = "%{public}s called with null webtransport_stream";
LABEL_97:
                  v70 = v32;
                  v71 = v33;
LABEL_98:
                  _os_log_impl(&dword_181A37000, v70, v71, v34, buf, 0xCu);
                }
              }

              else if (LOBYTE(v371[0]) == 1)
              {
                v66 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v67 = gLogObj;
                v68 = type[0];
                v69 = os_log_type_enabled(gLogObj, type[0]);
                if (v66)
                {
                  if (v69)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v66;
                    _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v66);
                  goto LABEL_99;
                }

                if (v69)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v34 = "%{public}s called with null webtransport_stream, no backtrace";
                  v70 = v67;
                  v71 = v68;
                  goto LABEL_98;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v33 = type[0];
                if (os_log_type_enabled(gLogObj, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v34 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                  goto LABEL_97;
                }
              }
            }

LABEL_99:
            if (v31)
            {
              free(v31);
            }

            v29 = 0;
            v62 = v361;
            v27 = 0;
LABEL_102:
            if (*(handle + 6))
            {
              goto LABEL_108;
            }

            goto LABEL_103;
          }

LABEL_15:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v16 = handle[123];
            *buf = 136447490;
            *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = handle + 124;
            *&buf[22] = 2080;
            v374 = " ";
            *v375 = 1024;
            *&v375[2] = v16;
            *&v375[6] = 1024;
            *&v375[8] = v16;
            *&v375[12] = 1024;
            *&v375[14] = top_id;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created WebTransport session and assigned instance ID: %u from C%u", buf, 0x32u);
          }

          goto LABEL_17;
        }

        v272 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_options_get_top_id";
        v273 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v272, 16, "%{public}s called with null options", buf, 12);

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v371[0]) = 0;
        v274 = v273;
        if (!__nwlog_fault(v273, type, v371))
        {
LABEL_581:
          if (v274)
          {
            free(v274);
          }

          top_id = 0;
          if ((handle[145] & 2) != 0)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v275 = __nwlog_obj();
          v276 = type[0];
          if (os_log_type_enabled(v275, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_options_get_top_id";
            _os_log_impl(&dword_181A37000, v275, v276, "%{public}s called with null options", buf, 0xCu);
          }
        }

        else
        {
          if (LOBYTE(v371[0]) == 1)
          {
            v305 = __nw_create_backtrace_string();
            v306 = __nwlog_obj();
            v358 = type[0];
            v307 = os_log_type_enabled(v306, type[0]);
            if (v305)
            {
              if (v307)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_options_get_top_id";
                *&buf[12] = 2082;
                *&buf[14] = v305;
                _os_log_impl(&dword_181A37000, v306, v358, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v305);
            }

            else
            {
              if (v307)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_options_get_top_id";
                _os_log_impl(&dword_181A37000, v306, v358, "%{public}s called with null options, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_580;
          }

          v275 = __nwlog_obj();
          v323 = type[0];
          if (os_log_type_enabled(v275, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_options_get_top_id";
            _os_log_impl(&dword_181A37000, v275, v323, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_580:
        v274 = v273;
        goto LABEL_581;
      }

      v247 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v247, 16, "%{public}s called with null remote_endpoint", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v371[0]) = 0;
      if (!__nwlog_fault(v224, type, v371))
      {
LABEL_532:
        if (v224)
        {
          free(v224);
        }

        return 0;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null remote_endpoint";
        goto LABEL_531;
      }

      if (LOBYTE(v371[0]) != 1)
      {
        v225 = __nwlog_obj();
        v226 = type[0];
        if (!os_log_type_enabled(v225, type[0]))
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null remote_endpoint, backtrace limit exceeded";
        goto LABEL_531;
      }

      backtrace_string = __nw_create_backtrace_string();
      v225 = __nwlog_obj();
      v226 = type[0];
      v268 = os_log_type_enabled(v225, type[0]);
      if (!backtrace_string)
      {
        if (!v268)
        {
          goto LABEL_532;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v227 = "%{public}s called with null remote_endpoint, no backtrace";
        goto LABEL_531;
      }

      if (v268)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v243 = "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s";
        goto LABEL_443;
      }

LABEL_444:
      free(backtrace_string);
      goto LABEL_532;
    }

    v245 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v224 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v245, 16, "%{public}s called with null parameters", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v371[0]) = 0;
    if (!__nwlog_fault(v224, type, v371))
    {
      goto LABEL_532;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v225 = __nwlog_obj();
      v226 = type[0];
      if (!os_log_type_enabled(v225, type[0]))
      {
        goto LABEL_532;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v227 = "%{public}s called with null parameters";
      goto LABEL_531;
    }

    if (LOBYTE(v371[0]) != 1)
    {
      v225 = __nwlog_obj();
      v226 = type[0];
      if (!os_log_type_enabled(v225, type[0]))
      {
        goto LABEL_532;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v227 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_531;
    }

    backtrace_string = __nw_create_backtrace_string();
    v225 = __nwlog_obj();
    v226 = type[0];
    v267 = os_log_type_enabled(v225, type[0]);
    if (!backtrace_string)
    {
      if (!v267)
      {
        goto LABEL_532;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v227 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_531;
    }

    if (!v267)
    {
      goto LABEL_444;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v243 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_443:
    _os_log_impl(&dword_181A37000, v225, v226, v243, buf, 0x16u);
    goto LABEL_444;
  }

  if ((handle[145] & 2) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v7 = handle[123];
    *buf = 136446978;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 124;
    *&buf[22] = 2080;
    v374 = " ";
    *v375 = 1024;
    *&v375[2] = v7;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot add input handler to closed session", buf, 0x26u);
    return 0;
  }

  return result;
}