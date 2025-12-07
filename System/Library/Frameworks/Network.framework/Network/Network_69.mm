void nw_connection_enable_stats_report_on_nw_queue(void *a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_connection_enable_stats_report_on_nw_queue";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null connection", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v11, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_connection_enable_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_connection_enable_stats_report_on_nw_queue";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_connection_enable_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v21 = "nw_connection_enable_stats_report_on_nw_queue";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_12;
  }

  nw_context_assert_queue(v3[3]);
  v5 = *(v4 + 108);
  if (v5)
  {
LABEL_12:

    return;
  }

  if (v4[12])
  {
LABEL_11:
    *(v4 + 26) = a2;
    *(v4 + 108) = v5 | 1;
    goto LABEL_12;
  }

  v6 = malloc_type_calloc(1uLL, 0xD60uLL, 0x13431106uLL);
  if (v6)
  {
LABEL_10:
    v4[12] = v6;
    v5 = *(v4 + 108);
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v21 = "nw_connection_enable_stats_report_on_nw_queue";
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v22 = 2048;
  v23 = 1;
  v24 = 2048;
  v25 = 3424;
  v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  if (!__nwlog_should_abort(v9))
  {
    free(v9);
    v6 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t _nw_path_get_scoped_interface_index(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 72);
  if (v3 == 6)
  {
    v4 = *(v1 + 73);
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 12)
  {
    v5 = *(v1 + 73);
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

uint64_t __nw_resolver_config_enumerate_name_servers_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    v6 = *(a1 + 32);
    string_ptr = xpc_string_get_string_ptr(v4);
    v5 = (*(v6 + 16))(v6, string_ptr);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t sub_181EB1C68()
{
  v1 = OBJC_IVAR____TtC7Network7NWArray_deque;
  result = swift_beginAccess();
  v3 = *(*(v0 + v1) + 24);
  if (!v3)
  {
    return 23899;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    result = MEMORY[0x1865D9CA0](2108704, 0xE300000000000000);
    v5 = *(v0 + v1);
    if (*(v5 + 24) < 1)
    {
LABEL_11:
      __break(1u);
    }

    else
    {
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0, 0xE000000000000000);

      if (v3 == 1)
      {
LABEL_9:
        MEMORY[0x1865D9CA0](93, 0xE100000000000000);
        return 91;
      }

      v6 = 1;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        v8 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v8);

        result = MEMORY[0x1865D9CA0](2108704, 0xE300000000000000);
        if (v6 >= *(*(v0 + v1) + 24))
        {
          goto LABEL_11;
        }

        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0, 0xE000000000000000);

        ++v6;
        if (v7 == v3)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void __nw_resolver_config_get_protocol_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(v2, "Protocol");
}

void __nw_resolver_config_get_port_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(v2, "Port");
}

uint64_t nw_resolver_config_get_provider_path(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_provider_path_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_provider_path_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_provider_path";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null config", buf, 12);

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
        *&buf[4] = "nw_resolver_config_get_provider_path";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_provider_path";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_path";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_provider_path";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void sub_181EB22F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_path_is_roaming(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_roaming = _nw_path_is_roaming(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_roaming";
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
        v16 = "nw_path_is_roaming";
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
          v16 = "nw_path_is_roaming";
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
        v16 = "nw_path_is_roaming";
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
        v16 = "nw_path_is_roaming";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_roaming = 0;
LABEL_3:

  return is_roaming;
}

void sub_181EB27B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v41 = 0;
  if (v4[7] != 1)
  {
LABEL_27:

    *a2 = 0;
    *(a2 + 8) = 0;
    return;
  }

  v40 = v4;
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3] - v5;
    v7 = v6 - 216;
    if (__OFSUB__(v6, 216))
    {
      __break(1u);
      goto LABEL_29;
    }

    v8 = v5 + 216;
    v5 += 216 + v7;
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  v36 = v5;
  v37 = 0;
  v38 = 0;
  v39 = 1;
  Deserializer.uint8(_:)(&v41, &v34);
  Deserializer.uint8(_:)(&v41 + 1, &v33);
  Deserializer.uint8(_:)(&v41 + 2, &v32);
  Deserializer.uint8(_:)(&v41 + 3, &v31);
  v2 = v38;
  if (v39 != 1)
  {
LABEL_19:
    v20 = qword_1ED4106B8;

    if (v20 == -1)
    {
LABEL_20:
      v21 = sub_182AD2698();
      __swift_project_value_buffer(v21, qword_1ED411DA8);

      v22 = sub_182AD2678();
      v23 = sub_182AD38A8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35 = v25;
        *v24 = 134218242;
        *(v24 + 4) = v2;
        *(v24 + 12) = 2080;
        v34 = v4;
        v26 = NetworkAgent.description.getter();
        v28 = v27;

        v29 = sub_181C64FFC(v26, v28, &v35);

        *(v24 + 14) = v29;
        _os_log_impl(&dword_181A37000, v22, v23, "%ld bytes remained after deserializing cellular agent %s", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1865DF520](v25, -1, -1);
        MEMORY[0x1865DF520](v24, -1, -1);
      }

      else
      {
      }

      goto LABEL_24;
    }

LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  if (v38)
  {
    v9 = qword_1ED4106B8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1ED411DA8);

    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      v34 = v4;
      v15 = NetworkAgent.description.getter();
      v17 = v16;

      v18 = sub_181C64FFC(v15, v17, &v35);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_181A37000, v11, v12, "Unable to deserialize cellular agent %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    goto LABEL_27;
  }

  if (v35)
  {
    v19 = v36 - v35;
  }

  else
  {
    v19 = 0;
  }

  v2 = v19 - v37;
  if (__OFSUB__(v19, v37))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    if (!v2)
    {
LABEL_24:
      v30 = v41;
      *a2 = v40;
      *(a2 + 8) = v30;
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
}

void __nw_resolver_config_enumerate_search_domains_block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 8);
  v2 = xpc_dictionary_get_value(v5, "SearchDomains");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

size_t nw_proxy_should_flush_cache_entry(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = nw_path_signature_changed_from_previous(v8, v7);
  }

  return v10;
}

size_t nw_path_signature_changed_from_previous(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *__s1 = 136446210;
    *&__s1[4] = "nw_path_signature_changed_from_previous";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null path", __s1, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__s2[0]) = 0;
    if (!__nwlog_fault(v9, type, __s2))
    {
      goto LABEL_43;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    if (LOBYTE(__s2[0]) != 1)
    {
      v10 = __nwlog_obj();
      v19 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type[0];
    v16 = os_log_type_enabled(v10, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    if (v16)
    {
      *__s1 = 136446466;
      *&__s1[4] = "nw_path_signature_changed_from_previous";
      *&__s1[12] = 2082;
      *&__s1[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", __s1, 0x16u);
    }

    goto LABEL_30;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *__s1 = 136446210;
    *&__s1[4] = "nw_path_signature_changed_from_previous";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null previous_path", __s1, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(__s2[0]) = 0;
    if (!__nwlog_fault(v9, type, __s2))
    {
      goto LABEL_43;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null previous_path", __s1, 0xCu);
      }

LABEL_42:

LABEL_43:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_7;
    }

    if (LOBYTE(__s2[0]) != 1)
    {
      v10 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null previous_path, backtrace limit exceeded", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type[0];
    v18 = os_log_type_enabled(v10, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        *__s1 = 136446210;
        *&__s1[4] = "nw_path_signature_changed_from_previous";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null previous_path, no backtrace", __s1, 0xCu);
      }

      goto LABEL_42;
    }

    if (v18)
    {
      *__s1 = 136446466;
      *&__s1[4] = "nw_path_signature_changed_from_previous";
      *&__s1[12] = 2082;
      *&__s1[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null previous_path, dumping backtrace:%{public}s", __s1, 0x16u);
    }

LABEL_30:

    free(backtrace_string);
    goto LABEL_43;
  }

  memset(__s1, 0, 20);
  *type = 0;
  v29 = 0;
  v30 = 0;
  __n = 5140;
  __s2[0] = 0;
  __s2[1] = 0;
  v27 = 0;
  v22 = 20;
  __n_2[0] = 0;
  __n_2[1] = 0;
  v25 = 0;
  v21 = 20;
  nw_path_get_ipv4_network_signature(v4, __s1, &__n + 1);
  nw_path_get_ipv6_network_signature(v5, type, &__n);
  nw_path_get_ipv4_network_signature(v3, __s2, &v22);
  nw_path_get_ipv6_network_signature(v3, __n_2, &v21);
  if (HIBYTE(__n) != v22 || (v6 = __n, __n != v21) || HIBYTE(__n) && memcmp(__s1, __s2, HIBYTE(__n)))
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  if (v6)
  {
    v6 = memcmp(type, __n_2, v6) != 0;
  }

LABEL_8:

  return v6;
}

size_t nw_quic_should_flush_cache_entry(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5)
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return nw_path_signature_changed_from_previous(a5, a4);
  }
}

uint64_t nw_protocol_get_input_frames_is_valid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 80) != 0;
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (!a2)
  {
    LODWORD(v3) = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL nw_resolver_should_flush_cache_entry(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  has_equal_dns = v8 == v9;
  if (v8 != v9 && v8 && v9)
  {
    has_equal_dns = _nw_path_has_equal_dns(v8, v9);
  }

  if (has_equal_dns && a3)
  {
    if (*(a2 + 24) == 1)
    {
      v12 = *a2;
      *a2 = 0;

      v13 = *(a2 + 8);
      *(a2 + 8) = 0;

      v14 = *(a2 + 16);
      *(a2 + 16) = 0;

      has_equal_dns = 1;
    }

    else
    {
      has_equal_dns = 0;
    }
  }

  return !has_equal_dns;
}

BOOL sub_181EB3488(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 304);
  v3 = *(v1 + 304);
  v4 = (v3 | v2) == 0;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  v51 = *(v1 + 264);
  v6 = *(v3 + 32);
  if (*(v3 + 16) >= *(v3 + 24) + v6)
  {
    v7 = *(v3 + 24) + v6;
  }

  else
  {
    v7 = *(v3 + 16);
  }

  v66 = v3;
  v67 = v6;
  v68 = v7;

  if (v6 == v7)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = v66;
  while (1)
  {
    v11 = v67;
    v12 = ++v67;
    v13 = v9 + 20 * v11;
    v50 = *(v13 + 40);
    v14 = *(v13 + 44);
    v15 = *(v13 + 45);
    v16 = *(v13 + 46);
    v17 = *(v13 + 47);
    v18 = *(v13 + 48);
    v19 = *(v13 + 49);
    v20 = *(v13 + 50);
    v21 = *(v13 + 51);
    v22 = *(v13 + 52);
    v23 = *(v13 + 53);
    v24 = *(v13 + 54);
    v25 = *(v13 + 55);
    v26 = *(v13 + 56);
    v27 = *(v13 + 57);
    v28 = *(v13 + 58);
    v29 = *(v13 + 59);
    uu[0] = *(v13 + 44);
    v58 = v16;
    v59 = v15;
    uu[1] = v15;
    uu[2] = v16;
    v56 = v18;
    v57 = v17;
    uu[3] = v17;
    uu[4] = v18;
    v54 = v20;
    v55 = v19;
    uu[5] = v19;
    uu[6] = v20;
    v52 = v22;
    v53 = v21;
    uu[7] = v21;
    LOBYTE(v64) = v22;
    BYTE1(v64) = v23;
    BYTE2(v64) = v24;
    BYTE3(v64) = v25;
    BYTE4(v64) = v26;
    BYTE5(v64) = v27;
    BYTE6(v64) = v28;
    HIBYTE(v64) = v29;
    if (uuid_is_null(uu) == 1)
    {
      v30 = v12;
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v31 = sub_182AD2698();
      __swift_project_value_buffer(v31, qword_1ED411DA8);
      v32 = sub_182AD2678();
      v33 = sub_182AD38B8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_181A37000, v32, v33, "Empty UUID for DNS network agent", v34, 2u);
        MEMORY[0x1865DF520](v34, -1, -1);
      }

      v12 = v30;
      goto LABEL_33;
    }

    if (v51)
    {
      if (*(v51 + 16))
      {
        v47 = v12;
        v35 = sub_181AC2218(v14 | (v59 << 8) | (v58 << 16) | (v57 << 24) | (v56 << 32) | (v55 << 40) | (v54 << 48) | (v53 << 56), v52 | (v23 << 8) | (v24 << 16) | (v25 << 24) | (v26 << 32) | (v27 << 40) | (v28 << 48) | (v29 << 56));
        if (v36)
        {
          v37 = *(*(v51 + 56) + 8 * v35);
          if (*(v37 + 56) == 2 && (*(v37 + 72) - 6) <= 2)
          {
            break;
          }
        }
      }
    }

LABEL_33:
    if (v12 != v68)
    {
      goto LABEL_9;
    }

LABEL_10:
    v10 = sub_181AC81FC(v8);
    v9 = v66;
    if ((v10 & 1) == 0)
    {

      return 1;
    }
  }

  v48 = v14;
  v38 = v2;
  v39 = *(v2 + 32);
  if (*(v38 + 16) >= *(v38 + 24) + v39)
  {
    v40 = *(v38 + 24) + v39;
  }

  else
  {
    v40 = *(v38 + 16);
  }

  *uu = v38;
  v64 = v39;
  v65 = v40;

  v46 = v38;
  v49 = v38;
  while (1)
  {
    if (v39 == v40)
    {
      if ((sub_181AC81FC(v41) & 1) == 0)
      {

        goto LABEL_37;
      }

      v39 = v64;
      v49 = *uu;
    }

    v42 = v39 + 1;
    v64 = v39 + 1;
    v43 = v49 + 20 * v39;
    v44 = *(v43 + 40);
    v62 = *(v43 + 44);
    uu1[0] = v48;
    uu1[1] = v59;
    uu1[2] = v58;
    uu1[3] = v57;
    uu1[4] = v56;
    uu1[5] = v55;
    uu1[6] = v54;
    uu1[7] = v53;
    uu1[8] = v52;
    uu1[9] = v23;
    uu1[10] = v24;
    uu1[11] = v25;
    uu1[12] = v26;
    uu1[13] = v27;
    uu1[14] = v28;
    uu1[15] = v29;
    *uu2 = v62;
    if (!uuid_compare(uu1, uu2))
    {
      break;
    }

    v40 = v65;
    v39 = v42;
  }

  if (v50 == v44)
  {
    v2 = v46;
    v12 = v47;
    goto LABEL_33;
  }

LABEL_37:

  return 0;
}

void ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  if (v2)
  {
    v1[2] = 0;

    v1 = *(a1 + 32);
  }

  v4 = v1;
  v5 = v4[6];
  if (v5)
  {
    v7 = v4;
    (*(v5 + 16))();
    v6 = v7[6];
    v7[6] = 0;

    v4 = v7;
  }
}

void ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_159(uint64_t a1, unsigned int a2, void *a3)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 2)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), v6);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }
  }

  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_56;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = off_1E6A2F020[a2];
    }

    v11 = *(a1 + 32);
    *buf = 136446722;
    v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v53 = 2114;
    v54 = v11;
    v55 = 2082;
    v56[0] = v10;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}@ out connection event %{public}s", buf, 0x20u);
  }

  if (a2 == 4)
  {
    *(*(a1 + 32) + 160) |= 1u;
    v12 = *(a1 + 32);
    if ((~v12[160] & 3) == 0)
    {
      nw_socks5_connection_cancel_on_queue(v12, v5);
      goto LABEL_56;
    }

    if (!v5)
    {
      goto LABEL_56;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    if (a2 != 3)
    {
      goto LABEL_56;
    }

    v18 = *(a1 + 32);
    v19 = *(v18 + 56);
    if (v19 <= 0x67)
    {
      if (v19 == 7)
      {
        *(v18 + 56) = 8;
LABEL_50:
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_160;
        aBlock[3] = &unk_1E6A313C0;
        v39 = *(a1 + 32);
        v38 = (a1 + 32);
        v48 = v39;
        v40 = _Block_copy(aBlock);
        v41 = *v38;
        if (*(*v38 + 56) == 105 && (*(v41 + 161) & 4) != 0)
        {
          v42 = *(v41 + 144);
          v43 = *(v41 + 40);
          access_block[0] = MEMORY[0x1E69E9820];
          access_block[1] = 3221225472;
          access_block[2] = ___ZL43nw_socks5_connection_connect_outer_on_queueP31NWConcrete_nw_socks5_connectionPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke_161;
          access_block[3] = &unk_1E6A2DA68;
          v45 = v41;
          v46 = v40;
          nw_connection_access_establishment_report(v42, v43, access_block);
        }

        else
        {
          nw_socks5_connection_send_reply_on_queue(v41, 1, v40);
        }

        v15 = v48;
        goto LABEL_55;
      }

      if (v19 == 8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v19 == 200 || v19 == 105)
      {
        goto LABEL_56;
      }

      if (v19 == 104)
      {
        *(v18 + 56) = 105;
        goto LABEL_50;
      }
    }

    v20 = __nwlog_obj();
    v21 = *(a1 + 32);
    v22 = *(v21 + 56);
    *buf = 136446722;
    v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v53 = 2114;
    v54 = v21;
    v55 = 1024;
    LODWORD(v56[0]) = v22;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s %{public}@ out connection ready from unexpected state %u", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v23, &type, &v49))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          v26 = *(a1 + 32);
          v27 = *(v26 + 56);
          *buf = 136446722;
          v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v53 = 2114;
          v54 = v26;
          v55 = 1024;
          LODWORD(v56[0]) = v27;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}@ out connection ready from unexpected state %u", buf, 0x1Cu);
        }
      }

      else if (v49 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v30)
          {
            v31 = *(a1 + 32);
            v32 = *(v31 + 56);
            *buf = 136446978;
            v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
            v53 = 2114;
            v54 = v31;
            v55 = 1024;
            LODWORD(v56[0]) = v32;
            WORD2(v56[0]) = 2082;
            *(v56 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v29, "%{public}s %{public}@ out connection ready from unexpected state %u, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v30)
        {
          v36 = *(a1 + 32);
          v37 = *(v36 + 56);
          *buf = 136446722;
          v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v53 = 2114;
          v54 = v36;
          v55 = 1024;
          LODWORD(v56[0]) = v37;
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s %{public}@ out connection ready from unexpected state %u, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v24, type))
        {
          v34 = *(a1 + 32);
          v35 = *(v34 + 56);
          *buf = 136446722;
          v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
          v53 = 2114;
          v54 = v34;
          v55 = 1024;
          LODWORD(v56[0]) = v35;
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s %{public}@ out connection ready from unexpected state %u, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_47:
    if (v23)
    {
      free(v23);
    }

    nw_socks5_connection_cancel_on_queue(*(a1 + 32), 0);
    goto LABEL_50;
  }

  v12 = *(a1 + 32);
LABEL_16:
  v13 = v12[56];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = v14;
  if (v13 == 200)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 136446722;
      v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
      v53 = 2114;
      v54 = v16;
      v55 = 2114;
      v56[0] = v5;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ ignoring out connection event error %{public}@", buf, 0x20u);
    }

