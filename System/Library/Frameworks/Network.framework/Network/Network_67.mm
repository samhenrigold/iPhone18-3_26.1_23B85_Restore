uint64_t nw_protocol_common_add_input_handler(char *a1, char *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_common_add_input_handler";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v13, &type, &v32))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s called with null protocol";
      goto LABEL_74;
    }

    if (v32 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_74;
    }

    if (!v25)
    {
      goto LABEL_54;
    }

    *buf = 136446466;
    v35 = "nw_protocol_common_add_input_handler";
    v36 = 2082;
    v37 = backtrace_string;
    v26 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_53:
    _os_log_impl(&dword_181A37000, v14, v15, v26, buf, 0x16u);
    goto LABEL_54;
  }

  if (!a2)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_common_add_input_handler";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v13, &type, &v32))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s called with null input_protocol";
      goto LABEL_74;
    }

    if (v32 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v27 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v27)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s called with null input_protocol, no backtrace";
      goto LABEL_74;
    }

    if (!v27)
    {
      goto LABEL_54;
    }

    *buf = 136446466;
    v35 = "nw_protocol_common_add_input_handler";
    v36 = 2082;
    v37 = backtrace_string;
    v26 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    goto LABEL_53;
  }

  if (a1 == a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446466;
    v35 = "nw_protocol_common_add_input_handler";
    v36 = 2048;
    v37 = a1;
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s Cannot add input handler %p to itself", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v19, &type, &v32))
    {
      goto LABEL_70;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_70;
      }

      *buf = 136446466;
      v35 = "nw_protocol_common_add_input_handler";
      v36 = 2048;
      v37 = a1;
      v22 = "%{public}s Cannot add input handler %p to itself";
    }

    else if (v32 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v29 = os_log_type_enabled(v20, type);
      if (v28)
      {
        if (v29)
        {
          *buf = 136446722;
          v35 = "nw_protocol_common_add_input_handler";
          v36 = 2048;
          v37 = a1;
          v38 = 2082;
          v39 = v28;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v28);
LABEL_70:
        if (v19)
        {
          v31 = v19;
LABEL_77:
          free(v31);
        }

        return 0;
      }

      if (!v29)
      {
        goto LABEL_70;
      }

      *buf = 136446466;
      v35 = "nw_protocol_common_add_input_handler";
      v36 = 2048;
      v37 = a1;
      v22 = "%{public}s Cannot add input handler %p to itself, no backtrace";
    }

    else
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_70;
      }

      *buf = 136446466;
      v35 = "nw_protocol_common_add_input_handler";
      v36 = 2048;
      v37 = a1;
      v22 = "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0x16u);
    goto LABEL_70;
  }

  if (*(a1 + 6))
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_common_add_input_handler";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s Default input handler already exists, common add input handler does not support multiplexing protocols", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v13, &type, &v32))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s Default input handler already exists, common add input handler does not support multiplexing protocols";
      goto LABEL_74;
    }

    if (v32 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      v16 = "%{public}s Default input handler already exists, common add input handler does not support multiplexing protocols, backtrace limit exceeded";
      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v30 = os_log_type_enabled(v14, type);
    if (backtrace_string)
    {
      if (v30)
      {
        *buf = 136446466;
        v35 = "nw_protocol_common_add_input_handler";
        v36 = 2082;
        v37 = backtrace_string;
        v26 = "%{public}s Default input handler already exists, common add input handler does not support multiplexing protocols, dumping backtrace:%{public}s";
        goto LABEL_53;
      }

LABEL_54:
      free(backtrace_string);
      goto LABEL_75;
    }

    if (!v30)
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v35 = "nw_protocol_common_add_input_handler";
    v16 = "%{public}s Default input handler already exists, common add input handler does not support multiplexing protocols, no backtrace";
LABEL_74:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
LABEL_75:
    if (v13)
    {
      v31 = v13;
      goto LABEL_77;
    }

    return 0;
  }

  *(a1 + 6) = a2;
  v4 = *(a2 + 5);
  v5 = a2;
  if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(a2 + 8)) != 0)
  {
    v6 = *(v5 + 11);
    if (v6)
    {
      *(v5 + 11) = v6 + 1;
    }
  }

  if (*(a2 + 4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v35 = "nw_protocol_common_add_input_handler";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
    }
  }

  else
  {
    *(a2 + 4) = a1;
    v8 = *(a1 + 5);
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a1 + 8)) != 0)
    {
      v10 = *(v9 + 11);
      if (v10)
      {
        *(v9 + 11) = v10 + 1;
      }
    }
  }

  *a1 = *a2;
  return 1;
}

uint64_t nw_protocol_plugin_retry_get_parameters(nw_protocol *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_plugin_retry_get_parameters";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v24, &type, &v42))
    {
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v45 = "nw_protocol_plugin_retry_get_parameters";
          v27 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v35 = os_log_type_enabled(v25, type);
      if (!backtrace_string)
      {
        if (v35)
        {
          *buf = 136446210;
          v45 = "nw_protocol_plugin_retry_get_parameters";
          v27 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      if (!v35)
      {
        goto LABEL_76;
      }

      *buf = 136446466;
      v45 = "nw_protocol_plugin_retry_get_parameters";
      v46 = 2082;
      v47 = backtrace_string;
      v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_75;
    }

    v25 = __nwlog_obj();
    v26 = type;
    if (!os_log_type_enabled(v25, type))
    {
      goto LABEL_107;
    }

    *buf = 136446210;
    v45 = "nw_protocol_plugin_retry_get_parameters";
    v27 = "%{public}s called with null protocol";
LABEL_106:
    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_107;
  }

  handle = a1->handle;
  if (!handle)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_plugin_retry_get_parameters";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v24, &type, &v42))
    {
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v45 = "nw_protocol_plugin_retry_get_parameters";
          v27 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v37 = os_log_type_enabled(v25, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v45 = "nw_protocol_plugin_retry_get_parameters";
          v27 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_106;
        }

        goto LABEL_107;
      }

      if (!v37)
      {
        goto LABEL_76;
      }

      *buf = 136446466;
      v45 = "nw_protocol_plugin_retry_get_parameters";
      v46 = 2082;
      v47 = backtrace_string;
      v36 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_75;
    }

    v25 = __nwlog_obj();
    v26 = type;
    if (!os_log_type_enabled(v25, type))
    {
      goto LABEL_107;
    }

    *buf = 136446210;
    v45 = "nw_protocol_plugin_retry_get_parameters";
    v27 = "%{public}s called with null protocol->handle";
    goto LABEL_106;
  }

  if (!handle[11])
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_plugin_retry_get_parameters";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null retry_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v24, &type, &v42))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_107;
      }

      *buf = 136446210;
      v45 = "nw_protocol_plugin_retry_get_parameters";
      v27 = "%{public}s called with null retry_plugin";
      goto LABEL_106;
    }

    if (v42 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v45 = "nw_protocol_plugin_retry_get_parameters";
        v27 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v38 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v38)
      {
        *buf = 136446210;
        v45 = "nw_protocol_plugin_retry_get_parameters";
        v27 = "%{public}s called with null retry_plugin, no backtrace";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    if (!v38)
    {
      goto LABEL_76;
    }

    *buf = 136446466;
    v45 = "nw_protocol_plugin_retry_get_parameters";
    v46 = 2082;
    v47 = backtrace_string;
    v36 = "%{public}s called with null retry_plugin, dumping backtrace:%{public}s";
LABEL_75:
    _os_log_impl(&dword_181A37000, v25, v26, v36, buf, 0x16u);
    goto LABEL_76;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    v3 = default_input_handler->handle;
    v4 = a1->default_input_handler;
    if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = *default_input_handler[1].flow_id) != 0)
    {
      callbacks = v4[1].callbacks;
      if (callbacks)
      {
        v5 = 0;
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
        v6 = default_input_handler->callbacks;
        if (!v6)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v5 = 0;
        v6 = default_input_handler->callbacks;
        if (!v6)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v5 = 1;
      v6 = default_input_handler->callbacks;
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    get_parameters = v6->get_parameters;
    if (get_parameters)
    {
      result = get_parameters(default_input_handler);
      if (v5)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_28:
    v16 = __nwlog_obj();
    name = default_input_handler->identifier->name;
    *buf = 136446722;
    v45 = "__nw_protocol_get_parameters";
    if (!name)
    {
      name = "invalid";
    }

    v46 = 2082;
    v47 = name;
    v48 = 2048;
    v49 = default_input_handler;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v18, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_94;
        }

        v21 = default_input_handler->identifier->name;
        if (!v21)
        {
          v21 = "invalid";
        }

        *buf = 136446722;
        v45 = "__nw_protocol_get_parameters";
        v46 = 2082;
        v47 = v21;
        v48 = 2048;
        v49 = default_input_handler;
        v22 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_93:
        _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x20u);
        goto LABEL_94;
      }

      if (v42 != 1)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_94;
        }

        v40 = default_input_handler->identifier->name;
        if (!v40)
        {
          v40 = "invalid";
        }

        *buf = 136446722;
        v45 = "__nw_protocol_get_parameters";
        v46 = 2082;
        v47 = v40;
        v48 = 2048;
        v49 = default_input_handler;
        v22 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
        goto LABEL_93;
      }

      v31 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v32 = os_log_type_enabled(v19, type);
      if (!v31)
      {
        if (!v32)
        {
          goto LABEL_94;
        }

        v41 = default_input_handler->identifier->name;
        if (!v41)
        {
          v41 = "invalid";
        }

        *buf = 136446722;
        v45 = "__nw_protocol_get_parameters";
        v46 = 2082;
        v47 = v41;
        v48 = 2048;
        v49 = default_input_handler;
        v22 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
        goto LABEL_93;
      }

      if (v32)
      {
        v33 = default_input_handler->identifier->name;
        if (!v33)
        {
          v33 = "invalid";
        }

        *buf = 136446978;
        v45 = "__nw_protocol_get_parameters";
        v46 = 2082;
        v47 = v33;
        v48 = 2048;
        v49 = default_input_handler;
        v50 = 2082;
        v51 = v31;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v31);
    }

LABEL_94:
    if (v18)
    {
      free(v18);
    }

    result = 0;
    if (v5)
    {
      return result;
    }

LABEL_16:
    v10 = default_input_handler->handle;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
    {
      v11 = default_input_handler[1].callbacks;
      if (v11)
      {
        v12 = (v11 - 1);
        default_input_handler[1].callbacks = v12;
        if (!v12)
        {
          v13 = result;
          v14 = *default_input_handler[1].flow_id;
          if (v14)
          {
            *default_input_handler[1].flow_id = 0;
            v14[2](v14);
            _Block_release(v14);
          }

          if (default_input_handler[1].flow_id[8])
          {
            v15 = *default_input_handler[1].flow_id;
            if (v15)
            {
              _Block_release(v15);
            }
          }

          free(default_input_handler);
          return v13;
        }
      }
    }

    return result;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  v45 = "__nw_protocol_get_parameters";
  v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (!__nwlog_fault(v24, &type, &v42))
  {
    goto LABEL_107;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v42 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v45 = "__nw_protocol_get_parameters";
        v27 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v39 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v45 = "__nw_protocol_get_parameters";
        v27 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_106;
      }

      goto LABEL_107;
    }

    if (v39)
    {
      *buf = 136446466;
      v45 = "__nw_protocol_get_parameters";
      v46 = 2082;
      v47 = backtrace_string;
      v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_75;
    }

LABEL_76:
    free(backtrace_string);
    goto LABEL_107;
  }

  v25 = __nwlog_obj();
  v26 = type;
  if (os_log_type_enabled(v25, type))
  {
    *buf = 136446210;
    v45 = "__nw_protocol_get_parameters";
    v27 = "%{public}s called with null protocol";
    goto LABEL_106;
  }

LABEL_107:
  if (v24)
  {
    free(v24);
  }

  return 0;
}

uint64_t nw_protocol_http_sniffing_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x1D0uLL, 0xCAA20E82uLL);
  v7 = v6;
  if (v6)
  {
    v6[27] = 0u;
    v6[28] = 0u;
    v6[25] = 0u;
    v6[26] = 0u;
    v6[23] = 0u;
    v6[24] = 0u;
    v6[21] = 0u;
    v6[22] = 0u;
    v6[19] = 0u;
    v6[20] = 0u;
    v6[17] = 0u;
    v6[18] = 0u;
    v6[15] = 0u;
    v6[16] = 0u;
    v6[13] = 0u;
    v6[14] = 0u;
    v6[11] = 0u;
    v6[12] = 0u;
    v6[9] = 0u;
    v6[10] = 0u;
    v6[7] = 0u;
    v6[8] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
LABEL_12:
    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v22 = "nw_protocol_http_sniffing_create";
        v23 = 2082;
        v24 = v7 + 114;
        v25 = 2080;
        v26 = " ";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  v22 = "nw_protocol_http_sniffing_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v23 = 2048;
  v24 = 1;
  v25 = 2048;
  v26 = 464;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v10);
  if (result || ((free(v10), MEMORY[0x1C0] = 0u, MEMORY[0x190] = 0u, MEMORY[0x180] = 0u, MEMORY[0x170] = 0u, MEMORY[0x160] = 0u, MEMORY[0x150] = 0u, MEMORY[0x140] = 0u, MEMORY[0x130] = 0u, MEMORY[0x120] = 0u, MEMORY[0x110] = 0u, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0xA0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, MEMORY[0xD8] = 0, MEMORY[0xE8] = 0, MEMORY[0x110] = 0, MEMORY[0x118] = 0, MEMORY[0x158] = 0, MEMORY[0x168] = 0, MEMORY[0x178] = 0, MEMORY[0x188] = 0, MEMORY[0x1B8] = 0u, MEMORY[0x1A8] = 0u, MEMORY[0x198] = 0u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v12 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v13 = 2) : (v13 = 3), *buf = 136446210, v22 = "nw_protocol_http_sniffing_create", LODWORD(v20) = 12, v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_placement_new(nw_protocol_http_sniffing, strict_calloc(1, sizeof(nw_protocol_http_sniffing)),) failed", buf, v20), result = __nwlog_should_abort(v14), result))
  {
    __break(1u);
    return result;
  }

  free(v14);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (nw_protocol_http_sniffing_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_sniffing_identifier::onceToken, &__block_literal_global_830);
  }

  *(v7 + 16) = &nw_protocol_http_sniffing_identifier::protocol_identifier;
  if (nw_protocol_http_sniffing_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_sniffing_get_callbacks(void)::onceToken, &__block_literal_global_16);
  }

  *(v7 + 24) = &nw_protocol_http_sniffing_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v15 = *(v7 + 368);
  if (v15)
  {
    v16 = *(v7 + 360);
    if (v16)
    {
      os_release(v16);
      v15 = *(v7 + 368);
    }
  }

  *(v7 + 360) = a3;
  *(v7 + 368) = v15 | 1;
  if (a4)
  {
    a4 = os_retain(a4);
  }

  v17 = *(v7 + 384);
  if (v17)
  {
    v18 = *(v7 + 376);
    if (v18)
    {
      os_release(v18);
      v17 = *(v7 + 384);
    }
  }

  *(v7 + 376) = a4;
  *(v7 + 384) = v17 | 1;
  *(v7 + 460) |= 1u;
  *(v7 + 328) = 0;
  *(v7 + 336) = v7 + 328;
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_sniffing_create::$_0::__invoke);
  *(v7 + 80) = v7 + 200;
  nw_protocol_plugin_reset_set_callbacks(v7, nw_protocol_http_sniffing_create::$_1::__invoke);
  *(v7 + 88) = v7 + 216;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_sniffing_create::$_2::__invoke, nw_protocol_http_sniffing_create::$_3::__invoke, nw_protocol_http_sniffing_create::$_4::__invoke);
  return v7;
}

void nw_protocol_plugin_reset_set_callbacks(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugin_reset_set_callbacks";
      v8 = "%{public}s called with null protocol";
LABEL_58:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_59;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugin_reset_set_callbacks";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugin_reset_set_callbacks";
      v8 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_58;
    }

    if (!v13)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v23 = 2082;
    v24 = backtrace_string;
    v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v6, v7, v14, buf, 0x16u);
    goto LABEL_35;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugin_reset_set_callbacks";
      v8 = "%{public}s called with null protocol->handle";
      goto LABEL_58;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugin_reset_set_callbacks";
      v8 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v15 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v15)
      {
        goto LABEL_59;
      }

      *buf = 136446210;
      v22 = "nw_protocol_plugin_reset_set_callbacks";
      v8 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_58;
    }

    if (!v15)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v23 = 2082;
    v24 = backtrace_string;
    v14 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
    goto LABEL_34;
  }

  v3 = *(v2 + 80);
  if (v3)
  {
    *v3 = a2;
    if (*(a1 + 24))
    {
      return;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null callbacks", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_59;
        }

        *buf = 136446210;
        v22 = "nw_protocol_plugin_reset_set_callbacks";
        v8 = "%{public}s called with null callbacks";
        goto LABEL_58;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_59;
        }

        *buf = 136446210;
        v22 = "nw_protocol_plugin_reset_set_callbacks";
        v8 = "%{public}s called with null callbacks, backtrace limit exceeded";
        goto LABEL_58;
      }

      v17 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v18 = os_log_type_enabled(v6, type);
      if (!v17)
      {
        if (!v18)
        {
          goto LABEL_59;
        }

        *buf = 136446210;
        v22 = "nw_protocol_plugin_reset_set_callbacks";
        v8 = "%{public}s called with null callbacks, no backtrace";
        goto LABEL_58;
      }

      if (v18)
      {
        *buf = 136446466;
        v22 = "nw_protocol_plugin_reset_set_callbacks";
        v23 = 2082;
        v24 = v17;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
    }

LABEL_59:
    if (v5)
    {
      goto LABEL_60;
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_plugin_reset_set_callbacks";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null reset_plugin", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_59;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_59;
    }

    *buf = 136446210;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v8 = "%{public}s called with null reset_plugin";
    goto LABEL_58;
  }

  if (v19 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_59;
    }

    *buf = 136446210;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v8 = "%{public}s called with null reset_plugin, backtrace limit exceeded";
    goto LABEL_58;
  }

  backtrace_string = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!backtrace_string)
  {
    if (!v16)
    {
      goto LABEL_59;
    }

    *buf = 136446210;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v8 = "%{public}s called with null reset_plugin, no backtrace";
    goto LABEL_58;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_plugin_reset_set_callbacks";
    v23 = 2082;
    v24 = backtrace_string;
    v14 = "%{public}s called with null reset_plugin, dumping backtrace:%{public}s";
    goto LABEL_34;
  }

