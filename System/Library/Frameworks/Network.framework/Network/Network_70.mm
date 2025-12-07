void sub_181EC4784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, void *a36)
{
  _Block_object_dispose((v41 - 240), 8);

  _Unwind_Resume(a1);
}

void nw_parameters_set_discretionary(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_discretionary();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_discretionary";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_discretionary";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_set_discretionary";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_discretionary";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_discretionary";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_protocol_disconnected_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 48) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

id nw_framer_protocol_get_remote_endpoint(nw_protocol *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    v3 = v2;
    if (v2)
    {
      if (v2[1])
      {
        default_input_handler = a1->default_input_handler;
        if (default_input_handler && (callbacks = default_input_handler->callbacks) != 0 && (get_remote_endpoint = callbacks->get_remote_endpoint) != 0)
        {
          v7 = get_remote_endpoint();
        }

        else
        {
          v7 = 0;
        }

        if (gLogDatapath == 1)
        {
          v19 = __nwlog_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            v35 = 2080;
            v36 = v3 + 609;
            v37 = 2112;
            v38 = v7;
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %s returning remote endpoint: %@", buf, 0x20u);
          }
        }

LABEL_9:

        goto LABEL_10;
      }

      v17 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_get_remote_endpoint";
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (__nwlog_fault(v14, &type, &v31))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v18 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

LABEL_67:

          goto LABEL_68;
        }

        if (v31 != 1)
        {
          v15 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v30, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_67;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v27)
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v27)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_get_remote_endpoint";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_get_remote_endpoint";
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (__nwlog_fault(v14, &type, &v31))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null framer", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v31 != 1)
        {
          v15 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_67;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v25)
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null framer, no backtrace", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v25)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_get_remote_endpoint";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_46:

        free(backtrace_string);
      }
    }

LABEL_68:
    if (v14)
    {
      free(v14);
    }

    v7 = 0;
    goto LABEL_9;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_framer_protocol_get_remote_endpoint";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v10, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_get_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v11, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_get_remote_endpoint";
          v35 = 2082;
          v36 = v20;
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_59;
      }

      if (v22)
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_get_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_get_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v28, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_59:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

void *nw_framer_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA168E890uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_framer_allocate_options";
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9 = 2048;
  v10 = 1;
  v11 = 2048;
  v12 = 16;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:

    return v2;
  }

  __break(1u);
  return result;
}

void nw_framer_options_set_object_value(nw_protocol_options_t options, const char *key, id value)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = options;
  v6 = value;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_options_set_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null options", buf, 12);

    v30 = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &v30, &v29))
    {
      goto LABEL_55;
    }

    if (v30 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = v30;
      v17 = os_log_type_enabled(v9, v30);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v32 = "nw_framer_options_set_object_value";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v8);
        goto LABEL_5;
      }

      if (v17)
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!nw_protocol_options_has_standard_framer_options(v5))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_options_set_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 12);

    v30 = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &v30, &v29))
    {
      goto LABEL_55;
    }

    if (v30 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v24 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = v30;
    v20 = os_log_type_enabled(v9, v30);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v20)
    {
      *buf = 136446466;
      v32 = "nw_framer_options_set_object_value";
      v33 = 2082;
      v34 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!key)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_options_set_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null key", buf, 12);

    v30 = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &v30, &v29))
    {
      goto LABEL_55;
    }

    if (v30 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v25 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = v30;
    v22 = os_log_type_enabled(v9, v30);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v32 = "nw_framer_options_set_object_value";
      v33 = 2082;
      v34 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v18);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __nw_framer_options_set_object_value_block_invoke;
  v26[3] = &unk_1E6A3AB18;
  v28 = key;
  v27 = v6;
  nw_protocol_options_access_handle(v5, v26);

LABEL_5:
}

BOOL nw_protocol_options_has_standard_framer_options(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_protocol_options_copy_definition();
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_options_copy_definition";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

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
        v16 = "nw_protocol_options_copy_definition";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options", buf, 0xCu);
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
          v16 = "nw_protocol_options_copy_definition";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_options_copy_definition";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_options_copy_definition";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v2 = 0;
LABEL_3:
  if (nw_protocol_definition_is_framer(v2))
  {
    v3 = nw_protocol_definition_get_options_allocator(v2) == nw_framer_allocate_options;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __nw_framer_options_set_object_value_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v5 = nw_dictionary_create(0, a2);
    v6 = *a2;
    *a2 = v5;

    v3 = *a2;
  }

  nw_dictionary_set_value(v3, *(a1 + 40), *(a1 + 32));
  return 1;
}

uint64_t NWParameters.defaultProtocolStack.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = nw_parameters_copy_default_protocol_stack(*(v1 + 16));
  type metadata accessor for NWParameters.ProtocolStack();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780, &qword_182AED530);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  *(v3 + 16) = v4;
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void (*sub_181EC6168(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 64) = v5;
  os_unfair_lock_lock((v5 + 24));
  v4[7] = MEMORY[0x1E69E7CC0];
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v4 + 7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_181EC65EC;
  *(v8 + 24) = v7;
  v4[4] = sub_181EC63E0;
  v4[5] = v8;
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_181EC635C;
  v4[3] = &block_descriptor_32_0;
  v9 = _Block_copy(v4);

  nw_protocol_stack_iterate_application_protocols(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
    v4[6] = v4[7];
    return sub_181EC6704;
  }

  return result;
}

uint64_t sub_181EC635C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(uint64_t a1)
{
  if (qword_1EA836A80 != -1)
  {
LABEL_9:
    swift_once();
  }

  v2 = 0;
  v3 = off_1EA836A90;
  v4 = *(off_1EA836A90 + 2);
  v5 = off_1EA836A90 + 32;
  while (v4 != v2)
  {
    if (v2 >= v3[2])
    {
      __break(1u);
      goto LABEL_9;
    }

    v6 = *&v5[8 * v2++];
    if ((*(v6 + 88))(a1))
    {
      v7 = (*(v6 + 96))(a1);
      swift_unknownObjectRetain();
      return v7;
    }
  }

  return 0;
}

BOOL sub_181EC64EC(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = nw_protocol_copy_ip_definition();
  is_equal = nw_protocol_definition_is_equal(v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return is_equal;
}

uint64_t sub_181EC6544(uint64_t a1, void *a2)
{
  result = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(a1);
  if (result)
  {

    MEMORY[0x1865D9F10](v4);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
  }

  return result;
}

BOOL sub_181EC6620(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = nw_protocol_copy_tls_definition();
  is_equal = nw_protocol_definition_is_equal(v1, v2);
  swift_unknownObjectRelease();
  if (is_equal || (v5 = nw_protocol_copy_swift_tls_definition(v4), v6 = nw_protocol_definition_is_equal(v1, v5), swift_unknownObjectRelease(), v6))
  {
    v8 = 1;
  }

  else
  {
    v9 = nw_protocol_copy_swift_tls_record_definition(v7);
    v8 = nw_protocol_definition_is_equal(v1, v9);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_181EC66C8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_181EC6704(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {

    os_unfair_lock_lock((v3 + 24));
    sub_181C4E3C0((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    sub_181C4E3C0((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  free(v2);
}

void sub_181EC67E8(char a1, void (*a2)(void, void))
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  a2(*(v5 + 16), a1 & 1);

  os_unfair_lock_unlock((v5 + 24));
}

void nw_parameters_set_prohibit_constrained(nw_parameters_t parameters, BOOL prohibit_constrained)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_prohibit_constrained(parameters, prohibit_constrained);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_prohibit_constrained";
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
        v12 = "nw_parameters_set_prohibit_constrained";
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
            v12 = "nw_parameters_set_prohibit_constrained";
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
        v12 = "nw_parameters_set_prohibit_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_prohibit_constrained";
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

void nw_parameters_clear_prohibited_interface_types(nw_parameters_t parameters)
{
  v14 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_clear_prohibited_interface_types();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_prohibited_interface_types";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v1, 16, "%{public}s called with null parameters", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interface_types";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_clear_prohibited_interface_types";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interface_types";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interface_types";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

void sub_181EC6D48(nw_parameters_t *a1, uint64_t a2)
{
  v3 = *a1;
  nw_parameters_clear_prohibited_interface_types(*a1);
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v6 = *v5++;
        nw_parameters_prohibit_interface_type(v3, v6);
        --v4;
      }

      while (v4);
    }
  }
}

uint64_t NWParameters.prohibitedInterfaceTypes.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_181EC77C4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t NWParameters.sourceApplicationBundleID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_181EC6E08((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t NWParameters.accountID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_181EC6E98((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

void NWParameters.attribution.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if (v2)
  {
    v4 = nw_parameters_attribution_user;
  }

  else
  {
    v4 = nw_parameters_attribution_developer;
  }

  nw_parameters_set_attribution(*(v3 + 16), v4);

  os_unfair_lock_unlock((v3 + 24));
}

void nw_connection_set_path_changed_handler(nw_connection_t connection, nw_connection_path_event_handler_t handler)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = handler;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_path_changed_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_path_changed_handler";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_path_changed_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

nw_protocol_options_t nw_framer_create_options(nw_protocol_definition_t framer_definition)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = framer_definition;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    isa = v3[24].isa;

    if (isa)
    {
      options = _nw_protocol_create_options(v3);
      goto LABEL_4;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_framer_create_options";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null nw_protocol_definition_is_framer(definition)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_definition_is_framer(definition)", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_definition_is_framer(definition), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null nw_protocol_definition_is_framer(definition), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_framer_create_options";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null nw_protocol_definition_is_framer(definition), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_framer_create_options";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null definition", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v23 = "nw_framer_create_options";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }

  options = 0;
LABEL_4:

  return options;
}

uint64_t sub_181EC77E0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  if (a3)
  {
    v6 = sub_182AD3048() + 32;
  }

  else
  {
    v6 = 0;
  }

  a4(v5, v6);
  return swift_unknownObjectRelease();
}

BOOL _s7Network12NWConnectionC5StateO2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2 | (*(a2 + 4) << 32);
  v5 = v2 >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      if (((v4 >> 38) & 3) == 1)
      {
        v6 = HIDWORD(v4) & 0x3F;
        v7 = HIDWORD(v3) & 0x3F;
        if ((BYTE4(v3) & 0x3Fu) <= 1)
        {
          if (!v7)
          {
LABEL_6:
            if (v6)
            {
              return 0;
            }

            v8 = sub_182AD2768();
            return v8 == sub_182AD2768();
          }

          return v6 == 1 && v3 == *a2;
        }

        goto LABEL_20;
      }

      return 0;
    }

    if (v3 > 0x8000000001)
    {
      v10 = 0x8000000002;
      if (v3 != 0x8000000002)
      {
        v11 = v4 & 0xFFFFFFFFFFLL;
        v12 = 3;
        return v11 == (v12 & 0xFFFF0000FFFFFFFFLL | 0x8000000000);
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 != 0x8000000000)
      {
        v11 = v4 & 0xFFFFFFFFFFLL;
        v12 = 1;
        return v11 == (v12 & 0xFFFF0000FFFFFFFFLL | 0x8000000000);
      }
    }

    return (v4 & 0xFFFFFFFFFFLL) == v10;
  }

  if (((v4 >> 38) & 3) == 0)
  {
    v7 = HIDWORD(v3);
    LODWORD(v6) = BYTE4(v4);
    if (SHIDWORD(v3) <= 1)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_6;
      }

      return v6 == 1 && v3 == *a2;
    }

LABEL_20:
    if (v7 == 2)
    {
      if (v6 != 2 || v3 != *a2)
      {
        return 0;
      }
    }

    else if (v6 != 3 || v3 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

void NWConnection.pathUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(v5 + 24);
  sub_181EC7ABC(&v5[4]);
  os_unfair_lock_unlock(v5 + 24);
  if (a1)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181ECAA3C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7F17C;
    aBlock[3] = &block_descriptor_24;
    v8 = _Block_copy(aBlock);

    nw_connection_set_path_changed_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1, a2);
  }

  else
  {
    nw_connection_set_path_changed_handler(*(v2 + 16), 0);
  }
}

uint64_t sub_181EC7ABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_181AA39C0(v4, v3);
  result = sub_181A554F4(v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

void __nw_connection_set_path_changed_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;
}

uint64_t sub_181EC7B78(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_unknownObjectRetain();
  sub_181B7BDC0(v6, v5);
  a2(v5);
  return sub_181D8E448(v5, type metadata accessor for NWPath);
}

uint64_t getEnumTagSinglePayload for NWInterface.RadioType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 3)
  {
    goto LABEL_17;
  }

  if (a2 + 253 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 253) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 253;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 253;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 253;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 2 | (*a1 >> 4) & 1) ^ 3;
  if (v6 >= 2)
  {
    v6 = -1;
  }

  return v6 + 1;
}

