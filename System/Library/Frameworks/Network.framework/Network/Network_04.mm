uint64_t sub_181AA62C0(void *a1)
{
  v1 = a1;
  sub_181AA5FF0(&v5);

  v3 = v5;
  v2 = v6;
  if (v5)
  {

    swift_unknownObjectRetain();
    sub_181AB612C(v3, v2);
    swift_unknownObjectRetain();
    sub_181AB612C(v3, v2);
  }

  else
  {
    sub_181AB612C(0, v6);
    return 0;
  }

  return v2;
}

BOOL nw_path_has_ipv4(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_ipv4(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_ipv4";
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
        v16 = "nw_path_has_ipv4";
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
          v16 = "nw_path_has_ipv4";
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
        v16 = "nw_path_has_ipv4";
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
        v16 = "nw_path_has_ipv4";
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

BOOL nw_path_has_ipv6(nw_path_t path)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = path;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_ipv6(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_ipv6";
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
        v16 = "nw_path_has_ipv6";
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
          v16 = "nw_path_has_ipv6";
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
        v16 = "nw_path_has_ipv6";
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
        v16 = "nw_path_has_ipv6";
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

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

char *_nw_path_has_ipv4(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 6) & 1);
  }

  return result;
}

char *_nw_path_has_ipv6(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 7) & 1);
  }

  return result;
}

uint64_t sub_181AA69D8(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386E0, &unk_182AE4B70);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1820E59A8(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386E0, &unk_182AE4B70);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181AB76EC(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386E0, &unk_182AE4B70);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_181F479D0(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

void nw_resolver_config_set_generation(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[23] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_config_set_generation";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_resolver_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_resolver_config_set_generation";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_resolver_config_set_identifier(void *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    *(v3 + 24) = *a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolver_config_set_identifier";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null config", buf, 12);

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
        v15 = "nw_resolver_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_resolver_config_set_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolver_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_endpoint_copy_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_interface";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null endpoint", buf, 12);

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
        v16 = "nw_endpoint_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_copy_interface";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_interface";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

NWConcrete_nw_resolver_config *nw_path_bridge_config_agent_dns_copy_resolver_config(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = xpc_create_from_plist();
  v2 = v1;
  if (v1)
  {
    v3 = nw_resolver_config_create_with_dictionary(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NWConcrete_nw_resolver_config *nw_resolver_config_create_with_dictionary(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_resolver_config_create_with_dictionary";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null dictionary", buf, 12);

    v36[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v36, &type))
    {
      goto LABEL_62;
    }

    if (v36[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null dictionary", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v28 = v36[0];
      v29 = os_log_type_enabled(v23, v36[0]);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v40 = "nw_resolver_config_create_with_dictionary";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v22)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      if (v29)
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v28, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v33 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v33, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_61;
  }

  if (object_getClass(v1) != MEMORY[0x1E69E9E80])
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_resolver_config_create_with_dictionary";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 12);

    v36[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v22, v36, &type))
    {
      goto LABEL_62;
    }

    if (v36[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v26 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v26, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v30 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v31 = v36[0];
      v32 = os_log_type_enabled(v23, v36[0]);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v40 = "nw_resolver_config_create_with_dictionary";
          v41 = 2082;
          v42 = v30;
          _os_log_impl(&dword_181A37000, v23, v31, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
LABEL_62:
        if (!v22)
        {
LABEL_64:
          v3 = 0;
          goto LABEL_28;
        }

LABEL_63:
        free(v22);
        goto LABEL_64;
      }

      if (v32)
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v31, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      v34 = v36[0];
      if (os_log_type_enabled(v23, v36[0]))
      {
        *buf = 136446210;
        v40 = "nw_resolver_config_create_with_dictionary";
        _os_log_impl(&dword_181A37000, v23, v34, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_61:

    goto LABEL_62;
  }

  v3 = objc_alloc_init(NWConcrete_nw_resolver_config);
  *v36 = v3;
  v37 = -1;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v5;
    m_obj = v5->dictionary.m_obj;
    if ((*(&v5->dictionary + 8) & 1) != 0 && m_obj)
    {
      v5->dictionary.m_obj = 0;

      m_obj = v6->dictionary.m_obj;
    }

    v6->dictionary.m_obj = 0;

    v8 = v6->dictionary.m_obj;
    v6->dictionary.m_obj = v4;

    *(&v6->dictionary + 8) |= 1u;
    v9 = v6->dictionary.m_obj;
    v10 = v6;
    string = xpc_dictionary_get_string(v9, "Identifier");

    if (string)
    {
      uuid_parse(string, v10 + 24);
    }

    goto LABEL_28;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v40 = "nw_resolver_config_create_with_dictionary";
  v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s [nw_resolver_config init] failed", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v13, &type, &v35))
  {
    goto LABEL_26;
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
      v40 = "nw_resolver_config_create_with_dictionary";
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s [nw_resolver_config init] failed", buf, 0xCu);
    }

LABEL_25:

LABEL_26:
    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_27:
    free(v13);
    goto LABEL_28;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v14, type))
    {
      *buf = 136446210;
      v40 = "nw_resolver_config_create_with_dictionary";
      _os_log_impl(&dword_181A37000, v14, v19, "%{public}s [nw_resolver_config init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v14, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v40 = "nw_resolver_config_create_with_dictionary";
      _os_log_impl(&dword_181A37000, v14, v17, "%{public}s [nw_resolver_config init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_25;
  }

  if (v18)
  {
    *buf = 136446466;
    v40 = "nw_resolver_config_create_with_dictionary";
    v41 = 2082;
    v42 = v16;
    _os_log_impl(&dword_181A37000, v14, v17, "%{public}s [nw_resolver_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v13)
  {
    goto LABEL_27;
  }

LABEL_28:

  return v3;
}

void sub_181AA7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  nw::retained_ptr<void({block_pointer} {__strong})(void)>::~retained_ptr(va);

  _Unwind_Resume(a1);
}

void nw_resolver_config_set_provider_description(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_set_provider_description_block_invoke;
    v14[3] = &unk_1E6A3AC58;
    v5 = v3;
    v15 = v5;
    v16 = a2;
    os_unfair_lock_lock(v5 + 22);
    __nw_resolver_config_set_provider_description_block_invoke(v14);
    os_unfair_lock_unlock(v5 + 22);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_resolver_config_set_provider_description";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null config", buf, 12);

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_resolver_config_set_provider_description";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_resolver_config_set_provider_description";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_resolver_config_set_provider_description";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_resolver_config_set_provider_description";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void *sub_181AA8240(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return swift_unknownObjectRetain();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_181AA82BC@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = result;
  if (a5 == -1)
  {
    v12 = swift_unknownObjectRetain();
    v13 = nw_protocol_definition_copy_swift_identifier(v12);
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRelease();
      v15 = *(v14 + 16);
      LOBYTE(v10) = *(v14 + 17);
      v16 = *(v14 + 3);
      v17 = *(v14 + 4);
      v18 = *(v14 + 40);
      sub_181F49A24(v16, v17, v18);

      a4 = v17;
      a3 = v16;
      LOBYTE(a2) = v15;
      v25 = v18;
      goto LABEL_6;
    }

    identifier = nw_protocol_definition_get_identifier(v8);
    swift_unknownObjectRelease();
    result = sub_181AAC800(identifier, v21);
    LOBYTE(a2) = v21[0];
    LOBYTE(v10) = v21[1];
    a3 = v22;
    a4 = v23;
    v11 = v24;
  }

  else
  {
    v10 = a2 >> 8;
    v11 = a5 & 1;
  }

  v25 = v11;
LABEL_6:
  v21[0] = 1;
  v19 = v25;
  *a7 = a2;
  *(a7 + 1) = v10;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = v19;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 32) = a6;
  *(a7 + 56) = 1;
  *(a7 + 64) = v8;
  return result;
}

uint64_t sub_181AA83E4(uint64_t a1)
{
  sub_181AA847C(a1);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_181AA8428(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181AA847C(uint64_t a1)
{
  v2 = *(a1 + qword_1ED411A88);

  if (v2 != 1)
  {
    swift_beginAccess();
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v73 = *(a1 + 17);
    v74 = *(a1 + 16);
    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v8;
    v75 = v8;
    sub_181F49A24(v7, v6, v8);
    if (qword_1ED410100 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED411CF8;
    v10 = unk_1ED411D00;
    v11 = byte_1ED411D08;
    v76 = word_1ED411CF0;
    v77 = qword_1ED411CF8;
    v78 = unk_1ED411D00;
    v79 = byte_1ED411D08;
    v12 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v13 = v77;
    v14 = v78;
    v15 = v79;
    sub_181F49A24(v9, v10, v11);
    sub_181F48350(v13, v14, v15);
    if (v12)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &qword_1ED40FD40;
      v4 = &qword_1EA83A3A0;
      v5 = &qword_182AE4BC0;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED4100F8 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED411CD8;
    v17 = unk_1ED411CE0;
    v18 = byte_1ED411CE8;
    v76 = word_1ED411CD0;
    v77 = qword_1ED411CD8;
    v78 = unk_1ED411CE0;
    v79 = byte_1ED411CE8;
    v19 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v20 = v77;
    v21 = v78;
    v22 = v79;
    sub_181F49A24(v16, v17, v18);
    sub_181F48350(v20, v21, v22);
    if (v19)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &qword_1ED40F830;
      v4 = &qword_1EA838AB0;
      v5 = &qword_182AE6A10;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED4100E8 != -1)
    {
      swift_once();
    }

    v23 = qword_1ED411CB8;
    v24 = qword_1ED411CC0;
    v25 = byte_1ED411CC8;
    v76 = word_1ED411CB0;
    v77 = qword_1ED411CB8;
    v78 = qword_1ED411CC0;
    v79 = byte_1ED411CC8;
    v26 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v27 = v77;
    v28 = v78;
    v29 = v79;
    sub_181F49A24(v23, v24, v25);
    sub_181F48350(v27, v28, v29);
    if (v26)
    {
      sub_181F48350(v7, v6, v75);
      v3 = qword_1ED40FB50;
      v4 = &unk_1EA838750;
      v5 = &unk_182AE4BD0;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED410110 != -1)
    {
      swift_once();
    }

    v30 = qword_1ED410150;
    v31 = unk_1ED410158;
    v32 = byte_1ED410160;
    v76 = word_1ED410148;
    v77 = qword_1ED410150;
    v78 = unk_1ED410158;
    v79 = byte_1ED410160;
    v33 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v34 = v77;
    v35 = v78;
    v36 = v79;
    sub_181F49A24(v30, v31, v32);
    sub_181F48350(v34, v35, v36);
    if (v33)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &qword_1ED40F850;
      v4 = &unk_1EA838710;
      v5 = &qword_182AE4BA0;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED40FF48 != -1)
    {
      swift_once();
    }

    v37 = qword_1ED411C88;
    v38 = unk_1ED411C90;
    v39 = byte_1ED411C98;
    v76 = word_1ED411C80;
    v77 = qword_1ED411C88;
    v78 = unk_1ED411C90;
    v79 = byte_1ED411C98;
    v40 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v41 = v77;
    v42 = v78;
    v43 = v79;
    sub_181F49A24(v37, v38, v39);
    sub_181F48350(v41, v42, v43);
    if (v40)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &unk_1EA838E90;
      v4 = &unk_1EA838DF0;
      v5 = &unk_182AE7590;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v44 = qword_1ED411D48;
    v45 = unk_1ED411D50;
    v46 = byte_1ED411D58;
    v76 = word_1ED411D40;
    v77 = qword_1ED411D48;
    v78 = unk_1ED411D50;
    v79 = byte_1ED411D58;
    v47 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v48 = v77;
    v49 = v78;
    v50 = v79;
    sub_181F49A24(v44, v45, v46);
    sub_181F48350(v48, v49, v50);
    if (v47)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &qword_1ED410260;
      v4 = &qword_1EA838760;
      v5 = &qword_182AE4BE8;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED40FF60 != -1)
    {
      swift_once();
    }

    v51 = qword_1ED411C30;
    v52 = unk_1ED411C38;
    v53 = byte_1ED411C40;
    v76 = word_1ED411C28;
    v77 = qword_1ED411C30;
    v78 = unk_1ED411C38;
    v79 = byte_1ED411C40;
    v54 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v55 = v77;
    v56 = v78;
    v57 = v79;
    sub_181F49A24(v51, v52, v53);
    sub_181F48350(v55, v56, v57);
    if (v54)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &unk_1ED40FF50;
      v4 = &unk_1EA838DE0;
      v5 = &unk_182AE6F00;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED40FDA0 != -1)
    {
      swift_once();
    }

    v58 = qword_1ED40FDB0;
    v59 = unk_1ED40FDB8;
    v60 = byte_1ED40FDC0;
    v76 = word_1ED40FDA8;
    v77 = qword_1ED40FDB0;
    v78 = unk_1ED40FDB8;
    v79 = byte_1ED40FDC0;
    v61 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v62 = v77;
    v63 = v78;
    v64 = v79;
    sub_181F49A24(v58, v59, v60);
    sub_181F48350(v62, v63, v64);
    if (v61)
    {
      sub_181F48350(v7, v6, v75);
      v3 = &unk_1EA838E88;
      v4 = &unk_1EA839C50;
      v5 = &unk_182AF06C0;
      goto LABEL_39;
    }

    v80 = v74;
    v81 = v73;
    v82 = v7;
    v83 = v6;
    v84 = v75;
    if (qword_1ED40FCD8 != -1)
    {
      swift_once();
    }

    v65 = qword_1ED411AF0;
    v66 = unk_1ED411AF8;
    v67 = byte_1ED411B00;
    v76 = word_1ED411AE8;
    v77 = qword_1ED411AF0;
    v78 = unk_1ED411AF8;
    v79 = byte_1ED411B00;
    v68 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v80, &v76);
    v69 = v77;
    v70 = v78;
    v71 = v79;
    sub_181F49A24(v65, v66, v67);
    sub_181F48350(v69, v70, v71);
    sub_181F48350(v7, v6, v75);
    if (v68)
    {
      v3 = &unk_1EA838AE0;
      v4 = &unk_1EA838DD0;
      v5 = &qword_182AE4BE0;
      goto LABEL_39;
    }
  }

  v3 = &qword_1ED40FE08;
  v4 = &unk_1EA838DB8;
  v5 = &unk_182AE8EA0;
LABEL_39:
  sub_181AA8428(v3, v4, v5);
  return a1;
}

BOOL nw_protocol_definition_is_equal_unsafe(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_is_equal_unsafe";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null definition1", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
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
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition1";
LABEL_52:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }

LABEL_53:

LABEL_54:
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
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition1, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
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
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition1, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v16)
    {
      *buf = 136446466;
      v22 = "nw_protocol_definition_is_equal_unsafe";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null definition1, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
    }

LABEL_43:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_is_equal_unsafe";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null definition2", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v10, &type, &v19))
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
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition2";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v19 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition2, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
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
        v22 = "nw_protocol_definition_is_equal_unsafe";
        v13 = "%{public}s called with null definition2, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      v22 = "nw_protocol_definition_is_equal_unsafe";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null definition2, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ((*(a1 + 192) & 0x40) != 0 || (*(a2 + 192) & 0x40) != 0)
  {
    return a1 == a2;
  }

  else
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (uuid_compare((a1 + 48), (a2 + 48)))
    {
      return 0;
    }

    return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }
}

uint64_t sub_181AA90F0(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CProtocol.COptions();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = a1;
    v3 = swift_unknownObjectRetain();
    options_allocator = nw_protocol_definition_get_options_allocator(v3);
    if (options_allocator)
    {
      *(v2 + 16) = options_allocator(a1);
    }
  }

  else
  {
    v5 = nw_protocol_copy_tls_definition();
    type metadata accessor for CProtocol.COptions();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = v5;
    v6 = swift_unknownObjectRetain();
    v7 = nw_protocol_definition_get_options_allocator(v6);
    if (v7)
    {
      v8 = v7(v5);
      swift_unknownObjectRelease();
      *(v2 + 16) = v8;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v2;
}

uint64_t sub_181AA91BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t nw_protocol_definition_get_options_allocator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[11];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_allocator";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null definition", buf, 12);

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
        v15 = "nw_protocol_definition_get_options_allocator";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_options_allocator";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_allocator";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_allocator";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_protocol_options_get_handle_0(uint64_t a1)
{
  v2 = *(a1 + qword_1ED411A88);

  if (v2 == 1)
  {
    v3 = *(*a1 + 128);
    swift_beginAccess();
    v4 = *(a1 + v3);

    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0, &qword_182AE4BC0);
    v5 = sub_181AA8420();

    if (!v5)
    {
      return 0;
    }

    v6 = *(*v5 + 128);
    swift_beginAccess();
    v4 = *(v5 + v6);

    if (!v4)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);

  return v7;
}