LABEL_35:
  free(backtrace_string);
  if (v5)
  {
LABEL_60:
    free(v5);
  }
}

uint64_t nw_protocol_http_redirect_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x250uLL, 0xAEEAFDB5uLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x250uLL);
LABEL_12:
    if (gLogDatapath == 1)
    {
      v50 = __nwlog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_redirect_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 114;
        *&buf[22] = 2080;
        v78 = " ";
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_redirect_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v78 = 592;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v10);
  if (result || ((free(v10), bzero(0, 0x250uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x158] = 0, MEMORY[0x160] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, MEMORY[0x1C8] = 0, MEMORY[0x1D0] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, MEMORY[0x228] = 0, MEMORY[0x230] &= ~1u, MEMORY[0x238] = 0, MEMORY[0x240] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v12 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v13 = 2) : (v13 = 3), *buf = 136446210, *&buf[4] = "nw_protocol_http_redirect_create", LODWORD(v69) = 12, v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_placement_new(nw_protocol_http_redirect, strict_calloc(1, sizeof(nw_protocol_http_redirect)),) failed", buf, v69), result = __nwlog_should_abort(v14), result))
  {
    __break(1u);
    return result;
  }

  free(v14);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (nw_protocol_http_redirect_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_redirect_identifier::onceToken, &__block_literal_global_1346);
  }

  *(v7 + 16) = nw_protocol_http_redirect_identifier::protocol_identifier;
  if (nw_protocol_http_redirect_get_callbacks(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http_redirect_get_callbacks(void)::onceToken, &__block_literal_global_67);
  }

  *(v7 + 24) = &nw_protocol_http_redirect_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v15 = *(v7 + 544);
  if (v15)
  {
    v16 = *(v7 + 536);
    if (v16)
    {
      os_release(v16);
      v15 = *(v7 + 544);
    }
  }

  *(v7 + 536) = a3;
  *(v7 + 544) = v15 | 1;
  if (a4)
  {
    v17 = os_retain(a4);
    v18 = *(v7 + 560);
    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    v18 = *(v7 + 560);
    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v19 = *(v7 + 552);
  if (v19)
  {
    os_release(v19);
    v18 = *(v7 + 560);
  }

LABEL_28:
  *(v7 + 552) = v17;
  *(v7 + 560) = v18 | 1;
  v20 = nw_parameters_copy_context(a4);
  v21 = *(v7 + 576);
  if ((v21 & 1) != 0 && *(v7 + 568))
  {
    v22 = v20;
    os_release(*(v7 + 568));
    v20 = v22;
    v21 = *(v7 + 576);
  }

  *(v7 + 568) = v20;
  *(v7 + 576) = v21 | 1;
  *(v7 + 588) = *(v7 + 588) & 0xFE | nw_parameters_get_server_mode(a4) | 0x10;
  if (nw_protocol_copy_http_redirect_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
  }

  v23 = nw_protocol_copy_http_redirect_definition_http_redirect_definition;
  v24 = nw_parameters_copy_protocol_options_for_definition(a4, v23);
  v25 = v24;
  if (v24)
  {
    v26 = nw_protocol_copy_http_redirect_definition_onceToken;
    v27 = v24;
    if (v26 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
    }

    v28 = nw_protocol_options_matches_definition(v27, nw_protocol_copy_http_redirect_definition_http_redirect_definition);

    if (v28)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v78 = __Block_byref_object_copy__7;
      v79 = __Block_byref_object_dispose__8;
      v80 = 0;
      *type = MEMORY[0x1E69E9820];
      v72 = 3221225472;
      v73 = __nw_http_redirect_options_copy_handler_block_invoke;
      v74 = &unk_1E6A3A858;
      v75 = buf;
      nw_protocol_options_access_handle(v27, type);
      v29 = _Block_copy(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);

      goto LABEL_38;
    }

    v51 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_copy_handler";
    LODWORD(v68) = 12;
    v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v51, 16, "%{public}s protocol options are not http redirect", buf, v68);

    type[0] = OS_LOG_TYPE_ERROR;
    v76 = 0;
    v43 = v70;
    if (__nwlog_fault(v70, type, &v76))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v52 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler";
          _os_log_impl(&dword_181A37000, v44, v52, "%{public}s protocol options are not http redirect", buf, 0xCu);
        }

LABEL_108:

        goto LABEL_121;
      }

      if (v76 != 1)
      {
        v44 = __nwlog_obj();
        v66 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler";
          _os_log_impl(&dword_181A37000, v44, v66, "%{public}s protocol options are not http redirect, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_108;
      }

      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      HIDWORD(v68) = type[0];
      v61 = os_log_type_enabled(v56, type[0]);
      if (backtrace_string)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_redirect_options_copy_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v56, BYTE4(v68), "%{public}s protocol options are not http redirect, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_94:

        free(backtrace_string);
LABEL_121:
        v43 = v70;
        goto LABEL_122;
      }

      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_options_copy_handler";
        _os_log_impl(&dword_181A37000, v56, BYTE4(v68), "%{public}s protocol options are not http redirect, no backtrace", buf, 0xCu);
      }

      goto LABEL_120;
    }
  }

  else
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_copy_handler";
    LODWORD(v68) = 12;
    v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null options", buf, v68);

    type[0] = OS_LOG_TYPE_ERROR;
    v76 = 0;
    v43 = v70;
    if (__nwlog_fault(v70, type, &v76))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_108;
      }

      if (v76 != 1)
      {
        v44 = __nwlog_obj();
        v64 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler";
          _os_log_impl(&dword_181A37000, v44, v64, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_108;
      }

      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      HIDWORD(v68) = type[0];
      v57 = os_log_type_enabled(v56, type[0]);
      if (backtrace_string)
      {
        if (v57)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_redirect_options_copy_handler";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v56, BYTE4(v68), "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_94;
      }

      if (v57)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_redirect_options_copy_handler";
        _os_log_impl(&dword_181A37000, v56, BYTE4(v68), "%{public}s called with null options, no backtrace", buf, 0xCu);
      }

LABEL_120:

      goto LABEL_121;
    }
  }

LABEL_122:
  if (v43)
  {
    free(v43);
  }

  v29 = 0;
LABEL_38:

  v30 = *(v7 + 496);
  if (v30)
  {
    v31 = *(v7 + 488);
    if (v31)
    {
      _Block_release(v31);
      v30 = *(v7 + 496);
    }
  }

  *(v7 + 488) = v29;
  *(v7 + 496) = v30 | 1;
  v32 = v25;
  v33 = v32;
  if (!v25)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
    LODWORD(v68) = 12;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null options", buf, v68);

    type[0] = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (__nwlog_fault(v47, type, &v76))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_127;
      }

      if (v76 != 1)
      {
        v48 = __nwlog_obj();
        v65 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
          _os_log_impl(&dword_181A37000, v48, v65, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_127;
      }

      v58 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v59 = type[0];
      v60 = os_log_type_enabled(v48, type[0]);
      if (!v58)
      {
        if (v60)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
          _os_log_impl(&dword_181A37000, v48, v59, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_127;
      }

      if (v60)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        _os_log_impl(&dword_181A37000, v48, v59, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_99:

      free(v58);
    }

LABEL_128:
    if (v47)
    {
      free(v47);
    }

    v37 = 0;
    goto LABEL_46;
  }

  v34 = nw_protocol_copy_http_redirect_definition_onceToken;
  v35 = v32;
  if (v34 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
  }

  v36 = nw_protocol_options_matches_definition(v35, nw_protocol_copy_http_redirect_definition_http_redirect_definition);

  if ((v36 & 1) == 0)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
    LODWORD(v68) = 12;
    v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s protocol options are not http redirect", buf, v68);

    type[0] = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (__nwlog_fault(v47, type, &v76))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v54 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
          _os_log_impl(&dword_181A37000, v48, v54, "%{public}s protocol options are not http redirect", buf, 0xCu);
        }

LABEL_127:

        goto LABEL_128;
      }

      if (v76 != 1)
      {
        v48 = __nwlog_obj();
        v67 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
          _os_log_impl(&dword_181A37000, v48, v67, "%{public}s protocol options are not http redirect, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_127;
      }

      v58 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v62 = type[0];
      v63 = os_log_type_enabled(v48, type[0]);
      if (!v58)
      {
        if (v63)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
          _os_log_impl(&dword_181A37000, v48, v62, "%{public}s protocol options are not http redirect, no backtrace", buf, 0xCu);
        }

        goto LABEL_127;
      }

      if (v63)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_options_copy_handler_queue";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        _os_log_impl(&dword_181A37000, v48, v62, "%{public}s protocol options are not http redirect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_99;
    }

    goto LABEL_128;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v78 = __Block_byref_object_copy__75915;
  v79 = __Block_byref_object_dispose__75916;
  v80 = 0;
  *type = MEMORY[0x1E69E9820];
  v72 = 3221225472;
  v73 = __nw_http_redirect_options_copy_handler_queue_block_invoke;
  v74 = &unk_1E6A3A858;
  v75 = buf;
  nw_protocol_options_access_handle(v35, type);
  v37 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_46:
  v38 = *(v7 + 512);
  if (v38)
  {
    v39 = *(v7 + 504);
    if (v39)
    {
      dispatch_release(v39);
      v38 = *(v7 + 512);
    }
  }

  *(v7 + 504) = v37;
  *(v7 + 512) = v38 | 1;
  limit = nw_http_redirect_options_get_limit(v33);
  *(v7 + 200) = 0;
  *(v7 + 584) = limit;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v41 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v41, nw_protocol_http_redirect_create::$_0::__invoke, nw_protocol_http_redirect_create::$_1::__invoke);
  if (v41)
  {
    os_release(v41);
  }

  *(v7 + 88) = v7 + 344;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_redirect_create::$_2::__invoke, nw_protocol_http_redirect_create::$_3::__invoke, nw_protocol_http_redirect_create::$_4::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_redirect_create::$_5::__invoke);
  if (v25)
  {
    os_release(v33);
  }

  if (v23)
  {
    os_release(v23);
  }

  return v7;
}

void sub_181E944BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_redirect_options_copy_handler_block_invoke(uint64_t a1, const void **a2)
{
  v3 = _Block_copy(*a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t nw_http_redirect_options_get_limit(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_redirect_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_redirect_definition_onceToken, &__block_literal_global_42_76791);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_redirect_definition_http_redirect_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_redirect_options_get_limit_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_get_limit";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http redirect", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http redirect", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http redirect, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http redirect, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http redirect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_redirect_options_get_limit";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_redirect_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_redirect_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E94AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_encoding_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x228uLL, 0x74EAECDAuLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x228uLL);
LABEL_12:
    if (gLogDatapath == 1)
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_encoding_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 114;
        *&buf[22] = 2080;
        v55 = " ";
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_encoding_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v55 = 552;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  if (__nwlog_should_abort(v10) || ((free(v10), bzero(0, 0x228uLL), MEMORY[0xD8] = 0, MEMORY[0xE0] &= ~1u, MEMORY[0xE8] = 0, MEMORY[0xF0] &= ~1u, MEMORY[0x110] = 0, MEMORY[0x118] &= ~1u, MEMORY[0x178] = 0, MEMORY[0x180] &= ~1u, MEMORY[0x188] = 0, MEMORY[0x190] &= ~1u, MEMORY[0x198] = 0, MEMORY[0x1A0] &= ~1u, MEMORY[0x1A8] = 0, MEMORY[0x1B0] &= ~1u, MEMORY[0x1C0] = 0, MEMORY[0x1B8] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v11 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v12 = 2) : (v12 = 3), *buf = 136446210, *&buf[4] = "nw_protocol_http_encoding_create", LODWORD(v53) = 12, v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s strict_placement_new(nw_protocol_http_encoding, strict_calloc(1, sizeof(nw_protocol_http_encoding)),) failed", buf, v53), __nwlog_should_abort(v13)))
  {
    __break(1u);
LABEL_64:
    v38 = __nwlog_obj();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_encoder_create_raw_deflate";
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    goto LABEL_81;
  }

  free(v13);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (nw_protocol_http_encoding_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_encoding_identifier::onceToken, &__block_literal_global_35744);
  }

  *(v7 + 16) = nw_protocol_http_encoding_identifier::protocol_identifier;
  if (nw_protocol_http_encoding_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_encoding_get_callbacks(void)::onceToken, &__block_literal_global_20_35745);
  }

  *(v7 + 24) = &nw_protocol_http_encoding_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v14 = *(v7 + 416);
  if (v14)
  {
    v15 = *(v7 + 408);
    if (v15)
    {
      os_release(v15);
      v14 = *(v7 + 416);
    }
  }

  *(v7 + 408) = a3;
  *(v7 + 416) = v14 | 1;
  if (a4)
  {
    v16 = os_retain(a4);
    v17 = *(v7 + 432);
    if ((v17 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
    v17 = *(v7 + 432);
    if ((v17 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v18 = *(v7 + 424);
  if (v18)
  {
    os_release(v18);
    v17 = *(v7 + 432);
  }

LABEL_28:
  *(v7 + 424) = v16;
  *(v7 + 432) = v17 | 1;
  *(v7 + 544) = *(v7 + 544) & 0xFFFE | nw_parameters_get_server_mode(a4);
  *(v7 + 456) = 0;
  *(v7 + 464) = v7 + 456;
  *(v7 + 472) = 0;
  *(v7 + 480) = v7 + 472;
  *(v7 + 488) = 0;
  *(v7 + 496) = v7 + 488;
  *(v7 + 504) = 0;
  *(v7 + 512) = v7 + 504;
  *(v7 + 520) = 0;
  *(v7 + 528) = v7 + 520;
  nw_frame_cache_init((v7 + 336), v7, 256, 0x40000, 0);
  if (nw_protocol_copy_http_encoding_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_encoding_definition_onceToken, &__block_literal_global_40_76731);
  }

  v19 = nw_protocol_copy_http_encoding_definition_http_encoding_definition;
  v20 = nw_parameters_copy_protocol_options_for_definition(a4, v19);
  type = nw_http_encoding_options_get_type(v20);
  v22 = 0;
  *(v7 + 536) = type;
  if (type <= 3)
  {
    if (type == 2)
    {
      v34 = malloc_type_calloc(1uLL, 0x80uLL, 0xB8B427E0uLL);
      if (v34)
      {
        v22 = v34;
        *v34 = &unk_1EEFDA0B0;
        *(v34 + 30) = 31;
        v29 = (v34 + 8);
        v30 = 31;
        goto LABEL_51;
      }

      v38 = __nwlog_obj();
      v48 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_encoder_create_gzip";
      if (v48)
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_52;
      }

      v28 = malloc_type_calloc(1uLL, 0x80uLL, 0x362F5EF9uLL);
      if (v28)
      {
        v22 = v28;
        *v28 = &unk_1EEFDA0B0;
        *(v28 + 30) = 15;
        v29 = (v28 + 8);
        v30 = 15;
LABEL_51:
        deflateInit2_(v29, -1, 8, v30, 8, 0, "1.2.12", 112);
        goto LABEL_52;
      }

      v38 = __nwlog_obj();
      v49 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_encoder_create_deflate";
      if (v49)
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }
    }

LABEL_81:
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    LODWORD(v53) = 32;
    v44 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v53, *buf, *&buf[8], 128);
    goto LABEL_86;
  }

  switch(type)
  {
    case 4:
      v31 = malloc_type_calloc(1uLL, 0x80uLL, 0x5D1DB915uLL);
      if (v31)
      {
        v22 = v31;
        *v31 = &unk_1EEFDA0B0;
        *(v31 + 30) = -15;
        v29 = (v31 + 8);
        v30 = -15;
        goto LABEL_51;
      }

      goto LABEL_64;
    case 5:
      v32 = malloc_type_calloc(1uLL, 0x30uLL, 0xF03B68C5uLL);
      if (v32)
      {
        v22 = v32;
        *v32 = &unk_1EEFDA0D8;
        if (compression_stream_init((v32 + 8), COMPRESSION_STREAM_ENCODE, COMPRESSION_BROTLI))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "brotli_encoder";
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s init failed", buf, 0xCu);
          }
        }

        break;
      }

      v41 = __nwlog_obj();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_encoder_create_brotli";
      if (v42)
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      LODWORD(v53) = 32;
      v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v53, *buf, *&buf[8], 48);
      goto LABEL_86;
    case 6:
      v23 = malloc_type_calloc(1uLL, 0x10uLL, 0x6AD94E8EuLL);
      if (v23)
      {
        v22 = v23;
        *v23 = &unk_1EEFDA100;
        v24 = malloc_type_calloc(1uLL, 8uLL, 0xBFC633F2uLL);
        if (v24)
        {
          v25 = v24;
          *v24 = 0;
          v26 = malloc_type_malloc(0x1478uLL, 0xB2223D72uLL);
          v27 = v26;
          if (v26)
          {
            bzero(v26, 0x1478uLL);
            *(v27 + 465) = 0;
            *(v27 + 3688) = 0u;
            *(v27 + 3704) = 0u;
            *(v27 + 3656) = 0u;
            *(v27 + 3672) = 0u;
            *(v27 + 1) = 0u;
            *(v27 + 2) = 0u;
            *(v27 + 3) = 0u;
            *(v27 + 4) = 0u;
            *(v27 + 5) = 0u;
            *(v27 + 6) = 0u;
            *(v27 + 7) = 0u;
            *(v27 + 8) = 0u;
            *(v27 + 9) = 0u;
            *(v27 + 10) = 0u;
            *(v27 + 11) = 0u;
            *(v27 + 12) = 0u;
            *(v27 + 13) = 0u;
            *(v27 + 28) = 0;
            *(v27 + 15) = 3;
            *(v27 + 12) = 1;
          }

          *v25 = v27;
          *(v22 + 1) = v25;
          break;
        }

        v50 = __nwlog_obj();
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_encoder_zstd_create";
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        LODWORD(v53) = 32;
        v44 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v53, *buf, *&buf[8], 8);
      }

      else
      {
        v45 = __nwlog_obj();
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_encoder_create_zstd";
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        LODWORD(v53) = 32;
        v44 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v53, *buf, *&buf[8], 16);
      }

