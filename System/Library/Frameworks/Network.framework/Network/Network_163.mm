void nw_quic_set_pmtud(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud(v1);
}

uint64_t nw_quic_get_pmtud(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud = nw_quic_connection_get_pmtud(v1);

  return pmtud;
}

void nw_quic_connection_set_pmtud_ignore_cost(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_pmtud_ignore_cost();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_pmtud_ignore_cost";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_pmtud_ignore_cost";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_pmtud_ignore_cost";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_pmtud_ignore_cost";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_pmtud_ignore_cost";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_pmtud_ignore_cost(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud_ignore_cost(v1);
}

unint64_t nw_quic_get_pmtud_ignore_cost(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud_ignore_cost = nw_quic_connection_get_pmtud_ignore_cost(v1);

  return pmtud_ignore_cost;
}

void nw_quic_connection_set_pmtud_for_non_transport(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_pmtud_for_non_transport();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_pmtud_for_non_transport";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_pmtud_for_non_transport";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_pmtud_for_non_transport";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_pmtud_for_non_transport";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_pmtud_for_non_transport";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_pmtud_for_non_transport(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud_for_non_transport(v1);
}

unint64_t nw_quic_get_pmtud_for_non_transport(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud_for_non_transport = nw_quic_connection_get_pmtud_for_non_transport(v1);

  return pmtud_for_non_transport;
}

