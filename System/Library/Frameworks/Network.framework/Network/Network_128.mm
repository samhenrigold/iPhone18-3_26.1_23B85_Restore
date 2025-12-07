uint64_t __nw_browse_result_get_changes_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_browse_result_copy_interfaces(*(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_browse_result_get_changes_block_invoke_2;
  aBlock[3] = &unk_1E6A3CCB8;
  v6 = v4;
  v7 = v6;
  v12 = v6;
  if (v5)
  {
    v8 = _nw_array_apply(v5, aBlock) ^ 1;
    v9 = v12;
  }

  else
  {
    v8 = 0;
    v9 = v6;
  }

  return v8;
}

void nw_browse_result_enumerate_interfaces(nw_browse_result_t result, nw_browse_result_enumerate_interface_t enumerator)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = result;
  v4 = enumerator;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_browse_result_enumerate_interfaces";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null result", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &type, &v26))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_browse_result_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null result", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v29 = "nw_browse_result_enumerate_interfaces";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v11)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v11);
        goto LABEL_6;
      }

      if (v18)
      {
        *buf = 136446210;
        v29 = "nw_browse_result_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_browse_result_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    isa = v3[2].isa;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_browse_result_enumerate_interfaces_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v25 = v7;
    v8 = isa;
    v9 = v8;
    if (v8)
    {
      _nw_array_apply(v8, aBlock);
      v7 = v25;
    }

    goto LABEL_6;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_browse_result_enumerate_interfaces";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null enumerator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v11, &type, &v26))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v29 = "nw_browse_result_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v26 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v29 = "nw_browse_result_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v12, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v29 = "nw_browse_result_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v21)
  {
    *buf = 136446466;
    v29 = "nw_browse_result_enumerate_interfaces";
    v30 = 2082;
    v31 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_browse_result_mark_immutable(uint64_t result)
{
  if (result)
  {
    *(result + 52) |= 1u;
  }

  return result;
}

void nw_browse_result_set_discovered_from_path(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v3[52] = v3[52] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_browse_result_set_discovered_from_path";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null result", buf, 12);

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
        v16 = "nw_browse_result_set_discovered_from_path";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null result", buf, 0xCu);
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
          v16 = "nw_browse_result_set_discovered_from_path";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_browse_result_set_discovered_from_path";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_browse_result_set_discovered_from_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

uint64_t nw_browse_result_get_discovered_from_path(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[52] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_browse_result_get_discovered_from_path";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null result", buf, 12);

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
        v15 = "nw_browse_result_get_discovered_from_path";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null result", buf, 0xCu);
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
          v15 = "nw_browse_result_get_discovered_from_path";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_browse_result_get_discovered_from_path";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_browse_result_get_discovered_from_path";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

void nw_tcp_deallocate_globals(uint64_t a1, void *a2)
{
  nw_tcp_destroy_globals();
  if (a2)
  {

    free(a2);
  }
}

uint32_t nw_tcp_get_available_receive_buffer(nw_protocol_metadata_t metadata)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (nw_protocol_metadata_is_tcp(v1))
  {
    available_receive_buffer = _nw_tcp_get_available_receive_buffer(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_tcp_get_available_receive_buffer";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v14 = "nw_tcp_get_available_receive_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
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
            v14 = "nw_tcp_get_available_receive_buffer";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_tcp_get_available_receive_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_tcp_get_available_receive_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
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

  available_receive_buffer = 0;
LABEL_3:

  return available_receive_buffer;
}

uint32_t nw_tcp_get_available_send_buffer(nw_protocol_metadata_t metadata)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (nw_protocol_metadata_is_tcp(v1))
  {
    available_send_buffer = _nw_tcp_get_available_send_buffer(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_tcp_get_available_send_buffer";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v14 = "nw_tcp_get_available_send_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
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
            v14 = "nw_tcp_get_available_send_buffer";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_tcp_get_available_send_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_tcp_get_available_send_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
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

  available_send_buffer = 0;
LABEL_3:

  return available_send_buffer;
}

uint64_t nw_tcp_reset_keepalives(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_tcp(v1))
  {
    v2 = _nw_tcp_reset_keepalives();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_tcp_reset_keepalives";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v14 = "nw_tcp_reset_keepalives";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
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
            v14 = "nw_tcp_reset_keepalives";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_tcp_reset_keepalives";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_tcp_reset_keepalives";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
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

  v2 = 22;
LABEL_3:

  return v2;
}

uint64_t nw_tcp_set_no_delay(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_tcp(v3))
  {
    v4 = _nw_tcp_set_no_delay(v3, a2);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_tcp_set_no_delay";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v16 = "nw_tcp_set_no_delay";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
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
            v16 = "nw_tcp_set_no_delay";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_tcp_set_no_delay";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_no_delay";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
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

  v4 = 22;
LABEL_3:

  return v4;
}

uint64_t nw_tcp_set_no_push(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_tcp(v3))
  {
    v4 = _nw_tcp_set_no_push(v3, a2);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_tcp_set_no_push";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v16 = "nw_tcp_set_no_push";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
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
            v16 = "nw_tcp_set_no_push";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_tcp_set_no_push";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_no_push";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
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

  v4 = 22;
LABEL_3:

  return v4;
}

uint64_t nw_tcp_set_no_wake_from_sleep(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  is_tcp = nw_protocol_metadata_is_tcp(v3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v6 = v5;
  if (is_tcp)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v18 = "nw_tcp_set_no_wake_from_sleep";
      v19 = 1024;
      LODWORD(v20) = a2;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s nw_tcp_set_no_wake_from_sleep do_not_wake %d", buf, 0x12u);
    }

    v7 = _nw_tcp_set_no_wake_from_sleep(v3, a2);
    goto LABEL_5;
  }

  *buf = 136446210;
  v18 = "nw_tcp_set_no_wake_from_sleep";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v18 = "nw_tcp_set_no_wake_from_sleep";
        v12 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
LABEL_19:
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
            v18 = "nw_tcp_set_no_wake_from_sleep";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v14)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "nw_tcp_set_no_wake_from_sleep";
        v12 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_19;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_tcp_set_no_wake_from_sleep";
        v12 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v9)
  {
    free(v9);
  }

  v7 = 22;
LABEL_5:

  return v7;
}

uint64_t nw_tcp_set_max_pacing_rate(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_tcp(v1))
  {
    v2 = _nw_tcp_set_max_pacing_rate();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_tcp_set_max_pacing_rate";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)", buf, 12);

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
        v14 = "nw_tcp_set_max_pacing_rate";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
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
            v14 = "nw_tcp_set_max_pacing_rate";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_tcp_set_max_pacing_rate";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_tcp_set_max_pacing_rate";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
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

  v2 = 22;
LABEL_3:

  return v2;
}

NWConcrete_nw_ws_ping_request *nw_ws_ping_request_create(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  if (v6)
  {
    v9 = [NWConcrete_nw_ws_ping_request alloc];
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!v9)
    {
LABEL_5:

      goto LABEL_6;
    }

    v35.receiver = v9;
    v35.super_class = NWConcrete_nw_ws_ping_request;
    v13 = objc_msgSendSuper2(&v35, sel_init);
    v9 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a1);
      objc_storeStrong(&v9->client_queue, a2);
      v14 = _Block_copy(v12);
      pong_handler = v9->pong_handler;
      v9->pong_handler = v14;

      goto LABEL_5;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s [super init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v22, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v30)
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
          _os_log_impl(&dword_181A37000, v23, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v22)
    {
      free(v22);
    }

    v9 = 0;
    goto LABEL_5;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_ws_ping_request_create";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null contents", buf, 12);

  LOBYTE(v35.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v18, &v35, &type))
  {
    if (LOBYTE(v35.receiver) == 17)
    {
      v19 = __nwlog_obj();
      receiver = v35.receiver;
      if (os_log_type_enabled(v19, v35.receiver))
      {
        *buf = 136446210;
        v37 = "nw_ws_ping_request_create";
        _os_log_impl(&dword_181A37000, v19, receiver, "%{public}s called with null contents", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v25 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v26 = v35.receiver;
      v27 = os_log_type_enabled(v19, v35.receiver);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v37 = "nw_ws_ping_request_create";
          v38 = 2082;
          v39 = v25;
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null contents, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_36;
      }

      if (v27)
      {
        *buf = 136446210;
        v37 = "nw_ws_ping_request_create";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null contents, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v31 = v35.receiver;
      if (os_log_type_enabled(v19, v35.receiver))
      {
        *buf = 136446210;
        v37 = "nw_ws_ping_request_create";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null contents, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v18)
  {
    free(v18);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

id nw_ws_ping_request_copy_client_queue(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_ws_ping_request_copy_client_queue";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null ping_request", buf, 12);

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
        v16 = "nw_ws_ping_request_copy_client_queue";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ping_request", buf, 0xCu);
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
          v16 = "nw_ws_ping_request_copy_client_queue";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_client_queue";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_client_queue";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null ping_request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

void *nw_ws_ping_request_copy_pong_handler(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _Block_copy(v1[3]);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_ws_ping_request_copy_pong_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null ping_request", buf, 12);

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
        v16 = "nw_ws_ping_request_copy_pong_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ping_request", buf, 0xCu);
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
          v16 = "nw_ws_ping_request_copy_pong_handler";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_pong_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_pong_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null ping_request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

uint64_t nw_shoes_metadata_copy_remote_endpoint(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
    }

    if (nw_protocol_metadata_matches_definition(a1, nw_protocol_shoes_get_definition(void)::proxy_definition))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v22 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v16 = __nw_shoes_metadata_copy_remote_endpoint_block_invoke;
      v17 = &unk_1E6A2B298;
      v18 = buf;
      handle = _nw_protocol_metadata_get_handle();
      if (handle)
      {
        v16(v15, handle);
      }

      v3 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v3;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s metadata must be shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v9 = "%{public}s metadata must be shoes";
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
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v9 = "%{public}s metadata must be shoes, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v9 = "%{public}s metadata must be shoes, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14)
    {
      *buf = 136446466;
      *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v13 = "%{public}s metadata must be shoes, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v19 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v12)
    {
      *buf = 136446466;
      *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v13 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
    v9 = "%{public}s called with null metadata";
LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_36:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t __nw_shoes_metadata_copy_remote_endpoint_block_invoke(uint64_t a1, void **a2)
{
  if (*a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = os_retain(*a2);
  }

  return 1;
}

uint64_t ___ZL32nw_protocol_shoes_get_definitionv_block_invoke()
{
  if (nw_protocol_shoes_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_identifier::onceToken, &__block_literal_global_672);
  }

  nw_protocol_shoes_get_definition(void)::proxy_definition = nw_protocol_definition_create_with_identifier(&g_shoes_protocol_identifier);
  nw_protocol_definition_set_metadata_allocator(nw_protocol_shoes_get_definition(void)::proxy_definition, nw_shoes_allocate_metadata, nw_shoes_deallocate_metadata);
  nw_protocol_definition_set_metadata_comparator(nw_protocol_shoes_get_definition(void)::proxy_definition, nw_shoes_compare_metadata);
  nw_protocol_definition_set_is_proxy(nw_protocol_shoes_get_definition(void)::proxy_definition);
  v0 = nw_protocol_shoes_get_definition(void)::proxy_definition;

  return nw_protocol_register_handle(&g_shoes_protocol_identifier, v0, nw_protocol_shoes_create, 0);
}

void *nw_protocol_shoes_create(const nw_protocol_identifier *a1, nw_object *a2, nw_endpoint *a3, nw_parameters *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = malloc_type_calloc(1uLL, 0xF8uLL, 0xF22E54EDuLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v11 = 136446722;
    v12 = "nw_protocol_shoes_create";
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 2048;
    v14 = 1;
    v15 = 2048;
    v16 = 248;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v11, 32);
    result = __nwlog_should_abort(v8);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v8);
  }

  v5[2] = &g_shoes_protocol_identifier;
  v5[3] = &g_shoes_protocol_callbacks;
  v5[5] = v5;
  if (a3)
  {
    v10 = os_retain(a3);
  }

  else
  {
    v10 = 0;
  }

  v5[14] = v10;
  return v5;
}

uint64_t nw_shoes_compare_metadata(uint64_t a1, void **a2, void **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_shoes_compare_metadata";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null handle1", buf, 12);
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
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_shoes_compare_metadata";
      v10 = "%{public}s called with null handle1";
      goto LABEL_33;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_shoes_compare_metadata";
      v10 = "%{public}s called with null handle1, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_shoes_compare_metadata";
      v10 = "%{public}s called with null handle1, no backtrace";
      goto LABEL_33;
    }

    if (v13)
    {
      *buf = 136446466;
      v19 = "nw_shoes_compare_metadata";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handle1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v7)
    {
      return 0;
    }

LABEL_35:
    free(v7);
    return 0;
  }

  if (!a3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_shoes_compare_metadata";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null handle2", buf, 12);
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
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_shoes_compare_metadata";
      v10 = "%{public}s called with null handle2";
      goto LABEL_33;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v19 = "nw_shoes_compare_metadata";
      v10 = "%{public}s called with null handle2, backtrace limit exceeded";
      goto LABEL_33;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (v14)
    {
      if (v15)
      {
        *buf = 136446466;
        v19 = "nw_shoes_compare_metadata";
        v20 = 2082;
        v21 = v14;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handle2, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v14);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_shoes_compare_metadata";
      v10 = "%{public}s called with null handle2, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v3 = *a2;
  v4 = *a3;

  return nw_endpoint_is_equal(v3, v4, 31);
}

void nw_shoes_deallocate_metadata(nw_protocol_definition *a1, void **a2)
{
  if (*a2)
  {
    os_release(*a2);
    *a2 = 0;
  }

  v3 = a2[1];
  if (v3)
  {
    os_release(v3);
  }

  free(a2);
}

void *nw_shoes_allocate_metadata(nw_protocol_definition *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0x10uLL, 0xF758114BuLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v6 = 136446722;
    v7 = "nw_shoes_allocate_metadata";
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v8 = 2048;
    v9 = 1;
    v10 = 2048;
    v11 = 16;
    v5 = 32;
    v4 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v6, v5);
    result = __nwlog_should_abort(v4);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return result;
}

double __nw_protocol_shoes_identifier_block_invoke()
{
  word_1EA841596 = 0;
  unk_1EA84158E = 0;
  unk_1EA84157E = 0u;
  strcpy(&g_shoes_protocol_identifier, "shoes");
  *&result = 0x100000005;
  qword_1EA841598 = 0x100000005;
  qword_1EA8415B0 = nw_protocol_default_replace_input_handler;
  qword_1EA8415E8 = nw_protocol_default_output_available;
  qword_1EA841658 = nw_protocol_default_input_finished;
  qword_1EA841660 = nw_protocol_default_output_finished;
  qword_1EA8416A8 = nw_protocol_default_input_flush;
  qword_1EA841698 = nw_protocol_default_get_message_properties;
  qword_1EA841608 = nw_protocol_default_link_state;
  qword_1EA841648 = nw_protocol_default_updated_path;
  qword_1EA841668 = nw_protocol_default_get_output_local;
  qword_1EA841670 = nw_protocol_default_get_output_interface;
  qword_1EA8415C0 = nw_protocol_default_disconnect;
  qword_1EA8415D0 = nw_protocol_default_disconnected;
  qword_1EA8416A0 = nw_protocol_default_reset;
  qword_1EA841650 = nw_protocol_default_supports_external_data;
  qword_1EA841630 = nw_protocol_default_register_notification;
  qword_1EA841638 = nw_protocol_default_unregister_notification;
  qword_1EA841640 = nw_protocol_default_notify;
  qword_1EA841688 = nw_protocol_default_add_listen_handler;
  qword_1EA841690 = nw_protocol_default_remove_listen_handler;
  g_shoes_protocol_callbacks = nw_protocol_shoes_add_input_handler;
  qword_1EA8415A8 = nw_protocol_shoes_remove_input_handler;
  qword_1EA8415E0 = nw_protocol_shoes_input_available;
  qword_1EA8415F0 = nw_protocol_shoes_get_input_frames;
  qword_1EA8415F8 = nw_protocol_shoes_get_output_frames;
  qword_1EA841600 = nw_protocol_shoes_finalize_output_frames;
  qword_1EA841678 = nw_protocol_shoes_waiting_for_output;
  qword_1EA8415B8 = nw_protocol_shoes_connect;
  qword_1EA8415C8 = nw_protocol_shoes_connected;
  qword_1EA8415D8 = nw_protocol_shoes_error;
  qword_1EA841610 = nw_protocol_shoes_get_parameters;
  qword_1EA841618 = nw_protocol_shoes_get_path;
  qword_1EA841680 = nw_protocol_shoes_copy_info;
  qword_1EA841628 = nw_protocol_shoes_get_remote_endpoint;
  qword_1EA841620 = nw_protocol_shoes_get_local_endpoint;
  return result;
}