LABEL_86:
      result = __nwlog_should_abort(v44);
      __break(1u);
      return result;
  }

LABEL_52:
  v35 = *(v7 + 448);
  if (v35 != v22)
  {
    if (v35)
    {
      (**v35)(*(v7 + 448));
      free(v35);
    }

    *(v7 + 448) = v22;
  }

  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_encoding_create::$_0::__invoke);
  *(v7 + 80) = v7 + 200;
  nw_protocol_plugin_reset_set_callbacks(v7, nw_protocol_http_encoding_create::$_1::__invoke);
  *(v7 + 88) = v7 + 216;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_encoding_create::$_2::__invoke, nw_protocol_http_encoding_create::$_3::__invoke, nw_protocol_http_encoding_create::$_4::__invoke);
  if (v20)
  {
    os_release(v20);
  }

  if (v19)
  {
    os_release(v19);
  }

  return v7;
}

void nw_frame_cache_init(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_frame_cache_init";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null frame_cache", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &type, &v24))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null frame_cache";
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v18 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_frame_cache_init";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_62:
        if (!v6)
        {
          return;
        }

        goto LABEL_63;
      }

      if (!v18)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null frame_cache, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null frame_cache, backtrace limit exceeded";
    }

    goto LABEL_61;
  }

  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_frame_cache_init";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &type, &v24))
    {
      goto LABEL_62;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v24 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        v27 = "nw_frame_cache_init";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_61;
      }

      v19 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v20 = os_log_type_enabled(v7, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        v27 = "nw_frame_cache_init";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_61;
      }

      if (!v20)
      {
        goto LABEL_43;
      }

      *buf = 136446466;
      v27 = "nw_frame_cache_init";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    v27 = "nw_frame_cache_init";
    v9 = "%{public}s called with null protocol";
LABEL_61:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_62;
  }

  if (!a3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_frame_cache_init";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null max_frame_count", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &type, &v24))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null max_frame_count";
      goto LABEL_61;
    }

    if (v24 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null max_frame_count, backtrace limit exceeded";
      goto LABEL_61;
    }

    v19 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v22 = os_log_type_enabled(v7, type);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null max_frame_count, no backtrace";
      goto LABEL_61;
    }

    if (!v22)
    {
      goto LABEL_43;
    }

    *buf = 136446466;
    v27 = "nw_frame_cache_init";
    v28 = 2082;
    v29 = v19;
    v21 = "%{public}s called with null max_frame_count, dumping backtrace:%{public}s";
LABEL_42:
    _os_log_impl(&dword_181A37000, v7, v8, v21, buf, 0x16u);
    goto LABEL_43;
  }

  if (!a4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_frame_cache_init";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null max_byte_count", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &type, &v24))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null max_byte_count";
      goto LABEL_61;
    }

    if (v24 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null max_byte_count, backtrace limit exceeded";
      goto LABEL_61;
    }

    v19 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v23 = os_log_type_enabled(v7, type);
    if (!v19)
    {
      if (!v23)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v27 = "nw_frame_cache_init";
      v9 = "%{public}s called with null max_byte_count, no backtrace";
      goto LABEL_61;
    }

    if (v23)
    {
      *buf = 136446466;
      v27 = "nw_frame_cache_init";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null max_byte_count, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

LABEL_43:
    free(v19);
    if (!v6)
    {
      return;
    }

LABEL_63:
    free(v6);
    return;
  }

  *a1 = 0;
  a1[1] = a1;
  a1[2] = a2;
  *(a1 + 6) = 0;
  *(a1 + 7) = a3;
  *(a1 + 8) = a4;
  *(a1 + 9) = a5;
  if (gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a2 + 16);
      *buf = 136446722;
      v27 = "nw_frame_cache_init";
      v28 = 2048;
      v29 = a1;
      v30 = 2080;
      v31 = v16;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s initialized frame cache %p for protocol %s", buf, 0x20u);
    }
  }
}