void nw_quic_connection_set_pmtud_update_interval(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pmtud_update_interval(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pmtud_update_interval";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_set_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_set_pmtud_update_interval";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_set_pmtud_update_interval(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud_update_interval(v3, a2);
}

uint64_t nw_quic_get_pmtud_update_interval(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud_update_interval = nw_quic_connection_get_pmtud_update_interval(v1);

  return pmtud_update_interval;
}

void nw_quic_connection_set_migration_for_non_transport(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_migration_for_non_transport();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_migration_for_non_transport";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_migration_for_non_transport";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_migration_for_non_transport";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_migration_for_non_transport";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_migration_for_non_transport";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

unint64_t nw_quic_connection_get_migration_for_non_transport(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    migration_for_non_transport = _nw_quic_connection_get_migration_for_non_transport();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_migration_for_non_transport";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_migration_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_migration_for_non_transport";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_migration_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_migration_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  migration_for_non_transport = 0;
LABEL_3:

  return migration_for_non_transport;
}

void nw_quic_set_migration_for_non_transport(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_migration_for_non_transport(v1);
}

unint64_t nw_quic_get_migration_for_non_transport(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  migration_for_non_transport = nw_quic_connection_get_migration_for_non_transport(v1);

  return migration_for_non_transport;
}

void nw_quic_connection_set_retry(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_retry();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_retry";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_retry";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_retry";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_retry";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_retry";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

unint64_t nw_quic_connection_get_retry(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    retry = _nw_quic_connection_get_retry();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_retry";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_retry";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_retry";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_retry";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_retry";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  retry = 0;
LABEL_3:

  return retry;
}

void nw_quic_set_retry(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_retry(v1);
}

unint64_t nw_quic_get_retry(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  retry = nw_quic_connection_get_retry(v1);

  return retry;
}

void nw_quic_connection_set_force_version_negotiation(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_force_version_negotiation();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_force_version_negotiation";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_force_version_negotiation";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_force_version_negotiation";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_force_version_negotiation";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_force_version_negotiation";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_force_version_negotiation(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_force_version_negotiation(v1);
}

unint64_t nw_quic_get_force_version_negotiation(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  force_version_negotiation = nw_quic_connection_get_force_version_negotiation(v1);

  return force_version_negotiation;
}

void nw_quic_connection_set_datagram_variant_flow_id_enabled(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_datagram_variant_flow_id_enabled();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_datagram_variant_flow_id_enabled(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_datagram_variant_flow_id_enabled(v1);
}

unint64_t nw_quic_get_datagram_variant_flow_id_enabled(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  datagram_variant_flow_id_enabled = nw_quic_connection_get_datagram_variant_flow_id_enabled(v1);

  return datagram_variant_flow_id_enabled;
}

void nw_quic_connection_set_datagram_quarter_stream_id(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_datagram_quarter_stream_id();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_datagram_quarter_stream_id";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_datagram_quarter_stream_id";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_datagram_quarter_stream_id";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_datagram_quarter_stream_id";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_datagram_quarter_stream_id";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_datagram_quarter_stream_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_datagram_quarter_stream_id(v1);
}

unint64_t nw_quic_get_datagram_quarter_stream_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  datagram_quarter_stream_id = nw_quic_connection_get_datagram_quarter_stream_id(v1);

  return datagram_quarter_stream_id;
}

void nw_quic_connection_set_datagram_context_id(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_datagram_context_id();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_datagram_context_id";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_datagram_context_id";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_datagram_context_id";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_datagram_context_id";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_datagram_context_id";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_datagram_context_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_datagram_context_id(v1);
}

unint64_t nw_quic_get_datagram_context_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  datagram_context_id = nw_quic_connection_get_datagram_context_id(v1);

  return datagram_context_id;
}

void nw_quic_connection_set_disable_ecn_echo(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_disable_ecn_echo();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_disable_ecn_echo";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_disable_ecn_echo";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_disable_ecn_echo";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_disable_ecn_echo";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_disable_ecn_echo";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_disable_ecn_echo(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_disable_ecn_echo(v1);
}

unint64_t nw_quic_get_disable_ecn_echo(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  disable_ecn_echo = nw_quic_connection_get_disable_ecn_echo(v1);

  return disable_ecn_echo;
}

void nw_quic_connection_set_disable_ecn(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_disable_ecn();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_disable_ecn";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_disable_ecn";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_disable_ecn";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_disable_ecn";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_disable_ecn";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_disable_ecn(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_disable_ecn(v1);
}

unint64_t nw_quic_get_disable_ecn(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  disable_ecn = nw_quic_connection_get_disable_ecn(v1);

  return disable_ecn;
}

void nw_quic_connection_set_enable_l4s(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_enable_l4s();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_enable_l4s";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_enable_l4s";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_enable_l4s";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_enable_l4s";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_enable_l4s";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_enable_l4s(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_enable_l4s(v1);
}

uint64_t nw_quic_get_enable_l4s(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  enable_l4s = nw_quic_connection_get_enable_l4s(v1);

  return enable_l4s;
}

void nw_quic_connection_set_is_speculative_attempt(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_is_speculative_attempt();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_is_speculative_attempt";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_is_speculative_attempt";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_is_speculative_attempt";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_is_speculative_attempt";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_is_speculative_attempt";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_is_speculative_attempt(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_is_speculative_attempt(v1);
}

unint64_t nw_quic_get_is_speculative_attempt(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  is_speculative_attempt = nw_quic_connection_get_is_speculative_attempt(v1);

  return is_speculative_attempt;
}

void nw_quic_connection_set_disable_spin_bit(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_disable_spin_bit();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_disable_spin_bit";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_disable_spin_bit";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_disable_spin_bit";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_disable_spin_bit";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_disable_spin_bit";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_disable_spin_bit(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_disable_spin_bit(v1);
}

unint64_t nw_quic_get_disable_spin_bit(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  disable_spin_bit = nw_quic_connection_get_disable_spin_bit(v1);

  return disable_spin_bit;
}

void nw_quic_connection_set_spin_bit_value(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_spin_bit_value();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_spin_bit_value";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_spin_bit_value";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_spin_bit_value";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_spin_bit_value";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_spin_bit_value";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

unint64_t nw_quic_connection_get_spin_bit_value(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    spin_bit_value = _nw_quic_connection_get_spin_bit_value();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_spin_bit_value";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_spin_bit_value";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_spin_bit_value";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_spin_bit_value";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_spin_bit_value";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  spin_bit_value = 0;
LABEL_3:

  return spin_bit_value;
}

void nw_quic_set_spin_bit_value(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_spin_bit_value(v1);
}

unint64_t nw_quic_get_spin_bit_value(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  spin_bit_value = nw_quic_connection_get_spin_bit_value(v1);

  return spin_bit_value;
}

void nw_quic_connection_set_enable_multipath(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_enable_multipath();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_enable_multipath";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_enable_multipath";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_enable_multipath";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_enable_multipath";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_enable_multipath";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_enable_multipath(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_enable_multipath(v1);
}

unint64_t nw_quic_get_enable_multipath(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  enable_multipath = nw_quic_connection_get_enable_multipath(v1);

  return enable_multipath;
}

void nw_quic_connection_set_probe_simultaneously(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_probe_simultaneously();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_probe_simultaneously";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_probe_simultaneously";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_probe_simultaneously";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_probe_simultaneously";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_probe_simultaneously";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_probe_simultaneously(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_probe_simultaneously(v1);
}

unint64_t nw_quic_get_probe_simultaneously(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  probe_simultaneously = nw_quic_connection_get_probe_simultaneously(v1);

  return probe_simultaneously;
}

void nw_quic_connection_set_phone_call_relay_optimization(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_set_phone_call_relay_optimization();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_phone_call_relay_optimization";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_set_phone_call_relay_optimization";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_set_phone_call_relay_optimization";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_phone_call_relay_optimization";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_phone_call_relay_optimization";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_phone_call_relay_optimization(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_phone_call_relay_optimization(v1);
}

uint64_t nw_quic_get_phone_call_relay_optimization(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  v2 = nw_quic_connection_get_phone_call_relay_optimization(v1);

  return v2;
}

void nw_quic_connection_set_ignore_path_errors(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_ignore_path_errors(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_ignore_path_errors";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_set_ignore_path_errors";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_set_ignore_path_errors";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_ignore_path_errors";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_ignore_path_errors";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_set_ignore_path_errors(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_ignore_path_errors(v3, a2);
}

uint64_t nw_quic_get_ignore_path_errors(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  ignore_path_errors = nw_quic_connection_get_ignore_path_errors(v1);

  return ignore_path_errors;
}

void nw_quic_connection_set_setup_placeholder(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_setup_placeholder(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_setup_placeholder";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_set_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_set_setup_placeholder";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t nw_quic_connection_get_setup_placeholder(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    setup_placeholder = _nw_quic_connection_get_setup_placeholder();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_setup_placeholder";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_get_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_setup_placeholder";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  setup_placeholder = 0;
LABEL_3:

  return setup_placeholder;
}

void nw_quic_set_setup_placeholder(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_setup_placeholder(v3, a2);
}

uint64_t nw_quic_get_setup_placeholder(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  setup_placeholder = nw_quic_connection_get_setup_placeholder(v1);

  return setup_placeholder;
}

void nw_quic_connection_set_pmtud_update_block(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_pmtud_update_block(v5, v6);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_pmtud_update_block";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_pmtud_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_quic_connection_set_pmtud_update_block";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_pmtud_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_pmtud_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

void nw_quic_connection_execute_pmtud_update_block(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_execute_pmtud_update_block(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_execute_pmtud_update_block";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_execute_pmtud_update_block";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_execute_pmtud_update_block";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_execute_pmtud_update_block";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_execute_pmtud_update_block";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_connection_set_source_connection_id_length(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_source_connection_id_length(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_source_connection_id_length";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v14 = "nw_quic_connection_set_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v14 = "nw_quic_connection_set_source_connection_id_length";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_set_source_connection_id_length(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_source_connection_id_length(v3, a2);
}

uint64_t nw_quic_get_source_connection_id_length(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  source_connection_id_length = nw_quic_connection_get_source_connection_id_length(v1);

  return source_connection_id_length;
}

void nw_quic_connection_set_session_state_update_block(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_session_state_update_block(v5, v6, v7);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_session_state_update_block";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_quic_connection_set_session_state_update_block";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

void nw_quic_connection_execute_max_streams_update_block(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_connection_execute_max_streams_update_block();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_execute_max_streams_update_block";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_connection_execute_max_streams_update_block";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_connection_execute_max_streams_update_block";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_execute_max_streams_update_block";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_execute_max_streams_update_block";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_stream_set_is_datagram(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_stream(v1))
  {
    _nw_quic_stream_set_is_datagram();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_stream_set_is_datagram";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_stream(options)", buf, 12);

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
        v12 = "nw_quic_stream_set_is_datagram";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
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
            v12 = "nw_quic_stream_set_is_datagram";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_stream_set_is_datagram";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_stream_set_is_datagram";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_stream_set_associated_stream_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_stream(v3))
  {
    _nw_quic_stream_set_associated_stream_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_associated_stream_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_stream(options)", buf, 12);

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
        v14 = "nw_quic_stream_set_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
LABEL_17:
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
            v14 = "nw_quic_stream_set_associated_stream_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_stream_set_datagram_context_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_stream(v3))
  {
    _nw_quic_stream_set_datagram_context_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_datagram_context_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_options_is_quic_stream(options)", buf, 12);

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
        v14 = "nw_quic_stream_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
LABEL_17:
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
            v14 = "nw_quic_stream_set_datagram_context_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t nw_quic_options_copy_local_public_key(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_options_copy_local_public_key";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v11 = "%{public}s called with null options";
LABEL_33:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_quic_options_copy_local_public_key";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (!v18)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v11 = "%{public}s called with null options, no backtrace";
        goto LABEL_33;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v11 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

LABEL_34:

LABEL_35:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  v2 = v1;
  if (!_nw_protocol_options_is_quic_connection(v2))
  {
    is_quic_stream = _nw_protocol_options_is_quic_stream(v2);

    if (is_quic_stream)
    {
      goto LABEL_5;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_options_copy_local_public_key";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null nw_protocol_options_is_quic(options)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v16 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_39:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v20 = os_log_type_enabled(v14, type);
      if (v19)
      {
        if (v20)
        {
          *buf = 136446466;
          v24 = "nw_quic_options_copy_local_public_key";
          v25 = 2082;
          v26 = v19;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_41;
      }

      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v16 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_39;
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v16 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_41:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

LABEL_5:
  if (_nw_protocol_options_is_quic_stream(v2))
  {
    v4 = nw_quic_stream_copy_shared_connection_options(v2);

    v2 = v4;
  }

  v5 = nw_quic_connection_copy_local_public_key(v2);

  return v5;
}

void nw_quic_set_remote_transport_parameters(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    _nw_quic_set_remote_transport_parameters();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_set_remote_transport_parameters";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_options_is_quic_connection(options)", buf, 12);

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
        v12 = "nw_quic_set_remote_transport_parameters";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
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
            v12 = "nw_quic_set_remote_transport_parameters";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_set_remote_transport_parameters";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_set_remote_transport_parameters";
        v6 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_set_max_data(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_max_data();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_max_data";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_max_data";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_max_data";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_max_data";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_max_data";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_data(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_data(v1);
}

void nw_quic_connection_set_max_stream_data_bidirectional_local(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_max_stream_data_bidirectional_local();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_stream_data_bidirectional_local(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_stream_data_bidirectional_local(v1);
}

void nw_quic_connection_set_max_stream_data_bidirectional_remote(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_bidirectional_remote(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_set_max_stream_data_bidirectional_remote(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_stream_data_bidirectional_remote(v3, a2);
}

void nw_quic_connection_set_max_stream_data_unidirectional(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_max_stream_data_unidirectional();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_max_stream_data_unidirectional";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_max_stream_data_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_max_stream_data_unidirectional";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_max_stream_data_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_max_stream_data_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_stream_data_unidirectional(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_stream_data_unidirectional(v1);
}

void nw_quic_connection_set_local_max_streams_unidirectional(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_local_max_streams_unidirectional();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_local_max_streams_unidirectional";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_local_max_streams_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_local_max_streams_unidirectional";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_local_max_streams_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_local_max_streams_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_local_max_streams_unidirectional(nw_protocol_metadata_t metadata, uint64_t max_streams_unidirectional)
{
  v2 = nw_quic_stream_copy_connection_metadata(metadata);
  nw_quic_connection_set_local_max_streams_unidirectional(v2);
}

void nw_quic_connection_set_local_max_streams_bidirectional(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_local_max_streams_bidirectional();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_local_max_streams_bidirectional";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_local_max_streams_bidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_local_max_streams_bidirectional";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_local_max_streams_bidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_local_max_streams_bidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_local_max_streams_bidirectional(nw_protocol_metadata_t metadata, uint64_t max_streams_bidirectional)
{
  v2 = nw_quic_stream_copy_connection_metadata(metadata);
  nw_quic_connection_set_local_max_streams_bidirectional(v2);
}

void nw_quic_connection_set_remote_max_streams_unidirectional(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_remote_max_streams_unidirectional();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_remote_max_streams_unidirectional";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_remote_max_streams_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_remote_max_streams_unidirectional";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_remote_max_streams_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_remote_max_streams_unidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_set_remote_max_streams_bidirectional(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_remote_max_streams_bidirectional();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_remote_max_streams_bidirectional";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_remote_max_streams_bidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_remote_max_streams_bidirectional";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_remote_max_streams_bidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_remote_max_streams_bidirectional";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_set_link_flow_controlled(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_set_link_flow_controlled();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_set_link_flow_controlled";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_set_link_flow_controlled";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_set_link_flow_controlled";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_set_link_flow_controlled";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_set_link_flow_controlled";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_link_flow_controlled(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_link_flow_controlled(v1);
}

void nw_quic_connection_close_with_error(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_close_with_error();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_close_with_error";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_close_with_error";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_close_with_error";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_close_with_error";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_close_with_error";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_inject_packet(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    _nw_quic_connection_inject_packet();
    goto LABEL_3;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_quic_connection_inject_packet";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v12 = "nw_quic_connection_inject_packet";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v12 = "nw_quic_connection_inject_packet";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v8)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v12 = "nw_quic_connection_inject_packet";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_quic_connection_inject_packet";
        v6 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_get_application_result(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_application_result(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_application_result";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_application_result";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_quic_connection_get_application_result";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_get_application_result";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_application_result";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_quic_set_keepalive_interval(nw_protocol_metadata_t metadata, uint16_t keepalive_interval)
{
  v2 = keepalive_interval;
  v3 = nw_quic_stream_copy_connection_metadata(metadata);
  nw_quic_connection_set_keepalive(v3, v2);
}

void nw_quic_stream_set_usable_datagram_frame_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_usable_datagram_frame_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_usable_datagram_frame_size";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_set_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_set_usable_datagram_frame_size";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_stream_set_datagram_variant_flow_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_datagram_variant_flow_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_datagram_variant_flow_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_set_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_set_datagram_variant_flow_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_stream_set_application_error_internal(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_application_error_internal(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_application_error_internal";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_set_application_error_internal";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_connection_set_application_error_internal(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_application_error_internal(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_application_error_internal";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_set_application_error_internal";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void nw_quic_set_application_error_internal(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_application_error_internal(v3, a2);
}

void nw_quic_set_is_early_data_accepted(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_is_early_data_accepted(v3, a2);
}

void nw_quic_set_stream_has_datagram_variant_flow_id()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "nw_quic_set_stream_has_datagram_variant_flow_id";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s nw_quic_set_stream_has_datagram_variant_flow_id not supported", &v1, 0xCu);
  }
}

uint64_t nw_quic_connection_get_local_max_streams_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    local_max_streams_unidirectional = _nw_quic_connection_get_local_max_streams_unidirectional();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  local_max_streams_unidirectional = 0;
LABEL_3:

  return local_max_streams_unidirectional;
}

uint64_t nw_quic_get_local_max_streams_unidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  local_max_streams_unidirectional = nw_quic_connection_get_local_max_streams_unidirectional(v1);

  return local_max_streams_unidirectional;
}

uint64_t nw_quic_connection_get_local_max_streams_bidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    local_max_streams_bidirectional = _nw_quic_connection_get_local_max_streams_bidirectional();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  local_max_streams_bidirectional = 0;
LABEL_3:

  return local_max_streams_bidirectional;
}

uint64_t nw_quic_get_local_max_streams_bidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  local_max_streams_bidirectional = nw_quic_connection_get_local_max_streams_bidirectional(v1);

  return local_max_streams_bidirectional;
}

uint64_t nw_quic_connection_get_remote_max_streams_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    remote_max_streams_unidirectional = _nw_quic_connection_get_remote_max_streams_unidirectional();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  remote_max_streams_unidirectional = 0;
LABEL_3:

  return remote_max_streams_unidirectional;
}

uint64_t nw_quic_get_remote_max_streams_unidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  remote_max_streams_unidirectional = nw_quic_connection_get_remote_max_streams_unidirectional(v1);

  return remote_max_streams_unidirectional;
}

uint64_t nw_quic_connection_get_remote_max_streams_bidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    remote_max_streams_bidirectional = _nw_quic_connection_get_remote_max_streams_bidirectional();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  remote_max_streams_bidirectional = 0;
LABEL_3:

  return remote_max_streams_bidirectional;
}

uint64_t nw_quic_get_remote_max_streams_bidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  remote_max_streams_bidirectional = nw_quic_connection_get_remote_max_streams_bidirectional(v1);

  return remote_max_streams_bidirectional;
}

uint64_t nw_quic_get_peer_idle_timeout(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  peer_idle_timeout = nw_quic_connection_get_peer_idle_timeout(v1);

  return peer_idle_timeout;
}

uint64_t nw_quic_connection_get_keepalive(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    keepalive = _nw_quic_connection_get_keepalive();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_keepalive";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_keepalive";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  keepalive = 0;
LABEL_3:

  return keepalive;
}

uint64_t nw_quic_get_keepalive(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  keepalive = nw_quic_connection_get_keepalive(v1);

  return keepalive;
}

uint64_t nw_quic_get_remote_idle_timeout(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  peer_idle_timeout = nw_quic_connection_get_peer_idle_timeout(v1);

  return peer_idle_timeout;
}

uint64_t nw_quic_stream_get_usable_datagram_frame_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    usable_datagram_frame_size = _nw_quic_stream_get_usable_datagram_frame_size();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_usable_datagram_frame_size";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_get_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_get_usable_datagram_frame_size";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  usable_datagram_frame_size = 0;
LABEL_3:

  return usable_datagram_frame_size;
}

uint64_t nw_quic_stream_get_datagram_variant_flow_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    datagram_variant_flow_id = _nw_quic_stream_get_datagram_variant_flow_id();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_datagram_variant_flow_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_get_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_get_datagram_variant_flow_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  datagram_variant_flow_id = 0;
LABEL_3:

  return datagram_variant_flow_id;
}

uint64_t nw_quic_get_application_error(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  application_error = nw_quic_connection_get_application_error(v1);

  return application_error;
}

uint64_t nw_quic_stream_get_type(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    v2 = _nw_quic_stream_get_type();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_type";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

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
        v14 = "nw_quic_stream_get_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
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
            v14 = "nw_quic_stream_get_type";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_quic_connection_get_is_early_data_accepted(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    is_early_data_accepted = _nw_quic_connection_get_is_early_data_accepted();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_is_early_data_accepted";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)", buf, 12);

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
        v14 = "nw_quic_connection_get_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
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
            v14 = "nw_quic_connection_get_is_early_data_accepted";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  is_early_data_accepted = 0;
LABEL_3:

  return is_early_data_accepted;
}

uint64_t nw_quic_get_is_early_data_accepted(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  is_early_data_accepted = nw_quic_connection_get_is_early_data_accepted(v1);

  return is_early_data_accepted;
}

void nw_quic_stream_execute_locked(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_execute_locked();
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_stream_execute_locked";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_stream_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_quic_stream_execute_locked";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_stream_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_stream_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_quic_set_application_error(nw_protocol_metadata_t metadata, uint64_t application_error, const char *reason)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = nw_quic_stream_copy_connection_metadata(metadata);
  v6 = v5;
  if (v5)
  {
    nw_quic_connection_set_application_error_internal(v5, application_error);
    v7 = v6;
    if (_nw_protocol_metadata_is_quic_stream())
    {
      v8 = nw_quic_stream_copy_connection_metadata(v7);

      v7 = v8;
    }

    _nw_quic_connection_set_application_error_reason(v7, reason);

    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_set_application_error";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null connection_metadata", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_set_application_error";
        v13 = "%{public}s called with null connection_metadata";
LABEL_19:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_quic_set_application_error";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection_metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v15)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v19 = "nw_quic_set_application_error";
        v13 = "%{public}s called with null connection_metadata, no backtrace";
        goto LABEL_19;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_set_application_error";
        v13 = "%{public}s called with null connection_metadata, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

LABEL_5:
}

void nw_quic_connection_set_application_error_reason(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v13 = v3;
    if (_nw_protocol_metadata_is_quic_stream())
    {
      v4 = nw_quic_stream_copy_connection_metadata(v13);

      v5 = v4;
    }

    else
    {
      v5 = v13;
    }

    v14 = v5;
    _nw_quic_connection_set_application_error_reason(v5, a2);

    return;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_application_error_reason";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null metadata", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v7, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_application_error_reason";
        v10 = "%{public}s called with null metadata";
LABEL_21:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
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
            v18 = "nw_quic_connection_set_application_error_reason";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v12)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_application_error_reason";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_21;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_application_error_reason";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }
}

const char *__cdecl nw_quic_get_application_error_reason(nw_protocol_metadata_t metadata)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  v2 = nw_quic_stream_copy_connection_metadata(v1);
  if (v2)
  {
    application_error_reason = _nw_quic_get_application_error_reason();
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_get_application_error_reason";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection_metadata", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_get_application_error_reason";
        v9 = "%{public}s called with null connection_metadata";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_quic_get_application_error_reason";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection_metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_get_application_error_reason";
        v9 = "%{public}s called with null connection_metadata, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_get_application_error_reason";
        v9 = "%{public}s called with null connection_metadata, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

  application_error_reason = 0;
LABEL_3:

  return application_error_reason;
}

uint64_t nw_qpod_set_secrets(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a3;
  v10 = a4;
  if (nw_protocol_options_is_qpod(v8))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_qpod_set_secrets_block_invoke;
    v20[3] = &unk_1E6A30B70;
    v21 = v9;
    v22 = v10;
    v23 = a5;
    v11 = nw_protocol_options_access_handle(v8, v20);

    goto LABEL_3;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_qpod_set_secrets";
  v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null nw_protocol_options_is_qpod(options)", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v14, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v27 = "nw_qpod_set_secrets";
        v17 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v27 = "nw_qpod_set_secrets";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v19)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v27 = "nw_qpod_set_secrets";
        v17 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
        goto LABEL_17;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v27 = "nw_qpod_set_secrets";
        v17 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_3:

  return v11;
}

uint64_t nw_protocol_options_is_qpod(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_qpod_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_qpod_definition_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_qpod";
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
        v14 = "nw_protocol_options_is_qpod";
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
            v14 = "nw_protocol_options_is_qpod";
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
        v14 = "nw_protocol_options_is_qpod";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_qpod";
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

uint64_t __nw_qpod_set_secrets_block_invoke(uint64_t a1, id *location)
{
  v12 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446466;
      v9 = "nw_qpod_set_secrets_block_invoke";
      v10 = 2048;
      v11 = location;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s setting secrets for options %p", &v8, 0x16u);
    }
  }

  objc_storeStrong(location, *(a1 + 32));
  if (*location)
  {
    objc_storeStrong(location + 1, *(a1 + 40));
    if (location[1])
    {
      *(location + 32) = *(a1 + 48);
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446210;
      v9 = "nw_qpod_set_secrets_block_invoke";
      v6 = "%{public}s failed to create server secret";
      goto LABEL_9;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446210;
      v9 = "nw_qpod_set_secrets_block_invoke";
      v6 = "%{public}s failed to create client secret";
LABEL_9:
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0xCu);
    }
  }

  return 0;
}

void *qpod_options_deserialize(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v35 = "qpod_options_deserialize";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null serialized_buffer", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v25, type, &v33))
    {
LABEL_45:
      if (v25)
      {
        free(v25);
      }

      v6 = 0;
      goto LABEL_29;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        v35 = "qpod_options_deserialize";
        v28 = "%{public}s called with null serialized_buffer";
LABEL_43:
        _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
      }
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type[0];
        v30 = os_log_type_enabled(v26, type[0]);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "qpod_options_deserialize";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null serialized_buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_45;
        }

        if (!v30)
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v35 = "qpod_options_deserialize";
        v28 = "%{public}s called with null serialized_buffer, no backtrace";
        goto LABEL_43;
      }

      v26 = __nwlog_obj();
      v27 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        v35 = "qpod_options_deserialize";
        v28 = "%{public}s called with null serialized_buffer, backtrace limit exceeded";
        goto LABEL_43;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x38FAFA03uLL);
  if (v6)
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v35 = "qpod_options_deserialize";
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v36 = 2048;
  v37 = 1;
  v38 = 2048;
  v39 = 40;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
LABEL_8:
    aBlock[4] = a2 + a3;
    *type = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __qpod_options_deserialize_block_invoke;
    aBlock[3] = &__block_descriptor_40_e37___NSObject_OS_dispatch_data__16__0__8l;
    v11 = _Block_copy(aBlock);
    v12 = v11[2](v11, type);
    v13 = *v6;
    *v6 = v12;

    v14 = MEMORY[0x1E69E9668];
    if (*v6 == MEMORY[0x1E69E9668])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v35 = "qpod_options_deserialize";
        v23 = "%{public}s failed to deserialize client_secret in qpod options";
        goto LABEL_26;
      }
    }

    else
    {
      v15 = v11[2](v11, type);
      v16 = v6[1];
      v6[1] = v15;

      if (v6[1] == v14)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v35 = "qpod_options_deserialize";
          v23 = "%{public}s failed to deserialize server_secret in qpod options";
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v11[2](v11, type);
        v18 = v6[2];
        v6[2] = v17;

        if (v6[2] == v14)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v35 = "qpod_options_deserialize";
            v23 = "%{public}s failed to deserialize scid in qpod options";
            goto LABEL_26;
          }
        }

        else
        {
          v19 = v11[2](v11, type);
          v20 = v6[3];
          v6[3] = v19;

          if (v6[3] == v14)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v35 = "qpod_options_deserialize";
              v23 = "%{public}s failed to deserialize dcid in qpod options";
              goto LABEL_26;
            }
          }

          else
          {
            v21 = *type + 1;
            if (*type + 1 <= (a2 + a3))
            {
              *(v6 + 32) = **type;
              *type = v21;
              if (v21 - a2 == a3)
              {
LABEL_28:

LABEL_29:
                return v6;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v22 = gLogObj;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                v35 = "qpod_options_deserialize";
                v23 = "%{public}s failed to deserialize qpod options";
                goto LABEL_26;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v22 = gLogObj;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                v35 = "qpod_options_deserialize";
                v23 = "%{public}s failed to deserialize is_server in qpod options";
LABEL_26:
                _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
              }
            }
          }
        }
      }
    }

    free(v6);
    v6 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

dispatch_data_t __qpod_options_deserialize_block_invoke(uint64_t a1, void *a2)
{
  v3 = (*a2 + 1);
  if (v3 <= *(a1 + 32) && (v4 = **a2, *a2 = v3, v3 + v4 <= *(a1 + 32)))
  {
    v5 = dispatch_data_create(v3, v4, 0, 0);
    *a2 += v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E9668];
    v6 = MEMORY[0x1E69E9668];
  }

  return v5;
}

char *qpod_options_serialize(void *a1, uint64_t a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2)
  {
    v37 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "qpod_options_serialize";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null existing_handle", applier, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v50) = 0;
    if (!__nwlog_fault(v15, type, &v50))
    {
      goto LABEL_86;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v40 = "%{public}s called with null existing_handle";
LABEL_84:
        _os_log_impl(&dword_181A37000, v38, v39, v40, applier, 0xCu);
      }

LABEL_85:

LABEL_86:
      if (!v15)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v50 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v40 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type[0];
    v46 = os_log_type_enabled(v38, type[0]);
    if (!backtrace_string)
    {
      if (v46)
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v40 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (v46)
    {
      *applier = 136446466;
      *&applier[4] = "qpod_options_serialize";
      *&applier[12] = 2082;
      *&applier[14] = backtrace_string;
      v47 = "%{public}s called with null existing_handle, dumping backtrace:%{public}s";
LABEL_74:
      _os_log_impl(&dword_181A37000, v38, v39, v47, applier, 0x16u);
    }

LABEL_75:

    free(backtrace_string);
    goto LABEL_86;
  }

  if (!a3)
  {
    v41 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "qpod_options_serialize";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null out_length", applier, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v50) = 0;
    if (!__nwlog_fault(v15, type, &v50))
    {
      goto LABEL_86;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v40 = "%{public}s called with null out_length";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (v50 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v40 = "%{public}s called with null out_length, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type[0];
    v48 = os_log_type_enabled(v38, type[0]);
    if (!backtrace_string)
    {
      if (v48)
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v40 = "%{public}s called with null out_length, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (v48)
    {
      *applier = 136446466;
      *&applier[4] = "qpod_options_serialize";
      *&applier[12] = 2082;
      *&applier[14] = backtrace_string;
      v47 = "%{public}s called with null out_length, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (*a2)
  {
    size = dispatch_data_get_size(*a2);
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    size = 0;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_5:
      v8 = dispatch_data_get_size(v7);
      v9 = *(a2 + 16);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_10:
      v10 = 0;
      v11 = *(a2 + 24);
      if (v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v8 = 0;
  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_6:
  v10 = dispatch_data_get_size(v9);
  v11 = *(a2 + 24);
  if (v11)
  {
LABEL_7:
    v12 = dispatch_data_get_size(v11);
    goto LABEL_12;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  v13 = size + v8 + v10 + v12;
  v14 = v13 + 5;
  *a3 = v13 + 5;
  if (v13 == -5)
  {
    v42 = __nwlog_obj();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    *applier = 136446210;
    *&applier[4] = "qpod_options_serialize";
    v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s strict_calloc called with size 0", applier, 12);

    result = __nwlog_should_abort(v44);
    if (result)
    {
      goto LABEL_88;
    }

    free(v44);
  }

  v15 = malloc_type_calloc(1uLL, v14, 0x16BCEDB6uLL);
  if (v15)
  {
    if (size > 0xFF)
    {
      goto LABEL_28;
    }

LABEL_21:
    v21 = *a2;
    *v15 = size;
    *type = 0;
    v55 = type;
    v56 = 0x2000000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = v15 + 1;
    if (v21)
    {
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
      v59 = &unk_1E6A34348;
      v61 = &v50;
      v62 = size;
      v60 = type;
      dispatch_data_apply(v21, applier);
      v22 = *(v55 + 3);
    }

    else
    {
      v22 = 0;
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(type, 8);
    if (v22 != size)
    {
LABEL_28:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s failed to serialize client_secret in qpod options", applier, 0xCu);
      }

      if (!v15)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (v8 <= 0xFF && ((v23 = *(a2 + 8), v24 = &v15[size + 1], *v24 = v8, v25 = v24 + 1, *type = 0, v55 = type, v56 = 0x2000000000, v57 = 0, v50 = 0, v51 = &v50, v52 = 0x2000000000, v53 = v25, !v23) ? (v26 = 0) : (*applier = MEMORY[0x1E69E9820], *&applier[8] = 0x40000000, *&applier[16] = __nw_dispatch_data_copyout_block_invoke, v59 = &unk_1E6A34348, v61 = &v50, v62 = v8, v60 = type, dispatch_data_apply(v23, applier), v26 = *(v55 + 3)), _Block_object_dispose(&v50, 8), _Block_object_dispose(type, 8), v26 == v8))
    {
      if (v10 <= 0xFF && ((v28 = *(a2 + 16), v29 = &v25[v8], *v29 = v10, v30 = v29 + 1, *type = 0, v55 = type, v56 = 0x2000000000, v57 = 0, v50 = 0, v51 = &v50, v52 = 0x2000000000, v53 = v30, !v28) ? (v31 = 0) : (*applier = MEMORY[0x1E69E9820], *&applier[8] = 0x40000000, *&applier[16] = __nw_dispatch_data_copyout_block_invoke, v59 = &unk_1E6A34348, v61 = &v50, v62 = v10, v60 = type, dispatch_data_apply(v28, applier), v31 = *(v55 + 3)), _Block_object_dispose(&v50, 8), _Block_object_dispose(type, 8), v31 == v10))
      {
        if (v12 <= 0xFF)
        {
          v34 = *(a2 + 24);
          v35 = &v30[v10];
          *v35 = v12;
          v36 = (v35 + 1);
          if (nw_dispatch_data_copyout(v34, v36, v12) == v12)
          {
            *(v36 + v12) = *(a2 + 32);
            goto LABEL_43;
          }
        }

        v32 = __nwlog_obj();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v33 = "%{public}s failed to serialize dcid in qpod options";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v33 = "%{public}s failed to serialize scid in qpod options";
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
LABEL_40:

LABEL_41:
        free(v15);
LABEL_42:
        v15 = 0;
LABEL_43:

        return v15;
      }

      *applier = 136446210;
      *&applier[4] = "qpod_options_serialize";
      v33 = "%{public}s failed to serialize server_secret in qpod options";
    }

    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, v33, applier, 0xCu);
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  *applier = 136446722;
  *&applier[4] = "qpod_options_serialize";
  if (v17)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  *&applier[12] = 2048;
  *&applier[14] = 1;
  *&applier[22] = 2048;
  v59 = v14;
  LODWORD(v49) = 32;
  v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s strict_calloc(%zu, %zu) failed", applier, v49);

  result = __nwlog_should_abort(v19);
  if (!result)
  {
    free(v19);
    if (size > 0xFF)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

LABEL_88:
  __break(1u);
  return result;
}

BOOL qpod_options_is_equal(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2 && a3)
  {
    v6 = nw_dispatch_data_is_equal(*a2, *a3) && nw_dispatch_data_is_equal(*(a2 + 8), *(a3 + 8)) && nw_dispatch_data_is_equal(*(a2 + 16), *(a3 + 16)) && nw_dispatch_data_is_equal(*(a2 + 24), *(a3 + 24)) && *(a2 + 32) == *(a3 + 32);
    if (gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136446978;
        v10 = "qpod_options_is_equal";
        v11 = 2048;
        v12 = a2;
        v13 = 2048;
        v14 = a3;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s comparing options %p and %p -> %i", &v9, 0x26u);
      }
    }
  }

  else
  {
    v6 = a2 == a3;
  }

  return v6;
}

void qpod_options_deallocate(uint64_t a1, void **a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446466;
      v9 = "qpod_options_deallocate";
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s deallocating options %p", &v8, 0x16u);
    }
  }

  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  a2[1] = 0;

  v5 = a2[2];
  a2[2] = 0;

  v6 = a2[3];
  a2[3] = 0;

  free(a2);
}

id *qpod_options_copy(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "qpod_options_copy";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null existing_handle", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v10, &type, &v17))
    {
LABEL_28:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "qpod_options_copy";
        v13 = "%{public}s called with null existing_handle";
LABEL_26:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "qpod_options_copy";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v16)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v20 = "qpod_options_copy";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_26;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "qpod_options_copy";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x5D4C3B3EuLL);
  if (v4)
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446722;
  v20 = "qpod_options_copy";
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v21 = 2048;
  v22 = 1;
  v23 = 2048;
  v24 = 40;
  v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
LABEL_8:
    objc_storeStrong(v4, *a2);
    objc_storeStrong(v4 + 1, *(a2 + 8));
    objc_storeStrong(v4 + 2, *(a2 + 16));
    objc_storeStrong(v4 + 3, *(a2 + 24));
    *(v4 + 32) = *(a2 + 32);
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v20 = "qpod_options_copy";
        v21 = 2048;
        v22 = a2;
        v23 = 2048;
        v24 = v4;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s copying options %p -> %p", buf, 0x20u);
      }
    }

LABEL_9:

    return v4;
  }

  __break(1u);
  return result;
}

void *qpod_options_allocate(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x3A383438uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446722;
    v9 = "qpod_options_allocate";
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v10 = 2048;
    v11 = 1;
    v12 = 2048;
    v13 = 40;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
  }

  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v9 = "qpod_options_allocate";
      v10 = 2048;
      v11 = v2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s allocating options %p", buf, 0x16u);
    }
  }

  return v2;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v3 = nw_framer_copy_options(v2);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __nw_protocol_copy_qpod_definition_block_invoke_2;
  v15[3] = &unk_1E6A3A880;
  v4 = v2;
  v16 = v4;
  v17 = v18;
  nw_protocol_options_access_handle(v3, v15);
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __nw_protocol_copy_qpod_definition_block_invoke_83;
  input_handler[3] = &unk_1E6A30C30;
  v5 = v4;
  v13 = v5;
  v14 = v18;
  nw_framer_set_input_handler(v5, input_handler);
  output_handler[0] = MEMORY[0x1E69E9820];
  output_handler[1] = 3221225472;
  output_handler[2] = __nw_protocol_copy_qpod_definition_block_invoke_4;
  output_handler[3] = &unk_1E6A30C80;
  v6 = v5;
  v10 = v6;
  v11 = v18;
  nw_framer_set_output_handler(v6, output_handler);
  cleanup_handler[0] = MEMORY[0x1E69E9820];
  cleanup_handler[1] = 3221225472;
  cleanup_handler[2] = __nw_protocol_copy_qpod_definition_block_invoke_3_92;
  cleanup_handler[3] = &unk_1E6A30CA8;
  cleanup_handler[4] = v18;
  nw_framer_set_cleanup_handler(v6, cleanup_handler);
  nw_framer_set_stop_handler(v6, &__block_literal_global_97);

  _Block_object_dispose(v18, 8);
  return 1;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v14 = a2;
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      if (*(v14 + 32))
      {
        v17 = "server";
      }

      else
      {
        v17 = "client";
      }

      v18 = 136446978;
      v19 = "nw_protocol_copy_qpod_definition_block_invoke_2";
      v20 = 2048;
      v21 = v16;
      v22 = 2080;
      v23 = v17;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s created framer %p for %s with options %p", &v18, 0x2Au);
    }

    a2 = v14;
  }

  v3 = *(a2 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (qpod_conn_create_override)
  {
    override = qpod_conn_create_override(v7, v8, v9, v10, v6);
  }

  else
  {
    if (!MEMORY[0x1EEE98820])
    {
      v12 = 0;
      goto LABEL_7;
    }

    override = qpod_conn_create();
  }

  v12 = override;
LABEL_7:

  *(*(*(a1 + 40) + 8) + 24) = v12;
  return 1;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_83(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 136446466;
      v12 = "nw_protocol_copy_qpod_definition_block_invoke";
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s handling input for framer %p", buf, 0x16u);
    }
  }

  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __nw_protocol_copy_qpod_definition_block_invoke_84;
  parse[3] = &unk_1E6A30C08;
  v8 = *(a1 + 32);
  v4 = v8;
  v10 = v8;
  nw_framer_parse_input(v3, 0, 0x7D0uLL, 0, parse);

  return 0;
}