void *nw_protocol_shoes_get_local_endpoint(nw_protocol *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_shoes_get_local_endpoint";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_shoes_get_local_endpoint";
        v13 = "%{public}s called with null protocol";
LABEL_46:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }

LABEL_47:
      if (v10)
      {
        free(v10);
      }

      return 0;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_shoes_get_local_endpoint";
        v13 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_protocol_shoes_get_local_endpoint";
        v13 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v16)
    {
      *buf = 136446466;
      v22 = "nw_protocol_shoes_get_local_endpoint";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_36:
      _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
    }

LABEL_37:
    free(backtrace_string);
    goto LABEL_47;
  }

  v1 = a1;
  handle = a1->handle;
  if (!handle)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_shoes_get_local_endpoint";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_shoes_get_local_endpoint";
        v13 = "%{public}s called with null shoes";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_shoes_get_local_endpoint";
        v13 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v18 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v22 = "nw_protocol_shoes_get_local_endpoint";
        v13 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v18)
    {
      *buf = 136446466;
      v22 = "nw_protocol_shoes_get_local_endpoint";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v3 = handle[243];
  if ((v3 & 0x20) == 0)
  {
    handle[243] = v3 | 0x20;
    if (*(handle + 9))
    {
      output_handler = a1->output_handler;
      if (!output_handler || (get_output_local_endpoint = output_handler->callbacks->get_output_local_endpoint) == 0 || (v6 = v1, result = get_output_local_endpoint(), v1 = v6, !result))
      {
        result = v1->default_input_handler->flow_id;
        if (result)
        {
          v8 = *(result[3] + 128);
          if (v8)
          {
            result = v8();
          }

          else
          {
            result = 0;
          }
        }
      }

      goto LABEL_15;
    }
  }

  result = a1->default_input_handler->flow_id;
  if (!result)
  {
LABEL_14:
    if ((v3 & 0x20) != 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(result[3] + 128))
  {
    result = nw_protocol_get_local_endpoint(result);
    goto LABEL_14;
  }

  result = 0;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    handle[243] &= ~0x20u;
  }

  return result;
}

uint64_t nw_protocol_shoes_get_remote_endpoint(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[14];
    }

    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_shoes_get_remote_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null shoes", buf, 12);
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
        v16 = "nw_protocol_shoes_get_remote_endpoint";
        v7 = "%{public}s called with null shoes";
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
        v16 = "nw_protocol_shoes_get_remote_endpoint";
        v7 = "%{public}s called with null shoes, backtrace limit exceeded";
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
        v16 = "nw_protocol_shoes_get_remote_endpoint";
        v7 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "nw_protocol_shoes_get_remote_endpoint";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_shoes_get_remote_endpoint";
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
        v16 = "nw_protocol_shoes_get_remote_endpoint";
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
        v16 = "nw_protocol_shoes_get_remote_endpoint";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_shoes_get_remote_endpoint";
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
    v16 = "nw_protocol_shoes_get_remote_endpoint";
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

void *nw_protocol_shoes_copy_info(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      result = *(a1 + 32);
      if (result)
      {
        v5 = result[3];
        if (!v5 || !*(v5 + 224))
        {
          result = 0;
          if (a2 != 255)
          {
            return result;
          }

          goto LABEL_8;
        }

        result = nw_protocol_copy_info(result);
      }

      if (a2 != 255)
      {
        return result;
      }

LABEL_8:
      v6 = *(v2 + 96);
      if (v6)
      {
        if (result || (result = _nw_array_create(), (v6 = *(v2 + 96)) != 0) && result)
        {
          v7 = result;
          _nw_array_append(result, v6);
          return v7;
        }
      }

      return result;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_shoes_copy_info";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_copy_info";
        v12 = "%{public}s called with null shoes";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v18 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_copy_info";
        v12 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v17 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_copy_info";
        v12 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v17)
    {
      *buf = 136446466;
      v21 = "nw_protocol_shoes_copy_info";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_shoes_copy_info";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_44;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_copy_info";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_copy_info";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v15)
    {
      *buf = 136446466;
      v21 = "nw_protocol_shoes_copy_info";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_33:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
    }

LABEL_34:
    free(backtrace_string);
    goto LABEL_44;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v21 = "nw_protocol_shoes_copy_info";
    v12 = "%{public}s called with null protocol";
LABEL_43:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
  }

LABEL_44:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

void *nw_protocol_shoes_get_path(nw_protocol *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_shoes_get_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v9, &type, &v20))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v23 = "nw_protocol_shoes_get_path";
      v12 = "%{public}s called with null protocol";
LABEL_51:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      goto LABEL_52;
    }

    if (v20 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_shoes_get_path";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v23 = "nw_protocol_shoes_get_path";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v16)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v23 = "nw_protocol_shoes_get_path";
    v24 = 2082;
    v25 = backtrace_string;
    v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v10, v11, v17, buf, 0x16u);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (!handle)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_shoes_get_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v9, &type, &v20))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v23 = "nw_protocol_shoes_get_path";
      v12 = "%{public}s called with null shoes";
      goto LABEL_51;
    }

    if (v20 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_shoes_get_path";
        v12 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_protocol_shoes_get_path";
        v12 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v18)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v23 = "nw_protocol_shoes_get_path";
    v24 = 2082;
    v25 = backtrace_string;
    v17 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    v3 = (default_input_handler->callbacks->get_path)();
    v4 = nw_path_copy_parameters(v3);
    v5 = v4;
    if (handle[243])
    {
      if ((nw_parameters_get_tfo(v4) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v23 = "nw_protocol_shoes_get_path";
          v24 = 2082;
          v25 = handle + 159;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s SHOES enabling TFO on path parameters since we are using TLS", buf, 0x16u);
        }

        nw_parameters_set_tfo(v5, 1);
      }

      nw_parameters_set_fast_open_force_enable(v5, 1);
    }

    if (v5)
    {
      os_release(v5);
    }

    return v3;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_shoes_get_path";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null protocol->default_input_handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v9, &type, &v20))
  {
    goto LABEL_52;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v20 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_shoes_get_path";
        v12 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
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
        v23 = "nw_protocol_shoes_get_path";
        v12 = "%{public}s called with null protocol->default_input_handler, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_protocol_shoes_get_path";
      v24 = 2082;
      v25 = backtrace_string;
      v17 = "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

LABEL_38:
    free(backtrace_string);
    goto LABEL_52;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v23 = "nw_protocol_shoes_get_path";
    v12 = "%{public}s called with null protocol->default_input_handler";
    goto LABEL_51;
  }

LABEL_52:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

char *nw_protocol_shoes_get_parameters(nw_protocol *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_shoes_get_parameters";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v21 = "nw_protocol_shoes_get_parameters";
      v10 = "%{public}s called with null protocol";
LABEL_51:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_52;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_get_parameters";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_get_parameters";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v14)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v21 = "nw_protocol_shoes_get_parameters";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v15, buf, 0x16u);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (!handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_shoes_get_parameters";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v21 = "nw_protocol_shoes_get_parameters";
      v10 = "%{public}s called with null shoes";
      goto LABEL_51;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_get_parameters";
        v10 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v16 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_get_parameters";
        v10 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v16)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v21 = "nw_protocol_shoes_get_parameters";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    result = *(handle + 9);
    if (!result)
    {
      result = *(handle + 10);
      if (!result)
      {
        result = (default_input_handler->callbacks->get_parameters)(default_input_handler);
        if (handle[243])
        {
          v4 = result;
          *(handle + 10) = _nw_parameters_shallow_copy(result, 0);
          if ((nw_parameters_get_tfo(v4) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v5 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v21 = "nw_protocol_shoes_get_parameters";
              v22 = 2082;
              v23 = handle + 159;
              _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s SHOES enabling TFO on parameters since we are using TLS", buf, 0x16u);
            }

            nw_parameters_set_tfo(*(handle + 10), 1);
          }

          nw_parameters_set_fast_open_force_enable(*(handle + 10), 1);
          return *(handle + 10);
        }
      }
    }

    return result;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_shoes_get_parameters";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol->default_input_handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v7, &type, &v18))
  {
    goto LABEL_52;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_get_parameters";
        v10 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v17 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v21 = "nw_protocol_shoes_get_parameters";
        v10 = "%{public}s called with null protocol->default_input_handler, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v17)
    {
      *buf = 136446466;
      v21 = "nw_protocol_shoes_get_parameters";
      v22 = 2082;
      v23 = backtrace_string;
      v15 = "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

LABEL_38:
    free(backtrace_string);
    goto LABEL_52;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v21 = "nw_protocol_shoes_get_parameters";
    v10 = "%{public}s called with null protocol->default_input_handler";
    goto LABEL_51;
  }

LABEL_52:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_protocol_shoes_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_shoes_error";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_error";
      v15 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_protocol_shoes_error";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v12)
        {
          return;
        }

LABEL_41:
        free(v12);
        return;
      }

      if (!v18)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_error";
      v15 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_error";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (handle)
  {
    v6 = handle[243];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    if ((v6 & 0x10) != 0)
    {
      if (v8)
      {
        *buf = 136446722;
        v24 = "nw_protocol_shoes_error";
        v25 = 2082;
        v26 = handle + 159;
        v27 = 1024;
        v28 = a3;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s not sending error %d", buf, 0x1Cu);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 136446722;
        v24 = "nw_protocol_shoes_error";
        v25 = 2082;
        v26 = handle + 159;
        v27 = 1024;
        v28 = a3;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s sending error %d", buf, 0x1Cu);
      }

      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        error = default_input_handler->callbacks->error;
        if (error)
        {
          error();
        }
      }
    }

    return;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_shoes_error";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null shoes", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v12, &type, &v21))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v24 = "nw_protocol_shoes_error";
    v15 = "%{public}s called with null shoes";
    goto LABEL_39;
  }

  if (v21 != 1)
  {
    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v24 = "nw_protocol_shoes_error";
    v15 = "%{public}s called with null shoes, backtrace limit exceeded";
    goto LABEL_39;
  }

  v19 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v14 = type;
  v20 = os_log_type_enabled(v13, type);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v24 = "nw_protocol_shoes_error";
    v15 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_39;
  }

  if (v20)
  {
    *buf = 136446466;
    v24 = "nw_protocol_shoes_error";
    v25 = 2082;
    v26 = v19;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_41;
  }
}