char *nw_path_is_traffic_mgmt_background(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_traffic_mgmt_background(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_traffic_mgmt_background";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null path", buf, 12);

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
        v16 = "nw_path_is_traffic_mgmt_background";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_is_traffic_mgmt_background";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_is_traffic_mgmt_background";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_traffic_mgmt_background";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

nw_protocol *nw_framer_protocol_create(nw_protocol_identifier *a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NWConcrete_nw_framer);
  v12 = v11;
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v29 = "nw_framer_protocol_create";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s [nw_framer init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v18, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_create";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [nw_framer init] failed", buf, 0xCu);
        }
      }

      else if (v26 == 1)
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
            *buf = 136446466;
            v29 = "nw_framer_protocol_create";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v23, "%{public}s [nw_framer init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v18)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (v24)
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_create";
          _os_log_impl(&dword_181A37000, v19, v23, "%{public}s [nw_framer init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_create";
          _os_log_impl(&dword_181A37000, v19, v25, "%{public}s [nw_framer init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v18)
    {
LABEL_10:
      p_protocol = 0;
      goto LABEL_11;
    }

LABEL_9:
    free(v18);
    goto LABEL_10;
  }

  objc_storeStrong(&v11->endpoint, a3);
  objc_storeStrong(&v12->parameters, a4);
  v13 = nw_parameters_copy_context(v10);
  context = v12->context;
  v12->context = v13;

  objc_storeStrong(&v12->parent_definition, a2);
  p_protocol = &v12->protocol;
  v12->protocol.identifier = a1;
  v12->protocol.callbacks = &v12->callbacks;
  v12->inbound_frames.tqh_first = 0;
  v12->inbound_frames.tqh_last = &v12->inbound_frames.tqh_first;
  v12->outbound_frames.tqh_first = 0;
  v12->outbound_frames.tqh_last = &v12->outbound_frames.tqh_first;
  v12->pending_input_frames.tqh_first = 0;
  v12->pending_input_frames.tqh_last = &v12->pending_input_frames.tqh_first;
  v12->received_input_frames.tqh_first = 0;
  v12->received_input_frames.tqh_last = &v12->received_input_frames.tqh_first;
  v12->received_output_frames.tqh_first = 0;
  v12->received_output_frames.tqh_last = &v12->received_output_frames.tqh_first;
  v12->callbacks.input_finished = nw_protocol_default_input_finished;
  v12->callbacks.get_local_endpoint = nw_protocol_default_get_local;
  v12->callbacks.get_path = nw_protocol_default_get_path;
  v12->callbacks.updated_path = nw_protocol_default_updated_path;
  v12->callbacks.get_output_local_endpoint = nw_protocol_default_get_output_local;
  v12->callbacks.get_output_interface = nw_protocol_default_get_output_interface;
  v12->callbacks.error = nw_protocol_default_error;
  v12->callbacks.reset = nw_protocol_default_reset;
  v12->callbacks.register_notification = nw_protocol_default_register_notification;
  v12->callbacks.unregister_notification = nw_protocol_default_unregister_notification;
  v12->callbacks.notify = nw_protocol_default_notify;
  v12->callbacks.add_listen_handler = nw_protocol_default_add_listen_handler;
  v12->callbacks.remove_listen_handler = nw_protocol_default_remove_listen_handler;
  v12->callbacks.add_input_handler = nw_framer_protocol_add_input_handler;
  v12->callbacks.replace_input_handler = nw_framer_protocol_replace_input_handler;
  v12->callbacks.remove_input_handler = nw_framer_protocol_remove_input_handler;
  v12->callbacks.connect = nw_framer_protocol_connect;
  v12->callbacks.connected = nw_framer_protocol_connected;
  v12->callbacks.disconnect = nw_framer_protocol_disconnect;
  v12->callbacks.disconnected = nw_framer_protocol_disconnected;
  v12->callbacks.link_state = nw_framer_protocol_link_state;
  v12->callbacks.get_message_properties = nw_framer_protocol_get_message_properties;
  v12->callbacks.supports_external_data = nw_framer_protocol_supports_external_data;
  v12->callbacks.waiting_for_output = nw_framer_protocol_waiting_for_output;
  v12->callbacks.get_output_frames = nw_framer_protocol_get_output_frames;
  v12->callbacks.finalize_output_frames = nw_framer_protocol_finalize_output_frames;
  v12->callbacks.input_available = nw_framer_protocol_input_available;
  v12->callbacks.get_input_frames = nw_framer_protocol_get_input_frames;
  v12->callbacks.input_flush = nw_framer_protocol_input_flush;
  v12->callbacks.output_available = nw_framer_protocol_output_available;
  v12->callbacks.output_finished = nw_framer_protocol_output_finished;
  v12->callbacks.copy_info = nw_framer_protocol_copy_info;
  v12->callbacks.get_remote_endpoint = nw_framer_protocol_get_remote_endpoint;
  v12->callbacks.get_parameters = nw_framer_protocol_get_parameters;
  v16 = v12;
  v16->protocol.handle = v16;
LABEL_11:

  return p_protocol;
}

uint64_t nw_framer_protocol_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    v5 = v4;
    if (v4)
    {
      if (v4[1])
      {
        if (a1->default_input_handler)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2080;
          v66 = v5 + 609;
          v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s %s Protocol instance already has default input handler", buf, 22);

          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (!__nwlog_fault(v7, &type, &v61))
          {
            goto LABEL_47;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446466;
              v64 = "nw_framer_protocol_add_input_handler";
              v65 = 2080;
              v66 = v5 + 609;
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s %s Protocol instance already has default input handler", buf, 0x16u);
            }

LABEL_46:

            goto LABEL_47;
          }

          if (v61 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v14 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446466;
              v64 = "nw_framer_protocol_add_input_handler";
              v65 = 2080;
              v66 = v5 + 609;
              _os_log_impl(&dword_181A37000, v8, v14, "%{public}s %s Protocol instance already has default input handler, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_46;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v12 = type;
          v13 = os_log_type_enabled(v8, type);
          if (!backtrace_string)
          {
            if (v13)
            {
              *buf = 136446466;
              v64 = "nw_framer_protocol_add_input_handler";
              v65 = 2080;
              v66 = v5 + 609;
              _os_log_impl(&dword_181A37000, v8, v12, "%{public}s %s Protocol instance already has default input handler, no backtrace", buf, 0x16u);
            }

            goto LABEL_46;
          }

          if (v13)
          {
            *buf = 136446722;
            v64 = "nw_framer_protocol_add_input_handler";
            v65 = 2080;
            v66 = v5 + 609;
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s %s Protocol instance already has default input handler, dumping backtrace:%{public}s", buf, 0x20u);
          }

LABEL_19:

          free(backtrace_string);
          if (!v7)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (gLogDatapath == 1)
        {
          v44 = __nwlog_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v64 = "nw_framer_protocol_add_input_handler";
            v65 = 2080;
            v66 = v5 + 609;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %s Protocol add input handler", buf, 0x16u);
          }
        }

        nw_protocol_set_input_handler(a1, a2);
        if (a2)
        {
          *a1->flow_id = *a2->flow_id;
          if (a2->output_handler)
          {
            v10 = v5[45];
            if (!v10)
            {
              goto LABEL_37;
            }
          }

          else
          {
            nw_protocol_set_output_handler(a2, a1);
            v10 = v5[45];
            if (!v10)
            {
LABEL_37:
              callbacks = a2->callbacks;
              if (callbacks)
              {
                supports_external_data = callbacks->supports_external_data;
                if (supports_external_data)
                {
                  *(v5 + 606) = *(v5 + 606) & 0xFE | supports_external_data(a2);
                }
              }

              goto LABEL_40;
            }
          }
        }

        else
        {
          v10 = v5[45];
          if (!v10)
          {
            goto LABEL_40;
          }
        }

        v15 = v10;
        v16 = _nw_parameters_copy_protocol_options_with_level();

        if (v16)
        {
          v17 = _nw_protocol_options_copy_definition();
        }

        else
        {
          v17 = v5[1];
        }

        v18 = v17;
        v19 = v18;
        if (v18)
        {
          v20 = *(v18 + 9);
          if (v20)
          {
            v21 = _Block_copy(*(v20 + 80));
            goto LABEL_33;
          }

          v52 = __nwlog_obj();
          *buf = 136446210;
          v64 = "nw_protocol_definition_copy_framer_start";
          v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null definition->common_state", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v49, &type, &v61))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v50 = __nwlog_obj();
              v53 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null definition->common_state", buf, 0xCu);
              }

LABEL_137:

              goto LABEL_138;
            }

            if (v61 != 1)
            {
              v50 = __nwlog_obj();
              v60 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v60, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v54 = __nw_create_backtrace_string();
            v50 = __nwlog_obj();
            v57 = type;
            v58 = os_log_type_enabled(v50, type);
            if (!v54)
            {
              if (v58)
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v57, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v58)
            {
              *buf = 136446466;
              v64 = "nw_protocol_definition_copy_framer_start";
              v65 = 2082;
              v66 = v54;
              _os_log_impl(&dword_181A37000, v50, v57, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_113;
          }
        }

        else
        {
          v48 = __nwlog_obj();
          *buf = 136446210;
          v64 = "nw_protocol_definition_copy_framer_start";
          v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null definition", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v49, &type, &v61))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v50 = __nwlog_obj();
              v51 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null definition", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v61 != 1)
            {
              v50 = __nwlog_obj();
              v59 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v59, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v54 = __nw_create_backtrace_string();
            v50 = __nwlog_obj();
            v55 = type;
            v56 = os_log_type_enabled(v50, type);
            if (!v54)
            {
              if (v56)
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null definition, no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v56)
            {
              *buf = 136446466;
              v64 = "nw_protocol_definition_copy_framer_start";
              v65 = 2082;
              v66 = v54;
              _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

LABEL_113:

            free(v54);
          }
        }

LABEL_138:
        if (v49)
        {
          free(v49);
        }

        v21 = 0;
LABEL_33:

        v22 = v5[49];
        v5[49] = v21;

        if (!v5[49])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v64 = "nw_framer_protocol_add_input_handler";
            v65 = 2080;
            v66 = v5 + 609;
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %s Failed to find start block on framer", buf, 0x16u);
          }

          goto LABEL_49;
        }

        if (v16)
        {
          v23 = v16;
          _nw_protocol_options_get_log_id_str(v23, v5 + 609);
        }

        if (a2)
        {
          goto LABEL_37;
        }

LABEL_40:
        v26 = 1;
LABEL_50:

        return v26;
      }

      v35 = __nwlog_obj();
      *buf = 136446210;
      v64 = "nw_framer_protocol_add_input_handler";
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (__nwlog_fault(v7, &type, &v61))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v36 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v36, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v61 != 1)
        {
          v8 = __nwlog_obj();
          v47 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v47, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_46;
        }

        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v8, type);
        if (!backtrace_string)
        {
          if (v43)
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v42, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v43)
        {
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2082;
          v66 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v42, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      v64 = "nw_framer_protocol_add_input_handler";
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (__nwlog_fault(v7, &type, &v61))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v34, "%{public}s called with null framer", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v61 != 1)
        {
          v8 = __nwlog_obj();
          v46 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v46, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_46;
        }

        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v40 = type;
        v41 = os_log_type_enabled(v8, type);
        if (!backtrace_string)
        {
          if (v41)
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v40, "%{public}s called with null framer, no backtrace", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v41)
        {
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2082;
          v66 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v40, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_19;
      }
    }

LABEL_47:
    if (!v7)
    {
LABEL_49:
      v26 = 0;
      goto LABEL_50;
    }

LABEL_48:
    free(v7);
    goto LABEL_49;
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  v64 = "nw_framer_protocol_add_input_handler";
  v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v30, &type, &v61))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v64 = "nw_framer_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v31, type);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2082;
          v66 = v37;
          _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_117;
      }

      if (v39)
      {
        *buf = 136446210;
        v64 = "nw_framer_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v64 = "nw_framer_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v31, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_117:
  if (v30)
  {
    free(v30);
  }

  return 0;
}

uint64_t sub_181EC957C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t __nw_framer_options_copy_object_value_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = nw_dictionary_copy_value(*a2, *(a1 + 40));
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return 1;
}

void nw_framer_set_wakeup_handler(nw_framer_t framer, nw_framer_wakeup_handler_t wakeup_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = wakeup_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_wakeup_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_framer_set_wakeup_handler";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_wakeup_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null wakeup_handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null wakeup_handler", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null wakeup_handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null wakeup_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_wakeup_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null wakeup_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_wakeup_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null framer->in_start", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null framer->in_start", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null framer->in_start, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_wakeup_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v6 = _Block_copy(v4);
  isa = v3[52].isa;
  v3[52].isa = v6;

LABEL_5:
}

uint64_t nw_framer_protocol_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    if (v2)
    {
      if (*(v2 + 1))
      {
        v3 = (v2[608] >> 3) & 1;
LABEL_5:

        return v3;
      }

      v9 = v2;
      v14 = __nwlog_obj();
      *buf = 136446210;
      v31 = "nw_framer_protocol_waiting_for_output";
      v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v28 = 0;
      if (__nwlog_fault(v11, &type, &v28))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v15 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v31 = "nw_framer_protocol_waiting_for_output";
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v28 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v12 = __nwlog_obj();
          v23 = type;
          v24 = os_log_type_enabled(v12, type);
          if (backtrace_string)
          {
            if (v24)
            {
              *buf = 136446466;
              v31 = "nw_framer_protocol_waiting_for_output";
              v32 = 2082;
              v33 = backtrace_string;
              _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v11)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          if (v24)
          {
            *buf = 136446210;
            v31 = "nw_framer_protocol_waiting_for_output";
            _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v12 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v31 = "nw_framer_protocol_waiting_for_output";
            _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_58;
      }

LABEL_59:
      if (!v11)
      {
LABEL_61:
        v3 = 0;
        v2 = v9;
        goto LABEL_5;
      }

LABEL_60:
      free(v11);
      goto LABEL_61;
    }

    v9 = 0;
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_framer_protocol_waiting_for_output";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v31 = "nw_framer_protocol_waiting_for_output";
          v32 = 2082;
          v33 = v19;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_59;
      }

      if (v21)
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_framer_protocol_waiting_for_output";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v6, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v7, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v31 = "nw_framer_protocol_waiting_for_output";
          v32 = 2082;
          v33 = v16;
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_50;
      }

      if (v18)
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v31 = "nw_framer_protocol_waiting_for_output";
        _os_log_impl(&dword_181A37000, v7, v25, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_50:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_dictionary_copy(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_dictionary_copy";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null dictionary", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v5, &type, &v22))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_dictionary_copy";
      v8 = "%{public}s called with null dictionary";
      goto LABEL_16;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_dictionary_copy";
      v8 = "%{public}s called with null dictionary, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v19)
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_dictionary_copy";
      v8 = "%{public}s called with null dictionary, no backtrace";
      goto LABEL_16;
    }

    if (v19)
    {
      *buf = 136446466;
      v25 = "nw_dictionary_copy";
      v26 = 2082;
      v27 = backtrace_string;
      v20 = "%{public}s called with null dictionary, dumping backtrace:%{public}s";
LABEL_40:
      _os_log_impl(&dword_181A37000, v6, v7, v20, buf, 0x16u);
    }