void __nw_protocol_copy_qpod_definition_block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      *buf = 136446466;
      v11 = "nw_protocol_copy_qpod_definition_block_invoke_4";
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s handling output for framer %p", buf, 0x16u);
    }
  }

  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __nw_protocol_copy_qpod_definition_block_invoke_89;
  parse[3] = &unk_1E6A30C08;
  v7 = *(a1 + 32);
  v4 = v7;
  v9 = v7;
  nw_framer_parse_output(v3, 0, 0x7D0uLL, 0, parse);
}

void __nw_protocol_copy_qpod_definition_block_invoke_3_92(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136446466;
      v6 = "nw_protocol_copy_qpod_definition_block_invoke_3";
      v7 = 2048;
      v8 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s cleaning up framer %p", &v5, 0x16u);
    }
  }

  if (qpod_conn_free_override)
  {
    qpod_conn_free_override(*(*(*(a1 + 32) + 8) + 24));
  }

  else if (MEMORY[0x1EEE98838])
  {
    qpod_conn_free();
  }
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_94(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (gLogDatapath == 1)
  {
    v4 = v2;
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136446466;
      v7 = "nw_protocol_copy_qpod_definition_block_invoke";
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s stopping framer %p", &v6, 0x16u);
    }

    v2 = v4;
  }

  return 1;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_89(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_protocol_copy_qpod_definition_block_invoke_2_90;
  v8[3] = &unk_1E6A30C58;
  v9 = *(a1 + 32);
  v6 = v8;
  if (qpod_conn_encode_datagram_override)
  {
    qpod_conn_encode_datagram_override(v5, a2, a3, v6);
  }

  else if (MEMORY[0x1EEE98830])
  {
    qpod_conn_encode_datagram();
  }

  return a3;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __nw_protocol_copy_qpod_definition_block_invoke_2_85;
  v12[3] = &unk_1E6A30BE0;
  v15 = a2;
  v13 = *(a1 + 32);
  v14 = &v16;
  v7 = v12;
  if (qpod_conn_decode_datagram_override)
  {
    qpod_conn_decode_datagram_override(v6, a2, a3, v7);
  }

  else if (MEMORY[0x1EEE98828])
  {
    qpod_conn_decode_datagram();
  }

  if ((v17[3] & 1) == 0)
  {
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __nw_protocol_copy_qpod_definition_block_invoke_3;
    v10[3] = &unk_1E6A3D868;
    v11 = v8;
    nw_framer_async(v11, v10);
  }

  _Block_object_dispose(&v16, 8);
  return a3;
}