void nw_protocol_shoes_connected(nw_protocol *a1, nw_protocol *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_protocol_shoes_connected";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null protocol", buf, 12);
    LOBYTE(v112) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v59, &v112, &type))
    {
      goto LABEL_104;
    }

    if (v112 == 17)
    {
      v60 = __nwlog_obj();
      v61 = v112;
      if (!os_log_type_enabled(v60, v112))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v101 = "nw_protocol_shoes_connected";
      v62 = "%{public}s called with null protocol";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v61 = v112;
      v65 = os_log_type_enabled(v60, v112);
      if (backtrace_string)
      {
        if (v65)
        {
          *buf = 136446466;
          v101 = "nw_protocol_shoes_connected";
          v102 = 2082;
          v103 = backtrace_string;
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_104:
        if (!v59)
        {
          return;
        }

LABEL_105:
        free(v59);
        return;
      }

      if (!v65)
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v101 = "nw_protocol_shoes_connected";
      v62 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v60 = __nwlog_obj();
      v61 = v112;
      if (!os_log_type_enabled(v60, v112))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v101 = "nw_protocol_shoes_connected";
      v62 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_103:
    _os_log_impl(&dword_181A37000, v60, v61, v62, buf, 0xCu);
    goto LABEL_104;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[243] & 0xE) == 6 && handle[158] == 3)
    {
      if (*(handle + 8) != a2)
      {
        return;
      }

      output_handler = a1->output_handler;
      if (!output_handler)
      {
        return;
      }

      callbacks = output_handler->callbacks;
      if (!callbacks)
      {
        return;
      }

      get_output_local_endpoint = callbacks->get_output_local_endpoint;
      if (!get_output_local_endpoint)
      {
        return;
      }

      v8 = get_output_local_endpoint();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (v8)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v101 = "nw_protocol_shoes_connected";
          v102 = 2082;
          v103 = handle + 159;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s udp-associate tcp connected", buf, 0x16u);
        }

        v10 = v8;
        port = _nw_endpoint_get_port(v10);

        *(handle + 76) = port;
        v12 = a1->output_handler;
        nw_protocol_set_output_handler(a1, *(handle + 8));
        nw_protocol_set_output_handler(handle, *(handle + 8));
        *(handle + 8) = v12;
        nw_protocol_shoes_send_request_inner(a1);
        return;
      }

      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v101 = "nw_protocol_shoes_connected";
        v102 = 2082;
        v103 = handle + 159;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s udp-associate no local endpoint for udp", buf, 0x16u);
      }

      nw_protocol_shoes_error(handle, handle, 57);
      handle[243] |= 0x10u;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v31 = gLogObj;
      goto LABEL_72;
    }

    v13 = a1->output_handler;
    if (v13)
    {
      v14 = v13->callbacks;
      if (v14)
      {
        if (v14->get_output_local_endpoint)
        {
          v15 = (v14->get_remote_endpoint)();
          if (v15)
          {
            v16 = v15;
            v17 = _nw_endpoint_get_type(v16);

            if (v17 == 1 && nw_endpoint_get_type(*(handle + 14)) != nw_endpoint_type_address)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v18 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
              {
                v19 = *(handle + 14);
                *buf = 136446978;
                v101 = "nw_protocol_shoes_connected";
                v102 = 2082;
                v103 = handle + 159;
                v104 = 2112;
                v105 = v19;
                v106 = 2112;
                v107 = v16;
                _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Updating peer endpoint from %@ to %@", buf, 0x2Au);
              }

              v20 = *(handle + 14);
              *(handle + 14) = os_retain(v16);
              if (v20)
              {
                os_release(v20);
              }
            }
          }
        }
      }
    }

    (a1->default_input_handler->callbacks->connected)();
    v21 = a1->output_handler;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (v21 != a2)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        identifier = a2->identifier;
        v24 = a1->output_handler;
        v25 = a1->identifier;
        *buf = 136447490;
        v101 = "nw_protocol_shoes_connected";
        v102 = 2082;
        v103 = handle + 159;
        v104 = 2048;
        v105 = a2;
        v106 = 2080;
        v107 = identifier;
        v108 = 2048;
        v109 = v24;
        v110 = 2080;
        v111 = v25;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connected protocol %p (%s) is not our output_handler %p (%s), ignoring", buf, 0x3Eu);
      }

      return;
    }

    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1->output_handler;
      if (!v26 || (v27 = v26->callbacks->get_output_local_endpoint) == 0 || (default_input_handler = v27()) == 0)
      {
        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          get_local_endpoint = default_input_handler->callbacks->get_local_endpoint;
          if (get_local_endpoint)
          {
            default_input_handler = get_local_endpoint();
          }

          else
          {
            default_input_handler = 0;
          }
        }
      }

      v32 = "with";
      v101 = "nw_protocol_shoes_connected";
      v33 = handle[243];
      *buf = 136446978;
      v102 = 2082;
      if ((v33 & 1) == 0)
      {
        v32 = "no";
      }

      v103 = handle + 159;
      v104 = 2114;
      v105 = default_input_handler;
      v106 = 2082;
      v107 = v32;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s local address %{public}@ %{public}s TFO", buf, 0x2Au);
    }

    v34 = handle[158];
    if (v34 != 6)
    {
      if (v34 != 1)
      {
        return;
      }

      *(handle + 36) = 0;
      v35 = handle[243];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      if ((v35 & 1) == 0)
      {
        if (v37)
        {
          *buf = 136446466;
          v101 = "nw_protocol_shoes_connected";
          v102 = 2082;
          v103 = handle + 159;
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s send request without TFO data from above", buf, 0x16u);
        }

        v38 = a1->handle;
        if (v38)
        {
          if ((~v38[243] & 6) == 0)
          {
            if (gLogDatapath == 1)
            {
              v84 = __nwlog_obj();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v101 = "nw_protocol_shoes_send_request";
                v102 = 2082;
                v103 = v38 + 159;
                _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s udp-associate creating output handler for udp", buf, 0x16u);
              }
            }

            v39 = (*(*(*(v38 + 6) + 24) + 112))();
            v40 = _nw_parameters_copy();
            v41 = nw_parameters_copy_default_protocol_stack(v40);
            options = _nw_tcp_create_options(v41, v42, v43, v44, v45, v46, v47);
            _nw_tcp_options_set_reset_local_port();
            nw_protocol_options_set_log_id(options, "C", v38 + 159, 101);
            nw_protocol_stack_set_transport_protocol(v41, options);
            if (v41)
            {
              os_release(v41);
            }

            if (options)
            {
              os_release(options);
            }

            v49 = nw_parameters_copy_context(v39);
            v50 = nw_path_copy_flow_registration(v49, v38);
            if (v49)
            {
              os_release(v49);
            }

            ip_protocol = nw_parameters_get_ip_protocol(v40);
            new_flow = nw_path_flow_registration_create_new_flow(v50, 1, 0, 0, 0, 0, 0, ip_protocol);
            *(v38 + 11) = new_flow;
            nw_path_flow_registration_set_specific_use_only(new_flow, 1);
            if (v50)
            {
              os_release(v50);
            }

            v112 = *v38;
            nw_path_flow_registration_get_id(*(v38 + 11), v38);
            v53 = nw_endpoint_copy_original_endpoint(*(v38 + 13), 1);
            if (nw_socket_protocol_identifier::onceToken[0] != -1)
            {
              dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
            }

            internal = nw_protocol_create_internal(&nw_socket_protocol_identifier::identifier, v53, v40, 1);
            if (v53)
            {
              os_release(v53);
            }

            *(v38 + 9) = v40;
            (**(internal + 24))(internal, a1);
            *(v38 + 8) = internal;
            v38[158] = 3;
            v55 = *(internal + 24);
            if (v55)
            {
              v56 = *(v55 + 24);
              if (v56)
              {
                v56(internal, a1);
LABEL_63:
                v57 = *(v38 + 9);
                if (v57)
                {
                  os_release(v57);
                  *(v38 + 9) = 0;
                }

                *v38 = v112;
                return;
              }
            }

            v73 = __nwlog_obj();
            v74 = *(v38 + 8);
            v75 = "invalid";
            if (v74)
            {
              v76 = *(v74 + 16);
              if (v76)
              {
                v75 = v76;
              }
            }

            *buf = 136446466;
            v101 = "nw_protocol_shoes_send_request";
            v102 = 2082;
            v103 = v75;
            v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s protocol %{public}s has invalid connect callback", buf, 22);
            type = OS_LOG_TYPE_ERROR;
            v98 = 0;
            if (__nwlog_fault(v77, &type, &v98))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v78 = __nwlog_obj();
                v79 = type;
                if (!os_log_type_enabled(v78, type))
                {
                  goto LABEL_153;
                }

                v80 = *(v38 + 8);
                v81 = "invalid";
                if (v80)
                {
                  v82 = *(v80 + 16);
                  if (v82)
                  {
                    v81 = v82;
                  }
                }

                *buf = 136446466;
                v101 = "nw_protocol_shoes_send_request";
                v102 = 2082;
                v103 = v81;
                v83 = "%{public}s protocol %{public}s has invalid connect callback";
                goto LABEL_152;
              }

              if (v98 != 1)
              {
                v78 = __nwlog_obj();
                v79 = type;
                if (!os_log_type_enabled(v78, type))
                {
                  goto LABEL_153;
                }

                v92 = *(v38 + 8);
                v93 = "invalid";
                if (v92)
                {
                  v94 = *(v92 + 16);
                  if (v94)
                  {
                    v93 = v94;
                  }
                }

                *buf = 136446466;
                v101 = "nw_protocol_shoes_send_request";
                v102 = 2082;
                v103 = v93;
                v83 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
                goto LABEL_152;
              }

              v87 = __nw_create_backtrace_string();
              v78 = __nwlog_obj();
              v79 = type;
              v88 = os_log_type_enabled(v78, type);
              if (v87)
              {
                if (v88)
                {
                  v89 = *(v38 + 8);
                  v90 = "invalid";
                  if (v89)
                  {
                    v91 = *(v89 + 16);
                    if (v91)
                    {
                      v90 = v91;
                    }
                  }

                  *buf = 136446722;
                  v101 = "nw_protocol_shoes_send_request";
                  v102 = 2082;
                  v103 = v90;
                  v104 = 2082;
                  v105 = v87;
                  _os_log_impl(&dword_181A37000, v78, v79, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v87);
                goto LABEL_153;
              }

              if (v88)
              {
                v95 = *(v38 + 8);
                v96 = "invalid";
                if (v95)
                {
                  v97 = *(v95 + 16);
                  if (v97)
                  {
                    v96 = v97;
                  }
                }

                *buf = 136446466;
                v101 = "nw_protocol_shoes_send_request";
                v102 = 2082;
                v103 = v96;
                v83 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
LABEL_152:
                _os_log_impl(&dword_181A37000, v78, v79, v83, buf, 0x16u);
              }
            }

LABEL_153:
            if (v77)
            {
              free(v77);
            }

            goto LABEL_63;
          }

          if (nw_protocol_shoes_send_request_inner(a1))
          {
            return;
          }

LABEL_71:
          v31 = __nwlog_obj();
          v30 = v31;
LABEL_72:
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v101 = "nw_shoes_internal_disconnect";
            v102 = 2082;
            v103 = handle + 159;
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
          }

          handle[158] = 7;
          (*(*(handle + 3) + 48))(handle, 0);
          return;
        }

        v68 = __nwlog_obj();
        *buf = 136446210;
        v101 = "nw_protocol_shoes_send_request";
        v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s called with null shoes", buf, 12);
        LOBYTE(v112) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v69, &v112, &type))
        {
          if (v112 == 17)
          {
            v70 = __nwlog_obj();
            v71 = v112;
            if (!os_log_type_enabled(v70, v112))
            {
              goto LABEL_145;
            }

            *buf = 136446210;
            v101 = "nw_protocol_shoes_send_request";
            v72 = "%{public}s called with null shoes";
            goto LABEL_144;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v70 = __nwlog_obj();
            v71 = v112;
            if (!os_log_type_enabled(v70, v112))
            {
              goto LABEL_145;
            }

            *buf = 136446210;
            v101 = "nw_protocol_shoes_send_request";
            v72 = "%{public}s called with null shoes, backtrace limit exceeded";
            goto LABEL_144;
          }

          v85 = __nw_create_backtrace_string();
          v70 = __nwlog_obj();
          v71 = v112;
          v86 = os_log_type_enabled(v70, v112);
          if (v85)
          {
            if (v86)
            {
              *buf = 136446466;
              v101 = "nw_protocol_shoes_send_request";
              v102 = 2082;
              v103 = v85;
              _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v85);
            goto LABEL_145;
          }

          if (v86)
          {
            *buf = 136446210;
            v101 = "nw_protocol_shoes_send_request";
            v72 = "%{public}s called with null shoes, no backtrace";
LABEL_144:
            _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
          }
        }

LABEL_145:
        if (v69)
        {
          free(v69);
        }

        goto LABEL_71;
      }

      if (v37)
      {
        *buf = 136446466;
        v101 = "nw_protocol_shoes_connected";
        v102 = 2082;
        v103 = handle + 159;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s start waiting for TFO", buf, 0x16u);
      }

      handle[158] = 2;
    }

    (a1->default_input_handler->callbacks->connected)(a1->default_input_handler, a1);
    return;
  }

  v63 = __nwlog_obj();
  *buf = 136446210;
  v101 = "nw_protocol_shoes_connected";
  v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s called with null shoes", buf, 12);
  LOBYTE(v112) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v59, &v112, &type))
  {
    goto LABEL_104;
  }

  if (v112 == 17)
  {
    v60 = __nwlog_obj();
    v61 = v112;
    if (!os_log_type_enabled(v60, v112))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v101 = "nw_protocol_shoes_connected";
    v62 = "%{public}s called with null shoes";
    goto LABEL_103;
  }

  if (type != OS_LOG_TYPE_INFO)
  {
    v60 = __nwlog_obj();
    v61 = v112;
    if (!os_log_type_enabled(v60, v112))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v101 = "nw_protocol_shoes_connected";
    v62 = "%{public}s called with null shoes, backtrace limit exceeded";
    goto LABEL_103;
  }

  v66 = __nw_create_backtrace_string();
  v60 = __nwlog_obj();
  v61 = v112;
  v67 = os_log_type_enabled(v60, v112);
  if (!v66)
  {
    if (!v67)
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v101 = "nw_protocol_shoes_connected";
    v62 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_103;
  }

  if (v67)
  {
    *buf = 136446466;
    v101 = "nw_protocol_shoes_connected";
    v102 = 2082;
    v103 = v66;
    _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v66);
  if (v59)
  {
    goto LABEL_105;
  }
}

uint64_t nw_protocol_shoes_send_request_inner(nw_protocol *a1)
{
  v70 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  if (!handle)
  {
    v38 = __nwlog_obj();
    *v59 = 136446210;
    *&v59[4] = "nw_protocol_shoes_send_request_inner";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null shoes", v59, 12);
    buf[0] = 16;
    v62[0] = 0;
    if (__nwlog_fault(v39, buf, v62))
    {
      if (buf[0] == 17)
      {
        v40 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v40, buf[0]))
        {
          *v59 = 136446210;
          *&v59[4] = "nw_protocol_shoes_send_request_inner";
          v42 = "%{public}s called with null shoes";
LABEL_79:
          _os_log_impl(&dword_181A37000, v40, v41, v42, v59, 0xCu);
        }
      }

      else if (v62[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = buf[0];
        v49 = os_log_type_enabled(v40, buf[0]);
        if (backtrace_string)
        {
          if (v49)
          {
            *v59 = 136446466;
            *&v59[4] = "nw_protocol_shoes_send_request_inner";
            *&v59[12] = 2082;
            *&v59[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null shoes, dumping backtrace:%{public}s", v59, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_80;
        }

        if (v49)
        {
          *v59 = 136446210;
          *&v59[4] = "nw_protocol_shoes_send_request_inner";
          v42 = "%{public}s called with null shoes, no backtrace";
          goto LABEL_79;
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v40, buf[0]))
        {
          *v59 = 136446210;
          *&v59[4] = "nw_protocol_shoes_send_request_inner";
          v42 = "%{public}s called with null shoes, backtrace limit exceeded";
          goto LABEL_79;
        }
      }
    }

LABEL_80:
    if (v39)
    {
      free(v39);
    }

    return 0;
  }

  result = nw_shoes_create_request(a1->handle);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = bswap32(*result) >> 16;
  v6 = a1->handle;
  if (!v6)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_shoes_send";
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null shoes", buf, 12);
    v62[0] = 16;
    LOBYTE(v57) = 0;
    if (!__nwlog_fault(v44, v62, &v57))
    {
      goto LABEL_86;
    }

    if (v62[0] == 17)
    {
      v45 = __nwlog_obj();
      v46 = v62[0];
      if (!os_log_type_enabled(v45, v62[0]))
      {
        goto LABEL_86;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_shoes_send";
      v47 = "%{public}s called with null shoes";
    }

    else if (v57 == 1)
    {
      v50 = v4;
      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = v62[0];
      v52 = os_log_type_enabled(v45, v62[0]);
      if (v51)
      {
        if (v52)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_shoes_send";
          *&buf[12] = 2082;
          *&buf[14] = v51;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v51);
        v4 = v50;
        goto LABEL_86;
      }

      v4 = v50;
      if (!v52)
      {
LABEL_86:
        if (v44)
        {
          free(v44);
        }

        goto LABEL_31;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_shoes_send";
      v47 = "%{public}s called with null shoes, no backtrace";
    }

    else
    {
      v45 = __nwlog_obj();
      v46 = v62[0];
      if (!os_log_type_enabled(v45, v62[0]))
      {
        goto LABEL_86;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_shoes_send";
      v47 = "%{public}s called with null shoes, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
    goto LABEL_86;
  }

  v7 = v5 + 2;
  v57 = 0;
  v58 = &v57;
  v55 = 0;
  v56 = &v55;
  v8 = (a1->output_handler->callbacks->get_output_frames)();
  v9 = v57;
  if (!v57 || !v8)
  {
    if (v8)
    {
      v21 = v8;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_shoes_send";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 159;
        *&buf[22] = 1024;
        v69 = v21;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Output handler reported %u frames to write, but array is empty", buf, 0x1Cu);
      }
    }

LABEL_31:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v24 = v4[2];
      *v59 = 136446978;
      *&v59[4] = "nw_protocol_shoes_send_request_inner";
      *&v59[12] = 2082;
      *&v59[14] = handle + 159;
      *&v59[22] = 1024;
      LODWORD(v60) = v24;
      WORD2(v60) = 1024;
      *(&v60 + 6) = v5;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to send shoes request (type %u inner length %u)", v59, 0x22u);
      return 0;
    }

    return result;
  }

  v53 = v6;
  v54 = v4;
  while (1)
  {
    v10 = *(v9 + 32);
    if (v10 || *(v9 + 40))
    {
      v11 = *(v9 + 112);
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(v9 + 112);
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if ((*(v9 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v9, *(v9 + 88)))
    {
      LODWORD(v11) = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    LODWORD(v11) = *(v9 + 52);
    v12 = *(v9 + 56);
    if (v11)
    {
      LODWORD(v11) = v11 - (v12 + *(v9 + 60));
    }

    v13 = (*(v9 + 112) + v12);
LABEL_18:
    v14 = v11 >= v7 ? v7 : v11;
    memcpy(v13, v4, v14);
    if (!nw_frame_claim(v9, v15, v14, 0))
    {
      break;
    }

    nw_frame_collapse(v9);
    nw_frame_unclaim(v9, v16, v14, 0);
    v17 = *(v9 + 32);
    v18 = *(v9 + 40);
    v19 = (v17 + 40);
    if (!v17)
    {
      v19 = &v58;
    }

    *v19 = v18;
    *v18 = v17;
    v20 = v56;
    *(v9 + 32) = 0;
    *(v9 + 40) = v20;
    *v20 = v9;
    v56 = (v9 + 32);
    if (v10)
    {
      v4 += v14;
      v9 = v10;
      v7 -= v14;
      if (v7)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "nw_protocol_shoes_send";
    *&buf[12] = 2082;
    *&buf[14] = v53 + 159;
    *&buf[22] = 1024;
    v69 = v14;
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Claiming frame with %u bytes failed", buf, 0x1Cu);
  }

LABEL_35:
  (a1->output_handler->callbacks->finalize_output_frames)();
  if (v57)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v69 = 0;
    *v59 = MEMORY[0x1E69E9820];
    *&v59[8] = 0x40000000;
    *&v59[16] = ___ZL22nw_protocol_shoes_sendP11nw_protocolPhj_block_invoke;
    *&v60 = &unk_1E6A2B438;
    *(&v60 + 1) = buf;
    do
    {
      v26 = v57;
      if (!v57)
      {
        break;
      }

      v27 = *(v57 + 32);
      v28 = *(v57 + 40);
      v29 = (v27 + 40);
      if (!v27)
      {
        v29 = &v58;
      }

      *v29 = v28;
      *v28 = v27;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
    }

    while (((*&v59[16])(v59) & 1) != 0);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*&buf[8] + 24);
      *v62 = 136446722;
      v63 = "nw_protocol_shoes_send";
      v64 = 2082;
      v65 = v53 + 159;
      v66 = 1024;
      v67 = v31;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to use %u frames, marking as failed", v62, 0x1Cu);
    }

    _Block_object_dispose(buf, 8);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    output_handler = a1->output_handler;
    if (!output_handler || (get_output_local_endpoint = output_handler->callbacks->get_output_local_endpoint) == 0 || (default_input_handler = get_output_local_endpoint()) == 0)
    {
      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        get_local_endpoint = default_input_handler->callbacks->get_local_endpoint;
        if (get_local_endpoint)
        {
          default_input_handler = get_local_endpoint();
        }

        else
        {
          default_input_handler = 0;
        }
      }
    }

    v37 = v54[2];
    *v59 = 136447234;
    *&v59[4] = "nw_protocol_shoes_send_request_inner";
    *&v59[12] = 2082;
    *&v59[14] = handle + 159;
    *&v59[22] = 2114;
    *&v60 = default_input_handler;
    WORD4(v60) = 1024;
    *(&v60 + 10) = v37;
    HIWORD(v60) = 1024;
    v61 = v5;
    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Sent shoes request: local address %{public}@ type %u inner length %u no TFO", v59, 0x2Cu);
  }

  handle[158] = 5;
  free(v54);
  return 1;
}