LABEL_55:

    goto LABEL_56;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 32);
    *buf = 136446722;
    v52 = "nw_socks5_connection_connect_outer_on_queue_block_invoke";
    v53 = 2114;
    v54 = v17;
    v55 = 2114;
    v56[0] = v5;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ out connection event error %{public}@", buf, 0x20u);
  }

  nw_socks5_connection_cancel_on_queue(*(a1 + 32), v5);
LABEL_56:
}

void ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  if (v5)
  {
    nw_connection_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 144);
    *(v6 + 144) = 0;

    v4 = *(a1 + 32);
  }

  if ((*(v4 + 160) & 0x90) != 0)
  {
    a2 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke_2;
  v8[3] = &unk_1E6A3D868;
  v9 = v4;
  nw_socks5_connection_drain_and_cancel_in_on_queue(v9, a2, v8);
}

void nw_socks5_connection_drain_and_cancel_in_on_queue(void *a1, char a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5->sc_in_connection)
  {
LABEL_8:
    v6[2](v6);
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    nw_socks5_connection_remove_prefer_wifi_request(v5);
    nw_connection_cancel(&v5->sc_in_connection->super);
    sc_in_connection = v5->sc_in_connection;
    v5->sc_in_connection = 0;

    sc_in_udp_associated_tcp_connection = v5->sc_in_udp_associated_tcp_connection;
    if (sc_in_udp_associated_tcp_connection)
    {
      v11 = sc_in_udp_associated_tcp_connection;
      nw_connection_cancel_inner(v11, 1);

      v12 = v5->sc_in_udp_associated_tcp_connection;
      v5->sc_in_udp_associated_tcp_connection = 0;
    }

    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v17 = "nw_socks5_connection_drain_and_cancel_in_on_queue";
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}@ draining inner", buf, 0x16u);
  }

  v8 = v5->sc_in_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZL49nw_socks5_connection_drain_and_cancel_in_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvvE_block_invoke;
  v13[3] = &unk_1E6A3A670;
  v14 = v5;
  v15 = v6;
  nw_connection_receive_internal(v8, 0, 1u, 0xFFFFFFFF, v13);

LABEL_9:
}

void sub_181EB49E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void nw_socks5_connection_remove_prefer_wifi_request(NWConcrete_nw_socks5_connection *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1->sc_prefer_wifi_path_evaluator)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446466;
      v5 = "nw_socks5_connection_remove_prefer_wifi_request";
      v6 = 2112;
      v7 = v1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %@ removing prefer wi-fi request", &v4, 0x16u);
    }

    nw_path_evaluator_cancel(v1->sc_prefer_wifi_path_evaluator);
    sc_prefer_wifi_path_evaluator = v1->sc_prefer_wifi_path_evaluator;
    v1->sc_prefer_wifi_path_evaluator = 0;
  }
}

void __nw_socks5_server_start_block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = nw_array_duplicate_array_without_object(*(*(a1 + 32) + 80), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 32) + 80);
  if (v5)
  {
    count = _nw_array_get_count(v5);
  }

  else
  {
    count = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v8 + 132);
    *buf = 136447234;
    *&buf[4] = "nw_socks5_server_start_block_invoke_3";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v31 = v9;
    LOWORD(v32) = 2048;
    *(&v32 + 2) = count;
    WORD5(v32) = 1024;
    HIDWORD(v32) = v10;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %@ cancelled connection %@, %zu remaining, busy count %u", buf, 0x30u);
  }

  v11 = *(*(a1 + 32) + 88);
  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__39483;
    *&v32 = __Block_byref_object_dispose__39484;
    *(&v32 + 1) = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nw_socks5_server_start_block_invoke_13;
    v19[3] = &unk_1E6A3BF70;
    v20 = *(a1 + 40);
    v21 = buf;
    nw_dictionary_apply(v11, v19);
    v12 = *(*&buf[8] + 40);
    if (v12)
    {
      v13 = *(*(a1 + 32) + 88);
      string_ptr = xpc_string_get_string_ptr(v12);
      nw_dictionary_set_value(v13, string_ptr, 0);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v18 = nw_dictionary_get_count(*(v17 + 88));
        *v22 = 136446978;
        v23 = "nw_socks5_server_start_block_invoke_2";
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v16;
        v28 = 2048;
        v29 = v18;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %@ removed connection %@ from udp associate %zu remaining", v22, 0x2Au);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_181EB4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL51nw_socks5_connection_outer_connection_read_on_queueP31NWConcrete_nw_socks5_connection_block_invoke_163(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136446466;
      v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}@ in connection write close done", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v4 = v3;
  v5 = v4[3];

  if ((v5 - 6) > 0x3B || ((1 << (v5 - 6)) & 0x8C9B80004000001) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v28 = 2114;
    v29 = v12;
    v30 = 1024;
    v31 = v5;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s %{public}@ in connection write close error %{darwin.errno}d", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v13, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          v16 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v28 = 2114;
          v29 = v16;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s %{public}@ in connection write close error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v19)
          {
            v20 = *(a1 + 32);
            *buf = 136446978;
            v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
            v28 = 2114;
            v29 = v20;
            v30 = 1024;
            v31 = v5;
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ in connection write close error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v19)
        {
          v23 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v28 = 2114;
          v29 = v23;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s %{public}@ in connection write close error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          v22 = *(a1 + 32);
          *buf = 136446722;
          v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
          v28 = 2114;
          v29 = v22;
          v30 = 1024;
          v31 = v5;
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s %{public}@ in connection write close error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_32:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136446722;
    v27 = "nw_socks5_connection_outer_connection_read_on_queue_block_invoke";
    v28 = 2114;
    v29 = v8;
    v30 = 1024;
    v31 = v5;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection write close error %{darwin.errno}d", buf, 0x1Cu);
  }

LABEL_12:

LABEL_13:
  *(*(a1 + 32) + 160) |= 2u;
  v10 = *(a1 + 32);
  if ((~v10[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v10, 0);
  }

LABEL_15:
}

void nw_socks5_connection_cancel_on_queue(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3[56] != 255)
  {
    if (v4 && !*(v3 + 19))
    {
      objc_storeStrong(v3 + 19, a2);
    }

    v6 = *(v3 + 17);
    if (v6)
    {
      v7 = mach_continuous_time();
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = nw_delta_nanos(v6, v8);
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *(v3 + 16);
    if (*(v3 + 14))
    {
      v11 = *(v3 + 15);
      if (v11)
      {
        v12 = mach_continuous_time();
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        v10 += nw_delta_nanos(v11, v13);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v3 + 23);
      v16 = *(v3 + 24);
      v17 = *(v3 + 25);
      v18 = *(v3 + 26);
      *buf = 136448514;
      v19 = *(v3 + 19);
      v20 = *(v3 + 14);
      v26 = "nw_socks5_connection_cancel_on_queue";
      v27 = 2114;
      v28 = v3;
      v29 = 2048;
      v30 = v15;
      v31 = 2048;
      v32 = v16;
      v33 = 2048;
      v34 = v17;
      v35 = 2048;
      v36 = v18;
      v37 = 2048;
      v38 = v10 / 1000000000.0;
      v39 = 2048;
      v40 = v9 / 1000000000.0;
      v41 = 2114;
      v42 = v19;
      v43 = 2048;
      v44 = v20;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ outRead %llu, outWrite %llu, inRead %llu, inWrite %llu, busyTime %0.3fs, totalTime %0.3fs, error %{public}@, busyCount %llu", buf, 0x66u);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZL36nw_socks5_connection_cancel_on_queueP31NWConcrete_nw_socks5_connectionPU22objcproto11OS_nw_error8NSObject_block_invoke;
    v23[3] = &unk_1E6A313C0;
    v21 = v3;
    v24 = v21;
    nw_socks5_connection_send_reply_on_queue(v21, 0, v23);
    v3[56] = -1;
    v22 = *(v21 + 10);
    if (v22)
    {
      nw_queue_cancel_source(v22);
      *(v21 + 10) = 0;
    }
  }
}

void nw_socks5_connection_send_reply_on_queue(void *a1, char a2, void *a3)
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v5[56];
  if (v7 == 255 || (v5[160] & 8) != 0)
  {
    goto LABEL_34;
  }

  if (!*(v5 + 4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
    *&buf[12] = 2114;
    *&buf[14] = v5;
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s %{public}@ cannot send reply without inner connection", buf, 22);

    v116[0] = 16;
    LOBYTE(buffer) = 0;
    if (__nwlog_fault(v11, v116, &buffer))
    {
      if (v116[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v116[0];
        if (os_log_type_enabled(v12, v116[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s %{public}@ cannot send reply without inner connection", buf, 0x16u);
        }
      }

      else if (buffer == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = v116[0];
        v16 = os_log_type_enabled(v12, v116[0]);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446722;
            *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2082;
            v120 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s %{public}@ cannot send reply without inner connection, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v11)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (v16)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s %{public}@ cannot send reply without inner connection, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v21 = v116[0];
        if (os_log_type_enabled(v12, v116[0]))
        {
          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s %{public}@ cannot send reply without inner connection, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v11)
    {
LABEL_34:
      v6[2](v6, 0);
LABEL_35:

      return;
    }

LABEL_33:
    free(v11);
    goto LABEL_34;
  }

  if ((v7 - 101) < 5)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_50;
  }

  if ((v7 - 7) < 2)
  {
    v9 = 0;
    v8 = 1;
    goto LABEL_50;
  }

  if (v5[56])
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_50;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  *buf = 136446466;
  *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
  *&buf[12] = 2114;
  *&buf[14] = v5;
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s %{public}@ cannot send reply from invalid state", buf, 22);

  v116[0] = 16;
  LOBYTE(buffer) = 0;
  if (__nwlog_fault(v18, v116, &buffer))
  {
    if (v116[0] == 17)
    {
      v19 = __nwlog_obj();
      v20 = v116[0];
      if (os_log_type_enabled(v19, v116[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s %{public}@ cannot send reply from invalid state", buf, 0x16u);
      }
    }

    else if (buffer == 1)
    {
      v22 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v23 = v116[0];
      v24 = os_log_type_enabled(v19, v116[0]);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v5;
          *&buf[22] = 2082;
          v120 = v22;
          _os_log_impl(&dword_181A37000, v19, v23, "%{public}s %{public}@ cannot send reply from invalid state, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v22);
        goto LABEL_47;
      }

      if (v24)
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s %{public}@ cannot send reply from invalid state, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v25 = v116[0];
      if (os_log_type_enabled(v19, v116[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_send_reply_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s %{public}@ cannot send reply from invalid state, backtrace limit exceeded", buf, 0x16u);
      }
    }
  }

LABEL_47:
  if (v18)
  {
    free(v18);
  }

  v9 = 0;
  v8 = 0;
LABEL_50:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v120 = __Block_byref_object_copy__16762;
  v121 = __Block_byref_object_dispose__16763;
  v122 = 0;
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_175;
    }

    LOBYTE(buffer) = 5;
    BYTE1(buffer) = a2 ^ 1;
    *(&buffer + 2) = 768;
    BYTE6(buffer) = 0;
    v36 = dispatch_data_create(&buffer, 7uLL, 0, 0);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    v38 = v37;
    if (a2)
    {
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      *v116 = 136446466;
      *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v116[12] = 2114;
      *&v116[14] = v5;
      v39 = "%{public}s %{public}@ sending SOCKS success reply";
      v40 = v38;
      v41 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_85;
      }

      *v116 = 136446466;
      *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v116[12] = 2114;
      *&v116[14] = v5;
      v39 = "%{public}s %{public}@ sending SOCKS failure reply";
      v40 = v38;
      v41 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_181A37000, v40, v41, v39, v116, 0x16u);
LABEL_85:

    if (v36)
    {
      goto LABEL_86;
    }

LABEL_175:
    v6[2](v6, 0);
    v36 = 0;
LABEL_176:
    _Block_object_dispose(buf, 8);

    goto LABEL_35;
  }

  __src = 0;
  if ((a2 & 1) == 0)
  {
    v42 = *(v5 + 19);
    v43 = v42;
    if (!v42)
    {
      v48 = 0;
      v49 = 1;
      goto LABEL_118;
    }

    v44 = v42;
    v45 = v44[3];

    v46 = v44;
    v47 = v46[2];

    v48 = 0;
    v49 = 1;
    if (v47 > 2)
    {
      if (v47 == 3)
      {
        if (v45 + 10055 >= 0x100)
        {
          v49 = 1;
        }

        else
        {
          v49 = 4;
        }

        if (v45 + 10055 >= 0x100)
        {
          LOBYTE(v47) = 3;
        }

        else
        {
          LOBYTE(v47) = v45 + 71;
        }
      }

      else
      {
        if (v47 != 4)
        {
          goto LABEL_118;
        }

        v49 = 5;
      }
    }

    else if (v47 == 1)
    {
      if (v45 >= 0x100)
      {
        v49 = 1;
      }

      else
      {
        v49 = 2;
      }

      if (v45 >= 0x100)
      {
        LOBYTE(v47) = 1;
      }

      else
      {
        LOBYTE(v47) = v45;
      }
    }

    else
    {
      if (v47 != 2)
      {
        goto LABEL_118;
      }

      if ((v45 & 0xFFFFFF00) == 0xFFFEFF00)
      {
        v49 = 3;
      }

      else
      {
        v49 = 1;
      }

      if ((v45 & 0xFFFFFF00) == 0xFFFEFF00)
      {
        LOBYTE(v47) = v45;
      }

      else
      {
        LOBYTE(v47) = 2;
      }
    }

    v48 = v47;
LABEL_118:

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *v116 = 136446978;
      *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v116[12] = 2114;
      *&v116[14] = v5;
      *&v116[22] = 1024;
      *v117 = v49;
      *&v117[4] = 1024;
      *&v117[6] = v48;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ sending SHOES failure reply domain %u code %u", v116, 0x22u);
    }

    v65 = *(v5 + 18);
    if (!v65)
    {
      v35 = 0;
      v69 = 0;
LABEL_142:
      v57 = 0;
      address = 0;
      v60 = v48 << 24;
      v59 = v49 << 16;
      v61 = v69;
      goto LABEL_143;
    }

    v66 = nw_connection_copy_current_path(v65);
    v67 = v66;
    if (v66 && nw_path_get_status(v66) == nw_path_status_unsatisfied)
    {
      reason = nw_path_get_reason(v67);
      v35 = 0;
      if (reason <= 25)
      {
        if (reason == 5)
        {
          v35 = 0x80;
          goto LABEL_140;
        }

        v69 = 0;
        if (reason == 6)
        {
          v35 = 64;
          goto LABEL_140;
        }
      }

      else
      {
        if (reason == 26)
        {
          v35 = 16;
          goto LABEL_140;
        }

        if (reason == 28)
        {
          v35 = 40;
          goto LABEL_140;
        }

        v69 = 0;
        if (reason == 27)
        {
          v35 = 72;
LABEL_140:
          __src = v35;
          v69 = 4;
        }
      }
    }

    else
    {
      v35 = 0;
      v69 = 0;
    }

    goto LABEL_142;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v116 = 136446466;
    *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
    *&v116[12] = 2114;
    *&v116[14] = v5;
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending SHOES success reply", v116, 0x16u);
  }

  v27 = nw_connection_copy_connected_path(*(v5 + 18));
  v28 = v27;
  if (!v27)
  {

    v35 = 0;
    goto LABEL_102;
  }

  is_expensive = _nw_path_is_expensive(v27);
  v30 = _nw_path_uses_interface_type(v28, 1u);
  v31 = _nw_path_uses_interface_type(v28, 2u);
  is_constrained = _nw_path_is_constrained(v28);
  v33 = v31 | is_constrained;
  if ((is_expensive | v30 | v31 | is_constrained))
  {
    if (is_expensive)
    {
      v34 = 0x80;
    }

    else
    {
      v34 = 0;
    }

    if (v30)
    {
      v34 |= 0x20u;
    }

    if (v31)
    {
      v34 |= 0x40u;
    }

    if (is_constrained)
    {
      v35 = v34 | 0x10;
    }

    else
    {
      v35 = v34;
    }

    if ((is_expensive | v30 | v33))
    {
      __src = v35;
    }
  }

  else
  {
    v35 = 0;
  }

  if ((v5[160] & 0x40) != 0)
  {
    nw_socks5_connection_add_prefer_wifi_request(v5);
  }

  if ((v5[161] & 2) == 0)
  {

    if (v35)
    {
      v57 = 0;
      address = 0;
      v59 = 0;
      v60 = 0;
      v61 = 4;
      goto LABEL_143;
    }

LABEL_102:
    v57 = 0;
    address = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_143;
  }

  v62 = nw_connection_copy_connected_remote_endpoint(*(v5 + 18));
  v63 = v62;
  if (v62)
  {
    address = nw_endpoint_get_address(v62);
  }

  else
  {
    address = 0;
  }

  v61 = 4 * (v35 != 0);
  if (address)
  {
    v59 = 0;
    v60 = 0;
    v61 += address->sa_len + 3;
    v57 = 1;
  }

  else
  {
    v57 = 0;
    v59 = 0;
    v60 = 0;
  }

LABEL_143:
  v98 = v60;
  v99 = v59;
  if ((v5[161] & 4) != 0 && (v70 = *(v5 + 22)) != 0)
  {
    *v116 = 0;
    *&v116[8] = v116;
    *&v116[16] = 0x2020000000;
    *v117 = 0;
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke;
    enumerate_block[3] = &unk_1E6A2FF48;
    enumerate_block[4] = buf;
    nw_establishment_report_enumerate_resolution_reports(v70, enumerate_block);
    v71 = *(*&buf[8] + 40);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_3;
    aBlock[3] = &unk_1E6A39B60;
    aBlock[4] = v116;
    if (v71)
    {
      _nw_array_apply(v71, aBlock);
    }

    v72 = *(*&v116[8] + 24) != 0;
    v61 += *(*&v116[8] + 24);
    _Block_object_dispose(v116, 8);
  }

  else
  {
    v72 = 0;
  }

  v73 = v61 + 4;
  if (v61 == 0xFFFC)
  {
    v97 = v61;
    v91 = __nwlog_obj();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    *v116 = 136446210;
    *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
    LODWORD(v94) = 12;
    v93 = _os_log_send_and_compose_impl(v92, 0, 0, 0, &dword_181A37000, v91, 16, "%{public}s strict_malloc called with size 0", v116, v94);

    if (__nwlog_should_abort(v93))
    {
      goto LABEL_182;
    }

    free(v93);
    v61 = v97;
  }

  v74 = malloc_type_malloc(v73, 0x2BDCF028uLL);
  if (v74)
  {
LABEL_156:
    buffer = 0;
    p_buffer = &buffer;
    v111 = 0x2020000000;
    v112 = 0;
    *v74 = v98 | v99 | (bswap32(v61 + 2) >> 16);
    v82 = *(p_buffer + 12) + 4;
    *(p_buffer + 12) = v82;
    if (v35 && v82 < v73)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v83 = gLogObj;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        *v116 = 136446978;
        *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
        *&v116[12] = 2114;
        *&v116[14] = v5;
        *&v116[22] = 2082;
        *v117 = "path_flags";
        *&v117[8] = 1024;
        v118 = v35;
        _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending reply tlv: %{public}s(%#x)", v116, 0x26u);
      }

      v84 = nw_shoes_add_tlv(v74 + *(p_buffer + 12), (v73 - *(p_buffer + 12)), 4u, 1uLL, &__src);
      v82 = *(p_buffer + 12) + v84;
      *(p_buffer + 12) = v82;
    }

    if (v82 < v73)
    {
      v85 = v57;
    }

    else
    {
      v85 = 0;
    }

    if (v85 == 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v86 = gLogObj;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        *v116 = 136446722;
        *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
        *&v116[12] = 2114;
        *&v116[14] = v5;
        *&v116[22] = 2082;
        *v117 = "connected_endpoint";
        _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending reply tlv: %{public}s", v116, 0x20u);
      }

      v87 = nw_shoes_add_tlv(v74 + *(p_buffer + 12), (v73 - *(p_buffer + 12)), 7u, address->sa_len, address);
      *(p_buffer + 12) += v87;
    }

    if (v72)
    {
      v88 = *(*&buf[8] + 40);
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_168;
      v104[3] = &unk_1E6A2DAB8;
      v106 = &buffer;
      v108 = v73;
      v89 = v5;
      v105 = v89;
      v107 = v74;
      if (v88)
      {
        _nw_array_apply(v88, v104);
        v89 = v105;
      }
    }

    v36 = dispatch_data_create(v74, v73, 0, *MEMORY[0x1E69E9648]);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v90 = gLogObj;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *v116 = 136446722;
      *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
      *&v116[12] = 2114;
      *&v116[14] = v5;
      *&v116[22] = 2112;
      *v117 = v36;
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_INFO, "%{public}s %{public}@ sending SHOES %@", v116, 0x20u);
    }

    _Block_object_dispose(&buffer, 8);
    if (!v36)
    {
      goto LABEL_175;
    }

LABEL_86:
    v5[160] |= 8u;
    v50 = &__block_literal_global_44658;
    v51 = &__block_literal_global_44658;
    if ((a2 & 1) == 0)
    {
      v52 = &__block_literal_global_6_44667;

      v50 = &__block_literal_global_6_44667;
    }

    v53 = *(v5 + 4);
    if (v5[160] < 0)
    {
      v54 = *(v5 + 21);

      v53 = v54;
    }

    WeakRetained = objc_loadWeakRetained(v5 + 3);
    nw_socks5_connection_increment_busy_on_queue(v5, WeakRetained);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL40nw_socks5_connection_send_reply_on_queueP31NWConcrete_nw_socks5_connectionbU13block_pointerFvbE_block_invoke_169;
    completion[3] = &unk_1E6A3A6A0;
    v101 = v5;
    v56 = WeakRetained;
    v102 = v56;
    v103 = v6;
    nw_connection_send(v53, v36, v50, 1, completion);

    goto LABEL_176;
  }

  v96 = v61;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v95 = v72;
  v75 = a2;
  v76 = v57;
  v77 = address;
  v78 = v35;
  v79 = gLogObj;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
  {
    v80 = 3;
  }

  else
  {
    v80 = 2;
  }

  *v116 = 136446210;
  *&v116[4] = "nw_socks5_connection_send_reply_on_queue";
  LODWORD(v94) = 12;
  v81 = _os_log_send_and_compose_impl(v80, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s strict allocator failed", v116, v94);

  v35 = v78;
  address = v77;
  v57 = v76;
  a2 = v75;
  v72 = v95;
  if (!__nwlog_should_abort(v81))
  {
    free(v81);
    v61 = v96;
    goto LABEL_156;
  }

LABEL_182:
  __break(1u);
}

void sub_181EB68C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 176), 8);

  _Unwind_Resume(a1);
}