void sub_18257A39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_protocol_copy_qpod_definition_block_invoke_2_85(uint64_t a1, const uint8_t *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (a3 == 0xFFFF && *(a1 + 48) == a2)
  {
    v9 = *(a1 + 32);

    nw_framer_mark_failed_with_error(v9, 54);
  }

  else
  {
    v7 = a3;
    v8 = nw_framer_message_create(*(a1 + 32));
    nw_framer_deliver_input(v3, a2, v7, v8, 1);

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t nw_qpod_setup_secrets(void *a1, void *a2, uint64_t a3, char a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (nw_protocol_options_is_qpod(v7))
  {
    if (_nw_protocol_metadata_is_quic())
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_qpod_setup_secrets_block_invoke;
      v21[3] = &unk_1E6A30B98;
      v23 = a3;
      v22 = v8;
      v24 = a4;
      v9 = nw_protocol_options_access_handle(v7, v21);

      goto LABEL_4;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_qpod_setup_secrets";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata)", buf, 12);

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v12, &v26, &v25))
    {
      if (v26 == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata)";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v25 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v26;
      v20 = os_log_type_enabled(v13, v26);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v20)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v28 = "nw_qpod_setup_secrets";
      v29 = 2082;
      v30 = backtrace_string;
      v19 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata), dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_qpod_setup_secrets";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null nw_protocol_options_is_qpod(options)", buf, 12);

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v12, &v26, &v25))
    {
      if (v26 == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_31:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v25 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v26;
      v18 = os_log_type_enabled(v13, v26);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v18)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v28 = "nw_qpod_setup_secrets";
      v29 = 2082;
      v30 = backtrace_string;
      v19 = "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_4:

  return v9;
}