_WORD *nw_shoes_create_request(uint64_t a1)
{
  v89 = *MEMORY[0x1E69E9840];
  v2 = nw_endpoint_copy_proxy_original_endpoint(*(a1 + 104));
  if (!v2)
  {
    v2 = *(a1 + 104);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = &qword_1ED411000;
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "nw_shoes_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 159;
    *&buf[22] = 2112;
    v85 = v2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Sending request for endpoint %@", buf, 0x20u);
  }

  type = nw_endpoint_get_type(v2);
  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = 0;
  v79 = 0;
  v78 = 0;
  v6 = (*(*(*(a1 + 48) + 24) + 112))();
  if (!v6)
  {
    v10 = 0;
    v11 = *(a1 + 120);
    v12 = 1;
    v13 = 261;
    if (!v11)
    {
      string_ptr = 0;
      traffic_class = 0;
      alternate_port = 0;
      v71 = 0;
      v72 = 1;
      v75 = 0;
      goto LABEL_45;
    }

    v75 = 0;
    traffic_class = 0;
    alternate_port = 0;
    v71 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  traffic_class = _nw_parameters_get_traffic_class(v6);
  if (traffic_class)
  {
    v9 = 268;
  }

  else
  {
    v9 = 261;
  }

  if (_nw_parameters_get_no_proxy_path_selection(v7))
  {
    v10 = 0;
    goto LABEL_24;
  }

  if (_nw_parameters_get_prohibit_expensive(v7))
  {
    *(v81 + 24) |= 0x80u;
  }

  if (_nw_parameters_get_prohibit_constrained(v7))
  {
    *(v81 + 24) |= 0x10u;
  }

  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 0x40000000;
  v77[2] = ___ZL23nw_shoes_create_requestP18_nw_protocol_shoes_block_invoke;
  v77[3] = &unk_1E6A2B3F0;
  v77[4] = &v80;
  _nw_parameters_iterate_prohibited_interface_types(v7, v77);
  v14 = *(a1 + 152);
  v10 = __rev16(v14);
  v78 = v10;
  if (v14)
  {
    *(v81 + 24) |= 6u;
  }

  if (!_nw_parameters_get_next_hop_required_interface_type(v7))
  {
    goto LABEL_24;
  }

  next_hop_required_interface_type = nw_parameters_get_next_hop_required_interface_type(v7);
  switch(next_hop_required_interface_type)
  {
    case 3:
      v16 = 4;
      v17 = 4;
      goto LABEL_30;
    case 2:
      v16 = 2;
      v17 = 2;
      goto LABEL_30;
    case 1:
      v16 = 1;
      v17 = 1;
LABEL_30:
      v75 = v17;
      v79 = v16;
      if (*(v81 + 24))
      {
        v19 = v9 + 4;
      }

      else
      {
        v19 = v9;
      }

      v13 = v19 + 7;
      goto LABEL_34;
  }

LABEL_24:
  v75 = 0;
  if (*(v81 + 24))
  {
    v13 = v9 + 4;
  }

  else
  {
    v13 = v9;
  }

LABEL_34:
  if (_nw_parameters_get_multipath(v7))
  {
    if (nw_shoes_is_multipath_allowed(void)::onceToken != -1)
    {
      dispatch_once(&nw_shoes_is_multipath_allowed(void)::onceToken, &__block_literal_global_50);
    }

    if (nw_shoes_is_multipath_allowed(void)::isAllowed == 1)
    {
      v12 = 0;
      v13 += 6;
      alternate_port = nw_endpoint_get_alternate_port(v2);
      v71 = 2;
      v11 = *(a1 + 120);
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_42:
      string_ptr = xpc_string_get_string_ptr(v11);
      if (!string_ptr)
      {
        goto LABEL_114;
      }

LABEL_43:
      v72 = 0;
      v13 += strlen(string_ptr) + 3;
      if (!v10)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  alternate_port = 0;
  v71 = 0;
  v12 = 1;
  v11 = *(a1 + 120);
  if (v11)
  {
    goto LABEL_42;
  }

LABEL_39:
  effective_bundle_id = _nw_parameters_get_effective_bundle_id(v7);
  if (effective_bundle_id)
  {
    string_ptr = effective_bundle_id;
    goto LABEL_43;
  }

  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  string_ptr = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
    goto LABEL_43;
  }

LABEL_114:
  v72 = 1;
  if (v10)
  {
LABEL_44:
    LOWORD(v13) = v13 + 5;
  }

LABEL_45:
  if (!v13)
  {
    v63 = __nwlog_obj();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_create_request";
    v65 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s strict_calloc called with size 0", buf, 12);
    result = __nwlog_should_abort(v65);
    if (result)
    {
      goto LABEL_158;
    }

    free(v65);
  }

  v73 = v12;
  v74 = traffic_class;
  __s = string_ptr;
  v21 = v13;
  v22 = malloc_type_calloc(1uLL, v13, 0xC0A7F11EuLL);
  if (v22)
  {
    if (type != nw_endpoint_type_address)
    {
      goto LABEL_48;
    }

    goto LABEL_62;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = gLogObj;
  v32 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_shoes_create_request";
  if (v32)
  {
    v33 = 3;
  }

  else
  {
    v33 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v85 = v13;
  LODWORD(v66) = 32;
  v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v66);
  result = __nwlog_should_abort(v34);
  if (!result)
  {
    free(v34);
    if (type != nw_endpoint_type_address)
    {
LABEL_48:
      if (type != nw_endpoint_type_bonjour_service)
      {
        if (type != nw_endpoint_type_host)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_shoes_create_request";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 159;
            *&buf[22] = 1024;
            LODWORD(v85) = type;
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Invalid endpoint type %u", buf, 0x1Cu);
          }

          if (!v22)
          {
LABEL_108:
            if (!v2)
            {
LABEL_110:
              _Block_object_dispose(&v80, 8);
              return v22;
            }

LABEL_109:
            os_release(v2);
            goto LABEL_110;
          }

          goto LABEL_107;
        }

        if ((*(a1 + 243) & 2) != 0)
        {
          v23 = 4;
        }

        else
        {
          v23 = 1;
        }

        *(v22 + 2) = v23;
        hostname = nw_endpoint_get_hostname(v2);
        if (!hostname)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_shoes_create_request";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 159;
            v29 = "%{public}s %{public}s hostname is NULL";
            v30 = v53;
            v52 = 22;
            goto LABEL_106;
          }

          goto LABEL_107;
        }

        v25 = hostname;
        v26 = strlen(hostname);
        v27 = v26;
        if (v26 >= 0x100)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447234;
            *&buf[4] = "nw_shoes_create_request";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 159;
            *&buf[22] = 2082;
            v85 = v25;
            v86 = 2048;
            *v87 = v27;
            *&v87[8] = 2048;
            v88 = 255;
            v29 = "%{public}s %{public}s Hostname too long: %{public}s %zu > %zu";
            v30 = v28;
LABEL_92:
            v52 = 52;
LABEL_106:
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, v29, buf, v52);
            goto LABEL_107;
          }

          goto LABEL_107;
        }

        *(v22 + 5) = v26;
        memcpy(v22 + 3, v25, v26);
        v38 = v27 + 4;
        v39 = v74;
        if (!v74)
        {
          goto LABEL_123;
        }

        goto LABEL_119;
      }

      v67 = v10;
      if ((*(a1 + 243) & 2) != 0)
      {
        v40 = 8;
      }

      else
      {
        v40 = 7;
      }

      *(v22 + 2) = v40;
      bonjour_service_name = nw_endpoint_get_bonjour_service_name(v2);
      bonjour_service_type = nw_endpoint_get_bonjour_service_type(v2);
      bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v2);
      if (bonjour_service_name)
      {
        v44 = strlen(bonjour_service_name) + 1;
        v68 = v2;
        if (bonjour_service_type)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v44 = 1;
        v68 = v2;
        if (bonjour_service_type)
        {
LABEL_74:
          v45 = strlen(bonjour_service_type) + 1;
          if (bonjour_service_domain)
          {
LABEL_75:
            v46 = strlen(bonjour_service_domain) + 1;
            goto LABEL_89;
          }

LABEL_88:
          v46 = 1;
LABEL_89:
          v49 = v45 + v44 + v46;
          if (v49 >= 0x100)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v50 = gLogObj;
            v2 = v68;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              bonjour_fullname = nw_endpoint_get_bonjour_fullname(v68);
              *buf = 136447234;
              *&buf[4] = "nw_shoes_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 159;
              *&buf[22] = 2082;
              v85 = bonjour_fullname;
              v86 = 2048;
              *v87 = v49;
              *&v87[8] = 2048;
              v88 = 255;
              v29 = "%{public}s %{public}s Bonjour service too long: %{public}s %zu > %zu";
              v30 = v50;
              goto LABEL_92;
            }

LABEL_107:
            free(v22);
            v22 = 0;
            goto LABEL_108;
          }

          *(v22 + 5) = v49;
          if (bonjour_service_name && v44)
          {
            memcpy(v22 + 3, bonjour_service_name, v44);
          }

          if (bonjour_service_type && v45)
          {
            memcpy(v22 + v44 + 6, bonjour_service_type, v45);
          }

          if (bonjour_service_domain && v46)
          {
            memcpy(v22 + v44 + v45 + 6, bonjour_service_domain, v46);
          }

          v38 = v49 + 4;
          v2 = v68;
          type = nw_endpoint_type_bonjour_service;
          v3 = &qword_1ED411000;
          v10 = v67;
          v39 = v74;
          if (!v74)
          {
LABEL_123:
            if (*(v81 + 24) && v21 > (v38 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v55 = v3[275];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = *(v81 + 24);
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v85 = "flags";
                v86 = 1024;
                *v87 = v56;
                _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%#x)", buf, 0x26u);
              }

              v38 += nw_shoes_add_tlv(v22 + (v38 + 2), (v21 - (v38 + 2)), 2u, 1uLL, v81 + 3);
            }

            if (v75 && v21 > (v38 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v57 = v3[275];
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v85 = "extended_flags";
                v86 = 1024;
                *v87 = v75;
                _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%#x)", buf, 0x26u);
              }

              v38 += nw_shoes_add_tlv(v22 + (v38 + 2), (v21 - (v38 + 2)), 9u, 4uLL, &v79);
            }

            if ((v72 & 1) == 0 && v21 > (v38 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v58 = v3[275];
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v85 = "bundle_id";
                v86 = 2080;
                *v87 = __s;
                _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%s)", buf, 0x2Au);
              }

              v59 = strlen(__s);
              v38 += nw_shoes_add_tlv(v22 + (v38 + 2), (v21 - (v38 + 2)), 3u, v59, __s);
            }

            if ((v73 & 1) == 0)
            {
              LOBYTE(__src) = v71;
              *(&__src + 1) = alternate_port;
              if (v21 > (v38 + 2))
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v60 = v3[275];
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136447234;
                  *&buf[4] = "nw_shoes_create_request";
                  *&buf[12] = 2082;
                  *&buf[14] = a1 + 159;
                  *&buf[22] = 2082;
                  v85 = "multipath";
                  v86 = 1024;
                  *v87 = v71;
                  *&v87[4] = 1024;
                  *&v87[6] = __rev16(alternate_port);
                  _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%u/%u)", buf, 0x2Cu);
                }

                v38 += nw_shoes_add_tlv(v22 + (v38 + 2), (v21 - (v38 + 2)), 5u, 3uLL, &__src);
              }
            }

            if (v10 && v21 > (v38 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v61 = v3[275];
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v85 = "udp_associate";
                v86 = 1024;
                *v87 = bswap32(v10) >> 16;
                _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%u)", buf, 0x26u);
              }

              v38 += nw_shoes_add_tlv(v22 + (v38 + 2), (v21 - (v38 + 2)), 6u, 2uLL, &v78);
            }

            *v22 = bswap32(v38) >> 16;
            if (type == nw_endpoint_type_bonjour_service)
            {
              v62 = 0;
            }

            else
            {
              v62 = __rev16(nw_endpoint_get_port(v2));
            }

            *(v22 + 3) = v62;
            if (!v2)
            {
              goto LABEL_110;
            }

            goto LABEL_109;
          }

LABEL_119:
          __src = bswap32(v39);
          if (v21 > (v38 + 2))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v54 = v3[275];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446978;
              *&buf[4] = "nw_shoes_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 159;
              *&buf[22] = 2082;
              v85 = "traffic_class";
              v86 = 1024;
              *v87 = v74;
              _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%u)", buf, 0x26u);
            }

            v38 += nw_shoes_add_tlv(v22 + (v38 + 2), (v21 - (v38 + 2)), 1u, 4uLL, &__src);
          }

          goto LABEL_123;
        }
      }

      v45 = 1;
      if (bonjour_service_domain)
      {
        goto LABEL_75;
      }

      goto LABEL_88;
    }