uint64_t nw_protocol_http_authentication_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v134 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x3C0uLL, 0x23F00F0EuLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x3C0uLL);
    nw_protocol_http_authentication::nw_protocol_http_authentication(v7);
    if (*(v7 + 198))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_authentication_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v131 = 960;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v10);
  if (result || ((free(v10), bzero(0, 0x3C0uLL), nw_protocol_http_authentication::nw_protocol_http_authentication(0), pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v12 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v13 = 2) : (v13 = 3), *buf = 136446210, *&buf[4] = "nw_protocol_http_authentication_create", LODWORD(v119) = 12, v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_placement_new(nw_protocol_http_authentication, strict_calloc(1, sizeof(nw_protocol_http_authentication)),) failed", buf, v119), result = __nwlog_should_abort(v14), result))
  {
    __break(1u);
    return result;
  }

  free(v14);
  if ((MEMORY[0xC6] & 1) == 0)
  {
LABEL_13:
    if (gLogDatapath == 1)
    {
      v80 = __nwlog_obj();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_authentication_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 114;
        *&buf[22] = 2080;
        v131 = " ";
        _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }
  }

LABEL_14:
  if (nw_protocol_http_authentication_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_authentication_identifier::onceToken, &__block_literal_global_14501);
  }

  *(v7 + 16) = &nw_protocol_http_authentication_identifier::protocol_identifier;
  if (nw_protocol_http_authentication_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_authentication_get_callbacks(void)::onceToken, &__block_literal_global_128_14502);
  }

  *(v7 + 24) = &nw_protocol_http_authentication_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  v15 = nw_parameters_copy_url_endpoint(a4);
  if (v15)
  {
    v16 = (v7 + 688);
    v17 = *(v7 + 688);
    if ((v17 & 1) != 0 && *(v7 + 680))
    {
      v18 = v15;
      os_release(*(v7 + 680));
      v15 = v18;
      v17 = *v16;
    }

    *(v7 + 680) = v15;
  }

  else
  {
    if (a3)
    {
      a3 = os_retain(a3);
    }

    v16 = (v7 + 688);
    v17 = *(v7 + 688);
    if (v17)
    {
      v19 = *(v7 + 680);
      if (v19)
      {
        os_release(v19);
        v17 = *v16;
      }
    }

    *(v7 + 680) = a3;
  }

  *v16 = v17 | 1;
  if (a4)
  {
    v20 = os_retain(a4);
    v21 = *(v7 + 720);
    if ((v21 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v20 = 0;
    v21 = *(v7 + 720);
    if ((v21 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v22 = *(v7 + 712);
  if (v22)
  {
    os_release(v22);
    v21 = *(v7 + 720);
  }

LABEL_35:
  *(v7 + 712) = v20;
  *(v7 + 720) = v21 | 1;
  v23 = nw_parameters_copy_context(a4);
  v24 = *(v7 + 736);
  if ((v24 & 1) != 0 && *(v7 + 728))
  {
    v25 = v23;
    os_release(*(v7 + 728));
    v23 = v25;
    v24 = *(v7 + 736);
  }

  *(v7 + 728) = v23;
  *(v7 + 736) = v24 | 1;
  v26 = *(v7 + 752);
  if (v26)
  {
    v27 = *(v7 + 744);
    if (v27)
    {
      os_release(v27);
      v26 = *(v7 + 752);
    }
  }

  *(v7 + 744) = 0;
  *(v7 + 752) = v26 | 1;
  *(v7 + 958) &= ~1u;
  if (nw_parameters_get_server_mode(a4))
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  *(v7 + 958) = *(v7 + 958) & 0xFFFD | v28;
  v29 = *(v7 + 592);
  if (v29)
  {
    v30 = *(v7 + 584);
    if (v30)
    {
      os_release(v30);
      v29 = *(v7 + 592);
    }
  }

  *(v7 + 584) = 0;
  *(v7 + 592) = v29 | 1;
  if (nw_protocol_copy_http_authentication_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
  }

  object = nw_protocol_copy_http_authentication_definition_http_authentication_definition;
  v31 = nw_parameters_copy_protocol_options_for_definition(a4, object);
  v32 = v31;
  if (v31)
  {
    v33 = v31;
    v34 = nw_protocol_copy_http_authentication_definition_onceToken;
    v35 = v33;
    if (v34 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
    }

    v36 = nw_protocol_options_matches_definition(v35, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

    if (v36)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v131 = __Block_byref_object_copy__7;
      v132 = __Block_byref_object_dispose__8;
      v133 = 0;
      *type = MEMORY[0x1E69E9820];
      v125 = 3221225472;
      v126 = __nw_http_authentication_options_copy_challenge_handler_block_invoke;
      v127 = &unk_1E6A3A858;
      v128 = buf;
      nw_protocol_options_access_handle(v35, type);
      v37 = _Block_copy(*(*&buf[8] + 40));
      _Block_object_dispose(buf, 8);

      goto LABEL_54;
    }

    v82 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
    LODWORD(v118) = 12;
    v120 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s protocol options are not http authentication", buf, v118);

    type[0] = OS_LOG_TYPE_ERROR;
    v129 = 0;
    v83 = v120;
    if (!__nwlog_fault(v120, type, &v129))
    {
LABEL_194:
      if (v83)
      {
        free(v83);
      }

      v37 = 0;
LABEL_54:

      v38 = *(v7 + 656);
      if (v38)
      {
        v39 = *(v7 + 648);
        if (v39)
        {
          _Block_release(v39);
          v38 = *(v7 + 656);
        }
      }

      *(v7 + 648) = v37;
      *(v7 + 656) = v38 | 1;
      v40 = v35;
      v41 = nw_protocol_copy_http_authentication_definition_onceToken;
      v42 = v40;
      if (v41 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
      }

      v43 = nw_protocol_options_matches_definition(v42, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

      if (v43)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v131 = __Block_byref_object_copy__75915;
        v132 = __Block_byref_object_dispose__75916;
        v133 = 0;
        *type = MEMORY[0x1E69E9820];
        v125 = 3221225472;
        v126 = __nw_http_authentication_options_copy_challenge_queue_block_invoke;
        v127 = &unk_1E6A3A858;
        v128 = buf;
        nw_protocol_options_access_handle(v42, type);
        v44 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        goto LABEL_61;
      }

      v86 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
      LODWORD(v118) = 12;
      v121 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v86, 16, "%{public}s protocol options are not http authentication", buf, v118);

      type[0] = OS_LOG_TYPE_ERROR;
      v129 = 0;
      v87 = v121;
      if (!__nwlog_fault(v121, type, &v129))
      {
LABEL_201:
        if (v87)
        {
          free(v87);
        }

        v44 = 0;
LABEL_61:

        v45 = *(v7 + 672);
        if (v45)
        {
          v46 = *(v7 + 664);
          if (v46)
          {
            dispatch_release(v46);
            v45 = *(v7 + 672);
          }
        }

        *(v7 + 664) = v44;
        *(v7 + 672) = v45 | 1;
        v47 = v42;
        v48 = nw_protocol_copy_http_authentication_definition_onceToken;
        v49 = v47;
        if (v48 != -1)
        {
          dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
        }

        v50 = nw_protocol_options_matches_definition(v49, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

        if (v50)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v131 = __Block_byref_object_copy__75915;
          v132 = __Block_byref_object_dispose__75916;
          v133 = 0;
          *type = MEMORY[0x1E69E9820];
          v125 = 3221225472;
          v126 = __nw_http_authentication_options_copy_credential_storage_block_invoke;
          v127 = &unk_1E6A3A858;
          v128 = buf;
          nw_protocol_options_access_handle(v49, type);
          v51 = *(*&buf[8] + 40);
          _Block_object_dispose(buf, 8);

          goto LABEL_68;
        }

        v90 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
        LODWORD(v118) = 12;
        v122 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v90, 16, "%{public}s protocol options are not http_authentication", buf, v118);

        type[0] = OS_LOG_TYPE_ERROR;
        v129 = 0;
        v91 = v122;
        if (!__nwlog_fault(v122, type, &v129))
        {
LABEL_208:
          if (v91)
          {
            free(v91);
          }

          v51 = 0;
LABEL_68:

          v52 = *(v7 + 592);
          if (v52)
          {
            v53 = *(v7 + 584);
            if (v53)
            {
              os_release(v53);
              v52 = *(v7 + 592);
            }
          }

          *(v7 + 584) = v51;
          *(v7 + 592) = v52 | 1;
          v54 = nw_http_authentication_options_copy_credential_cache(v49);
          v55 = *(v7 + 608);
          if ((v55 & 1) != 0 && *(v7 + 600))
          {
            v56 = v54;
            os_release(*(v7 + 600));
            v54 = v56;
            v55 = *(v7 + 608);
          }

          *(v7 + 600) = v54;
          *(v7 + 608) = v55 | 1;
          v57 = v49;
          v58 = nw_protocol_copy_http_authentication_definition_onceToken;
          v59 = v57;
          if (v58 != -1)
          {
            dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
          }

          v60 = nw_protocol_options_matches_definition(v59, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

          if (v60)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v131 = __Block_byref_object_copy__75915;
            v132 = __Block_byref_object_dispose__75916;
            v133 = 0;
            *type = MEMORY[0x1E69E9820];
            v125 = 3221225472;
            v126 = __nw_http_authentication_options_copy_h1_fallback_cache_block_invoke;
            v127 = &unk_1E6A3A858;
            v128 = buf;
            nw_protocol_options_access_handle(v59, type);
            v61 = *(*&buf[8] + 40);
            _Block_object_dispose(buf, 8);

LABEL_78:
            v62 = *(v7 + 624);
            if (v62)
            {
              v63 = *(v7 + 616);
              if (v63)
              {
                os_release(v63);
                v62 = *(v7 + 624);
              }
            }

            *(v7 + 616) = v61;
            *(v7 + 624) = v62 | 1;
            v64 = nw_http_authentication_options_copy_appsso_h1_fallback_headers(v59);
            v65 = *(v7 + 640);
            if ((v65 & 1) != 0 && *(v7 + 632))
            {
              v66 = v64;
              os_release(*(v7 + 632));
              v64 = v66;
              v65 = *(v7 + 640);
            }

            *(v7 + 632) = v64;
            *(v7 + 640) = v65 | 1;
            goto LABEL_85;
          }

          v94 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
          LODWORD(v118) = 12;
          v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s protocol options are not http_authentication", buf, v118);

          type[0] = OS_LOG_TYPE_ERROR;
          v129 = 0;
          if (__nwlog_fault(v95, type, &v129))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v96 = __nwlog_obj();
              v97 = type[0];
              if (os_log_type_enabled(v96, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                _os_log_impl(&dword_181A37000, v96, v97, "%{public}s protocol options are not http_authentication", buf, 0xCu);
              }
            }

            else if (v129 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              v112 = type[0];
              v113 = os_log_type_enabled(v96, type[0]);
              if (backtrace_string)
              {
                if (v113)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                  *&buf[12] = 2082;
                  *&buf[14] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v96, v112, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_214;
              }

              if (v113)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                _os_log_impl(&dword_181A37000, v96, v112, "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v96 = __nwlog_obj();
              v117 = type[0];
              if (os_log_type_enabled(v96, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_h1_fallback_cache";
                _os_log_impl(&dword_181A37000, v96, v117, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_214:
          if (v95)
          {
            free(v95);
          }

          v61 = 0;
          goto LABEL_78;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v92 = __nwlog_obj();
          v93 = type[0];
          if (os_log_type_enabled(v92, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
            _os_log_impl(&dword_181A37000, v92, v93, "%{public}s protocol options are not http_authentication", buf, 0xCu);
          }
        }

        else
        {
          if (v129 == 1)
          {
            v108 = __nw_create_backtrace_string();
            v109 = __nwlog_obj();
            HIDWORD(v118) = type[0];
            v110 = os_log_type_enabled(v109, type[0]);
            if (v108)
            {
              if (v110)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
                *&buf[12] = 2082;
                *&buf[14] = v108;
                _os_log_impl(&dword_181A37000, v109, BYTE4(v118), "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v108);
            }

            else
            {
              if (v110)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
                _os_log_impl(&dword_181A37000, v109, BYTE4(v118), "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_207;
          }

          v92 = __nwlog_obj();
          v116 = type[0];
          if (os_log_type_enabled(v92, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_options_copy_credential_storage";
            _os_log_impl(&dword_181A37000, v92, v116, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_207:
        v91 = v122;
        goto LABEL_208;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
          _os_log_impl(&dword_181A37000, v88, v89, "%{public}s protocol options are not http authentication", buf, 0xCu);
        }
      }

      else
      {
        if (v129 == 1)
        {
          v105 = __nw_create_backtrace_string();
          v106 = __nwlog_obj();
          HIDWORD(v118) = type[0];
          v107 = os_log_type_enabled(v106, type[0]);
          if (v105)
          {
            if (v107)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
              *&buf[12] = 2082;
              *&buf[14] = v105;
              _os_log_impl(&dword_181A37000, v106, BYTE4(v118), "%{public}s protocol options are not http authentication, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v105);
          }

          else
          {
            if (v107)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
              _os_log_impl(&dword_181A37000, v106, BYTE4(v118), "%{public}s protocol options are not http authentication, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_200;
        }

        v88 = __nwlog_obj();
        v115 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_challenge_queue";
          _os_log_impl(&dword_181A37000, v88, v115, "%{public}s protocol options are not http authentication, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_200:
      v87 = v121;
      goto LABEL_201;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type[0];
      if (os_log_type_enabled(v84, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
        _os_log_impl(&dword_181A37000, v84, v85, "%{public}s protocol options are not http authentication", buf, 0xCu);
      }
    }

    else
    {
      if (v129 == 1)
      {
        v102 = __nw_create_backtrace_string();
        v103 = __nwlog_obj();
        HIDWORD(v118) = type[0];
        v104 = os_log_type_enabled(v103, type[0]);
        if (v102)
        {
          if (v104)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
            *&buf[12] = 2082;
            *&buf[14] = v102;
            _os_log_impl(&dword_181A37000, v103, BYTE4(v118), "%{public}s protocol options are not http authentication, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v102);
        }

        else
        {
          if (v104)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
            _os_log_impl(&dword_181A37000, v103, BYTE4(v118), "%{public}s protocol options are not http authentication, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_193;
      }

      v84 = __nwlog_obj();
      v114 = type[0];
      if (os_log_type_enabled(v84, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_authentication_options_copy_challenge_handler";
        _os_log_impl(&dword_181A37000, v84, v114, "%{public}s protocol options are not http authentication, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_193:
    v83 = v120;
    goto LABEL_194;
  }

LABEL_85:
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v67 = nw_protocol_copy_http_client_definition_definition;
  v68 = nw_parameters_copy_protocol_options_for_definition(a4, v67);
  v69 = nw_http_client_options_copy_retry_with_h1_handler(v68);
  v70 = *(v7 + 512);
  if ((v70 & 1) != 0 && *(v7 + 504))
  {
    v71 = v69;
    _Block_release(*(v7 + 504));
    v69 = v71;
    v70 = *(v7 + 512);
  }

  *(v7 + 200) = 0;
  *(v7 + 504) = v69;
  *(v7 + 512) = v70 | 1;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v72 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v72, nw_protocol_http_authentication_create::$_0::__invoke, nw_protocol_http_authentication_create::$_1::__invoke);
  if (v72)
  {
    os_release(v72);
  }

  v73 = *(v7 + 40);
  if (!v73)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
    LODWORD(v118) = 12;
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null protocol->handle", buf, v118);
    type[0] = OS_LOG_TYPE_ERROR;
    v129 = 0;
    if (!__nwlog_fault(v76, type, &v129))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v79 = "%{public}s called with null protocol->handle";
      goto LABEL_187;
    }

    if (v129 != 1)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v79 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
      goto LABEL_187;
    }

    v98 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = type[0];
    v99 = os_log_type_enabled(v77, type[0]);
    if (!v98)
    {
      if (!v99)
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v79 = "%{public}s called with null protocol->handle, no backtrace";
      goto LABEL_187;
    }

    if (v99)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      *&buf[12] = 2082;
      *&buf[14] = v98;
      _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v98);
LABEL_188:
    if (!v76)
    {
      goto LABEL_97;
    }

LABEL_189:
    free(v76);
    goto LABEL_97;
  }

  v74 = *(v73 + 72);
  if (!v74)
  {
    v81 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
    LODWORD(v118) = 12;
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s called with null metadata_plugin", buf, v118);
    type[0] = OS_LOG_TYPE_ERROR;
    v129 = 0;
    if (!__nwlog_fault(v76, type, &v129))
    {
      goto LABEL_188;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v79 = "%{public}s called with null metadata_plugin";
      goto LABEL_187;
    }

    if (v129 != 1)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_188;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v79 = "%{public}s called with null metadata_plugin, backtrace limit exceeded";
      goto LABEL_187;
    }

    v100 = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = type[0];
    v101 = os_log_type_enabled(v77, type[0]);
    if (v100)
    {
      if (v101)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
        *&buf[12] = 2082;
        *&buf[14] = v100;
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null metadata_plugin, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v100);
      if (!v76)
      {
        goto LABEL_97;
      }

      goto LABEL_189;
    }

    if (v101)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_set_message_discarded_callback";
      v79 = "%{public}s called with null metadata_plugin, no backtrace";
LABEL_187:
      _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
      goto LABEL_188;
    }

    goto LABEL_188;
  }

  *(v74 + 120) = nw_http_authentication_reissue;
LABEL_97:
  *(v7 + 88) = v7 + 344;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_authentication_create::$_2::__invoke, nw_protocol_http_authentication_create::$_3::__invoke, nw_protocol_http_authentication_create::$_4::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_authentication_create::$_5::__invoke);
  if (v68)
  {
    os_release(v68);
  }

  if (v67)
  {
    os_release(v67);
  }

  if (v32)
  {
    os_release(v32);
  }

  if (object)
  {
    os_release(object);
  }

  return v7;
}

void sub_181E975BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_http_authentication::nw_protocol_http_authentication(nw_protocol_http_authentication *this)
{
  *(this + 31) = 0;
  *(this + 256) &= ~1u;
  *(this + 33) = 0;
  *(this + 272) &= ~1u;
  *(this + 35) = 0;
  *(this + 288) &= ~1u;
  *(this + 43) = 0;
  *(this + 352) &= ~1u;
  *(this + 45) = 0;
  *(this + 368) &= ~1u;
  *(this + 50) = 0;
  *(this + 408) &= ~1u;
  *(this + 57) = 0;
  *(this + 464) &= ~1u;
  *(this + 59) = 0;
  *(this + 480) &= ~1u;
  *(this + 61) = 0;
  *(this + 496) &= ~1u;
  *(this + 63) = 0;
  *(this + 512) &= ~1u;
  *(this + 65) = 0;
  *(this + 528) &= ~1u;
  *(this + 67) = 0;
  *(this + 544) &= ~1u;
  *(this + 69) = 0;
  *(this + 560) &= ~1u;
  *(this + 71) = 0;
  *(this + 576) &= ~1u;
  *(this + 73) = 0;
  *(this + 592) &= ~1u;
  *(this + 75) = 0;
  *(this + 608) &= ~1u;
  *(this + 77) = 0;
  *(this + 624) &= ~1u;
  *(this + 79) = 0;
  *(this + 640) &= ~1u;
  *(this + 81) = 0;
  *(this + 656) &= ~1u;
  *(this + 83) = 0;
  *(this + 672) &= ~1u;
  *(this + 85) = 0;
  *(this + 688) &= ~1u;
  *(this + 87) = 0;
  *(this + 704) &= ~1u;
  *(this + 89) = 0;
  *(this + 720) &= ~1u;
  *(this + 91) = 0;
  *(this + 736) &= ~1u;
  *(this + 93) = 0;
  *(this + 752) &= ~1u;
  *(this + 95) = 0;
  *(this + 768) &= ~1u;
  *(this + 97) = 0;
  *(this + 784) &= ~1u;
  *(this + 99) = 0;
  *(this + 800) &= ~1u;
  *(this + 101) = 0;
  *(this + 816) &= ~1u;
  *(this + 103) = 0;
  *(this + 832) &= ~1u;
  *(this + 105) = 0;
  *(this + 848) &= ~1u;
  *(this + 107) = 0;
  *(this + 864) &= ~1u;
  *(this + 109) = 0;
  *(this + 880) &= ~1u;
  *(this + 111) = 0;
  *(this + 896) &= ~1u;
  *(this + 113) = 0;
  *(this + 912) &= ~1u;
  *(this + 115) = 0;
  *(this + 928) &= ~1u;
}

id nw_http_authentication_options_copy_credential_cache(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_authentication_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_authentication_definition_onceToken, &__block_literal_global_38);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_authentication_definition_http_authentication_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v25 = __Block_byref_object_copy__75915;
      v26 = __Block_byref_object_dispose__75916;
      v27 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_authentication_options_copy_credential_cache_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http_authentication", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_authentication", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_authentication, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_authentication, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_authentication_options_copy_credential_cache";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E97E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_retry_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x240uLL, 0xADFA0540uLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x240uLL);
LABEL_12:
    if (gLogDatapath == 1)
    {
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v34 = "nw_protocol_http_retry_create";
        v35 = 2082;
        v36 = v7 + 114;
        v37 = 2080;
        v38 = " ";
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  v34 = "nw_protocol_http_retry_create";
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v35 = 2048;
  v36 = 1;
  v37 = 2048;
  v38 = 576;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v10);
  if (result || ((free(v10), bzero(0, 0x240uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x178] = 0, MEMORY[0x180] &= ~1u, MEMORY[0x1A0] = 0, MEMORY[0x1A8] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, MEMORY[0x228] = 0, MEMORY[0x230] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v12 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v13 = 2) : (v13 = 3), *buf = 136446210, v34 = "nw_protocol_http_retry_create", LODWORD(v32) = 12, v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_placement_new(nw_protocol_http_retry, strict_calloc(1, sizeof(nw_protocol_http_retry)),) failed", buf, v32), result = __nwlog_should_abort(v14), result))
  {
    __break(1u);
    return result;
  }

  free(v14);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (nw_protocol_http_retry_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_retry_identifier::onceToken, &__block_literal_global_44478);
  }

  *(v7 + 16) = &nw_protocol_http_retry_identifier::protocol_identifier;
  if (nw_protocol_http_retry_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_retry_get_callbacks(void)::onceToken, &__block_literal_global_34);
  }

  *(v7 + 24) = &nw_protocol_http_retry_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v15 = *(v7 + 528);
  if (v15)
  {
    v16 = *(v7 + 520);
    if (v16)
    {
      os_release(v16);
      v15 = *(v7 + 528);
    }
  }

  *(v7 + 520) = a3;
  *(v7 + 528) = v15 | 1;
  if (!a4)
  {
    v17 = 0;
    v18 = *(v7 + 544);
    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v19 = *(v7 + 536);
    if (v19)
    {
      os_release(v19);
      v18 = *(v7 + 544);
    }

    goto LABEL_28;
  }

  v17 = os_retain(a4);
  v18 = *(v7 + 544);
  if (v18)
  {
    goto LABEL_26;
  }

LABEL_28:
  *(v7 + 536) = v17;
  *(v7 + 544) = v18 | 1;
  v20 = nw_parameters_copy_context(a4);
  v21 = *(v7 + 560);
  if ((v21 & 1) != 0 && *(v7 + 552))
  {
    v22 = v20;
    os_release(*(v7 + 552));
    v20 = v22;
    v21 = *(v7 + 560);
  }

  *(v7 + 552) = v20;
  *(v7 + 560) = v21 | 1;
  *(v7 + 572) = *(v7 + 572) & 0xFE | nw_parameters_get_server_mode(a4);
  if (nw_protocol_copy_http_retry_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_retry_definition_onceToken, &__block_literal_global_46_76999);
  }

  v23 = nw_protocol_copy_http_retry_definition_http_retry_definition;
  v24 = nw_parameters_copy_protocol_options_for_definition(a4, v23);
  *(v7 + 568) = nw_http_retry_options_get_limit(v24);
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v25 = nw_protocol_copy_http_client_definition_definition;
  v26 = nw_parameters_copy_protocol_options_for_definition(a4, v25);
  v27 = nw_http_client_options_copy_retry_with_h1_handler(v26);
  v28 = *(v7 + 512);
  if ((v28 & 1) != 0 && *(v7 + 504))
  {
    v29 = v27;
    _Block_release(*(v7 + 504));
    v27 = v29;
    v28 = *(v7 + 512);
  }

  *(v7 + 200) = 0;
  *(v7 + 504) = v27;
  *(v7 + 512) = v28 | 1;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v30 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v30, nw_protocol_http_retry_create::$_0::__invoke, nw_protocol_http_retry_create::$_1::__invoke);
  if (v30)
  {
    os_release(v30);
  }

  *(v7 + 80) = v7 + 344;
  nw_protocol_plugin_reset_set_callbacks(v7, nw_protocol_http_retry_create::$_2::__invoke);
  *(v7 + 88) = v7 + 360;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_retry_create::$_3::__invoke, nw_protocol_http_retry_create::$_4::__invoke, nw_protocol_http_retry_create::$_5::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_retry_create::$_6::__invoke);
  if (v26)
  {
    os_release(v26);
  }

  if (v25)
  {
    os_release(v25);
  }

  if (v24)
  {
    os_release(v24);
  }

  if (v23)
  {
    os_release(v23);
  }

  return v7;
}

uint64_t nw_http_retry_options_get_limit(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_retry_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_retry_definition_onceToken, &__block_literal_global_46_76999);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_retry_definition_http_retry_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_http_retry_options_get_limit_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_retry_options_get_limit";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http retry", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http retry", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http retry, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http retry, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_retry_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http retry, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_retry_options_get_limit";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v9, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v22 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_retry_options_get_limit";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_retry_options_get_limit";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void sub_181E98B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_cookie_create()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x1C0uLL, 0x822486DAuLL);
  v1 = v0;
  if (v0)
  {
    v0[26] = 0u;
    v0[27] = 0u;
    v0[24] = 0u;
    v0[25] = 0u;
    v0[22] = 0u;
    v0[23] = 0u;
    v0[20] = 0u;
    v0[21] = 0u;
    v0[18] = 0u;
    v0[19] = 0u;
    v0[16] = 0u;
    v0[17] = 0u;
    v0[14] = 0u;
    v0[15] = 0u;
    v0[12] = 0u;
    v0[13] = 0u;
    v0[10] = 0u;
    v0[11] = 0u;
    v0[8] = 0u;
    v0[9] = 0u;
    v0[6] = 0u;
    v0[7] = 0u;
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    *buf = 136446722;
    v14 = "nw_protocol_http_cookie_create";
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v15 = 2048;
    v16 = 1;
    v17 = 2048;
    v18 = 448;
    v4 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
    result = __nwlog_should_abort(v4);
    if (result || ((free(v4), MEMORY[0x1B0] = 0u, MEMORY[0x1A0] = 0u, MEMORY[0x190] = 0u, MEMORY[0x180] = 0u, MEMORY[0x170] = 0u, MEMORY[0x160] = 0u, MEMORY[0x150] = 0u, MEMORY[0x140] = 0u, MEMORY[0x130] = 0u, MEMORY[0x120] = 0u, MEMORY[0x110] = 0u, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0xA0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, MEMORY[0xF8] = 0, MEMORY[0x108] = 0, MEMORY[0x118] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), v6 = gLogObj, !os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR)) ? (v7 = 2) : (v7 = 3), *buf = 136446210, v14 = "nw_protocol_http_cookie_create", LODWORD(v12) = 12, v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s strict_placement_new(nw_protocol_http_cookie, strict_calloc(1, sizeof(nw_protocol_http_cookie)),) failed", buf, v12), result = __nwlog_should_abort(v8), result))
    {
      __break(1u);
      return result;
    }

    free(v8);
  }

  if (nw_protocol_http_cookie_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http_cookie_identifier::onceToken, &__block_literal_global_16341);
  }

  *(v1 + 16) = &nw_protocol_http_cookie_identifier::http_cookie_protocol_identifier;
  if (nw_protocol_http_cookie_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_cookie_get_callbacks(void)::onceToken, &__block_literal_global_28);
  }

  *(v1 + 24) = &nw_protocol_http_cookie_get_callbacks(void)::protocol_callbacks;
  *(v1 + 40) = v1;
  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v14 = "nw_protocol_http_cookie_create";
      v15 = 2082;
      v16 = v1 + 114;
      v17 = 2080;
      v18 = " ";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  if (nw_protocol_copy_http_cookie_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_cookie_definition_onceToken, &__block_literal_global_19_76469);
  }

  v9 = nw_protocol_copy_http_cookie_definition_http_cookie_definition;
  *(v1 + 64) = v1 + 104;
  nw_protocol_plugin_name_set_callbacks(v1, nw_protocol_http_cookie_create::$_0::__invoke);
  *(v1 + 200) = 0;
  *(v1 + 72) = v1 + 200;
  *(v1 + 208) = v1 + 200;
  *(v1 + 216) = 0;
  *(v1 + 224) = v1 + 216;
  *(v1 + 232) = 0;
  *(v1 + 240) = v1 + 232;
  *(v1 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v10 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v1, v10, nw_protocol_http_cookie_create::$_1::__invoke, nw_protocol_http_cookie_create::$_2::__invoke);
  if (v10)
  {
    os_release(v10);
  }

  *(v1 + 80) = v1 + 344;
  if (v9)
  {
    os_release(v9);
  }

  return v1;
}

uint64_t nw_protocol_common_get_parameters(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 40);
      v3 = *(a1 + 48);
      if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v1 + 64)) != 0)
      {
        v14 = *(v3 + 88);
        if (v14)
        {
          v4 = 0;
          *(v3 + 88) = v14 + 1;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v4 = 0;
          v5 = *(v1 + 24);
          if (!v5)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v4 = 1;
        v5 = *(v1 + 24);
        if (!v5)
        {
          goto LABEL_44;
        }
      }

      v15 = *(v5 + 112);
      if (v15)
      {
        result = v15(v1);
        if (v4)
        {
          return result;
        }

        goto LABEL_23;
      }

LABEL_44:
      v25 = __nwlog_obj();
      v26 = *(v1 + 16);
      *buf = 136446722;
      v43 = "__nw_protocol_get_parameters";
      if (!v26)
      {
        v26 = "invalid";
      }

      v44 = 2082;
      v45 = v26;
      v46 = 2048;
      v47 = v1;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (__nwlog_fault(v27, &type, &v40))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (!os_log_type_enabled(v28, type))
          {
            goto LABEL_80;
          }

          v30 = *(v1 + 16);
          if (!v30)
          {
            v30 = "invalid";
          }

          *buf = 136446722;
          v43 = "__nw_protocol_get_parameters";
          v44 = 2082;
          v45 = v30;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_79:
          _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x20u);
          goto LABEL_80;
        }

        if (v40 != 1)
        {
          v28 = __nwlog_obj();
          v29 = type;
          if (!os_log_type_enabled(v28, type))
          {
            goto LABEL_80;
          }

          v38 = *(v1 + 16);
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446722;
          v43 = "__nw_protocol_get_parameters";
          v44 = 2082;
          v45 = v38;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
          goto LABEL_79;
        }

        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v29 = type;
        v34 = os_log_type_enabled(v28, type);
        if (!backtrace_string)
        {
          if (!v34)
          {
            goto LABEL_80;
          }

          v39 = *(v1 + 16);
          if (!v39)
          {
            v39 = "invalid";
          }

          *buf = 136446722;
          v43 = "__nw_protocol_get_parameters";
          v44 = 2082;
          v45 = v39;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
          goto LABEL_79;
        }

        if (v34)
        {
          if (*(v1 + 16))
          {
            v35 = *(v1 + 16);
          }

          else
          {
            v35 = "invalid";
          }

          *buf = 136446978;
          v43 = "__nw_protocol_get_parameters";
          v44 = 2082;
          v45 = v35;
          v46 = 2048;
          v47 = v1;
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
      }

LABEL_80:
      if (v27)
      {
        free(v27);
      }

      result = 0;
      if (v4)
      {
        return result;
      }

LABEL_23:
      v17 = *(v1 + 40);
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
      {
        v18 = *(v1 + 88);
        if (v18)
        {
          v19 = v18 - 1;
          *(v1 + 88) = v19;
          if (!v19)
          {
            v20 = result;
            v21 = *(v1 + 64);
            if (v21)
            {
              *(v1 + 64) = 0;
              v21[2](v21);
              _Block_release(v21);
            }

            if (*(v1 + 72))
            {
              v22 = *(v1 + 64);
              if (v22)
              {
                _Block_release(v22);
              }
            }

            free(v1);
            return v20;
          }
        }
      }

      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v43 = "nw_protocol_common_get_parameters";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s get_parameters requires a default input handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v6, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_parameters";
          v9 = "%{public}s get_parameters requires a default input handler";
LABEL_36:
          v23 = v7;
          v24 = v8;
LABEL_37:
          _os_log_impl(&dword_181A37000, v23, v24, v9, buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v10 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(gLogObj, type);
        if (v10)
        {
          if (v13)
          {
            *buf = 136446466;
            v43 = "nw_protocol_common_get_parameters";
            v44 = 2082;
            v45 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_parameters requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_parameters";
          v9 = "%{public}s get_parameters requires a default input handler, no backtrace";
          v23 = v11;
          v24 = v12;
          goto LABEL_37;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_parameters";
          v9 = "%{public}s get_parameters requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_common_get_parameters";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v6, &type, &v40))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v43 = "nw_protocol_common_get_parameters";
      v9 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v40 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v43 = "nw_protocol_common_get_parameters";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    v36 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v37 = os_log_type_enabled(v7, type);
    if (v36)
    {
      if (v37)
      {
        *buf = 136446466;
        v43 = "nw_protocol_common_get_parameters";
        v44 = 2082;
        v45 = v36;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
      goto LABEL_38;
    }

    if (v37)
    {
      *buf = 136446210;
      v43 = "nw_protocol_common_get_parameters";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_http_joining_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v26 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null protocol", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v27, buf, &v42))
    {
      goto LABEL_100;
    }

    if (buf[0] != 17)
    {
      if (v42 != 1)
      {
        v28 = __nwlog_obj();
        v29 = buf[0];
        if (os_log_type_enabled(v28, buf[0]))
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http_joining_add_input_handler";
          v30 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = buf[0];
      v34 = os_log_type_enabled(v28, buf[0]);
      if (!backtrace_string)
      {
        if (v34)
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http_joining_add_input_handler";
          v30 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (!v34)
      {
        goto LABEL_84;
      }

      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http_joining_add_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v35 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    v28 = __nwlog_obj();
    v29 = buf[0];
    if (!os_log_type_enabled(v28, buf[0]))
    {
      goto LABEL_100;
    }

    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v30 = "%{public}s called with null protocol";
LABEL_99:
    _os_log_impl(&dword_181A37000, v28, v29, v30, v51, 0xCu);
    goto LABEL_100;
  }

  handle = a1->handle;
  if (!handle)
  {
    v31 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s called with null http_joining", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v27, buf, &v42))
    {
      goto LABEL_100;
    }

    if (buf[0] != 17)
    {
      if (v42 != 1)
      {
        v28 = __nwlog_obj();
        v29 = buf[0];
        if (os_log_type_enabled(v28, buf[0]))
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http_joining_add_input_handler";
          v30 = "%{public}s called with null http_joining, backtrace limit exceeded";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = buf[0];
      v36 = os_log_type_enabled(v28, buf[0]);
      if (!backtrace_string)
      {
        if (v36)
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http_joining_add_input_handler";
          v30 = "%{public}s called with null http_joining, no backtrace";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (!v36)
      {
        goto LABEL_84;
      }

      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http_joining_add_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v35 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    v28 = __nwlog_obj();
    v29 = buf[0];
    if (!os_log_type_enabled(v28, buf[0]))
    {
      goto LABEL_100;
    }

    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v30 = "%{public}s called with null http_joining";
    goto LABEL_99;
  }

  if (!a2)
  {
    v32 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null input_protocol", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v27, buf, &v42))
    {
      goto LABEL_100;
    }

    if (buf[0] != 17)
    {
      if (v42 != 1)
      {
        v28 = __nwlog_obj();
        v29 = buf[0];
        if (os_log_type_enabled(v28, buf[0]))
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http_joining_add_input_handler";
          v30 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = buf[0];
      v37 = os_log_type_enabled(v28, buf[0]);
      if (!backtrace_string)
      {
        if (v37)
        {
          *v51 = 136446210;
          *&v51[4] = "nw_protocol_http_joining_add_input_handler";
          v30 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_99;
        }

        goto LABEL_100;
      }

      if (!v37)
      {
        goto LABEL_84;
      }

      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http_joining_add_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v35 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    v28 = __nwlog_obj();
    v29 = buf[0];
    if (!os_log_type_enabled(v28, buf[0]))
    {
      goto LABEL_100;
    }

    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v30 = "%{public}s called with null input_protocol";
    goto LABEL_99;
  }

  if (*(handle + 17))
  {
    v5 = a1->handle;

    return nw_http_joining_add_to_messaging(v5, a2);
  }

  parameters = nw_protocol_get_parameters(a2);
  if (!parameters)
  {
    v38 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null parameters", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v27, buf, &v42))
    {
      goto LABEL_100;
    }

    if (buf[0] == 17)
    {
      v28 = __nwlog_obj();
      v29 = buf[0];
      if (!os_log_type_enabled(v28, buf[0]))
      {
        goto LABEL_100;
      }

      *v51 = 136446210;
      *&v51[4] = "nw_protocol_http_joining_add_input_handler";
      v30 = "%{public}s called with null parameters";
      goto LABEL_99;
    }

    if (v42 != 1)
    {
      v28 = __nwlog_obj();
      v29 = buf[0];
      if (os_log_type_enabled(v28, buf[0]))
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http_joining_add_input_handler";
        v30 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = buf[0];
    v40 = os_log_type_enabled(v28, buf[0]);
    if (!backtrace_string)
    {
      if (v40)
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http_joining_add_input_handler";
        v30 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    if (!v40)
    {
      goto LABEL_84;
    }

    *v51 = 136446466;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    *&v51[12] = 2082;
    *&v51[14] = backtrace_string;
    v35 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_83:
    _os_log_impl(&dword_181A37000, v28, v29, v35, v51, 0x16u);
    goto LABEL_84;
  }

  v8 = parameters;
  v9 = _nw_parameters_copy_protocol_options_with_level();

  if (!v9)
  {
    v39 = __nwlog_obj();
    *v51 = 136446210;
    *&v51[4] = "nw_protocol_http_joining_add_input_handler";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v39, 16, "%{public}s called with null options", v51, 12);
    buf[0] = 16;
    v42 = 0;
    if (!__nwlog_fault(v27, buf, &v42))
    {
      goto LABEL_100;
    }

    if (buf[0] == 17)
    {
      v28 = __nwlog_obj();
      v29 = buf[0];
      if (os_log_type_enabled(v28, buf[0]))
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http_joining_add_input_handler";
        v30 = "%{public}s called with null options";
        goto LABEL_99;
      }

LABEL_100:
      if (v27)
      {
        free(v27);
      }

      return 0;
    }

    if (v42 != 1)
    {
      v28 = __nwlog_obj();
      v29 = buf[0];
      if (os_log_type_enabled(v28, buf[0]))
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http_joining_add_input_handler";
        v30 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = buf[0];
    v41 = os_log_type_enabled(v28, buf[0]);
    if (!backtrace_string)
    {
      if (v41)
      {
        *v51 = 136446210;
        *&v51[4] = "nw_protocol_http_joining_add_input_handler";
        v30 = "%{public}s called with null options, no backtrace";
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    if (v41)
    {
      *v51 = 136446466;
      *&v51[4] = "nw_protocol_http_joining_add_input_handler";
      *&v51[12] = 2082;
      *&v51[14] = backtrace_string;
      v35 = "%{public}s called with null options, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

LABEL_84:
    free(backtrace_string);
    goto LABEL_100;
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  memset(v51, 0, sizeof(v51));
  v10 = v9;
  _nw_protocol_options_get_log_id_str(v10, v51);

  if (*(handle + 6))
  {
    v12 = *(handle + 24);
    v11 = *(handle + 25);
    if (v12 >= v11)
    {
      v17 = *(handle + 23);
      v18 = v12 - v17;
      v19 = (v12 - v17) >> 4;
      v20 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v21 = v11 - v17;
      if (v21 >> 3 > v20)
      {
        v20 = v21 >> 3;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v23 = 16 * v19;
      *v23 = a2;
      *(v23 + 8) = 0;
      v13 = 16 * v19 + 16;
      memcpy(0, v17, v18);
      *(handle + 23) = 0;
      *(handle + 24) = v13;
      *(handle + 25) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v12 = a2;
      *(v12 + 8) = 0;
      v13 = v12 + 16;
    }

    *(handle + 24) = v13;
    if ((handle[294] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v44 = "nw_protocol_http_joining_add_input_handler";
        v45 = 2082;
        v46 = handle + 208;
        v47 = 2080;
        v48 = " ";
        v49 = 2082;
        v50 = v51;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sjoined by %{public}s", buf, 0x2Au);
      }
    }
  }

  else
  {
    nw_protocol_set_input_handler(handle, a2);
    v14 = 0;
    *handle = *a2->flow_id;
    v15 = handle + 208;
    while (1)
    {
      v16 = v51[v14];
      *v15 = v16;
      if (!v16)
      {
        break;
      }

      ++v15;
      if (++v14 == 83)
      {
        *v15 = 0;
        break;
      }
    }
  }

  if (a2->output_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v44 = "nw_protocol_http_joining_add_input_handler";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
    }
  }

  else
  {
    nw_protocol_set_output_handler(a2, a1);
  }

  os_release(v10);
  return 1;
}

uint64_t nw_protocol_plugin_retry_connect(nw_protocol *a1, nw_protocol *a2)
{
  v141 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v82 = __nwlog_obj();
    *buf = 136446210;
    v134 = "nw_protocol_plugin_retry_connect";
    v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v131 = 0;
    if (!__nwlog_fault(v83, &type, &v131))
    {
      goto LABEL_249;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v131 != 1)
      {
        v84 = __nwlog_obj();
        v85 = type;
        if (os_log_type_enabled(v84, type))
        {
          *buf = 136446210;
          v134 = "nw_protocol_plugin_retry_connect";
          v86 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      backtrace_string = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v85 = type;
      v103 = os_log_type_enabled(v84, type);
      if (!backtrace_string)
      {
        if (v103)
        {
          *buf = 136446210;
          v134 = "nw_protocol_plugin_retry_connect";
          v86 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      if (!v103)
      {
        goto LABEL_193;
      }

      *buf = 136446466;
      v134 = "nw_protocol_plugin_retry_connect";
      v135 = 2082;
      v136 = backtrace_string;
      v104 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_192;
    }

    v84 = __nwlog_obj();
    v85 = type;
    if (!os_log_type_enabled(v84, type))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v134 = "nw_protocol_plugin_retry_connect";
    v86 = "%{public}s called with null protocol";
LABEL_248:
    _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0xCu);
    goto LABEL_249;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    v87 = __nwlog_obj();
    *buf = 136446210;
    v134 = "nw_protocol_plugin_retry_connect";
    v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null protocol->handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v131 = 0;
    if (!__nwlog_fault(v83, &type, &v131))
    {
      goto LABEL_249;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v131 != 1)
      {
        v84 = __nwlog_obj();
        v85 = type;
        if (os_log_type_enabled(v84, type))
        {
          *buf = 136446210;
          v134 = "nw_protocol_plugin_retry_connect";
          v86 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      backtrace_string = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v85 = type;
      v105 = os_log_type_enabled(v84, type);
      if (!backtrace_string)
      {
        if (v105)
        {
          *buf = 136446210;
          v134 = "nw_protocol_plugin_retry_connect";
          v86 = "%{public}s called with null protocol->handle, no backtrace";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      if (!v105)
      {
        goto LABEL_193;
      }

      *buf = 136446466;
      v134 = "nw_protocol_plugin_retry_connect";
      v135 = 2082;
      v136 = backtrace_string;
      v104 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
      goto LABEL_192;
    }

    v84 = __nwlog_obj();
    v85 = type;
    if (!os_log_type_enabled(v84, type))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v134 = "nw_protocol_plugin_retry_connect";
    v86 = "%{public}s called with null protocol->handle";
    goto LABEL_248;
  }

  v4 = handle[11];
  if (!v4)
  {
    v88 = __nwlog_obj();
    *buf = 136446210;
    v134 = "nw_protocol_plugin_retry_connect";
    v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null retry_plugin", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v131 = 0;
    if (!__nwlog_fault(v83, &type, &v131))
    {
      goto LABEL_249;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (!os_log_type_enabled(v84, type))
      {
        goto LABEL_249;
      }

      *buf = 136446210;
      v134 = "nw_protocol_plugin_retry_connect";
      v86 = "%{public}s called with null retry_plugin";
      goto LABEL_248;
    }

    if (v131 != 1)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v84, type))
      {
        *buf = 136446210;
        v134 = "nw_protocol_plugin_retry_connect";
        v86 = "%{public}s called with null retry_plugin, backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    backtrace_string = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type;
    v106 = os_log_type_enabled(v84, type);
    if (!backtrace_string)
    {
      if (v106)
      {
        *buf = 136446210;
        v134 = "nw_protocol_plugin_retry_connect";
        v86 = "%{public}s called with null retry_plugin, no backtrace";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    if (!v106)
    {
      goto LABEL_193;
    }

    *buf = 136446466;
    v134 = "nw_protocol_plugin_retry_connect";
    v135 = 2082;
    v136 = backtrace_string;
    v104 = "%{public}s called with null retry_plugin, dumping backtrace:%{public}s";
LABEL_192:
    _os_log_impl(&dword_181A37000, v84, v85, v104, buf, 0x16u);
    goto LABEL_193;
  }

  v5 = a2;
  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v90 = __nwlog_obj();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v134 = "nw_protocol_plugin_retry_connect";
        v135 = 2048;
        v136 = v2;
        _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s called %p", buf, 0x16u);
      }
    }

    if (!*(v4 + 56))
    {
      if (!(*(v4 + 32))(v2, v5))
      {
        return 1;
      }

LABEL_51:
      output_handler = v2->output_handler;
      if (output_handler)
      {
        v32 = output_handler->handle;
        v33 = v2->output_handler;
        if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *output_handler[1].flow_id) != 0)
        {
          callbacks = v33[1].callbacks;
          v34 = 0;
          if (callbacks)
          {
            v33[1].callbacks = (&callbacks->add_input_handler + 1);
          }
        }

        else
        {
          v34 = 1;
        }

        v39 = v2->handle;
        v40 = v2;
        if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v40 = *v2[1].flow_id) != 0)
        {
          v43 = v40[1].callbacks;
          if (v43)
          {
            v41 = 0;
            v40[1].callbacks = (&v43->add_input_handler + 1);
            v42 = output_handler->callbacks;
            if (!v42)
            {
              goto LABEL_161;
            }
          }

          else
          {
            v41 = 0;
            v42 = output_handler->callbacks;
            if (!v42)
            {
              goto LABEL_161;
            }
          }
        }

        else
        {
          v41 = 1;
          v42 = output_handler->callbacks;
          if (!v42)
          {
            goto LABEL_161;
          }
        }

        connect = v42->connect;
        if (connect)
        {
          result = connect(output_handler, v2);
          if (v41)
          {
LABEL_83:
            if ((v34 & 1) == 0)
            {
              v52 = output_handler->handle;
              if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
              {
                v53 = output_handler[1].callbacks;
                if (v53)
                {
                  v54 = (v53 - 1);
                  output_handler[1].callbacks = v54;
                  if (!v54)
                  {
                    v55 = result;
                    v56 = *output_handler[1].flow_id;
                    if (v56)
                    {
                      *output_handler[1].flow_id = 0;
                      v56[2](v56);
                      _Block_release(v56);
                    }

                    if (output_handler[1].flow_id[8])
                    {
                      v57 = *output_handler[1].flow_id;
                      if (v57)
                      {
                        _Block_release(v57);
                      }
                    }

                    free(output_handler);
                    return v55;
                  }
                }
              }
            }

            return result;
          }

LABEL_72:
          v46 = v2->handle;
          if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v47 = v2[1].callbacks;
            if (v47)
            {
              v48 = (v47 - 1);
              v2[1].callbacks = v48;
              if (!v48)
              {
                v49 = result;
                v50 = *v2[1].flow_id;
                if (v50)
                {
                  *v2[1].flow_id = 0;
                  v50[2](v50);
                  _Block_release(v50);
                }

                if (v2[1].flow_id[8])
                {
                  v51 = *v2[1].flow_id;
                  if (v51)
                  {
                    _Block_release(v51);
                  }
                }

                free(v2);
                result = v49;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_161:
        v91 = __nwlog_obj();
        name = output_handler->identifier->name;
        *buf = 136446722;
        v134 = "__nw_protocol_connect";
        if (!name)
        {
          name = "invalid";
        }

        v135 = 2082;
        v136 = name;
        v137 = 2048;
        v138 = output_handler;
        LODWORD(v128) = 32;
        v93 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, v128);
        type = OS_LOG_TYPE_ERROR;
        v131 = 0;
        if (__nwlog_fault(v93, &type, &v131))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v94 = __nwlog_obj();
            v95 = type;
            if (!os_log_type_enabled(v94, type))
            {
              goto LABEL_261;
            }

            v96 = output_handler->identifier->name;
            if (!v96)
            {
              v96 = "invalid";
            }

            *buf = 136446722;
            v134 = "__nw_protocol_connect";
            v135 = 2082;
            v136 = v96;
            v137 = 2048;
            v138 = output_handler;
            v97 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
LABEL_260:
            _os_log_impl(&dword_181A37000, v94, v95, v97, buf, 0x20u);
            goto LABEL_261;
          }

          if (v131 != 1)
          {
            v94 = __nwlog_obj();
            v95 = type;
            if (!os_log_type_enabled(v94, type))
            {
              goto LABEL_261;
            }

            v123 = output_handler->identifier->name;
            if (!v123)
            {
              v123 = "invalid";
            }

            *buf = 136446722;
            v134 = "__nw_protocol_connect";
            v135 = 2082;
            v136 = v123;
            v137 = 2048;
            v138 = output_handler;
            v97 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
            goto LABEL_260;
          }

          v115 = __nw_create_backtrace_string();
          v94 = __nwlog_obj();
          v95 = type;
          v116 = os_log_type_enabled(v94, type);
          if (!v115)
          {
            if (!v116)
            {
              goto LABEL_261;
            }

            v126 = output_handler->identifier->name;
            if (!v126)
            {
              v126 = "invalid";
            }

            *buf = 136446722;
            v134 = "__nw_protocol_connect";
            v135 = 2082;
            v136 = v126;
            v137 = 2048;
            v138 = output_handler;
            v97 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
            goto LABEL_260;
          }

          if (v116)
          {
            v117 = output_handler->identifier->name;
            if (!v117)
            {
              v117 = "invalid";
            }

            *buf = 136446978;
            v134 = "__nw_protocol_connect";
            v135 = 2082;
            v136 = v117;
            v137 = 2048;
            v138 = output_handler;
            v139 = 2082;
            v140 = v115;
            _os_log_impl(&dword_181A37000, v94, v95, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v115);
        }

LABEL_261:
        if (v93)
        {
          free(v93);
        }

        result = 0;
        if (v41)
        {
          goto LABEL_83;
        }

        goto LABEL_72;
      }

      v130 = 0;
      v35 = v5->handle;
      v36 = v5;
      if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *v5[1].flow_id) != 0)
      {
        v58 = v36[1].callbacks;
        v37 = 0;
        if (v58)
        {
          v36[1].callbacks = (&v58->add_input_handler + 1);
        }
      }

      else
      {
        v37 = 1;
      }

      v59 = v2->handle;
      v60 = v2;
      if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v60 = *v2[1].flow_id) != 0)
      {
        v63 = v60[1].callbacks;
        if (v63)
        {
          v61 = 0;
          v60[1].callbacks = (&v63->add_input_handler + 1);
          v62 = v5->callbacks;
          if (!v62)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v61 = 0;
          v62 = v5->callbacks;
          if (!v62)
          {
            goto LABEL_194;
          }
        }
      }

      else
      {
        v61 = 1;
        v62 = v5->callbacks;
        if (!v62)
        {
          goto LABEL_194;
        }
      }

      notify = v62->notify;
      if (notify)
      {
        notify(v5, v2, 23, &v130, 1);
LABEL_109:
        if ((v61 & 1) == 0)
        {
          v65 = v2->handle;
          if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v66 = v2[1].callbacks;
            if (v66)
            {
              v67 = (v66 - 1);
              v2[1].callbacks = v67;
              if (!v67)
              {
                v68 = *v2[1].flow_id;
                if (v68)
                {
                  *v2[1].flow_id = 0;
                  v68[2](v68);
                  _Block_release(v68);
                }

                if (v2[1].flow_id[8])
                {
                  v69 = *v2[1].flow_id;
                  if (v69)
                  {
                    _Block_release(v69);
                  }
                }

                free(v2);
              }
            }
          }
        }

        if ((v37 & 1) == 0)
        {
          v70 = v5->handle;
          if (v70 == &nw_protocol_ref_counted_handle || v70 == &nw_protocol_ref_counted_additional_handle && (v5 = *v5[1].flow_id) != 0)
          {
            v71 = v5[1].callbacks;
            if (v71)
            {
              v72 = (v71 - 1);
              v5[1].callbacks = v72;
              if (!v72)
              {
                v73 = *v5[1].flow_id;
                if (v73)
                {
                  *v5[1].flow_id = 0;
                  v73[2](v73);
                  _Block_release(v73);
                }

                if (v5[1].flow_id[8])
                {
                  v74 = *v5[1].flow_id;
                  if (v74)
                  {
                    _Block_release(v74);
                  }
                }

                free(v5);
              }
            }
          }
        }

        return 1;
      }

LABEL_194:
      v108 = __nwlog_obj();
      v109 = v5->identifier->name;
      *buf = 136446722;
      v134 = "__nw_protocol_notify";
      if (!v109)
      {
        v109 = "invalid";
      }

      v135 = 2082;
      v136 = v109;
      v137 = 2048;
      v138 = v5;
      LODWORD(v128) = 32;
      v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, v128);
      type = OS_LOG_TYPE_ERROR;
      v131 = 0;
      if (!__nwlog_fault(v110, &type, &v131))
      {
        goto LABEL_270;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v112 = type;
        if (!os_log_type_enabled(v111, type))
        {
          goto LABEL_270;
        }

        v113 = v5->identifier->name;
        if (!v113)
        {
          v113 = "invalid";
        }

        *buf = 136446722;
        v134 = "__nw_protocol_notify";
        v135 = 2082;
        v136 = v113;
        v137 = 2048;
        v138 = v5;
        v114 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
      }

      else if (v131 == 1)
      {
        v120 = __nw_create_backtrace_string();
        v111 = __nwlog_obj();
        v112 = type;
        v121 = os_log_type_enabled(v111, type);
        if (v120)
        {
          if (v121)
          {
            v122 = v5->identifier->name;
            if (!v122)
            {
              v122 = "invalid";
            }

            *buf = 136446978;
            v134 = "__nw_protocol_notify";
            v135 = 2082;
            v136 = v122;
            v137 = 2048;
            v138 = v5;
            v139 = 2082;
            v140 = v120;
            _os_log_impl(&dword_181A37000, v111, v112, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v120);
          goto LABEL_270;
        }

        if (!v121)
        {
LABEL_270:
          if (v110)
          {
            free(v110);
          }

          goto LABEL_109;
        }

        v127 = v5->identifier->name;
        if (!v127)
        {
          v127 = "invalid";
        }

        *buf = 136446722;
        v134 = "__nw_protocol_notify";
        v135 = 2082;
        v136 = v127;
        v137 = 2048;
        v138 = v5;
        v114 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
      }

      else
      {
        v111 = __nwlog_obj();
        v112 = type;
        if (!os_log_type_enabled(v111, type))
        {
          goto LABEL_270;
        }

        v125 = v5->identifier->name;
        if (!v125)
        {
          v125 = "invalid";
        }

        *buf = 136446722;
        v134 = "__nw_protocol_notify";
        v135 = 2082;
        v136 = v125;
        v137 = 2048;
        v138 = v5;
        v114 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v111, v112, v114, buf, 0x20u);
      goto LABEL_270;
    }

    v130 = 1;
    v6 = v5->handle;
    v7 = v5;
    if (v6 == &nw_protocol_ref_counted_handle || v6 == &nw_protocol_ref_counted_additional_handle && (v7 = *v5[1].flow_id) != 0)
    {
      v9 = v7[1].callbacks;
      v8 = 0;
      if (v9)
      {
        v7[1].callbacks = (&v9->add_input_handler + 1);
      }
    }

    else
    {
      v8 = 1;
    }

    v10 = v2->handle;
    v11 = v2;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = *v2[1].flow_id) != 0)
    {
      v14 = v11[1].callbacks;
      if (v14)
      {
        v12 = 0;
        v11[1].callbacks = (&v14->add_input_handler + 1);
        v13 = v5->callbacks;
        if (!v13)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v12 = 0;
        v13 = v5->callbacks;
        if (!v13)
        {
          goto LABEL_135;
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = v5->callbacks;
      if (!v13)
      {
        goto LABEL_135;
      }
    }

    v15 = v13->notify;
    if (v15)
    {
      v15(v5, v2, 23, &v130, 1);
      goto LABEL_26;
    }

LABEL_135:
    v75 = __nwlog_obj();
    v76 = v5->identifier->name;
    *buf = 136446722;
    v134 = "__nw_protocol_notify";
    if (!v76)
    {
      v76 = "invalid";
    }

    v135 = 2082;
    v136 = v76;
    v137 = 2048;
    v138 = v5;
    v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v131 = 0;
    if (!__nwlog_fault(v77, &type, &v131))
    {
      goto LABEL_215;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v78 = __nwlog_obj();
      v79 = type;
      if (!os_log_type_enabled(v78, type))
      {
        goto LABEL_215;
      }

      v80 = v5->identifier->name;
      if (!v80)
      {
        v80 = "invalid";
      }

      *buf = 136446722;
      v134 = "__nw_protocol_notify";
      v135 = 2082;
      v136 = v80;
      v137 = 2048;
      v138 = v5;
      v81 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
    }

    else
    {
      if (v131 == 1)
      {
        v98 = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v79 = type;
        log = v99;
        v100 = os_log_type_enabled(v99, type);
        if (v98)
        {
          if (v100)
          {
            v101 = v5->identifier->name;
            if (!v101)
            {
              v101 = "invalid";
            }

            *buf = 136446978;
            v134 = "__nw_protocol_notify";
            v135 = 2082;
            v136 = v101;
            v137 = 2048;
            v138 = v5;
            v139 = 2082;
            v140 = v98;
            _os_log_impl(&dword_181A37000, log, v79, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v98);
          goto LABEL_215;
        }

        if (!v100)
        {
LABEL_215:
          if (v77)
          {
            free(v77);
          }

LABEL_26:
          if ((v12 & 1) == 0)
          {
            v16 = v2->handle;
            v17 = v2;
            if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v2[1].flow_id) != 0)
            {
              v18 = v17[1].callbacks;
              if (v18)
              {
                v19 = (v18 - 1);
                v17[1].callbacks = v19;
                if (!v19)
                {
                  v20 = *v17[1].flow_id;
                  if (v20)
                  {
                    *v17[1].flow_id = 0;
                    v20[2](v20);
                    _Block_release(v20);
                  }

                  if (v17[1].flow_id[8])
                  {
                    v21 = *v17[1].flow_id;
                    if (v21)
                    {
                      _Block_release(v21);
                    }
                  }

                  free(v17);
                }
              }
            }
          }

          if ((v8 & 1) == 0)
          {
            v22 = v5->handle;
            v23 = v5;
            if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v23 = *v5[1].flow_id) != 0)
            {
              v24 = v23[1].callbacks;
              if (v24)
              {
                v25 = (v24 - 1);
                v23[1].callbacks = v25;
                if (!v25)
                {
                  v26 = *v23[1].flow_id;
                  if (v26)
                  {
                    *v23[1].flow_id = 0;
                    v26[2](v26);
                    _Block_release(v26);
                  }

                  if (v23[1].flow_id[8])
                  {
                    v27 = *v23[1].flow_id;
                    if (v27)
                    {
                      _Block_release(v27);
                    }
                  }

                  free(v23);
                }
              }
            }
          }

          v28 = *(v4 + 56);
          v29 = *(v4 + 64);
          *(v4 + 56) = 0;
          *(v4 + 64) = v29 | 1;
          v30 = v28[2](v28);
          _Block_release(v28);
          if ((v30 & 1) == 0)
          {
            return 1;
          }

          goto LABEL_51;
        }

        v124 = v5->identifier->name;
        if (!v124)
        {
          v124 = "invalid";
        }

        *buf = 136446722;
        v134 = "__nw_protocol_notify";
        v135 = 2082;
        v136 = v124;
        v137 = 2048;
        v138 = v5;
        v81 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
        v119 = log;
LABEL_214:
        _os_log_impl(&dword_181A37000, v119, v79, v81, buf, 0x20u);
        goto LABEL_215;
      }

      v78 = __nwlog_obj();
      v79 = type;
      if (!os_log_type_enabled(v78, type))
      {
        goto LABEL_215;
      }

      v118 = v5->identifier->name;
      if (!v118)
      {
        v118 = "invalid";
      }

      *buf = 136446722;
      v134 = "__nw_protocol_notify";
      v135 = 2082;
      v136 = v118;
      v137 = 2048;
      v138 = v5;
      v81 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
    }

    v119 = v78;
    goto LABEL_214;
  }

  v89 = __nwlog_obj();
  *buf = 136446210;
  v134 = "nw_protocol_plugin_retry_connect";
  v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s called with null other_protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v131 = 0;
  if (!__nwlog_fault(v83, &type, &v131))
  {
    goto LABEL_249;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v131 != 1)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v84, type))
      {
        *buf = 136446210;
        v134 = "nw_protocol_plugin_retry_connect";
        v86 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    backtrace_string = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type;
    v107 = os_log_type_enabled(v84, type);
    if (!backtrace_string)
    {
      if (v107)
      {
        *buf = 136446210;
        v134 = "nw_protocol_plugin_retry_connect";
        v86 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    if (v107)
    {
      *buf = 136446466;
      v134 = "nw_protocol_plugin_retry_connect";
      v135 = 2082;
      v136 = backtrace_string;
      v104 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_192;
    }

LABEL_193:
    free(backtrace_string);
    goto LABEL_249;
  }

  v84 = __nwlog_obj();
  v85 = type;
  if (os_log_type_enabled(v84, type))
  {
    *buf = 136446210;
    v134 = "nw_protocol_plugin_retry_connect";
    v86 = "%{public}s called with null other_protocol";
    goto LABEL_248;
  }

LABEL_249:
  if (v83)
  {
    free(v83);
  }

  return 0;
}

uint64_t nw_protocol_http_security_create::$_3::__invoke(nw_protocol_http_security_create::$_3 *this, nw_protocol *a2, nw_protocol *a3)
{
  v139 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    v66 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "operator()";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s called with null protocol", buf, 12);
    v134[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v67, v134, type))
    {
      goto LABEL_178;
    }

    if (v134[0] == 17)
    {
      v68 = __nwlog_obj();
      v69 = v134[0];
      if (!os_log_type_enabled(v68, v134[0]))
      {
        goto LABEL_178;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "operator()";
      v70 = "%{public}s called with null protocol";
LABEL_177:
      _os_log_impl(&dword_181A37000, v68, v69, v70, buf, 0xCu);
      goto LABEL_178;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v68 = __nwlog_obj();
      v69 = v134[0];
      if (os_log_type_enabled(v68, v134[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v70 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v69 = v134[0];
    v74 = os_log_type_enabled(v68, v134[0]);
    if (!backtrace_string)
    {
      if (v74)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v70 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    if (!v74)
    {
      goto LABEL_145;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "operator()";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v75 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_144:
    _os_log_impl(&dword_181A37000, v68, v69, v75, buf, 0x16u);
    goto LABEL_145;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    v71 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "operator()";
    v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null http_security", buf, 12);
    v134[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v67, v134, type))
    {
      goto LABEL_178;
    }

    if (v134[0] == 17)
    {
      v68 = __nwlog_obj();
      v69 = v134[0];
      if (!os_log_type_enabled(v68, v134[0]))
      {
        goto LABEL_178;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "operator()";
      v70 = "%{public}s called with null http_security";
      goto LABEL_177;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v68 = __nwlog_obj();
      v69 = v134[0];
      if (os_log_type_enabled(v68, v134[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v70 = "%{public}s called with null http_security, backtrace limit exceeded";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v69 = v134[0];
    v76 = os_log_type_enabled(v68, v134[0]);
    if (!backtrace_string)
    {
      if (v76)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v70 = "%{public}s called with null http_security, no backtrace";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    if (!v76)
    {
      goto LABEL_145;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "operator()";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = backtrace_string;
    v75 = "%{public}s called with null http_security, dumping backtrace:%{public}s";
    goto LABEL_144;
  }

  if (a2)
  {
    v5 = *(v3 + 552);
    if ((v5 & 2) != 0)
    {
      return (v5 >> 1) & 1;
    }

    *(v3 + 552) = v5 | 2;
    parameters = nw_protocol_get_parameters(a2);
    v7 = nw_parameters_copy_url_endpoint(parameters);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = _nw_endpoint_copy_cfurl(v9);

      v11 = *(v3 + 464);
      if (v11)
      {
        v12 = *(v3 + 456);
        if (v12)
        {
          CFRelease(v12);
          v11 = *(v3 + 464);
        }
      }

      *(v3 + 456) = v10;
      *(v3 + 464) = v11 | 1;
      v13 = v9;
      hostname = _nw_endpoint_get_hostname(v13);

      v15 = v13;
      is_secure = _nw_endpoint_url_scheme_is_secure(v15);

      v17 = is_secure ^ 1;
    }

    else
    {
      hostname = 0;
      v17 = 1;
    }

    v18 = nw_parameters_copy_protocol_options_legacy(parameters, v3);
    if (v18)
    {
      v19 = v18;
      v20 = nw_http_security_options_copy_hsts_storage(v18);
      v21 = *(v3 + 480);
      if ((v21 & 1) != 0 && *(v3 + 472))
      {
        v22 = v20;
        os_release(*(v3 + 472));
        v20 = v22;
        v21 = *(v3 + 480);
      }

      *(v3 + 472) = v20;
      *(v3 + 480) = v21 | 1;
      v23 = nw_http_security_options_copy_connection_state_storage(v19);
      v24 = *(v3 + 496);
      object = v19;
      v116 = hostname;
      v114 = v17;
      if ((v24 & 1) != 0 && *(v3 + 488))
      {
        v25 = v23;
        os_release(*(v3 + 488));
        v23 = v25;
        v24 = *(v3 + 496);
      }

      v112 = a2;
      v113 = parameters;
      *(v3 + 488) = v23;
      *(v3 + 496) = v24 | 1;
      v26 = nw_parameters_copy_default_protocol_stack(parameters);
      application_protocol_count = nw_protocol_stack_get_application_protocol_count(v26);
      if (!application_protocol_count)
      {
        v41 = 0;
        v42 = hostname;
        goto LABEL_50;
      }

      v110 = v8;
      v28 = v5;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = application_protocol_count - 1;
      while (1)
      {
        v35 = nw_protocol_stack_copy_application_protocol_at_index(v26, v29);
        protocol_handle = nw_protocol_options_get_protocol_handle(v35);
        if ((v30 & 1) == 0)
        {
LABEL_35:
          v38 = 0;
          v30 |= protocol_handle == v3;
          goto LABEL_36;
        }

        if (nw_protocol_options_is_tls(v35))
        {
          break;
        }

        if (nw_protocol_options_is_quic(v35))
        {
          v37 = nw_quic_copy_sec_protocol_options(v35);
          if (!v31)
          {
            goto LABEL_28;
          }

LABEL_27:
          os_release(v31);
LABEL_28:
          v30 = 0;
          v38 = 1;
          v31 = v37;
          goto LABEL_36;
        }

        if (!nw_protocol_options_is_tcp(v35) && (nw_protocol_options_is_masque(v35) & 1) == 0)
        {
          goto LABEL_35;
        }

        v30 = 0;
        v38 = 1;
LABEL_36:
        if (v35)
        {
          os_release(v35);
        }

        if (v32 == v29++)
        {
          v34 = 1;
        }

        else
        {
          v34 = v38;
        }

        if (v34 == 1)
        {
          v5 = v28;
          if (v30)
          {
            v39 = nw_protocol_stack_copy_transport_protocol(v26);
            if (nw_protocol_options_is_tls(v39))
            {
              v40 = v39;
              goto LABEL_45;
            }

            if (nw_protocol_options_is_quic(v39))
            {
              v40 = nw_quic_copy_sec_protocol_options(v39);
LABEL_45:
              v41 = v40;
              v42 = v116;
              if (v31)
              {
                os_release(v31);
              }

              if (v39)
              {
LABEL_48:
                os_release(v39);
              }
            }

            else
            {
              v41 = v31;
              v42 = v116;
              if (v39)
              {
                goto LABEL_48;
              }
            }

            v8 = v110;
          }

          else
          {
            v41 = v31;
            v8 = v110;
            v42 = v116;
          }

LABEL_50:
          v43 = v114;
          if (!v42)
          {
            v43 = 0;
          }

          if (v43 != 1)
          {
            goto LABEL_220;
          }

          v44 = v8;
          v45 = sec_protocol_configuration_copy_singleton();
          host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v42, 0);
          if (nw_endpoint_get_type(host_with_numeric_port) == nw_endpoint_type_address)
          {
            memset(buf, 0, sizeof(buf));
            LODWORD(v128) = 0;
            if (nw_endpoint_fillout_v4v6_address(host_with_numeric_port, buf))
            {
              if (BYTE1(buf[0]) == 2 && LOBYTE(buf[0]) >= 0x10u)
              {
                v47 = bswap32(HIDWORD(buf[0]));
                if ((v47 & 0xFF000000) == 0x7F000000 || (v47 & 0xFFFF0000) == 0xC0A80000 || (v47 & 0xFFF00000) == 0xAC100000 || (v47 & 0xFFFF0000) == 0xA9FE0000 || (v47 & 0xFF000000) == 0xA000000)
                {
                  goto LABEL_93;
                }

LABEL_74:
                input_handler = nw_protocol_get_input_handler(v3);
                path = nw_protocol_get_path(input_handler);
                if ((nw_path_is_direct(path) & 1) == 0)
                {
                  nw_path_is_local(path);
                }
              }

              else if (BYTE1(buf[0]) != 30 || LOBYTE(buf[0]) < 0x1Cu || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*&buf[1], xmmword_182B08D30)))) & 1) != 0 && LOBYTE(buf[1]) - 252 >= 2 && (LOBYTE(buf[1]) != 254 || (buf[1] & 0xC000) != 0x8000))
              {
                goto LABEL_74;
              }

LABEL_93:
              if ((sec_protocol_configuration_tls_required_for_address() & 1) == 0)
              {
LABEL_94:
                if (!*(v3 + 472) || (nw_http_security_options_get_skip_hsts_lookup(object) & 1) != 0)
                {
                  goto LABEL_216;
                }

                v115 = v45;
                v111 = v5;
                v57 = *(v3 + 472);
                if (v57)
                {
                  v58 = v57;
                  v59 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v42, 0x600u);
                  LOBYTE(buf[0]) = 0;
                  v60 = [v58[1] shouldPromoteHostToHTTPS:v59 isPreload:buf];
                  v117 = LOBYTE(buf[0]);

                  if (v60)
                  {
                    if ((*(v3 + 198) & 1) == 0)
                    {
                      v61 = __nwlog_obj();
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http_security_connect";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v3 + 114;
                        HIWORD(buf[2]) = 2080;
                        v128 = " ";
                        LOWORD(v129) = 1024;
                        *(&v129 + 2) = v117;
                        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sperforming HSTS upgrade, preload=%{BOOL}d", buf, 0x26u);
                      }
                    }

                    secure_url = nw_http_security_create_secure_url(v3, *(v3 + 456));
                    *v134 = 0;
                    *&v134[8] = v134;
                    *&v134[16] = 0x3802000000;
                    v135 = __Block_byref_object_copy__36;
                    v136 = __Block_byref_object_dispose__37;
                    v137 = nw_endpoint_create_with_cfurl(secure_url);
                    v138 |= 1u;
                    *type = 0;
                    v120 = type;
                    v121 = 0x3802000000;
                    v122 = __Block_byref_object_copy__38;
                    v123 = __Block_byref_object_dispose__39;
                    aBlock = nw_http_security_options_copy_handler(object);
                    v125 |= 1u;
                    v63 = nw_http_security_options_copy_handler_queue(object);
                    v64 = *(v120 + 5);
                    nw_protocol_plugin_retry_begin_async(v3 + 344);
                    if (v64 && v63)
                    {
                      buf[0] = MEMORY[0x1E69E9820];
                      buf[1] = 0x40000000;
                      buf[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke;
                      v128 = &unk_1E6A30278;
                      v129 = type;
                      v130 = v134;
                      v133 = v117;
                      v131 = v113;
                      v132 = v3;
                      dispatch_async(v63, buf);
                      goto LABEL_107;
                    }

                    v65 = *(v3 + 520);
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_47;
                    v128 = &unk_1E6A302A0;
                    v129 = v134;
                    v130 = v3;
                    nw_queue_context_async(v65, buf);
                    if (v63)
                    {
LABEL_107:
                      dispatch_release(v63);
                    }

                    _Block_object_dispose(type, 8);
                    v5 = v111;
                    if ((v125 & 1) != 0 && aBlock)
                    {
                      _Block_release(aBlock);
                    }

                    _Block_object_dispose(v134, 8);
                    if ((v138 & 1) != 0 && v137)
                    {
                      os_release(v137);
                    }

                    if (secure_url)
                    {
                      CFRelease(secure_url);
                    }

                    if (host_with_numeric_port)
                    {
                      os_release(host_with_numeric_port);
                    }

                    v8 = v44;
                    v56 = v115;
                    if (!v115)
                    {
LABEL_221:
                      if (v26)
                      {
                        os_release(v26);
                      }

                      if (v41)
                      {
                        os_release(v41);
                      }

                      os_release(object);
                      goto LABEL_226;
                    }

LABEL_87:
                    os_release(v56);
                    goto LABEL_221;
                  }

LABEL_216:
                  if (host_with_numeric_port)
                  {
                    os_release(host_with_numeric_port);
                  }

                  v8 = v44;
                  if (v45)
                  {
                    os_release(v45);
                  }

LABEL_220:
                  buf[0] = MEMORY[0x1E69E9820];
                  buf[1] = 0x40000000;
                  buf[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_2_49;
                  v128 = &__block_descriptor_tmp_50;
                  v129 = v112;
                  nw_http_security_perform_url_filter_check(v3, v8, v113, buf, COERCE_DOUBLE(0x40000000));
                  goto LABEL_221;
                }

                v98 = __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_hsts_storage_should_upgrade";
                LODWORD(v109) = 12;
                v99 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v98, 16, "%{public}s called with null storage", buf, v109);

                v134[0] = 16;
                type[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v99, v134, type))
                {
                  if (v134[0] == 17)
                  {
                    v100 = __nwlog_obj();
                    v101 = v134[0];
                    if (os_log_type_enabled(v100, v134[0]))
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_hsts_storage_should_upgrade";
                      _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null storage", buf, 0xCu);
                    }

                    goto LABEL_192;
                  }

                  if (type[0] == OS_LOG_TYPE_INFO)
                  {
                    v104 = __nw_create_backtrace_string();
                    v105 = __nwlog_obj();
                    v106 = v134[0];
                    v107 = os_log_type_enabled(v105, v134[0]);
                    if (v104)
                    {
                      if (v107)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_hsts_storage_should_upgrade";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v104;
                        _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null storage, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v104);
                    }

                    else
                    {
                      if (v107)
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_hsts_storage_should_upgrade";
                        _os_log_impl(&dword_181A37000, v105, v106, "%{public}s called with null storage, no backtrace", buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v100 = __nwlog_obj();
                    v108 = v134[0];
                    if (os_log_type_enabled(v100, v134[0]))
                    {
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_hsts_storage_should_upgrade";
                      _os_log_impl(&dword_181A37000, v100, v108, "%{public}s called with null storage, backtrace limit exceeded", buf, 0xCu);
                    }

LABEL_192:
                  }
                }

                if (v99)
                {
                  free(v99);
                }

                v5 = v111;
                goto LABEL_216;
              }

LABEL_79:
              v51 = v45;
              if ((*(v3 + 198) & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v52 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf[0]) = 136446722;
                  *(buf + 4) = "nw_http_security_connect";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v3 + 114;
                  HIWORD(buf[2]) = 2080;
                  v128 = " ";
                  _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sATS requires TLS", buf, 0x20u);
                }
              }

              nw_protocol_error(*(v3 + 48), v3);
              client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(v113, v3);
              if (client_metadata_in_parameters)
              {
                v54 = client_metadata_in_parameters;
                nw_http_client_metadata_set_client_error(client_metadata_in_parameters, 4);
                nw_protocol_disconnected(*(v3 + 48), v3);
                os_release(v54);
                v55 = v51;
                if (host_with_numeric_port)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                nw_protocol_disconnected(*(v3 + 48), v3);
                v55 = v51;
                if (host_with_numeric_port)
                {
LABEL_84:
                  os_release(host_with_numeric_port);
                }
              }

              v8 = v44;
              if (!v55)
              {
                goto LABEL_221;
              }

              v56 = v55;
              goto LABEL_87;
            }

            v87 = __nwlog_obj();
            *v134 = 136446210;
            *&v134[4] = "nw_http_security_is_local_ip_address";
            type[0] = OS_LOG_TYPE_ERROR;
            v126 = 0;
            v88 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s called with null success", v134, 12);
            if (!__nwlog_fault(v88, type, &v126))
            {
              goto LABEL_197;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v89 = __nwlog_obj();
              v90 = type[0];
              if (os_log_type_enabled(v89, type[0]))
              {
                *v134 = 136446210;
                *&v134[4] = "nw_http_security_is_local_ip_address";
                v91 = "%{public}s called with null success";
                goto LABEL_195;
              }

              goto LABEL_197;
            }

            if (v126 == 1)
            {
              v95 = __nw_create_backtrace_string();
              v96 = __nwlog_obj();
              HIDWORD(v109) = type[0];
              v97 = os_log_type_enabled(v96, type[0]);
              if (v95)
              {
                if (v97)
                {
                  *v134 = 136446466;
                  *&v134[4] = "nw_http_security_is_local_ip_address";
                  *&v134[12] = 2082;
                  *&v134[14] = v95;
                  _os_log_impl(&dword_181A37000, v96, BYTE4(v109), "%{public}s called with null success, dumping backtrace:%{public}s", v134, 0x16u);
                }

                free(v95);
                goto LABEL_197;
              }

              if (!v97)
              {
LABEL_197:
                if (v88)
                {
                  free(v88);
                }

                v42 = v116;
                goto LABEL_93;
              }

              *v134 = 136446210;
              *&v134[4] = "nw_http_security_is_local_ip_address";
              v91 = "%{public}s called with null success, no backtrace";
              v102 = v96;
              v103 = BYTE4(v109);
            }

            else
            {
              v89 = __nwlog_obj();
              v90 = type[0];
              if (!os_log_type_enabled(v89, type[0]))
              {
                goto LABEL_197;
              }

              *v134 = 136446210;
              *&v134[4] = "nw_http_security_is_local_ip_address";
              v91 = "%{public}s called with null success, backtrace limit exceeded";
LABEL_195:
              v102 = v89;
              v103 = v90;
            }

            _os_log_impl(&dword_181A37000, v102, v103, v91, v134, 0xCu);
            goto LABEL_197;
          }

          v48 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v42, 0x8000100u);
          if (CFStringGetLength(v48))
          {
            if (CFStringHasSuffix(v48, @".local") || CFStringHasSuffix(v48, @".local."))
            {
              if (!v48)
              {
                goto LABEL_78;
              }
            }

            else
            {
              CFStringFind(v48, @".", 4uLL);
              if (!v48)
              {
LABEL_78:
                if (!sec_protocol_configuration_tls_required_for_host())
                {
                  goto LABEL_94;
                }

                goto LABEL_79;
              }
            }
          }

          else if (!v48)
          {
            goto LABEL_78;
          }

          CFRelease(v48);
          goto LABEL_78;
        }
      }

      v37 = v35;
      if (v31)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v78 = __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http_security_connect";
    v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null protocol_options", buf, 12);
    v134[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v79, v134, type))
    {
      if (v134[0] == 17)
      {
        v80 = __nwlog_obj();
        v81 = v134[0];
        if (os_log_type_enabled(v80, v134[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http_security_connect";
          v82 = "%{public}s called with null protocol_options";
LABEL_167:
          v92 = v80;
          v93 = v81;
LABEL_168:
          _os_log_impl(&dword_181A37000, v92, v93, v82, buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        v83 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v85 = v134[0];
        v86 = os_log_type_enabled(v84, v134[0]);
        if (!v83)
        {
          if (!v86)
          {
            goto LABEL_169;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http_security_connect";
          v82 = "%{public}s called with null protocol_options, no backtrace";
          v92 = v84;
          v93 = v85;
          goto LABEL_168;
        }

        if (v86)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http_security_connect";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v83;
          _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null protocol_options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v83);
      }

      else
      {
        v80 = __nwlog_obj();
        v81 = v134[0];
        if (os_log_type_enabled(v80, v134[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http_security_connect";
          v82 = "%{public}s called with null protocol_options, backtrace limit exceeded";
          goto LABEL_167;
        }
      }
    }

LABEL_169:
    if (v79)
    {
      free(v79);
    }

LABEL_226:
    if (v8)
    {
      os_release(v8);
    }

    return (v5 >> 1) & 1;
  }

  v72 = __nwlog_obj();
  LODWORD(buf[0]) = 136446210;
  *(buf + 4) = "operator()";
  v67 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null other_protocol", buf, 12);
  v134[0] = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v67, v134, type))
  {
    goto LABEL_178;
  }

  if (v134[0] != 17)
  {
    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v68 = __nwlog_obj();
      v69 = v134[0];
      if (os_log_type_enabled(v68, v134[0]))
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v70 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v69 = v134[0];
    v77 = os_log_type_enabled(v68, v134[0]);
    if (!backtrace_string)
    {
      if (v77)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "operator()";
        v70 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_177;
      }

      goto LABEL_178;
    }

    if (v77)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "operator()";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      v75 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_144;
    }

LABEL_145:
    free(backtrace_string);
    goto LABEL_178;
  }

  v68 = __nwlog_obj();
  v69 = v134[0];
  if (os_log_type_enabled(v68, v134[0]))
  {
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "operator()";
    v70 = "%{public}s called with null other_protocol";
    goto LABEL_177;
  }

LABEL_178:
  if (v67)
  {
    free(v67);
  }

  return 0;
}

id nw_http_security_options_copy_hsts_storage(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_security_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_security_definition_http_security_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__75915;
    v20 = __Block_byref_object_dispose__75916;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_security_options_copy_hsts_storage_block_invoke;
    v15[3] = &unk_1E6A3A858;
    v15[4] = buf;
    nw_protocol_options_access_handle(v3, v15);
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_security_options_copy_hsts_storage";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s protocol options are not http security", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v8, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_hsts_storage";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol options are not http security", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_http_security_options_copy_hsts_storage";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_hsts_storage";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_hsts_storage";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s protocol options are not http security, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void sub_181E9D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_http_security_options_copy_connection_state_storage(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_security_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_security_definition_onceToken, &__block_literal_global_48_77059);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_security_definition_http_security_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__75915;
    v20 = __Block_byref_object_dispose__75916;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_security_options_copy_connection_state_storage_block_invoke;
    v15[3] = &unk_1E6A3A858;
    v15[4] = buf;
    nw_protocol_options_access_handle(v3, v15);
    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s protocol options are not http security", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v8, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol options are not http security", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s protocol options are not http security, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_security_options_copy_connection_state_storage";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s protocol options are not http security, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_5:

  return v5;
}

void sub_181E9D494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sec_protocol_options_t nw_quic_copy_sec_protocol_options(nw_protocol_options_t options)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = options;
  if (nw_protocol_options_is_quic(v1))
  {
    if (nw_protocol_options_is_quic_stream(v1))
    {
      v2 = nw_quic_stream_copy_shared_connection_options(v1);

      v1 = v2;
    }

    v3 = _nw_quic_connection_copy_sec_protocol_options();
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_copy_sec_protocol_options";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_quic(options)", buf, 12);

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
        v15 = "nw_quic_copy_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_19:
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
            v15 = "nw_quic_copy_sec_protocol_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v15 = "nw_quic_copy_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_copy_sec_protocol_options";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void nw_http_security_perform_url_filter_check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v17 = __nwlog_obj();
    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null endpoint", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v18, &type, &v27))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_40;
      }

      buf[0].i32[0] = 136446210;
      *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
      v21 = "%{public}s called with null endpoint";
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v24 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v24)
        {
          buf[0].i32[0] = 136446466;
          *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
          buf[0].i16[6] = 2082;
          *(&buf[0].i64[1] + 6) = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v18)
        {
          return;
        }

LABEL_41:
        free(v18);
        return;
      }

      if (!v24)
      {
        goto LABEL_40;
      }

      buf[0].i32[0] = 136446210;
      *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
      v21 = "%{public}s called with null endpoint, no backtrace";
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_40;
      }

      buf[0].i32[0] = 136446210;
      *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
      v21 = "%{public}s called with null endpoint, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
    goto LABEL_40;
  }

  if (a4)
  {
    v9.n128_f64[0] = gotLoadHelper_x8__ne_url_filter_check(a5);
    if (*(v10 + 2216))
    {
      parameters = v8;
      v12 = v7;
      v13 = v6;
      if (!v8)
      {
        parameters = nw_protocol_get_parameters(v6);
      }

      v14 = nw_context_copy_cached_targeted_dispatch_queue(v13[65]);
      nw_parameters_get_effective_bundle_id(parameters);
      memset(buf, 0, sizeof(buf));
      nw_parameters_get_effective_audit_token(parameters, buf);
      nw_protocol_plugin_retry_begin_async((v13 + 43));
      v15 = v12;
      _nw_endpoint_get_url(v15);

      nw_parameters_get_sensitive_redacted(parameters);
      ne_url_filter_check_delayInitStub(COERCE_DOUBLE(0x40000000));
      if (v14)
      {
        dispatch_release(v14);
      }
    }

    else
    {
      v16 = *(a4 + 16);

      v16(a4, v9);
    }

    return;
  }

  v22 = __nwlog_obj();
  buf[0].i32[0] = 136446210;
  *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null allowed_handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v18, &type, &v27))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_40;
    }

    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v21 = "%{public}s called with null allowed_handler";
    goto LABEL_39;
  }

  if (v27 != 1)
  {
    v19 = __nwlog_obj();
    v20 = type;
    if (!os_log_type_enabled(v19, type))
    {
      goto LABEL_40;
    }

    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v21 = "%{public}s called with null allowed_handler, backtrace limit exceeded";
    goto LABEL_39;
  }

  v25 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v20 = type;
  v26 = os_log_type_enabled(v19, type);
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_40;
    }

    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    v21 = "%{public}s called with null allowed_handler, no backtrace";
    goto LABEL_39;
  }

  if (v26)
  {
    buf[0].i32[0] = 136446466;
    *(buf[0].i64 + 4) = "nw_http_security_perform_url_filter_check";
    buf[0].i16[6] = 2082;
    *(&buf[0].i64[1] + 6) = v25;
    _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null allowed_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v18)
  {
    goto LABEL_41;
  }
}