uint64_t sub_181AA964C(unsigned int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = *(*v5 + 128);
  *(v5 + v14) = 0;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  *(v5 + v14) = a5;
  return v5;
}

uint64_t nw_protocol_options_access_handle(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_options_access_handle";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null options";
LABEL_31:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }

LABEL_32:

LABEL_33:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_35;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null options, backtrace limit exceeded";
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
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null options, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v15)
    {
      *buf = 136446466;
      v22 = "nw_protocol_options_access_handle";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
    }

LABEL_22:

    free(backtrace_string);
    goto LABEL_33;
  }

  if (!v4)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_options_access_handle";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null access_block", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null access_block";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null access_block, backtrace limit exceeded";
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
        v22 = "nw_protocol_options_access_handle";
        v12 = "%{public}s called with null access_block, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_options_access_handle";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null access_block, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  handle = _nw_protocol_options_get_handle(v3);
  if (!handle)
  {
LABEL_35:
    v7 = 0;
    goto LABEL_36;
  }

  v7 = v5[2](v5, handle);
LABEL_36:

  return v7;
}

id nw_parameters_create_quic_connection_with_tls_fallback(void *a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v7)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null configure_security", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_security, backtrace limit exceeded";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v30 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v30)
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_security, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v30)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v40 = 2082;
      v41 = backtrace_string;
      v31 = "%{public}s called with null configure_security, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v24 = "%{public}s called with null configure_security";
LABEL_76:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_77;
  }

  if (!v10)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null configure_tcp_fallback", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_tcp_fallback, backtrace limit exceeded";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v32 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v32)
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_tcp_fallback, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v32)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v40 = 2082;
      v41 = backtrace_string;
      v31 = "%{public}s called with null configure_tcp_fallback, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v24 = "%{public}s called with null configure_tcp_fallback";
    goto LABEL_76;
  }

  if (!v8)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null configure_quic_connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v33 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
          v24 = "%{public}s called with null configure_quic_connection, no backtrace";
          goto LABEL_76;
        }

        goto LABEL_77;
      }

      if (!v33)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v40 = 2082;
      v41 = backtrace_string;
      v31 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v24 = "%{public}s called with null configure_quic_connection";
    goto LABEL_76;
  }

  if (v8 == &__block_literal_global_19409)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable))", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v21, &type, &v36))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
      v24 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable))";
      goto LABEL_76;
    }

    if (v36 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v34 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (!v34)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v40 = 2082;
    v41 = backtrace_string;
    v31 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v22, v23, v31, buf, 0x16u);
LABEL_55:

    free(backtrace_string);
    goto LABEL_78;
  }

  if (v10 != &__block_literal_global_19409)
  {
    v12 = _Block_copy(v7);
    v13 = v12;
    if (v7 == &__block_literal_global_5)
    {

      v13 = 0;
    }

    v14 = _Block_copy(v8);
    v15 = v14;
    if (v8 == &__block_literal_global_2)
    {

      v15 = 0;
    }

    v16 = _Block_copy(v11);
    v17 = v16;
    if (v11 == &__block_literal_global_2)
    {

      v17 = 0;
    }

    quic_connection_with_tls_fallback = _nw_parameters_create_quic_connection_with_tls_fallback(v13, v15, v9, v17);

    goto LABEL_13;
  }

  v28 = __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
  v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable))", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v21, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_76;
      }

LABEL_77:

      goto LABEL_78;
    }

    if (v36 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v35 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v35)
      {
        *buf = 136446210;
        v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
        v24 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (!v35)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v39 = "nw_parameters_create_quic_connection_with_tls_fallback";
    v40 = 2082;
    v41 = backtrace_string;
    v31 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_54;
  }

LABEL_78:
  if (v21)
  {
    free(v21);
  }

  quic_connection_with_tls_fallback = 0;
LABEL_13:

  return quic_connection_with_tls_fallback;
}

id _nw_parameters_create_quic_connection_with_tls_fallback(const void *a1, const void *a2, void *a3, const void *a4)
{
  v7 = _Block_copy(a1);
  v8 = _Block_copy(a2);
  v9 = _Block_copy(a4);
  if (v7)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v7 = sub_181AACB1C;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v8 = sub_181AACB1C;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v9 = sub_181AACB1C;
LABEL_8:
  v13 = sub_181AAA7B8(v7, v10, v8, v11, a3, v9, v12);
  sub_181A554F4(v9, v12);
  sub_181A554F4(v8, v11);
  sub_181A554F4(v7, v10);
  return v13;
}

id sub_181AAA7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v14 = a5;
  }

  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;

    v23 = sub_181AA9530;
    v24 = a2;
    v25 = a5;
    if (a3)
    {
LABEL_5:
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;

      v17 = sub_181AA9530;
      goto LABEL_8;
    }
  }

  else
  {
    v23 = 0;
    v15 = 0;
    v24 = a2;
    v25 = a5;
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
  v16 = 0;
LABEL_8:
  v18 = a4;
  v19 = a6;
  if (a6)
  {
    a6 = swift_allocObject();
    *(a6 + 16) = v19;
    *(a6 + 24) = a7;

    v20 = sub_181AA9530;
  }

  else
  {
    v20 = 0;
  }

  sub_181AA39C0(a1, v24);
  sub_181AA39C0(a3, v18);
  sub_181AA39C0(v19, a7);
  sub_181AAA9A8(v23, v15, v17, v16, v25, v20, a6, __src);
  v21 = sub_1821F2D80();
  sub_181A554F4(v23, v15);
  sub_181A554F4(v17, v16);
  sub_181A554F4(v20, a6);

  memcpy(__dst, __src, 0x188uLL);
  sub_181F48214(__dst);
  return v21;
}

void *sub_181AAA9A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, double)@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *&__dst[8] = 0;
  *__dst = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  v11 = v77;
  v12 = v78;
  *&__dst[360] = v79;
  *&__dst[376] = v80;
  v92[8] = *&__dst[256];
  v92[9] = *&__dst[272];
  v92[10] = *&__dst[288];
  v92[4] = *&__dst[192];
  v92[5] = *&__dst[208];
  v92[6] = *&__dst[224];
  v92[7] = *&__dst[240];
  v92[0] = *&__dst[128];
  v92[1] = *&__dst[144];
  v92[2] = *&__dst[160];
  v92[3] = *&__dst[176];
  sub_181A41E7C(v92);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v11;
  *&__dst[352] = v12;

  if (nw_protocol_copy_tls_definition())
  {
    v13 = swift_unknownObjectRetain();
    v14 = v13;
  }

  else
  {
    v13 = nw_protocol_copy_tls_definition();
    v14 = 0;
  }

  sub_181AA82B4(__src, v13, 0, 0, 0, 255, v14);
  v74[0] = *__src;
  v74[1] = *&__src[16];
  v74[2] = *&__src[32];
  v74[3] = *&__src[48];
  v75 = *&__src[64];
  v15 = *&__src[32];
  sub_181F49A24(*&__src[8], *&__src[16], __src[24]);
  sub_181AA90F0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0, &qword_182AE4BC0);
  swift_allocObject();
  v16 = sub_181AA94EC();
  sub_181F49A88(v74, &unk_1EA838740, &qword_182AE4BC8);
  if (a1)
  {

    a1(v16);
    sub_181A554F4(a1, a2);
  }

  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v17 = *(&xmmword_1ED411BF0 + 1);
  v18 = unk_1ED411C00;
  v19 = byte_1ED411C08;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions(0);
  swift_allocObject();
  sub_181F49A24(v17, v18, v19);
  sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  swift_allocObject();
  v20 = sub_181AA94EC();
  v21 = *(*v20 + 184);
  swift_beginAccess();
  *(v20 + v21) = 1;
  v22 = *(*v20 + 128);
  swift_beginAccess();
  v23 = *(v20 + v22);
  if (v23)
  {
    v24 = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0, &qword_182AE4BC0);
    *(v23 + 112) = v16;
    *(v23 + 120) = v24;

    swift_unknownObjectRelease();
  }

  if (a3)
  {

    a3(v20);
    sub_181A554F4(a3, a4);
  }

  v53 = a4;
  v54 = a1;
  if (qword_1ED410038 != -1)
  {
    swift_once();
  }

  v25 = *(&xmmword_1ED411C48 + 1);
  v26 = unk_1ED411C58;
  v27 = byte_1ED411C60;
  memset(v89, 0, sizeof(v89));
  v90 = 0;
  v91 = 0x100000201;
  v28 = xmmword_1ED411C48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
  swift_allocObject();
  v29 = sub_181AAC92C(v28, v25, v26, v27, v89);
  sub_181F49A24(v25, v26, v27);
  if (a6)
  {
    v30 = sub_181AA39C0(a6, a7);
    a6(v29, v30);
    sub_181A554F4(a6, a7);
  }

  v31 = *(v11 + 32);
  v32 = *(v11 + 40);
  *(v11 + 32) = v20;
  *(v11 + 40) = 0x6000000000000000;

  sub_181A5301C(v31, v32);

  *&v70 = 0;
  DWORD2(v70) = 0;
  BYTE12(v70) = 1;
  *(&v70 + 13) = 6;
  *&v71 = 0;
  BYTE8(v71) = 0;
  v33 = MEMORY[0x1E69E7CC0];
  *&v72 = MEMORY[0x1E69E7CC0];
  *(&v72 + 1) = MEMORY[0x1E69E7CC0];
  v73 = 2;

  sub_181B28748(v34, 2, &v70, qword_1ED40FB50, &unk_1EA838750, &unk_182AE4BD0, 0x6000000000000000);

  BYTE8(v71) = 2;
  v73 = 18;
  *&v66 = 0;
  DWORD2(v66) = 0;
  BYTE12(v66) = 1;
  *(&v66 + 13) = 6;
  BYTE8(v67) = 0;
  *&v68 = v33;
  *(&v68 + 1) = v33;
  v69 = 0;
  *&v67 = a5;

  sub_181B285A8(v35, 3, &v66);

  sub_181B28748(v36, 2, &v66, &unk_1ED40FF50, &unk_1EA838DE0, &unk_182AE6F00, 0x2000000000000000);

  v69 = 16;
  v37 = *sub_182AD2388();

  *&__dst[352] = v37;
  v87[0] = v70;
  v87[1] = v71;
  v87[2] = v72;
  v88 = v73;
  v39 = *(v37 + 24);
  v40 = v39 + 1;
  if (__OFADD__(v39, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v37 + 16) < v40 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B29AC4(isUniquelyReferenced_nonNull_native, v40, 0);
    v37 = *&__dst[352];
  }

  result = sub_181B29C9C((v37 + 16), v37 + 40, v87);
  v42 = *&__dst[352];
  if (!*&__dst[352])
  {
    goto LABEL_26;
  }

  v85[0] = v66;
  v85[1] = v67;
  v85[2] = v68;
  v86 = v69;
  v43 = *(*&__dst[352] + 24);
  v44 = v43 + 1;
  if (__OFADD__(v43, 1))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v45 = swift_isUniquelyReferenced_nonNull_native();
  if (*(v42 + 16) < v44 || (v45 & 1) == 0)
  {
    sub_181B29AC4(v45, v44, 0);
    v42 = *&__dst[352];
  }

  sub_181B29C9C((v42 + 16), v42 + 40, v85);
LABEL_26:
  ProtocolStack.transport.getter(&v64);
  if ((~v65 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v64, v65);

    sub_181A554F4(a6, a7);
    sub_181A554F4(a3, v53);

    sub_181A554F4(v54, a2);
    v60 = v70;
    v61 = v71;
    v62 = v72;
    v63 = v73;
    sub_181B29DA0(&v60);
  }

  else
  {
    v46 = *(&xmmword_1ED411C48 + 1);
    v47 = unk_1ED411C58;
    v48 = byte_1ED411C60;
    v49 = xmmword_1ED411C48;

    sub_181A554F4(a6, a7);
    sub_181A554F4(a3, v53);

    sub_181A554F4(v54, a2);
    v60 = v70;
    v61 = v71;
    v62 = v72;
    v63 = v73;
    sub_181B29DA0(&v60);
    memset(v82, 0, sizeof(v82));
    v83 = 0;
    v84 = 0x100000201;
    swift_allocObject();
    v50 = sub_181AAC92C(v49, v46, v47, v48, v82);
    v51 = *(v11 + 32);
    v52 = *(v11 + 40);
    *(v11 + 32) = v50;
    *(v11 + 40) = 0x2000000000000000;
    sub_181F49A24(v46, v47, v48);
    sub_181A5301C(v51, v52);
  }

  __dst[113] = 2;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  sub_181B29DA0(&v60);
  return memcpy(a8, __dst, 0x188uLL);
}

uint64_t _nw_protocol_identifier_create_swift_identifier(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = swift_unknownObjectRetain();
  identifier = nw_protocol_definition_get_identifier(v1);
  sub_181AAC800(identifier, &v9);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  type metadata accessor for __NWProtocolIdentifier();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_unknownObjectRelease();
  return v7;
}

void *nw_context_copy_cache_context(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if ((v1[152] & 4) != 0 || (v3 = v1, v4 = v2[152] & 3, v3, v4))
  {
    v5 = *(v2 + 5);
    if (!v5)
    {
      v5 = v2;
    }
  }

  else
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v5 = nw_context_copy_implicit_context::implicit_context;
  }

  v6 = v5;
  if (v6[3])
  {
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v11 = 136446210;
  v12 = "nw_context_copy_cache_context";
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s Cache context is not initialized correctly", &v11, 12);

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
LABEL_11:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t nw_endpoint_create_host_with_numeric_port(const char *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_create_host_with_numeric_port";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null hostname", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v7, &type, &v22))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v10 = "%{public}s called with null hostname";
      goto LABEL_44;
    }

    if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v19 = type;
      v21 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v25 = "nw_endpoint_create_host_with_numeric_port";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null hostname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_26:
        if (!v7)
        {
          return 0;
        }

LABEL_27:
        free(v7);
        return 0;
      }

      if (!v21)
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v10 = "%{public}s called with null hostname, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v10 = "%{public}s called with null hostname, backtrace limit exceeded";
    }

LABEL_44:
    v15 = v8;
    v16 = v19;
    v17 = 12;
    goto LABEL_24;
  }

  v4 = strlen(a1);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446466;
    v25 = "nw_endpoint_create_host_with_numeric_port";
    v26 = 2082;
    v27 = "hostname";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s invalid empty string %{public}s", buf, 22);

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v7, &type, &v22))
    {
      goto LABEL_26;
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
        v25 = "nw_endpoint_create_host_with_numeric_port";
        v26 = 2082;
        v27 = "hostname";
        v10 = "%{public}s invalid empty string %{public}s";
LABEL_22:
        v15 = v8;
        v16 = v9;
LABEL_23:
        v17 = 22;
LABEL_24:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, v17);
      }
    }

    else
    {
      if (v22 == 1)
      {
        v12 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v8, type);
        if (v12)
        {
          if (v14)
          {
            *buf = 136446722;
            v25 = "nw_endpoint_create_host_with_numeric_port";
            v26 = 2082;
            v27 = "hostname";
            v28 = 2082;
            v29 = v12;
            _os_log_impl(&dword_181A37000, v8, v13, "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v12);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_27;
        }

        if (!v14)
        {
          goto LABEL_25;
        }

        *buf = 136446466;
        v25 = "nw_endpoint_create_host_with_numeric_port";
        v26 = 2082;
        v27 = "hostname";
        v10 = "%{public}s invalid empty string %{public}s, no backtrace";
        v15 = v8;
        v16 = v13;
        goto LABEL_23;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446466;
        v25 = "nw_endpoint_create_host_with_numeric_port";
        v26 = 2082;
        v27 = "hostname";
        v10 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v4 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "nw_endpoint_create_host_with_numeric_port";
      v26 = 2082;
      v27 = "hostname";
      v28 = 1024;
      LODWORD(v29) = 1024;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s is longer than %d", buf, 0x1Cu);
    }

    return 0;
  }

  return _nw_endpoint_create_host_with_numeric_port(a1, a2);
}