LABEL_41:
    free(backtrace_string);
    goto LABEL_18;
  }

  if (!*(a1 + 16))
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_dictionary_copy";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null dictionary->xpc_object", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v5, &type, &v22))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_dictionary_copy";
      v8 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_16;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_dictionary_copy";
      v8 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v21 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v25 = "nw_dictionary_copy";
      v8 = "%{public}s called with null dictionary->xpc_object, no backtrace";
      goto LABEL_16;
    }

    if (v21)
    {
      *buf = 136446466;
      v25 = "nw_dictionary_copy";
      v26 = 2082;
      v27 = backtrace_string;
      v20 = "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  objc_opt_class();
  v3 = _os_object_alloc();
  if (v3)
  {
    v4 = v3;
    *(v3 + 16) = xpc_copy(*(a1 + 16));
    xpc_dictionary_apply(*(a1 + 16), &__block_literal_global_50762);
    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v25 = "nw_dictionary_copy";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s nw_dictionary_obj_alloc failed", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v5, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v25 = "nw_dictionary_copy";
        v8 = "%{public}s nw_dictionary_obj_alloc failed";
LABEL_16:
        v13 = v6;
        v14 = v7;
LABEL_17:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v9 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(gLogObj, type);
      if (v9)
      {
        if (v12)
        {
          *buf = 136446466;
          v25 = "nw_dictionary_copy";
          v26 = 2082;
          v27 = v9;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s nw_dictionary_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v9);
        goto LABEL_18;
      }

      if (v12)
      {
        *buf = 136446210;
        v25 = "nw_dictionary_copy";
        v8 = "%{public}s nw_dictionary_obj_alloc failed, no backtrace";
        v13 = v10;
        v14 = v11;
        goto LABEL_17;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v25 = "nw_dictionary_copy";
        v8 = "%{public}s nw_dictionary_obj_alloc failed, backtrace limit exceeded";
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

unint64_t sub_181ECAA50@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(result))
  {
LABEL_21:
    __break(1u);
    JUMPOUT(0x181ECAB48);
  }

  v2 = 0;
  switch(result)
  {
    case 1:
      goto LABEL_12;
    case 2:
      *a2 = 1;
      break;
    case 3:
      *a2 = 2;
      break;
    case 4:
      *a2 = 3;
      break;
    case 5:
      *a2 = 4;
      break;
    case 6:
      *a2 = 5;
      break;
    case 128:
      *a2 = 80;
      break;
    case 129:
      *a2 = 16;
      break;
    case 130:
      *a2 = 17;
      break;
    case 131:
      *a2 = 48;
      break;
    case 132:
      *a2 = 49;
      break;
    case 133:
      *a2 = 81;
      break;
    case 134:
      *a2 = 112;
      break;
    case 135:
      *a2 = 113;
      break;
    case 136:
      *a2 = -112;
      break;
    default:
      v2 = 24;
LABEL_12:
      *a2 = v2;
      break;
  }

  return result;
}

id nw_framer_protocol_get_parameters(nw_protocol *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1->handle;
    v2 = v1;
    if (v1)
    {
      if (v1[1])
      {
        nw_context_assert_queue(v1[46]);
        v3 = v2[42];
        if (v3 && (v4 = v3[3]) != 0 && (v5 = *(v4 + 112)) != 0)
        {
          v6 = v5();
        }

        else
        {
          v6 = v2[45];
        }

        v7 = v6;
LABEL_9:

        goto LABEL_10;
      }

      v17 = __nwlog_obj();
      *buf = 136446210;
      v33 = "nw_framer_protocol_get_parameters";
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (__nwlog_fault(v14, &type, &v30))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v18 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

LABEL_64:

          goto LABEL_65;
        }

        if (v30 != 1)
        {
          v15 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_64;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v26)
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_64;
        }

        if (v26)
        {
          *buf = 136446466;
          v33 = "nw_framer_protocol_get_parameters";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      *buf = 136446210;
      v33 = "nw_framer_protocol_get_parameters";
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (__nwlog_fault(v14, &type, &v30))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null framer", buf, 0xCu);
          }

          goto LABEL_64;
        }

        if (v30 != 1)
        {
          v15 = __nwlog_obj();
          v28 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v28, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_64;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v24)
          {
            *buf = 136446210;
            v33 = "nw_framer_protocol_get_parameters";
            _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null framer, no backtrace", buf, 0xCu);
          }

          goto LABEL_64;
        }

        if (v24)
        {
          *buf = 136446466;
          v33 = "nw_framer_protocol_get_parameters";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_43:

        free(backtrace_string);
      }
    }