uint64_t __nw_qpod_setup_secrets_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v23 = "nw_qpod_setup_secrets_block_invoke";
      v24 = 2048;
      v25 = a2;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s setting up secrets for options %p", buf, 0x16u);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
LABEL_3:
      v5 = snprintf(__str, 0x10uLL, "%s client", v4);
      v6 = snprintf(label, 0x10uLL, "%s server", *(a1 + 40));
      if ((v6 | v5) >= 0x10)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 40);
          *buf = 136446466;
          v23 = "nw_qpod_setup_secrets_block_invoke";
          v24 = 2080;
          v25 = v14;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s identifier %s is too long", buf, 0x16u);
        }

        goto LABEL_15;
      }

      v7 = v6;
      v8 = nw_quic_copy_sec_protocol_metadata(*(a1 + 32));
      secret = sec_protocol_metadata_create_secret(v8, v5, __str, 0x20uLL);
      v10 = *a2;
      *a2 = secret;

      if (*a2)
      {
        v11 = sec_protocol_metadata_create_secret(v8, v7, label, 0x20uLL);
        v12 = *(a2 + 8);
        *(a2 + 8) = v11;

        if (*(a2 + 8))
        {
          *(a2 + 32) = *(a1 + 48);
          v13 = 1;
LABEL_16:

          return v13;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136446210;
        v23 = "nw_qpod_setup_secrets_block_invoke";
        v16 = "%{public}s failed to create server secret";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_14:

LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        *buf = 136446210;
        v23 = "nw_qpod_setup_secrets_block_invoke";
        v16 = "%{public}s failed to create client secret";
      }

      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v23 = "nw_qpod_setup_secrets_block_invoke";
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s missing identifier", buf, 0xCu);
  }

  return 0;
}