void __nw_socks5_server_start_block_invoke_2_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __nw_socks5_server_start_block_invoke_3;
  v3[3] = &unk_1E6A3D760;
  v4 = v2;
  v5 = *(a1 + 40);
  os_unfair_lock_lock(v2 + 6);
  __nw_socks5_server_start_block_invoke_3(v3);
  os_unfair_lock_unlock(v2 + 6);
}

void _nw_path_set_effective_traffic_class(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 26) = a2;
  }
}

void ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke_142(uint64_t a1, unsigned int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_34;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_1E6A2F020[a2];
    }

    v8 = *(a1 + 32);
    v25 = 136446722;
    v26 = "nw_socks5_connection_start_on_queue_block_invoke";
    v27 = 2114;
    v28 = v8;
    v29 = 2082;
    v30 = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ in connection event %{public}s", &v25, 0x20u);
  }

  if (a2 == 4)
  {
    nw_socks5_connection_remove_prefer_wifi_request(*(a1 + 32));
    *(*(a1 + 32) + 160) |= 2u;
    v9 = *(a1 + 32);
    if ((~v9[160] & 3) == 0)
    {
      nw_socks5_connection_cancel_on_queue(v9, 0);
      goto LABEL_34;
    }

    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v9 = *(a1 + 32);
LABEL_13:
    v10 = v9[56];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = v11;
    if (v10 == 200)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v25 = 136446722;
        v26 = "nw_socks5_connection_start_on_queue_block_invoke";
        v27 = 2114;
        v28 = v13;
        v29 = 2114;
        v30 = v5;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}@ ignoring in connection event error %{public}@", &v25, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v25 = 136446722;
        v26 = "nw_socks5_connection_start_on_queue_block_invoke";
        v27 = 2114;
        v28 = v14;
        v29 = 2114;
        v30 = v5;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection event error %{public}@", &v25, 0x20u);
      }

      nw_socks5_connection_cancel_on_queue(*(a1 + 32), v5);
    }

    goto LABEL_34;
  }

  if (a2 != 3)
  {
    goto LABEL_34;
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  if (v16 != 101)
  {
    if (v16 != 1)
    {
      goto LABEL_34;
    }

    *(v15 + 56) = 2;
    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v18 = *(a1 + 32);
    v25 = 136446466;
    v26 = "nw_socks5_connection_start_on_queue_block_invoke";
    v27 = 2114;
    v28 = v18;
    v19 = "%{public}s %{public}@ connection socks connected";
    goto LABEL_27;
  }

  *(v15 + 56) = 102;
  v17 = __nwlog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v25 = 136446466;
    v26 = "nw_socks5_connection_start_on_queue_block_invoke";
    v27 = 2114;
    v28 = v20;
    v19 = "%{public}s %{public}@ connection shoes connected";
LABEL_27:
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, v19, &v25, 0x16u);
  }

LABEL_28:

  v21 = *(a1 + 32);
  if (*(v21 + 160) < 0 && *(a1 + 40))
  {
    *(v21 + 56) = 103;
    *(*(a1 + 32) + 104) = dispatch_data_get_size(*(a1 + 40));
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = *(v23 + 104);
      v25 = 136446722;
      v26 = "nw_socks5_connection_start_on_queue_block_invoke";
      v27 = 2114;
      v28 = v23;
      v29 = 1024;
      LODWORD(v30) = v24;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s %{public}@ connection shoes got length %u", &v25, 0x1Cu);
    }

    nw_socks5_connection_inner_connection_read_handler_on_queue(*(a1 + 32), *(a1 + 40), 0, 0, *(*(a1 + 32) + 104));
  }

  else
  {
    nw_socks5_connection_inner_connection_read_range_on_queue(v21, 2u, 2u);
  }

LABEL_34:
}

void sub_181EB7600(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = NWConcrete_nw_socks5_connection;
  [(_Unwind_Exception *)&a14 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t nw_frame_array_append(uint64_t result, int a2, uint64_t a3)
{
  v3 = 16;
  if (a2)
  {
    v3 = 32;
  }

  v4 = 24;
  if (a2)
  {
    v4 = 40;
  }

  v5 = (a3 + v3);
  *v5 = 0;
  v6 = *(result + 8);
  *(a3 + v4) = v6;
  *v6 = a3;
  *(result + 8) = v5;
  return result;
}

uint64_t ___ZL32networkd_settings_read_from_filev_block_invoke(int a1, char *__s1, void *a3)
{
  if (strcmp(__s1, nw_settings_managed_settings))
  {
    xpc_dictionary_set_value(sCachedSettings, __s1, a3);
  }

  return 1;
}

unint64_t nw_interface_get_generation(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_generation(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_generation";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null interface", buf, 12);

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
        v12 = "nw_interface_get_generation";
        v6 = "%{public}s called with null interface";
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
            v12 = "nw_interface_get_generation";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_interface_get_generation";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_generation";
        v6 = "%{public}s called with null interface, backtrace limit exceeded";
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

uint64_t nw_interface_get_mtu(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_mtu(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_mtu";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null interface", buf, 12);

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
        v12 = "nw_interface_get_mtu";
        v6 = "%{public}s called with null interface";
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
            v12 = "nw_interface_get_mtu";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_interface_get_mtu";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_mtu";
        v6 = "%{public}s called with null interface, backtrace limit exceeded";
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

id nw_interface_copy_ipv4_netmask_endpoint(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null interface", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
        v7 = "%{public}s called with null interface";
LABEL_17:
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
            *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
            *&v13[8] = 2082;
            *&v13[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
        v7 = "%{public}s called with null interface, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
        v7 = "%{public}s called with null interface, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  type = OS_LOG_TYPE_DEFAULT;
  ipv4_netmask = _nw_interface_get_ipv4_netmask(a1, &type);
  if (type == OS_LOG_TYPE_INFO)
  {
    *buf = 528;
    *v13 = ipv4_netmask;
    *&v13[4] = 0;
    return _nw_endpoint_create_address(buf);
  }

  return 0;
}

uint64_t nw_endpoint_get_ethernet_address(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    ethernet_address = _nw_endpoint_get_ethernet_address();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_get_ethernet_address";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null endpoint", buf, 12);

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
        v15 = "nw_endpoint_get_ethernet_address";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint", buf, 0xCu);
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
          v15 = "nw_endpoint_get_ethernet_address";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_ethernet_address";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_ethernet_address";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  ethernet_address = 0;
LABEL_3:

  return ethernet_address;
}

id nw_interface_copy_ipv4_broadcast_endpoint(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null interface", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
        v7 = "%{public}s called with null interface";
LABEL_17:
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
            *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
            *&v13[8] = 2082;
            *&v13[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
        v7 = "%{public}s called with null interface, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
        v7 = "%{public}s called with null interface, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  type = OS_LOG_TYPE_DEFAULT;
  ipv4_broadcast = _nw_interface_get_ipv4_broadcast(a1, &type);
  if (type == OS_LOG_TYPE_INFO)
  {
    *buf = 528;
    *v13 = ipv4_broadcast;
    *&v13[4] = 0;
    return _nw_endpoint_create_address(buf);
  }

  return 0;
}

uint64_t nw_interface_supports_multicast(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_supports_multicast(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_supports_multicast";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_supports_multicast";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_supports_multicast";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_supports_multicast";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_supports_multicast";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_has_dns(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_has_dns(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_has_dns";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_has_dns";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_has_dns";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_has_dns";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_has_dns";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_has_nat64(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_has_nat64(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_has_nat64";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_has_nat64";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_has_nat64";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_has_nat64";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_has_nat64";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_is_ipv4_routable(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_ipv4_routable(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_ipv4_routable";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_is_ipv4_routable";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_ipv4_routable";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_ipv4_routable";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_ipv4_routable";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_interface_is_ipv6_routable(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_ipv6_routable(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_ipv6_routable";
  v13 = 2082;
  v14 = "Invalid interface object";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 22);

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
        *buf = 136446466;
        v12 = "nw_interface_is_ipv6_routable";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_is_ipv6_routable";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_is_ipv6_routable";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_is_ipv6_routable";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

uint64_t nw_path_get_scoped_interface_index(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    scoped_interface_index = _nw_path_get_scoped_interface_index(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_scoped_interface_index";
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
        v16 = "nw_path_get_scoped_interface_index";
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
          v16 = "nw_path_get_scoped_interface_index";
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
        v16 = "nw_path_get_scoped_interface_index";
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
        v16 = "nw_path_get_scoped_interface_index";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  scoped_interface_index = 0;
LABEL_3:

  return scoped_interface_index;
}

uint64_t nw_path_copy_resolver_configs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_path_copy_resolver_configs();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_path_copy_resolver_configs";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null path", buf, 12);

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
        v15 = "nw_path_copy_resolver_configs";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null path", buf, 0xCu);
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
          v15 = "nw_path_copy_resolver_configs";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_path_copy_resolver_configs";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_path_copy_resolver_configs";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

void nw_resolver_config_enumerate_name_servers(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__25_56289;
    v24 = __Block_byref_object_dispose__26_56290;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_resolver_config_enumerate_name_servers_block_invoke;
    v17[3] = &unk_1E6A3D738;
    v19 = buf;
    v5 = v3;
    v18 = v5;
    os_unfair_lock_lock(v5 + 22);
    __nw_resolver_config_enumerate_name_servers_block_invoke(v17);
    os_unfair_lock_unlock(v5 + 22);
    v6 = *(*&buf[8] + 40);
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_resolver_config_enumerate_name_servers_block_invoke_2;
      applier[3] = &unk_1E6A35AD0;
      v16 = v4;
      xpc_array_apply(v6, applier);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_enumerate_name_servers";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

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
        *&buf[4] = "nw_resolver_config_enumerate_name_servers";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          *&buf[4] = "nw_resolver_config_enumerate_name_servers";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_name_servers";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_name_servers";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:
}

void sub_181EBA268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void __nw_resolver_config_enumerate_name_servers_block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 8);
  v2 = xpc_dictionary_get_value(v5, "NameServers");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_181EBA810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  std::ostringstream::~ostringstream(v25);
  _Unwind_Resume(a1);
}

uint64_t nw_resolver_config_get_protocol(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_protocol_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_protocol_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_protocol";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null config", buf, 12);

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
        *&buf[4] = "nw_resolver_config_get_protocol";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_protocol";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_protocol";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void sub_181EBAB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_resolver_config_enumerate_search_domains(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__25_56289;
    v24 = __Block_byref_object_dispose__26_56290;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_resolver_config_enumerate_search_domains_block_invoke;
    v17[3] = &unk_1E6A3D738;
    v19 = buf;
    v5 = v3;
    v18 = v5;
    os_unfair_lock_lock(v5 + 22);
    __nw_resolver_config_enumerate_search_domains_block_invoke(v17);
    os_unfair_lock_unlock(v5 + 22);
    v6 = *(*&buf[8] + 40);
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_resolver_config_enumerate_search_domains_block_invoke_2;
      applier[3] = &unk_1E6A35AD0;
      v16 = v4;
      xpc_array_apply(v6, applier);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_enumerate_search_domains";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null config", buf, 12);

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
        *&buf[4] = "nw_resolver_config_enumerate_search_domains";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          *&buf[4] = "nw_resolver_config_enumerate_search_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_search_domains";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_search_domains";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:
}

void sub_181EBAFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_resolver_config_get_port(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_port_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_port_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_port";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null config", buf, 12);

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
        *&buf[4] = "nw_resolver_config_get_port";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_port";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_port";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_port";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void sub_181EBB36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_resolver_config_get_provider_path_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_string(v2, "ProviderPath");
}

uint64_t nw_path_copy_override_resolver_configs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_path_copy_resolver_configs();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_path_copy_override_resolver_configs";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null path", buf, 12);

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
        v15 = "nw_path_copy_override_resolver_configs";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null path", buf, 0xCu);
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
          v15 = "nw_path_copy_override_resolver_configs";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_path_copy_override_resolver_configs";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_path_copy_override_resolver_configs";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_path_copy_gateways(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_gateways(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_gateways";
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
        v16 = "nw_path_copy_gateways";
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
          v16 = "nw_path_copy_gateways";
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
        v16 = "nw_path_copy_gateways";
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
        v16 = "nw_path_copy_gateways";
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

uint64_t nw_path_copy_legacy_proxy_settings(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_legacy_proxy_settings(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_legacy_proxy_settings";
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
        v16 = "nw_path_copy_legacy_proxy_settings";
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
          v16 = "nw_path_copy_legacy_proxy_settings";
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
        v16 = "nw_path_copy_legacy_proxy_settings";
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
        v16 = "nw_path_copy_legacy_proxy_settings";
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

_BYTE *Deserializer.uint8(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_8;
  }

  v6 = v2[1] - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    if (v8 >= 1)
    {
      *result = *(v4 + v5);
      result = sub_1820E2C6C(1);
      v9 = v2[3];
      v10 = *(v2 + 32);
LABEL_9:
      *a2 = v9;
      *(a2 + 8) = v10;
      return result;
    }

LABEL_8:
    v9 = 1;
    v2[3] = 1;
    *(v2 + 32) = 1;
    v10 = 1;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

char *nw_path_link_quality_abort(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_link_quality_abort(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_link_quality_abort";
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
        v16 = "nw_path_link_quality_abort";
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
          v16 = "nw_path_link_quality_abort";
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
        v16 = "nw_path_link_quality_abort";
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
        v16 = "nw_path_link_quality_abort";
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

char *_nw_path_link_quality_abort(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 14) & 1);
  }

  return result;
}

char *nw_path_listener_is_interface_specific(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_listener_is_interface_specific(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_listener_is_interface_specific";
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
        v16 = "nw_path_listener_is_interface_specific";
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
          v16 = "nw_path_listener_is_interface_specific";
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
        v16 = "nw_path_listener_is_interface_specific";
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
        v16 = "nw_path_listener_is_interface_specific";
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

char *_nw_path_listener_is_interface_specific(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 18) & 1);
  }

  return result;
}

char *nw_path_has_kernel_extension_filter(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_kernel_extension_filter(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_kernel_extension_filter";
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
        v16 = "nw_path_has_kernel_extension_filter";
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
          v16 = "nw_path_has_kernel_extension_filter";
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
        v16 = "nw_path_has_kernel_extension_filter";
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
        v16 = "nw_path_has_kernel_extension_filter";
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

char *_nw_path_has_kernel_extension_filter(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 27) & 1);
  }

  return result;
}

char *nw_path_has_custom_pf_rules(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_custom_pf_rules(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_custom_pf_rules";
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
        v16 = "nw_path_has_custom_pf_rules";
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
          v16 = "nw_path_has_custom_pf_rules";
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
        v16 = "nw_path_has_custom_pf_rules";
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
        v16 = "nw_path_has_custom_pf_rules";
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

char *_nw_path_has_custom_pf_rules(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 28) & 1);
  }

  return result;
}

char *nw_path_has_application_level_firewall(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_application_level_firewall(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_application_level_firewall";
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
        v16 = "nw_path_has_application_level_firewall";
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
          v16 = "nw_path_has_application_level_firewall";
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
        v16 = "nw_path_has_application_level_firewall";
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
        v16 = "nw_path_has_application_level_firewall";
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

char *_nw_path_has_application_level_firewall(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 29) & 1);
  }

  return result;
}

char *nw_path_has_parental_controls(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_parental_controls(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_parental_controls";
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
        v16 = "nw_path_has_parental_controls";
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
          v16 = "nw_path_has_parental_controls";
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
        v16 = "nw_path_has_parental_controls";
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
        v16 = "nw_path_has_parental_controls";
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

char *_nw_path_has_parental_controls(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 30) & 1);
  }

  return result;
}

BOOL nw_protocol_copy_info_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 224) != 0;
  }

  return result;
}