LABEL_65:
    if (v14)
    {
      free(v14);
    }

    v7 = 0;
    goto LABEL_9;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_framer_protocol_get_parameters";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v10, &type, &v30))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_protocol_get_parameters";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v11, type);
      if (v19)
      {
        if (v21)
        {
          *buf = 136446466;
          v33 = "nw_framer_protocol_get_parameters";
          v34 = 2082;
          v35 = v19;
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_56;
      }

      if (v21)
      {
        *buf = 136446210;
        v33 = "nw_framer_protocol_get_parameters";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v33 = "nw_framer_protocol_get_parameters";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_56:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t nw_path_is_defunct(NWConcrete_nw_path *a1, NWConcrete_nw_path_flow_registration *a2)
{
  v2 = nw_path_copy_flow_for_registration(a1, a2);
  v3 = v2;
  if (v2)
  {
    is_defunct = _nw_path_flow_is_defunct(v2);
  }

  else
  {
    is_defunct = 0;
  }

  return is_defunct;
}

uint64_t nw_protocol_ipv4_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_ipv4_updated_path";
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v30, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v42 = "nw_protocol_ipv4_updated_path";
          v33 = "%{public}s called with null protocol";
LABEL_71:
          _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v32 = type;
        v36 = os_log_type_enabled(v31, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446466;
            v42 = "nw_protocol_ipv4_updated_path";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_72;
        }

        if (v36)
        {
          *buf = 136446210;
          v42 = "nw_protocol_ipv4_updated_path";
          v33 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_71;
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v42 = "nw_protocol_ipv4_updated_path";
          v33 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_72:
    if (v30)
    {
      free(v30);
    }

    return 0;
  }

  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *a1[1].flow_id;
  if (v5)
  {
LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
LABEL_18:
    if (a3)
    {
      LODWORD(v8[3].identifier) = nw_path_get_maximum_packet_size(a3);
      v14 = a3;
      mtu = _nw_path_get_mtu(v14);

      HIDWORD(v8[3].identifier) = mtu;
      result = 1;
      if (v6)
      {
        return result;
      }

      goto LABEL_33;
    }

    v34 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_ipv4_updated_path";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null path", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v9, &type, &v39))
    {
      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v42 = "nw_protocol_ipv4_updated_path";
      v12 = "%{public}s called with null path";
    }

    else if (v39 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v38 = os_log_type_enabled(v10, type);
      if (v37)
      {
        if (v38)
        {
          *buf = 136446466;
          v42 = "nw_protocol_ipv4_updated_path";
          v43 = 2082;
          v44 = v37;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_30;
      }

      if (!v38)
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v42 = "nw_protocol_ipv4_updated_path";
      v12 = "%{public}s called with null path, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v42 = "nw_protocol_ipv4_updated_path";
      v12 = "%{public}s called with null path, backtrace limit exceeded";
    }

LABEL_28:
    v21 = v10;
    v22 = v11;
LABEL_29:
    _os_log_impl(&dword_181A37000, v21, v22, v12, buf, 0xCu);
    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v42 = "nw_protocol_ipv4_updated_path";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv4", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v9, &type, &v39))
  {
    goto LABEL_30;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    *buf = 136446210;
    v42 = "nw_protocol_ipv4_updated_path";
    v12 = "%{public}s called with null ipv4";
    goto LABEL_28;
  }

  if (v39 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_30;
    }

    *buf = 136446210;
    v42 = "nw_protocol_ipv4_updated_path";
    v12 = "%{public}s called with null ipv4, backtrace limit exceeded";
    goto LABEL_28;
  }

  v17 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v19 = type;
  v20 = os_log_type_enabled(gLogObj, type);
  if (v17)
  {
    if (v20)
    {
      *buf = 136446466;
      v42 = "nw_protocol_ipv4_updated_path";
      v43 = 2082;
      v44 = v17;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v17);
  }

  else if (v20)
  {
    *buf = 136446210;
    v42 = "nw_protocol_ipv4_updated_path";
    v12 = "%{public}s called with null ipv4, no backtrace";
    v21 = v18;
    v22 = v19;
    goto LABEL_29;
  }

LABEL_30:
  if (v9)
  {
    free(v9);
  }

  result = 0;
  if ((v6 & 1) == 0)
  {
LABEL_33:
    v23 = v3->handle;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v24 = v3[1].callbacks;
      if (v24)
      {
        v25 = (v24 - 1);
        v3[1].callbacks = v25;
        if (!v25)
        {
          v26 = result;
          v27 = *v3[1].flow_id;
          if (v27)
          {
            *v3[1].flow_id = 0;
            v27[2](v27);
            _Block_release(v27);
          }

          if (v3[1].flow_id[8])
          {
            v28 = *v3[1].flow_id;
            if (v28)
            {
              _Block_release(v28);
            }
          }

          free(v3);
          return v26;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_updated_path(void *a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v26 = v6[11];
      if (v26)
      {
        v7 = 0;
        v6[11] = v26 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
LABEL_38:
          v27 = __nwlog_obj();
          *buf = 136446210;
          v65 = "__nw_protocol_updated_path";
          v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null other_protocol", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (__nwlog_fault(v28, &type, &v62))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v29 = __nwlog_obj();
              v30 = type;
              if (os_log_type_enabled(v29, type))
              {
                *buf = 136446210;
                v65 = "__nw_protocol_updated_path";
                v31 = "%{public}s called with null other_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
              }
            }

            else if (v62 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v29 = __nwlog_obj();
              v30 = type;
              v54 = os_log_type_enabled(v29, type);
              if (backtrace_string)
              {
                if (v54)
                {
                  *buf = 136446466;
                  v65 = "__nw_protocol_updated_path";
                  v66 = 2082;
                  v67 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v54)
              {
                *buf = 136446210;
                v65 = "__nw_protocol_updated_path";
                v31 = "%{public}s called with null other_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v29 = __nwlog_obj();
              v30 = type;
              if (os_log_type_enabled(v29, type))
              {
                *buf = 136446210;
                v65 = "__nw_protocol_updated_path";
                v31 = "%{public}s called with null other_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v28)
          {
            free(v28);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v32 = *(v9 + 88);
      if (v32)
      {
        v10 = 0;
        *(v9 + 88) = v32 + 1;
        if (!a3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_45:
        v33 = __nwlog_obj();
        *buf = 136446210;
        v65 = "__nw_protocol_updated_path";
        v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null path", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (!__nwlog_fault(v34, &type, &v62))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v35 = __nwlog_obj();
          v36 = type;
          if (!os_log_type_enabled(v35, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v65 = "__nw_protocol_updated_path";
          v37 = "%{public}s called with null path";
          goto LABEL_117;
        }

        if (v62 != 1)
        {
          v35 = __nwlog_obj();
          v36 = type;
          if (!os_log_type_enabled(v35, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v65 = "__nw_protocol_updated_path";
          v37 = "%{public}s called with null path, backtrace limit exceeded";
          goto LABEL_117;
        }

        v55 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = type;
        v56 = os_log_type_enabled(v35, type);
        if (v55)
        {
          if (v56)
          {
            *buf = 136446466;
            v65 = "__nw_protocol_updated_path";
            v66 = 2082;
            v67 = v55;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v55);
          if (!v34)
          {
LABEL_121:
            result = 0;
            if (v10)
            {
LABEL_22:
              if ((v7 & 1) == 0)
              {
                v20 = v4[5];
                if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v4 = v4[8]) != 0)
                {
                  v21 = v4[11];
                  if (v21)
                  {
                    v22 = v21 - 1;
                    v4[11] = v22;
                    if (!v22)
                    {
                      v23 = result;
                      v24 = v4[8];
                      if (v24)
                      {
                        v4[8] = 0;
                        v24[2](v24);
                        _Block_release(v24);
                      }

                      if (v4[9])
                      {
                        v25 = v4[8];
                        if (v25)
                        {
                          _Block_release(v25);
                        }
                      }

                      free(v4);
                      return v23;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v14 = *(v3 + 40);
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v15 = *(v3 + 88);
              if (v15)
              {
                v16 = v15 - 1;
                *(v3 + 88) = v16;
                if (!v16)
                {
                  v17 = result;
                  v18 = *(v3 + 64);
                  if (v18)
                  {
                    *(v3 + 64) = 0;
                    v18[2](v18);
                    _Block_release(v18);
                  }

                  if (*(v3 + 72))
                  {
                    v19 = *(v3 + 64);
                    if (v19)
                    {
                      _Block_release(v19);
                    }
                  }

                  free(v3);
                  result = v17;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v34);
          goto LABEL_121;
        }

        if (v56)
        {
          *buf = 136446210;
          v65 = "__nw_protocol_updated_path";
          v37 = "%{public}s called with null path, no backtrace";
LABEL_117:
          v59 = v35;
          v60 = v36;
          v61 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 168);
      if (v12)
      {
        result = v12(a1, a2);
        if (v10)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    v38 = __nwlog_obj();
    v39 = v4[2];
    *buf = 136446722;
    v65 = "__nw_protocol_updated_path";
    if (!v39)
    {
      v39 = "invalid";
    }

    v66 = 2082;
    v67 = v39;
    v68 = 2048;
    v69 = v4;
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s protocol %{public}s (%p) has invalid updated_path callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v34, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v42 = v4[2];
        if (!v42)
        {
          v42 = "invalid";
        }

        *buf = 136446722;
        v65 = "__nw_protocol_updated_path";
        v66 = 2082;
        v67 = v42;
        v68 = 2048;
        v69 = v4;
        v37 = "%{public}s protocol %{public}s (%p) has invalid updated_path callback";
      }

      else if (v62 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type;
        v49 = os_log_type_enabled(v40, type);
        if (v48)
        {
          if (v49)
          {
            v50 = v4[2];
            if (!v50)
            {
              v50 = "invalid";
            }

            *buf = 136446978;
            v65 = "__nw_protocol_updated_path";
            v66 = 2082;
            v67 = v50;
            v68 = 2048;
            v69 = v4;
            v70 = 2082;
            v71 = v48;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v48);
          goto LABEL_119;
        }

        if (!v49)
        {
          goto LABEL_119;
        }

        v58 = v4[2];
        if (!v58)
        {
          v58 = "invalid";
        }

        *buf = 136446722;
        v65 = "__nw_protocol_updated_path";
        v66 = 2082;
        v67 = v58;
        v68 = 2048;
        v69 = v4;
        v37 = "%{public}s protocol %{public}s (%p) has invalid updated_path callback, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (!os_log_type_enabled(v40, type))
        {
          goto LABEL_119;
        }

        v57 = v4[2];
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446722;
        v65 = "__nw_protocol_updated_path";
        v66 = 2082;
        v67 = v57;
        v68 = 2048;
        v69 = v4;
        v37 = "%{public}s protocol %{public}s (%p) has invalid updated_path callback, backtrace limit exceeded";
      }

      v59 = v40;
      v60 = v41;
      v61 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v59, v60, v37, buf, v61);
    }

LABEL_119:
    if (!v34)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v65 = "__nw_protocol_updated_path";
  v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v44, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v65 = "__nw_protocol_updated_path";
        v47 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
      }
    }

    else if (v62 == 1)
    {
      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v52 = os_log_type_enabled(v45, type);
      if (v51)
      {
        if (v52)
        {
          *buf = 136446466;
          v65 = "__nw_protocol_updated_path";
          v66 = 2082;
          v67 = v51;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v51);
        goto LABEL_106;
      }

      if (v52)
      {
        *buf = 136446210;
        v65 = "__nw_protocol_updated_path";
        v47 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v65 = "__nw_protocol_updated_path";
        v47 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v44)
  {
    free(v44);
  }

  return 0;
}

uint64_t nw_protocol_definition_get_framer_create(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1[9];
  if (v2)
  {
    v3 = *(v2 + 72);
    goto LABEL_3;
  }

  v5 = v1;
  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_definition_get_framer_create";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null definition->common_state", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_definition_get_framer_create";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null definition->common_state", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_protocol_definition_get_framer_create";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_protocol_definition_get_framer_create";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_definition_get_framer_create";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v1 = v5;
LABEL_3:

  return v3;
}

uint64_t nw_framer_protocol_supports_external_data(nw_protocol *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1->handle;
    if (v1)
    {
      if (*(v1 + 1))
      {
        v2 = v1[606] & 1;
LABEL_5:

        return v2;
      }

      v8 = v1;
      v13 = __nwlog_obj();
      *buf = 136446210;
      v30 = "nw_framer_protocol_supports_external_data";
      v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v27 = 0;
      if (__nwlog_fault(v10, &type, &v27))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v14 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v30 = "nw_framer_protocol_supports_external_data";
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v27 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v22 = type;
          v23 = os_log_type_enabled(v11, type);
          if (backtrace_string)
          {
            if (v23)
            {
              *buf = 136446466;
              v30 = "nw_framer_protocol_supports_external_data";
              v31 = 2082;
              v32 = backtrace_string;
              _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v10)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          if (v23)
          {
            *buf = 136446210;
            v30 = "nw_framer_protocol_supports_external_data";
            _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v11 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v11, type))
          {
            *buf = 136446210;
            v30 = "nw_framer_protocol_supports_external_data";
            _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_58;
      }

LABEL_59:
      if (!v10)
      {
LABEL_61:
        v2 = 0;
        v1 = v8;
        goto LABEL_5;
      }

LABEL_60:
      free(v10);
      goto LABEL_61;
    }

    v8 = 0;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_protocol_supports_external_data";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v11, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v30 = "nw_framer_protocol_supports_external_data";
          v31 = 2082;
          v32 = v18;
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_59;
      }

      if (v20)
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_58:

    goto LABEL_59;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_framer_protocol_supports_external_data";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v5, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v15 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          v30 = "nw_framer_protocol_supports_external_data";
          v31 = 2082;
          v32 = v15;
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_50;
      }

      if (v17)
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_protocol_supports_external_data";
        _os_log_impl(&dword_181A37000, v6, v24, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_50:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_framer_protocol_connect(nw_protocol *a1, nw_protocol *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1->handle;
    v4 = v3;
    if (v3)
    {
      if (v3[1])
      {
        output_handler = a1->output_handler;
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            if (callbacks->connect)
            {
              v7 = nw_protocol_connect(output_handler, a1);
LABEL_8:

              return v7;
            }
          }
        }

        v9 = v4[45];
        if (v9 && _nw_parameters_get_custom_protocols_only(v9))
        {
          nw_framer_protocol_connected(a1, 0);
          v7 = 1;
          goto LABEL_8;
        }

LABEL_66:
        v7 = 0;
        goto LABEL_8;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_connect";
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v15, &type, &v31))
      {
LABEL_64:
        if (v15)
        {
          free(v15);
        }

        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

LABEL_63:

        goto LABEL_64;
      }

      if (v31 != 1)
      {
        v16 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_63;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v26 = type;
      v27 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_63;
      }

      if (v27)
      {
        *buf = 136446466;
        v34 = "nw_framer_protocol_connect";
        v35 = 2082;
        v36 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_connect";
      v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null framer", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v15, &type, &v31))
      {
        goto LABEL_64;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_63;
      }

      if (v31 != 1)
      {
        v16 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v29, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_63;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v34 = "nw_framer_protocol_connect";
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_63;
      }

      if (v25)
      {
        *buf = 136446466;
        v34 = "nw_framer_protocol_connect";
        v35 = 2082;
        v36 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_64;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_framer_protocol_connect";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v11, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_connect";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v12, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_connect";
          v35 = 2082;
          v36 = v20;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_55;
      }

      if (v22)
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_connect";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_connect";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_55:
  if (v11)
  {
    free(v11);
  }

  return 0;
}

void nw_framer_protocol_connected(nw_protocol *a1, nw_protocol *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    v5 = v4;
    if (v4)
    {
      if (v4[1])
      {
        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          callbacks = default_input_handler->callbacks;
          if (callbacks)
          {
            connected = callbacks->connected;
            if (connected)
            {
              connected();
            }
          }
        }

        if (a1->output_handler == a2)
        {
          v9 = *(v5 + 606);
          if ((v9 & 8) != 0)
          {
            if ((*(v5 + 606) & 0x10) != 0)
            {
              v12 = a1->default_input_handler;
              if (v12)
              {
                v13 = v12->callbacks;
                if (v13)
                {
                  v14 = v13->connected;
                  if (v14)
                  {
                    v14();
                  }
                }
              }
            }
          }

          else
          {
            *type = 0;
            if (a2)
            {
              v10 = a2->callbacks;
              if (v10)
              {
                v10 = v10->get_message_properties;
                if (v10)
                {
                  (v10)(a2, a1, type);
                  LOBYTE(v10) = type[4];
                  v9 = *(v5 + 606);
                }
              }
            }

            else
            {
              LOBYTE(v10) = 0;
            }

            *(v5 + 606) = (2 * (v10 & 1)) | v9 & 0xFD;
            if ((v10 & 1) != 0 && gLogDatapath == 1)
            {
              v37 = __nwlog_obj();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v41 = "nw_framer_protocol_connected";
                v42 = 2080;
                v43 = v5 + 609;
                _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %s Output frames will be treated as separate messages", buf, 0x16u);
              }
            }

            v11 = v5[49];
            if (v11)
            {
              *(v5 + 606) |= 0xCu;
              if ((*(v11 + 16))(v11, v5) == 1)
              {
                nw_framer_mark_ready(v5);
              }

              *(v5 + 606) &= ~4u;
              nw_framer_input_loop(v5);
            }

            else
            {
              nw_framer_mark_failed_with_error(v5, 22);
            }
          }
        }

        goto LABEL_9;
      }

      v23 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_framer_protocol_connected";
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null framer->parent_definition", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v39 = 0;
      if (__nwlog_fault(v20, type, &v39))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v21 = __nwlog_obj();
          v24 = type[0];
          if (os_log_type_enabled(v21, type[0]))
          {
            *buf = 136446210;
            v41 = "nw_framer_protocol_connected";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v39 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v21 = __nwlog_obj();
          v32 = type[0];
          v33 = os_log_type_enabled(v21, type[0]);
          if (backtrace_string)
          {
            if (v33)
            {
              *buf = 136446466;
              v41 = "nw_framer_protocol_connected";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v20)
            {
              goto LABEL_9;
            }

            goto LABEL_81;
          }

          if (v33)
          {
            *buf = 136446210;
            v41 = "nw_framer_protocol_connected";
            _os_log_impl(&dword_181A37000, v21, v32, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v21 = __nwlog_obj();
          v36 = type[0];
          if (os_log_type_enabled(v21, type[0]))
          {
            *buf = 136446210;
            v41 = "nw_framer_protocol_connected";
            _os_log_impl(&dword_181A37000, v21, v36, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_79;
      }

LABEL_80:
      if (!v20)
      {
LABEL_9:

        return;
      }

LABEL_81:
      free(v20);
      goto LABEL_9;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_framer_protocol_connected";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null framer", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v20, type, &v39))
    {
      goto LABEL_80;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v29 = type[0];
      v30 = os_log_type_enabled(v21, type[0]);
      if (v28)
      {
        if (v30)
        {
          *buf = 136446466;
          v41 = "nw_framer_protocol_connected";
          v42 = 2082;
          v43 = v28;
          _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_80;
      }

      if (v30)
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v21, v29, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v35 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v21, v35, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_79:

    goto LABEL_80;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_framer_protocol_connected";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v16, type, &v39))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v25 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v26 = type[0];
      v27 = os_log_type_enabled(v17, type[0]);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v41 = "nw_framer_protocol_connected";
          v42 = 2082;
          v43 = v25;
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_72;
      }

      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v34 = type[0];
      if (os_log_type_enabled(v17, type[0]))
      {
        *buf = 136446210;
        v41 = "nw_framer_protocol_connected";
        _os_log_impl(&dword_181A37000, v17, v34, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_72:
  if (v16)
  {
    free(v16);
  }
}

void nw_framer_set_cleanup_handler(nw_framer_t framer, nw_framer_cleanup_handler_t cleanup_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = cleanup_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_cleanup_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null framer", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_framer_set_cleanup_handler";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_cleanup_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null cleanup_handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null cleanup_handler", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null cleanup_handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null cleanup_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_cleanup_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null cleanup_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_cleanup_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null framer->in_start", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null framer->in_start", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null framer->in_start, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_framer_set_cleanup_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_cleanup_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v6 = _Block_copy(v4);
  isa = v3[54].isa;
  v3[54].isa = v6;

LABEL_5:
}

uint64_t nw_endpoint_fillout_v6_address(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = _nw_endpoint_get_type(v5);

    if (v6 == 1)
    {
      v7 = _nw_endpoint_fillout_v6_address(v5, a2);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_fillout_v6_address";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v10, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_fillout_v6_address";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_fillout_v6_address";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v10, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v25 = "nw_endpoint_fillout_v6_address";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_fillout_v6_address";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

void nw_protocol_ipv6_connected(nw_protocol *a1, nw_protocol *a2)
{
  v146 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_connected";
        default_input_handler = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v135 = 0;
        if (!__nwlog_fault(default_input_handler, &type, &v135))
        {
          goto LABEL_43;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v11 = "%{public}s called with null ipv6";
LABEL_41:
          v25 = v9;
          v26 = v10;
          goto LABEL_42;
        }

        if (v135 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_43;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v11 = "%{public}s called with null ipv6, backtrace limit exceeded";
          goto LABEL_41;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(gLogObj, type);
        if (!backtrace_string)
        {
          if (!v24)
          {
LABEL_43:
            if (!default_input_handler)
            {
              goto LABEL_168;
            }

            goto LABEL_44;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v11 = "%{public}s called with null ipv6, no backtrace";
          v25 = v22;
          v26 = v23;
LABEL_42:
          _os_log_impl(&dword_181A37000, v25, v26, v11, buf, 0xCu);
          goto LABEL_43;
        }

        if (v24)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v138 = 2082;
          v139 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!default_input_handler)
        {
LABEL_168:
          if ((v5 & 1) == 0)
          {
            v92 = v2->handle;
            if (v92 == &nw_protocol_ref_counted_handle || v92 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
            {
              v93 = v2[1].callbacks;
              if (v93)
              {
                v94 = (v93 - 1);
                v2[1].callbacks = v94;
                if (!v94)
                {
                  v95 = *v2[1].flow_id;
                  if (v95)
                  {
                    *v2[1].flow_id = 0;
                    v95[2](v95);
                    _Block_release(v95);
                  }

                  if (v2[1].flow_id[8])
                  {
                    v96 = *v2[1].flow_id;
                    if (v96)
                    {
                      _Block_release(v96);
                    }
                  }

                  goto LABEL_179;
                }
              }
            }
          }

          return;
        }

LABEL_44:
        free(default_input_handler);
        goto LABEL_168;
      }

      v7 = *a1[1].flow_id;
    }

    if ((HIBYTE(v7[3].output_handler_context) & 1) == 0 && gLogDatapath == 1)
    {
      v103 = a2;
      v104 = __nwlog_obj();
      v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG);
      a2 = v103;
      if (v105)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_ipv6_connected";
        v138 = 2082;
        v139 = v7 + 4;
        v140 = 2080;
        v141 = " ";
        v142 = 2048;
        p_output_handler = &v7[1].output_handler;
        _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p Got a connected event from the lower layer", buf, 0x2Au);
        a2 = v103;
      }
    }

    default_input_handler = v2->default_input_handler;
    if (v2->output_handler != a2)
    {
      if (!default_input_handler)
      {
        goto LABEL_168;
      }

      v12 = *(default_input_handler + 24);
      if (!v12)
      {
        goto LABEL_168;
      }

      if (!a2)
      {
        goto LABEL_168;
      }

      v13 = *(v12 + 40);
      if (!v13)
      {
        goto LABEL_168;
      }

      v14 = *(default_input_handler + 40);
      v15 = v2->default_input_handler;
      if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(default_input_handler + 64)) != 0)
      {
        v27 = v15[1].callbacks;
        v16 = 0;
        if (v27)
        {
          v15[1].callbacks = (&v27->add_input_handler + 1);
        }
      }

      else
      {
        v16 = 1;
      }

      v28 = a2->handle;
      v29 = a2;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = *a2[1].flow_id) != 0)
      {
        v30 = v29[1].callbacks;
        if (v30)
        {
          v29[1].callbacks = (&v30->add_input_handler + 1);
        }

        v31 = a2;
        v13(default_input_handler);
        v32 = v31;
        v33 = v31->handle;
        if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v32 = *v31[1].flow_id) != 0)
        {
          v34 = v32[1].callbacks;
          if (v34)
          {
            v35 = (v34 - 1);
            v32[1].callbacks = v35;
            if (!v35)
            {
              v36 = *v32[1].flow_id;
              if (v36)
              {
                *v32[1].flow_id = 0;
                v37 = v32;
                v36[2](v36);
                _Block_release(v36);
                v32 = v37;
              }

              if (v32[1].flow_id[8])
              {
                v38 = *v32[1].flow_id;
                if (v38)
                {
                  v39 = v32;
                  _Block_release(v38);
                  v32 = v39;
                }
              }

              free(v32);
            }
          }
        }

        if (v16)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v13(default_input_handler);
        if (v16)
        {
          goto LABEL_168;
        }
      }

LABEL_163:
      v89 = *(default_input_handler + 40);
      if (v89 != &nw_protocol_ref_counted_handle)
      {
        if (v89 != &nw_protocol_ref_counted_additional_handle)
        {
          goto LABEL_168;
        }

        default_input_handler = *(default_input_handler + 64);
        if (!default_input_handler)
        {
          goto LABEL_168;
        }
      }

      v90 = *(default_input_handler + 88);
      if (!v90)
      {
        goto LABEL_168;
      }

      v91 = v90 - 1;
      *(default_input_handler + 88) = v91;
      if (v91)
      {
        goto LABEL_168;
      }

      v97 = *(default_input_handler + 64);
      if (v97)
      {
        *(default_input_handler + 64) = 0;
        v97[2](v97);
        _Block_release(v97);
      }

      if (*(default_input_handler + 72))
      {
        v98 = *(default_input_handler + 64);
        if (v98)
        {
          _Block_release(v98);
        }
      }

      goto LABEL_44;
    }

    if (default_input_handler)
    {
      v17 = *(default_input_handler + 40);
      v18 = v2->default_input_handler;
      if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *(default_input_handler + 64)) != 0)
      {
        v40 = v18[1].callbacks;
        if (v40)
        {
          v19 = 0;
          v18[1].callbacks = (&v40->add_input_handler + 1);
          v20 = *(default_input_handler + 24);
          if (!v20)
          {
            goto LABEL_198;
          }
        }

        else
        {
          v19 = 0;
          v20 = *(default_input_handler + 24);
          if (!v20)
          {
            goto LABEL_198;
          }
        }
      }

      else
      {
        v19 = 1;
        v20 = *(default_input_handler + 24);
        if (!v20)
        {
          goto LABEL_198;
        }
      }

      v41 = *(v20 + 112);
      if (v41)
      {
        v42 = v41(default_input_handler);
        if (v19)
        {
          goto LABEL_86;
        }

        goto LABEL_75;
      }

LABEL_198:
      v108 = __nwlog_obj();
      v109 = *(default_input_handler + 16);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_parameters";
      if (!v109)
      {
        v109 = "invalid";
      }

      v138 = 2082;
      v139 = v109;
      v140 = 2048;
      v141 = default_input_handler;
      type = OS_LOG_TYPE_ERROR;
      v135 = 0;
      v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
      if (__nwlog_fault(v134, &type, &v135))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v110 = __nwlog_obj();
          v111 = type;
          log = v110;
          if (!os_log_type_enabled(v110, type))
          {
            goto LABEL_231;
          }

          v112 = *(default_input_handler + 16);
          if (!v112)
          {
            v112 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v138 = 2082;
          v139 = v112;
          v140 = 2048;
          v141 = default_input_handler;
          v113 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_230:
          _os_log_impl(&dword_181A37000, log, v111, v113, buf, 0x20u);
          goto LABEL_231;
        }

        if (v135 != 1)
        {
          v118 = __nwlog_obj();
          v111 = type;
          log = v118;
          if (!os_log_type_enabled(v118, type))
          {
            goto LABEL_231;
          }

          v119 = *(default_input_handler + 16);
          if (!v119)
          {
            v119 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v138 = 2082;
          v139 = v119;
          v140 = 2048;
          v141 = default_input_handler;
          v113 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
          goto LABEL_230;
        }

        v114 = __nw_create_backtrace_string();
        v115 = __nwlog_obj();
        v111 = type;
        log = v115;
        v116 = os_log_type_enabled(v115, type);
        if (!v114)
        {
          if (!v116)
          {
            goto LABEL_231;
          }

          v121 = *(default_input_handler + 16);
          if (!v121)
          {
            v121 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_parameters";
          v138 = 2082;
          v139 = v121;
          v140 = 2048;
          v141 = default_input_handler;
          v113 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
          goto LABEL_230;
        }

        if (v116)
        {
          v117 = *(default_input_handler + 16);
          if (!v117)
          {
            v117 = "invalid";
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_get_parameters";
          v138 = 2082;
          v139 = v117;
          v140 = 2048;
          v141 = default_input_handler;
          v142 = 2082;
          p_output_handler = v114;
          _os_log_impl(&dword_181A37000, log, v111, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v114);
      }

LABEL_231:
      if (v134)
      {
        free(v134);
      }

      v42 = 0;
      if (v19)
      {
        goto LABEL_86;
      }

LABEL_75:
      v43 = *(default_input_handler + 40);
      if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *(default_input_handler + 64)) != 0)
      {
        v44 = *(default_input_handler + 88);
        if (v44)
        {
          v45 = v44 - 1;
          *(default_input_handler + 88) = v45;
          if (!v45)
          {
            v46 = v42;
            v47 = *(default_input_handler + 64);
            if (v47)
            {
              *(default_input_handler + 64) = 0;
              v47[2](v47);
              _Block_release(v47);
            }

            if (*(default_input_handler + 72))
            {
              v48 = *(default_input_handler + 64);
              if (v48)
              {
                _Block_release(v48);
              }
            }

            free(default_input_handler);
            v42 = v46;
          }
        }
      }

      goto LABEL_86;
    }

    v122 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_parameters";
    v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v122, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v135 = 0;
    if (__nwlog_fault(v123, &type, &v135))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v124 = __nwlog_obj();
        v125 = type;
        if (os_log_type_enabled(v124, type))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v126 = "%{public}s called with null protocol";
LABEL_246:
          v131 = v124;
          v132 = v125;
LABEL_247:
          _os_log_impl(&dword_181A37000, v131, v132, v126, buf, 0xCu);
        }
      }

      else if (v135 == 1)
      {
        v127 = __nw_create_backtrace_string();
        v128 = __nwlog_obj();
        v129 = type;
        v130 = os_log_type_enabled(v128, type);
        if (v127)
        {
          if (v130)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_parameters";
            v138 = 2082;
            v139 = v127;
            _os_log_impl(&dword_181A37000, v128, v129, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v127);
          goto LABEL_248;
        }

        if (v130)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v126 = "%{public}s called with null protocol, no backtrace";
          v131 = v128;
          v132 = v129;
          goto LABEL_247;
        }
      }

      else
      {
        v124 = __nwlog_obj();
        v125 = type;
        if (os_log_type_enabled(v124, type))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_parameters";
          v126 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_246;
        }
      }
    }

LABEL_248:
    if (v123)
    {
      free(v123);
    }

    v42 = 0;
LABEL_86:
    v49 = nw_parameters_copy_context(v42);
    v50 = nw_path_copy_flow_registration(v49, v2);
    if (v50)
    {
      v51 = v50;
      stats_region = nw_path_flow_registration_get_stats_region(v50, v7->identifier->name);
      v7[2].identifier = stats_region;
      if (!stats_region)
      {
        if ((HIBYTE(v7[3].output_handler_context) & 1) == 0 && gLogDatapath == 1)
        {
          v120 = __nwlog_obj();
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447234;
            *&buf[4] = "nw_protocol_ipv6_connected";
            v138 = 2082;
            v139 = v7 + 4;
            v140 = 2080;
            v141 = " ";
            v142 = 2048;
            p_output_handler = &v7[1].output_handler;
            v144 = 2048;
            v145 = &g_ip6_stats;
            _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%p ipv6->ip6_stats is NULL setting to global %p", buf, 0x34u);
          }
        }

        v7[2].identifier = &g_ip6_stats;
      }

      os_release(v51);
    }

    if (v49)
    {
      os_release(v49);
    }

    *buf = 0;
    output_handler = v2->output_handler;
    if (output_handler)
    {
      v54 = output_handler->callbacks;
      if (v54)
      {
        get_message_properties = v54->get_message_properties;
        if (get_message_properties)
        {
          v56 = output_handler->handle;
          v57 = v2->output_handler;
          if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v57 = *output_handler[1].flow_id) != 0)
          {
            v59 = v57[1].callbacks;
            v58 = 0;
            if (v59)
            {
              v57[1].callbacks = (&v59->add_input_handler + 1);
            }
          }

          else
          {
            v58 = 1;
          }

          v60 = v2->handle;
          v61 = v2;
          if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v61 = *v2[1].flow_id) != 0)
          {
            v62 = v61[1].callbacks;
            if (v62)
            {
              v61[1].callbacks = (&v62->add_input_handler + 1);
            }

            get_message_properties(output_handler, v2, buf);
            v63 = v2->handle;
            v64 = v2;
            if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v64 = *v2[1].flow_id) != 0)
            {
              v65 = v64[1].callbacks;
              if (v65)
              {
                v66 = (v65 - 1);
                v64[1].callbacks = v66;
                if (!v66)
                {
                  v67 = *v64[1].flow_id;
                  if (v67)
                  {
                    *v64[1].flow_id = 0;
                    v67[2](v67);
                    _Block_release(v67);
                  }

                  if (v64[1].flow_id[8])
                  {
                    v68 = *v64[1].flow_id;
                    if (v68)
                    {
                      _Block_release(v68);
                    }
                  }

                  free(v64);
                }
              }
            }
          }

          else
          {
            get_message_properties(output_handler, v2, buf);
          }

          if ((v58 & 1) == 0)
          {
            v69 = output_handler->handle;
            if (v69 == &nw_protocol_ref_counted_handle || v69 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
            {
              v70 = output_handler[1].callbacks;
              if (v70)
              {
                v71 = (v70 - 1);
                output_handler[1].callbacks = v71;
                if (!v71)
                {
                  v72 = *output_handler[1].flow_id;
                  if (v72)
                  {
                    *output_handler[1].flow_id = 0;
                    v72[2](v72);
                    _Block_release(v72);
                  }

                  if (output_handler[1].flow_id[8])
                  {
                    v73 = *output_handler[1].flow_id;
                    if (v73)
                    {
                      _Block_release(v73);
                    }
                  }

                  free(output_handler);
                }
              }
            }
          }

          if ((*buf - 1) <= 0xFFFFFFFD)
          {
            HIDWORD(v7[3].handle) = *buf;
          }
        }
      }
    }

    default_input_handler = v2->default_input_handler;
    if (!default_input_handler)
    {
      goto LABEL_168;
    }

    v74 = *(default_input_handler + 24);
    if (!v74)
    {
      goto LABEL_168;
    }

    v75 = *(v74 + 40);
    if (!v75)
    {
      goto LABEL_168;
    }

    v76 = *(default_input_handler + 40);
    v77 = v2->default_input_handler;
    if (v76 == &nw_protocol_ref_counted_handle || v76 == &nw_protocol_ref_counted_additional_handle && (v77 = *(default_input_handler + 64)) != 0)
    {
      v79 = v77[1].callbacks;
      v78 = 0;
      if (v79)
      {
        v77[1].callbacks = (&v79->add_input_handler + 1);
      }
    }

    else
    {
      v78 = 1;
    }

    v80 = v2->handle;
    v81 = v2;
    if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *v2[1].flow_id) != 0)
    {
      v82 = v81[1].callbacks;
      if (v82)
      {
        v81[1].callbacks = (&v82->add_input_handler + 1);
      }

      v75(default_input_handler, v2);
      v83 = v2->handle;
      v84 = v2;
      if (v83 == &nw_protocol_ref_counted_handle || v83 == &nw_protocol_ref_counted_additional_handle && (v84 = *v2[1].flow_id) != 0)
      {
        v85 = v84[1].callbacks;
        if (v85)
        {
          v86 = (v85 - 1);
          v84[1].callbacks = v86;
          if (!v86)
          {
            v87 = *v84[1].flow_id;
            if (v87)
            {
              *v84[1].flow_id = 0;
              v87[2](v87);
              _Block_release(v87);
            }

            if (v84[1].flow_id[8])
            {
              v88 = *v84[1].flow_id;
              if (v88)
              {
                _Block_release(v88);
              }
            }

            free(v84);
          }
        }
      }
    }

    else
    {
      v75(default_input_handler, v2);
    }

    if (v78)
    {
      goto LABEL_168;
    }

    goto LABEL_163;
  }

  v99 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ipv6_connected";
  v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v135 = 0;
  if (__nwlog_fault(v2, &type, &v135))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v100 = __nwlog_obj();
      v101 = type;
      if (!os_log_type_enabled(v100, type))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_connected";
      v102 = "%{public}s called with null protocol";
    }

    else if (v135 == 1)
    {
      v106 = __nw_create_backtrace_string();
      v100 = __nwlog_obj();
      v101 = type;
      v107 = os_log_type_enabled(v100, type);
      if (v106)
      {
        if (v107)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_connected";
          v138 = 2082;
          v139 = v106;
          _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v106);
        if (v2)
        {
          goto LABEL_179;
        }

        return;
      }

      if (!v107)
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_connected";
      v102 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v100 = __nwlog_obj();
      v101 = type;
      if (!os_log_type_enabled(v100, type))
      {
        goto LABEL_222;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_connected";
      v102 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0xCu);
  }