void nw_qpod_set_scid(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_qpod(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_qpod_set_scid_block_invoke;
    v12[3] = &unk_1E6A3A950;
    v13 = v4;
    nw_protocol_options_access_handle(v3, v12);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_qpod_set_scid";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_qpod(options)", buf, 12);

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
        v17 = "nw_qpod_set_scid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_qpod_set_scid";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_qpod_set_scid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_qpod_set_scid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_qpod_set_dcid(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_qpod(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_qpod_set_dcid_block_invoke;
    v12[3] = &unk_1E6A3A950;
    v13 = v4;
    nw_protocol_options_access_handle(v3, v12);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_qpod_set_dcid";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_qpod(options)", buf, 12);

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
        v17 = "nw_qpod_set_dcid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v17 = "nw_qpod_set_dcid";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_qpod_set_dcid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_qpod_set_dcid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

id nw_protocol_copy_qpod_definition()
{
  if (nw_protocol_copy_qpod_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
  }

  v1 = nw_protocol_copy_qpod_definition_definition;

  return v1;
}

nw_protocol_options_t nw_qpod_create_options()
{
  if (nw_protocol_copy_qpod_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
  }

  v1 = nw_protocol_copy_qpod_definition_definition;

  return nw_framer_create_options(v1);
}

id nw_parameters_create_qpod(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_parameters_create();
    v3 = v2;
    if (v2)
    {
      _nw_parameters_set_data_mode(v2, 1);
      if (nw_protocol_copy_qpod_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
      }

      options = nw_framer_create_options(nw_protocol_copy_qpod_definition_definition);
      if (options)
      {
        v5 = _nw_parameters_copy_default_protocol_stack();
        nw_protocol_stack_append_application_protocol(v5, options);
        if (v1 != &__block_literal_global_2)
        {
          v1[2](v1, options);
        }

        v6 = v3;

LABEL_44:
        goto LABEL_45;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      *buf = 136446210;
      v38 = "nw_parameters_create_qpod";
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s nw_framer_create_options failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v35 = 0;
      if (!__nwlog_fault(v13, &type, &v35))
      {
LABEL_41:
        if (v13)
        {
          free(v13);
        }

        v6 = 0;
        goto LABEL_44;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v38 = "nw_parameters_create_qpod";
          v16 = "%{public}s nw_framer_create_options failed";
LABEL_38:
          v25 = v14;
          v26 = v15;
LABEL_39:
          _os_log_impl(&dword_181A37000, v25, v26, v16, buf, 0xCu);
        }
      }

      else
      {
        if (v35 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v21 = type;
          v22 = os_log_type_enabled(v14, type);
          if (backtrace_string)
          {
            if (v22)
            {
              *buf = 136446466;
              v38 = "nw_parameters_create_qpod";
              v39 = 2082;
              v40 = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v21, "%{public}s nw_framer_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_41;
          }

          if (!v22)
          {
            goto LABEL_40;
          }

          *buf = 136446210;
          v38 = "nw_parameters_create_qpod";
          v16 = "%{public}s nw_framer_create_options failed, no backtrace";
          v25 = v14;
          v26 = v21;
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v38 = "nw_parameters_create_qpod";
          v16 = "%{public}s nw_framer_create_options failed, backtrace limit exceeded";
          goto LABEL_38;
        }
      }

LABEL_40:

      goto LABEL_41;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v38 = "nw_parameters_create_qpod";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s nw_parameters_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v8, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v11 = "%{public}s nw_parameters_create failed";
LABEL_32:
        v23 = v9;
        v24 = v10;
        goto LABEL_33;
      }

      if (v35 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v11 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
        goto LABEL_32;
      }

      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v18 = type;
      v19 = os_log_type_enabled(v9, type);
      if (!v17)
      {
        if (!v19)
        {
LABEL_34:

          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v11 = "%{public}s nw_parameters_create failed, no backtrace";
        v23 = v9;
        v24 = v18;
LABEL_33:
        _os_log_impl(&dword_181A37000, v23, v24, v11, buf, 0xCu);
        goto LABEL_34;
      }

      if (v19)
      {
        *buf = 136446466;
        v38 = "nw_parameters_create_qpod";
        v39 = 2082;
        v40 = v17;
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
    }

    if (!v8)
    {
LABEL_24:
      v6 = 0;
LABEL_45:

      goto LABEL_46;
    }

LABEL_23:
    free(v8);
    goto LABEL_24;
  }

  v28 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_parameters_create_qpod";
  v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null configure_qpod", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v29, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v32 = "%{public}s called with null configure_qpod";
LABEL_64:
        _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
      }
    }

    else
    {
      if (v35 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v34 = os_log_type_enabled(v30, type);
        if (v33)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_parameters_create_qpod";
            v39 = 2082;
            v40 = v33;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null configure_qpod, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_66;
        }

        if (!v34)
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v32 = "%{public}s called with null configure_qpod, no backtrace";
        goto LABEL_64;
      }

      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v32 = "%{public}s called with null configure_qpod, backtrace limit exceeded";
        goto LABEL_64;
      }
    }