LABEL_62:
    memset(buf, 0, sizeof(buf));
    LODWORD(v85) = 0;
    v36 = nw_endpoint_fillout_v4v6_address(v2, buf);
    if (v36 && buf[1] == 30)
    {
      if ((*(a1 + 243) & 2) != 0)
      {
        v37 = 5;
      }

      else
      {
        v37 = 2;
      }

      *(v22 + 2) = v37;
      *(v22 + 5) = *&buf[8];
      v38 = 19;
      v39 = v74;
      if (!v74)
      {
        goto LABEL_123;
      }
    }

    else if (v36)
    {
      if ((*(a1 + 243) & 2) != 0)
      {
        v48 = 6;
      }

      else
      {
        v48 = 3;
      }

      *(v22 + 2) = v48;
      *(v22 + 5) = *&buf[4];
      v38 = 7;
      v39 = v74;
      if (!v74)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v38 = 0;
      v39 = v74;
      if (!v74)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_119;
  }

LABEL_158:
  __break(1u);
  return result;
}

uint64_t ___ZL22nw_protocol_shoes_sendP11nw_protocolPhj_block_invoke(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  nw_frame_finalize(a2);
  return 1;
}

uint64_t ___ZL23nw_shoes_create_requestP18_nw_protocol_shoes_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 32;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v2 = 64;
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) |= v2;
  }

  return 1;
}

void ___ZL29nw_shoes_is_multipath_allowedv_block_invoke()
{
  v0 = nw_utilities_copy_local_entitlement_value("com.apple.developer.networking.multipath_extended");
  if (v0)
  {
    v1 = v0;
    if (object_getClass(v0) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v1))
    {
      nw_shoes_is_multipath_allowed(void)::isAllowed = 1;
    }

    xpc_release(v1);
  }
}

uint64_t nw_protocol_shoes_connect(nw_protocol *a1, nw_protocol *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_shoes_connect";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_protocol_shoes_connect";
      v10 = "%{public}s called with null protocol";
    }

    else
    {
      if (v16 != 1)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v19 = "nw_protocol_shoes_connect";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_shoes_connect";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (!v13)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_protocol_shoes_connect";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_38;
  }

  if (!a1->handle)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_shoes_connect";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_protocol_shoes_connect";
      v10 = "%{public}s called with null shoes";
      goto LABEL_37;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_protocol_shoes_connect";
      v10 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_37;
    }

    v14 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v19 = "nw_protocol_shoes_connect";
      v10 = "%{public}s called with null shoes, no backtrace";
      goto LABEL_37;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_shoes_connect";
      v20 = 2082;
      v21 = v14;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v14);
LABEL_38:
    if (!v7)
    {
      return 0;
    }

LABEL_39:
    free(v7);
    return 0;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 1;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  connect = callbacks->connect;
  if (!connect)
  {
    return 0;
  }

  return connect();
}

BOOL nw_protocol_shoes_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[158] == 2;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_shoes_waiting_for_output";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_shoes_waiting_for_output";
        v8 = "%{public}s called with null shoes";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_shoes_waiting_for_output";
        v8 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v17 = "nw_protocol_shoes_waiting_for_output";
        v8 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_shoes_waiting_for_output";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_shoes_waiting_for_output";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_shoes_waiting_for_output";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v11 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_shoes_waiting_for_output";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_shoes_waiting_for_output";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_shoes_waiting_for_output";
    v8 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_shoes_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_shoes_finalize_output_frames";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v17 = "%{public}s called with null protocol";
      goto LABEL_53;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v20 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v17 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_54:
    if (!v14)
    {
      return 0;
    }

LABEL_55:
    free(v14);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_shoes_finalize_output_frames";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v17 = "%{public}s called with null shoes";
      goto LABEL_53;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v17 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_53;
    }

    v21 = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v22 = os_log_type_enabled(v15, type);
    if (v21)
    {
      if (v22)
      {
        *buf = 136446466;
        v26 = "nw_protocol_shoes_finalize_output_frames";
        v27 = 2082;
        v28 = v21;
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v21);
      if (!v14)
      {
        return 0;
      }

      goto LABEL_55;
    }

    if (v22)
    {
      *buf = 136446210;
      v26 = "nw_protocol_shoes_finalize_output_frames";
      v17 = "%{public}s called with null shoes, no backtrace";
LABEL_53:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v3 = *(handle + 158);
  if (v3 == 6)
  {
    goto LABEL_8;
  }

  if (v3 != 4)
  {
    return 0;
  }

  tqh_first = a2->tqh_first;
  v5 = handle[37];
  if (a2->tqh_first)
  {
    while (v5)
    {
      v9 = tqh_first;
      tqh_first = *(tqh_first + 4);
      if (!tqh_first && !*(v9 + 40))
      {
        tqh_first = 0;
      }

      v10 = *(v9 + 52);
      if (v10)
      {
        v11 = v10 - (*(v9 + 56) + *(v9 + 60));
        if (v11 < v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = v5;
        }

        if (v11 < v5 && v10 != 0)
        {
          v8 = v10 - (*(v9 + 56) + *(v9 + 60));
        }
      }

      else
      {
        v8 = 0;
      }

      nw_frame_unclaim(v9, a2, v8, 0);
      v5 = handle[37] - v8;
      handle[37] = v5;
      if (!tqh_first)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

LABEL_6:
  if (!v5)
  {
LABEL_7:
    *(handle + 158) = 5;
  }

LABEL_8:
  v6 = *(*(*(handle + 4) + 24) + 96);

  return v6();
}

uint64_t nw_protocol_shoes_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_shoes_get_output_frames";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v39, &type, &v55))
    {
      goto LABEL_89;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v55 != 1)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_89;
        }

        *buf = 136446210;
        v58 = "nw_protocol_shoes_get_output_frames";
        v42 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_88;
      }

      backtrace_string = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v45 = os_log_type_enabled(v40, type);
      if (!backtrace_string)
      {
        if (!v45)
        {
          goto LABEL_89;
        }

        *buf = 136446210;
        v58 = "nw_protocol_shoes_get_output_frames";
        v42 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_88;
      }

      if (v45)
      {
        *buf = 136446466;
        v58 = "nw_protocol_shoes_get_output_frames";
        v59 = 2082;
        v60 = backtrace_string;
        v46 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_69:
        _os_log_impl(&dword_181A37000, v40, v41, v46, buf, 0x16u);
      }

LABEL_70:
      free(backtrace_string);
      goto LABEL_89;
    }

    v40 = __nwlog_obj();
    v41 = type;
    if (!os_log_type_enabled(v40, type))
    {
      goto LABEL_89;
    }

    *buf = 136446210;
    v58 = "nw_protocol_shoes_get_output_frames";
    v42 = "%{public}s called with null protocol";
LABEL_88:
    _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
LABEL_89:
    if (v39)
    {
      free(v39);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_shoes_get_output_frames";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v39, &type, &v55))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      v58 = "nw_protocol_shoes_get_output_frames";
      v42 = "%{public}s called with null shoes";
      goto LABEL_88;
    }

    if (v55 != 1)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (!os_log_type_enabled(v40, type))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      v58 = "nw_protocol_shoes_get_output_frames";
      v42 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_88;
    }

    backtrace_string = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = type;
    v47 = os_log_type_enabled(v40, type);
    if (backtrace_string)
    {
      if (v47)
      {
        *buf = 136446466;
        v58 = "nw_protocol_shoes_get_output_frames";
        v59 = 2082;
        v60 = backtrace_string;
        v46 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    if (!v47)
    {
      goto LABEL_89;
    }

    *buf = 136446210;
    v58 = "nw_protocol_shoes_get_output_frames";
    v42 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_88;
  }

  v8 = *(handle + 158);
  if (v8 == 6)
  {
    v24 = *(*(handle[4] + 24) + 88);

    return v24();
  }

  if (v8 != 2)
  {
    return 0;
  }

  request = nw_shoes_create_request(a1->handle);
  if (!request)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v58 = "nw_shoes_internal_disconnect";
      v59 = 2082;
      v60 = handle + 159;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
    }

    *(handle + 158) = 7;
    (*(handle[3] + 48))(handle, 0);
    return 0;
  }

  v11 = request;
  v12 = bswap32(*request) >> 16;
  v13 = a1->handle;
  if (!v13)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_add_buffer_to_output_frames";
    v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v49, &type, &v55))
    {
      goto LABEL_97;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v58 = "nw_protocol_add_buffer_to_output_frames";
      v52 = "%{public}s called with null shoes";
    }

    else if (v55 == 1)
    {
      v53 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type;
      v54 = os_log_type_enabled(v50, type);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446466;
          v58 = "nw_protocol_add_buffer_to_output_frames";
          v59 = 2082;
          v60 = v53;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v53);
        goto LABEL_97;
      }

      if (!v54)
      {
LABEL_97:
        if (v49)
        {
          free(v49);
        }

        goto LABEL_38;
      }

      *buf = 136446210;
      v58 = "nw_protocol_add_buffer_to_output_frames";
      v52 = "%{public}s called with null shoes, no backtrace";
    }

    else
    {
      v50 = __nwlog_obj();
      v51 = type;
      if (!os_log_type_enabled(v50, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v58 = "nw_protocol_add_buffer_to_output_frames";
      v52 = "%{public}s called with null shoes, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
    goto LABEL_97;
  }

  v14 = v12 + 2;
  v15 = (a1->output_handler->callbacks->get_output_frames)();
  tqh_first = a6->tqh_first;
  if (!tqh_first || !v15)
  {
    if (v15)
    {
      v27 = v15;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v58 = "nw_protocol_add_buffer_to_output_frames";
        v59 = 2082;
        v60 = v13 + 159;
        v61 = 1024;
        *v62 = v27;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Output handler reported %u frames to write, but array is empty", buf, 0x1Cu);
      }
    }

LABEL_38:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v30 = v11[2];
      *buf = 136446978;
      v58 = "nw_protocol_shoes_add_request_to_output_frames";
      v59 = 2082;
      v60 = handle + 159;
      v61 = 1024;
      *v62 = v30;
      *&v62[4] = 1024;
      *&v62[6] = v12;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to send shoes request (type %u inner length %u)", buf, 0x22u);
    }

    free(v11);
    return 0;
  }

  v17 = v11;
  while (1)
  {
    v18 = *(tqh_first + 4);
    if (v18 || *(tqh_first + 5))
    {
      v19 = *(tqh_first + 14);
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(tqh_first + 14);
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    if ((*(tqh_first + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(tqh_first, *(tqh_first + 11)))
    {
      LODWORD(v19) = 0;
LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

    LODWORD(v19) = *(tqh_first + 13);
    v20 = *(tqh_first + 14);
    if (v19)
    {
      LODWORD(v19) = v19 - (v20 + *(tqh_first + 15));
    }

    v21 = (*(tqh_first + 14) + v20);
LABEL_21:
    v22 = v19 >= v14 ? v14 : v19;
    memcpy(v21, v17, v22);
    if (!nw_frame_claim(tqh_first, v23, v22, 0))
    {
      break;
    }

    v13[37] += v22;
    if (v18)
    {
      v17 += v22;
      tqh_first = v18;
      v14 -= v22;
      if (v14)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v58 = "nw_protocol_add_buffer_to_output_frames";
    v59 = 2082;
    v60 = v13 + 159;
    v61 = 1024;
    *v62 = v22;
    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Claiming frame with %u bytes failed", buf, 0x1Cu);
  }

LABEL_43:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    output_handler = a1->output_handler;
    if (!output_handler || (get_output_local_endpoint = output_handler->callbacks->get_output_local_endpoint) == 0 || (default_input_handler = get_output_local_endpoint()) == 0)
    {
      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        get_local_endpoint = default_input_handler->callbacks->get_local_endpoint;
        if (get_local_endpoint)
        {
          default_input_handler = get_local_endpoint();
        }

        else
        {
          default_input_handler = 0;
        }
      }
    }

    v37 = v11[2];
    *buf = 136447234;
    v58 = "nw_protocol_shoes_add_request_to_output_frames";
    v59 = 2082;
    v60 = handle + 159;
    v61 = 2114;
    *v62 = default_input_handler;
    *&v62[8] = 1024;
    v63 = v37;
    v64 = 1024;
    v65 = v12;
    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Sent shoes request: local address %{public}@ type %u inner length %u with TFO", buf, 0x2Cu);
  }

  free(v11);
  *(handle + 158) = 4;
  return 1;
}

uint64_t nw_protocol_shoes_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, uint64_t a5, nw_frame_array_s *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_shoes_get_input_frames";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v17, &type, &v26))
    {
      goto LABEL_42;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v29 = "nw_protocol_shoes_get_input_frames";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_41;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v23 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v23)
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v29 = "nw_protocol_shoes_get_input_frames";
        v20 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_41;
      }

      if (v23)
      {
        *buf = 136446466;
        v29 = "nw_protocol_shoes_get_input_frames";
        v30 = 2082;
        v31 = backtrace_string;
        v24 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v18, v19, v24, buf, 0x16u);
      }

LABEL_32:
      free(backtrace_string);
      goto LABEL_42;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v29 = "nw_protocol_shoes_get_input_frames";
    v20 = "%{public}s called with null protocol";
LABEL_41:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_42:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_shoes_get_input_frames";
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v17, &type, &v26))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v29 = "nw_protocol_shoes_get_input_frames";
      v20 = "%{public}s called with null shoes";
      goto LABEL_41;
    }

    if (v26 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v29 = "nw_protocol_shoes_get_input_frames";
      v20 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v25 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v25)
      {
        *buf = 136446466;
        v29 = "nw_protocol_shoes_get_input_frames";
        v30 = 2082;
        v31 = backtrace_string;
        v24 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (!v25)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v29 = "nw_protocol_shoes_get_input_frames";
    v20 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_41;
  }

  if (handle[158] != 6)
  {
    return 0;
  }

  v7 = *(handle + 16);
  if (v7)
  {
    if (a5)
    {
      v8 = 1;
      while (1)
      {
        v9 = (v7 + 32);
        v10 = *(v7 + 32);
        v11 = *(v7 + 40);
        v12 = (v10 + 40);
        if (!v10)
        {
          v12 = handle + 136;
        }

        *v12 = v11;
        *v11 = v10;
        *(v7 + 40) = 0;
        *v9 = 0;
        tqh_last = a6->tqh_last;
        *(v7 + 40) = tqh_last;
        *tqh_last = v7;
        a6->tqh_last = v9;
        if (a5 == v8)
        {
          break;
        }

        v7 = *(handle + 16);
        ++v8;
        if (!v7)
        {
          return (v8 - 1);
        }
      }
    }

    return a5;
  }

  v14 = *(*(*(handle + 4) + 24) + 80);

  return v14();
}