LABEL_222:
  if (v2)
  {
LABEL_179:
    free(v2);
  }
}

uint64_t nw_protocol_ipv6_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v235 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v133 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v133, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = 16;
    v229 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v134, type, &v229))
    {
      if (type[0] == 17)
      {
        v135 = __nwlog_obj();
        v136 = type[0];
        if (os_log_type_enabled(v135, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          v137 = "%{public}s called with null protocol";
LABEL_417:
          _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0xCu);
        }
      }

      else if (v229 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v135 = __nwlog_obj();
        v136 = type[0];
        v166 = os_log_type_enabled(v135, type[0]);
        if (backtrace_string)
        {
          if (v166)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_ipv6_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v135, v136, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_418;
        }

        if (v166)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          v137 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_417;
        }
      }

      else
      {
        v135 = __nwlog_obj();
        v136 = type[0];
        if (os_log_type_enabled(v135, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          v137 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_417;
        }
      }
    }

LABEL_418:
    if (v134)
    {
      free(v134);
    }

    return 0;
  }

  v2 = a2;
  v3 = a1;
  handle = a1->handle;
  v5 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *a1[1].flow_id;
  if (v5)
  {
LABEL_6:
    callbacks = v5[1].callbacks;
    v6 = 0;
    if (callbacks)
    {
      v5[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v8 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
LABEL_18:
    if (a1->default_input_handler)
    {
      v159 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_add_input_handler";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s Default input handler already exists", buf, 12);
      type[0] = 16;
      v229 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v9, type, &v229))
      {
        goto LABEL_62;
      }

      if (type[0] == 17)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Default input handler already exists";
        goto LABEL_59;
      }

      if (v229 == OS_LOG_TYPE_INFO)
      {
        v178 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type[0];
        v179 = os_log_type_enabled(v10, type[0]);
        if (v178)
        {
          if (!v179)
          {
            goto LABEL_410;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v178;
          v180 = "%{public}s Default input handler already exists, dumping backtrace:%{public}s";
LABEL_340:
          v183 = buf;
LABEL_409:
          _os_log_impl(&dword_181A37000, v10, v11, v180, v183, 0x16u);
          goto LABEL_410;
        }

        if (!v179)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Default input handler already exists, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Default input handler already exists, backtrace limit exceeded";
      }

LABEL_59:
      v36 = buf;
LABEL_60:
      v37 = v10;
      v38 = v11;
LABEL_61:
      _os_log_impl(&dword_181A37000, v37, v38, v12, v36, 0xCu);
      goto LABEL_62;
    }

    if (a2)
    {
      if (a2->identifier)
      {
        identifier = a2->identifier;
      }

      else
      {
        identifier = "invalid";
      }

      if (strncmp(identifier->name, "quic", 4uLL))
      {
        nw_protocol_release(0);
        v3->default_input_handler = v2;
        v14 = v2->handle;
        v15 = v2;
        if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *v2[1].flow_id) != 0)
        {
          v16 = v15[1].callbacks;
          if (v16)
          {
            v15[1].callbacks = (&v16->add_input_handler + 1);
          }
        }

        nw_protocol_set_flow_id_from_protocol(v8, v2);
        if (v2->output_handler)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_ipv6_add_input_handler";
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
          }
        }

        else if (v8)
        {
          v2->output_handler = v8;
          v27 = v8->handle;
          v28 = v8;
          if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v28 = *v8[1].flow_id) != 0)
          {
            v29 = v28[1].callbacks;
            if (v29)
            {
              v28[1].callbacks = (&v29->add_input_handler + 1);
            }
          }
        }

        v30 = v2->handle;
        v31 = v2;
        if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *v2[1].flow_id) != 0)
        {
          v40 = v31[1].callbacks;
          if (v40)
          {
            v32 = 0;
            v31[1].callbacks = (&v40->add_input_handler + 1);
            v33 = v2->callbacks;
            if (!v33)
            {
              goto LABEL_263;
            }
          }

          else
          {
            v32 = 0;
            v33 = v2->callbacks;
            if (!v33)
            {
              goto LABEL_263;
            }
          }
        }

        else
        {
          v32 = 1;
          v33 = v2->callbacks;
          if (!v33)
          {
            goto LABEL_263;
          }
        }

        get_parameters = v33->get_parameters;
        if (get_parameters)
        {
          v42 = get_parameters(v2);
          if (v32)
          {
            goto LABEL_84;
          }

          goto LABEL_73;
        }