LABEL_65:
  }

LABEL_66:
  if (v29)
  {
    free(v29);
  }

  v6 = 0;
LABEL_46:

  return v6;
}

NWConcrete_nw_quic_migration_info *nw_quic_migration_info_create()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(NWConcrete_nw_quic_migration_info);
  v1 = v0;
  if (!v0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v17 = "nw_quic_migration_info_create";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v4, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_quic_migration_info_create";
        v7 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed";
LABEL_17:
        v12 = v5;
        v13 = v6;
        goto LABEL_18;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_quic_migration_info_create";
        v7 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_19:

          if (!v4)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v17 = "nw_quic_migration_info_create";
        v7 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed, no backtrace";
        v12 = v5;
        v13 = v9;
LABEL_18:
        _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
        goto LABEL_19;
      }

      if (v10)
      {
        *buf = 136446466;
        v17 = "nw_quic_migration_info_create";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v4);
    goto LABEL_14;
  }

  v2 = v0;
LABEL_14:

  return v1;
}

id nw_quic_migration_info_get_remote_endpoint(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 16);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_migration_info_get_remote_endpoint";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null migration_info", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_remote_endpoint";
        v7 = "%{public}s called with null migration_info";
LABEL_19:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_quic_migration_info_get_remote_endpoint";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_remote_endpoint";
        v7 = "%{public}s called with null migration_info, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_remote_endpoint";
        v7 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  v1 = 0;
LABEL_3:

  return v1;
}

void nw_quic_migration_info_set_remote_endpoint(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_quic_migration_info_set_remote_endpoint";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null migration_info", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_migration_info_set_remote_endpoint";
        v10 = "%{public}s called with null migration_info";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
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
          v19 = "nw_quic_migration_info_set_remote_endpoint";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_quic_migration_info_set_remote_endpoint";
        v10 = "%{public}s called with null migration_info, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_migration_info_set_remote_endpoint";
        v10 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    objc_storeStrong(v3 + 2, a2);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_migration_info_set_remote_endpoint";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_quic_migration_info_set_remote_endpoint";
      v10 = "%{public}s called with null endpoint";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_quic_migration_info_set_remote_endpoint";
      v10 = "%{public}s called with null endpoint, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
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
      v19 = "nw_quic_migration_info_set_remote_endpoint";
      v10 = "%{public}s called with null endpoint, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_quic_migration_info_set_remote_endpoint";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

id nw_quic_migration_info_get_interface(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_migration_info_get_interface";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null migration_info", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_interface";
        v7 = "%{public}s called with null migration_info";
LABEL_19:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v9 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v9)
          {
            *buf = 136446466;
            v13 = "nw_quic_migration_info_get_interface";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_interface";
        v7 = "%{public}s called with null migration_info, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_interface";
        v7 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  v1 = 0;
LABEL_3:

  return v1;
}

void nw_quic_migration_info_set_interface(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_quic_migration_info_set_interface";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null migration_info", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_migration_info_set_interface";
        v10 = "%{public}s called with null migration_info";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
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
          v19 = "nw_quic_migration_info_set_interface";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_quic_migration_info_set_interface";
        v10 = "%{public}s called with null migration_info, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_migration_info_set_interface";
        v10 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    objc_storeStrong(v3 + 1, a2);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_migration_info_set_interface";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null interface", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_quic_migration_info_set_interface";
      v10 = "%{public}s called with null interface";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_quic_migration_info_set_interface";
      v10 = "%{public}s called with null interface, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
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
      v19 = "nw_quic_migration_info_set_interface";
      v10 = "%{public}s called with null interface, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_quic_migration_info_set_interface";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

NWConcrete_nw_quic_migration_info *nw_quic_migration_info_create_from_data(uint64_t a1, unint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    v69 = "nw_quic_migration_info_create_from_data";
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null migration_info_data", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (__nwlog_fault(v55, &type, &v66))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v69 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null migration_info_data";
LABEL_130:
          _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
        }

LABEL_131:

        goto LABEL_132;
      }

      if (v66 != 1)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v69 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null migration_info_data, backtrace limit exceeded";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v61 = os_log_type_enabled(v56, type);
      if (!backtrace_string)
      {
        if (v61)
        {
          *buf = 136446210;
          v69 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null migration_info_data, no backtrace";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if (!v61)
      {
        goto LABEL_121;
      }

      *buf = 136446466;
      v69 = "nw_quic_migration_info_create_from_data";
      v70 = 2082;
      *v71 = backtrace_string;
      v62 = "%{public}s called with null migration_info_data, dumping backtrace:%{public}s";
      goto LABEL_120;
    }

LABEL_132:
    if (v55)
    {
      free(v55);
    }

    v35 = 0;
    goto LABEL_76;
  }

  if (!a2)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v69 = "nw_quic_migration_info_create_from_data";
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null (data_length > 0)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (__nwlog_fault(v55, &type, &v66))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v69 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null (data_length > 0)";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if (v66 != 1)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v69 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null (data_length > 0), backtrace limit exceeded";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v63 = os_log_type_enabled(v56, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v69 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null (data_length > 0), no backtrace";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if (!v63)
      {
        goto LABEL_121;
      }

      *buf = 136446466;
      v69 = "nw_quic_migration_info_create_from_data";
      v70 = 2082;
      *v71 = backtrace_string;
      v62 = "%{public}s called with null (data_length > 0), dumping backtrace:%{public}s";
LABEL_120:
      _os_log_impl(&dword_181A37000, v56, v57, v62, buf, 0x16u);
LABEL_121:

      free(backtrace_string);
      goto LABEL_132;
    }

    goto LABEL_132;
  }

  v4 = objc_alloc_init(NWConcrete_nw_quic_migration_info);
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v69 = "nw_quic_migration_info_create_from_data";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (__nwlog_fault(v9, &type, &v66))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v69 = "nw_quic_migration_info_create_from_data";
        v12 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed";