id nw_context_copy_cached_targeted_dispatch_queue(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[8];
    if (!v3)
    {
      v4 = dispatch_queue_create("com.apple.network.context_cached_queue", 0);
      v5 = v2[8];
      v2[8] = v4;

      nw_queue_context_target_dispatch_queue(v2, v2[8]);
      v3 = v2[8];
    }

    v6 = v3;
    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_context_copy_cached_targeted_dispatch_queue";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null context", buf, 12);

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
        v19 = "nw_context_copy_cached_targeted_dispatch_queue";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null context", buf, 0xCu);
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
          v19 = "nw_context_copy_cached_targeted_dispatch_queue";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_context_copy_cached_targeted_dispatch_queue";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_context_copy_cached_targeted_dispatch_queue";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_5:

  return v6;
}

void nw_protocol_plugin_retry_begin_async(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 104) + 1;
    *(a1 + 104) = v2;
    if (v2 == v2 << 31 >> 31)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 104);
    *buf = 136446978;
    v24 = "nw_protocol_plugin_retry_begin_async";
    v25 = 2082;
    v26 = "retry->async_count";
    v27 = 2048;
    v28 = 1;
    v29 = 2048;
    v30 = v3;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v4, &type, &v21))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v7 = *(a1 + 104);
        *buf = 136446978;
        v24 = "nw_protocol_plugin_retry_begin_async";
        v25 = 2082;
        v26 = "retry->async_count";
        v27 = 2048;
        v28 = 1;
        v29 = 2048;
        v30 = v7;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_16:
        _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      v10 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v10)
        {
          v11 = *(a1 + 104);
          *buf = 136447234;
          v24 = "nw_protocol_plugin_retry_begin_async";
          v25 = 2082;
          v26 = "retry->async_count";
          v27 = 2048;
          v28 = 1;
          v29 = 2048;
          v30 = v11;
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(backtrace_string);
        goto LABEL_17;
      }

      if (v10)
      {
        v13 = *(a1 + 104);
        *buf = 136446978;
        v24 = "nw_protocol_plugin_retry_begin_async";
        v25 = 2082;
        v26 = "retry->async_count";
        v27 = 2048;
        v28 = 1;
        v29 = 2048;
        v30 = v13;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_16;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v12 = *(a1 + 104);
        *buf = 136446978;
        v24 = "nw_protocol_plugin_retry_begin_async";
        v25 = 2082;
        v26 = "retry->async_count";
        v27 = 2048;
        v28 = 1;
        v29 = 2048;
        v30 = v12;
        v8 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 104) = -1;
    return;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_plugin_retry_begin_async";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null retry", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v24 = "nw_protocol_plugin_retry_begin_async";
      v18 = "%{public}s called with null retry";
      goto LABEL_34;
    }

    if (v21 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v24 = "nw_protocol_plugin_retry_begin_async";
      v18 = "%{public}s called with null retry, backtrace limit exceeded";
      goto LABEL_34;
    }

    v19 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v20 = os_log_type_enabled(v16, type);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_protocol_plugin_retry_begin_async";
        v25 = 2082;
        v26 = v19;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null retry, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      goto LABEL_35;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "nw_protocol_plugin_retry_begin_async";
      v18 = "%{public}s called with null retry, no backtrace";