LABEL_263:
        v138 = __nwlog_obj();
        name = v2->identifier->name;
        if (!name)
        {
          name = "invalid";
        }

        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_parameters";
        *&buf[12] = 2082;
        *&buf[14] = name;
        *&buf[22] = 2048;
        v232 = v2;
        v140 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback", buf, 32);
        type[0] = 16;
        v229 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v140, type, &v229))
        {
          if (type[0] == 17)
          {
            v141 = __nwlog_obj();
            v142 = type[0];
            if (!os_log_type_enabled(v141, type[0]))
            {
              goto LABEL_363;
            }

            v143 = v2->identifier->name;
            if (!v143)
            {
              v143 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v143;
            *&buf[22] = 2048;
            v232 = v2;
            v144 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_361:
            v188 = v141;
LABEL_362:
            _os_log_impl(&dword_181A37000, v188, v142, v144, buf, 0x20u);
            goto LABEL_363;
          }

          if (v229 != OS_LOG_TYPE_INFO)
          {
            v141 = __nwlog_obj();
            v142 = type[0];
            if (!os_log_type_enabled(v141, type[0]))
            {
              goto LABEL_363;
            }

            v187 = v2->identifier->name;
            if (!v187)
            {
              v187 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v187;
            *&buf[22] = 2048;
            v232 = v2;
            v144 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
            goto LABEL_361;
          }

          v167 = __nw_create_backtrace_string();
          v168 = __nwlog_obj();
          v142 = type[0];
          v224 = v168;
          v169 = os_log_type_enabled(v168, type[0]);
          if (v167)
          {
            if (v169)
            {
              v170 = v2->identifier->name;
              if (!v170)
              {
                v170 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_parameters";
              *&buf[12] = 2082;
              *&buf[14] = v170;
              *&buf[22] = 2048;
              v232 = v2;
              v233 = 2082;
              v234 = v167;
              _os_log_impl(&dword_181A37000, v224, v142, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v167);
          }

          else if (v169)
          {
            v204 = v2->identifier->name;
            if (!v204)
            {
              v204 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v204;
            *&buf[22] = 2048;
            v232 = v2;
            v144 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
            v188 = v224;
            goto LABEL_362;
          }
        }

LABEL_363:
        if (v140)
        {
          free(v140);
        }

        v42 = 0;
        if (v32)
        {
LABEL_84:
          BYTE4(v8[3].output_handler_context) = nw_parameters_get_ip_protocol(v42);
          v49 = v2->handle;
          v50 = v2;
          if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = *v2[1].flow_id) != 0)
          {
            v53 = v50[1].callbacks;
            if (v53)
            {
              v51 = 0;
              v50[1].callbacks = (&v53->add_input_handler + 1);
              v52 = v2->callbacks;
              if (!v52)
              {
                goto LABEL_271;
              }
            }

            else
            {
              v51 = 0;
              v52 = v2->callbacks;
              if (!v52)
              {
                goto LABEL_271;
              }
            }
          }

          else
          {
            v51 = 1;
            v52 = v2->callbacks;
            if (!v52)
            {
              goto LABEL_271;
            }
          }

          get_local_endpoint = v52->get_local_endpoint;
          if (get_local_endpoint)
          {
            v55 = get_local_endpoint(v2);
            if (v51)
            {
              goto LABEL_95;
            }

            goto LABEL_376;
          }

LABEL_271:
          v145 = __nwlog_obj();
          v146 = v2->identifier->name;
          if (!v146)
          {
            v146 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_local_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v146;
          *&buf[22] = 2048;
          v232 = v2;
          LODWORD(v214) = 32;
          v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v145, 16, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback", buf, v214);
          type[0] = 16;
          v229 = OS_LOG_TYPE_DEFAULT;
          v226 = v147;
          if (__nwlog_fault(v147, type, &v229))
          {
            if (type[0] == 17)
            {
              v148 = __nwlog_obj();
              v149 = type[0];
              if (!os_log_type_enabled(v148, type[0]))
              {
                goto LABEL_373;
              }

              v150 = v2->identifier->name;
              if (!v150)
              {
                v150 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v150;
              *&buf[22] = 2048;
              v232 = v2;
              v151 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
LABEL_371:
              v190 = v148;
              v191 = v149;
LABEL_372:
              _os_log_impl(&dword_181A37000, v190, v191, v151, buf, 0x20u);
              goto LABEL_373;
            }

            if (v229 != OS_LOG_TYPE_INFO)
            {
              v148 = __nwlog_obj();
              v149 = type[0];
              if (!os_log_type_enabled(v148, type[0]))
              {
                goto LABEL_373;
              }

              v189 = v2->identifier->name;
              if (!v189)
              {
                v189 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v189;
              *&buf[22] = 2048;
              v232 = v2;
              v151 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
              goto LABEL_371;
            }

            v171 = __nw_create_backtrace_string();
            v172 = __nwlog_obj();
            logb = type[0];
            v173 = os_log_type_enabled(v172, type[0]);
            if (v171)
            {
              if (v173)
              {
                v174 = v2->identifier->name;
                if (!v174)
                {
                  v174 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_get_local_endpoint";
                *&buf[12] = 2082;
                *&buf[14] = v174;
                *&buf[22] = 2048;
                v232 = v2;
                v233 = 2082;
                v234 = v171;
                _os_log_impl(&dword_181A37000, v172, logb, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v171);
            }

            else if (v173)
            {
              v205 = v2->identifier->name;
              if (!v205)
              {
                v205 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_local_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v205;
              *&buf[22] = 2048;
              v232 = v2;
              v151 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
              v190 = v172;
              v191 = logb;
              goto LABEL_372;
            }
          }

LABEL_373:
          if (v226)
          {
            free(v226);
          }

          v55 = 0;
          if (v51)
          {
            goto LABEL_95;
          }

LABEL_376:
          v56 = v2->handle;
          v192 = v2;
          if (v56 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_379;
          }

          if (v56 != &nw_protocol_ref_counted_additional_handle)
          {
            goto LABEL_96;
          }

          v192 = *v2[1].flow_id;
          if (v192)
          {
LABEL_379:
            v193 = v192[1].callbacks;
            if (v193)
            {
              v194 = (v193 - 1);
              v192[1].callbacks = v194;
              if (!v194)
              {
                v195 = *v192[1].flow_id;
                if (v195)
                {
                  *v192[1].flow_id = 0;
                  v195[2](v195);
                  _Block_release(v195);
                }

                if (v192[1].flow_id[8])
                {
                  v196 = *v192[1].flow_id;
                  if (v196)
                  {
                    _Block_release(v196);
                  }
                }

                free(v192);
              }
            }
          }

LABEL_95:
          v56 = v2->handle;
LABEL_96:
          v57 = v2;
          if (v56 == &nw_protocol_ref_counted_handle || v56 == &nw_protocol_ref_counted_additional_handle && (v57 = *v2[1].flow_id) != 0)
          {
            v60 = v57[1].callbacks;
            if (v60)
            {
              v58 = 0;
              v57[1].callbacks = (&v60->add_input_handler + 1);
              v59 = v2->callbacks;
              if (!v59)
              {
                goto LABEL_279;
              }
            }

            else
            {
              v58 = 0;
              v59 = v2->callbacks;
              if (!v59)
              {
                goto LABEL_279;
              }
            }
          }

          else
          {
            v58 = 1;
            v59 = v2->callbacks;
            if (!v59)
            {
              goto LABEL_279;
            }
          }

          get_remote_endpoint = v59->get_remote_endpoint;
          if (get_remote_endpoint)
          {
            v62 = get_remote_endpoint(v2);
            if (v58)
            {
              goto LABEL_192;
            }

            goto LABEL_107;
          }

LABEL_279:
          v152 = __nwlog_obj();
          v153 = v2->identifier->name;
          if (!v153)
          {
            v153 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v153;
          *&buf[22] = 2048;
          v232 = v2;
          LODWORD(v214) = 32;
          v154 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v152, 16, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, v214);
          type[0] = 16;
          v229 = OS_LOG_TYPE_DEFAULT;
          v227 = v154;
          if (__nwlog_fault(v154, type, &v229))
          {
            if (type[0] == 17)
            {
              v155 = __nwlog_obj();
              v156 = type[0];
              log = v155;
              if (!os_log_type_enabled(v155, type[0]))
              {
                goto LABEL_393;
              }

              v157 = v2->identifier->name;
              if (!v157)
              {
                v157 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v157;
              *&buf[22] = 2048;
              v232 = v2;
              v158 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_391:
              v199 = log;
              v200 = v156;
LABEL_392:
              _os_log_impl(&dword_181A37000, v199, v200, v158, buf, 0x20u);
              goto LABEL_393;
            }

            if (v229 != OS_LOG_TYPE_INFO)
            {
              v197 = __nwlog_obj();
              v156 = type[0];
              log = v197;
              if (!os_log_type_enabled(v197, type[0]))
              {
                goto LABEL_393;
              }

              v198 = v2->identifier->name;
              if (!v198)
              {
                v198 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v198;
              *&buf[22] = 2048;
              v232 = v2;
              v158 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
              goto LABEL_391;
            }

            v175 = __nw_create_backtrace_string();
            logc = __nwlog_obj();
            v219 = type[0];
            v176 = os_log_type_enabled(logc, type[0]);
            if (v175)
            {
              if (v176)
              {
                v177 = v2->identifier->name;
                if (!v177)
                {
                  v177 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_get_remote_endpoint";
                *&buf[12] = 2082;
                *&buf[14] = v177;
                *&buf[22] = 2048;
                v232 = v2;
                v233 = 2082;
                v234 = v175;
                _os_log_impl(&dword_181A37000, logc, v219, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v175);
            }

            else if (v176)
            {
              v206 = v2->identifier->name;
              if (!v206)
              {
                v206 = "invalid";
              }

              *buf = 136446722;
              *&buf[4] = "__nw_protocol_get_remote_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v206;
              *&buf[22] = 2048;
              v232 = v2;
              v158 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
              v199 = logc;
              v200 = v219;
              goto LABEL_392;
            }
          }

LABEL_393:
          if (v227)
          {
            free(v227);
          }

          v62 = 0;
          if (v58)
          {
            goto LABEL_192;
          }

LABEL_107:
          v63 = v2->handle;
          if (v63 == &nw_protocol_ref_counted_handle || v63 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
          {
            v64 = v2[1].callbacks;
            if (v64)
            {
              v65 = (v64 - 1);
              v2[1].callbacks = v65;
              if (!v65)
              {
                v66 = *v2[1].flow_id;
                if (v66)
                {
                  *v2[1].flow_id = 0;
                  v66[2](v66);
                  _Block_release(v66);
                }

                if (v2[1].flow_id[8])
                {
                  v67 = *v2[1].flow_id;
                  if (v67)
                  {
                    _Block_release(v67);
                  }
                }

                free(v2);
              }
            }
          }

          goto LABEL_192;
        }

LABEL_73:
        v43 = v2->handle;
        v44 = v2;
        if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (v44 = *v2[1].flow_id) != 0)
        {
          v45 = v44[1].callbacks;
          if (v45)
          {
            v46 = (v45 - 1);
            v44[1].callbacks = v46;
            if (!v46)
            {
              v47 = *v44[1].flow_id;
              if (v47)
              {
                *v44[1].flow_id = 0;
                v47[2](v47);
                _Block_release(v47);
              }

              if (v44[1].flow_id[8])
              {
                v48 = *v44[1].flow_id;
                if (v48)
                {
                  _Block_release(v48);
                }
              }

              free(v44);
            }
          }
        }

        goto LABEL_84;
      }

LABEL_291:
      v160 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_ipv6_add_input_handler";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v160, 16, "%{public}s Attempt to add quic to ip", buf, 12);
      type[0] = 16;
      v229 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v9, type, &v229))
      {
        goto LABEL_62;
      }

      if (type[0] == 17)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Attempt to add quic to ip";
        goto LABEL_59;
      }

      if (v229 == OS_LOG_TYPE_INFO)
      {
        v178 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type[0];
        v182 = os_log_type_enabled(v10, type[0]);
        if (v178)
        {
          if (!v182)
          {
            goto LABEL_410;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_ipv6_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v178;
          v180 = "%{public}s Attempt to add quic to ip, dumping backtrace:%{public}s";
          goto LABEL_340;
        }

        if (!v182)
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Attempt to add quic to ip, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_62;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_ipv6_add_input_handler";
        v12 = "%{public}s Attempt to add quic to ip, backtrace limit exceeded";
      }

      goto LABEL_59;
    }

    if (!strncmp("invalid", "quic", 4uLL))
    {
      goto LABEL_291;
    }

    nw_protocol_set_flow_id_from_protocol(v8, 0);
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_output_handler";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = 16;
    v229 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v19, type, &v229))
    {
      if (type[0] == 17)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (!os_log_type_enabled(v20, type[0]))
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v22 = "%{public}s called with null protocol";
LABEL_124:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
        goto LABEL_125;
      }

      if (v229 != OS_LOG_TYPE_INFO)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (!os_log_type_enabled(v20, type[0]))
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v22 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_124;
      }

      v34 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type[0];
      v35 = os_log_type_enabled(v20, type[0]);
      if (!v34)
      {
        if (!v35)
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v22 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_124;
      }

      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_get_output_handler";
        *&buf[12] = 2082;
        *&buf[14] = v34;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v34);
    }

LABEL_125:
    if (v19)
    {
      free(v19);
    }

    v68 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_set_output_handler";
    LODWORD(v215) = 12;
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s called with null protocol", buf, v215);
    type[0] = 16;
    v229 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v69, type, &v229))
    {
      if (type[0] == 17)
      {
        v70 = __nwlog_obj();
        v71 = type[0];
        if (!os_log_type_enabled(v70, type[0]))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v72 = "%{public}s called with null protocol";
LABEL_140:
        _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
        goto LABEL_141;
      }

      if (v229 != OS_LOG_TYPE_INFO)
      {
        v70 = __nwlog_obj();
        v71 = type[0];
        if (!os_log_type_enabled(v70, type[0]))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v72 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_140;
      }

      v73 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type[0];
      v74 = os_log_type_enabled(v70, type[0]);
      if (!v73)
      {
        if (!v74)
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v72 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_140;
      }

      if (v74)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_set_output_handler";
        *&buf[12] = 2082;
        *&buf[14] = v73;
        _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v73);
    }

LABEL_141:
    if (v69)
    {
      free(v69);
    }

    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_parameters";
    LODWORD(v216) = 12;
    v76 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v75, 16, "%{public}s called with null protocol", buf, v216);
    type[0] = 16;
    v229 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v76, type, &v229))
    {
      if (type[0] == 17)
      {
        v77 = __nwlog_obj();
        v78 = type[0];
        if (!os_log_type_enabled(v77, type[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_parameters";
        v79 = "%{public}s called with null protocol";
LABEL_156:
        _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
        goto LABEL_157;
      }

      if (v229 != OS_LOG_TYPE_INFO)
      {
        v77 = __nwlog_obj();
        v78 = type[0];
        if (!os_log_type_enabled(v77, type[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_parameters";
        v79 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_156;
      }

      v80 = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = type[0];
      v81 = os_log_type_enabled(v77, type[0]);
      if (!v80)
      {
        if (!v81)
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_parameters";
        v79 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_156;
      }

      if (v81)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_get_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v80;
        _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v80);
    }

LABEL_157:
    if (v76)
    {
      free(v76);
    }

    BYTE4(v8[3].output_handler_context) = nw_parameters_get_ip_protocol(0);
    v82 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_local_endpoint";
    LODWORD(v217) = 12;
    v83 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s called with null protocol", buf, v217);
    type[0] = 16;
    v229 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v83, type, &v229))
    {
      if (type[0] == 17)
      {
        v84 = __nwlog_obj();
        v85 = type[0];
        if (!os_log_type_enabled(v84, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v86 = "%{public}s called with null protocol";
LABEL_172:
        _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0xCu);
        goto LABEL_173;
      }

      if (v229 != OS_LOG_TYPE_INFO)
      {
        v84 = __nwlog_obj();
        v85 = type[0];
        if (!os_log_type_enabled(v84, type[0]))
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v86 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_172;
      }

      v87 = __nw_create_backtrace_string();
      v84 = __nwlog_obj();
      v85 = type[0];
      v88 = os_log_type_enabled(v84, type[0]);
      if (!v87)
      {
        if (!v88)
        {
          goto LABEL_173;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        v86 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_172;
      }

      if (v88)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_protocol_get_local_endpoint";
        *&buf[12] = 2082;
        *&buf[14] = v87;
        _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v87);
    }

LABEL_173:
    if (v83)
    {
      free(v83);
    }

    v89 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_remote_endpoint";
    LODWORD(v218) = 12;
    v90 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v89, 16, "%{public}s called with null protocol", buf, v218);
    type[0] = 16;
    v229 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v90, type, &v229))
    {
      goto LABEL_189;
    }

    if (type[0] == 17)
    {
      v91 = __nwlog_obj();
      v92 = type[0];
      if (os_log_type_enabled(v91, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v93 = "%{public}s called with null protocol";
LABEL_188:
        _os_log_impl(&dword_181A37000, v91, v92, v93, buf, 0xCu);
      }
    }

    else if (v229 == OS_LOG_TYPE_INFO)
    {
      v94 = __nw_create_backtrace_string();
      v91 = __nwlog_obj();
      v92 = type[0];
      v95 = os_log_type_enabled(v91, type[0]);
      if (v94)
      {
        if (v95)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_get_remote_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          _os_log_impl(&dword_181A37000, v91, v92, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v94);
        goto LABEL_189;
      }

      if (v95)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v93 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_188;
      }
    }

    else
    {
      v91 = __nwlog_obj();
      v92 = type[0];
      if (os_log_type_enabled(v91, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_remote_endpoint";
        v93 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_188;
      }
    }

LABEL_189:
    if (v90)
    {
      free(v90);
    }

    v55 = 0;
    v42 = 0;
    v62 = 0;
LABEL_192:
    if (nw_endpoint_get_address_family(v55) == 30)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v232) = 0;
      if ((nw_endpoint_fillout_v6_address(v55, buf) & 1) == 0)
      {
        v181 = __nwlog_obj();
        *type = 136446210;
        *&type[4] = "nw_protocol_ipv6_add_input_handler";
        LODWORD(v214) = 12;
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v181, 16, "%{public}s called with null success", type, v214);
        v229 = OS_LOG_TYPE_ERROR;
        v228 = 0;
        if (!__nwlog_fault(v9, &v229, &v228))
        {
          goto LABEL_62;
        }

        if (v229 == OS_LOG_TYPE_FAULT)
        {
          v10 = __nwlog_obj();
          v11 = v229;
          if (!os_log_type_enabled(v10, v229))
          {
            goto LABEL_62;
          }

          *type = 136446210;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          v12 = "%{public}s called with null success";
          goto LABEL_445;
        }

        if (v228 == 1)
        {
          v178 = __nw_create_backtrace_string();
          v10 = __nwlog_obj();
          v11 = v229;
          v201 = os_log_type_enabled(v10, v229);
          if (v178)
          {
            if (v201)
            {
              goto LABEL_408;
            }

            goto LABEL_410;
          }

          if (!v201)
          {
            goto LABEL_62;
          }

          *type = 136446210;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          v12 = "%{public}s called with null success, no backtrace";
        }

        else
        {
          v10 = __nwlog_obj();
          v11 = v229;
          if (!os_log_type_enabled(v10, v229))
          {
            goto LABEL_62;
          }

          *type = 136446210;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          v12 = "%{public}s called with null success, backtrace limit exceeded";
        }

LABEL_445:
        v36 = type;
        goto LABEL_60;
      }

      *&v8[2].callbacks = *&buf[8];
    }

    if (nw_endpoint_get_address_family(v62) != 30)
    {
      goto LABEL_198;
    }

    memset(buf, 0, sizeof(buf));
    LODWORD(v232) = 0;
    if (nw_endpoint_fillout_v6_address(v62, buf))
    {
      *&v8[2].handle = *&buf[8];
LABEL_198:
      *type = 0;
      *&type[8] = 0;
      *type = *v8->flow_id;
      LODWORD(v8[3].default_input_handler) = net_flowhash(type, 0x10u, flowhash_seed) & 0xFFFF0F00;
      default_input_handler = v3->default_input_handler;
      if (default_input_handler)
      {
        v97 = default_input_handler->handle;
        v98 = v3->default_input_handler;
        if (v97 == &nw_protocol_ref_counted_handle || v97 == &nw_protocol_ref_counted_additional_handle && (v98 = *default_input_handler[1].flow_id) != 0)
        {
          v101 = v98[1].callbacks;
          if (v101)
          {
            v99 = 0;
            v98[1].callbacks = (&v101->add_input_handler + 1);
            v100 = default_input_handler->callbacks;
            if (!v100)
            {
              goto LABEL_251;
            }
          }

          else
          {
            v99 = 0;
            v100 = default_input_handler->callbacks;
            if (!v100)
            {
              goto LABEL_251;
            }
          }
        }

        else
        {
          v99 = 1;
          v100 = default_input_handler->callbacks;
          if (!v100)
          {
            goto LABEL_251;
          }
        }

        get_path = v100->get_path;
        if (get_path)
        {
          v103 = get_path(default_input_handler);
          if (v99)
          {
LABEL_221:
            if (v103)
            {
              v110 = v103;
              LODWORD(v8[3].output_handler_context) = nw_path_get_maximum_packet_size(v103);
              v111 = v110;
              mtu = _nw_path_get_mtu(v111);

              LODWORD(v8[3].handle) = mtu;
            }

            goto LABEL_223;
          }

LABEL_210:
          v104 = default_input_handler->handle;
          if (v104 == &nw_protocol_ref_counted_handle || v104 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
          {
            v105 = default_input_handler[1].callbacks;
            if (v105)
            {
              v106 = (v105 - 1);
              default_input_handler[1].callbacks = v106;
              if (!v106)
              {
                v107 = v103;
                v108 = *default_input_handler[1].flow_id;
                if (v108)
                {
                  *default_input_handler[1].flow_id = 0;
                  v108[2](v108);
                  _Block_release(v108);
                }

                if (default_input_handler[1].flow_id[8])
                {
                  v109 = *default_input_handler[1].flow_id;
                  if (v109)
                  {
                    _Block_release(v109);
                  }
                }

                free(default_input_handler);
                v103 = v107;
              }
            }
          }

          goto LABEL_221;
        }

LABEL_251:
        v126 = __nwlog_obj();
        v127 = default_input_handler->identifier->name;
        *buf = 136446722;
        *&buf[4] = "__nw_protocol_get_path";
        if (!v127)
        {
          v127 = "invalid";
        }

        *&buf[12] = 2082;
        *&buf[14] = v127;
        *&buf[22] = 2048;
        v232 = default_input_handler;
        LODWORD(v214) = 32;
        v128 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s protocol %{public}s (%p) has invalid get_path callback", buf, v214);
        v229 = OS_LOG_TYPE_ERROR;
        v228 = 0;
        v225 = v128;
        if (__nwlog_fault(v128, &v229, &v228))
        {
          if (v229 == OS_LOG_TYPE_FAULT)
          {
            v129 = __nwlog_obj();
            v130 = v229;
            if (!os_log_type_enabled(v129, v229))
            {
              goto LABEL_351;
            }

            v131 = default_input_handler->identifier->name;
            if (!v131)
            {
              v131 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v131;
            *&buf[22] = 2048;
            v232 = default_input_handler;
            v132 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
LABEL_349:
            v186 = v129;
LABEL_350:
            _os_log_impl(&dword_181A37000, v186, v130, v132, buf, 0x20u);
            goto LABEL_351;
          }

          if (v228 != 1)
          {
            v129 = __nwlog_obj();
            v130 = v229;
            if (!os_log_type_enabled(v129, v229))
            {
              goto LABEL_351;
            }

            v185 = default_input_handler->identifier->name;
            if (!v185)
            {
              v185 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v185;
            *&buf[22] = 2048;
            v232 = default_input_handler;
            v132 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
            goto LABEL_349;
          }

          v161 = __nw_create_backtrace_string();
          v162 = __nwlog_obj();
          v130 = v229;
          loga = v162;
          v163 = os_log_type_enabled(v162, v229);
          if (v161)
          {
            if (v163)
            {
              v164 = default_input_handler->identifier->name;
              if (!v164)
              {
                v164 = "invalid";
              }

              *buf = 136446978;
              *&buf[4] = "__nw_protocol_get_path";
              *&buf[12] = 2082;
              *&buf[14] = v164;
              *&buf[22] = 2048;
              v232 = default_input_handler;
              v233 = 2082;
              v234 = v161;
              _os_log_impl(&dword_181A37000, loga, v130, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v161);
          }

          else if (v163)
          {
            v203 = default_input_handler->identifier->name;
            if (!v203)
            {
              v203 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v203;
            *&buf[22] = 2048;
            v232 = default_input_handler;
            v132 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
            v186 = loga;
            goto LABEL_350;
          }
        }

LABEL_351:
        if (v225)
        {
          free(v225);
        }

        v103 = 0;
        if (v99)
        {
          goto LABEL_221;
        }

        goto LABEL_210;
      }

      v207 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_protocol_get_path";
      LODWORD(v214) = 12;
      v208 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v207, 16, "%{public}s called with null protocol", buf, v214);
      v229 = OS_LOG_TYPE_ERROR;
      v228 = 0;
      if (__nwlog_fault(v208, &v229, &v228))
      {
        if (v229 == OS_LOG_TYPE_FAULT)
        {
          v209 = __nwlog_obj();
          v210 = v229;
          if (!os_log_type_enabled(v209, v229))
          {
            goto LABEL_460;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_path";
          v211 = "%{public}s called with null protocol";
          goto LABEL_459;
        }

        if (v228 != 1)
        {
          v209 = __nwlog_obj();
          v210 = v229;
          if (!os_log_type_enabled(v209, v229))
          {
            goto LABEL_460;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_path";
          v211 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_459;
        }

        v212 = __nw_create_backtrace_string();
        v209 = __nwlog_obj();
        v210 = v229;
        v213 = os_log_type_enabled(v209, v229);
        if (v212)
        {
          if (v213)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_path";
            *&buf[12] = 2082;
            *&buf[14] = v212;
            _os_log_impl(&dword_181A37000, v209, v210, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v212);
          goto LABEL_460;
        }

        if (v213)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_path";
          v211 = "%{public}s called with null protocol, no backtrace";
LABEL_459:
          _os_log_impl(&dword_181A37000, v209, v210, v211, buf, 0xCu);
        }
      }

LABEL_460:
      if (v208)
      {
        free(v208);
      }

LABEL_223:
      v113 = nw_parameters_copy_protocol_options_legacy(v42, v3);
      if (v113)
      {
        v114 = v113;
        _nw_protocol_options_get_log_id_str(v114, &v8[4]);

        hop_limit = _nw_ip_options_get_hop_limit();
        if (hop_limit)
        {
          v116 = hop_limit;
        }

        else
        {
          v116 = 64;
        }

        BYTE5(v8[3].output_handler_context) = v116;
        if (_nw_ip_options_get_use_minimum_mtu())
        {
          v117 = 2;
        }

        else
        {
          v117 = 0;
        }

        HIBYTE(v8[3].output_handler_context) = HIBYTE(v8[3].output_handler_context) & 0xFD | v117;
        if (_nw_ip_options_get_calculate_receive_time())
        {
          v118 = 4;
        }

        else
        {
          v118 = 0;
        }

        HIBYTE(v8[3].output_handler_context) = HIBYTE(v8[3].output_handler_context) & 0xFB | v118;
        if (_nw_ip_options_get_receive_hop_limit())
        {
          v119 = 16;
        }

        else
        {
          v119 = 0;
        }

        HIBYTE(v8[3].output_handler_context) = HIBYTE(v8[3].output_handler_context) & 0xEF | v119;
        BYTE6(v8[3].output_handler_context) = nw_ip_options_get_dscp_value(v114);
        os_release(v114);
      }

      else
      {
        BYTE5(v8[3].output_handler_context) = 64;
      }

      v39 = 1;
      nw_protocol_ip_register_segmentation_offload_notification(v3, 1);
      if (v6)
      {
        return v39;
      }

      goto LABEL_239;
    }

    v184 = __nwlog_obj();
    *type = 136446210;
    *&type[4] = "nw_protocol_ipv6_add_input_handler";
    LODWORD(v214) = 12;
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v184, 16, "%{public}s called with null success", type, v214);
    v229 = OS_LOG_TYPE_ERROR;
    v228 = 0;
    if (!__nwlog_fault(v9, &v229, &v228))
    {
      goto LABEL_62;
    }

    if (v229 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v229;
      if (!os_log_type_enabled(v10, v229))
      {
        goto LABEL_62;
      }

      *type = 136446210;
      *&type[4] = "nw_protocol_ipv6_add_input_handler";
      v12 = "%{public}s called with null success";
      goto LABEL_445;
    }

    if (v228 == 1)
    {
      v178 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = v229;
      v202 = os_log_type_enabled(v10, v229);
      if (v178)
      {
        if (v202)
        {
LABEL_408:
          *type = 136446466;
          *&type[4] = "nw_protocol_ipv6_add_input_handler";
          *&type[12] = 2082;
          *&type[14] = v178;
          v180 = "%{public}s called with null success, dumping backtrace:%{public}s";
          v183 = type;
          goto LABEL_409;
        }

LABEL_410:
        free(v178);
        goto LABEL_62;
      }

      if (!v202)
      {
        goto LABEL_62;
      }

      *type = 136446210;
      *&type[4] = "nw_protocol_ipv6_add_input_handler";
      v12 = "%{public}s called with null success, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = v229;
      if (!os_log_type_enabled(v10, v229))
      {
        goto LABEL_62;
      }

      *type = 136446210;
      *&type[4] = "nw_protocol_ipv6_add_input_handler";
      v12 = "%{public}s called with null success, backtrace limit exceeded";
    }

    goto LABEL_445;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ipv6_add_input_handler";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
  type[0] = 16;
  v229 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v9, type, &v229))
  {
    goto LABEL_62;
  }

  if (type[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v12 = "%{public}s called with null ipv6";
    goto LABEL_59;
  }

  if (v229 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_62;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v12 = "%{public}s called with null ipv6, backtrace limit exceeded";
    goto LABEL_59;
  }

  v23 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  v25 = type[0];
  v26 = os_log_type_enabled(gLogObj, type[0]);
  if (v23)
  {
    if (v26)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ipv6_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v23;
      _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v23);
  }

  else if (v26)
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ipv6_add_input_handler";
    v12 = "%{public}s called with null ipv6, no backtrace";
    v36 = buf;
    v37 = v24;
    v38 = v25;
    goto LABEL_61;
  }

LABEL_62:
  if (v9)
  {
    free(v9);
  }

  v39 = 0;
  if ((v6 & 1) == 0)
  {
LABEL_239:
    v120 = v3->handle;
    if (v120 == &nw_protocol_ref_counted_handle || v120 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v121 = v3[1].callbacks;
      if (v121)
      {
        v122 = (v121 - 1);
        v3[1].callbacks = v122;
        if (!v122)
        {
          v123 = *v3[1].flow_id;
          if (v123)
          {
            *v3[1].flow_id = 0;
            v123[2](v123);
            _Block_release(v123);
          }

          if (v3[1].flow_id[8])
          {
            v124 = *v3[1].flow_id;
            if (v124)
            {
              _Block_release(v124);
            }
          }

          free(v3);
        }
      }
    }
  }

  return v39;
}