char *nw_protocol_definition_get_identifier(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1 + 8;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_identifier";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null definition", buf, 12);

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
        v15 = "nw_protocol_definition_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181AABFEC(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7)
{
  __src[4] = *MEMORY[0x1E69E9840];
  __src[0] = a3;
  __src[1] = a4;
  __src[2] = a5;
  __src[3] = a6;
  if (a7)
  {
    if (!a3)
    {
      return 0;
    }

    if ((a3 & 0xFF00) != 0)
    {
      if ((a3 & 0xFF0000) != 0)
      {
        if ((a3 & 0xFF000000) != 0)
        {
          if ((a3 & 0xFF00000000) != 0)
          {
            if ((a3 & 0xFF0000000000) != 0)
            {
              if ((a3 & 0xFF000000000000) != 0)
              {
                if (HIBYTE(a3))
                {
                  if (a4)
                  {
                    if ((a4 & 0xFF00) != 0)
                    {
                      if ((a4 & 0xFF0000) != 0)
                      {
                        if ((a4 & 0xFF000000) != 0)
                        {
                          if ((a4 & 0xFF00000000) != 0)
                          {
                            if ((a4 & 0xFF0000000000) != 0)
                            {
                              if ((a4 & 0xFF000000000000) != 0)
                              {
                                if (HIBYTE(a4))
                                {
                                  if (a5)
                                  {
                                    if ((a5 & 0xFF00) != 0)
                                    {
                                      if ((a5 & 0xFF0000) != 0)
                                      {
                                        if ((a5 & 0xFF000000) != 0)
                                        {
                                          if ((a5 & 0xFF00000000) != 0)
                                          {
                                            if ((a5 & 0xFF0000000000) != 0)
                                            {
                                              if ((a5 & 0xFF000000000000) != 0)
                                              {
                                                if (HIBYTE(a5))
                                                {
                                                  if (a6)
                                                  {
                                                    if ((a6 & 0xFF00) != 0)
                                                    {
                                                      if ((a6 & 0xFF0000) != 0)
                                                      {
                                                        if ((a6 & 0xFF000000) != 0)
                                                        {
                                                          if ((a6 & 0xFF00000000) != 0)
                                                          {
                                                            if ((a6 & 0xFF0000000000) != 0)
                                                            {
                                                              if ((a6 & 0xFF000000000000) != 0)
                                                              {
                                                                if (HIBYTE(a6))
                                                                {
                                                                  v7 = 32;
                                                                }

                                                                else
                                                                {
                                                                  v7 = 31;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v7 = 30;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v7 = 29;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v7 = 28;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v7 = 27;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v7 = 26;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v7 = 25;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v7 = 24;
                                                  }
                                                }

                                                else
                                                {
                                                  v7 = 23;
                                                }
                                              }

                                              else
                                              {
                                                v7 = 22;
                                              }
                                            }

                                            else
                                            {
                                              v7 = 21;
                                            }
                                          }

                                          else
                                          {
                                            v7 = 20;
                                          }
                                        }

                                        else
                                        {
                                          v7 = 19;
                                        }
                                      }

                                      else
                                      {
                                        v7 = 18;
                                      }
                                    }

                                    else
                                    {
                                      v7 = 17;
                                    }
                                  }

                                  else
                                  {
                                    v7 = 16;
                                  }
                                }

                                else
                                {
                                  v7 = 15;
                                }
                              }

                              else
                              {
                                v7 = 14;
                              }
                            }

                            else
                            {
                              v7 = 13;
                            }
                          }

                          else
                          {
                            v7 = 12;
                          }
                        }

                        else
                        {
                          v7 = 11;
                        }
                      }

                      else
                      {
                        v7 = 10;
                      }
                    }

                    else
                    {
                      v7 = 9;
                    }
                  }

                  else
                  {
                    v7 = 8;
                  }
                }

                else
                {
                  v7 = 7;
                }
              }

              else
              {
                v7 = 6;
              }
            }

            else
            {
              v7 = 5;
            }
          }

          else
          {
            v7 = 4;
          }
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 32;
  }

  if (a2)
  {
    v8 = v7 >= a2 ? a2 : v7;
    memcpy(a1, __src, v8);
    if (v8 >= 0x21)
    {
      __break(1u);
      return 0;
    }
  }

  return v7;
}

NWConcrete_nw_protocol_definition *nw_protocol_definition_create_with_identifier(__int128 *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(NWConcrete_nw_protocol_definition);
    v3 = v2;
    if (v2)
    {
      v4 = *a1;
      v5 = a1[1];
      *&v2->identifier.level = *(a1 + 4);
      *&v2->identifier.name[16] = v5;
      *v2->identifier.name = v4;
      if (*(a1 + 9) == 2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v2->variant = v6;
      swift_identifier = _nw_protocol_identifier_create_swift_identifier(v2);
      swift_protocol_identifier = v3->swift_protocol_identifier;
      v3->swift_protocol_identifier = swift_identifier;

      v9 = v3;
      goto LABEL_14;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v30 = "nw_protocol_definition_create_with_identifier";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s [nw_protocol_definition init] failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v11, &type, &v27))
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
          v30 = "nw_protocol_definition_create_with_identifier";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s [nw_protocol_definition init] failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v16 = type;
        v17 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v30 = "nw_protocol_definition_create_with_identifier";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v16, "%{public}s [nw_protocol_definition init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v11)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        if (v17)
        {
          *buf = 136446210;
          v30 = "nw_protocol_definition_create_with_identifier";
          _os_log_impl(&dword_181A37000, v12, v16, "%{public}s [nw_protocol_definition init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_protocol_definition_create_with_identifier";
          _os_log_impl(&dword_181A37000, v12, v18, "%{public}s [nw_protocol_definition init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v11)
    {
LABEL_14:

      return v3;
    }

LABEL_13:
    free(v11);
    goto LABEL_14;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_protocol_definition_create_with_identifier";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null identifier", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v20, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_create_with_identifier";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null identifier", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v21, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v30 = "nw_protocol_definition_create_with_identifier";
          v31 = 2082;
          v32 = v23;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_44;
      }

      if (v25)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_create_with_identifier";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_create_with_identifier";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_44:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

uint64_t sub_181AAC800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  if (v3 >= 6)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0x40302010003uLL >> (8 * v3);
  }

  *a2 = v5;
  v6 = 2 * (v4 == 3);
  if (v4 == 2)
  {
    v6 = 1;
  }

  *(a2 + 1) = v6;
  v7 = sub_182AD30D8();
  v9 = v8;

  result = sub_181FB974C(v7, v9);
  v11 = result;
  if (result != 39)
  {

    v9 = 0;
    v7 = v11;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11 == 39;
  return result;
}

uint64_t sub_181AAC92C(unsigned int a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = v5 + *(*v5 + 128);
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(v14 + 40) = 2;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  v18 = a5[1];
  *v14 = *a5;
  *(v14 + 16) = v18;
  *(v14 + 32) = a5[2];
  return v5;
}

uint64_t type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions(uint64_t a1)
{
  result = qword_1ED40FD88;
  if (!qword_1ED40FD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_181AACB6C()
{
  v1 = v0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(v0 + 1) = v2;
  *(v0 + 2) = v2;
  *(v0 + 3) = v2;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  v3 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_quicState;
  v4 = sub_182AD2868();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_tlsState], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID], 1, 1, v4);
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateQueue] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateQueue] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout] = -1;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity] = 0;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S] = 2;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize] = -1;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount] = 0;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__ackDelaySize] = 0;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxPathsPerInterface] = 0;
  v15 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex;
  v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex] = 0;
  v6 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock] = 0;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue] = 0;
  v7 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  *&v1[OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags] = 0;
  if (nw_protocol_copy_tls_definition())
  {
    v8 = swift_unknownObjectRetain();
    v9 = v8;
  }

  else
  {
    v8 = nw_protocol_copy_tls_definition();
    v9 = 0;
  }

  sub_181AA82B4(&v18, v8, 0, 0, 0, 255, v9);
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v16[3] = v21;
  v17 = v22;
  v10 = v20;
  sub_181F49A24(*(&v18 + 1), v19, SBYTE8(v19));
  sub_181AA90F0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0, &qword_182AE4BC0);
  swift_allocObject();
  v11 = sub_181AA94EC();
  sub_181F49A88(v16, &unk_1EA838740, &qword_182AE4BC8);
  v12 = sub_181AB3DCC(&qword_1ED40FD40, &qword_1EA83A3A0, &qword_182AE4BC0, &protocol conformance descriptor for ProtocolOptions<A>);
  *(v1 + 14) = v11;
  *(v1 + 15) = v12;
  swift_unknownObjectRelease();
  v13 = *&v1[v7];
  if ((v13 & 0x71F7F) != 1)
  {
    *&v1[v7] = v13 & 0xFFFFFFFFFFF8E080 | 1;
  }

  v1[v15] = -1;
  *&v1[v6] = 0;
  if ((v13 & 0xC00000) != 0)
  {
    *&v1[v7] = v13 & 0xFFFFFFFFFF38E080 | 1;
  }

  return v1;
}

uint64_t _nw_quic_connection_set_initial_max_streams_bidirectional(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  result = sub_181AA8420();
  if (result)
  {
    v4 = *(*result + 128);
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + v4);

    if (v6)
    {
      *(v6 + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_181AACF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00, &qword_182AFE8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_181AACFF4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return result;
    }

LABEL_8:

    return result;
  }

  if (v2 == 3 || v2 == 4)
  {
    goto LABEL_8;
  }

  if (v2 == 5)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_181AAD03C(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return v3;
    }
  }

  if (v2 == 3 || v2 == 4)
  {
  }

  if (v2 == 5)
  {
    return swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_181AAD084(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    return swift_unknownObjectRelease();
  }

  if (!(a2 >> 62))
  {
  }

  return v2;
}

BOOL _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = *a2;
  *uu1 = v2;
  return uuid_compare(uu1, &v4) == 0;
}

uint64_t *ProtocolOptions.deinit()
{
  sub_181F48350(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_181AAD250(*(v0 + 48), *(v0 + 56));
  sub_181F49A88(v0 + qword_1ED411A90, &qword_1EA838E00, &qword_182AFE8E0);
  v1 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  v2 = sub_182AD39B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_181AAD250(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x1000000000000007) != 0)
  {
    return sub_181CF14BC(a1, a2);
  }

  return a1;
}

uint64_t ProtocolOptions.__deallocating_deinit()
{
  ProtocolOptions.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_181AAD2C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    options_deallocator = nw_protocol_definition_get_options_deallocator(*(v0 + 24));
    if (options_deallocator)
    {
      options_deallocator(*(v0 + 24), v1);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t nw_protocol_definition_get_options_deallocator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[13];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_deallocator";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null definition", buf, 12);

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
        v15 = "nw_protocol_definition_get_options_deallocator";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_options_deallocator";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_deallocator";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_deallocator";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_utilities_port_for_string(const char *a1, _WORD *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (!strcasecmp(a1, "http"))
      {
        v9 = &kWellKnownSchemes;
      }

      else if (!strcasecmp(a1, "https"))
      {
        v9 = &off_1E6A33648;
      }

      else if (!strcasecmp(a1, "ws"))
      {
        v9 = &off_1E6A33658;
      }

      else
      {
        if (strcasecmp(a1, "wss"))
        {
          memset(&v38.ai_socktype, 0, 40);
          *&v38.ai_flags = 0x1E00000600;
          v38.ai_socktype = 1;
          v31 = 0;
          v4 = getaddrinfo(0, a1, &v38, &v31);
          if (v4)
          {
            v5 = gai_strerror(v4);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v6 = gLogObj;
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              v7 = "Unknown error";
              *buf = 136446722;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              if (v5)
              {
                v7 = v5;
              }

              v35 = a1;
              v36 = 2082;
              v37 = v7;
              _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Unable to convert %{public}s to port: %{public}s", buf, 0x20u);
            }

            return 0;
          }

          v10 = v31;
          if (v31)
          {
            ai_addr = v31->ai_addr;
            if (ai_addr)
            {
              if (ai_addr->sa_family == 30)
              {
                *a2 = *ai_addr->sa_data;
                freeaddrinfo(v10);
                return 1;
              }
            }
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          *buf = 136446466;
          v33 = "nw_utilities_port_for_string";
          v34 = 2082;
          v35 = a1;
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s getaddrinfo(NULL, %{public}s, ...) failed", buf, 22);

          type = OS_LOG_TYPE_ERROR;
          v29 = 0;
          if (!__nwlog_fault(v13, &type, &v29))
          {
            goto LABEL_39;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              *buf = 136446466;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              v35 = a1;
              v16 = "%{public}s getaddrinfo(NULL, %{public}s, ...) failed";
LABEL_37:
              _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x16u);
            }
          }

          else if (v29 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v15 = type;
            v18 = os_log_type_enabled(v14, type);
            if (backtrace_string)
            {
              if (v18)
              {
                *buf = 136446722;
                v33 = "nw_utilities_port_for_string";
                v34 = 2082;
                v35 = a1;
                v36 = 2082;
                v37 = backtrace_string;
                _os_log_impl(&dword_181A37000, v14, v15, "%{public}s getaddrinfo(NULL, %{public}s, ...) failed, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              goto LABEL_39;
            }

            if (v18)
            {
              *buf = 136446466;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              v35 = a1;
              v16 = "%{public}s getaddrinfo(NULL, %{public}s, ...) failed, no backtrace";
              goto LABEL_37;
            }
          }

          else
          {
            v14 = __nwlog_obj();
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              *buf = 136446466;
              v33 = "nw_utilities_port_for_string";
              v34 = 2082;
              v35 = a1;
              v16 = "%{public}s getaddrinfo(NULL, %{public}s, ...) failed, backtrace limit exceeded";
              goto LABEL_37;
            }
          }

LABEL_39:
          if (v13)
          {
            free(v13);
          }

          result = v31;
          if (v31)
          {
            freeaddrinfo(v31);
            return 0;
          }

          return result;
        }

        v9 = &off_1E6A33668;
      }

      *a2 = *(v9 + 4);
      return 1;
    }

    v24 = __nwlog_obj();
    v38.ai_flags = 136446210;
    *&v38.ai_family = "nw_utilities_port_for_string";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null out_port", &v38, 12);

    buf[0] = 16;
    LOBYTE(v31) = 0;
    if (__nwlog_fault(v20, buf, &v31))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null out_port";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (v31 != 1)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null out_port, backtrace limit exceeded";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v25 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = buf[0];
      v28 = os_log_type_enabled(v21, buf[0]);
      if (!v25)
      {
        if (v28)
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null out_port, no backtrace";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (!v28)
      {
        goto LABEL_60;
      }

      v38.ai_flags = 136446466;
      *&v38.ai_family = "nw_utilities_port_for_string";
      LOWORD(v38.ai_protocol) = 2082;
      *(&v38.ai_protocol + 2) = v25;
      v27 = "%{public}s called with null out_port, dumping backtrace:%{public}s";
LABEL_59:
      _os_log_impl(&dword_181A37000, v21, v22, v27, &v38, 0x16u);
LABEL_60:

      free(v25);
    }
  }

  else
  {
    v19 = __nwlog_obj();
    v38.ai_flags = 136446210;
    *&v38.ai_family = "nw_utilities_port_for_string";
    v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null string", &v38, 12);

    buf[0] = 16;
    LOBYTE(v31) = 0;
    if (__nwlog_fault(v20, buf, &v31))
    {
      if (buf[0] == 17)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null string";
LABEL_69:
          _os_log_impl(&dword_181A37000, v21, v22, v23, &v38, 0xCu);
        }

LABEL_70:

        goto LABEL_71;
      }

      if (v31 != 1)
      {
        v21 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v21, buf[0]))
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null string, backtrace limit exceeded";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      v25 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = buf[0];
      v26 = os_log_type_enabled(v21, buf[0]);
      if (!v25)
      {
        if (v26)
        {
          v38.ai_flags = 136446210;
          *&v38.ai_family = "nw_utilities_port_for_string";
          v23 = "%{public}s called with null string, no backtrace";
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      if (!v26)
      {
        goto LABEL_60;
      }

      v38.ai_flags = 136446466;
      *&v38.ai_family = "nw_utilities_port_for_string";
      LOWORD(v38.ai_protocol) = 2082;
      *(&v38.ai_protocol + 2) = v25;
      v27 = "%{public}s called with null string, dumping backtrace:%{public}s";
      goto LABEL_59;
    }
  }