uint64_t nw_frame_array_append_array(uint64_t result, void *a2, int a3)
{
  if (*a2)
  {
    v3 = 24;
    if (a3)
    {
      v3 = 40;
    }

    v4 = *(result + 8);
    *v4 = *a2;
    *(*a2 + v3) = v4;
    *(result + 8) = a2[1];
    *a2 = 0;
    a2[1] = a2;
  }

  return result;
}

uint64_t sub_181EBD7B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2C0, &qword_182AF4950);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181EBD8F0();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_181EBD8F0()
{
  result = qword_1EA836BC0;
  if (!qword_1EA836BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BC0);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for IPProtocol(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void nw_parameters_set_prohibited_interface_types(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_prohibited_interface_types();
    if (v4)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_parameters_set_prohibited_interface_types_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v13 = v3;
      xpc_array_apply(v4, applier);
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_set_prohibited_interface_types";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null parameters", buf, 12);

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
        v17 = "nw_parameters_set_prohibited_interface_types";
        v9 = "%{public}s called with null parameters";
LABEL_18:
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
            v17 = "nw_parameters_set_prohibited_interface_types";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_types";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_types";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

uint64_t __nw_parameters_set_prohibited_interface_types_block_invoke(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  _nw_parameters_prohibit_interface_type(*(a1 + 32), value);
  return 1;
}

uint64_t sub_181EBDD20(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v10 = *v7;
  v11 = (*v7 + 16);
  v12 = *v11;
  if (*v11 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = swift_allocObject();
    v17 = *(v10 + 24);
    *(v15 + 16) = v12;
    *(v15 + 24) = v17;
    if (v17 >= 1)
    {
      a7(v15 + 16, v15 + 40, v11, v10 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v14 = *(v10 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      *(v15 + 16) = _swift_stdlib_malloc_size(v15) - 40;
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F46CB8(v15 + 16, (v15 + 40), v11, (v10 + 40));
        *(v10 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v15);
      v19 = *(v10 + 24);
      *(v15 + 16) = v18 - 40;
      *(v15 + 24) = v19;
      *(v15 + 32) = 0;
      if (v19 >= 1)
      {
        sub_181F47534(v15 + 16, (v15 + 40), v11, (v10 + 40));
      }
    }
  }

  *v7 = v15;
  return result;
}

void *sub_181EBDED0(void *result, uint64_t a2, char a3)
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
        *(a2 + v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
          return result;
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

uint64_t NWEndpoint.Port.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 2) = 0;
  return result;
}

void ___ZL57nw_socks5_connection_inner_connection_read_range_on_queueP31NWConcrete_nw_socks5_connectionjj_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v14 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = v12[3];
  }

  else
  {
    v13 = 0;
  }

  nw_socks5_connection_inner_connection_read_handler_on_queue(*(a1 + 32), v14, v6, v13, *(a1 + 40));
}

void nw_socks5_connection_inner_connection_read_handler_on_queue(void *a1, void *a2, int a3, int a4, size_t a5)
{
  v212 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (v9->sc_state == 255 || (*(v9 + 160) & 1) != 0)
  {
    goto LABEL_132;
  }

  if (v10)
  {
    size = dispatch_data_get_size(v10);
  }

  else
  {
    size = 0;
  }

  WeakRetained = objc_loadWeakRetained(&v9->sc_parent);
  if (a4 || size < a5)
  {
    if (!a4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        v18 = "not";
        *buf = 136447234;
        *&buf[14] = v9;
        if (a3)
        {
          v18 = "is";
        }

        *&buf[22] = 2048;
        *&buf[24] = size;
        *&buf[32] = 2048;
        *&buf[34] = a5;
        *&buf[42] = 2082;
        *&buf[44] = v18;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection read data len %zu < %zu %{public}s_complete", buf, 0x34u);
      }

      goto LABEL_43;
    }

    if (a4 == 55 && *(v9 + 160) < 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 1024;
        *&buf[24] = 55;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring error %d", buf, 0x1Cu);
      }

      nw_socks5_connection_inner_connection_read_on_queue(v9);
      goto LABEL_131;
    }

    if ((a4 - 6) <= 0x3B && ((1 << (a4 - 6)) & 0x8C9B80004000001) != 0 || a4 == 96)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = "not";
        *buf = 136447234;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        if (a3)
        {
          v20 = "is";
        }

        *&buf[22] = 2048;
        *&buf[24] = size;
        *&buf[32] = 2082;
        *&buf[34] = v20;
        *&buf[42] = 1024;
        *&buf[44] = a4;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
      }

      goto LABEL_43;
    }

    v46 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
    *&buf[12] = 2114;
    *&buf[22] = 2048;
    *&buf[14] = v9;
    if (a3)
    {
      v47 = "is";
    }

    else
    {
      v47 = "not";
    }

    *&buf[24] = size;
    *&buf[32] = 2082;
    *&buf[34] = v47;
    *&buf[42] = 1024;
    *&buf[44] = a4;
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 48);

    type[0] = OS_LOG_TYPE_ERROR;
    __str[0] = 0;
    if (__nwlog_fault(v48, type, __str))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *buf = 136447234;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 2082;
          *&buf[34] = v47;
          *&buf[42] = 1024;
          *&buf[44] = a4;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
        }
      }

      else if (__str[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v146 = type[0];
        v77 = os_log_type_enabled(v49, type[0]);
        if (backtrace_string)
        {
          if (v77)
          {
            *buf = 136447490;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2048;
            *&buf[24] = size;
            *&buf[32] = 2082;
            *&buf[34] = v47;
            *&buf[42] = 1024;
            *&buf[44] = a4;
            *&buf[48] = 2082;
            *&buf[50] = backtrace_string;
            _os_log_impl(&dword_181A37000, v49, v146, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x3Au);
          }

          free(backtrace_string);
          goto LABEL_245;
        }

        if (v77)
        {
          *buf = 136447234;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 2082;
          *&buf[34] = v47;
          *&buf[42] = 1024;
          *&buf[44] = a4;
          _os_log_impl(&dword_181A37000, v49, v146, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, no backtrace", buf, 0x30u);
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v90 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *buf = 136447234;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 2082;
          *&buf[34] = v47;
          *&buf[42] = 1024;
          *&buf[44] = a4;
          _os_log_impl(&dword_181A37000, v49, v90, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, backtrace limit exceeded", buf, 0x30u);
        }
      }
    }

LABEL_245:
    if (v48)
    {
      free(v48);
    }

LABEL_43:
    if (v9->sc_state != 200)
    {
LABEL_130:
      nw_socks5_connection_cancel_on_queue(v9, 0);
      goto LABEL_131;
    }

    nw_socks5_connection_increment_busy_on_queue(v9, WeakRetained);
    p_super = &v9->sc_out_connection->super;
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke;
    completion[3] = &unk_1E6A3A558;
    v173 = v9;
    v174 = WeakRetained;
    nw_connection_send(p_super, 0, &__block_literal_global_6_44667, 1, completion);

    goto LABEL_131;
  }

  if (gLogDatapath == 1)
  {
    v134 = __nwlog_obj();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
    {
      v135 = "not";
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *buf = 136446978;
      *&buf[14] = v9;
      if (a3)
      {
        v135 = "is";
      }

      *&buf[22] = 2048;
      *&buf[24] = size;
      *&buf[32] = 2082;
      *&buf[34] = v135;
      _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ read %zu bytes %{public}s_complete from inner connection", buf, 0x2Au);
    }
  }

  if (!v11 || !size)
  {
    goto LABEL_131;
  }

  sc_state = v9->sc_state;
  if (sc_state > 6)
  {
    if (v9->sc_state <= 0x66u)
    {
      if (sc_state - 7 >= 2 && sc_state != 101)
      {
        if (sc_state == 102)
        {
          *type = 0;
          if (size == 2)
          {
            nw_dispatch_data_copyout(v11, type, 2);
            v23 = bswap32(*type);
            v24 = HIWORD(v23);
            v9->sc_shoes_request_length_hbo = HIWORD(v23);
            v25 = __nwlog_obj();
            v26 = v25;
            if (v24 > 3)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                sc_shoes_request_length_hbo = v9->sc_shoes_request_length_hbo;
                *buf = 136446722;
                *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                *&buf[12] = 2114;
                *&buf[14] = v9;
                *&buf[22] = 1024;
                *&buf[24] = sc_shoes_request_length_hbo;
                _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ shoes client request with length %u", buf, 0x1Cu);
              }

              v9->sc_state = 103;
              nw_socks5_connection_inner_connection_read_range_on_queue(v9, v9->sc_shoes_request_length_hbo, v9->sc_shoes_request_length_hbo);
              goto LABEL_131;
            }

            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_241;
            }

            v27 = v9->sc_shoes_request_length_hbo;
            *buf = 136446722;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 1024;
            *&buf[24] = v27;
            v28 = "%{public}s %{public}@ connection received invalid shoes request length %u";
            v29 = v26;
            v30 = 28;
          }

          else
          {
            v26 = __nwlog_obj();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_241;
            }

            *buf = 136446722;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2048;
            *&buf[24] = size;
            v28 = "%{public}s %{public}@ shoes_connected connection received unexpected number of bytes %zu";
            v29 = v26;
            v30 = 32;
          }

          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
          goto LABEL_241;
        }

        goto LABEL_131;
      }
    }

    else if (v9->sc_state > 0xC7u)
    {
      if (sc_state == 200)
      {
        if (gLogDatapath == 1)
        {
          v136 = __nwlog_obj();
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
          {
            v137 = "not";
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *buf = 136446978;
            *&buf[14] = v9;
            if (a3)
            {
              v137 = "is";
            }

            *&buf[22] = 2048;
            *&buf[24] = size;
            *&buf[32] = 2082;
            *&buf[34] = v137;
            _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s READY STATE %{public}@ read %zu bytes %{public}s_complete from inner connection", buf, 0x2Au);
          }
        }

        v9->sc_in_connection_bytes_read += size;
        v51 = &__block_literal_global_44658;
        v52 = &__block_literal_global_44658;
        if (!a3 || (*(v9 + 160) & 0x20) != 0)
        {
          v54 = 0;
        }

        else
        {
          v53 = &__block_literal_global_6_44667;

          v54 = 1;
          v51 = &__block_literal_global_6_44667;
        }

        nw_socks5_connection_increment_busy_on_queue(v9, WeakRetained);
        v65 = &v9->sc_out_connection->super;
        v149[0] = MEMORY[0x1E69E9820];
        v149[1] = 3221225472;
        v149[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_157;
        v149[3] = &unk_1E6A2DA18;
        v150 = v9;
        v153 = v54;
        v151 = WeakRetained;
        v152 = size;
        nw_connection_send(v65, v11, v51, 1, v149);

        goto LABEL_131;
      }

      if (sc_state != 255)
      {
        goto LABEL_131;
      }
    }

    else if (sc_state - 104 >= 2)
    {
      if (sc_state == 103)
      {
        if (size == v9->sc_shoes_request_length_hbo)
        {
          v210 = 0u;
          memset(v211, 0, sizeof(v211));
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          memset(&buf[32], 0, 32);
          if (size >= 0x103)
          {
            v15 = 259;
          }

          else
          {
            v15 = size;
          }

          memset(buf, 0, 32);
          nw_dispatch_data_copyout(v11, &buf[2], v15);
          if (buf[2] <= 4u)
          {
            if (buf[2] <= 2u)
            {
              if (buf[2] != 1)
              {
                if (buf[2] != 2)
                {
                  goto LABEL_299;
                }

                goto LABEL_230;
              }

              goto LABEL_205;
            }

            if (buf[2] != 3)
            {
              if (buf[2] != 4)
              {
LABEL_299:
                v129 = __nwlog_obj();
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  *type = 136446978;
                  *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                  *&type[12] = 2114;
                  *&type[14] = v9;
                  *&type[22] = 1024;
                  *&type[24] = buf[2];
                  *&type[28] = 2048;
                  *&type[30] = size;
                  _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ shoes_got_length connection received invalid request type %u length %zu", type, 0x26u);
                }

                nw_socks5_connection_cancel_on_queue(v9, 0);
                goto LABEL_131;
              }

LABEL_205:
              if (size < buf[5] + 4)
              {
                v26 = __nwlog_obj();
                if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_241;
                }

                *type = 136446722;
                *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                *&type[12] = 2114;
                *&type[14] = v9;
                *&type[22] = 2048;
                *&type[24] = size;
                v91 = "%{public}s %{public}@ shoes_got_length connection received hostname request too short %zu";
                goto LABEL_236;
              }

              LOWORD(v176) = 0;
              *__str = 0;
              snprintf(__str, 6uLL, "%u", bswap32(*&buf[3]) >> 16);
              v197 = 0u;
              v198 = 0u;
              v195 = 0u;
              v196 = 0u;
              v193 = 0u;
              v194 = 0u;
              v191 = 0u;
              v192 = 0u;
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v186 = 0u;
              memset(type, 0, sizeof(type));
              LODWORD(v97) = buf[5];
              if (buf[5])
              {
                v101 = &buf[6];
                v102 = type;
                v103 = buf[5];
                while (1)
                {
                  v104 = *v101;
                  *v102 = v104;
                  if (!v104)
                  {
                    break;
                  }

                  ++v102;
                  ++v101;
                  if (!--v103)
                  {
                    goto LABEL_279;
                  }
                }
              }

              else
              {
                v102 = type;
LABEL_279:
                *v102 = OS_LOG_TYPE_DEFAULT;
              }

              host = nw_endpoint_create_host(type, __str);
LABEL_281:
              address = host;
              v106 = v97 + 4;
              goto LABEL_282;
            }

LABEL_227:
            if (size > 6)
            {
              *type = xmmword_182BD4240;
              *&type[2] = *&buf[3];
              *&type[4] = *&buf[5];
              address = _nw_endpoint_create_address(type);
              v106 = 7;
              goto LABEL_282;
            }

            v26 = __nwlog_obj();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_241;
            }

            *type = 136446722;
            *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&type[12] = 2114;
            *&type[14] = v9;
            *&type[22] = 2048;
            *&type[24] = size;
            v91 = "%{public}s %{public}@ shoes_got_length connection received IPv4 request too short %zu";
LABEL_236:
            _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, v91, type, 0x20u);
            goto LABEL_241;
          }

          if (buf[2] - 7 >= 2)
          {
            if (buf[2] == 5)
            {
LABEL_230:
              if (size <= 0x12)
              {
                v26 = __nwlog_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *type = 136446722;
                  *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                  *&type[12] = 2114;
                  *&type[14] = v9;
                  *&type[22] = 2048;
                  *&type[24] = size;
                  v91 = "%{public}s %{public}@ shoes_got_length connection received IPv6 request too short %zu";
                  goto LABEL_236;
                }

LABEL_241:

                nw_socks5_connection_cancel_on_queue(v9, 0);
                goto LABEL_131;
              }

              *type = 7708;
              *&type[24] = 0;
              *&type[2] = *&buf[3];
              *&type[8] = *&buf[5];
              address = _nw_endpoint_create_address(type);
              v106 = 19;
LABEL_282:
              if (address)
              {
                *type = 0;
                *&type[8] = type;
                *&type[16] = 0x3032000000;
                *&type[24] = __Block_byref_object_copy__16762;
                *&type[32] = __Block_byref_object_dispose__16763;
                *&type[40] = 0;
                v168 = 0;
                v169 = &v168;
                v170 = 0x2020000000;
                v171 = 0;
                if (buf[2] <= 8u && ((1 << buf[2]) & 0x170) != 0 || *(v9 + 160) < 0)
                {
                  secure_udp = nw_parameters_create_secure_udp(&__block_literal_global_19409, &__block_literal_global_2);
                  v116 = *(*&type[8] + 40);
                  *(*&type[8] + 40) = secure_udp;

                  *(v9 + 160) |= 0x20u;
                }

                else
                {
                  secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
                  v133 = *(*&type[8] + 40);
                  *(*&type[8] + 40) = secure_tcp;
                }

                v117 = nw_connection_copy_current_path(&v9->sc_in_connection->super);
                v148 = v117;
                if (v117)
                {
                  v167[0] = MEMORY[0x1E69E9820];
                  v167[1] = 3221225472;
                  v167[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_148;
                  v167[3] = &unk_1E6A39B88;
                  v167[4] = type;
                  _nw_path_enumerate_network_agents(v117, v167);
                }

                v118 = v9->sc_shoes_request_length_hbo;
                if (v106 < v118)
                {
                  v119 = v118 - v106;
                  v120 = __nwlog_obj();
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                  {
                    *__str = 136446722;
                    v176 = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                    v177 = 2114;
                    v178 = v9;
                    v179 = 1024;
                    v180 = v119;
                    _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ received shoes tlv(s) with total tlv buffer length %u", __str, 0x1Cu);
                  }

                  v162[0] = MEMORY[0x1E69E9820];
                  v162[1] = 3221225472;
                  v162[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_152;
                  v162[3] = &unk_1E6A2D9C8;
                  v163 = v9;
                  v165 = type;
                  v164 = address;
                  v166 = &v168;
                  nw_shoes_tlv_parser(&buf[v106 + 2], v119, v162);
                }

                nw_socks5_server_call_outer_connection_handler(WeakRetained, address, *(*&type[8] + 40));
                if (*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 161))
                {
                  v130 = __nwlog_obj();
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                  {
                    *__str = 136447234;
                    v176 = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                    v177 = 2114;
                    v178 = v9;
                    v179 = 1024;
                    v180 = buf[2];
                    v181 = 2048;
                    v182 = size;
                    v183 = 2112;
                    v184 = address;
                    _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ got shoes request type %u inner length %zu to %@", __str, 0x30u);
                  }

                  v9->sc_state = 104;
                  v131 = v148;
                  nw_socks5_connection_connect_outer_on_queue(v9, address, *(*&type[8] + 40));
                }

                else
                {
                  *(v9 + 161) |= 1u;
                  v121 = __nwlog_obj();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                  {
                    *__str = 136446466;
                    v176 = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                    v177 = 2114;
                    v178 = v9;
                    _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ creating udp associated connection", __str, 0x16u);
                  }

                  if (*(v169 + 12))
                  {
                    objc_storeStrong(&v9->sc_in_udp_associated_tcp_connection, v9->sc_in_connection);
                    posix_error = nw_connection_copy_connected_remote_endpoint(v9->sc_in_udp_associated_tcp_connection);
                    hostname = nw_endpoint_get_hostname(posix_error);
                    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, *(v169 + 12));
                    if (host_with_numeric_port)
                    {
                      local_endpoint = nw_connection_copy_connected_local_endpoint(v9->sc_in_udp_associated_tcp_connection);
                      v144 = nw_connection_copy_connected_path(v9->sc_in_udp_associated_tcp_connection);
                      interface = nw_path_copy_interface(v144);
                      v124 = nw_interface_get_type(interface);
                      v125 = _nw_parameters_create();
                      stack = nw_parameters_copy_default_protocol_stack(v125);
                      options = _nw_udp_create_options();
                      nw_protocol_stack_set_transport_protocol(stack, options);

                      nw_parameters_set_reuse_local_address(v125, 1);
                      nw_parameters_set_required_interface_type(v125, v124);
                      nw_parameters_set_local_endpoint(v125, local_endpoint);
                      sc_queue = v9->sc_queue;
                      v157[0] = MEMORY[0x1E69E9820];
                      v157[1] = 3221225472;
                      v157[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_154;
                      v157[3] = &unk_1E6A2D9F0;
                      v158 = v9;
                      v159 = host_with_numeric_port;
                      v128 = v125;
                      v160 = v128;
                      v161 = v11;
                      nw_socks5_server_register_udp_associate_request(WeakRetained, v158, v159, sc_queue, v157);
                    }

                    else
                    {
                      local_endpoint = nw_error_create_posix_error(14);
                      nw_socks5_connection_cancel_on_queue(v9, local_endpoint);
                    }
                  }

                  else
                  {
                    posix_error = nw_error_create_posix_error(22);
                    nw_socks5_connection_cancel_on_queue(v9, posix_error);
                  }

                  v131 = v148;
                }

                _Block_object_dispose(&v168, 8);
                _Block_object_dispose(type, 8);

                goto LABEL_131;
              }

              goto LABEL_299;
            }

            if (buf[2] != 6)
            {
              goto LABEL_299;
            }

            goto LABEL_227;
          }

          v97 = buf[5];
          if (size < buf[5] + 4)
          {
            v26 = __nwlog_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *type = 136446722;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              *&type[22] = 2048;
              *&type[24] = size;
              v91 = "%{public}s %{public}@ shoes_got_length connection received bonjour request too short %zu";
              goto LABEL_236;
            }

            goto LABEL_241;
          }

          v107 = strnlen(&buf[6], buf[5]);
          if (v107 >= v97)
          {
            v60 = __nwlog_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *type = 136446466;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              v112 = "%{public}s %{public}@ failed to parse bonjour name";
LABEL_318:
              _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, v112, type, 0x16u);
            }
          }

          else
          {
            v108 = v107 + 1;
            v109 = strnlen(&buf[v107 + 7], v97 - (v107 + 1)) + v107 + 1;
            if (v109 < v97)
            {
              v110 = v109 + 1;
              if (strnlen(&buf[v109 + 7], v97 - (v109 + 1)) + v109 + 1 < v97)
              {
                host = nw_endpoint_create_bonjour_service(&buf[6], &buf[v108 + 6], &buf[v110 + 6]);
                goto LABEL_281;
              }

              v60 = __nwlog_obj();
              if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_147;
              }

              *type = 136446466;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              v112 = "%{public}s %{public}@ failed to parse bonjour domain";
              goto LABEL_318;
            }

            v60 = __nwlog_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *type = 136446466;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              v112 = "%{public}s %{public}@ failed to parse bonjour type";
              goto LABEL_318;
            }
          }