uint64_t ___ZL54nw_connection_start_candidate_manager_if_needed_lockedP24NWConcrete_nw_connection_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_resolution_report_copy_successful_endpoint(v3);
  v5 = *(*(a1 + 32) + 16);
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 448);
      v11 = 136446722;
      v12 = "nw_connection_start_candidate_manager_if_needed_locked_block_invoke";
      v13 = 1024;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Found endpoint %@", &v11, 0x1Cu);
    }
  }

  type = nw_endpoint_get_type(v4);
  if (type == nw_endpoint_type_address)
  {
    v9 = 48;
    goto LABEL_12;
  }

  if (type == nw_endpoint_type_bonjour_service)
  {
    v9 = 40;
LABEL_12:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v4);
  }

  return 1;
}

nw_endpoint_t nw_resolution_report_copy_successful_endpoint(nw_resolution_report_t resolution_report)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = resolution_report;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4].isa;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_resolution_report_copy_successful_endpoint";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null resolution_report", buf, 12);

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
        v16 = "nw_resolution_report_copy_successful_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v16 = "nw_resolution_report_copy_successful_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_successful_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_resolution_report_copy_successful_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

void NWConnection.requestEstablishmentReport(queue:completion:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181F1C974;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181AA4EBC;
  v10[3] = &block_descriptor_179;
  v9 = _Block_copy(v10);

  nw_connection_access_establishment_report(v7, a1, v9);
  _Block_release(v9);
}