void nw_protocol_shoes_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_protocol_shoes_input_available";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null protocol", buf, 12);
    v88[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v76, v88, &type))
    {
      goto LABEL_167;
    }

    if (v88[0] == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = v88[0];
      if (!os_log_type_enabled(v77, v88[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v93 = "nw_protocol_shoes_input_available";
      v79 = "%{public}s called with null protocol";
      goto LABEL_166;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v77 = __nwlog_obj();
      v78 = v88[0];
      if (!os_log_type_enabled(v77, v88[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v93 = "nw_protocol_shoes_input_available";
      v79 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_166;
    }

    backtrace_string = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = v88[0];
    v82 = os_log_type_enabled(v77, v88[0]);
    if (!backtrace_string)
    {
      if (!v82)
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v93 = "nw_protocol_shoes_input_available";
      v79 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_166;
    }

    if (v82)
    {
      *buf = 136446466;
      v93 = "nw_protocol_shoes_input_available";
      v94 = 2082;
      v95 = backtrace_string;
      _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_167:
    if (!v76)
    {
      return;
    }

    goto LABEL_168;
  }

  handle = a1->handle;
  if (!handle)
  {
    v80 = __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_protocol_shoes_input_available";
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null shoes", buf, 12);
    v88[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v76, v88, &type))
    {
      goto LABEL_167;
    }

    if (v88[0] == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = v88[0];
      if (!os_log_type_enabled(v77, v88[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v93 = "nw_protocol_shoes_input_available";
      v79 = "%{public}s called with null shoes";
      goto LABEL_166;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v77 = __nwlog_obj();
      v78 = v88[0];
      if (!os_log_type_enabled(v77, v88[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v93 = "nw_protocol_shoes_input_available";
      v79 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_166;
    }

    v83 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = v88[0];
    v84 = os_log_type_enabled(v77, v88[0]);
    if (v83)
    {
      if (v84)
      {
        *buf = 136446466;
        v93 = "nw_protocol_shoes_input_available";
        v94 = 2082;
        v95 = v83;
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v83);
      if (!v76)
      {
        return;
      }

LABEL_168:
      free(v76);
      return;
    }

    if (v84)
    {
      *buf = 136446210;
      v93 = "nw_protocol_shoes_input_available";
      v79 = "%{public}s called with null shoes, no backtrace";
LABEL_166:
      _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
      goto LABEL_167;
    }

    goto LABEL_167;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v93 = "nw_protocol_shoes_input_available";
    v94 = 2082;
    v95 = handle + 159;
    v7 = "%{public}s %{public}s No input handler";
    v8 = v6;
LABEL_97:
    v60 = OS_LOG_TYPE_ERROR;
LABEL_98:
    v61 = 22;
    goto LABEL_99;
  }

  if (handle[158] == 6)
  {
    input_available = default_input_handler->callbacks->input_available;

    input_available();
    return;
  }

  output_handler = a1->output_handler;
  *v88 = 0;
  v89 = v88;
  if ((output_handler->callbacks->get_input_frames)())
  {
    v10 = *v88;
    if (*v88)
    {
      do
      {
        v16 = (v10 + 32);
        v15 = *(v10 + 32);
        if (v15 || *(v10 + 40))
        {
          if (!*(v10 + 112))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = 0;
          if (!*(v10 + 112))
          {
            goto LABEL_27;
          }
        }

        if ((*(v10 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v10, *(v10 + 88)))
        {
          v18 = *(v10 + 52);
          v17 = *(v10 + 56);
          if (v18)
          {
            v19 = v18 - (v17 + *(v10 + 60));
          }

          else
          {
            v19 = 0;
          }

          v20 = *(v10 + 112) + v17;
          goto LABEL_28;
        }

LABEL_27:
        v19 = 0;
        v20 = 0;
LABEL_28:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v93 = "nw_protocol_shoes_input_available";
          v94 = 2082;
          v95 = handle + 159;
          v96 = 1024;
          v97 = v19;
          v98 = 2048;
          *v99 = v20;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Read frame has %u bytes (%p)", buf, 0x26u);
        }

        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        v13 = (v11 + 40);
        if (!v11)
        {
          v13 = &v89;
        }

        *v13 = v12;
        *v12 = v11;
        *v16 = 0;
        *(v10 + 40) = 0;
        v14 = *(handle + 17);
        *(v10 + 40) = v14;
        *v14 = v10;
        *(handle + 17) = v16;
        v10 = v15;
      }

      while (v15);
    }
  }

  else if (gLogDatapath == 1)
  {
    v85 = __nwlog_obj();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v93 = "nw_protocol_shoes_input_available";
      v94 = 2082;
      v95 = handle + 159;
      _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Got 0 input frames", buf, 0x16u);
    }
  }

  v22 = handle + 159;
  while (1)
  {
    if (!*(handle + 16))
    {
      return;
    }

    v23 = handle[158];
    if (v23 != 5)
    {
      if (handle[158] <= 2u)
      {
        if (v23 == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          *buf = 136446466;
          v93 = "nw_shoes_service_reads";
          v94 = 2082;
          v95 = v22;
          v7 = "%{public}s %{public}s Tried to read packets in initial state";
        }

        else
        {
          if (v23 != 2)
          {
LABEL_101:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v63 = handle[158];
            *buf = 136446722;
            v93 = "nw_shoes_service_reads";
            v94 = 2082;
            v95 = handle + 159;
            v96 = 1024;
            v97 = v63;
            v7 = "%{public}s %{public}s Tried to read packets in unknown state %u";
            v8 = v62;
            v60 = OS_LOG_TYPE_ERROR;
            v61 = 28;
LABEL_99:
            _os_log_impl(&dword_181A37000, v8, v60, v7, buf, v61);
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          *buf = 136446466;
          v93 = "nw_shoes_service_reads";
          v94 = 2082;
          v95 = v22;
          v7 = "%{public}s %{public}s Tried to read packets in waiting for TFO state";
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v59 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 136446466;
            v93 = "nw_shoes_service_reads";
            v94 = 2082;
            v95 = v22;
            v7 = "%{public}s %{public}s Tried to read packets in waiting for UDP associate state";
            break;
          case 7:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v59 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 136446466;
            v93 = "nw_shoes_service_reads";
            v94 = 2082;
            v95 = v22;
            v7 = "%{public}s %{public}s Tried to read packets in failed state";
            break;
          case 6:
            (*(*(*(handle + 6) + 24) + 64))();
            return;
          default:
            goto LABEL_101;
        }
      }

      v8 = v59;
      goto LABEL_97;
    }

    v24 = *(handle + 36);
    if (v24 <= 1 && !nw_shoes_read_into_buffer(handle, (handle + 154), (2 - v24), v24))
    {
      break;
    }

    v25 = bswap32(*(handle + 77)) >> 16;
    if (v25)
    {
      if (v25 == 1)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v93 = "nw_shoes_read_reply";
          v94 = 2082;
          v95 = handle + 159;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received invalid shoes reply length one", buf, 0x16u);
        }

        nw_protocol_shoes_error(handle, handle, 422052353);
        handle[243] |= 0x10u;
        v65 = __nwlog_obj();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v93 = "nw_shoes_internal_disconnect";
          v94 = 2082;
          v95 = handle + 159;
          _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
        }

        handle[158] = 7;
        (*(*(handle + 3) + 48))(handle, 0);
        return;
      }

      v26 = *(handle + 36);
      if (v26 > 3)
      {
LABEL_43:
        v27 = v25 + 2;
        v28 = v25 + 2 - v26;
        if (v28)
        {
          v29 = nw_calloc_type<unsigned char>((v25 + 2 - v26));
          if (v27 <= *(handle + 36))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v29 = 0;
          if (v27 <= v26)
          {
            goto LABEL_50;
          }
        }

        if (!nw_shoes_read_into_buffer(handle, v29, v28, 0))
        {
          if (gLogDatapath == 1)
          {
            v86 = __nwlog_obj();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v93 = "nw_shoes_read_reply";
              v94 = 2082;
              v95 = v22;
              _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Failed to read shoes rest of reply", buf, 0x16u);
            }
          }

          if (!v29)
          {
            return;
          }

LABEL_136:
          free(v29);
          return;
        }

LABEL_50:
        v31 = handle[156];
        if (!handle[156])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v33 = handle[157];
            *buf = 136446978;
            v93 = "nw_shoes_read_reply";
            v94 = 2082;
            v95 = handle + 159;
            v96 = 1024;
            v97 = v25;
            v98 = 1024;
            *v99 = v33;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s %{public}s Received successful shoes reply from server with inner length %u code %u", buf, 0x22u);
          }

          nw_shoes_read_reply_tlvs(handle, v29, v28, 1);
          if (v29)
          {
            free(v29);
          }

          goto LABEL_55;
        }

        v67 = handle[157];
        v68 = 422052352;
        if (handle[156] <= 2u)
        {
          v70 = v67 | 0x19280100;
          if (v31 != 2)
          {
            v67 = 422052352;
          }

          if (v31 == 1)
          {
            v68 = v70;
          }

          else
          {
            v68 = v67;
          }
        }

        else if (v31 == 3)
        {
          v68 = v67 | 0xFFFEFF00;
        }

        else
        {
          if (v31 == 4)
          {
            v69 = -10055;
          }

          else
          {
            if (v31 != 5)
            {
              goto LABEL_131;
            }

            v69 = -11999;
          }

          v68 = v67 + v69;
        }

LABEL_131:
        v71 = __nwlog_obj();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = handle[156];
          v73 = handle[157];
          *buf = 136447490;
          v93 = "nw_shoes_read_reply";
          v94 = 2082;
          v95 = handle + 159;
          v96 = 1024;
          v97 = v68;
          v98 = 1024;
          *v99 = v72;
          *&v99[4] = 1024;
          *&v99[6] = v73;
          LOWORD(v100) = 1024;
          *(&v100 + 2) = v25;
          _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received shoes error %d domain %u code %u inner length %u", buf, 0x2Eu);
        }

        nw_shoes_read_reply_tlvs(handle, v29, v28, 0);
        nw_protocol_shoes_error(handle, handle, v68);
        handle[243] |= 0x10u;
        v74 = __nwlog_obj();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v93 = "nw_shoes_internal_disconnect";
          v94 = 2082;
          v95 = handle + 159;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
        }

        handle[158] = 7;
        (*(*(handle + 3) + 48))(handle, 0);
        if (!v29)
        {
          return;
        }

        goto LABEL_136;
      }

      if (nw_shoes_read_into_buffer(handle, (handle + 154), (4 - v26), v26))
      {
        LODWORD(v26) = *(handle + 36);
        goto LABEL_43;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v66 = __nwlog_obj();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 136446466;
      v93 = "nw_shoes_read_reply";
      v94 = 2082;
      v95 = v22;
      v7 = "%{public}s %{public}s Failed to read shoes reply domain and error code";
LABEL_119:
      v8 = v66;
      v60 = OS_LOG_TYPE_DEBUG;
      goto LABEL_98;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v93 = "nw_shoes_read_reply";
      v94 = 2082;
      v95 = handle + 159;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s %{public}s Received successful empty shoes reply from server", buf, 0x16u);
    }

LABEL_55:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v93 = "nw_shoes_internal_connect";
      v94 = 2082;
      v95 = handle + 159;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}s ", buf, 0x16u);
    }

    handle[158] = 6;
    v35 = *(handle + 6);
    if ((handle[243] & 2) == 0)
    {
      goto LABEL_33;
    }

    v36 = *(handle + 5);
    if (!v36)
    {
      v47 = __nwlog_obj();
      *buf = 136446210;
      v93 = "nw_protocol_shoes_process_udp_associate_completion";
      LODWORD(v87) = 12;
      v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null shoes", buf, v87);
      type = OS_LOG_TYPE_ERROR;
      v90 = 0;
      if (!__nwlog_fault(v48, &type, &v90))
      {
        goto LABEL_79;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v93 = "nw_protocol_shoes_process_udp_associate_completion";
          v51 = v49;
          v52 = v50;
          v53 = "%{public}s called with null shoes";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (v90 == 1)
      {
        v54 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        HIDWORD(v87) = type;
        v56 = os_log_type_enabled(v55, type);
        if (v54)
        {
          if (v56)
          {
            *buf = 136446466;
            v93 = "nw_protocol_shoes_process_udp_associate_completion";
            v94 = 2082;
            v95 = v54;
            _os_log_impl(&dword_181A37000, v55, BYTE4(v87), "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          goto LABEL_79;
        }

        if (!v56)
        {
LABEL_79:
          if (v48)
          {
            free(v48);
          }

          goto LABEL_33;
        }

        *buf = 136446210;
        v93 = "nw_protocol_shoes_process_udp_associate_completion";
        v51 = v55;
        v52 = BYTE4(v87);
        v53 = "%{public}s called with null shoes, no backtrace";
      }

      else
      {
        v57 = __nwlog_obj();
        v58 = type;
        if (!os_log_type_enabled(v57, type))
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        v93 = "nw_protocol_shoes_process_udp_associate_completion";
        v51 = v57;
        v52 = v58;
        v53 = "%{public}s called with null shoes, backtrace limit exceeded";
      }

LABEL_78:
      _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      goto LABEL_79;
    }

    if ((*(v36 + 243) & 0xE) == 6)
    {
      v37 = *(v36 + 64);
      if (v37)
      {
        *(v36 + 64) = *(v36 + 32);
        nw_protocol_set_output_handler(handle, v37);
        nw_protocol_set_output_handler(v36, v37);
        *(v36 + 243) |= 8u;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(v36 + 152);
          v41 = *(v36 + 104);
          v40 = *(v36 + 112);
          *buf = 136447234;
          v93 = "nw_protocol_shoes_process_udp_associate_completion";
          v94 = 2082;
          v95 = (v36 + 159);
          v96 = 1024;
          v97 = v39;
          v98 = 2112;
          *v99 = v40;
          *&v99[8] = 2112;
          v100 = v41;
          v42 = v38;
          v43 = OS_LOG_TYPE_DEFAULT;
          v44 = "%{public}s %{public}s udp-associate completed with port %d to %@ and remote %@";
          v45 = 48;
LABEL_32:
          _os_log_impl(&dword_181A37000, v42, v43, v44, buf, v45);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v93 = "nw_protocol_shoes_process_udp_associate_completion";
          v94 = 2082;
          v95 = (v36 + 159);
          v42 = v46;
          v43 = OS_LOG_TYPE_ERROR;
          v44 = "%{public}s %{public}s udp-associate no output handler";
          v45 = 22;
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    (*(*(v35 + 24) + 40))(v35, handle);
  }

  if (gLogDatapath == 1)
  {
    v66 = __nwlog_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v93 = "nw_shoes_read_reply";
      v94 = 2082;
      v95 = v22;
      v7 = "%{public}s %{public}s Failed to read shoes reply length";
      goto LABEL_119;
    }
  }
}

BOOL nw_shoes_read_into_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 128);
  if (!v4)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  if (a2)
  {
    v8 = a2 + a4;
    while (1)
    {
      if (!v4)
      {
        goto LABEL_47;
      }

      v10 = *(v4 + 32);
      if (v10 || *(v4 + 40))
      {
        if (*(v4 + 112))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v10 = 0;
        if (*(v4 + 112))
        {
LABEL_14:
          if ((*(v4 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v4, *(v4 + 88)))
          {
            v11 = *(v4 + 52);
            if (v11)
            {
              v12 = *(v4 + 56);
              v13 = v11 - (v12 + *(v4 + 60));
              if (v13)
              {
                if (v13 >= v5 - v7)
                {
                  v14 = v5 - v7;
                }

                else
                {
                  v14 = v13;
                }

                memcpy((v8 + v7), (*(v4 + 112) + v12), v14);
                *(a1 + 144) += v14;
                v7 += v14;
                nw_frame_claim(v4, v15, v14, 0);
              }
            }
          }
        }
      }

      v9 = *(v4 + 52);
      if (v9)
      {
        if (v9 == *(v4 + 56) + *(v4 + 60))
        {
          v4 = v10;
        }

        if (v7 == v5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v4 = v10;
        if (v7 == v5)
        {
          goto LABEL_46;
        }
      }
    }
  }

  while (v4)
  {
    v16 = *(v4 + 32);
    if (v16 || *(v4 + 40))
    {
      if (*(v4 + 112))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
      if (*(v4 + 112))
      {
LABEL_32:
        if ((*(v4 + 204) & 0x100) == 0 || !g_channel_check_validity || (g_channel_check_validity)(v4, *(v4 + 88), a3, a4))
        {
          v17 = *(v4 + 52);
          if (v17)
          {
            v18 = v17 - (*(v4 + 56) + *(v4 + 60));
            if (v18)
            {
              if (v18 >= v5 - v7)
              {
                v19 = v5 - v7;
              }

              else
              {
                v19 = v18;
              }

              *(a1 + 144) += v19;
              v7 += v19;
              nw_frame_claim(v4, a2, v19, 0);
            }
          }
        }
      }
    }

    v20 = *(v4 + 52);
    if (v20)
    {
      if (v20 == *(v4 + 56) + *(v4 + 60))
      {
        v4 = v16;
      }
    }

    else
    {
      v4 = v16;
    }

    if (v7 == v5)
    {
LABEL_46:
      v7 = v5;
      break;
    }
  }

LABEL_47:
  for (i = *(a1 + 128); v4 != i; i = *(a1 + 128))
  {
    if (gLogDatapath == 1)
    {
      v29 = i;
      log = __nwlog_obj();
      v25 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
      i = v29;
      if (v25)
      {
        *buf = 136446722;
        v31 = "nw_shoes_read_into_buffer";
        v32 = 2082;
        v33 = a1 + 159;
        v34 = 2048;
        v35[0] = v29;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Finished reading from frame %p", buf, 0x20u);
        i = v29;
      }
    }

    v22 = *(i + 32);
    v23 = *(i + 40);
    v24 = (v22 + 40);
    if (!v22)
    {
      v24 = (a1 + 136);
    }

    *v24 = v23;
    *v23 = v22;
    *(i + 32) = 0;
    *(i + 40) = 0;
    nw_frame_finalize(i);
  }

  if (v7 >= v5)
  {
    return 1;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v27 = __nwlog_obj();
  result = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446978;
    v31 = "nw_shoes_read_into_buffer";
    v32 = 2082;
    v33 = a1 + 159;
    v34 = 1024;
    LODWORD(v35[0]) = v7;
    WORD2(v35[0]) = 1024;
    *(v35 + 6) = v5;
    _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Read incomplete (%u < %u)", buf, 0x22u);
    return 0;
  }

  return result;
}

void nw_shoes_read_reply_tlvs(uint64_t a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v12 = "nw_shoes_read_reply_tlvs";
      v13 = 2082;
      v14 = a1 + 159;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s received shoes tlv(s) with total tlv buffer length %u", buf, 0x1Cu);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZL24nw_shoes_read_reply_tlvsP18_nw_protocol_shoesPhtb_block_invoke;
    v9[3] = &__block_descriptor_tmp_36;
    v9[4] = a1;
    v10 = a4;
    nw_shoes_tlv_parser(a2, a3, v9);
  }
}

void ___ZL24nw_shoes_read_reply_tlvsP18_nw_protocol_shoesPhtb_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v95 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = (v5 + 159);
    }

    else
    {
      v6 = "";
    }

    v7 = *a2;
    if (v7 > 9)
    {
      v8 = "unknown";
    }

    else
    {
      v8 = off_1E6A2B458[v7];
    }

    *buf = 136446722;
    *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v6;
    *&buf[22] = 2082;
    *&v90 = v8;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s processing shoes tlv: %{public}s", buf, 0x20u);
  }

  v9 = *a2;
  if (v9 == 8)
  {
    v45 = *(a2 + 1);
    v46 = __rev16(v45);
    v47 = a2[4];
    if (v47 == 2 && v45 != 4096)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v48 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v48)
      {
        v49 = (v48 + 159);
      }

      else
      {
        v49 = "";
      }

      *&buf[12] = 2082;
      *&buf[14] = v49;
      *&buf[22] = 1024;
      LODWORD(v90) = v46;
      WORD2(v90) = 2048;
      *(&v90 + 6) = 16;
      v44 = "%{public}s %{public}s Invalid TLV length (%u != %zu)";
      goto LABEL_89;
    }

    if (v47 == 30 && v45 != 7168)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v51 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v51)
      {
        v52 = (v51 + 159);
      }

      else
      {
        v52 = "";
      }

      *&buf[12] = 2082;
      *&buf[14] = v52;
      *&buf[22] = 1024;
      LODWORD(v90) = v46;
      WORD2(v90) = 2048;
      *(&v90 + 6) = 28;
      v44 = "%{public}s %{public}s Invalid TLV length (%u != %zu)";
      goto LABEL_89;
    }

    address = _nw_endpoint_create_address(a2 + 3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (address)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v64 = *(a1 + 32);
        if (v64)
        {
          v65 = (v64 + 159);
        }

        else
        {
          v65 = "";
        }

        description = nw_endpoint_get_description(address);
        *buf = 136446722;
        *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v65;
        *&buf[22] = 2080;
        *&v90 = description;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected resolved_endpoint endpoint for outer connection: %s", buf, 0x20u);
      }

      singleton = *(*(a1 + 32) + 96);
      if (singleton)
      {
        goto LABEL_114;
      }

      if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
      }

      singleton = _nw_protocol_metadata_create_singleton(nw_protocol_shoes_get_definition(void)::proxy_definition);
      *(*(a1 + 32) + 96) = singleton;
      if (singleton)
      {
LABEL_114:
        if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
        }

        if (nw_protocol_metadata_matches_definition(singleton, nw_protocol_shoes_get_definition(void)::proxy_definition))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v62 = ___ZL39nw_shoes_metadata_add_resolved_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke;
          v63 = &__block_descriptor_tmp_45;