LABEL_147:

          nw_socks5_connection_cancel_on_queue(v9, 0);
          goto LABEL_131;
        }

        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v70 = v9->sc_shoes_request_length_hbo;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v70;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ shoes_got_length connection received unexpected number of bytes %zu (expected %u)", buf, 0x26u);
        }

        goto LABEL_202;
      }

LABEL_131:

LABEL_132:
      return;
    }

LABEL_71:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    v35 = v9->sc_state;
    *buf = 136446978;
    *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    *&buf[24] = size;
    *&buf[32] = 1024;
    *&buf[34] = v35;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u", buf, 38);

    type[0] = OS_LOG_TYPE_ERROR;
    __str[0] = 0;
    if (__nwlog_fault(v36, type, __str))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          v39 = v9->sc_state;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v39;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u", buf, 0x26u);
        }
      }

      else if (__str[0] == 1)
      {
        v40 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v41 = type[0];
        v42 = os_log_type_enabled(v37, type[0]);
        if (v40)
        {
          if (v42)
          {
            v43 = v9->sc_state;
            *buf = 136447234;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2048;
            *&buf[24] = size;
            *&buf[32] = 1024;
            *&buf[34] = v43;
            *&buf[38] = 2082;
            *&buf[40] = v40;
            _os_log_impl(&dword_181A37000, v37, v41, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v40);
          goto LABEL_128;
        }

        if (v42)
        {
          v66 = v9->sc_state;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v66;
          _os_log_impl(&dword_181A37000, v37, v41, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u, no backtrace", buf, 0x26u);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          v45 = v9->sc_state;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v45;
          _os_log_impl(&dword_181A37000, v37, v44, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u, backtrace limit exceeded", buf, 0x26u);
        }
      }
    }

LABEL_128:
    if (v36)
    {
      free(v36);
    }

    goto LABEL_130;
  }

  if (v9->sc_state <= 3u)
  {
    if (sc_state < 2)
    {
      goto LABEL_71;
    }

    if (sc_state == 2)
    {
      *type = 0;
      if (size == 2)
      {
        nw_dispatch_data_copyout(v11, type, 2);
        if (type[0] == 5)
        {
          v55 = type[1];
          v56 = __nwlog_obj();
          v26 = v56;
          if (v55)
          {
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&buf[12] = 2114;
              *&buf[14] = v9;
              *&buf[22] = 1024;
              *&buf[24] = type[0];
              *&buf[28] = 1024;
              *&buf[30] = type[1];
              _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for version %u nMethods %u", buf, 0x22u);
            }

            v9->sc_state = 3;
            nw_socks5_connection_inner_connection_read_range_on_queue(v9, type[1], type[1]);
            goto LABEL_131;
          }

          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_241;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          v67 = "%{public}s %{public}@ connection received zero nMethods";
          v68 = v26;
          v69 = 22;
        }

        else
        {
          v26 = __nwlog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_241;
          }

          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[0];
          v67 = "%{public}s %{public}@ connection received unsupported socks version %u";
          v68 = v26;
          v69 = 28;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_241;
        }

        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = size;
        v67 = "%{public}s %{public}@ connection received unexpected number of bytes %zu";
        v68 = v26;
        v69 = 32;
      }

      _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, v67, buf, v69);
      goto LABEL_241;
    }

    if (size < 0x100)
    {
      nw_dispatch_data_copyout(v11, buf, 255);
      v71 = 0;
      while (buf[v71])
      {
        if (size == ++v71)
        {
          v60 = __nwlog_obj();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *type = 136446466;
            *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&type[12] = 2114;
            *&type[14] = v9;
            _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ unsupported auth methods", type, 0x16u);
          }

          goto LABEL_147;
        }
      }

      v86 = __nwlog_obj();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        *type = 136446466;
        *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&type[12] = 2114;
        *&type[14] = v9;
        _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ picking auth method: none", type, 0x16u);
      }

      v9->sc_state = 4;
      *type = 5;
      v87 = dispatch_data_create(type, 2uLL, 0, 0);
      nw_socks5_connection_increment_busy_on_queue(v9, WeakRetained);
      v88 = &v9->sc_in_connection->super;
      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_156;
      v154[3] = &unk_1E6A3A558;
      v155 = v9;
      v156 = WeakRetained;
      nw_connection_send(v88, v87, &__block_literal_global_44658, 1, v154);

      goto LABEL_131;
    }

    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = size;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
    }

LABEL_202:

    goto LABEL_130;
  }

  if (sc_state == 4)
  {
    *type = 0;
    if (size == 4)
    {
      nw_dispatch_data_copyout(v11, type, 4);
      if (type[0] == 5)
      {
        if (type[1] == OS_LOG_TYPE_INFO)
        {
          if (type[3] <= 4u && ((1 << type[3]) & 0x1A) != 0)
          {
            v62 = __nwlog_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447234;
              *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&buf[12] = 2114;
              *&buf[14] = v9;
              *&buf[22] = 1024;
              *&buf[24] = type[0];
              *&buf[28] = 1024;
              *&buf[30] = type[1];
              *&buf[34] = 1024;
              *&buf[36] = type[3];
              _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for version %u command %u addressType %u", buf, 0x28u);
            }

            v63 = type[3];
            v9->sc_out_address_type = type[3];
            switch(v63)
            {
              case 1:
                v64 = 4;
                break;
              case 3:
                v64 = 1;
                break;
              case 4:
                v64 = 16;
                break;
              default:
                v113 = __nwlog_obj();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                {
                  sc_out_address_type = v9->sc_out_address_type;
                  *buf = 136446722;
                  *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                  *&buf[12] = 2114;
                  *&buf[14] = v9;
                  *&buf[22] = 1024;
                  *&buf[24] = sc_out_address_type;
                  _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ address type %u not handled", buf, 0x1Cu);
                }

                nw_socks5_connection_cancel_on_queue(v9, 0);
                v64 = 0;
                break;
            }

            v9->sc_state = 5;
            nw_socks5_connection_inner_connection_read_range_on_queue(v9, v64, v64);
            goto LABEL_131;
          }

          v26 = __nwlog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_241;
          }

          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[3];
          v73 = "%{public}s %{public}@ connection received unsupported address type %u";
        }

        else
        {
          v26 = __nwlog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_241;
          }

          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[1];
          v73 = "%{public}s %{public}@ connection received unsupported command %u";
        }
      }

      else
      {
        v26 = __nwlog_obj();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_241;
        }

        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 1024;
        *&buf[24] = type[0];
        v73 = "%{public}s %{public}@ connection received unsupported socks version %u";
      }

      v74 = v26;
      v75 = 28;
    }

    else
    {
      v26 = __nwlog_obj();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_241;
      }

      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = size;
      v73 = "%{public}s %{public}@ connection received unexpected number of bytes %zu";
      v74 = v26;
      v75 = 32;
    }

    _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, v73, buf, v75);
    goto LABEL_241;
  }

  if (sc_state != 5)
  {
    if (sc_state != 6)
    {
      goto LABEL_131;
    }

    *type = 0;
    if (size != 2)
    {
      v72 = __nwlog_obj();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = size;
        _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
      }

      nw_socks5_connection_cancel_on_queue(v9, 0);
      goto LABEL_131;
    }

    nw_dispatch_data_copyout(v11, type, 2);
    v31 = __nwlog_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 1024;
      *&buf[24] = bswap32(*type) >> 16;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for port %u", buf, 0x1Cu);
    }

    v32 = v9->sc_out_address_type;
    switch(v32)
    {
      case 4:
        *buf = 7708;
        *&buf[2] = *type;
        *&buf[4] = 0;
        *&buf[8] = *v9->sc_out_address.byte_pointer;
        *&buf[24] = 0;
        v33 = _nw_endpoint_create_address(buf);
        break;
      case 3:
        *&buf[4] = 0;
        *buf = 0;
        snprintf(buf, 6uLL, "%u", bswap32(*type) >> 16);
        v33 = nw_endpoint_create_host(v9->sc_out_address.byte_pointer, buf);
        break;
      case 1:
        *buf = 528;
        *&buf[2] = *type;
        *&buf[4] = *v9->sc_out_address.byte_pointer;
        *&buf[8] = 0;
        v33 = _nw_endpoint_create_address(buf);
        break;
      default:
        v92 = 0;
        goto LABEL_217;
    }

    v92 = v33;