void nw_connection_access_establishment_report(nw_connection_t connection, dispatch_queue_t queue, nw_establishment_report_access_block_t access_block)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = connection;
  v6 = queue;
  v7 = access_block;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_access_establishment_report";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v35 = "nw_connection_access_establishment_report";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v10)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v10);
        goto LABEL_5;
      }

      if (v19)
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v6)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_access_establishment_report";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null queue", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null queue", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null queue, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v35 = "nw_connection_access_establishment_report";
      v36 = 2082;
      v37 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_access_establishment_report";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null access_block", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null access_block", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v24)
      {
        *buf = 136446210;
        v35 = "nw_connection_access_establishment_report";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v35 = "nw_connection_access_establishment_report";
      v36 = 2082;
      v37 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v20);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __nw_connection_access_establishment_report_block_invoke;
  v28[3] = &unk_1E6A39AE8;
  v29 = v5;
  v30 = v6;
  v31 = v8;
  nw_connection_async_if_needed(v29, v28);

LABEL_5:
}

void __nw_connection_access_establishment_report_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[52];
  if (!v3)
  {
    nw_connection_fillout_establishment_report_on_nw_queue(v2, 0);
    v3 = *(*(a1 + 32) + 416);
  }

  v4 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_connection_access_establishment_report_block_invoke_2;
  v8[3] = &unk_1E6A3D710;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __nw_connection_copy_attempted_endpoint_array_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    v3 = _nw_array_copy(v2);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

id nw_connection_copy_attempted_endpoint_array(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__83595;
    v20 = __Block_byref_object_dispose__83596;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_copy_attempted_endpoint_array_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_attempted_endpoint_array_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null connection", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_attempted_endpoint_array";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

uint64_t __nw_parameters_copy_prohibited_interface_types_block_invoke(uint64_t a1, uint64_t value)
{
  v2 = value;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = xpc_array_create(0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_array_set_uint64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  return 1;
}

uint64_t nw_parameters_are_equivalent_for_path_evaluation(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_parameters_are_equivalent_for_path_evaluation(v3, v4);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_are_equivalent_for_path_evaluation";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null right", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null right";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null right, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
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
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null right, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_parameters_are_equivalent_for_path_evaluation";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null right, dumping backtrace:%{public}s";
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
    v21 = "nw_parameters_are_equivalent_for_path_evaluation";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null left", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null left";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null left, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
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
          v21 = "nw_parameters_are_equivalent_for_path_evaluation";
          v12 = "%{public}s called with null left, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_parameters_are_equivalent_for_path_evaluation";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null left, dumping backtrace:%{public}s";
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