LABEL_34:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    }
  }

LABEL_35:
  if (v15)
  {
    free(v15);
  }
}

BOOL nw_protocol_plugin_retry_end_async(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 104);
    *(a1 + 104) = v2 - 1;
    if (v2)
    {
      return (*(a1 + 108) & 0x40) == 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = *(a1 + 104);
    *buf = 136446978;
    v25 = "nw_protocol_plugin_retry_end_async";
    v26 = 2082;
    v27 = "retry->async_count";
    v28 = 2048;
    v29 = 1;
    v30 = 2048;
    v31 = v3;
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v4, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v7 = *(a1 + 104);
          *buf = 136446978;
          v25 = "nw_protocol_plugin_retry_end_async";
          v26 = 2082;
          v27 = "retry->async_count";
          v28 = 2048;
          v29 = 1;
          v30 = 2048;
          v31 = v7;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_16:
          _os_log_impl(&dword_181A37000, v5, v6, v8, buf, 0x2Au);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        v10 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v10)
          {
            v11 = *(a1 + 104);
            *buf = 136447234;
            v25 = "nw_protocol_plugin_retry_end_async";
            v26 = 2082;
            v27 = "retry->async_count";
            v28 = 2048;
            v29 = 1;
            v30 = 2048;
            v31 = v11;
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_17;
        }

        if (v10)
        {
          v13 = *(a1 + 104);
          *buf = 136446978;
          v25 = "nw_protocol_plugin_retry_end_async";
          v26 = 2082;
          v27 = "retry->async_count";
          v28 = 2048;
          v29 = 1;
          v30 = 2048;
          v31 = v13;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_16;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v12 = *(a1 + 104);
          *buf = 136446978;
          v25 = "nw_protocol_plugin_retry_end_async";
          v26 = 2082;
          v27 = "retry->async_count";
          v28 = 2048;
          v29 = 1;
          v30 = 2048;
          v31 = v12;
          v8 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_16;
        }
      }
    }