LABEL_217:
    byte_pointer = v9->sc_out_address.byte_pointer;
    if (byte_pointer)
    {
      free(byte_pointer);
      v9->sc_out_address.byte_pointer = 0;
    }

    v94 = __nwlog_obj();
    v95 = v94;
    if (v92)
    {
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        logging_description = nw_endpoint_get_logging_description(v92);
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2082;
        *&buf[24] = logging_description;
        _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_INFO, "%{public}s %{public}@ instantiated endpoint: %{public}s", buf, 0x20u);
      }

      v9->sc_state = 7;
      nw_socks5_connection_connect_outer_on_queue(v9, v92, 0);
    }

    else
    {
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed to instantiate endpoint", buf, 0x16u);
      }

      nw_socks5_connection_cancel_on_queue(v9, 0);
    }

    goto LABEL_131;
  }

  v57 = v9->sc_out_address_type;
  if (v57 == 1 || v57 == 4)
  {
    if (v57 == 1 && size != 4 || v57 == 4 && size != 16)
    {
      v22 = __nwlog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = size;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
      }

      goto LABEL_202;
    }
  }

  else if (v57 != 3 || !v9->sc_out_address_domain_length)
  {
    if (size == 1)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      nw_dispatch_data_copyout(v11, type, 1);
      v58 = type[0];
      v59 = __nwlog_obj();
      v60 = v59;
      if (v58)
      {
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[0];
          _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request has address length %u", buf, 0x1Cu);
        }

        v61 = type[0];
        v9->sc_out_address_domain_length = type[0];
        nw_socks5_connection_inner_connection_read_range_on_queue(v9, v61, v61);
        goto LABEL_131;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ address length is zero", buf, 0x16u);
      }

      goto LABEL_147;
    }

    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = size;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
    }

    goto LABEL_202;
  }

  if (v57 == 3)
  {
    v78 = size + 1;
  }

  else
  {
    v78 = size;
  }

  if (!v78)
  {
    v138 = __nwlog_obj();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      v139 = 3;
    }

    else
    {
      v139 = 2;
    }

    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
    v140 = _os_log_send_and_compose_impl(v139, 0, 0, 0, &dword_181A37000, v138, 16, "%{public}s strict_malloc called with size 0", buf, 12);

    if (__nwlog_should_abort(v140))
    {
      goto LABEL_333;
    }

    free(v140);
    v78 = 0;
  }

  v79 = malloc_type_malloc(v78, 0xCD20F954uLL);
  if (v79)
  {
    goto LABEL_175;
  }

  v80 = __nwlog_obj();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    v81 = 3;
  }

  else
  {
    v81 = 2;
  }

  *buf = 136446210;
  *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
  LODWORD(v141) = 12;
  v82 = _os_log_send_and_compose_impl(v81, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s strict allocator failed", buf, v141);

  if (!__nwlog_should_abort(v82))
  {
    free(v82);
LABEL_175:
    v9->sc_out_address.byte_pointer = v79;
    nw_dispatch_data_copyout(v11, v79, size);
    v83 = v9->sc_out_address_type;
    if (v83 == 3)
    {
      v9->sc_out_address.byte_pointer[size] = 0;
      v83 = v9->sc_out_address_type;
    }

    switch(v83)
    {
      case 4:
        v84 = __nwlog_obj();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          v100 = inet_ntop(2, v9->sc_out_address.byte_pointer, buf, 0x2Eu);
          *type = 136446722;
          *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&type[12] = 2114;
          *&type[14] = v9;
          *&type[22] = 2082;
          *&type[24] = v100;
          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for ipv6 %{public}s", type, 0x20u);
        }

        break;
      case 3:
        v98 = __nwlog_obj();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          v99 = v9->sc_out_address.byte_pointer;
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2082;
          *&buf[24] = v99;
          _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for domain %{public}s", buf, 0x20u);
        }

        goto LABEL_253;
      case 1:
        v84 = __nwlog_obj();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          v85 = inet_ntop(2, v9->sc_out_address.byte_pointer, type, 0x10u);
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2082;
          *&buf[24] = v85;
          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for ipv4 %{public}s", buf, 0x20u);
        }

        break;
      default:
LABEL_253:
        v9->sc_state = 6;
        nw_socks5_connection_inner_connection_read_range_on_queue(v9, 2u, 2u);
        goto LABEL_131;
    }

    goto LABEL_253;
  }

LABEL_333:
  __break(1u);
}

void sub_181EC0A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a65, 8);

  _Unwind_Resume(a1);
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_157(uint64_t a1, void *a2)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 32);
  if (*(v4 + 56) == 255)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    v5 = v3;
    v6 = v5[3];

    v7 = *(*(a1 + 32) + 160);
    if (v7 < 0)
    {
      v19 = (v6 - 6);
      if (v19 <= 0x3B)
      {
        if (((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
        {
LABEL_24:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 32);
            *buf = 136446722;
            v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v42 = 2114;
            v43 = v22;
            v44 = 1024;
            LODWORD(v45[0]) = v6;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write out error %{darwin.errno}d", buf, 0x1Cu);
          }

LABEL_27:
          nw_socks5_connection_cancel_on_queue(*(a1 + 32), v5);
          goto LABEL_31;
        }

        if (v19 == 49)
        {
LABEL_6:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 32);
            *buf = 136446722;
            v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v42 = 2114;
            v43 = v9;
            v44 = 2112;
            v45[0] = v5;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring write out error %@", buf, 0x20u);
          }

          nw_socks5_connection_inner_connection_read_on_queue(*(a1 + 32));
          goto LABEL_31;
        }
      }
    }

    else
    {
      if ((v7 & 0x20) != 0 && v6 == 55)
      {
        goto LABEL_6;
      }

      if ((v6 - 6) <= 0x3B && ((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
      {
        goto LABEL_24;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = *(a1 + 32);
    *buf = 136446722;
    v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v42 = 2114;
    v43 = v24;
    v44 = 1024;
    LODWORD(v45[0]) = v6;
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s %{public}@ write out error %{darwin.errno}d", buf, 28);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v25, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          v28 = *(a1 + 32);
          *buf = 136446722;
          v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v42 = 2114;
          v43 = v28;
          v44 = 1024;
          LODWORD(v45[0]) = v6;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}@ write out error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v38 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v31)
          {
            v32 = *(a1 + 32);
            *buf = 136446978;
            v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v42 = 2114;
            v43 = v32;
            v44 = 1024;
            LODWORD(v45[0]) = v6;
            WORD2(v45[0]) = 2082;
            *(v45 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v30, "%{public}s %{public}@ write out error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (v31)
        {
          v35 = *(a1 + 32);
          *buf = 136446722;
          v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v42 = 2114;
          v43 = v35;
          v44 = 1024;
          LODWORD(v45[0]) = v6;
          _os_log_impl(&dword_181A37000, v26, v30, "%{public}s %{public}@ write out error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v26, type))
        {
          v34 = *(a1 + 32);
          *buf = 136446722;
          v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v42 = 2114;
          v43 = v34;
          v44 = 1024;
          LODWORD(v45[0]) = v6;
          _os_log_impl(&dword_181A37000, v26, v33, "%{public}s %{public}@ write out error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_48:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_27;
  }

  if (*(a1 + 56) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    *buf = 136446722;
    v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v42 = 2114;
    v43 = v11;
    v44 = 2048;
    v45[0] = v12;
    v13 = "%{public}s %{public}@ wrote %zu bytes is_complete into outer connection";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_12;
  }

  if ((gLogDatapath & 1) == 0)
  {
    *(v4 + 192) += *(a1 + 48);
    v17 = *(a1 + 32);
    goto LABEL_30;
  }

  v10 = __nwlog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 32);
    v37 = *(a1 + 48);
    *buf = 136446722;
    v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v42 = 2114;
    v43 = v36;
    v44 = 2048;
    v45[0] = v37;
    v13 = "%{public}s %{public}@ wrote %zu bytes not_complete into outer connection";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
LABEL_12:
    _os_log_impl(&dword_181A37000, v14, v15, v13, buf, 0x20u);
  }

LABEL_13:

  v16 = *(a1 + 56);
  *(*(a1 + 32) + 192) += *(a1 + 48);
  v17 = *(a1 + 32);
  if ((v16 & 1) == 0)
  {
LABEL_30:
    nw_socks5_connection_inner_connection_read_on_queue(v17);
    goto LABEL_31;
  }

  *(v17 + 160) |= 1u;
  v18 = *(a1 + 32);
  if ((~v18[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v18, 0);
  }

LABEL_31:
}

void nw_socks5_connection_inner_connection_read_on_queue(NWConcrete_nw_socks5_connection *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if ((*(v1 + 160) & 0x20) != 0)
  {
    v3 = v1;
    if (gLogDatapath == 1)
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 136446466;
        *&v7[4] = "nw_socks5_connection_inner_connection_read_message_on_queue";
        *&v7[12] = 2114;
        *&v7[14] = v3;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ reading message on inner connection", v7, 0x16u);
      }
    }

    sc_in_connection = v3->sc_in_connection;
    *v7 = MEMORY[0x1E69E9820];
    *&v7[8] = 3221225472;
    *&v7[16] = ___ZL59nw_socks5_connection_inner_connection_read_message_on_queueP31NWConcrete_nw_socks5_connection_block_invoke;
    v8 = &unk_1E6A39638;
    v5 = v3;
    v9 = v5;
    nw_connection_receive_internal(sc_in_connection, 0, 0xFFFFFFFF, 0xFFFFFFFF, v7);
  }

  else
  {
    nw_socks5_connection_inner_connection_read_range_on_queue(v1, 1u, 0xFFFFFFFF);
  }
}

void nw_socks5_connection_inner_connection_read_range_on_queue(NWConcrete_nw_socks5_connection *a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2 - 1 < a3)
  {
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
        v23 = 2114;
        *v24 = v5;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ reading on inner connection", buf, 0x16u);
      }
    }

    sc_in_connection = v5->sc_in_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL57nw_socks5_connection_inner_connection_read_range_on_queueP31NWConcrete_nw_socks5_connectionjj_block_invoke;
    v16[3] = &unk_1E6A2DA40;
    v17 = v5;
    v18 = a2;
    nw_connection_receive_internal(sc_in_connection, 0, a2, a3, v16);

    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
  v23 = 1024;
  *v24 = a2;
  *&v24[4] = 1024;
  *&v24[6] = a3;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s unexpected minBytes %u maxBytes %u", buf, 24);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v8, &type, &v19))
  {
    goto LABEL_9;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446722;
      v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 1024;
      *&v24[6] = a3;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s unexpected minBytes %u maxBytes %u", buf, 0x18u);
    }

LABEL_8:

LABEL_9:
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446722;
      v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 1024;
      *&v24[6] = a3;
      _os_log_impl(&dword_181A37000, v9, v14, "%{public}s unexpected minBytes %u maxBytes %u, backtrace limit exceeded", buf, 0x18u);
    }

    goto LABEL_8;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v12 = type;
  v13 = os_log_type_enabled(v9, type);
  if (!backtrace_string)
  {
    if (v13)
    {
      *buf = 136446722;
      v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 1024;
      *&v24[6] = a3;
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s unexpected minBytes %u maxBytes %u, no backtrace", buf, 0x18u);
    }

    goto LABEL_8;
  }

  if (v13)
  {
    *buf = 136446978;
    v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
    v23 = 1024;
    *v24 = a2;
    *&v24[4] = 1024;
    *&v24[6] = a3;
    v25 = 2082;
    v26 = backtrace_string;
    _os_log_impl(&dword_181A37000, v9, v12, "%{public}s unexpected minBytes %u maxBytes %u, dumping backtrace:%{public}s", buf, 0x22u);
  }

  free(backtrace_string);
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void nw_parameters_set_pid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_pid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_pid";
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
        v12 = "nw_parameters_set_pid";
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
            v12 = "nw_parameters_set_pid";
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
        v12 = "nw_parameters_set_pid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_pid";
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

void nw_ip_channel_inbox_handle_input_frame(void *a1, uint64_t a2, void *a3, void *a4, sockaddr_in_4_6 *a5)
{
  v260 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  memset(__src, 0, 28);
  memset(&__dst, 0, sizeof(__dst));
  v12 = *(v9 + 14);
  v241 = v11;
  if (v12 != 2)
  {
    v235 = v9[166];
    v22 = *(v9 + 19);
    if (v22)
    {
      memcpy(&__dst, *(v9 + 19), *v22);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (v22[1] == 2)
      {
        v26 = 528;
      }

      else
      {
        v26 = 7708;
      }

      LOWORD(__src[0]) = v26;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    goto LABEL_14;
  }

  v13 = v11;
  v14 = *(v9 + 40);
  LODWORD(v247) = 0;
  v15 = nw_frame_unclaimed_bytes(v10, &v247);
  if (!v247)
  {
LABEL_213:
    nw_frame_finalize(v10);
LABEL_214:

    return;
  }

  v16 = *v15 >> 4;
  if (v16 != 6)
  {
    if (v16 != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[2] = "nw_ip_parse";
        buf[6] = 1024;
        *&buf[7] = v16;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s Unknown IP version: %u", buf, 0x12u);
      }

      goto LABEL_213;
    }

    *uu = 0;
    v17 = nw_frame_unclaimed_bytes(v10, uu);
    v259 = 0;
    memset(&buf[10], 0, 32);
    v19 = *uu;
    if (*uu <= 0x13u)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *v254 = 136446466;
        *&v254[4] = "ipv4_parse";
        *&v254[12] = 1024;
        *&v254[14] = *uu;
        v21 = "%{public}s Received IPv4 packet with incorrect length %u";
LABEL_93:
        v33 = v254;
        goto LABEL_94;
      }

      goto LABEL_212;
    }

    *buf = *v17;
    *&buf[8] = *(v17 + 16);
    v35 = 4 * (buf[0] & 0xF);
    if (v35 < 0x14 || *uu < v35)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *v254 = 136446466;
        *&v254[4] = "ipv4_parse";
        *&v254[12] = 1024;
        *&v254[14] = v35;
        v21 = "%{public}s Invalid IPv4 header length: %u";
        goto LABEL_93;
      }

LABEL_212:
      v13 = v241;
      goto LABEL_213;
    }

    v36 = buf[5];
    buf[5] = 0;
    v37 = ((v35 - 2) >> 1) + 1;
    v38 = 2 * (v37 & 0xFFFFFFF8);
    v39 = &buf[4];
    v40 = 0uLL;
    v41 = v37 & 0xFFFFFFF8;
    v42 = 0uLL;
    do
    {
      v40 = vaddw_u16(v40, v39[-1]);
      v42 = vaddw_u16(v42, *v39);
      v39 += 2;
      v41 -= 8;
    }

    while (v41);
    v43 = vaddvq_s32(vaddq_s32(v42, v40));
    if ((v37 & 0xFFFFFFF8) != v37)
    {
      v44 = &buf[v37 & 0xFFFFFFF8];
      v45 = v35 - v38 + 2;
      do
      {
        v46 = *v44++;
        v43 += v46;
        v45 -= 2;
      }

      while (v45 > 3);
    }

    if ((v36 ^ (HIWORD(v43) + v43 + ((HIWORD(v43) + v43) >> 16))) != 0xFFFF)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *v254 = 136446466;
        *&v254[4] = "ipv4_parse";
        *&v254[12] = 1024;
        *&v254[14] = v36;
        v21 = "%{public}s Invalid ipv4 header checksum 0x%x";
        goto LABEL_93;
      }

      goto LABEL_212;
    }

    v47 = bswap32(buf[1]) >> 16;
    if (*uu < v47)
    {
      v48 = __nwlog_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        goto LABEL_212;
      }

      *v254 = 136446722;
      *&v254[4] = "ipv4_parse";
      *&v254[12] = 1024;
      *&v254[14] = v47;
      *&v254[18] = 1024;
      *&v254[20] = *uu;
      v21 = "%{public}s Received IPv4 packet with incorrect length, expected %u received %u";
      v33 = v254;
LABEL_50:
      v51 = v48;
      v52 = OS_LOG_TYPE_INFO;
      v53 = 24;
LABEL_96:
      _os_log_impl(&dword_181A37000, v51, v52, v21, v33, v53);
      goto LABEL_212;
    }

    if (*uu > v47)
    {
      if (gLogDatapath == 1)
      {
        v201 = __nwlog_obj();
        v202 = os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG);
        v19 = *uu;
        if (v202)
        {
          *v254 = 136446722;
          *&v254[4] = "ipv4_parse";
          *&v254[12] = 1024;
          *&v254[14] = v47;
          *&v254[18] = 1024;
          *&v254[20] = *uu;
          _os_log_impl(&dword_181A37000, v201, OS_LOG_TYPE_DEBUG, "%{public}s Received length mismatch with IP total length %u != %u", v254, 0x18u);
          v19 = *uu;
        }
      }

      nw_frame_claim(v10, v18, 0, v19 - v47);
    }

    if ((buf[6] & 0xF0) == 0xE0)
    {
      v60 = __nwlog_obj();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_212;
      }

      *v254 = 136446210;
      *&v254[4] = "ipv4_parse";
      v21 = "%{public}s Invalid source address";
      v33 = v254;
      goto LABEL_118;
    }

    v23 = (buf[3] & 0xFF3F) != 0;
    v92 = buf[2];
    if ((buf[3] & 0xFF3F) == 0)
    {
      v92 = 0;
    }

    v25 = v92;
    v24 = buf[3] == 32;
    v235 = HIBYTE(buf[4]);
    *(&__src[0] + 1) = 0;
    LODWORD(__src[0]) = 528;
    DWORD1(__src[0]) = *&buf[6];
    *&__dst.var0.sa_len = 528;
    *__dst.var3.sin6_addr.__u6_addr8 = 0;
    __dst.var2.sin_addr.s_addr = *&buf[8];
    v83 = v10;
    v84 = v35;
    goto LABEL_159;
  }

  *v254 = 0;
  v30 = nw_frame_unclaimed_bytes(v10, v254);
  v32 = *v254;
  if (*v254 <= 0x27u)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[2] = "ipv6_parse";
      buf[6] = 1024;
      *&buf[7] = *v254;
      v21 = "%{public}s Received IPv6 packet with incorrect length %u";
      v33 = buf;