LABEL_69:
        v39 = v10;
        v40 = v11;
        goto LABEL_70;
      }

      if (v66 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v69 = "nw_quic_migration_info_create_from_data";
        v12 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed, backtrace limit exceeded";
        goto LABEL_69;
      }

      v36 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v37 = type;
      v38 = os_log_type_enabled(v10, type);
      if (!v36)
      {
        if (!v38)
        {
LABEL_71:

          if (!v9)
          {
            goto LABEL_74;
          }

          goto LABEL_72;
        }

        *buf = 136446210;
        v69 = "nw_quic_migration_info_create_from_data";
        v12 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed, no backtrace";
        v39 = v10;
        v40 = v37;
LABEL_70:
        _os_log_impl(&dword_181A37000, v39, v40, v12, buf, 0xCu);
        goto LABEL_71;
      }

      if (v38)
      {
        *buf = 136446466;
        v69 = "nw_quic_migration_info_create_from_data";
        v70 = 2082;
        *v71 = v36;
        _os_log_impl(&dword_181A37000, v10, v37, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
    }

    if (!v9)
    {
      goto LABEL_74;
    }

LABEL_72:
    v41 = v9;
    goto LABEL_73;
  }

  v6 = a2 - 5;
  if (a2 < 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v69 = "nw_quic_migration_info_create_from_data";
      v70 = 2048;
      *v71 = a2;
      *&v71[8] = 2048;
      *&v71[10] = 5;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s invalid length for migration info %zu != %zu", buf, 0x20u);
    }

    goto LABEL_74;
  }

  if (a2 == 5)
  {
LABEL_59:
    v35 = v5;
    goto LABEL_75;
  }

  v13 = 0;
  v14 = &qword_1ED411000;
  v65 = v4;
  while (1)
  {
    v17 = *(a1 + v13);
    v18 = *(a1 + 1 + v13);
    if (!v18)
    {
      v27 = 0;
      goto LABEL_42;
    }

    if (v18 <= 0xFFFFFFF9 && a2 >= v18 + 5 && a2 - (v18 + 5) >= v13)
    {
      v27 = (a1 + 5 + v13);
      goto LABEL_42;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = v14[275];
    *buf = 136446978;
    v69 = "nw_necp_buffer_get_tlv_value";
    v70 = 2048;
    *v71 = v13;
    *&v71[8] = 2048;
    *&v71[10] = a2;
    *&v71[18] = 1024;
    *&v71[20] = v18;
    LODWORD(v64) = 38;
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v64);

    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (__nwlog_fault(v21, &type, &v66))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = v14[275];
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446978;
          v69 = "nw_necp_buffer_get_tlv_value";
          v70 = 2048;
          *v71 = v13;
          *&v71[8] = 2048;
          *&v71[10] = a2;
          *&v71[18] = 1024;
          *&v71[20] = v18;
          v24 = v22;
          v25 = v23;
          v26 = "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u";
LABEL_36:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x26u);
        }
      }

      else
      {
        if (v66 == 1)
        {
          v28 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = v14[275];
          v30 = type;
          v31 = os_log_type_enabled(v29, type);
          if (v28)
          {
            if (v31)
            {
              *buf = 136447234;
              v69 = "nw_necp_buffer_get_tlv_value";
              v70 = 2048;
              *v71 = v13;
              *&v71[8] = 2048;
              *&v71[10] = a2;
              *&v71[18] = 1024;
              *&v71[20] = v18;
              v72 = 2082;
              v73 = v28;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v28);
            v5 = v65;
          }

          else
          {
            if (v31)
            {
              *buf = 136446978;
              v69 = "nw_necp_buffer_get_tlv_value";
              v70 = 2048;
              *v71 = v13;
              *&v71[8] = 2048;
              *&v71[10] = a2;
              *&v71[18] = 1024;
              *&v71[20] = v18;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
            }

            v5 = v65;
          }

          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = v14[275];
        v32 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446978;
          v69 = "nw_necp_buffer_get_tlv_value";
          v70 = 2048;
          *v71 = v13;
          *&v71[8] = 2048;
          *&v71[10] = a2;
          *&v71[18] = 1024;
          *&v71[20] = v18;
          v24 = v22;
          v25 = v32;
          v26 = "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded";
          goto LABEL_36;
        }
      }

LABEL_38:
      v14 = &qword_1ED411000;
    }

    if (v21)
    {
      free(v21);
    }

    v27 = 0;
    v6 = a2 - 5;
LABEL_42:
    v13 += v18 + 5;
    if (v13 > a2)
    {
      break;
    }

    if (v18)
    {
      v33 = v27 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      if (v17 == 2)
      {
        if (v18 >= 0x11)
        {
          v52 = __nwlog_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v69 = "nw_quic_migration_info_create_from_data";
            v70 = 1024;
            *v71 = v18;
            v51 = "%{public}s received invalid size for interface name (%u)";
            goto LABEL_102;
          }

LABEL_103:

          goto LABEL_74;
        }

        v34 = _nw_interface_create_with_name(v27);
        interface = v5->interface;
        v5->interface = v34;
      }

      else if (v17 == 1)
      {
        if (v18 != 16 && v18 != 28)
        {
          v52 = __nwlog_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v69 = "nw_quic_migration_info_create_from_data";
            v70 = 1024;
            *v71 = v18;
            v51 = "%{public}s received invalid size for remote endpoint (%u)";
LABEL_102:
            _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, v51, buf, 0x12u);
          }

          goto LABEL_103;
        }

        address = _nw_endpoint_create_address(v27);
        interface = v5->remote_endpoint;
        v5->remote_endpoint = address;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        interface = v14[275];
        if (os_log_type_enabled(interface, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v69 = "nw_quic_migration_info_create_from_data";
          v70 = 1024;
          *v71 = v17;
          _os_log_impl(&dword_181A37000, interface, OS_LOG_TYPE_ERROR, "%{public}s received unknown TLV (type %d)", buf, 0x12u);
        }
      }
    }

    if (v13 >= v6)
    {
      goto LABEL_59;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = v14[275];
  *buf = 136446978;
  v69 = "nw_quic_migration_info_create_from_data";
  v70 = 1024;
  *v71 = v18;
  *&v71[4] = 2048;
  *&v71[6] = v13;
  *&v71[14] = 2048;
  *&v71[16] = a2;
  LODWORD(v64) = 38;
  v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, v64);

  type = OS_LOG_TYPE_ERROR;
  v66 = 0;
  if (!__nwlog_fault(v44, &type, &v66))
  {
    goto LABEL_98;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v66 == 1)
    {
      v48 = v14;
      v49 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = v48[275];
      v46 = type;
      v50 = os_log_type_enabled(v45, type);
      if (v49)
      {
        if (v50)
        {
          *buf = 136447234;
          v69 = "nw_quic_migration_info_create_from_data";
          v70 = 1024;
          *v71 = v18;
          *&v71[4] = 2048;
          *&v71[6] = v13;
          *&v71[14] = 2048;
          *&v71[16] = a2;
          v72 = 2082;
          v73 = v49;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v49);
        goto LABEL_98;
      }

      if (!v50)
      {
        goto LABEL_97;
      }

      *buf = 136446978;
      v69 = "nw_quic_migration_info_create_from_data";
      v70 = 1024;
      *v71 = v18;
      *&v71[4] = 2048;
      *&v71[6] = v13;
      *&v71[14] = 2048;
      *&v71[16] = a2;
      v47 = "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = v14[275];
      v46 = type;
      if (!os_log_type_enabled(v45, type))
      {
        goto LABEL_97;
      }

      *buf = 136446978;
      v69 = "nw_quic_migration_info_create_from_data";
      v70 = 1024;
      *v71 = v18;
      *&v71[4] = 2048;
      *&v71[6] = v13;
      *&v71[14] = 2048;
      *&v71[16] = a2;
      v47 = "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded";
    }

LABEL_96:
    _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0x26u);
    goto LABEL_97;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v45 = v14[275];
  v46 = type;
  if (os_log_type_enabled(v45, type))
  {
    *buf = 136446978;
    v69 = "nw_quic_migration_info_create_from_data";
    v70 = 1024;
    *v71 = v18;
    *&v71[4] = 2048;
    *&v71[6] = v13;
    *&v71[14] = 2048;
    *&v71[16] = a2;
    v47 = "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)";
    goto LABEL_96;
  }

LABEL_97:

LABEL_98:
  if (!v44)
  {
    goto LABEL_74;
  }

  v41 = v44;
LABEL_73:
  free(v41);
LABEL_74:
  v35 = 0;
LABEL_75:

LABEL_76:

  return v35;
}