LABEL_17:
    if (v4)
    {
      free(v4);
    }

    *(a1 + 104) = 0;
    return (*(a1 + 108) & 0x40) == 0;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_plugin_retry_end_async";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null retry", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v16, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_retry_end_async";
        v19 = "%{public}s called with null retry";
LABEL_35:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v21 = os_log_type_enabled(v17, type);
      if (v20)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_protocol_plugin_retry_end_async";
          v26 = 2082;
          v27 = v20;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null retry, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_36;
      }

      if (v21)
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_retry_end_async";
        v19 = "%{public}s called with null retry, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_plugin_retry_end_async";
        v19 = "%{public}s called with null retry, backtrace limit exceeded";
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  if (v16)
  {
    free(v16);
  }

  return 0;
}

uint64_t nw_protocol_common_connect(void *a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_common_connect";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v7, &type, &v55))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v55 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v50 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v50)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (v50)
    {
      *buf = 136446466;
      v58 = "nw_protocol_common_connect";
      v59 = 2082;
      v60 = backtrace_string;
      v51 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_94:
      _os_log_impl(&dword_181A37000, v8, v9, v51, buf, 0x16u);
    }

LABEL_95:
    free(backtrace_string);
    goto LABEL_57;
  }

  if (!a2)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_protocol_common_connect";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v7, &type, &v55))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_55;
    }

    if (v55 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v52 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v52)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v58 = "nw_protocol_common_connect";
      v10 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_55;
    }

    if (v52)
    {
      *buf = 136446466;
      v58 = "nw_protocol_common_connect";
      v59 = 2082;
      v60 = backtrace_string;
      v51 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v2 = a1;
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 40);
    v5 = a1[4];
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
    {
      v15 = *(v5 + 88);
      v6 = 0;
      if (v15)
      {
        *(v5 + 88) = v15 + 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v16 = a1[5];
    v17 = a1;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = a1[8]) != 0)
    {
      v20 = v17[11];
      if (v20)
      {
        v18 = 0;
        v17[11] = v20 + 1;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v3 + 24);
      if (!v19)
      {
        goto LABEL_63;
      }
    }

    v21 = *(v19 + 24);
    if (v21)
    {
      result = v21(v3, a1);
      if (v18)
      {
LABEL_41:
        if ((v6 & 1) == 0)
        {
          v29 = *(v3 + 40);
          if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v30 = *(v3 + 88);
            if (v30)
            {
              v31 = v30 - 1;
              *(v3 + 88) = v31;
              if (!v31)
              {
                v32 = result;
                v33 = *(v3 + 64);
                if (v33)
                {
                  *(v3 + 64) = 0;
                  v33[2](v33);
                  _Block_release(v33);
                }

                if (*(v3 + 72))
                {
                  v34 = *(v3 + 64);
                  if (v34)
                  {
                    _Block_release(v34);
                  }
                }

                free(v3);
                return v32;
              }
            }
          }
        }

        return result;
      }