LABEL_94:
      v51 = v20;
      v52 = OS_LOG_TYPE_INFO;
      goto LABEL_95;
    }

    goto LABEL_212;
  }

  v49 = bswap32(*(v30 + 4)) >> 16;
  v50 = v49 + 40;
  if ((v49 + 40) > *v254)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_212;
    }

    *buf = 136446722;
    *&buf[2] = "ipv6_parse";
    buf[6] = 1024;
    *&buf[7] = v50;
    buf[9] = 1024;
    *&buf[10] = *v254;
    v21 = "%{public}s Received IPv6 packet with incorrect length, expected %u received %u";
    v33 = buf;
    goto LABEL_50;
  }

  if (v49 + 80 < *v254)
  {
    v61 = v30;
    if (gLogDatapath == 1)
    {
      v199 = __nwlog_obj();
      v200 = os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG);
      v32 = *v254;
      if (v200)
      {
        *buf = 136446722;
        *&buf[2] = "ipv6_parse";
        buf[6] = 1024;
        *&buf[7] = v50;
        buf[9] = 1024;
        *&buf[10] = *v254;
        _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s Received length mismatch with IPv6 %u != %u", buf, 0x18u);
        v32 = *v254;
      }
    }

    nw_frame_claim(v10, v31, 0, v32 - v50);
    v30 = v61;
  }

  v62 = *(v30 + 6);
  v23 = v62 == 44;
  if (v62 == 44)
  {
    v24 = *(v30 + 42) == 256;
    v25 = *(v30 + 44);
    v235 = *(v30 + 40);
  }

  else
  {
    v235 = *(v30 + 6);
    v24 = 0;
    v25 = 0;
  }

  v69 = *(v30 + 8);
  v70 = *(v30 + 12);
  v71 = *(v30 + 16);
  if (*(v30 + 8))
  {
    v72 = 0;
  }

  else
  {
    v72 = v71 == -65536;
  }

  v73 = v72;
  if (*(v30 + 8) == 0xFF || v73)
  {
    v80 = __nwlog_obj();
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    *buf = 136446210;
    *&buf[2] = "ipv6_parse";
    v21 = "%{public}s Invalid source address";
LABEL_114:
    v33 = buf;
    v51 = v80;
    v52 = OS_LOG_TYPE_ERROR;
    v53 = 12;
    goto LABEL_96;
  }

  v74 = *(v30 + 20);
  *&__src[0] = 7708;
  *(&__src[1] + 4) = v74;
  *(&__src[0] + 1) = __PAIR64__(v70, v69);
  LODWORD(__src[1]) = v71;
  if ((v69 & 0xC0FF) == 0x80FE)
  {
    DWORD2(__src[1]) = v14;
    v75 = v30;
    loga = __nwlog_obj();
    v76 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
    v30 = v75;
    if (v76)
    {
      *buf = 136446978;
      *&buf[2] = "ipv6_parse";
      buf[6] = 1040;
      *&buf[7] = LOBYTE(__src[0]);
      buf[9] = 2096;
      *&buf[10] = __src;
      buf[14] = 1024;
      *&buf[15] = v14;
      _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s Set scopeid for src %{network:sockaddr}.*P to %u", buf, 0x22u);
      v30 = v75;
    }
  }

  v77 = *(v30 + 24);
  v78 = *(v30 + 28);
  v79 = *(v30 + 32);
  if (!__PAIR64__(v78, v77) && v79 == -65536)
  {
    v80 = __nwlog_obj();
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    *buf = 136446210;
    *&buf[2] = "ipv6_parse";
    v21 = "%{public}s Invalid destination address";
    goto LABEL_114;
  }

  v81 = v30;
  v82 = *(v30 + 36);
  *&__dst.var0.sa_len = 7708;
  *&__dst.var3.sin6_addr.__u6_addr32[3] = v82;
  *__dst.var3.sin6_addr.__u6_addr8 = __PAIR64__(v78, v77);
  __dst.var3.sin6_addr.__u6_addr32[2] = v79;
  if ((v77 & 0xC0FF) == 0x80FE)
  {
    __dst.var3.sin6_scope_id = v14;
    logb = __nwlog_obj();
    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      *&buf[2] = "ipv6_parse";
      buf[6] = 1040;
      *&buf[7] = __dst.var0.sa_len;
      buf[9] = 2096;
      *&buf[10] = &__dst;
      buf[14] = 1024;
      *&buf[15] = v14;
      _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s Set scopeid for dst %{network:sockaddr}.*P to %u", buf, 0x22u);
    }
  }

  nw_frame_claim(v10, v31, 40, 0);
  if (*(v81 + 6) != 44)
  {
    goto LABEL_160;
  }

  v83 = v10;
  v84 = 8;
LABEL_159:
  nw_frame_claim(v83, v18, v84, 0);
LABEL_160:
  if (v235 != v9[166])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v93 = v9[166];
      *buf = 136446722;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      buf[6] = 1024;
      *&buf[7] = v235;
      buf[9] = 1024;
      *&buf[10] = v93;
      _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_INFO, "%{public}s Received IP packet with protocol %u != %u", buf, 0x18u);
    }

    goto LABEL_90;
  }

  v12 = *(v9 + 14);
LABEL_14:
  if ((v12 & 0xFFFFFFFE) == 2)
  {
    if (v24 || !v23)
    {
      if (v235 == 17)
      {
        *v254 = 0;
        v55 = nw_frame_unclaimed_bytes(v10, v254);
        if (*v254 < 8u || (*v254 >= bswap32(v55[2]) >> 16 ? (v56 = 1) : (v56 = v23), (v56 & 1) == 0))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_212;
          }

          *buf = 136446466;
          *&buf[2] = "nw_udp_parse";
          buf[6] = 1024;
          *&buf[7] = *v254;
          v21 = "%{public}s Received UDP packet with incorrect length %u";
          goto LABEL_65;
        }

        v57 = *v55;
        v58 = v55[1];
        v59 = BYTE1(__src[0]);
        if (BYTE1(__src[0]) == 30 && !v55[3])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            goto LABEL_212;
          }

          *buf = 136446210;
          *&buf[2] = "nw_udp_parse";
          v21 = "%{public}s Received IPv6 UDP packet with 0 checksum";
          goto LABEL_117;
        }

        if (v55[3])
        {
          v85 = v23;
        }

        else
        {
          v85 = 1;
        }

        if ((v85 & 1) == 0)
        {
          v86 = 8;
          if (BYTE1(__src[0]) == 2)
          {
            v86 = 4;
          }

          if (__dst.var0.sa_family == 2)
          {
            p_sin6_flowinfo = &__dst.var3.sin6_flowinfo;
          }

          else
          {
            p_sin6_flowinfo = &__dst.var3.sin6_addr;
          }

          if (!udp_validate_cksum_internal(v10, *v254, (__src + v86), p_sin6_flowinfo->__u6_addr16, BYTE1(__src[0]) == 30, 0))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v60 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              goto LABEL_212;
            }

            *buf = 136446210;
            *&buf[2] = "nw_udp_parse";
            v21 = "%{public}s Received UDP packet with invalid checksum";
            goto LABEL_117;
          }

          v59 = BYTE1(__src[0]);
        }

        if (v59 != 2 && v59 != 30)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_212;
          }

          *buf = 136446466;
          *&buf[2] = "nw_udp_parse";
          buf[6] = 1024;
          *&buf[7] = BYTE1(__src[0]);
          v21 = "%{public}s Unsuppposed address family: %u";
          goto LABEL_65;
        }

        WORD1(__src[0]) = v57;
        __dst.var2.sin_port = v58;
      }

      else if (v235 == 6)
      {
        if (__dst.var0.sa_family == 2)
        {
          if ((__dst.var0.sa_data[2] & 0xF0) != 0xE0)
          {
LABEL_21:
            *v254 = 0;
            v27 = nw_frame_unclaimed_bytes(v10, v254);
            if (*v254 <= 0x13u)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v28 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_212;
              }

              *buf = 136446466;
              *&buf[2] = "nw_tcp_parse_syn";
              buf[6] = 1024;
              *&buf[7] = *v254;
              v21 = "%{public}s Received TCP packet with incorrect length %u";
LABEL_65:
              v33 = buf;
              v51 = v28;
              v52 = OS_LOG_TYPE_ERROR;
LABEL_95:
              v53 = 18;
              goto LABEL_96;
            }

            v63 = *v27;
            v64 = v27[1];
            v65 = *(v27 + 12);
            log = *(v27 + 13);
            v66 = 8;
            if (BYTE1(__src[0]) == 2)
            {
              v66 = 4;
            }

            if (__dst.var0.sa_family == 2)
            {
              p_sin6_addr = &__dst.var3.sin6_flowinfo;
            }

            else
            {
              p_sin6_addr = &__dst.var3.sin6_addr;
            }

            if (validate_tcp_cksum(v10, *v254, (__src + v66), p_sin6_addr->__u6_addr32, v63, v64, __dst.var0.sa_family == 30))
            {
              if (v65 < 0x50 || *v254 < ((v65 >> 2) & 0x3C))
              {
                v88 = (v65 >> 2) & 0x3C;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v20 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_212;
                }

                *buf = 136446466;
                *&buf[2] = "nw_tcp_parse_syn";
                buf[6] = 1024;
                *&buf[7] = v88;
                v21 = "%{public}s invalid tcp offset: %u";
              }

              else
              {
                if (BYTE1(__src[0]) == 2 || BYTE1(__src[0]) == 30)
                {
                  WORD1(__src[0]) = v63;
                  __dst.var2.sin_port = v64;
                  if ((~log & 3) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v60 = gLogObj;
                    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_212;
                    }

                    *buf = 136446210;
                    *&buf[2] = "nw_tcp_parse_syn";
                    v21 = "%{public}s Dropping SYN|FIN";
                    goto LABEL_117;
                  }

                  if ((log & 0x16) != 2)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v146 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136446210;
                      *&buf[2] = "nw_tcp_parse_syn";
                      _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_INFO, "%{public}s Non SYN packet delivered to listener", buf, 0xCu);
                    }

                    v13 = v241;
                    if ((log & 4) == 0)
                    {
                      nw_tcp_respond_reset(v10, a2, (v9 + 88), &__dst, __src);
                    }

                    goto LABEL_213;
                  }

                  goto LABEL_170;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v20 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_212;
                }

                *buf = 136446466;
                *&buf[2] = "nw_tcp_parse_syn";
                buf[6] = 1024;
                *&buf[7] = BYTE1(__src[0]);
                v21 = "%{public}s Unsuppposed address family: %u";
              }

              v33 = buf;
              goto LABEL_94;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v60 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              goto LABEL_212;
            }

            *buf = 136446210;
            *&buf[2] = "nw_tcp_parse_syn";
            v21 = "%{public}s invalid tcp checksum";
LABEL_117:
            v33 = buf;
LABEL_118:
            v51 = v60;
            v52 = OS_LOG_TYPE_INFO;
            v53 = 12;
            goto LABEL_96;
          }
        }

        else if (__dst.var0.sa_family != 30 || __dst.var3.sin6_addr.__u6_addr8[0] != 255)
        {
          goto LABEL_21;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v68 = gLogObj;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_INFO, "%{public}s Received TCP packet with multicast destination address", buf, 0xCu);
        }

LABEL_90:

        goto LABEL_212;
      }

LABEL_170:
      v94 = !v24;
      if (!a5)
      {
        v94 = 1;
      }

      if ((v94 & 1) == 0)
      {
        *&a5[2].var0.sa_len = v25;
        a5[2].var0.sa_data[2] = v235;
        memcpy(a5, __src, LOBYTE(__src[0]));
        memcpy(&a5[1], &__dst, __dst.var0.sa_len);
      }

      goto LABEL_174;
    }

    if (!a5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v54 = gLogObj;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
        buf[6] = 1024;
        *&buf[7] = v25;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s Invalid fragment ID being dropped %u", buf, 0x12u);
      }

      goto LABEL_174;
    }

    if (v25 == *&a5[2].var0.sa_len)
    {
      sa_family = a5->var0.sa_family;
      if (__PAIR64__(sa_family, a5->var0.sa_len) == __PAIR64__(BYTE1(__src[0]), LOBYTE(__src[0])))
      {
        if (sa_family == 30)
        {
          if (*a5->var3.sin6_addr.__u6_addr8 != *(&__src[0] + 1) || *&a5->var3.sin6_addr.__u6_addr32[2] != *&__src[1])
          {
            goto LABEL_153;
          }
        }

        else if (sa_family != 2 || a5->var2.sin_addr.s_addr != DWORD1(__src[0]))
        {
          goto LABEL_153;
        }

        if (nw_ip_channel_sockaddrs_are_equal_without_port(a5 + 1, &__dst))
        {
          v235 = a5[2].var0.sa_data[2];
          memcpy(__src, a5, a5->var0.sa_len);
          memcpy(&__dst, &a5[1], a5[1].var0.sa_len);
          goto LABEL_170;
        }
      }
    }

LABEL_153:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v90 = gLogObj;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v91 = *&a5[2].var0.sa_len;
      *buf = 136446722;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      buf[6] = 1024;
      *&buf[7] = v25;
      buf[9] = 1024;
      *&buf[10] = v91;
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_INFO, "%{public}s Invalid fragment ID being dropped %u (expecting %u)", buf, 0x18u);
    }

    goto LABEL_212;
  }

LABEL_174:
  if (v241)
  {
    if (_nw_array_get_count(v241))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL38nw_ip_channel_inbox_handle_input_frameP19nw_ip_channel_inboxP11nw_protocolPU22objcproto11OS_nw_frame8NSObjectPU22objcproto11OS_nw_arrayS3_P27nw_ip_channel_fragment_info_block_invoke;
      aBlock[3] = &unk_1E6A359C8;
      *v250 = __src[0];
      *&v250[12] = *(__src + 12);
      *v251 = __dst.var0;
      *&v251[12] = *(&__dst.var3.sin6_addr + 4);
      v249 = v10;
      v95 = _nw_array_apply(v241, aBlock);

      v13 = v241;
      if (!v95)
      {
        goto LABEL_214;
      }
    }
  }

  address = _nw_endpoint_create_address(__src);
  logc = _nw_endpoint_create_address(&__dst.var0.sa_len);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v96 = gLogObj;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
  {
    v97 = logc;
    v98 = v97;
    if (v97)
    {
      description = _nw_endpoint_get_description(v97);
    }

    else
    {
      description = "<NULL>";
    }

    v100 = address;
    v101 = v100;
    if (v100)
    {
      logging_description = _nw_endpoint_get_logging_description(v100);
    }

    else
    {
      logging_description = "<NULL>";
    }

    *buf = 136446722;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2082;
    *&buf[7] = description;
    buf[11] = 2082;
    *&buf[12] = logging_description;
    _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s Looking up %{public}s<->%{public}s", buf, 0x20u);
  }

  v103 = v9;
  v104 = v103;
  if (*(v103 + 82) != __dst.var2.sin_port)
  {
    goto LABEL_203;
  }

  if ((v103[167] & 1) == 0)
  {
    goto LABEL_187;
  }

  v108 = *(v103 + 19);
  if (!v108)
  {
LABEL_203:

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v113 = gLogObj;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      v114 = logc;
      v115 = v114;
      if (v114)
      {
        v116 = _nw_endpoint_get_description(v114);
      }

      else
      {
        v116 = "<NULL>";
      }

      v117 = address;
      v118 = v117;
      if (v117)
      {
        v119 = _nw_endpoint_get_logging_description(v117);
      }

      else
      {
        v119 = "<NULL>";
      }

      *buf = 136446722;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      buf[6] = 2082;
      *&buf[7] = v116;
      buf[11] = 2082;
      *&buf[12] = v119;
      _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_INFO, "%{public}s packet %{public}s<-%{public}s does not match listener", buf, 0x20u);
    }

    goto LABEL_212;
  }

  v109 = *(v108 + 1);
  if (v109 == 30)
  {
    if (__dst.var0.sa_family != 30)
    {
      goto LABEL_203;
    }

    v111 = *(v108 + 8);
    v110 = *(v108 + 16);
    if (v111 != *__dst.var3.sin6_addr.__u6_addr8 || v110 != *&__dst.var3.sin6_addr.__u6_addr32[2])
    {
      goto LABEL_203;
    }
  }

  else if (v109 != 2 || __dst.var0.sa_family != 2 || *(v108 + 4) != __dst.var2.sin_addr.s_addr)
  {
    goto LABEL_203;
  }