LABEL_118:
          *&buf[16] = v62;
          *&v90 = v63;
          *(&v90 + 1) = address;
          handle = _nw_protocol_metadata_get_handle();
          if (handle)
          {
            (*&buf[16])(buf, handle);
          }

          goto LABEL_120;
        }

        v79 = __nwlog_obj();
        *v91 = 136446210;
        v92 = "nw_shoes_metadata_add_resolved_endpoint";
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s metadata must be shoes", v91, 12);
        type = OS_LOG_TYPE_ERROR;
        v87 = 0;
        if (__nwlog_fault(v73, &type, &v87))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v74 = __nwlog_obj();
            v75 = type;
            if (!os_log_type_enabled(v74, type))
            {
              goto LABEL_185;
            }

            *v91 = 136446210;
            v92 = "nw_shoes_metadata_add_resolved_endpoint";
            v76 = "%{public}s metadata must be shoes";
            goto LABEL_184;
          }

          if (v87 != 1)
          {
            v74 = __nwlog_obj();
            v75 = type;
            if (!os_log_type_enabled(v74, type))
            {
              goto LABEL_185;
            }

            *v91 = 136446210;
            v92 = "nw_shoes_metadata_add_resolved_endpoint";
            v76 = "%{public}s metadata must be shoes, backtrace limit exceeded";
            goto LABEL_184;
          }

          backtrace_string = __nw_create_backtrace_string();
          v74 = __nwlog_obj();
          v75 = type;
          v86 = os_log_type_enabled(v74, type);
          if (!backtrace_string)
          {
            if (!v86)
            {
              goto LABEL_185;
            }

            *v91 = 136446210;
            v92 = "nw_shoes_metadata_add_resolved_endpoint";
            v76 = "%{public}s metadata must be shoes, no backtrace";
            goto LABEL_184;
          }

          if (v86)
          {
            *v91 = 136446466;
            v92 = "nw_shoes_metadata_add_resolved_endpoint";
            v93 = 2082;
            v94 = backtrace_string;
            v84 = "%{public}s metadata must be shoes, dumping backtrace:%{public}s";
            goto LABEL_165;
          }

          goto LABEL_166;
        }

        goto LABEL_185;
      }

      v77 = __nwlog_obj();
      *v91 = 136446210;
      v92 = "nw_shoes_metadata_add_resolved_endpoint";
      v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null metadata", v91, 12);
      type = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (!__nwlog_fault(v73, &type, &v87))
      {
        goto LABEL_185;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v87 != 1)
        {
          v74 = __nwlog_obj();
          v75 = type;
          if (!os_log_type_enabled(v74, type))
          {
            goto LABEL_185;
          }

          *v91 = 136446210;
          v92 = "nw_shoes_metadata_add_resolved_endpoint";
          v76 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_184;
        }

        backtrace_string = __nw_create_backtrace_string();
        v74 = __nwlog_obj();
        v75 = type;
        v83 = os_log_type_enabled(v74, type);
        if (!backtrace_string)
        {
          if (!v83)
          {
            goto LABEL_185;
          }

          *v91 = 136446210;
          v92 = "nw_shoes_metadata_add_resolved_endpoint";
          v76 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_184;
        }

        if (v83)
        {
          *v91 = 136446466;
          v92 = "nw_shoes_metadata_add_resolved_endpoint";
          v93 = 2082;
          v94 = backtrace_string;
          v84 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_165:
          _os_log_impl(&dword_181A37000, v74, v75, v84, v91, 0x16u);
        }

LABEL_166:
        free(backtrace_string);
        if (!v73)
        {
          goto LABEL_120;
        }

        goto LABEL_186;
      }

      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_185;
      }

      *v91 = 136446210;
      v92 = "nw_shoes_metadata_add_resolved_endpoint";
      v76 = "%{public}s called with null metadata";
LABEL_184:
      _os_log_impl(&dword_181A37000, v74, v75, v76, v91, 0xCu);
      goto LABEL_185;
    }

    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v71 = *(a1 + 32);
    if (v71)
    {
      v70 = (v71 + 159);
    }

    else
    {
      v70 = "";
    }

LABEL_131:
    *buf = 136446466;
    *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v70;
    _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to create endpoint", buf, 0x16u);
    return;
  }

  if (v9 == 7)
  {
    v38 = *(a2 + 1);
    v39 = __rev16(v38);
    v40 = a2[4];
    if (v40 == 2 && v38 != 4096)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v42 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v42)
      {
        v43 = (v42 + 159);
      }

      else
      {
        v43 = "";
      }

LABEL_63:
      *&buf[12] = 2082;
      *&buf[14] = v43;
      *&buf[22] = 1024;
      LODWORD(v90) = v39;
      WORD2(v90) = 2048;
      *(&v90 + 6) = 8;
      v44 = "%{public}s %{public}s Invalid TLV length (%u != %zu)";
      goto LABEL_89;
    }

    if (v40 == 30 && v38 != 7168)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v50 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v50)
      {
        v43 = (v50 + 159);
      }

      else
      {
        v43 = "";
      }

      goto LABEL_63;
    }

    address = _nw_endpoint_create_address(a2 + 3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (address)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(a1 + 32);
        if (v58)
        {
          v59 = (v58 + 159);
        }

        else
        {
          v59 = "";
        }

        v60 = nw_endpoint_get_description(address);
        *buf = 136446722;
        *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v59;
        *&buf[22] = 2080;
        *&v90 = v60;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected remote endpoint from outer connection: %s", buf, 0x20u);
      }

      v61 = *(*(a1 + 32) + 96);
      if (v61)
      {
        goto LABEL_100;
      }

      if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
      }

      v61 = _nw_protocol_metadata_create_singleton(nw_protocol_shoes_get_definition(void)::proxy_definition);
      *(*(a1 + 32) + 96) = v61;
      if (v61)
      {
LABEL_100:
        if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
        }

        if (nw_protocol_metadata_matches_definition(v61, nw_protocol_shoes_get_definition(void)::proxy_definition))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v62 = ___ZL37nw_shoes_metadata_set_remote_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke;
          v63 = &__block_descriptor_tmp_44;
          goto LABEL_118;
        }

        v78 = __nwlog_obj();
        *v91 = 136446210;
        v92 = "nw_shoes_metadata_set_remote_endpoint";
        v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s metadata must be shoes", v91, 12);
        type = OS_LOG_TYPE_ERROR;
        v87 = 0;
        if (__nwlog_fault(v73, &type, &v87))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v74 = __nwlog_obj();
            v75 = type;
            if (!os_log_type_enabled(v74, type))
            {
              goto LABEL_185;
            }

            *v91 = 136446210;
            v92 = "nw_shoes_metadata_set_remote_endpoint";
            v76 = "%{public}s metadata must be shoes";
            goto LABEL_184;
          }

          if (v87 != 1)
          {
            v74 = __nwlog_obj();
            v75 = type;
            if (!os_log_type_enabled(v74, type))
            {
              goto LABEL_185;
            }

            *v91 = 136446210;
            v92 = "nw_shoes_metadata_set_remote_endpoint";
            v76 = "%{public}s metadata must be shoes, backtrace limit exceeded";
            goto LABEL_184;
          }

          backtrace_string = __nw_create_backtrace_string();
          v74 = __nwlog_obj();
          v75 = type;
          v85 = os_log_type_enabled(v74, type);
          if (!backtrace_string)
          {
            if (!v85)
            {
              goto LABEL_185;
            }

            *v91 = 136446210;
            v92 = "nw_shoes_metadata_set_remote_endpoint";
            v76 = "%{public}s metadata must be shoes, no backtrace";
            goto LABEL_184;
          }

          if (v85)
          {
            *v91 = 136446466;
            v92 = "nw_shoes_metadata_set_remote_endpoint";
            v93 = 2082;
            v94 = backtrace_string;
            v84 = "%{public}s metadata must be shoes, dumping backtrace:%{public}s";
            goto LABEL_165;
          }

          goto LABEL_166;
        }

LABEL_185:
        if (!v73)
        {
LABEL_120:
          v37 = address;
LABEL_121:
          os_release(v37);
          return;
        }

LABEL_186:
        free(v73);
        goto LABEL_120;
      }

      v72 = __nwlog_obj();
      *v91 = 136446210;
      v92 = "nw_shoes_metadata_set_remote_endpoint";
      v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null metadata", v91, 12);
      type = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (!__nwlog_fault(v73, &type, &v87))
      {
        goto LABEL_185;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v87 != 1)
        {
          v74 = __nwlog_obj();
          v75 = type;
          if (!os_log_type_enabled(v74, type))
          {
            goto LABEL_185;
          }

          *v91 = 136446210;
          v92 = "nw_shoes_metadata_set_remote_endpoint";
          v76 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_184;
        }

        v80 = __nw_create_backtrace_string();
        v74 = __nwlog_obj();
        v75 = type;
        v81 = os_log_type_enabled(v74, type);
        if (!v80)
        {
          if (!v81)
          {
            goto LABEL_185;
          }

          *v91 = 136446210;
          v92 = "nw_shoes_metadata_set_remote_endpoint";
          v76 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_184;
        }

        if (v81)
        {
          *v91 = 136446466;
          v92 = "nw_shoes_metadata_set_remote_endpoint";
          v93 = 2082;
          v94 = v80;
          _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null metadata, dumping backtrace:%{public}s", v91, 0x16u);
        }

        free(v80);
        goto LABEL_185;
      }

      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_185;
      }

      *v91 = 136446210;
      v92 = "nw_shoes_metadata_set_remote_endpoint";
      v76 = "%{public}s called with null metadata";
      goto LABEL_184;
    }

    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v69 = *(a1 + 32);
    if (v69)
    {
      v70 = (v69 + 159);
    }

    else
    {
      v70 = "";
    }

    goto LABEL_131;
  }

  if (v9 != 4)
  {
    return;
  }

  v10 = *(a2 + 1);
  if (!*(a2 + 1))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v53 = __rev16(v10);
    v54 = *(a1 + 32);
    *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
    *buf = 136446978;
    *&buf[12] = 2082;
    if (v54)
    {
      v55 = (v54 + 159);
    }

    else
    {
      v55 = "";
    }

    *&buf[14] = v55;
    *&buf[22] = 1024;
    LODWORD(v90) = v53;
    WORD2(v90) = 2048;
    *(&v90 + 6) = 1;
    v44 = "%{public}s %{public}s Invalid TLV length (%u < %zu)";