LABEL_30:
      v23 = v2[5];
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
      {
        v24 = v2[11];
        if (v24)
        {
          v25 = v24 - 1;
          v2[11] = v25;
          if (!v25)
          {
            v26 = result;
            v27 = v2[8];
            if (v27)
            {
              v2[8] = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (v2[9])
            {
              v28 = v2[8];
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v2);
            result = v26;
          }
        }
      }

      goto LABEL_41;
    }

LABEL_63:
    v37 = __nwlog_obj();
    v38 = *(v3 + 16);
    *buf = 136446722;
    v58 = "__nw_protocol_connect";
    if (!v38)
    {
      v38 = "invalid";
    }

    v59 = 2082;
    v60 = v38;
    v61 = 2048;
    v62 = v3;
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v39, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_109;
        }

        v42 = *(v3 + 16);
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v58 = "__nw_protocol_connect";
        v59 = 2082;
        v60 = v42;
        v61 = 2048;
        v62 = v3;
        v43 = "%{public}s protocol %{public}s (%p) has invalid connect callback";
LABEL_108:
        _os_log_impl(&dword_181A37000, v40, v41, v43, buf, 0x20u);
        goto LABEL_109;
      }

      if (v55 != 1)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_109;
        }

        v53 = *(v3 + 16);
        if (!v53)
        {
          v53 = "invalid";
        }

        *buf = 136446722;
        v58 = "__nw_protocol_connect";
        v59 = 2082;
        v60 = v53;
        v61 = 2048;
        v62 = v3;
        v43 = "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded";
        goto LABEL_108;
      }

      v46 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v47 = os_log_type_enabled(v40, type);
      if (!v46)
      {
        if (!v47)
        {
          goto LABEL_109;
        }

        v54 = *(v3 + 16);
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446722;
        v58 = "__nw_protocol_connect";
        v59 = 2082;
        v60 = v54;
        v61 = 2048;
        v62 = v3;
        v43 = "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace";
        goto LABEL_108;
      }

      if (v47)
      {
        v48 = *(v3 + 16);
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446978;
        v58 = "__nw_protocol_connect";
        v59 = 2082;
        v60 = v48;
        v61 = 2048;
        v62 = v3;
        v63 = 2082;
        v64 = v46;
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v46);
    }

LABEL_109:
    if (v39)
    {
      free(v39);
    }

    result = 0;
    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v58 = "nw_protocol_common_connect";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connect requires an output handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (__nwlog_fault(v7, &type, &v55))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v58 = "nw_protocol_common_connect";
        v10 = "%{public}s connect requires an output handler";
LABEL_55:
        v35 = v8;
        v36 = v9;
LABEL_56:
        _os_log_impl(&dword_181A37000, v35, v36, v10, buf, 0xCu);
      }
    }

    else if (v55 == 1)
    {
      v11 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(gLogObj, type);
      if (v11)
      {
        if (v14)
        {
          *buf = 136446466;
          v58 = "nw_protocol_common_connect";
          v59 = 2082;
          v60 = v11;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s connect requires an output handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v11);
        goto LABEL_57;
      }

      if (v14)
      {
        *buf = 136446210;
        v58 = "nw_protocol_common_connect";
        v10 = "%{public}s connect requires an output handler, no backtrace";
        v35 = v12;
        v36 = v13;
        goto LABEL_56;
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
        *buf = 136446210;
        v58 = "nw_protocol_common_connect";
        v10 = "%{public}s connect requires an output handler, backtrace limit exceeded";
        goto LABEL_55;
      }
    }
  }

LABEL_57:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_protocol_http_joining_connect(nw_protocol *a1, nw_protocol *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_connect";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v13, &type, &v49))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null protocol";
      goto LABEL_103;
    }

    if (v49 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type;
    v43 = os_log_type_enabled(v38, type);
    if (!backtrace_string)
    {
      if (!v43)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_103;
    }

    if (!v43)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v44 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  handle = a1->handle;
  if (!handle)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_connect";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null http_joining", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v13, &type, &v49))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null http_joining";
      goto LABEL_103;
    }

    if (v49 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_103;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type;
    v45 = os_log_type_enabled(v38, type);
    if (!backtrace_string)
    {
      if (!v45)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_103;
    }

    if (!v45)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v44 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_89:
    _os_log_impl(&dword_181A37000, v38, v39, v44, buf, 0x16u);
    goto LABEL_90;
  }

  if (!a2)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_joining_connect";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v13, &type, &v49))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null other_protocol";
      goto LABEL_103;
    }

    if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v46 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_joining_connect";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v44 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
          goto LABEL_89;
        }

LABEL_90:
        free(backtrace_string);
        goto LABEL_61;
      }

      if (!v46)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_joining_connect";
      v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_103:
    v33 = v38;
    v34 = v39;
    v35 = 12;
    goto LABEL_60;
  }

  if (!*(handle + 12))
  {
    v4 = mach_continuous_approximate_time();
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    *(handle + 12) = v5;
  }

  v6 = *(handle + 6);
  if (v6 != a2)
  {
    v7 = *(handle + 23);
    v8 = *(handle + 24);
    if (v7 != v8)
    {
      while (*v7 != a2)
      {
        v7 += 16;
        if (v7 == v8)
        {
          goto LABEL_19;
        }
      }
    }

    if (v7 != v8)
    {
      v9 = 1;
      *(v7 + 8) = 1;
      return v9;
    }

LABEL_19:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_joining_connect";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Protocol %p isn't an input handler of http joining", buf, 22);
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v13, &type, &v49))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v16 = "%{public}s Protocol %p isn't an input handler of http joining";
LABEL_59:
        v33 = v14;
        v34 = v15;
        v35 = 22;
LABEL_60:
        _os_log_impl(&dword_181A37000, v33, v34, v16, buf, v35);
      }
    }

    else if (v49 == 1)
    {
      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      v18 = os_log_type_enabled(gLogObj, type);
      if (v17)
      {
        if (v18)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_http_joining_connect";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2082;
          v52 = v17;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Protocol %p isn't an input handler of http joining, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v17);
        goto LABEL_61;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v16 = "%{public}s Protocol %p isn't an input handler of http joining, no backtrace";
        goto LABEL_59;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_joining_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        v16 = "%{public}s Protocol %p isn't an input handler of http joining, backtrace limit exceeded";
        goto LABEL_59;
      }
    }

LABEL_61:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  parameters = nw_protocol_get_parameters(v6);
  if (parameters)
  {
    v11 = os_retain(parameters);
    v12 = handle[112];
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 0;
    v12 = handle[112];
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v19 = *(handle + 13);
  if (v19)
  {
    os_release(v19);
    v12 = handle[112];
  }

LABEL_31:
  *(handle + 13) = v11;
  handle[112] = v12 | 1;
  remote_endpoint = nw_protocol_get_remote_endpoint(*(handle + 6));
  if (remote_endpoint)
  {
    v21 = os_retain(remote_endpoint);
    v22 = handle[128];
    if ((v22 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v21 = 0;
    v22 = handle[128];
    if ((v22 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v23 = *(handle + 15);
  if (v23)
  {
    os_release(v23);
    v22 = handle[128];
  }

LABEL_37:
  *(handle + 15) = v21;
  handle[128] = v22 | 1;
  http_messaging_options = nw_parameters_find_http_messaging_options(*(handle + 13), handle);
  v25 = http_messaging_options;
  if (http_messaging_options)
  {
    v26 = *(handle + 22);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZL32nw_protocol_http_joining_connectP11nw_protocolS0__block_invoke;
    v48[3] = &unk_1E6A2E608;
    v48[4] = v26;
    v27 = http_messaging_options;
    v28 = v48;
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    if (nw_protocol_options_matches_definition(v27, nw_protocol_copy_http_messaging_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_messaging_options_set_override_protocol_handler_block_invoke;
      v52 = &unk_1E6A3A978;
      v53 = v28;
      nw_protocol_options_access_handle(v27, buf);
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___ZL32nw_protocol_http_joining_connectP11nw_protocolS0__block_invoke_2;
    v47[3] = &unk_1E6A2E630;
    v47[4] = v26;
    v47[5] = handle;
    v29 = v27;
    v30 = v47;
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    if (nw_protocol_options_matches_definition(v29, nw_protocol_copy_http_messaging_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_http_messaging_options_set_can_accept_handler_block_invoke;
      v52 = &unk_1E6A3A978;
      v53 = v30;
      nw_protocol_options_access_handle(v29, buf);
    }
  }

  v31 = *(handle + 4);
  if (v31)
  {
    v9 = nw_protocol_connect(v31, handle);
    if (!v25)
    {
      return v9;
    }

    goto LABEL_54;
  }

  if ((handle[294] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_joining_connect";
      *&buf[12] = 2082;
      *&buf[14] = handle + 208;
      *&buf[22] = 2080;
      v52 = " ";
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sconnect bottom protocol, resuming child handler", buf, 0x20u);
    }
  }

  buf[0] = 0;
  v9 = 1;
  nw_protocol_notify(*(handle + 6), handle, 23);
  if (v25)
  {
LABEL_54:
    os_release(v25);
  }

  return v9;
}