LABEL_187:

  if (nw_parameters_get_upper_transport_protocol(*(v104 + 6)) != 253)
  {
    goto LABEL_273;
  }

  v247 = 0;
  v105 = nw_parameters_copy_upper_transport_protocol_options(*(v104 + 6));
  if (nw_protocol_options_is_quic_stream(v105))
  {
    v106 = nw_quic_stream_copy_shared_connection_options(v105);
    source_connection_id_length = nw_quic_connection_get_source_connection_id_length(v106);
  }

  else if (nw_protocol_options_is_quic_connection(v105))
  {
    source_connection_id_length = nw_quic_connection_get_source_connection_id_length(v105);
  }

  else
  {
    source_connection_id_length = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v120 = gLogObj;
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 1024;
    *&buf[7] = source_connection_id_length;
    _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s Using CID length %u", buf, 0x12u);
  }

  *buf = 0;
  v121 = nw_frame_unclaimed_bytes(v10, buf);
  v122 = (*buf - 8);
  if (*buf <= 8u || (*buf -= 8, !nw_quic_parse_internal((v121 + 8), v122, source_connection_id_length, &v247)))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v125 = gLogObj;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s Unable to parse connection ID", buf, 0xCu);
    }

    goto LABEL_272;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v123 = gLogObj;
  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
  {
    v124 = *(v104 + 5);
    *buf = 136447234;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2112;
    *&buf[7] = v124;
    buf[11] = 2112;
    *&buf[12] = v247;
    buf[16] = 2112;
    *&buf[17] = address;
    buf[21] = 2112;
    *&buf[22] = logc;
    _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEFAULT, "%{public}s Received QUIC short header packet on interface %@ with CID %@ [%@->%@]", buf, 0x34u);
  }

  if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
  }

  v125 = nw_protocol_copy_quic_stream_definition_quic_definition;
  identifier = nw_protocol_definition_get_identifier(v125);
  *&uu[12] = 0;
  *&uu[4] = 0;
  v257 = 0;
  *&uu[2] = *(v104 + 82);
  *uu = 7708;
  parameters = nw_parameters_copy_context(*(v104 + 6));
  v230 = _nw_endpoint_create_address(uu);
  v228 = nw_context_copy_registered_endpoint(parameters, v230);
  v127 = nw_endpoint_copy_registrar_for_identifier(v228, identifier, 0);
  if (!v127)
  {
LABEL_271:

LABEL_272:
LABEL_273:
    parametersa = _nw_parameters_copy();
    if (__dst.var0.sa_family == 2)
    {
      if ((__dst.var0.sa_data[2] & 0xF0) == 0xE0)
      {
        goto LABEL_288;
      }

      v157 = *(v104 + 5);
      p_s_addr = &__dst.var2.sin_addr.s_addr;
    }

    else
    {
      if (__dst.var0.sa_family != 30)
      {
        v157 = *(v104 + 5);
        goto LABEL_297;
      }

      if (__dst.var3.sin6_addr.__u6_addr8[0] == 255)
      {
        goto LABEL_288;
      }

      v157 = *(v104 + 5);
      if (*__dst.var3.sin6_addr.__u6_addr8 || __dst.var3.sin6_addr.__u6_addr32[2] != -65536)
      {
        goto LABEL_297;
      }

      p_s_addr = &__dst.var3.sin6_addr.__u6_addr32[3];
    }

    v159 = *p_s_addr;
    if (*p_s_addr != -1)
    {
      if (!v157)
      {
        goto LABEL_297;
      }

      LOBYTE(buf[0]) = 0;
      v254[0] = 0;
      ipv4_netmask = _nw_interface_get_ipv4_netmask(v157, buf);
      ipv4_broadcast = _nw_interface_get_ipv4_broadcast(v157, v254);
      if (v254[0] != 1 || v159 != ipv4_broadcast && (LOBYTE(buf[0]) != 1 || (ipv4_broadcast & ipv4_netmask) != v159))
      {
        goto LABEL_297;
      }
    }

LABEL_288:
    address_family = nw_endpoint_get_address_family(address);
    if (address_family == 30)
    {
      memset(&buf[2], 0, 24);
      buf[0] = 7708;
      buf[1] = __dst.var2.sin_port;
      v163 = _nw_endpoint_create_address(buf);
    }

    else
    {
      if (address_family != 2)
      {
LABEL_294:
        v157 = nw_parameters_copy_default_protocol_stack(parametersa);
        v164 = nw_protocol_stack_copy_transport_protocol(v157);
        if (nw_protocol_options_is_udp(v164))
        {
          _nw_udp_options_set_ignore_inbound_checksum(v164, 1);
        }

LABEL_297:
        v165 = v241;
        nw_parameters_set_local_endpoint(parametersa, logc);
        nw_parameters_set_reuse_local_address(parametersa, 1);
        v166 = *(v104 + 4);
        if (v166)
        {
          *buf = 0;
          *&buf[4] = 0;
          v167 = v166;
          _nw_endpoint_get_agent_identifier(v167, buf);

          if (!uuid_is_null(buf))
          {
            nw_parameters_require_netagent_uuid(parametersa, buf);
          }

          v165 = v241;
        }

        if (![*(v104 + 1) canHandleNewConnection:v104])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v177 = gLogObj;
          if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
          {
            v178 = logc;
            v179 = v178;
            if (v178)
            {
              v180 = _nw_endpoint_get_description(v178);
            }

            else
            {
              v180 = "<NULL>";
            }

            v181 = address;
            v182 = v181;
            if (v181)
            {
              v183 = _nw_endpoint_get_logging_description(v181);
            }

            else
            {
              v183 = "<NULL>";
            }

            *buf = 136446722;
            *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
            buf[6] = 2082;
            *&buf[7] = v180;
            buf[11] = 2082;
            *&buf[12] = v183;
            _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_INFO, "%{public}s Dropping %{public}s<-%{public}s, listener can't handle new connections", buf, 0x20u);
          }

          goto LABEL_212;
        }

        *uu = 0;
        *&uu[8] = 0;
        v168 = v104;
        logc = logc;
        v229 = address;
        v234 = parametersa;
        v231 = v165;
        v223 = v168;
        uuid_clear(uu);
        *v254 = 0;
        *&v254[8] = 0;
        nw_path_get_client_id(v168[8], v254);
        nw_parameters_set_parent_id_internal(v234, v254);
        nw_parameters_set_server_mode(v234, 1);
        v225 = nw_parameters_copy_default_protocol_stack(v234);
        v169 = nw_protocol_stack_copy_transport_protocol(v225);
        v227 = v169;
        if (nw_protocol_options_is_tcp(v169) && !_nw_tcp_options_get_connection_timeout())
        {
          int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcp_accept_timeout_seconds, 5);
          if (int64_with_default)
          {
            _nw_tcp_options_set_connection_timeout(v169, int64_with_default);
          }
        }

        [*(v104 + 1) updateParametersForNewConnection:v234];
        v171 = _nw_parameters_copy_extended_description(v234);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v172 = gLogObj;
        if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
        {
          v173 = *(v104 + 1);
          v174 = logc;
          v175 = v174;
          if (v174)
          {
            v176 = _nw_endpoint_get_description(v174);
          }

          else
          {
            v176 = "<NULL>";
          }

          v184 = v229;
          v185 = v184;
          if (v184)
          {
            v186 = _nw_endpoint_get_logging_description(v184);
          }

          else
          {
            v186 = "<NULL>";
          }

          *buf = 136447234;
          *&buf[2] = "nw_ip_channel_inbox_handle_new_flow";
          buf[6] = 2112;
          *&buf[7] = v173;
          buf[11] = 2082;
          *&buf[12] = v176;
          buf[16] = 2082;
          *&buf[17] = v186;
          buf[21] = 2082;
          *&buf[22] = v171;
          _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_INFO, "%{public}s Listener %@ received new flow %{public}s<-%{public}s %{public}s", buf, 0x34u);
        }

        if (v171)
        {
          free(v171);
        }

        v187 = [*(v104 + 1) copyPeerDeviceID];
        if (v187)
        {
          nw_endpoint_set_device_id(v229, v187);
          free(v187);
        }

        v188 = [*(v104 + 1) copyPeerTXTRecord];
        if (v188)
        {
          nw_endpoint_set_txt_record(v229, v188);
        }

        v189 = nw_connection_create_from_protocol_on_nw_queue(v229, v234, 0);
        v190 = v189;
        if (v189)
        {
          v191 = v189;
          nw_context_assert_queue(v191[3]);
          flow_id = nw_endpoint_handler_get_flow_id(v191[18], uu);

          if (flow_id)
          {
            if (v241)
            {
              _nw_array_append(v231, v191);
            }

            [*(v104 + 1) handleInbound:v191 addProtocolInbox:nw_parameters_get_attach_protocol_listener(v234)];

            if (uuid_is_null(uu))
            {
              v193 = __nwlog_obj();
              if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
              {
                v194 = nw_endpoint_get_description(logc);
                v195 = nw_endpoint_get_logging_description(v229);
                *buf = 136446978;
                *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
                buf[6] = 2082;
                *&buf[7] = v194;
                buf[11] = 2082;
                *&buf[12] = v195;
                buf[16] = 1024;
                *&buf[17] = v235;
                _os_log_impl(&dword_181A37000, v193, OS_LOG_TYPE_INFO, "%{public}s No flow id for new inbound connection %{public}s<-%{public}s %u", buf, 0x26u);
              }

              goto LABEL_342;
            }

            nw_frame_reclassify(v10, uu);

LABEL_348:
            v13 = v241;
            goto LABEL_214;
          }

          v196 = __nwlog_obj();
          if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[2] = "nw_ip_channel_inbox_handle_new_flow";
            v197 = "%{public}s nw_connection_get_flow_id_on_nw_queue failed";
            goto LABEL_340;
          }
        }

        else
        {
          v196 = __nwlog_obj();
          if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[2] = "nw_ip_channel_inbox_handle_new_flow";
            v197 = "%{public}s nw_connection_create_from_protocol_on_nw_queue failed";
LABEL_340:
            _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_ERROR, v197, buf, 0xCu);
          }
        }

        v193 = v223;
LABEL_342:

        goto LABEL_212;
      }

      buf[0] = 528;
      buf[1] = __dst.var2.sin_port;
      *&buf[2] = 0;
      *&buf[4] = 0;
      v163 = _nw_endpoint_create_address(buf);
    }

    logc = v163;
    goto LABEL_294;
  }

  v128 = v247;
  v226 = v127;
  quic_instance_by_id = nw_protocol_instance_registrar_find_quic_instance_by_id(v127, v247);
  v130 = __nwlog_obj();
  v131 = os_log_type_enabled(v130, OS_LOG_TYPE_INFO);
  if (!quic_instance_by_id)
  {
    if (v131)
    {
      *buf = 136446210;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_INFO, "%{public}s Failed to find an existing QUIC connection, discarding", buf, 0xCu);
    }

    nw_frame_finalize(v10);
    goto LABEL_347;
  }

  v224 = quic_instance_by_id;
  if (v131)
  {
    *buf = 136446210;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_INFO, "%{public}s Found an existing QUIC connection, adding a new path", buf, 0xCu);
  }

  v127 = v226;
  v132 = quic_instance_by_id[3];
  if (!v132)
  {
    goto LABEL_271;
  }

  v133 = *(v132 + 120);
  if (!v133)
  {
    goto LABEL_271;
  }

  v222 = v133(quic_instance_by_id);
  v134 = __nwlog_obj();
  if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2112;
    *&buf[7] = v222;
    _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_INFO, "%{public}s QUIC protocol peer path %@", buf, 0x16u);
  }

  *v254 = 0;
  *&v254[8] = v254;
  *&v254[16] = 0x2020000000;
  v255 = 0;
  v135 = malloc_type_calloc(1uLL, 0x10uLL, 0x83DCD0BuLL);
  if (v135)
  {
LABEL_238:
    *(*&v254[8] + 24) = v135;
    v244[0] = MEMORY[0x1E69E9820];
    v244[1] = 3221225472;
    v244[2] = ___ZL38nw_ip_channel_inbox_handle_input_frameP19nw_ip_channel_inboxP11nw_protocolPU22objcproto11OS_nw_frame8NSObjectPU22objcproto11OS_nw_arrayS3_P27nw_ip_channel_fragment_info_block_invoke_38;
    v244[3] = &unk_1E6A39A70;
    v140 = v104;
    v245 = v140;
    v246 = v254;
    nw_path_enumerate_interface_options(v222, v244);
    is_null = uuid_is_null(*(*&v254[8] + 24));
    if (is_null)
    {
      v142 = __nwlog_obj();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
        _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_INFO, "%{public}s Did not find a matching interface", buf, 0xCu);
      }

      goto LABEL_267;
    }

    v142 = nw_path_copy_flow_registration(parameters, quic_instance_by_id);
    if (v10)
    {
      *buf = 0;
      v143 = nw_frame_unclaimed_bytes(v10, buf);
      if (v143)
      {
        *buf -= 8;
        v220 = dispatch_data_create((v143 + 8), *buf, 0, 0);
        nw_frame_claim(v10, v144, *buf + 8, 0);
        v145 = v220;
      }

      else
      {
        v145 = 0;
      }
    }

    else
    {
      v145 = 0;
    }

    v221 = v145;
    v147 = nw_interface_option_details_create(v140[5], *(*&v254[8] + 24), address, 0, v145, -1);
    v219 = v147;
    if (v147)
    {
      v148 = v147;
      nw_interface_option_details_set_injected(v147);
      nw_path_flow_registration_add_extra_interface_option(v142, v148);
    }

    else
    {
      v149 = __nwlog_obj();
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        v150 = v140[5];
        v151 = *(*&v254[8] + 24);
        *buf = 136446978;
        *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
        buf[6] = 2112;
        *&buf[7] = v150;
        buf[11] = 1042;
        *&buf[12] = 16;
        buf[14] = 2098;
        *&buf[15] = v151;
        _os_log_impl(&dword_181A37000, v149, OS_LOG_TYPE_ERROR, "%{public}s Unable to create interface option details with %@ [%{public,uuid_t}.16P]", buf, 0x26u);
      }

      is_null = 0;
    }

    v152 = nw_path_flow_registration_copy_path(v142);
    v153 = v152;
    v154 = quic_instance_by_id[3];
    if (v154)
    {
      v155 = *(v154 + 168);
      if (v155)
      {
        v155(quic_instance_by_id, quic_instance_by_id[6], v152);
LABEL_266:

LABEL_267:
        v156 = *(*&v254[8] + 24);
        if (v156)
        {
          free(v156);
          *(*&v254[8] + 24) = 0;
        }

        if (is_null)
        {

          _Block_object_dispose(v254, 8);
          v127 = v226;
          goto LABEL_271;
        }

        v198 = __nwlog_obj();
        if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_INFO, "%{public}s QUIC migration handled packet", buf, 0xCu);
        }

        nw_frame_finalize(v10);
        _Block_object_dispose(v254, 8);

        v128 = v247;
LABEL_347:

        goto LABEL_348;
      }
    }

    v217 = v152;
    v203 = __nwlog_obj();
    v204 = quic_instance_by_id[2];
    if (!v204)
    {
      v204 = "invalid";
    }

    *buf = 136446466;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2082;
    *&buf[7] = v204;
    LODWORD(v215) = 22;
    v218 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v203, 16, "%{public}s protocol %{public}s has invalid updated_path callback", buf, v215);

    type = OS_LOG_TYPE_ERROR;
    v242 = 0;
    if (__nwlog_fault(v218, &type, &v242))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v205 = __nwlog_obj();
        v206 = type;
        if (os_log_type_enabled(v205, type))
        {
          v207 = v224[2];
          if (!v207)
          {
            v207 = "invalid";
          }

          *buf = 136446466;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          buf[6] = 2082;
          *&buf[7] = v207;
          _os_log_impl(&dword_181A37000, v205, v206, "%{public}s protocol %{public}s has invalid updated_path callback", buf, 0x16u);
        }
      }

      else
      {
        if (v242 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v209 = __nwlog_obj();
          v216 = type;
          v210 = os_log_type_enabled(v209, type);
          if (backtrace_string)
          {
            if (v210)
            {
              v211 = v224[2];
              if (!v211)
              {
                v211 = "invalid";
              }

              *buf = 136446722;
              *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
              buf[6] = 2082;
              *&buf[7] = v211;
              buf[11] = 2082;
              *&buf[12] = backtrace_string;
              _os_log_impl(&dword_181A37000, v209, v216, "%{public}s protocol %{public}s has invalid updated_path callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
          }

          else
          {
            if (v210)
            {
              v214 = v224[2];
              if (!v214)
              {
                v214 = "invalid";
              }

              *buf = 136446466;
              *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
              buf[6] = 2082;
              *&buf[7] = v214;
              _os_log_impl(&dword_181A37000, v209, v216, "%{public}s protocol %{public}s has invalid updated_path callback, no backtrace", buf, 0x16u);
            }
          }

          goto LABEL_379;
        }

        v205 = __nwlog_obj();
        v212 = type;
        if (os_log_type_enabled(v205, type))
        {
          v213 = v224[2];
          if (!v213)
          {
            v213 = "invalid";
          }

          *buf = 136446466;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          buf[6] = 2082;
          *&buf[7] = v213;
          _os_log_impl(&dword_181A37000, v205, v212, "%{public}s protocol %{public}s has invalid updated_path callback, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_379:
    if (v218)
    {
      free(v218);
    }

    v153 = v217;
    goto LABEL_266;
  }

  v136 = __nwlog_obj();
  v137 = os_log_type_enabled(v136, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
  if (v137)
  {
    v138 = 3;
  }

  else
  {
    v138 = 2;
  }

  buf[6] = 2048;
  *&buf[7] = 1;
  buf[11] = 2048;
  *&buf[12] = 16;
  v139 = _os_log_send_and_compose_impl(v138, 0, 0, 0, &dword_181A37000, v136, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  if (!__nwlog_should_abort(v139))
  {
    free(v139);
    v135 = 0;
    goto LABEL_238;
  }

  __break(1u);
}