LABEL_89:
    _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, v44, buf, 0x26u);
    return;
  }

  if (a2[3])
  {
    v11 = (*(*(*(*(a1 + 32) + 48) + 24) + 112))();
    if (v11)
    {
      v12 = v11;
      v13 = _nw_parameters_copy_context();
      v14 = nw_path_copy_flow_registration(v13, *(a1 + 32));
      if (v13)
      {
        os_release(v13);
      }

      if (v14)
      {
        if (a2[3] < 0)
        {
          v15 = __nwlog_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 32);
            if (v16)
            {
              v17 = (v16 + 159);
            }

            else
            {
              v17 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v17;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected expensive network from outer connection", buf, 0x16u);
          }
        }

        if ((a2[3] & 0x20) != 0)
        {
          v18 = __nwlog_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 32);
            if (v19)
            {
              v20 = (v19 + 159);
            }

            else
            {
              v20 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v20;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected wifi network from outer connection", buf, 0x16u);
          }
        }

        if ((a2[3] & 0x40) != 0)
        {
          v21 = __nwlog_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 32);
            if (v22)
            {
              v23 = (v22 + 159);
            }

            else
            {
              v23 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v23;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected cellular network from outer connection", buf, 0x16u);
          }
        }

        if ((a2[3] & 0x10) != 0)
        {
          v24 = __nwlog_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 32);
            if (v25)
            {
              v26 = (v25 + 159);
            }

            else
            {
              v26 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected constrained network from outer connection", buf, 0x16u);
          }
        }

        v27 = a2[3];
        if ((v27 & 8) != 0)
        {
          v28 = __nwlog_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            if (v29)
            {
              v30 = (v29 + 159);
            }

            else
            {
              v30 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v30;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected denied interface from outer connection", buf, 0x16u);
          }

          effective_bundle_id = _nw_parameters_get_effective_bundle_id(v12);
          if (!effective_bundle_id)
          {
            if (nw_utilities_get_self_bundle_id::onceToken != -1)
            {
              dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
            }

            effective_bundle_id = nw_utilities_get_self_bundle_id::bundle_identifier_string;
          }

          nw_shoes_notify_interface_denied(effective_bundle_id, v32);
          v27 = a2[3];
        }

        v33 = *(a1 + 40);
        v34 = v14;
        v35 = v34;
        if (v33)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0x80;
        }

        v34[148] = v27 & 0x70 | (v27 >> 4) & 8 | v36 & 0xF8 | v34[148] & 7;

        v37 = v35;
        goto LABEL_121;
      }
    }
  }
}

void nw_shoes_notify_interface_denied(const char *a1, double a2)
{
  v23 = *MEMORY[0x1E69E9840];
  client = gotLoadHelper_x8__network_usage_policy_create_client(a2);
  if (!*(v3 + 1696))
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_shoes_notify_interface_denied";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null is_network_usage_policy_available()", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v20 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s called with null is_network_usage_policy_available()";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v16 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v20 = "nw_shoes_notify_interface_denied";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null is_network_usage_policy_available(), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v16)
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v20 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s called with null is_network_usage_policy_available(), no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v20 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s called with null is_network_usage_policy_available(), backtrace limit exceeded";
    }

LABEL_18:
    v12 = v5;
    v13 = v6;
LABEL_19:
    _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
    goto LABEL_20;
  }

  if (nw_shoes_get_network_usage_policy_client(void)::onceToken != -1)
  {
    dispatch_once(&nw_shoes_get_network_usage_policy_client(void)::onceToken, &__block_literal_global_43_781);
  }

  if (nw_shoes_get_network_usage_policy_client(void)::shared_policy_client)
  {
    perform_first_network_use_flow_delayInitStub(client);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v20 = "nw_shoes_notify_interface_denied";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s network_usage_policy_create_client failed", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
LABEL_20:
    if (!v4)
    {
      return;
    }

    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v20 = "nw_shoes_notify_interface_denied";
    v7 = "%{public}s network_usage_policy_create_client failed";
    goto LABEL_18;
  }

  if (v17 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v20 = "nw_shoes_notify_interface_denied";
    v7 = "%{public}s network_usage_policy_create_client failed, backtrace limit exceeded";
    goto LABEL_18;
  }

  v8 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(gLogObj, type);
  if (!v8)
  {
    if (v11)
    {
      *buf = 136446210;
      v20 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s network_usage_policy_create_client failed, no backtrace";
      v12 = v9;
      v13 = v10;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *buf = 136446466;
    v20 = "nw_shoes_notify_interface_denied";
    v21 = 2082;
    v22 = v8;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s network_usage_policy_create_client failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v8);
  if (v4)
  {
LABEL_21:
    free(v4);
  }
}

uint64_t ___ZL37nw_shoes_metadata_set_remote_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = os_retain(v3);
  }

  *a2 = v3;
  return 1;
}

uint64_t ___ZL39nw_shoes_metadata_add_resolved_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v3 = _nw_array_create();
    *(a2 + 8) = v3;
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    _nw_array_append(v3, v5);
  }

  return 1;
}

uint64_t ___ZL40nw_shoes_get_network_usage_policy_clientv_block_invoke(double a1)
{
  result = network_usage_policy_create_client_delayInitStub(a1);
  nw_shoes_get_network_usage_policy_client(void)::shared_policy_client = result;
  return result;
}

uint64_t nw_protocol_shoes_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_shoes_remove_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v18, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v30 = "nw_protocol_shoes_remove_input_handler";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_54;
      }

      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v24 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v24)
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v30 = "nw_protocol_shoes_remove_input_handler";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_54;
      }

      if (v24)
      {
        *buf = 136446466;
        v30 = "nw_protocol_shoes_remove_input_handler";
        v31 = 2082;
        v32 = backtrace_string;
        v25 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_44:
        _os_log_impl(&dword_181A37000, v19, v20, v25, buf, 0x16u);
      }

LABEL_45:
      free(backtrace_string);
      goto LABEL_55;
    }

    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_55;
    }

    *buf = 136446210;
    v30 = "nw_protocol_shoes_remove_input_handler";
    v21 = "%{public}s called with null protocol";
LABEL_54:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
LABEL_55:
    if (v18)
    {
      free(v18);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_shoes_remove_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v18, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_shoes_remove_input_handler";
      v21 = "%{public}s called with null shoes";
      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v30 = "nw_protocol_shoes_remove_input_handler";
      v21 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v20 = type;
    v26 = os_log_type_enabled(v19, type);
    if (backtrace_string)
    {
      if (v26)
      {
        *buf = 136446466;
        v30 = "nw_protocol_shoes_remove_input_handler";
        v31 = 2082;
        v32 = backtrace_string;
        v25 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v26)
    {
      goto LABEL_55;
    }

    *buf = 136446210;
    v30 = "nw_protocol_shoes_remove_input_handler";
    v21 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_54;
  }

  if (a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  output_handler = a1->output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  v9 = handle[8];
  if (v9)
  {
    (*(*(v9 + 24) + 8))();
    handle[8] = 0;
  }

  v10 = handle[11];
  if (v10)
  {
    nw_path_flow_registration_close(v10);
    v11 = handle[11];
    if (v11)
    {
      os_release(v11);
      handle[11] = 0;
    }
  }

  v12 = handle[9];
  if (v12)
  {
    os_release(v12);
    handle[9] = 0;
  }

  v13 = handle[10];
  if (v13)
  {
    os_release(v13);
    handle[10] = 0;
  }

  v14 = handle[12];
  if (v14)
  {
    os_release(v14);
    handle[12] = 0;
  }

  v15 = handle[14];
  if (v15)
  {
    os_release(v15);
    handle[14] = 0;
  }

  nw_protocol_set_input_handler(a1, 0);
  if (a3)
  {
    a1->handle = 0;
    v16 = handle[15];
    if (v16)
    {
      xpc_release(v16);
    }

    free(handle);
  }

  return 1;
}

BOOL nw_protocol_shoes_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_shoes_add_input_handler";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v26, &type, &v35))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_shoes_add_input_handler";
        v29 = "%{public}s called with null protocol";
LABEL_56:
        _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
      }

LABEL_57:
      if (v26)
      {
        free(v26);
      }

      return 0;
    }

    if (v35 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_shoes_add_input_handler";
        v29 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v32 = os_log_type_enabled(v27, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v38 = "nw_protocol_shoes_add_input_handler";
        v29 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v32)
    {
      *buf = 136446466;
      v38 = "nw_protocol_shoes_add_input_handler";
      v39 = 2082;
      v40 = backtrace_string;
      v33 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_46:
      _os_log_impl(&dword_181A37000, v27, v28, v33, buf, 0x16u);
    }

LABEL_47:
    free(backtrace_string);
    goto LABEL_57;
  }

  handle = a1->handle;
  if (!handle)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_shoes_add_input_handler";
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null shoes", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v26, &type, &v35))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_shoes_add_input_handler";
        v29 = "%{public}s called with null shoes";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v35 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v38 = "nw_protocol_shoes_add_input_handler";
        v29 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v34 = os_log_type_enabled(v27, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v38 = "nw_protocol_shoes_add_input_handler";
        v29 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v34)
    {
      *buf = 136446466;
      v38 = "nw_protocol_shoes_add_input_handler";
      v39 = 2082;
      v40 = backtrace_string;
      v33 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v5 = (a2->callbacks->get_remote_endpoint)(a2);
  v6 = nw_endpoint_get_type(v5);
  if (v6 - 1 < 2)
  {
    nw_protocol_set_input_handler(a1, a2);
    *handle = *a2->flow_id;
    if (a2->output_handler)
    {
      if (v5)
      {
LABEL_6:
        v7 = os_retain(v5);
LABEL_11:
        handle[16] = 0;
        handle[13] = v7;
        tls = 1;
        *(handle + 158) = 1;
        handle[17] = handle + 16;
        v12 = (a1->default_input_handler->callbacks->get_parameters)();
        if ((nw_parameters_get_tfo(v12) & 1) == 0)
        {
          tls = nw_parameters_get_tls(v12);
        }

        *(handle + 243) = *(handle + 243) & 0xFE | tls;
        v13 = nw_parameters_copy_protocol_value(v12, a1, "UDP");
        if (v13)
        {
          v14 = v13;
          value = xpc_BOOL_get_value(v13);
          xpc_release(v14);
          if (value)
          {
            v16 = 2;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        *(handle + 243) = *(handle + 243) & 0xFD | v16;
        v17 = nw_parameters_copy_protocol_value(v12, a1, "UDPAssociateSupported");
        if (v17)
        {
          v18 = v17;
          v19 = xpc_BOOL_get_value(v17);
          xpc_release(v18);
          if (v19)
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        *(handle + 243) = *(handle + 243) & 0xFB | v20;
        v21 = nw_parameters_copy_protocol_value(v12, a1, "FixedBundleID");
        if (v21)
        {
          v22 = v21;
          string_ptr = xpc_string_get_string_ptr(v21);
          xpc_release(v22);
          if (string_ptr)
          {
            handle[15] = xpc_string_create(string_ptr);
          }
        }

        v24 = nw_parameters_copy_protocol_options_legacy(v12, a1);
        nw_protocol_options_get_log_id_str(v24, handle + 159, 84);
        if (v24)
        {
          os_release(v24);
        }

        return 1;
      }
    }

    else
    {
      nw_protocol_set_output_handler(a2, handle);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  v8 = v6;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v38 = "nw_protocol_shoes_add_input_handler";
    v39 = 2082;
    v40 = handle + 159;
    v41 = 1024;
    v42 = v8;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s protocol_shoes does not support endpoint type %u", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void nw_shoes_metadata_enumerate_resolved_endpoints(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null metadata", buf, 12);
    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &v22, &v21))
    {
      goto LABEL_39;
    }

    if (v22 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v22;
      if (!os_log_type_enabled(v8, v22))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
      v10 = "%{public}s called with null metadata";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v22;
      v13 = os_log_type_enabled(v8, v22);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v7)
        {
          return;
        }

LABEL_40:
        free(v7);
        return;
      }

      if (!v13)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
      v10 = "%{public}s called with null metadata, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v22;
      if (!os_log_type_enabled(v8, v22))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
      v10 = "%{public}s called with null metadata, backtrace limit exceeded";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_39;
  }

  if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
  }

  if (nw_protocol_metadata_matches_definition(a1, nw_protocol_shoes_get_definition(void)::proxy_definition))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v24 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v18 = __nw_shoes_metadata_enumerate_resolved_endpoints_block_invoke;
    v19 = &unk_1E6A2B2C0;
    v20 = buf;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v18(v17, handle);
    }

    v5 = *(*&buf[8] + 24);
    if (v5)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_shoes_metadata_enumerate_resolved_endpoints_block_invoke_2;
      aBlock[3] = &unk_1E6A2B2E8;
      aBlock[4] = a2;
      _nw_array_apply(v5, aBlock);
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s metadata must be shoes", buf, 12);
  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v7, &v22, &v21))
  {
    goto LABEL_39;
  }

  if (v22 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v22;
    if (!os_log_type_enabled(v8, v22))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v10 = "%{public}s metadata must be shoes";
    goto LABEL_38;
  }

  if (v21 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v22;
    if (!os_log_type_enabled(v8, v22))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v10 = "%{public}s metadata must be shoes, backtrace limit exceeded";
    goto LABEL_38;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v22;
  v15 = os_log_type_enabled(v8, v22);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v10 = "%{public}s metadata must be shoes, no backtrace";
    goto LABEL_38;
  }

  if (v15)
  {
    *buf = 136446466;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    *&buf[12] = 2082;
    *&buf[14] = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be shoes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_40;
  }
}

uint64_t __nw_shoes_metadata_enumerate_resolved_endpoints_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = os_retain(v3);
  }

  return 1;
}

void nw_protocol_shoes_parameters_set_udp(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_BOOL_create(1);
    nw_parameters_set_protocol_value(a1, "UDP", v2);
    if (v2)
    {

      xpc_release(v2);
    }

    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_shoes_parameters_set_udp";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol_parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_udp";
      v7 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_udp";
      v7 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v13 = "nw_protocol_shoes_parameters_set_udp";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_udp";
      v7 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }
}

void nw_protocol_shoes_parameters_set_udp_associate_supported(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_BOOL_create(1);
    nw_parameters_set_protocol_value(a1, "UDPAssociateSupported", v2);
    if (v2)
    {

      xpc_release(v2);
    }

    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol_parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
      v7 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
      v7 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v13 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
      v7 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }
}

void nw_protocol_shoes_parameters_set_fixed_bundle_id(void *a1, char *string)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xpc_string_create(string);
    nw_parameters_set_protocol_value(a1, "FixedBundleID", v3);
    if (v3)
    {

      xpc_release(v3);
    }

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol_parameters", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
      v8 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v14 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
      v8 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
      v8 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }
}

void *nw_protocol_shoes_copy_definition()
{
  if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
  }

  result = nw_protocol_shoes_get_definition(void)::proxy_definition;
  if (nw_protocol_shoes_get_definition(void)::proxy_definition)
  {

    return os_retain(result);
  }

  return result;
}

uint64_t nw_protocol_http_sniffing_create::$_2::__invoke(nw_protocol_http_sniffing_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = *(this + 5);
    if (v3)
    {
      result = 0;
      *(v3 + 460) |= 2u;
      return result;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "operator()";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null http_sniffing", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_sniffing";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null http_sniffing, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http_sniffing, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "operator()";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "operator()";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "operator()";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v18 = "operator()";
    v9 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_32:
  if (v6)
  {
    free(v6);
  }

  return 1;
}