LABEL_71:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

uint64_t nw_path_evaluator_add_endpoint_to_necp_message(void *a1, int a2, unint64_t a3, unint64_t a4, char a5)
{
  v285 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = v8;
  if (!a3)
  {
    v205 = v8;
    v206 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s called with null cursor", buf, 12);

    v265[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, v265, &__src))
    {
      goto LABEL_500;
    }

    if (v265[0] == OS_LOG_TYPE_FAULT)
    {
      v208 = __nwlog_obj();
      v209 = v265[0];
      if (os_log_type_enabled(v208, v265[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null cursor", buf, 0xCu);
      }

      goto LABEL_499;
    }

    if (__src != 1)
    {
      v208 = __nwlog_obj();
      v230 = v265[0];
      if (os_log_type_enabled(v208, v265[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v208, v230, "%{public}s called with null cursor, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_499;
    }

    backtrace_string = __nw_create_backtrace_string();
    v208 = __nwlog_obj();
    v215 = v265[0];
    v216 = os_log_type_enabled(v208, v265[0]);
    if (!backtrace_string)
    {
      if (v216)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v208, v215, "%{public}s called with null cursor, no backtrace", buf, 0xCu);
      }

      goto LABEL_499;
    }

    if (v216)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v208, v215, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_439;
  }

  if (!a4)
  {
    v205 = v8;
    v210 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v210, 16, "%{public}s called with null beyond", buf, 12);

    v265[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, v265, &__src))
    {
      goto LABEL_500;
    }

    if (v265[0] == OS_LOG_TYPE_FAULT)
    {
      v208 = __nwlog_obj();
      v211 = v265[0];
      if (os_log_type_enabled(v208, v265[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v208, v211, "%{public}s called with null beyond", buf, 0xCu);
      }

      goto LABEL_499;
    }

    if (__src != 1)
    {
      v208 = __nwlog_obj();
      v231 = v265[0];
      if (os_log_type_enabled(v208, v265[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v208, v231, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_499;
    }

    backtrace_string = __nw_create_backtrace_string();
    v208 = __nwlog_obj();
    v217 = v265[0];
    v218 = os_log_type_enabled(v208, v265[0]);
    if (!backtrace_string)
    {
      if (v218)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        _os_log_impl(&dword_181A37000, v208, v217, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
      }

      goto LABEL_499;
    }

    if (v218)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v208, v217, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_439:

    free(backtrace_string);
    if (!v207)
    {
      goto LABEL_502;
    }

    goto LABEL_501;
  }

  v260 = a4;
  if (a3 >= a4)
  {
    v205 = v8;
    v212 = __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *v280 = a4;
    v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v212, 16, "%{public}s Invalid cursor %p >= beyond %p", buf, 32);

    v265[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__src) = 0;
    if (!__nwlog_fault(v207, v265, &__src))
    {
      goto LABEL_500;
    }

    if (v265[0] == OS_LOG_TYPE_FAULT)
    {
      v208 = __nwlog_obj();
      v213 = v265[0];
      if (os_log_type_enabled(v208, v265[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v260;
        _os_log_impl(&dword_181A37000, v208, v213, "%{public}s Invalid cursor %p >= beyond %p", buf, 0x20u);
      }
    }

    else if (__src == 1)
    {
      v219 = __nw_create_backtrace_string();
      v208 = __nwlog_obj();
      v220 = v265[0];
      v221 = os_log_type_enabled(v208, v265[0]);
      if (v219)
      {
        if (v221)
        {
          *buf = 136446978;
          *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v260;
          *&v280[8] = 2082;
          *v281 = v219;
          _os_log_impl(&dword_181A37000, v208, v220, "%{public}s Invalid cursor %p >= beyond %p, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v219);
LABEL_500:
        if (!v207)
        {
LABEL_502:
          a3 = 0;
          goto LABEL_414;
        }

LABEL_501:
        free(v207);
        goto LABEL_502;
      }

      if (v221)
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v260;
        _os_log_impl(&dword_181A37000, v208, v220, "%{public}s Invalid cursor %p >= beyond %p, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v208 = __nwlog_obj();
      v232 = v265[0];
      if (os_log_type_enabled(v208, v265[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v260;
        _os_log_impl(&dword_181A37000, v208, v232, "%{public}s Invalid cursor %p >= beyond %p, backtrace limit exceeded", buf, 0x20u);
      }
    }

LABEL_499:

    goto LABEL_500;
  }

  *v265 = 0;
  v266 = 0;
  v268 = 0;
  v267 = 0;
  v253 = v8;
  v254 = nw_endpoint_copy_txt_record(v8);
  v257 = a2;
  v10 = nw_endpoint_get_type(v9);
  v11 = v9;
  v12 = nw_endpoint_get_type(v11);
  v13 = nw_endpoint_copy_txt_record(v11);
  p_isa = &v13->isa;
  if (v12 > nw_endpoint_type_bonjour_service)
  {
    if (v12 == nw_endpoint_type_url)
    {
      url = nw_endpoint_get_url(v11);
      if (url)
      {
        sa_len = strlen(url) + 9;
      }

      else
      {
        sa_len = 9;
      }

      goto LABEL_51;
    }

    if (v12 == (nw_endpoint_type_url|nw_endpoint_type_address))
    {
      goto LABEL_23;
    }

    if (v12 != (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      goto LABEL_34;
    }

    application_service_alias = nw_endpoint_get_application_service_alias(v11);
    application_service_name = nw_endpoint_get_application_service_name(v11);
    *buf = 0;
    *&buf[8] = 0;
    nw_endpoint_get_service_identifier(v11, buf);
    device_name = nw_endpoint_get_device_name(v11);
    device_model = nw_endpoint_get_device_model(v11);
    contact_id = nw_endpoint_get_contact_id(v11);
    if (application_service_alias)
    {
      v27 = strlen(application_service_alias) + 33;
      if (application_service_name)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v27 = 33;
      if (application_service_name)
      {
LABEL_18:
        v28 = strlen(application_service_name) + 1;
        if (device_name)
        {
          goto LABEL_19;
        }

        goto LABEL_45;
      }
    }

    v28 = 1;
    if (device_name)
    {
LABEL_19:
      v29 = strlen(device_name) + 1;
      if (device_model)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

LABEL_45:
    v29 = 1;
    if (device_model)
    {
LABEL_20:
      v30 = strlen(device_model) + 1;
      if (contact_id)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }

LABEL_46:
    v30 = 1;
    if (contact_id)
    {
LABEL_21:
      v20 = strlen(contact_id) + 1;
      if (p_isa)
      {
LABEL_22:
        v21 = p_isa[2];
LABEL_49:
        v38 = v27 + v28 + v29 + v30;
        goto LABEL_50;
      }

LABEL_48:
      v21 = 0;
      goto LABEL_49;
    }

LABEL_47:
    v20 = 1;
    if (p_isa)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

  if (v12 != nw_endpoint_type_address)
  {
    if (v12 != nw_endpoint_type_host)
    {
      if (v12 == nw_endpoint_type_bonjour_service)
      {
        bonjour_service_name = nw_endpoint_get_bonjour_service_name(v11);
        bonjour_service_type = nw_endpoint_get_bonjour_service_type(v11);
        bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v11);
        if (bonjour_service_name)
        {
          v18 = strlen(bonjour_service_name) + 9;
          if (bonjour_service_type)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v18 = 9;
          if (bonjour_service_type)
          {
LABEL_10:
            v19 = strlen(bonjour_service_type) + 1;
            if (bonjour_service_domain)
            {
              goto LABEL_11;
            }

            goto LABEL_40;
          }
        }

        v19 = 1;
        if (bonjour_service_domain)
        {
LABEL_11:
          v20 = strlen(bonjour_service_domain) + 1;
          if (p_isa)
          {
LABEL_12:
            v21 = p_isa[2];
LABEL_42:
            v38 = v19 + v18;
LABEL_50:
            sa_len = v38 + v20 + v21;
            goto LABEL_51;
          }

LABEL_41:
          v21 = 0;
          goto LABEL_42;
        }

LABEL_40:
        v20 = 1;
        if (p_isa)
        {
          goto LABEL_12;
        }

        goto LABEL_41;
      }

LABEL_34:

      sa_len = 0;
LABEL_57:
      v42 = 0;
      v41 = v265;
      v39 = 28;
      goto LABEL_63;
    }

LABEL_23:
    v31 = v11;
    if (v31 && (v32 = v31, domain_for_policy = _nw_endpoint_get_domain_for_policy(v31), v32, domain_for_policy))
    {
      v34 = strlen(domain_for_policy) + 9;
      if (!p_isa)
      {
LABEL_26:
        sa_len = v34;
        goto LABEL_51;
      }
    }

    else
    {
      v34 = 9;
      if (!p_isa)
      {
        goto LABEL_26;
      }
    }

    sa_len = p_isa[2] + v34;
    goto LABEL_51;
  }

  address = nw_endpoint_get_address(v11);
  if (!address)
  {
    sa_len = 0;
    if (!p_isa)
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  sa_len = address->sa_len;
  if (p_isa)
  {
LABEL_36:
    sa_len = p_isa[2] + 28;
  }

LABEL_51:
  if (sa_len <= 0x1C)
  {
    v39 = 28;
  }

  else
  {
    v39 = sa_len;
  }

  if (v39 <= 0x1C)
  {
    goto LABEL_57;
  }

  v40 = malloc_type_calloc(v39, 1uLL, 0xA0A6930FuLL);
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_path_evaluator_add_endpoint_to_necp_message";
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    *&buf[12] = 2048;
    *&buf[14] = v39;
    *&buf[22] = 2048;
    *v280 = 1;
    v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

    result = __nwlog_should_abort(v46);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v46);
    v41 = 0;
    v42 = 0;
  }

LABEL_63:
  v255 = v42;
  v48 = -1;
  if (v39 >= 0xFF)
  {
    v49 = 255;
  }

  else
  {
    v49 = v39;
  }

  if (sa_len < 0xFF)
  {
    v48 = sa_len;
  }

  if (v10 <= nw_endpoint_type_bonjour_service)
  {
    if (v10 != nw_endpoint_type_address)
    {
      if (v10 != nw_endpoint_type_host)
      {
        if (v10 != nw_endpoint_type_bonjour_service)
        {
          goto LABEL_177;
        }

        *(v41 + 1) = 0;
        *v41 = v48;
        *(v41 + 1) = 0;
        *(v41 + 1) = 3;
        v50 = nw_endpoint_get_bonjour_service_name(v11);
        v51 = nw_endpoint_get_bonjour_service_type(v11);
        v52 = nw_endpoint_get_bonjour_service_domain(v11);
        if (v50)
        {
          v53 = strlen(v50) + 1;
          if (v51)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v53 = 1;
          if (v51)
          {
LABEL_74:
            v54 = strlen(v51) + 1;
            v55 = v49;
            if (v52)
            {
              goto LABEL_75;
            }

            goto LABEL_128;
          }
        }

        v54 = 1;
        v55 = v49;
        if (v52)
        {
LABEL_75:
          v56 = strlen(v52) + 1;
          if (!v50)
          {
            goto LABEL_131;
          }

LABEL_129:
          if (v53)
          {
            memcpy(v41 + 8, v50, v53);
          }

LABEL_131:
          if (v51 && v54)
          {
            memcpy(&v41[v53 + 8], v51, v54);
          }

          if (v52 && v56)
          {
            memcpy(&v41[v53 + 8 + v54], v52, v56);
          }

          if (v254)
          {
            memcpy(&v41[v53 + 8 + v54 + v56], v254[1].isa, v254[2].isa);
            v49 = v55;
          }

          else
          {
            v49 = v55;
            v41[v55 - 1] = OS_LOG_TYPE_DEFAULT;
          }

          v62 = v49 + 5;
          if (v260 - a3 < v49 + 5)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v87 = gLogObj;
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            LODWORD(v252) = 54;
            v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v87, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

            LOBYTE(__src) = 16;
            uu[0] = 0;
            if (!__nwlog_fault(v64, &__src, uu))
            {
              goto LABEL_253;
            }

            if (__src == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v71 = gLogObj;
              v88 = __src;
              if (os_log_type_enabled(v71, __src))
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v280 = v49 + 5;
                *&v280[8] = 2048;
                *v281 = v260;
                *&v281[8] = 1024;
                *v282 = v257;
                *&v282[4] = 1024;
                *&v282[6] = v49;
                _os_log_impl(&dword_181A37000, v71, v88, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
              }

LABEL_246:

              goto LABEL_253;
            }

            if (uu[0] != 1)
            {
              v71 = __nwlog_obj();
              v131 = __src;
              if (os_log_type_enabled(v71, __src))
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v280 = v49 + 5;
                *&v280[8] = 2048;
                *v281 = v260;
                *&v281[8] = 1024;
                *v282 = v257;
                *&v282[4] = 1024;
                *&v282[6] = v49;
                _os_log_impl(&dword_181A37000, v71, v131, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
              }

              goto LABEL_246;
            }

            v114 = __nw_create_backtrace_string();
            v71 = __nwlog_obj();
            v121 = __src;
            v122 = os_log_type_enabled(v71, __src);
            if (!v114)
            {
              if (v122)
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v280 = v49 + 5;
                *&v280[8] = 2048;
                *v281 = v260;
                *&v281[8] = 1024;
                *v282 = v257;
                *&v282[4] = 1024;
                *&v282[6] = v49;
                _os_log_impl(&dword_181A37000, v71, v121, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
              }

              goto LABEL_246;
            }

            if (v122)
            {
              *buf = 136447746;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v49 + 5;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = v257;
              *&v282[4] = 1024;
              *&v282[6] = v49;
              v283 = 2082;
              v284 = v114;
              _os_log_impl(&dword_181A37000, v71, v121, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
            }

            goto LABEL_204;
          }

          goto LABEL_175;
        }

LABEL_128:
        v56 = 1;
        if (!v50)
        {
          goto LABEL_131;
        }

        goto LABEL_129;
      }

      *(v41 + 1) = 0;
      *v41 = v48;
      *(v41 + 1) = __rev16(nw_endpoint_get_port(v11));
      *(v41 + 1) = 2;
      v73 = v11;
      if (v73 && (v74 = v73, v75 = _nw_endpoint_get_domain_for_policy(v73), v74, v75))
      {
        v76 = strlen(v75) + 1;
        memcpy(v41 + 8, v75, v76);
        v77 = v254;
        if (!v254)
        {
LABEL_104:
          v41[v49 - 1] = OS_LOG_TYPE_DEFAULT;
          goto LABEL_120;
        }
      }

      else
      {
        v76 = 1;
        v77 = v254;
        if (!v254)
        {
          goto LABEL_104;
        }
      }

      memcpy(&v41[v76 + 8], v77[1].isa, v77[2].isa);
LABEL_120:
      v62 = v49 + 5;
      if (v260 - a3 < v49 + 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v85 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v49 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = v257;
        *&v282[4] = 1024;
        *&v282[6] = v49;
        LODWORD(v252) = 54;
        v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (!__nwlog_fault(v64, &__src, uu))
        {
          goto LABEL_253;
        }

        if (__src == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v71 = gLogObj;
          v86 = __src;
          if (os_log_type_enabled(v71, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            _os_log_impl(&dword_181A37000, v71, v86, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
          }

          goto LABEL_246;
        }

        if (uu[0] != 1)
        {
          v71 = __nwlog_obj();
          v130 = __src;
          if (os_log_type_enabled(v71, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            _os_log_impl(&dword_181A37000, v71, v130, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
          }

          goto LABEL_246;
        }

        v114 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v119 = __src;
        v120 = os_log_type_enabled(v71, __src);
        if (!v114)
        {
          if (v120)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            _os_log_impl(&dword_181A37000, v71, v119, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
          }

          goto LABEL_246;
        }

        if (v120)
        {
          *buf = 136447746;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v49 + 5;
          *&v280[8] = 2048;
          *v281 = v260;
          *&v281[8] = 1024;
          *v282 = v257;
          *&v282[4] = 1024;
          *&v282[6] = v49;
          v283 = 2082;
          v284 = v114;
          _os_log_impl(&dword_181A37000, v71, v119, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        goto LABEL_204;
      }

LABEL_175:
      *a3 = v257;
      *(a3 + 1) = v49;
LABEL_176:
      memcpy((a3 + 5), v41, v49);
      a3 += v62;
LABEL_177:
      if ((a5 & 1) == 0)
      {
        goto LABEL_290;
      }

      goto LABEL_256;
    }

    __src = 0uLL;
    v278 = 0;
    v277 = 0;
    if (!nw_endpoint_fillout_v4v6_address(v11, &__src))
    {
      goto LABEL_177;
    }

    memcpy(v41, &__src, __src);
    if (v254)
    {
      isa = v254[2].isa;
      if (v49 >= isa + 28)
      {
        memcpy(v41 + 28, v254[1].isa, isa);
      }
    }

    v62 = v49 + 5;
    if (v260 - a3 >= v49 + 5)
    {
      *a3 = v257;
      *(a3 + 1) = v49;
      if (v41)
      {
        goto LABEL_176;
      }

      v112 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v257;
      *&buf[18] = 1024;
      *&buf[20] = v49;
      LODWORD(v252) = 24;
      v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s type=%u length=%u but value is NULL", buf, v252);

      uu[0] = 16;
      v272[0] = 0;
      if (!__nwlog_fault(v64, uu, v272))
      {
        goto LABEL_253;
      }

      if (uu[0] == 17)
      {
        v65 = __nwlog_obj();
        v113 = uu[0];
        if (os_log_type_enabled(v65, uu[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v257;
          *&buf[18] = 1024;
          *&buf[20] = v49;
          _os_log_impl(&dword_181A37000, v65, v113, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
        }

        goto LABEL_252;
      }

      if (v272[0] != 1)
      {
        v65 = __nwlog_obj();
        v251 = uu[0];
        if (os_log_type_enabled(v65, uu[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v257;
          *&buf[18] = 1024;
          *&buf[20] = v49;
          _os_log_impl(&dword_181A37000, v65, v251, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
        }

        goto LABEL_252;
      }

      v125 = __nw_create_backtrace_string();
      v65 = __nwlog_obj();
      v249 = uu[0];
      v250 = os_log_type_enabled(v65, uu[0]);
      if (!v125)
      {
        if (v250)
        {
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = v257;
          *&buf[18] = 1024;
          *&buf[20] = v49;
          _os_log_impl(&dword_181A37000, v65, v249, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
        }

        goto LABEL_252;
      }

      if (v250)
      {
        *buf = 136446978;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 1024;
        *&buf[14] = v257;
        *&buf[18] = 1024;
        *&buf[20] = v49;
        *v280 = 2082;
        *&v280[2] = v125;
        _os_log_impl(&dword_181A37000, v65, v249, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v63 = gLogObj;
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v49 + 5;
      *&v280[8] = 2048;
      *v281 = v260;
      *&v281[8] = 1024;
      *v282 = v257;
      *&v282[4] = 1024;
      *&v282[6] = v49;
      LODWORD(v252) = 54;
      v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v63, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

      uu[0] = 16;
      v272[0] = 0;
      if (!__nwlog_fault(v64, uu, v272))
      {
        goto LABEL_253;
      }

      if (uu[0] == 17)
      {
        v65 = __nwlog_obj();
        v66 = uu[0];
        if (os_log_type_enabled(v65, uu[0]))
        {
          *buf = 136447490;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v49 + 5;
          *&v280[8] = 2048;
          *v281 = v260;
          *&v281[8] = 1024;
          *v282 = v257;
          *&v282[4] = 1024;
          *&v282[6] = v49;
          _os_log_impl(&dword_181A37000, v65, v66, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
        }

LABEL_252:

LABEL_253:
        if (!v64)
        {
          goto LABEL_255;
        }

        goto LABEL_254;
      }

      if (v272[0] != 1)
      {
        v65 = __nwlog_obj();
        v133 = uu[0];
        if (os_log_type_enabled(v65, uu[0]))
        {
          *buf = 136447490;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v49 + 5;
          *&v280[8] = 2048;
          *v281 = v260;
          *&v281[8] = 1024;
          *v282 = v257;
          *&v282[4] = 1024;
          *&v282[6] = v49;
          _os_log_impl(&dword_181A37000, v65, v133, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
        }

        goto LABEL_252;
      }

      v125 = __nw_create_backtrace_string();
      v65 = __nwlog_obj();
      v126 = uu[0];
      v127 = os_log_type_enabled(v65, uu[0]);
      if (!v125)
      {
        if (v127)
        {
          *buf = 136447490;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v49 + 5;
          *&v280[8] = 2048;
          *v281 = v260;
          *&v281[8] = 1024;
          *v282 = v257;
          *&v282[4] = 1024;
          *&v282[6] = v49;
          _os_log_impl(&dword_181A37000, v65, v126, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
        }

        goto LABEL_252;
      }

      if (v127)
      {
        *buf = 136447746;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v49 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = v257;
        *&v282[4] = 1024;
        *&v282[6] = v49;
        v283 = 2082;
        v284 = v125;
        _os_log_impl(&dword_181A37000, v65, v126, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
      }
    }

    free(v125);
    goto LABEL_253;
  }

  if (v10 == nw_endpoint_type_url)
  {
    *(v41 + 1) = 0;
    *v41 = v48;
    *(v41 + 1) = __rev16(nw_endpoint_get_port(v11));
    *(v41 + 1) = 4;
    v67 = nw_endpoint_get_url(v11);
    if (v67)
    {
      v68 = v67;
      v69 = strlen(v67);
      memcpy(v41 + 8, v68, v69 + 1);
    }

    v41[v49 - 1] = OS_LOG_TYPE_DEFAULT;
    v62 = v49 + 5;
    if (v260 - a3 >= v49 + 5)
    {
      goto LABEL_175;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v70 = gLogObj;
    *buf = 136447490;
    *&buf[4] = "nw_necp_append_tlv";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *v280 = v49 + 5;
    *&v280[8] = 2048;
    *v281 = v260;
    *&v281[8] = 1024;
    *v282 = v257;
    *&v282[4] = 1024;
    *&v282[6] = v49;
    LODWORD(v252) = 54;
    v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

    LOBYTE(__src) = 16;
    uu[0] = 0;
    if (!__nwlog_fault(v64, &__src, uu))
    {
      goto LABEL_253;
    }

    if (__src == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v71 = gLogObj;
      v72 = __src;
      if (os_log_type_enabled(v71, __src))
      {
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v49 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = v257;
        *&v282[4] = 1024;
        *&v282[6] = v49;
        _os_log_impl(&dword_181A37000, v71, v72, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
      }

      goto LABEL_246;
    }

    if (uu[0] != 1)
    {
      v71 = __nwlog_obj();
      v129 = __src;
      if (os_log_type_enabled(v71, __src))
      {
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v49 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = v257;
        *&v282[4] = 1024;
        *&v282[6] = v49;
        _os_log_impl(&dword_181A37000, v71, v129, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
      }

      goto LABEL_246;
    }

    v114 = __nw_create_backtrace_string();
    v71 = __nwlog_obj();
    v117 = __src;
    v118 = os_log_type_enabled(v71, __src);
    if (!v114)
    {
      if (v118)
      {
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v49 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = v257;
        *&v282[4] = 1024;
        *&v282[6] = v49;
        _os_log_impl(&dword_181A37000, v71, v117, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
      }

      goto LABEL_246;
    }

    if (v118)
    {
      *buf = 136447746;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v49 + 5;
      *&v280[8] = 2048;
      *v281 = v260;
      *&v281[8] = 1024;
      *v282 = v257;
      *&v282[4] = 1024;
      *&v282[6] = v49;
      v283 = 2082;
      v284 = v114;
      _os_log_impl(&dword_181A37000, v71, v117, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
    }

    goto LABEL_204;
  }

  if (v10 == (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    *(v41 + 1) = 0;
    *v41 = v48;
    *(v41 + 1) = 0;
    *(v41 + 1) = 5;
    v78 = v11;
    if (v78 && (v79 = v78, v80 = _nw_endpoint_get_domain_for_policy(v78), v79, v80))
    {
      v81 = strlen(v80) + 1;
      memcpy(v41 + 8, v80, v81);
      v82 = v254;
      if (!v254)
      {
LABEL_108:
        v41[v49 - 1] = OS_LOG_TYPE_DEFAULT;
LABEL_111:
        v62 = v49 + 5;
        if (v260 - a3 >= v49 + 5)
        {
          goto LABEL_175;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v83 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v49 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = v257;
        *&v282[4] = 1024;
        *&v282[6] = v49;
        LODWORD(v252) = 54;
        v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (!__nwlog_fault(v64, &__src, uu))
        {
          goto LABEL_253;
        }

        if (__src == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v71 = gLogObj;
          v84 = __src;
          if (os_log_type_enabled(v71, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            _os_log_impl(&dword_181A37000, v71, v84, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
          }

          goto LABEL_246;
        }

        if (uu[0] != 1)
        {
          v71 = __nwlog_obj();
          v128 = __src;
          if (os_log_type_enabled(v71, __src))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            _os_log_impl(&dword_181A37000, v71, v128, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
          }

          goto LABEL_246;
        }

        v114 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v115 = __src;
        v116 = os_log_type_enabled(v71, __src);
        if (!v114)
        {
          if (v116)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v49 + 5;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = v257;
            *&v282[4] = 1024;
            *&v282[6] = v49;
            _os_log_impl(&dword_181A37000, v71, v115, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
          }

          goto LABEL_246;
        }

        if (v116)
        {
          *buf = 136447746;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v49 + 5;
          *&v280[8] = 2048;
          *v281 = v260;
          *&v281[8] = 1024;
          *v282 = v257;
          *&v282[4] = 1024;
          *&v282[6] = v49;
          v283 = 2082;
          v284 = v114;
          _os_log_impl(&dword_181A37000, v71, v115, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

LABEL_204:

        goto LABEL_210;
      }
    }

    else
    {
      v81 = 1;
      v82 = v254;
      if (!v254)
      {
        goto LABEL_108;
      }
    }

    memcpy(&v41[v81 + 8], v82[1].isa, v82[2].isa);
    goto LABEL_111;
  }

  if (v10 != (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    goto LABEL_177;
  }

  *(v41 + 1) = 0;
  *v41 = v48;
  *(v41 + 1) = 0;
  *(v41 + 1) = 6;
  v57 = nw_endpoint_get_application_service_alias(v11);
  v58 = v57;
  if (v57)
  {
    v59 = strlen(v57);
    v60 = v59 + 1;
    if (v59 == -1)
    {
      v60 = 0;
    }

    else
    {
      memcpy(v41 + 8, v58, v60);
    }
  }

  else
  {
    v60 = 1;
  }

  v89 = nw_endpoint_get_application_service_name(v11);
  v90 = v89;
  if (v89)
  {
    v91 = strlen(v89);
    v92 = v91 + 1;
    if (v91 == -1)
    {
      v92 = 0;
    }

    else
    {
      memcpy(&v41[v60 + 8], v90, v92);
    }
  }

  else
  {
    v92 = 1;
  }

  v93 = nw_endpoint_get_device_name(v11);
  v94 = v93;
  v95 = v92 + v60;
  if (v93)
  {
    v96 = strlen(v93);
    v97 = v96 + 1;
    if (v96 == -1)
    {
      v97 = 0;
    }

    else
    {
      memcpy(&v41[v95 + 8], v94, v97);
    }
  }

  else
  {
    v97 = 1;
  }

  v98 = nw_endpoint_get_device_model(v11);
  v99 = v98;
  v100 = v97 + v95;
  if (v98)
  {
    v101 = strlen(v98);
    v102 = v101 + 1;
    if (v101 == -1)
    {
      v102 = 0;
    }

    else
    {
      memcpy(&v41[v100 + 8], v99, v102);
    }
  }

  else
  {
    v102 = 1;
  }

  v103 = nw_endpoint_get_contact_id(v11);
  v104 = v103;
  v105 = v102 + v100;
  if (v103)
  {
    v106 = strlen(v103);
    v107 = v106 + 1;
    if (v106 == -1)
    {
      v107 = 0;
    }

    else
    {
      memcpy(&v41[v105 + 8], v104, v107);
    }
  }

  else
  {
    v107 = 1;
  }

  v108 = &v41[v105 + v107];
  *(v108 + 2) = nw_endpoint_get_device_color(v11);
  v109 = v108 + 8;
  *(v109 + 1) = nw_endpoint_get_advertised_route(v11);
  __src = 0uLL;
  nw_endpoint_get_service_identifier(v11, &__src);
  *(v109 + 8) = __src;
  if (v254)
  {
    memcpy(v109 + 24, v254[1].isa, v254[2].isa);
  }

  v62 = v49 + 5;
  if (v260 - a3 >= v49 + 5)
  {
    goto LABEL_175;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v110 = gLogObj;
  *buf = 136447490;
  *&buf[4] = "nw_necp_append_tlv";
  *&buf[12] = 2048;
  *&buf[14] = a3;
  *&buf[22] = 2048;
  *v280 = v49 + 5;
  *&v280[8] = 2048;
  *v281 = v260;
  *&v281[8] = 1024;
  *v282 = v257;
  *&v282[4] = 1024;
  *&v282[6] = v49;
  LODWORD(v252) = 54;
  v64 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v110, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

  uu[0] = 16;
  v272[0] = 0;
  if (!__nwlog_fault(v64, uu, v272))
  {
    goto LABEL_253;
  }

  if (uu[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v65 = gLogObj;
    v111 = uu[0];
    if (os_log_type_enabled(v65, uu[0]))
    {
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v49 + 5;
      *&v280[8] = 2048;
      *v281 = v260;
      *&v281[8] = 1024;
      *v282 = v257;
      *&v282[4] = 1024;
      *&v282[6] = v49;
      _os_log_impl(&dword_181A37000, v65, v111, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
    }

    goto LABEL_252;
  }

  if (v272[0] != 1)
  {
    v65 = __nwlog_obj();
    v132 = uu[0];
    if (os_log_type_enabled(v65, uu[0]))
    {
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v49 + 5;
      *&v280[8] = 2048;
      *v281 = v260;
      *&v281[8] = 1024;
      *v282 = v257;
      *&v282[4] = 1024;
      *&v282[6] = v49;
      _os_log_impl(&dword_181A37000, v65, v132, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
    }

    goto LABEL_252;
  }

  v114 = __nw_create_backtrace_string();
  v65 = __nwlog_obj();
  v123 = uu[0];
  v124 = os_log_type_enabled(v65, uu[0]);
  if (!v114)
  {
    if (v124)
    {
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v49 + 5;
      *&v280[8] = 2048;
      *v281 = v260;
      *&v281[8] = 1024;
      *v282 = v257;
      *&v282[4] = 1024;
      *&v282[6] = v49;
      _os_log_impl(&dword_181A37000, v65, v123, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
    }

    goto LABEL_252;
  }

  if (v124)
  {
    *buf = 136447746;
    *&buf[4] = "nw_necp_append_tlv";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    *v280 = v49 + 5;
    *&v280[8] = 2048;
    *v281 = v260;
    *&v281[8] = 1024;
    *v282 = v257;
    *&v282[4] = 1024;
    *&v282[6] = v49;
    v283 = 2082;
    v284 = v114;
    _os_log_impl(&dword_181A37000, v65, v123, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
  }

LABEL_210:
  free(v114);
  if (v64)
  {
LABEL_254:
    free(v64);
  }

LABEL_255:
  a3 = 0;
  if ((a5 & 1) == 0)
  {
    goto LABEL_290;
  }

LABEL_256:
  *uu = 0;
  v275 = 0;
  nw_endpoint_get_agent_identifier(v11, uu);
  v134 = v255;
  *v272 = 0;
  v273 = 0;
  nw_endpoint_get_preferred_agent_identifier(v11);
  is_null = uuid_is_null(uu);
  if (!is_null)
  {
    v136 = uu;
    if (!a3)
    {
LABEL_270:
      v141 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
      LODWORD(v252) = 12;
      v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null cursor", buf, v252);

      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v138, &__src, &type))
      {
        goto LABEL_287;
      }

      if (__src == 17)
      {
        v139 = __nwlog_obj();
        v142 = __src;
        if (os_log_type_enabled(v139, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
          _os_log_impl(&dword_181A37000, v139, v142, "%{public}s called with null cursor", buf, 0xCu);
        }

LABEL_286:

        goto LABEL_287;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v139 = __nwlog_obj();
        v247 = __src;
        if (os_log_type_enabled(v139, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
          _os_log_impl(&dword_181A37000, v139, v247, "%{public}s called with null cursor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_286;
      }

      v239 = __nw_create_backtrace_string();
      v139 = __nwlog_obj();
      v240 = __src;
      v241 = os_log_type_enabled(v139, __src);
      if (!v239)
      {
        if (v241)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
          _os_log_impl(&dword_181A37000, v139, v240, "%{public}s called with null cursor, no backtrace", buf, 0xCu);
        }

        goto LABEL_286;
      }

      if (v241)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
        *&buf[12] = 2082;
        *&buf[14] = v239;
        _os_log_impl(&dword_181A37000, v139, v240, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v239);
LABEL_287:
      if (!v138)
      {
LABEL_289:
        a3 = 0;
LABEL_290:
        v134 = v255;
        if ((a5 & 2) == 0)
        {
          goto LABEL_320;
        }

        goto LABEL_291;
      }

LABEL_288:
      free(v138);
      goto LABEL_289;
    }

LABEL_261:
    if (a3 >= v260)
    {
      v228 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v260;
      LODWORD(v252) = 32;
      v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v228, 16, "%{public}s Invalid cursor %p >= beyond %p", buf, v252);

      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v138, &__src, &type))
      {
        if (__src == 17)
        {
          v139 = __nwlog_obj();
          v229 = __src;
          if (os_log_type_enabled(v139, __src))
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v260;
            _os_log_impl(&dword_181A37000, v139, v229, "%{public}s Invalid cursor %p >= beyond %p", buf, 0x20u);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v242 = __nw_create_backtrace_string();
          v139 = __nwlog_obj();
          v243 = __src;
          v244 = os_log_type_enabled(v139, __src);
          if (v242)
          {
            if (v244)
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v260;
              *&v280[8] = 2082;
              *v281 = v242;
              _os_log_impl(&dword_181A37000, v139, v243, "%{public}s Invalid cursor %p >= beyond %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v242);
            if (!v138)
            {
              goto LABEL_289;
            }

            goto LABEL_288;
          }

          if (v244)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v260;
            _os_log_impl(&dword_181A37000, v139, v243, "%{public}s Invalid cursor %p >= beyond %p, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v139 = __nwlog_obj();
          v248 = __src;
          if (os_log_type_enabled(v139, __src))
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_add_endpoint_agent_uuid_to_necp_message";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v260;
            _os_log_impl(&dword_181A37000, v139, v248, "%{public}s Invalid cursor %p >= beyond %p, backtrace limit exceeded", buf, 0x20u);
          }
        }

        goto LABEL_286;
      }
    }

    else
    {
      __src = *v136;
      if (v260 - a3 > 0x15)
      {
        *a3 = -100;
        *(a3 + 1) = 17;
        *(a3 + 5) = is_null != 0;
        *(a3 + 6) = __src;
        a3 += 22;
        goto LABEL_290;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v137 = gLogObj;
      *buf = 136447490;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = 22;
      *&v280[8] = 2048;
      *v281 = v260;
      *&v281[8] = 1024;
      *v282 = 156;
      *&v282[4] = 1024;
      *&v282[6] = 17;
      LODWORD(v252) = 54;
      v138 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v137, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

      type = OS_LOG_TYPE_ERROR;
      v269 = 0;
      if (__nwlog_fault(v138, &type, &v269))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v139 = gLogObj;
          v140 = type;
          if (os_log_type_enabled(v139, type))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = 22;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = 156;
            *&v282[4] = 1024;
            *&v282[6] = 17;
            _os_log_impl(&dword_181A37000, v139, v140, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
          }
        }

        else if (v269 == 1)
        {
          v143 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v139 = gLogObj;
          v144 = type;
          v145 = os_log_type_enabled(v139, type);
          if (v143)
          {
            if (v145)
            {
              *buf = 136447746;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = 22;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 156;
              *&v282[4] = 1024;
              *&v282[6] = 17;
              v283 = 2082;
              v284 = v143;
              _os_log_impl(&dword_181A37000, v139, v144, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
            }

            free(v143);
            if (!v138)
            {
              goto LABEL_289;
            }

            goto LABEL_288;
          }

          if (v145)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = 22;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = 156;
            *&v282[4] = 1024;
            *&v282[6] = 17;
            _os_log_impl(&dword_181A37000, v139, v144, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v139 = gLogObj;
          v146 = type;
          if (os_log_type_enabled(v139, type))
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = 22;
            *&v280[8] = 2048;
            *v281 = v260;
            *&v281[8] = 1024;
            *v282 = 156;
            *&v282[4] = 1024;
            *&v282[6] = 17;
            _os_log_impl(&dword_181A37000, v139, v146, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
          }
        }

        goto LABEL_286;
      }
    }

    goto LABEL_287;
  }

  if (!uuid_is_null(v272))
  {
    v136 = v272;
    if (!a3)
    {
      goto LABEL_270;
    }

    goto LABEL_261;
  }

  if ((a5 & 2) == 0)
  {
    goto LABEL_320;
  }

LABEL_291:
  device_id = nw_endpoint_get_device_id(v11);
  v148 = device_id;
  if (device_id)
  {
    v149 = strlen(device_id);
    if (a3)
    {
      v150 = v149;
      if (a3 < v260)
      {
        v151 = v149 + 5;
        if (v260 - a3 >= v151)
        {
          *a3 = -98;
          *(a3 + 1) = v149;
          if (v149)
          {
            memcpy((a3 + 5), v148, v149);
          }

          a3 += v151;
          goto LABEL_319;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v152 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v151;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = 158;
        *&v282[4] = 1024;
        *&v282[6] = v150;
        LODWORD(v252) = 54;
        v153 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v152, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v153, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v154 = gLogObj;
            v155 = __src;
            if (os_log_type_enabled(v154, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v151;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 158;
              *&v282[4] = 1024;
              *&v282[6] = v150;
              _os_log_impl(&dword_181A37000, v154, v155, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
            }
          }

          else if (uu[0] == 1)
          {
            v156 = __nw_create_backtrace_string();
            if (v156)
            {
              v157 = v156;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v158 = gLogObj;
              v159 = __src;
              if (os_log_type_enabled(v158, __src))
              {
                *buf = 136447746;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v280 = v151;
                *&v280[8] = 2048;
                *v281 = v260;
                *&v281[8] = 1024;
                *v282 = 158;
                *&v282[4] = 1024;
                *&v282[6] = v150;
                v283 = 2082;
                v284 = v157;
                _os_log_impl(&dword_181A37000, v158, v159, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
              }

              free(v157);
              if (!v153)
              {
                goto LABEL_318;
              }

LABEL_316:
              v162 = v153;
LABEL_317:
              free(v162);
              goto LABEL_318;
            }

            v154 = __nwlog_obj();
            v161 = __src;
            if (os_log_type_enabled(v154, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v151;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 158;
              *&v282[4] = 1024;
              *&v282[6] = v150;
              _os_log_impl(&dword_181A37000, v154, v161, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v154 = gLogObj;
            v160 = __src;
            if (os_log_type_enabled(v154, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v151;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 158;
              *&v282[4] = 1024;
              *&v282[6] = v150;
              _os_log_impl(&dword_181A37000, v154, v160, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
            }
          }

          goto LABEL_314;
        }

LABEL_315:
        if (!v153)
        {
LABEL_318:
          a3 = 0;
LABEL_319:
          v134 = v255;
          goto LABEL_320;
        }

        goto LABEL_316;
      }

      v226 = __nwlog_obj();
      *buf = 136447234;
      *&buf[4] = "nw_necp_append_tlv";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      *v280 = v260;
      *&v280[8] = 1024;
      *v281 = 158;
      *&v281[4] = 1024;
      *&v281[6] = v150;
      LODWORD(v252) = 44;
      v153 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v226, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v252);

      LOBYTE(__src) = 16;
      uu[0] = 0;
      if (!__nwlog_fault(v153, &__src, uu))
      {
        goto LABEL_315;
      }

      if (__src == 17)
      {
        v154 = __nwlog_obj();
        v227 = __src;
        if (os_log_type_enabled(v154, __src))
        {
          *buf = 136447234;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v260;
          *&v280[8] = 1024;
          *v281 = 158;
          *&v281[4] = 1024;
          *&v281[6] = v150;
          _os_log_impl(&dword_181A37000, v154, v227, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
        }
      }

      else if (uu[0] == 1)
      {
        v236 = __nw_create_backtrace_string();
        v154 = __nwlog_obj();
        v237 = __src;
        v238 = os_log_type_enabled(v154, __src);
        if (v236)
        {
          if (v238)
          {
            *buf = 136447490;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2048;
            *v280 = v260;
            *&v280[8] = 1024;
            *v281 = 158;
            *&v281[4] = 1024;
            *&v281[6] = v150;
            *v282 = 2082;
            *&v282[2] = v236;
            _os_log_impl(&dword_181A37000, v154, v237, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v236);
          goto LABEL_315;
        }

        if (v238)
        {
          *buf = 136447234;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v260;
          *&v280[8] = 1024;
          *v281 = 158;
          *&v281[4] = 1024;
          *&v281[6] = v150;
          _os_log_impl(&dword_181A37000, v154, v237, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
        }
      }

      else
      {
        v154 = __nwlog_obj();
        v246 = __src;
        if (os_log_type_enabled(v154, __src))
        {
          *buf = 136447234;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          *&buf[22] = 2048;
          *v280 = v260;
          *&v280[8] = 1024;
          *v281 = 158;
          *&v281[4] = 1024;
          *&v281[6] = v150;
          _os_log_impl(&dword_181A37000, v154, v246, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
        }
      }

LABEL_314:

      goto LABEL_315;
    }

    v222 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_necp_append_tlv";
    LODWORD(v252) = 12;
    v223 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s called with null tlv_start", buf, v252);

    LOBYTE(__src) = 16;
    uu[0] = 0;
    if (__nwlog_fault(v223, &__src, uu))
    {
      if (__src == 17)
      {
        v224 = __nwlog_obj();
        v225 = __src;
        if (os_log_type_enabled(v224, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v224, v225, "%{public}s called with null tlv_start", buf, 0xCu);
        }
      }

      else if (uu[0] == 1)
      {
        v233 = __nw_create_backtrace_string();
        v224 = __nwlog_obj();
        v234 = __src;
        v235 = os_log_type_enabled(v224, __src);
        if (v233)
        {
          if (v235)
          {
            *buf = 136446466;
            *&buf[4] = "nw_necp_append_tlv";
            *&buf[12] = 2082;
            *&buf[14] = v233;
            _os_log_impl(&dword_181A37000, v224, v234, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v233);
          goto LABEL_518;
        }

        if (v235)
        {
          *buf = 136446210;
          *&buf[4] = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v224, v234, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v224 = __nwlog_obj();
        v245 = __src;
        if (os_log_type_enabled(v224, __src))
        {
          *buf = 136446210;
          *&buf[4] = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v224, v245, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_518:
    if (!v223)
    {
      goto LABEL_318;
    }

    v162 = v223;
    goto LABEL_317;
  }

LABEL_320:
  if ((a5 & 4) == 0)
  {
    goto LABEL_411;
  }

  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v163 = nw_endpoint_copy_public_keys(v11);
  obj = v163;
  v164 = [v163 countByEnumeratingWithState:&v261 objects:v271 count:16];
  if (!v164)
  {
    goto LABEL_410;
  }

  v259 = *v262;
  do
  {
    for (i = 0; i != v164; ++i)
    {
      if (*v262 != v259)
      {
        objc_enumerationMutation(obj);
      }

      v166 = *(*(&v261 + 1) + 8 * i);
      v167 = [v166 length];
      v168 = [v166 bytes];
      if (!a3)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v179 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_necp_append_tlv";
        LODWORD(v252) = 12;
        v180 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v179, 16, "%{public}s called with null tlv_start", buf, v252);

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v180, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v181 = gLogObj;
            v182 = __src;
            if (os_log_type_enabled(v181, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_necp_append_tlv";
              _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null tlv_start", buf, 0xCu);
            }

            goto LABEL_395;
          }

          if (uu[0] == 1)
          {
            v187 = __nw_create_backtrace_string();
            if (v187)
            {
              v188 = v187;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v189 = gLogObj;
              v190 = __src;
              if (os_log_type_enabled(v189, __src))
              {
                *buf = 136446466;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2082;
                *&buf[14] = v188;
                _os_log_impl(&dword_181A37000, v189, v190, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v188);
              if (!v180)
              {
                goto LABEL_325;
              }

LABEL_397:
              v178 = v180;
LABEL_324:
              free(v178);
LABEL_325:
              a3 = 0;
              continue;
            }

            v181 = __nwlog_obj();
            v202 = __src;
            if (os_log_type_enabled(v181, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_necp_append_tlv";
              _os_log_impl(&dword_181A37000, v181, v202, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v181 = gLogObj;
            v197 = __src;
            if (os_log_type_enabled(v181, __src))
            {
              *buf = 136446210;
              *&buf[4] = "nw_necp_append_tlv";
              _os_log_impl(&dword_181A37000, v181, v197, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_395:
        }

        if (v180)
        {
          goto LABEL_397;
        }

        goto LABEL_325;
      }

      if (a3 >= v260)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v183 = gLogObj;
        *buf = 136447234;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v260;
        *&v280[8] = 1024;
        *v281 = 159;
        *&v281[4] = 1024;
        *&v281[6] = v167;
        LODWORD(v252) = 44;
        v184 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v183, 16, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, v252);

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v184, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v185 = gLogObj;
            v186 = __src;
            if (os_log_type_enabled(v185, __src))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v260;
              *&v280[8] = 1024;
              *v281 = 159;
              *&v281[4] = 1024;
              *&v281[6] = v167;
              _os_log_impl(&dword_181A37000, v185, v186, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
            }

            goto LABEL_400;
          }

          if (uu[0] == 1)
          {
            v191 = __nw_create_backtrace_string();
            if (v191)
            {
              v192 = v191;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v193 = gLogObj;
              v194 = __src;
              if (os_log_type_enabled(v193, __src))
              {
                *buf = 136447490;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v280 = v260;
                *&v280[8] = 1024;
                *v281 = 159;
                *&v281[4] = 1024;
                *&v281[6] = v167;
                *v282 = 2082;
                *&v282[2] = v192;
                _os_log_impl(&dword_181A37000, v193, v194, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
              }

              free(v192);
              if (!v184)
              {
                goto LABEL_325;
              }

              goto LABEL_402;
            }

            v185 = __nwlog_obj();
            v203 = __src;
            if (os_log_type_enabled(v185, __src))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v260;
              *&v280[8] = 1024;
              *v281 = 159;
              *&v281[4] = 1024;
              *&v281[6] = v167;
              _os_log_impl(&dword_181A37000, v185, v203, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v185 = gLogObj;
            v198 = __src;
            if (os_log_type_enabled(v185, __src))
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v260;
              *&v280[8] = 1024;
              *v281 = 159;
              *&v281[4] = 1024;
              *&v281[6] = v167;
              _os_log_impl(&dword_181A37000, v185, v198, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
            }
          }

LABEL_400:
        }

        if (!v184)
        {
          goto LABEL_325;
        }

LABEL_402:
        v178 = v184;
        goto LABEL_324;
      }

      v169 = v167 + 5;
      if (v260 - a3 < v169)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v170 = gLogObj;
        *buf = 136447490;
        *&buf[4] = "nw_necp_append_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        *&buf[22] = 2048;
        *v280 = v167 + 5;
        *&v280[8] = 2048;
        *v281 = v260;
        *&v281[8] = 1024;
        *v282 = 159;
        *&v282[4] = 1024;
        *&v282[6] = v167;
        LODWORD(v252) = 54;
        v171 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v170, 16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, v252);

        LOBYTE(__src) = 16;
        uu[0] = 0;
        if (__nwlog_fault(v171, &__src, uu))
        {
          if (__src == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v172 = gLogObj;
            v173 = __src;
            if (os_log_type_enabled(v172, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v167 + 5;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 159;
              *&v282[4] = 1024;
              *&v282[6] = v167;
              _os_log_impl(&dword_181A37000, v172, v173, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
            }

            goto LABEL_352;
          }

          if (uu[0] == 1)
          {
            v174 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v172 = gLogObj;
            v175 = __src;
            v176 = os_log_type_enabled(v172, __src);
            if (v174)
            {
              if (v176)
              {
                *buf = 136447746;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 2048;
                *&buf[14] = a3;
                *&buf[22] = 2048;
                *v280 = v167 + 5;
                *&v280[8] = 2048;
                *v281 = v260;
                *&v281[8] = 1024;
                *v282 = 159;
                *&v282[4] = 1024;
                *&v282[6] = v167;
                v283 = 2082;
                v284 = v174;
                _os_log_impl(&dword_181A37000, v172, v175, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
              }

              free(v174);
              if (!v171)
              {
                goto LABEL_325;
              }

              goto LABEL_354;
            }

            if (v176)
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v167 + 5;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 159;
              *&v282[4] = 1024;
              *&v282[6] = v167;
              _os_log_impl(&dword_181A37000, v172, v175, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v172 = gLogObj;
            v177 = __src;
            if (os_log_type_enabled(v172, __src))
            {
              *buf = 136447490;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 2048;
              *&buf[14] = a3;
              *&buf[22] = 2048;
              *v280 = v167 + 5;
              *&v280[8] = 2048;
              *v281 = v260;
              *&v281[8] = 1024;
              *v282 = 159;
              *&v282[4] = 1024;
              *&v282[6] = v167;
              _os_log_impl(&dword_181A37000, v172, v177, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
            }
          }

LABEL_352:
        }

        goto LABEL_353;
      }

      *a3 = -97;
      *(a3 + 1) = v167;
      if (v167)
      {
        if (!v168)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v195 = gLogObj;
          *buf = 136446722;
          *&buf[4] = "nw_necp_append_tlv";
          *&buf[12] = 1024;
          *&buf[14] = 159;
          *&buf[18] = 1024;
          *&buf[20] = v167;
          LODWORD(v252) = 24;
          v171 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v195, 16, "%{public}s type=%u length=%u but value is NULL", buf, v252);

          LOBYTE(__src) = 16;
          uu[0] = 0;
          if (__nwlog_fault(v171, &__src, uu))
          {
            if (__src == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v172 = gLogObj;
              v196 = __src;
              if (os_log_type_enabled(v172, __src))
              {
                *buf = 136446722;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 159;
                *&buf[18] = 1024;
                *&buf[20] = v167;
                _os_log_impl(&dword_181A37000, v172, v196, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
              }

              goto LABEL_352;
            }

            if (uu[0] != 1)
            {
              v172 = __nwlog_obj();
              v204 = __src;
              if (os_log_type_enabled(v172, __src))
              {
                *buf = 136446722;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 159;
                *&buf[18] = 1024;
                *&buf[20] = v167;
                _os_log_impl(&dword_181A37000, v172, v204, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_352;
            }

            v199 = __nw_create_backtrace_string();
            v172 = __nwlog_obj();
            v200 = __src;
            v201 = os_log_type_enabled(v172, __src);
            if (!v199)
            {
              if (v201)
              {
                *buf = 136446722;
                *&buf[4] = "nw_necp_append_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 159;
                *&buf[18] = 1024;
                *&buf[20] = v167;
                _os_log_impl(&dword_181A37000, v172, v200, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
              }

              goto LABEL_352;
            }

            if (v201)
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_append_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 159;
              *&buf[18] = 1024;
              *&buf[20] = v167;
              *v280 = 2082;
              *&v280[2] = v199;
              _os_log_impl(&dword_181A37000, v172, v200, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
            }

            free(v199);
          }

LABEL_353:
          if (!v171)
          {
            goto LABEL_325;
          }

LABEL_354:
          v178 = v171;
          goto LABEL_324;
        }

        memcpy((a3 + 5), v168, v167);
      }

      a3 += v169;
    }

    v163 = obj;
    v164 = [obj countByEnumeratingWithState:&v261 objects:v271 count:16];
  }

  while (v164);
LABEL_410:

  v134 = v255;
LABEL_411:
  if (v134)
  {
    free(v134);
  }

  v205 = v253;
LABEL_414:

  return a3;
}

char *_nw_endpoint_create_host_with_numeric_port_0(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = sub_182AD3158();
    v5 = v4;
    sub_181AB3234(a2, &v9);
    v6 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    if (v9 == 1)
    {
      v9 = 0;
      *&v10 = 0;
      *(&v10 + 1) = v3;
      *&v11 = v5;
      WORD4(v11) = a2;
      *(&v11 + 10) = 0;
      v7 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      return Endpoint.init(_:)(&v9);
    }

    else
    {

      v9 = v6;
      v10 = v14;
      v11 = v15;
      v12 = v16;
      v13 = v17;
      v8 = objc_allocWithZone(type metadata accessor for Endpoint(0));
      return Endpoint.init(_:)(&v9);
    }
  }

  return result;
}

uint64_t sub_181AB284C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_182AD3168();
    if (__OFADD__(result, 1))
    {
      goto LABEL_10;
    }

    v4 = sub_182AD3168();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  type metadata accessor for CString(0);
  result = swift_allocObject();
  if (!__OFADD__(v4, 1))
  {
    *(result + 16) = v4 + 1;
    v6 = result;

    sub_181AB2DD8(a1, a2, (v6 + 24), a1, a2);
    return v6;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CString(uint64_t a1)
{
  result = qword_1ED410048;
  if (!qword_1ED410048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181AB2960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B608, &qword_182B013C0);
  v30 = v4;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_182AD44E8();
      MEMORY[0x1865DB070](v20);
      result = sub_182AD4558();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_181AB2BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16) && (v12 = sub_181A41ED0(), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14 + 24;

    v16 = sub_182AD3158();
    if (a4)
    {
      if (v16 == a3 && v17 == a4)
      {

LABEL_18:

        goto LABEL_19;
      }

      v19 = sub_182AD4268();

      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    swift_beginAccess();
    sub_18224FFEC(a2);
    swift_endAccess();

    if (!a4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = swift_endAccess();
    if (!a4)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_19;
    }
  }

  v21 = sub_181AB284C(a3, a4);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_181AB36FC(v21, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v24;
  result = swift_endAccess();
  if (*(v24 + 16))
  {
    result = sub_181A41ED0();
    if (v23)
    {
      v15 = *(*(v24 + 56) + 8 * result) + 24;
LABEL_19:
      *a5 = v15;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181AB2DD8(uint64_t a1, uint64_t a2, void *__dst, uint64_t a4, unint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a5 & 0x1000000000000000) != 0)
    {
      v11 = __dst;
      v9 = sub_182AD3168();
      __dst = v11;
      v6 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
LABEL_15:
        v7 = __src;
        goto LABEL_16;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a5) & 0xF;
      }

      else
      {
        v8 = a4 & 0xFFFFFFFFFFFFLL;
      }

      v6 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_18:
    sub_182AD3B78();
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a5) & 0xF;
    }

    else
    {
      result = a4 & 0xFFFFFFFFFFFFLL;
    }

    v6 = result + 1;
    if (!__OFADD__(result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_22:
  v10 = a2;
  v12 = __dst;
  result = sub_182AD3168();
  a2 = v10;
  __dst = v12;
  v6 = result + 1;
  if (!__OFADD__(result, 1))
  {
LABEL_9:
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_16:
    memcpy(__dst, v7, v6);
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t _nw_endpoint_get_hostname_0(char *a1)
{
  v2 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v7, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    sub_181B2BEE4(v7, v4);
    v21 = sub_182AD1FF8();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 12, v23, v24, &v32);

    os_unfair_lock_unlock((*&v9[v25] + 16));
    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
LABEL_20:

    return v32;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload)
    {

      sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
      return 0;
    }

    v11 = *(v7 + 2);
    v12 = *(v7 + 3);
    v13 = *(v7 + 4);
    v14 = *(v7 + 20);
    v15 = v7[42];
    v31 = v13;
    if ((v15 - 2) >= 3)
    {
      if (v15)
      {
        v32 = v11;
        v33 = v12;
        v34 = v13;
        v27 = IPv6Address.debugDescription.getter();
      }

      else
      {
        LODWORD(v32) = v11;
        v33 = v12;
        v27 = IPv4Address.debugDescription.getter();
      }

      v16 = v27;
      v17 = v28;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v29 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 12, v16, v17, &v32);

    os_unfair_lock_unlock((*&v9[v29] + 16));

    sub_181AD1DE4(v11, v12, v31, v14, v15);
    goto LABEL_20;
  }

  v18 = *(v7 + 2);
  v19 = *(v7 + 3);
  v20 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
  sub_181AB2BF0(v9, 12, v18, v19, &v32);
  os_unfair_lock_unlock((*&v9[v20] + 16));

  return v32;
}

__n128 sub_181AB3234@<Q0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  LOWORD(v3) = a2;
  v28 = *MEMORY[0x1E69E9840];
  *&v27.ai_flags = xmmword_182AF5DE0;
  v27.ai_addrlen = 0;
  memset(&v27.ai_canonname, 0, 24);
  v15 = 0u;
  v26 = 0;
  v5 = sub_182AD3048();
  v6 = getaddrinfo((v5 + 32), 0, &v27, &v26);

  v16 = xmmword_182AE69F0;
  if (v6 || !v26 || (ai_addr = v26->ai_addr) == 0)
  {
LABEL_2:
    v7 = 0;
    v3 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_3;
  }

  sa_family = ai_addr->sa_family;
  if (sa_family != 30)
  {
    if (sa_family == 2)
    {
      v13 = *&ai_addr->sa_data[2];
      *(&v24 + 4) = 0;
      BYTE12(v24) = 1;
      *&v23[1] = v13;
      LOWORD(v24) = 0;
      BYTE2(v24) = 0;
      sub_181AD2448(0);
      v15 = *&v23[1];
      v16 = 0uLL;
      v3 = v3;
      v9 = *(&v24 + 1);
      v8 = v24;
      v7 = 0;
      v22 = 1;
      memset(v23, 0, sizeof(v23));
      v24 = 0u;
      v25 = 0;
      sub_181F49A88(&v22, &unk_1EA83A480, &qword_182AFB9A0);
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v7 = *&ai_addr[1].sa_data[6];
  sub_181C2EC98(*&ai_addr->sa_data[6], *&ai_addr[1].sa_len, v3, v17);
  v15 = v17[1];
  v16 = v17[0];
  v3 = v18;
  v8 = v19;
  v9 = v20;
  v14 = v21;
  v22 = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0u;
  v25 = 0;
  sub_181F49A88(&v22, &unk_1EA83A480, &qword_182AFB9A0);
  if (v16 == 1)
  {
    v7 = v14;
  }

LABEL_3:
  freeaddrinfo(v26);
  result = v16;
  *a3 = v16;
  *(a3 + 16) = v15;
  *(a3 + 32) = v3;
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  *(a3 + 56) = v7;
  return result;
}

const char *__cdecl nw_endpoint_get_hostname(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    hostname = _nw_endpoint_get_hostname(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_hostname";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null endpoint", buf, 12);

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
        v16 = "nw_endpoint_get_hostname";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_get_hostname";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_hostname";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_hostname";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  hostname = 0;
LABEL_3:

  return hostname;
}

unint64_t sub_181AB36FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_181A41ED8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_181AB2960(v14, a3 & 1);
      result = sub_181A41ED8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_182254CDC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

char *Endpoint.init(_:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 8);
  v9 = *(a1 + 18);
  v10 = &v2[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
  *v10 = 0;
  v10[2] = 1;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_cnames] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
  v11 = OBJC_IVAR____TtC7Network8Endpoint_lock;
  type metadata accessor for SystemLock._Storage(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v2[v11] = v12;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_addressStorage] = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_alternativeEndpoints] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_associations] = v13;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_context] = 0;
  v2[OBJC_IVAR____TtC7Network8Endpoint_dnsFailureReason] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_echConfig] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_edges] = v13;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_ethernetAddressStorage] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_registrar] = 0;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_signature] = 0;
  v14 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  *&v2[v14] = sub_181A552E8(v13);
  v15 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v2[v15] = v16;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v13;
  v2[OBJC_IVAR____TtC7Network8Endpoint_remoteInterfaceType] = 5;
  *&v2[OBJC_IVAR____TtC7Network8Endpoint_flags] = 0;
  v17 = &v2[OBJC_IVAR____TtC7Network8Endpoint_type];
  *v17 = v4;
  *(v17 + 1) = v5;
  *(v17 + 2) = v7;
  *(v17 + 3) = v6;
  *(v17 + 8) = v8;
  *(v17 + 18) = v9;
  type metadata accessor for Endpoint.EndpointType(0);
  swift_storeEnumTagMultiPayload();
  v23.receiver = v2;
  v23.super_class = ObjectType;

  v18 = objc_msgSendSuper2(&v23, sel_init);
  if (sub_182AD31F8())
  {
  }

  else
  {
    v19 = sub_182AD31F8();

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v18 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((v20 & 8) == 0)
  {
    *(v18 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v20 | 8;
  }

LABEL_6:

  return v18;
}

void *__cdecl nw_retain(void *obj)
{
  if (obj)
  {
    return os_retain(obj);
  }

  return obj;
}

uint16_t nw_endpoint_get_port(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    port = _nw_endpoint_get_port(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_port";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null endpoint", buf, 12);

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
        v16 = "nw_endpoint_get_port";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_get_port";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_port";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_port";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  port = 0;
LABEL_3:

  return port;
}

uint64_t sub_181AB3DCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

nw_endpoint_type_t nw_endpoint_get_type(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_get_type(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_type";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null endpoint", buf, 12);

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
        v16 = "nw_endpoint_get_type";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_get_type";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_type";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_get_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = nw_endpoint_type_invalid;
LABEL_3:

  return v3;
}

uint64_t sub_181AB40C8(char *a1)
{
  v2 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(&a1[v8], v7, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      v11 = *(v7 + 16);

      return v11;
    }

    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_6;
    }

    sub_181B2BEE4(v7, v4);
    v11 = sub_182AD2028();
    v22 = v21;

    if (v22)
    {
      v11 = *&v4[*(v2 + 28)];
    }

    sub_181A5513C(v4, type metadata accessor for URLEndpoint);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
LABEL_6:

      sub_181A5513C(v7, type metadata accessor for Endpoint.EndpointType);
      return 0;
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    v14 = *(v7 + 4);
    v11 = *(v7 + 20);
    v15 = v7[42];
    if (v15 > 1)
    {
      if (v15 == 2)
      {

        v16 = v13;
        v17 = v12;
        v18 = v14;
        v19 = v11;
        v20 = 2;
      }

      else if (v15 == 3)
      {

        v16 = v13;
        v17 = v12;
        v18 = v14;
        v19 = v11;
        v20 = 3;
      }

      else
      {

        v16 = v13;
        v17 = v12;
        v18 = v14;
        v19 = v11;
        v20 = 4;
      }

      sub_181AD1DE4(v16, v17, v18, v19, v20);
      return 0;
    }

    if (v7[42])
    {

      sub_181AD1DE4(v13, v12, v14, v11, 1u);
    }

    else
    {

      sub_181AD1DE4(v13, v12, v14, v11, 0);
      return v14;
    }
  }

  return v11;
}

unint64_t sub_181AB43B4(void *a1)
{
  v1 = a1;
  sub_181AB5F54(&v4);

  if (!v4)
  {
    return 0;
  }

  result = *(v4 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v3 = nw_interface_create_with_index(result);

    return v3;
  }

  __break(1u);
  return result;
}

id _nw_array_create()
{
  v0 = objc_allocWithZone(type metadata accessor for NWArray());

  return [v0 init];
}

uint64_t _nw_array_prependTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  a3(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_181AB456C(char *a1, uint64_t a2)
{
  v3 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v4 = a1;
  LOBYTE(v5) = atomic_load_explicit(v3(), memory_order_acquire);
  if (v5)
  {
    should_abort = __nwlog_should_abort("cannot append during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v8 = *(*&v4[v7] + 24);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *&v4[v7];
    if (*(v11 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ACC600(isUniquelyReferenced_nonNull_native, v9, 0);
      v11 = *&v4[v7];
    }

    sub_181AB467C((v11 + 16), v11 + 40, a2);
    swift_endAccess();
  }
}

void *sub_181AB467C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
          return swift_unknownObjectRetain();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void nw_context_purge_all_endpoints(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __nw_context_purge_all_endpoints_block_invoke;
    v11[3] = &unk_1E6A3D868;
    v12 = v1;
    nw_queue_context_async_if_needed(v12, v11);

    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_context_purge_all_endpoints";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null context", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v4, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_context_purge_all_endpoints";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v16 = "nw_context_purge_all_endpoints";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v16 = "nw_context_purge_all_endpoints";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_context_purge_all_endpoints";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_context_dealloc(NWConcrete_nw_context *a1, int a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3 || *(v3 + 33) != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v70 = "nw_context_dealloc";
      v71 = 2114;
      v72 = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Deallocating context %{public}@", buf, 0x16u);
    }
  }

  v68 = 0;
  pthread_threadid_np(0, &v68);
  if (*(v4 + 32) == 4)
  {
    v43 = 0;
    atomic_compare_exchange_strong(v4 + 15, &v43, v68);
    if (v43)
    {
      v44 = __nwlog_obj();
      *buf = 136446722;
      v70 = "nw_context_dealloc";
      v71 = 2048;
      v72 = v68;
      v73 = 2048;
      v63 = v43;
      v74 = v43;
      v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 32);

      type = OS_LOG_TYPE_ERROR;
      v66 = 0;
      if (__nwlog_fault(v45, &type, &v66))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v46 = __nwlog_obj();
          v47 = type;
          if (os_log_type_enabled(v46, type))
          {
            *buf = 136446722;
            v70 = "nw_context_dealloc";
            v71 = 2048;
            v72 = v68;
            v73 = 2048;
            v74 = v63;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu", buf, 0x20u);
          }
        }

        else if (v66 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v46 = __nwlog_obj();
          v55 = type;
          v56 = os_log_type_enabled(v46, type);
          if (backtrace_string)
          {
            if (v56)
            {
              *buf = 136446978;
              v70 = "nw_context_dealloc";
              v71 = 2048;
              v72 = v68;
              v73 = 2048;
              v74 = v63;
              v75 = 2082;
              v76 = backtrace_string;
              _os_log_impl(&dword_181A37000, v46, v55, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_99;
          }

          if (v56)
          {
            *buf = 136446722;
            v70 = "nw_context_dealloc";
            v71 = 2048;
            v72 = v68;
            v73 = 2048;
            v74 = v63;
            _os_log_impl(&dword_181A37000, v46, v55, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v46 = __nwlog_obj();
          v60 = type;
          if (os_log_type_enabled(v46, type))
          {
            *buf = 136446722;
            v70 = "nw_context_dealloc";
            v71 = 2048;
            v72 = v68;
            v73 = 2048;
            v74 = v63;
            _os_log_impl(&dword_181A37000, v46, v60, "%{public}s Entering call, current TID=%llu, inline TID is already set to %llu, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_99:
      if (v45)
      {
        free(v45);
      }
    }
  }

  v6 = *(v4 + 5);
  if (v6)
  {
    v7 = v6;
    v8 = v7;
    if ((v7[152] & 8) != 0)
    {
      nw_context_purge_all_endpoints(v7);
    }

    else
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = ___ZL18nw_context_deallocP21NWConcrete_nw_contextb_block_invoke;
      v64[3] = &unk_1E6A3D868;
      v65 = v7;
      nw_queue_context_async(v65, v64);
    }

    if (a2)
    {
      v9 = v8[4];
      if (v9)
      {
        v10 = *(v9 + 68);
        if (v10)
        {
          nw_path_release_globals(v10, 0);
          v9 = v8[4];
          v11 = *(v9 + 68);
          if (v11)
          {
            free(v11);
            v9 = v8[4];
            *(v9 + 68) = 0;
          }
        }

        v12 = *(v9 + 188);
        if (v12)
        {
          nw_mem_buffer_manager_close(v12);
          v9 = v8[4];
          *(v9 + 188) = 0;
        }

        v13 = *(v9 + 180);
        if (v13)
        {
          nw_mem_buffer_manager_close(v13);
          v9 = v8[4];
          *(v9 + 180) = 0;
        }

        v14 = *(v9 + 172);
        if (v14)
        {
          nw_mem_buffer_manager_close(v14);
          v9 = v8[4];
          *(v9 + 172) = 0;
        }

        v15 = *(v9 + 164);
        if (v15)
        {
          nw_mem_buffer_manager_close(v15);
          v9 = v8[4];
          *(v9 + 164) = 0;
        }

        v16 = *(v9 + 156);
        if (v16)
        {
          nw_mem_buffer_manager_close(v16);
          *(v8[4] + 156) = 0;
        }
      }
    }
  }

  v17 = v4;
  v18 = *(v17 + 3);
  if (v18)
  {
    if (*(v18 + 56))
    {
      nw_queue_cancel_source(*(v18 + 56));
      v18 = *(v17 + 3);
      *(v18 + 56) = 0;
    }

    if (*(v18 + 32))
    {
      _nw_hash_table_release(*(v18 + 32));
      v18 = *(v17 + 3);
      *(v18 + 32) = 0;
    }

    if (*(v18 + 40))
    {
      _nw_hash_table_release(*(v18 + 40));
      v18 = *(v17 + 3);
      *(v18 + 40) = 0;
    }

    if (*(v18 + 48))
    {
      _nw_hash_table_release(*(v18 + 48));
      v18 = *(v17 + 3);
      *(v18 + 48) = 0;
    }

    free(v18);
    *(v17 + 3) = 0;
  }

  v19 = v17;
  v20 = *(v19 + 4);
  if (v20)
  {
    v21 = *(v20 + 92);
    *(v20 + 92) = 0;

    v23 = v19 + 32;
    v22 = *(v19 + 4);
    v24 = *(v22 + 100);
    *(v22 + 100) = 0;

    v25 = *(*(v19 + 4) + 108);
    *(*v23 + 108) = 0;

    v26 = *(*(v19 + 4) + 116);
    *(*v23 + 116) = 0;

    v27 = *(*(v19 + 4) + 124);
    *(*v23 + 124) = 0;

    v28 = *(*(v19 + 4) + 132);
    *(*v23 + 132) = 0;

    v29 = *(v19 + 4);
    if (*v29)
    {
      nw_queue_cancel_source(*v29);
      v29 = *(v19 + 4);
      *v29 = 0;
    }

    v30 = *(v29 + 24);
    if (v30)
    {
      _nw_hash_table_release(v30);
      v29 = *(v19 + 4);
      *(v29 + 24) = 0;
    }

    v31 = *(v29 + 52);
    if (v31)
    {
      nw_hash_table_apply(v31, &__block_literal_global_128);
      v29 = *(v19 + 4);
      v32 = *(v29 + 52);
      if (v32)
      {
        _nw_hash_table_release(v32);
        v29 = *(v19 + 4);
        *(v29 + 52) = 0;
      }
    }

    v33 = *(v29 + 60);
    if (v33)
    {
      if (*v33)
      {
        os_release(*v33);
        *v33 = 0;
      }

      v34 = *(v33 + 8);
      if (v34)
      {
        os_release(v34);
        *(v33 + 8) = 0;
      }

      v29 = *(v19 + 4);
      v35 = *(v29 + 60);
      if (v35)
      {
        free(v35);
        v29 = *(v19 + 4);
        *(v29 + 60) = 0;
      }
    }

    v36 = *(v29 + 68);
    if (v36)
    {
      nw_path_release_globals(v36, 0);
      v29 = *(v19 + 4);
      v37 = *(v29 + 68);
      if (v37)
      {
        free(v37);
        v29 = *(v19 + 4);
        *(v29 + 68) = 0;
      }
    }

    v38 = *(v29 + 188);
    if (v38)
    {
      nw_mem_buffer_manager_close(v38);
      v29 = *(v19 + 4);
      *(v29 + 188) = 0;
    }

    v39 = *(v29 + 180);
    if (v39)
    {
      nw_mem_buffer_manager_close(v39);
      v29 = *(v19 + 4);
      *(v29 + 180) = 0;
    }

    v40 = *(v29 + 172);
    if (v40)
    {
      nw_mem_buffer_manager_close(v40);
      v29 = *(v19 + 4);
      *(v29 + 172) = 0;
    }

    v41 = *(v29 + 164);
    if (v41)
    {
      nw_mem_buffer_manager_close(v41);
      v29 = *(v19 + 4);
      *(v29 + 164) = 0;
    }

    v42 = *(v29 + 156);
    if (v42)
    {
      nw_mem_buffer_manager_close(v42);
      v29 = *(v19 + 4);
      *(v29 + 156) = 0;
    }

    free(v29);
    *(v19 + 4) = 0;
  }

  if ((*(v19 + 152) & 8) != 0)
  {
    v48 = v68;
    v49 = v68;
    atomic_compare_exchange_strong(v19 + 15, &v49, 0);
    if (v49 != v48)
    {
      v50 = __nwlog_obj();
      *buf = 136446722;
      v70 = "nw_context_dealloc";
      v71 = 2048;
      v72 = v68;
      v73 = 2048;
      v74 = v49;
      LODWORD(v62) = 32;
      v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, v62);

      type = OS_LOG_TYPE_ERROR;
      v66 = 0;
      if (__nwlog_fault(v51, &type, &v66))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v52 = __nwlog_obj();
          v53 = type;
          if (os_log_type_enabled(v52, type))
          {
            *buf = 136446722;
            v70 = "nw_context_dealloc";
            v71 = 2048;
            v72 = v68;
            v73 = 2048;
            v74 = v49;
            _os_log_impl(&dword_181A37000, v52, v53, "%{public}s Exiting call, expected inline TID to be %llu but got %llu", buf, 0x20u);
          }
        }

        else if (v66 == 1)
        {
          v57 = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v58 = type;
          v59 = os_log_type_enabled(v52, type);
          if (v57)
          {
            if (v59)
            {
              *buf = 136446978;
              v70 = "nw_context_dealloc";
              v71 = 2048;
              v72 = v68;
              v73 = 2048;
              v74 = v49;
              v75 = 2082;
              v76 = v57;
              _os_log_impl(&dword_181A37000, v52, v58, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v57);
            goto LABEL_104;
          }

          if (v59)
          {
            *buf = 136446722;
            v70 = "nw_context_dealloc";
            v71 = 2048;
            v72 = v68;
            v73 = 2048;
            v74 = v49;
            _os_log_impl(&dword_181A37000, v52, v58, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v52 = __nwlog_obj();
          v61 = type;
          if (os_log_type_enabled(v52, type))
          {
            *buf = 136446722;
            v70 = "nw_context_dealloc";
            v71 = 2048;
            v72 = v68;
            v73 = 2048;
            v74 = v49;
            _os_log_impl(&dword_181A37000, v52, v61, "%{public}s Exiting call, expected inline TID to be %llu but got %llu, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_104:
      if (v51)
      {
        free(v51);
      }
    }
  }
}

void sub_181AB54A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_context;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_181AB5A54(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = NWConcrete_nw_path_evaluator;
  [(_Unwind_Exception *)&a14 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_181AB5B54(__n128 a1)
{
  if ((*(v1 + 158) & 8) != 0)
  {
    return 1;
  }

  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 116);
  v6 = *(v1 + 117);
  if (*v1)
  {
    if (*(*v1 + 136))
    {
      return 1;
    }

    goto LABEL_17;
  }

  v8 = *(v1 + 200);
  if (!v8)
  {
LABEL_17:
    if (v5 != 1)
    {
      return 0;
    }

LABEL_18:
    result = 0;
    if (v6 == 4 || v6 == 29)
    {
      return result;
    }

    if ((!v2 || (*(v2 + 136) & 1) == 0) && (!v4 || (*(v4 + 136) & 1) == 0))
    {
      if (!v3)
      {
        return 0;
      }

      return *(v3 + 136) & 1;
    }

    return 1;
  }

  v9 = v8[4];
  v10 = v8[2];
  if (v10 >= v8[3] + v9)
  {
    v10 = v8[3] + v9;
  }

  v28 = *(v1 + 200);
  v29 = v9;
  v30 = v10;
  v11 = v8;
  while (v9 != v10)
  {
LABEL_14:
    v12 = v9 + 1;
    v29 = v9 + 1;
    v13 = &v11[26 * v9];
    v14 = *(v13 + 9);
    v15 = *(v13 + 13);
    v16 = *(v13 + 7);
    v26[3] = *(v13 + 11);
    v26[4] = v15;
    v26[1] = v16;
    v26[2] = v14;
    v17 = *(v13 + 17);
    v18 = *(v13 + 21);
    v19 = *(v13 + 15);
    v26[7] = *(v13 + 19);
    v26[8] = v18;
    v26[5] = v19;
    v26[6] = v17;
    v20 = *(v13 + 25);
    v21 = *(v13 + 27);
    v22 = *(v13 + 23);
    *&v27[10] = *(v13 + 226);
    v26[10] = v20;
    *v27 = v21;
    v26[9] = v22;
    a1 = *(v13 + 5);
    v26[0] = a1;
    v23 = a1.n128_u64[1];
    if (a1.n128_u64[1] && (v27[24] & 1) != 0)
    {

      sub_181AFE6F4(v26, &v25);

      sub_181AFE6A0(v26);
      v24 = *(v23 + 136);

      if (v24)
      {
        return 1;
      }

      goto LABEL_17;
    }

    v10 = v30;
    v9 = v12;
  }

  if (sub_181AC81FC(a1))
  {
    v11 = v28;
    v9 = v29;
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_181AB5D28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *nw_calloc_type<unsigned char>(size_t count)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!count)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v11 = 136446210;
    v12 = "nw_calloc_type";
    v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc called with count 0", &v11, 12);
    result = __nwlog_should_abort(v9);
    if (result)
    {
      goto LABEL_14;
    }

    free(v9);
  }

  result = malloc_type_calloc(count, 1uLL, 0x1B7E0D9uLL);
  if (result)
  {
    return result;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v11 = 136446722;
  v12 = "nw_calloc_type";
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v13 = 2048;
  v14 = count;
  v15 = 2048;
  v16 = 1;
  LODWORD(v10) = 32;
  v6 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v11, v10);
  result = __nwlog_should_abort(v6);
  if (result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  free(v6);
  return 0;
}

void sub_181AB5F54(void *a1@<X8>)
{
  v3 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v9, v8, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      sub_181AA91BC(v8, v5, type metadata accessor for URLEndpoint);
      v11 = *v5;

      sub_181A5513C(v5, type metadata accessor for URLEndpoint);
      goto LABEL_8;
    }

    v11 = *v8;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v8;
      v12 = *(v8 + 2);
      v13 = *(v8 + 3);
      v14 = *(v8 + 4);
      v15 = v8[42];
      v16 = *(v8 + 20);

      sub_181AD1DE4(v12, v13, v14, v16, v15);
      goto LABEL_8;
    }

    v11 = *(*v8 + 16);
  }

LABEL_8:
  *a1 = v11;
}

uint64_t sub_181AB612C(uint64_t result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t nw_context_get_sensitive_redacted(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = v1[33], (v2 - 2) >= 2))
  {
    v3 = v2 != 1;
  }

  else
  {
    if (nwlog_get_sensitive_redacted::onceToken != -1)
    {
      v5 = v1;
      dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
      v1 = v5;
    }

    v3 = nwlog_get_sensitive_redacted::sensitiveRedacted;
  }

  return v3 & 1;
}