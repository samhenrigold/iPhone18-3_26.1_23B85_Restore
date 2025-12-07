BOOL sub_181ED3C68(void *a1, void *a2, __n128 a3)
{
  v3 = a2[3] + a2[4];
  if (a2[2] < v3)
  {
    v3 = a2[2];
  }

  v16 = a2[4];
  v17 = v3;
  v4 = a1[4];
  v5 = a1[3] + v4;
  if (a1[2] < v5)
  {
    v5 = a1[2];
  }

  v13 = a1[4];
  v14 = v5;
  v6 = a1;
  while (1)
  {
    v7 = v16;
    if (v16 != v17)
    {
      goto LABEL_9;
    }

    if (sub_181AC81FC(a3))
    {
      v7 = v16;
LABEL_9:
      v16 = v7 + 1;
      v8 = *(a2 + v7 + 40);
      goto LABEL_11;
    }

    v8 = 5;
LABEL_11:
    if (v4 == v14)
    {
      break;
    }

LABEL_14:
    v13 = v4 + 1;
    v9 = *(v6 + v4 + 40);
    v10 = v9 == 5;
    if (v8 == 5)
    {
      goto LABEL_20;
    }

    if (v9 != 5)
    {
      ++v4;
      if (qword_182B07CD0[v8] == qword_182B07CD0[v9])
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v6 = a1;
  if (sub_181AC81FC(a3))
  {
    v4 = v13;
    goto LABEL_14;
  }

  if (v8 == 5)
  {
    v10 = 1;
LABEL_20:

    goto LABEL_22;
  }

LABEL_21:

  v10 = 0;
LABEL_22:

  return v10;
}

uint64_t nw_resolver_get_error(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 3);
    os_unfair_lock_opaque = v2[21]._os_unfair_lock_opaque;
    if (!os_unfair_lock_opaque)
    {
      if (v2[2]._os_unfair_lock_opaque == 2 && nw_endpoint_get_type(*&v2[6]._os_unfair_lock_opaque) == nw_endpoint_type_host && ((v4 = *&v2[42]._os_unfair_lock_opaque) == 0 || !_nw_array_get_count(v4)) && (v2[92]._os_unfair_lock_opaque & 0x100000) == 0 && (~LOWORD(v2[22]._os_unfair_lock_opaque) & 0xC00) != 0)
      {
        os_unfair_lock_opaque = 4294901742;
      }

      else
      {
        os_unfair_lock_opaque = 0;
      }
    }

    os_unfair_lock_unlock(v2 + 3);
    goto LABEL_11;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_resolver_get_error";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null resolver", buf, 12);

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
        v17 = "nw_resolver_get_error";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null resolver", buf, 0xCu);
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
          v17 = "nw_resolver_get_error";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_resolver_get_error";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_resolver_get_error";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }

  os_unfair_lock_opaque = 0;
LABEL_11:

  return os_unfair_lock_opaque;
}

uint64_t get_enum_tag_for_layout_string_7Network0A9AgentTypeV0B6DomainO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t InterfaceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2C8, &qword_182AF4958);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181EBD8F0();
  sub_182AD45E8();
  if (!v2)
  {
    v9 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    v10 = 0x302010400uLL >> (8 * v9);
    if (v9 >= 5)
    {
      LOBYTE(v10) = 0;
    }

    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_DWORD *nw_error_create_dns_error(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = [NWConcrete_nw_error alloc];

    return [(NWConcrete_nw_error *)v2 initWithDomain:v1 code:?];
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_error_create_dns_error";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null dns_error", buf, 12);

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
        v14 = "nw_error_create_dns_error";
        v8 = "%{public}s called with null dns_error";
LABEL_18:
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
            v14 = "nw_error_create_dns_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null dns_error, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_error_create_dns_error";
        v8 = "%{public}s called with null dns_error, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_error_create_dns_error";
        v8 = "%{public}s called with null dns_error, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_connected_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 40) != 0;
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

void _nw_path_set_necp_result_delegate_interface_generation(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 86) = a2;
  }
}

void _nw_path_set_necp_result_delegate_interface_index(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 85) = a2;
  }
}

uint64_t __nw_dictionary_copy_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  value = xpc_pointer_get_value();
  if (value)
  {
    os_retain(value);
  }

  return 1;
}

uint64_t sub_181ED46C8(NSObject *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NWProtocolFramer.Instance();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = *(a3 + 16);
  swift_unknownObjectRetain();

  v9 = v7(v8, a2, a3);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = v6;
  v25 = sub_181F1490C;
  v26 = v10;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181F148B0;
  v24 = &block_descriptor_56;
  v11 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_input_handler(a1, v11);
  _Block_release(v11);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a3;
  v12[4] = v6;
  v25 = sub_181BE7ED8;
  v26 = v12;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181BE7D2C;
  v24 = &block_descriptor_62_0;
  v13 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_output_handler(a1, v13);
  _Block_release(v13);
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = a3;
  v14[4] = v6;
  v25 = sub_1820F9C04;
  v26 = v14;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181AA4EBC;
  v24 = &block_descriptor_68;
  v15 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_wakeup_handler(a1, v15);
  _Block_release(v15);
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a3;
  v16[4] = v6;
  v25 = sub_1820F9C5C;
  v26 = v16;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1820F7CF0;
  v24 = &block_descriptor_74_0;
  v17 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_stop_handler(a1, v17);
  _Block_release(v17);
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = a3;
  v18[4] = v6;
  v25 = sub_1820F9CB8;
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_181AA4EBC;
  v24 = &block_descriptor_80;
  v19 = _Block_copy(&v21);

  swift_unknownObjectRetain();

  nw_framer_set_cleanup_handler(a1, v19);
  _Block_release(v19);
  (*(a3 + 24))(&v21, v6, a2, a3);
  swift_unknownObjectRelease();

  if (v21)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t NWProtocolFramer.Instance.options.getter()
{
  v1 = nw_framer_copy_options(*(v0 + 16));
  type metadata accessor for NWProtocolFramer.Options();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

nw_protocol_options_t nw_framer_copy_options(nw_framer_t framer)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    v3 = nw_framer_copy_parameters(v1);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = _nw_parameters_copy_protocol_options_with_level();

LABEL_4:
      goto LABEL_5;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_framer_copy_options";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null parameters", buf, 12);

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
          *buf = 136446210;
          v27 = "nw_framer_copy_options";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v27 = "nw_framer_copy_options";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_41;
        }

        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_framer_copy_options";
          _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v27 = "nw_framer_copy_options";
          _os_log_impl(&dword_181A37000, v14, v23, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_41:
    if (v13)
    {
      free(v13);
    }

    v6 = 0;
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_framer_copy_options";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null framer", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v9, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_framer_copy_options";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      v16 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (v16)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_framer_copy_options";
          v28 = 2082;
          v29 = v16;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v16);
        goto LABEL_35;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_framer_copy_options";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_framer_copy_options";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_35:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_5:

  return v6;
}

nw_parameters_t nw_framer_copy_parameters(nw_framer_t framer)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    isa = v2[42].isa;
    if (isa && (v4 = *(isa + 3)) != 0 && (v5 = *(v4 + 112)) != 0)
    {
      v6 = v5();
    }

    else
    {
      v6 = v2[45].isa;
    }

    v7 = v6;
    goto LABEL_7;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_framer_copy_parameters";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null framer", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_parameters";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_framer_copy_parameters";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_parameters";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_framer_copy_parameters";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id nw_framer_options_copy_object_value(nw_protocol_options_t options, const char *key)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = options;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v8, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
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
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_options_copy_object_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!nw_protocol_options_has_standard_framer_options(v3))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v8, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v9, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "nw_framer_options_copy_object_value";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
LABEL_55:
        if (!v8)
        {
LABEL_57:
          v5 = 0;
          goto LABEL_5;
        }

LABEL_56:
        free(v8);
        goto LABEL_57;
      }

      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!key)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_framer_options_copy_object_value";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null key", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v8, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_framer_options_copy_object_value";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_framer_options_copy_object_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    if (!v8)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__5122;
  v31 = __Block_byref_object_dispose__5123;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __nw_framer_options_copy_object_value_block_invoke;
  v26[3] = &unk_1E6A3AB40;
  v26[4] = buf;
  v26[5] = key;
  nw_protocol_options_access_handle(v4, v26);
  v5 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_5:
  return v5;
}

void sub_181ED5B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void nw_framer_set_input_handler(nw_framer_t framer, nw_framer_input_handler_t input_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = input_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
          v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
    v30 = "nw_framer_set_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null input_handler", buf, 12);

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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null input_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null input_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null input_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_input_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null input_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
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
        v30 = "nw_framer_set_input_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_input_handler";
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
  isa = v3[50].isa;
  v3[50].isa = v6;

LABEL_5:
}

void nw_framer_set_output_handler(nw_framer_t framer, nw_framer_output_handler_t output_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = output_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
          v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
    v30 = "nw_framer_set_output_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null output_handler", buf, 12);

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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null output_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null output_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null output_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_output_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
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
        v30 = "nw_framer_set_output_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_output_handler";
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
  isa = v3[51].isa;
  v3[51].isa = v6;

LABEL_5:
}

void nw_framer_set_stop_handler(nw_framer_t framer, nw_framer_stop_handler_t stop_handler)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = framer;
  v4 = stop_handler;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
          v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
    v30 = "nw_framer_set_stop_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null stop_handler", buf, 12);

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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null stop_handler", buf, 0xCu);
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null stop_handler, backtrace limit exceeded", buf, 0xCu);
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null stop_handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_stop_handler";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null stop_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if ((BYTE6(v3[75].isa) & 4) == 0)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
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
        v30 = "nw_framer_set_stop_handler";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null framer->in_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_framer_set_stop_handler";
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
  isa = v3[53].isa;
  v3[53].isa = v6;

LABEL_5:
}

void nw_framer_mark_ready(nw_framer_t framer)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = framer;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(v1[46].isa);
    if ((BYTE6(v2[75].isa) & 0x10) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "nw_framer_mark_ready";
        v21 = 2080;
        v22 = &v2[76].isa + 1;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %s Already in the ready state", buf, 0x16u);
      }
    }

    else
    {
      BYTE6(v2[75].isa) |= 0x10u;
      isa = v2[42].isa;
      if (isa)
      {
        v4 = *(isa + 3);
        if (v4)
        {
          v5 = *(v4 + 40);
          if (!v5 || (v5(), (v6 = v2[42].isa) != 0) && (v4 = *(v6 + 3)) != 0)
          {
            v7 = *(v4 + 72);
            if (v7)
            {
              v7();
            }
          }
        }
      }
    }

    goto LABEL_13;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_framer_mark_ready";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null framer", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_framer_mark_ready";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_framer_mark_ready";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_framer_mark_ready";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_framer_mark_ready";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v10)
  {
    free(v10);
  }

LABEL_13:
}

_OWORD *nw_protocol_http_messaging_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_create";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null endpoint", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v21, &type, &v33))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v24 = "%{public}s called with null endpoint";
LABEL_58:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }

LABEL_59:
      if (v21)
      {
        free(v21);
      }

      return 0;
    }

    if (v33 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v24 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v28 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v24 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (v28)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v29 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_48:
      _os_log_impl(&dword_181A37000, v22, v23, v29, buf, 0x16u);
    }

LABEL_49:
    free(backtrace_string);
    goto LABEL_59;
  }

  if (!a4)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_create";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s called with null parameters", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v21, &type, &v33))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v24 = "%{public}s called with null parameters";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (v33 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_create";
        v24 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_58;
      }

      goto LABEL_59;
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
        *&buf[4] = "nw_protocol_http_messaging_create";
        v24 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (v30)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v29 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v6 = malloc_type_calloc(1uLL, 0x160uLL, 0x46D9C302uLL);
  v7 = v6;
  if (v6)
  {
    v6[20] = 0u;
    v6[21] = 0u;
    v6[18] = 0u;
    v6[19] = 0u;
    v6[16] = 0u;
    v6[17] = 0u;
    v6[14] = 0u;
    v6[15] = 0u;
    v6[12] = 0u;
    v6[13] = 0u;
    v6[10] = 0u;
    v6[11] = 0u;
    v6[8] = 0u;
    v6[9] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
LABEL_14:
    logging_disabled = _nw_parameters_get_logging_disabled(a4);
    if (logging_disabled)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    *(v7 + 172) = *(v7 + 172) & 0xFFFD | v16;
    if (!logging_disabled && gLogDatapath == 1)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_messaging_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 260;
        *&buf[22] = 2080;
        v36 = " ";
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v36 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __nw_protocol_http_messaging_create_block_invoke;
    aBlock[3] = &unk_1E6A3AE90;
    aBlock[4] = buf;
    *(v7 + 28) = _Block_copy(aBlock);
    _Block_object_dispose(buf, 8);
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    }

    *(v7 + 2) = &nw_protocol_http_messaging_identifier::protocol_identifier;
    if (nw_protocol_http_messaging_get_callbacks(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_get_callbacks(void)::onceToken, &__block_literal_global_19_80494);
    }

    *(v7 + 3) = &nw_protocol_http_messaging_get_callbacks(void)::protocol_callbacks;
    *(v7 + 5) = v7;
    if (nw_protocol_http_messaging_get_listen_callbacks(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_http_messaging_get_listen_callbacks(void)::onceToken, &__block_literal_global_32_80495);
    }

    *(v7 + 8) = &nw_protocol_http_messaging_get_listen_callbacks(void)::listen_protocol_callbacks;
    *(v7 + 11) = v7;
    v17 = os_retain(a3);
    v18 = *(v7 + 120);
    if (v18)
    {
      if (*(v7 + 14))
      {
        v19 = v17;
        os_release(*(v7 + 14));
        v17 = v19;
        v18 = *(v7 + 120);
      }
    }

    *(v7 + 14) = v17;
    *(v7 + 120) = v18 | 1;
    *(v7 + 172) = *(v7 + 172) & 0xFFFE | _nw_parameters_get_server_mode(a4);
    return v7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_messaging_create";
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
  v36 = 352;
  v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
  result = __nwlog_should_abort(v10);
  if (!result)
  {
    free(v10);
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x130] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x60] = 0;
    MEMORY[0x68] = 0;
    MEMORY[0x70] = 0;
    MEMORY[0x78] = 0;
    MEMORY[0x90] = 0;
    MEMORY[0x88] = 0;
    MEMORY[0x80] = 0;
    MEMORY[0xA0] = 0;
    MEMORY[0xA8] = 0;
    MEMORY[0xB0] = 0;
    MEMORY[0xB8] = 0;
    MEMORY[0xC0] = 0;
    MEMORY[0xC8] = 0;
    MEMORY[0xD0] = 0;
    MEMORY[0xD8] = 0;
    MEMORY[0xF8] = 0;
    MEMORY[0xF0] = 0;
    MEMORY[0xE8] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR) ? 3 : 2;
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_create";
    LODWORD(v31) = 12;
    v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s strict_placement_new(nw_protocol_http_messaging, strict_calloc(1, sizeof(nw_protocol_http_messaging)),) failed", buf, v31);
    result = __nwlog_should_abort(v14);
    if (!result)
    {
      free(v14);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_http_messaging_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v18, &type, &v52))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null protocol";
      goto LABEL_113;
    }

    if (v52 != 1)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_113;
    }

    backtrace_string = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v42 = type;
    v45 = os_log_type_enabled(v41, type);
    if (backtrace_string)
    {
      if (!v45)
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v56 = 2082;
      v57 = backtrace_string;
      v30 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_76;
    }

    if (!v45)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v21 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_113;
  }

  handle = a1->handle;
  if (!handle)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null http_messaging", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v18, &type, &v52))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null http_messaging";
      goto LABEL_113;
    }

    if (v52 != 1)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_113;
    }

    backtrace_string = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v42 = type;
    v46 = os_log_type_enabled(v41, type);
    if (backtrace_string)
    {
      if (!v46)
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v56 = 2082;
      v57 = backtrace_string;
      v30 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
      goto LABEL_76;
    }

    if (!v46)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v21 = "%{public}s called with null http_messaging, no backtrace";
    goto LABEL_113;
  }

  if (!a2)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v18, &type, &v52))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null input_protocol";
      goto LABEL_113;
    }

    if (v52 != 1)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (!os_log_type_enabled(v41, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v21 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_113;
    }

    backtrace_string = __nw_create_backtrace_string();
    v41 = __nwlog_obj();
    v42 = type;
    v47 = os_log_type_enabled(v41, type);
    if (backtrace_string)
    {
      if (!v47)
      {
        goto LABEL_34;
      }

      *buf = 136446466;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v56 = 2082;
      v57 = backtrace_string;
      v30 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_76;
    }

    if (!v47)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v21 = "%{public}s called with null input_protocol, no backtrace";
    goto LABEL_113;
  }

  if (*(handle + 19))
  {
    v4 = a1->handle;

    return nw_http_messaging_add_to_version_specific_protocol(v4, a2);
  }

  v6 = *(handle + 6);
  if (!v6)
  {
    v10 = a2;
    nw_protocol_set_input_handler(a1->handle, a2);
    *handle = *v10->flow_id;
    v11 = v10;
    parameters = nw_protocol_get_parameters(v10);
    if (parameters)
    {
      v13 = parameters;
      v14 = _nw_parameters_copy_protocol_options_with_level();

      if (v14)
      {
        v15 = v14;
        _nw_protocol_options_get_log_id_str(v15, handle + 260);

        os_release(v15);
        a2 = v11;
        if (v11->output_handler)
        {
LABEL_39:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v55 = "nw_protocol_http_messaging_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s Output handler already exists for protocol being added as input handler", buf, 0xCu);
          }

          return 1;
        }

LABEL_15:
        nw_protocol_set_output_handler(a2, a1);
        return 1;
      }

      v49 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null options", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v18, &type, &v52))
      {
        goto LABEL_48;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null options";
        goto LABEL_113;
      }

      if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v51 = os_log_type_enabled(v41, type);
        if (backtrace_string)
        {
          if (!v51)
          {
            goto LABEL_34;
          }

          *buf = 136446466;
          v55 = "nw_protocol_http_messaging_add_input_handler";
          v56 = 2082;
          v57 = backtrace_string;
          v30 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_76:
          v31 = v41;
          v32 = v42;
          v33 = 22;
          goto LABEL_33;
        }

        if (!v51)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null options, no backtrace";
      }

      else
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null options, backtrace limit exceeded";
      }
    }

    else
    {
      v48 = __nwlog_obj();
      *buf = 136446210;
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null parameters", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      if (!__nwlog_fault(v18, &type, &v52))
      {
        goto LABEL_48;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null parameters";
        goto LABEL_113;
      }

      if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v50 = os_log_type_enabled(v41, type);
        if (backtrace_string)
        {
          if (!v50)
          {
            goto LABEL_34;
          }

          *buf = 136446466;
          v55 = "nw_protocol_http_messaging_add_input_handler";
          v56 = 2082;
          v57 = backtrace_string;
          v30 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
          goto LABEL_76;
        }

        if (!v50)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null parameters, no backtrace";
      }

      else
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (!os_log_type_enabled(v41, type))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v21 = "%{public}s called with null parameters, backtrace limit exceeded";
      }
    }

LABEL_113:
    v37 = v41;
    v38 = v42;
    v39 = 12;
    goto LABEL_47;
  }

  if (v6 != a2)
  {
    v8 = *(handle + 30);
    v7 = *(handle + 31);
    if (v8 >= v7)
    {
      v22 = *(handle + 29);
      v23 = v8 - v22;
      v24 = (v8 - v22) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v26 = v7 - v22;
      if (v26 >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v34 = 16 * v24;
      v35 = a2;
      *v34 = a2;
      *(v34 + 8) = 0;
      v9 = 16 * v24 + 16;
      memcpy(0, v22, v23);
      *(handle + 29) = 0;
      *(handle + 30) = v9;
      *(handle + 31) = 0;
      if (v22)
      {
        operator delete(v22);
      }

      a2 = v35;
    }

    else
    {
      *v8 = a2;
      *(v8 + 8) = 0;
      v9 = v8 + 16;
    }

    *(handle + 30) = v9;
    if (a2->output_handler)
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

  v16 = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v55 = "nw_protocol_http_messaging_add_input_handler";
  v56 = 2048;
  v17 = v16;
  v57 = v16;
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Adding the same input handler more than once to messaging %p", buf, 22);
  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (!__nwlog_fault(v18, &type, &v52))
  {
    goto LABEL_48;
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
      v55 = "nw_protocol_http_messaging_add_input_handler";
      v56 = 2048;
      v57 = v17;
      v21 = "%{public}s Adding the same input handler more than once to messaging %p";
LABEL_46:
      v37 = v19;
      v38 = v20;
      v39 = 22;
LABEL_47:
      _os_log_impl(&dword_181A37000, v37, v38, v21, buf, v39);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  if (v52 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type;
    v29 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        v55 = "nw_protocol_http_messaging_add_input_handler";
        v56 = 2048;
        v57 = v17;
        v21 = "%{public}s Adding the same input handler more than once to messaging %p, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_48;
    }

    if (!v29)
    {
LABEL_34:
      free(backtrace_string);
      goto LABEL_48;
    }

    *buf = 136446722;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v56 = 2048;
    v57 = v17;
    v58 = 2082;
    v59 = backtrace_string;
    v30 = "%{public}s Adding the same input handler more than once to messaging %p, dumping backtrace:%{public}s";
    v31 = v19;
    v32 = v20;
    v33 = 32;
LABEL_33:
    _os_log_impl(&dword_181A37000, v31, v32, v30, buf, v33);
    goto LABEL_34;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v20 = type;
  if (os_log_type_enabled(gLogObj, type))
  {
    *buf = 136446466;
    v55 = "nw_protocol_http_messaging_add_input_handler";
    v56 = 2048;
    v57 = v17;
    v21 = "%{public}s Adding the same input handler more than once to messaging %p, backtrace limit exceeded";
    goto LABEL_46;
  }

LABEL_48:
  if (v18)
  {
    free(v18);
  }

  return 0;
}

uint64_t nw_protocol_common_supports_external_data(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_common_supports_external_data";
    v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v1, &type, &v15))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v18 = "nw_protocol_common_supports_external_data";
      v4 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v2 = __nwlog_obj();
      v3 = type;
      v14 = os_log_type_enabled(v2, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v18 = "nw_protocol_common_supports_external_data";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v2, v3, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v1)
        {
          goto LABEL_17;
        }

        return 0;
      }

      if (!v14)
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v18 = "nw_protocol_common_supports_external_data";
      v4 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v18 = "nw_protocol_common_supports_external_data";
      v4 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_14:
    v9 = v2;
    v10 = v3;
LABEL_15:
    _os_log_impl(&dword_181A37000, v9, v10, v4, buf, 0xCu);
    goto LABEL_16;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v18 = "nw_protocol_common_supports_external_data";
  v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s supports_external_data requires an input handler", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v1, &type, &v15))
  {
    goto LABEL_16;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_16;
    }

    *buf = 136446210;
    v18 = "nw_protocol_common_supports_external_data";
    v4 = "%{public}s supports_external_data requires an input handler";
    goto LABEL_14;
  }

  if (v15 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_16;
    }

    *buf = 136446210;
    v18 = "nw_protocol_common_supports_external_data";
    v4 = "%{public}s supports_external_data requires an input handler, backtrace limit exceeded";
    goto LABEL_14;
  }

  v5 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v7 = type;
  v8 = os_log_type_enabled(gLogObj, type);
  if (v5)
  {
    if (v8)
    {
      *buf = 136446466;
      v18 = "nw_protocol_common_supports_external_data";
      v19 = 2082;
      v20 = v5;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s supports_external_data requires an input handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v5);
  }

  else if (v8)
  {
    *buf = 136446210;
    v18 = "nw_protocol_common_supports_external_data";
    v4 = "%{public}s supports_external_data requires an input handler, no backtrace";
    v9 = v6;
    v10 = v7;
    goto LABEL_15;
  }

LABEL_16:
  if (v1)
  {
LABEL_17:
    free(v1);
  }

  return 0;
}

uint64_t nw_protocol_http_messaging_get_parameters(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_messaging_get_parameters";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_messaging_get_parameters";
      v8 = "%{public}s called with null protocol";
    }

    else
    {
      if (v14 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v17 = "nw_protocol_http_messaging_get_parameters";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_http_messaging_get_parameters";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v5)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_messaging_get_parameters";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_messaging_get_parameters";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http_messaging", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_messaging_get_parameters";
      v8 = "%{public}s called with null http_messaging";
      goto LABEL_34;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_messaging_get_parameters";
      v8 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_34;
    }

    v12 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_http_messaging_get_parameters";
      v8 = "%{public}s called with null http_messaging, no backtrace";
      goto LABEL_34;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http_messaging_get_parameters";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
LABEL_35:
    if (!v5)
    {
      return 0;
    }

LABEL_36:
    free(v5);
    return 0;
  }

  result = handle[12];
  if (!result)
  {
    v3 = handle[6];

    return nw_protocol_get_parameters(v3);
  }

  return result;
}

uint64_t nw_protocol_common_get_local_endpoint(uint64_t a1)
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

      v15 = *(v5 + 128);
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
      v43 = "__nw_protocol_get_local_endpoint";
      if (!v26)
      {
        v26 = "invalid";
      }

      v44 = 2082;
      v45 = v26;
      v46 = 2048;
      v47 = v1;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback", buf, 32);
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
          v43 = "__nw_protocol_get_local_endpoint";
          v44 = 2082;
          v45 = v30;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback";
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
          v43 = "__nw_protocol_get_local_endpoint";
          v44 = 2082;
          v45 = v38;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, backtrace limit exceeded";
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
          v43 = "__nw_protocol_get_local_endpoint";
          v44 = 2082;
          v45 = v39;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, no backtrace";
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
          v43 = "__nw_protocol_get_local_endpoint";
          v44 = 2082;
          v45 = v35;
          v46 = 2048;
          v47 = v1;
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid get_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
    v43 = "nw_protocol_common_get_local_endpoint";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s get_local_endpoint requires a default input handler", buf, 12);
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
          v43 = "nw_protocol_common_get_local_endpoint";
          v9 = "%{public}s get_local_endpoint requires a default input handler";
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
            v43 = "nw_protocol_common_get_local_endpoint";
            v44 = 2082;
            v45 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_local_endpoint requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_local_endpoint";
          v9 = "%{public}s get_local_endpoint requires a default input handler, no backtrace";
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
          v43 = "nw_protocol_common_get_local_endpoint";
          v9 = "%{public}s get_local_endpoint requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_common_get_local_endpoint";
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
      v43 = "nw_protocol_common_get_local_endpoint";
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
      v43 = "nw_protocol_common_get_local_endpoint";
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
        v43 = "nw_protocol_common_get_local_endpoint";
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
      v43 = "nw_protocol_common_get_local_endpoint";
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

uint64_t nw_protocol_http_messaging_get_remote_endpoint(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v2 = handle[6];
      if (!v2)
      {
        return handle[14];
      }

      return nw_protocol_get_remote_endpoint(v2);
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http_messaging_get_remote_endpoint";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null http_messaging", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v5, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http_messaging_get_remote_endpoint";
        v8 = "%{public}s called with null http_messaging";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v14 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http_messaging_get_remote_endpoint";
        v8 = "%{public}s called with null http_messaging, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
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
        v17 = "nw_protocol_http_messaging_get_remote_endpoint";
        v8 = "%{public}s called with null http_messaging, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http_messaging_get_remote_endpoint";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_http_messaging_get_remote_endpoint";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v5, &type, &v14))
  {
    goto LABEL_36;
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
        v17 = "nw_protocol_http_messaging_get_remote_endpoint";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
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
        v17 = "nw_protocol_http_messaging_get_remote_endpoint";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http_messaging_get_remote_endpoint";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v12, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_http_messaging_get_remote_endpoint";
    v8 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_36:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_common_get_path(uint64_t a1)
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

      v15 = *(v5 + 120);
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
      v43 = "__nw_protocol_get_path";
      if (!v26)
      {
        v26 = "invalid";
      }

      v44 = 2082;
      v45 = v26;
      v46 = 2048;
      v47 = v1;
      v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v25, 16, "%{public}s protocol %{public}s (%p) has invalid get_path callback", buf, 32);
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
          v43 = "__nw_protocol_get_path";
          v44 = 2082;
          v45 = v30;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_path callback";
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
          v43 = "__nw_protocol_get_path";
          v44 = 2082;
          v45 = v38;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, backtrace limit exceeded";
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
          v43 = "__nw_protocol_get_path";
          v44 = 2082;
          v45 = v39;
          v46 = 2048;
          v47 = v1;
          v31 = "%{public}s protocol %{public}s (%p) has invalid get_path callback, no backtrace";
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
          v43 = "__nw_protocol_get_path";
          v44 = 2082;
          v45 = v35;
          v46 = 2048;
          v47 = v1;
          v48 = 2082;
          v49 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid get_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
    v43 = "nw_protocol_common_get_path";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s get_path requires a default input handler", buf, 12);
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
          v43 = "nw_protocol_common_get_path";
          v9 = "%{public}s get_path requires a default input handler";
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
            v43 = "nw_protocol_common_get_path";
            v44 = 2082;
            v45 = v10;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s get_path requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v10);
          goto LABEL_38;
        }

        if (v13)
        {
          *buf = 136446210;
          v43 = "nw_protocol_common_get_path";
          v9 = "%{public}s get_path requires a default input handler, no backtrace";
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
          v43 = "nw_protocol_common_get_path";
          v9 = "%{public}s get_path requires a default input handler, backtrace limit exceeded";
          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_common_get_path";
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
      v43 = "nw_protocol_common_get_path";
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
      v43 = "nw_protocol_common_get_path";
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
        v43 = "nw_protocol_common_get_path";
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
      v43 = "nw_protocol_common_get_path";
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

uint64_t storeEnumTagSinglePayload for NWBrowser.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 4) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWBrowser.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 5))
  {
    return (*a1 + 62);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFFC3 | (4 * ((*(a1 + 4) >> 2) & 0xF))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t NWEndpoint.Host.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      return IPv4Address.debugDescription.getter();
    }

    else
    {
      return IPv6Address.debugDescription.getter();
    }
  }

  else if (v2[2])
  {
    v5 = v2[1];

    MEMORY[0x1865D9CA0](v3, v5);

    MEMORY[0x1865D9CA0](37, 0xE100000000000000);
    sub_182AD3E18();

    return 0;
  }

  else
  {

    return v3;
  }
}

uint64_t IPv4Address.debugDescription.getter()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(v0 + 1);
  *&v8.sa_len = 528;
  *&v8.sa_data[2] = v1;
  *&v8.sa_data[6] = 0;

  v3 = swift_slowAlloc();
  if (getnameinfo(&v8, 0x10u, v3, 0x64u, 0, 0, 2))
  {
    v4 = 0xE100000000000000;
    v5 = 63;
  }

  else
  {
    v5 = sub_182AD3158();
    v4 = v6;
  }

  MEMORY[0x1865DF520](v3, -1, -1);
  if (v2)
  {
    MEMORY[0x1865D9CA0](v5, v4);

    MEMORY[0x1865D9CA0](37, 0xE100000000000000);
    sub_182AD3E18();

    return 0;
  }

  return v5;
}

uint64_t sub_181EDA824()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t nw_protocol_waiting_for_output_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 216) != 0;
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

uint64_t _nw_tcp_options_get_multipath_force_version()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0, &unk_182AE6F00);
  v0 = sub_181AA8420();
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {

    return v3 & 1;
  }

  return result;
}

void nw_protocol_http_messaging_connected(nw_protocol *a1, nw_protocol *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v72 = __nwlog_obj();
    *buf = 136446210;
    v91 = "nw_protocol_http_messaging_connected";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v72, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (!__nwlog_fault(v73, &type, &v88))
    {
      goto LABEL_209;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v91 = "nw_protocol_http_messaging_connected";
      v76 = "%{public}s called with null protocol";
    }

    else if (v88 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type;
      v80 = os_log_type_enabled(v74, type);
      if (backtrace_string)
      {
        if (v80)
        {
          *buf = 136446466;
          v91 = "nw_protocol_http_messaging_connected";
          v92 = 2082;
          v93 = backtrace_string;
          _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_209:
        if (!v73)
        {
          return;
        }

        goto LABEL_210;
      }

      if (!v80)
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v91 = "nw_protocol_http_messaging_connected";
      v76 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v91 = "nw_protocol_http_messaging_connected";
      v76 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_208;
  }

  handle = a1->handle;
  if (!handle)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v91 = "nw_protocol_http_messaging_connected";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null http_messaging", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (!__nwlog_fault(v73, &type, &v88))
    {
      goto LABEL_209;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v88 != 1)
      {
        v74 = __nwlog_obj();
        v75 = type;
        if (!os_log_type_enabled(v74, type))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        v91 = "nw_protocol_http_messaging_connected";
        v76 = "%{public}s called with null http_messaging, backtrace limit exceeded";
        goto LABEL_208;
      }

      v81 = __nw_create_backtrace_string();
      v74 = __nwlog_obj();
      v75 = type;
      v82 = os_log_type_enabled(v74, type);
      if (!v81)
      {
        if (!v82)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        v91 = "nw_protocol_http_messaging_connected";
        v76 = "%{public}s called with null http_messaging, no backtrace";
        goto LABEL_208;
      }

      if (v82)
      {
        *buf = 136446466;
        v91 = "nw_protocol_http_messaging_connected";
        v92 = 2082;
        v93 = v81;
        v83 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
LABEL_165:
        _os_log_impl(&dword_181A37000, v74, v75, v83, buf, 0x16u);
      }

LABEL_166:
      free(v81);
      if (!v73)
      {
        return;
      }

LABEL_210:
      free(v73);
      return;
    }

    v74 = __nwlog_obj();
    v75 = type;
    if (!os_log_type_enabled(v74, type))
    {
      goto LABEL_209;
    }

    *buf = 136446210;
    v91 = "nw_protocol_http_messaging_connected";
    v76 = "%{public}s called with null http_messaging";
LABEL_208:
    _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
    goto LABEL_209;
  }

  if (!a2)
  {
    v78 = __nwlog_obj();
    *buf = 136446210;
    v91 = "nw_protocol_http_messaging_connected";
    v73 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null other_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v88 = 0;
    if (!__nwlog_fault(v73, &type, &v88))
    {
      goto LABEL_209;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v91 = "nw_protocol_http_messaging_connected";
      v76 = "%{public}s called with null other_protocol";
      goto LABEL_208;
    }

    if (v88 != 1)
    {
      v74 = __nwlog_obj();
      v75 = type;
      if (!os_log_type_enabled(v74, type))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v91 = "nw_protocol_http_messaging_connected";
      v76 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_208;
    }

    v81 = __nw_create_backtrace_string();
    v74 = __nwlog_obj();
    v75 = type;
    v84 = os_log_type_enabled(v74, type);
    if (!v81)
    {
      if (!v84)
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      v91 = "nw_protocol_http_messaging_connected";
      v76 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_208;
    }

    if (v84)
    {
      *buf = 136446466;
      v91 = "nw_protocol_http_messaging_connected";
      v92 = 2082;
      v93 = v81;
      v83 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_165;
    }

    goto LABEL_166;
  }

  v3 = *(handle + 172);
  if ((v3 & 0x10) != 0)
  {
    if ((v3 & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v91 = "nw_protocol_http_messaging_connected";
        v92 = 2082;
        v93 = handle + 260;
        v94 = 2080;
        v95 = " ";
        v19 = "%{public}s %{public}s%signoring connected";
        v20 = v18;
        v21 = OS_LOG_TYPE_INFO;
LABEL_30:
        _os_log_impl(&dword_181A37000, v20, v21, v19, buf, 0x20u);
      }
    }
  }

  else
  {
    v4 = *(handle + 6);
    if (v4)
    {
      nw_protocol_connected(v4, a2);
      if (*(handle + 4) != a2)
      {
        return;
      }

      if ((*(handle + 172) & 2) == 0 && gLogDatapath == 1)
      {
        v86 = __nwlog_obj();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v91 = "nw_http_messaging_get_http_version_from_alpn";
          v92 = 2082;
          v93 = handle + 260;
          v94 = 2080;
          v95 = " ";
          _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        }
      }

      v6 = nw_protocol_copy_info(*(handle + 4));
      v7 = v6;
      if (v6 && (object = _nw_array_copy_last_object(v6)) != 0)
      {
        v9 = object;
        if (nw_protocol_metadata_is_tls(object))
        {
          v10 = v9;
          v11 = sec_protocol_metadata_copy_negotiated_protocol();
          if ((*(handle + 172) & 2) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446978;
              v91 = "nw_http_messaging_get_http_version_from_alpn";
              v92 = 2082;
              v93 = handle + 260;
              v94 = 2080;
              v95 = " ";
              v96 = 2082;
              v97 = v11;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFound TLS metadata with ALPN %{public}s", buf, 0x2Au);
            }
          }

          if (v11)
          {
            if (*v11 == 104 && *(v11 + 1) == 50 && !*(v11 + 2))
            {
              v60 = 4;
            }

            else
            {
              if (strcmp(v11, "http/1.1"))
              {
                v13 = __nwlog_obj();
                *buf = 136446466;
                v91 = "nw_http_messaging_get_http_version_from_alpn";
                v92 = 2080;
                v93 = v11;
                v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s Invalid TLS ALPN %s", buf, 22);
                type = OS_LOG_TYPE_ERROR;
                v88 = 0;
                if (__nwlog_fault(v14, &type, &v88))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v15 = __nwlog_obj();
                    v16 = type;
                    if (os_log_type_enabled(v15, type))
                    {
                      *buf = 136446466;
                      v91 = "nw_http_messaging_get_http_version_from_alpn";
                      v92 = 2080;
                      v93 = v11;
                      v17 = "%{public}s Invalid TLS ALPN %s";
LABEL_125:
                      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x16u);
                    }
                  }

                  else if (v88 == 1)
                  {
                    v61 = __nw_create_backtrace_string();
                    v15 = __nwlog_obj();
                    v16 = type;
                    v62 = os_log_type_enabled(v15, type);
                    if (v61)
                    {
                      if (v62)
                      {
                        *buf = 136446722;
                        v91 = "nw_http_messaging_get_http_version_from_alpn";
                        v92 = 2080;
                        v93 = v11;
                        v94 = 2082;
                        v95 = v61;
                        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Invalid TLS ALPN %s, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v61);
                      goto LABEL_126;
                    }

                    if (v62)
                    {
                      *buf = 136446466;
                      v91 = "nw_http_messaging_get_http_version_from_alpn";
                      v92 = 2080;
                      v93 = v11;
                      v17 = "%{public}s Invalid TLS ALPN %s, no backtrace";
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v15 = __nwlog_obj();
                    v16 = type;
                    if (os_log_type_enabled(v15, type))
                    {
                      *buf = 136446466;
                      v91 = "nw_http_messaging_get_http_version_from_alpn";
                      v92 = 2080;
                      v93 = v11;
                      v17 = "%{public}s Invalid TLS ALPN %s, backtrace limit exceeded";
                      goto LABEL_125;
                    }
                  }
                }

LABEL_126:
                if (v14)
                {
                  free(v14);
                }

                v60 = 0;
                goto LABEL_129;
              }

              v60 = 3;
            }

LABEL_129:
            free(v11);
            goto LABEL_175;
          }

          v60 = 3;
LABEL_175:
          os_release(v10);
          goto LABEL_176;
        }

        if (_nw_protocol_metadata_is_quic())
        {
          v10 = nw_quic_copy_sec_protocol_metadata(v9);
          v24 = sec_protocol_metadata_copy_negotiated_protocol();
          if ((*(handle + 172) & 2) == 0)
          {
            v25 = __nwlog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 136446978;
              v91 = "nw_http_messaging_get_http_version_from_alpn";
              v92 = 2082;
              v93 = handle + 260;
              v94 = 2080;
              v95 = " ";
              v96 = 2082;
              v97 = v24;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFound QUIC metadata with ALPN %{public}s", buf, 0x2Au);
            }
          }

          if (v24)
          {
            if (*v24 == 104 && v24[1] == 51 && !v24[2])
            {
              v60 = 5;
LABEL_137:
              free(v24);
              goto LABEL_174;
            }

            v26 = __nwlog_obj();
            *buf = 136446466;
            v91 = "nw_http_messaging_get_http_version_from_alpn";
            v92 = 2080;
            v93 = v24;
            v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s Invalid QUIC ALPN %s", buf, 22);
            type = OS_LOG_TYPE_ERROR;
            v88 = 0;
            if (__nwlog_fault(v27, &type, &v88))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v28 = __nwlog_obj();
                v29 = type;
                if (os_log_type_enabled(v28, type))
                {
                  *buf = 136446466;
                  v91 = "nw_http_messaging_get_http_version_from_alpn";
                  v92 = 2080;
                  v93 = v24;
                  v30 = "%{public}s Invalid QUIC ALPN %s";
LABEL_133:
                  _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0x16u);
                }
              }

              else if (v88 == 1)
              {
                v63 = __nw_create_backtrace_string();
                v28 = __nwlog_obj();
                v29 = type;
                v64 = os_log_type_enabled(v28, type);
                if (v63)
                {
                  if (v64)
                  {
                    *buf = 136446722;
                    v91 = "nw_http_messaging_get_http_version_from_alpn";
                    v92 = 2080;
                    v93 = v24;
                    v94 = 2082;
                    v95 = v63;
                    _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Invalid QUIC ALPN %s, dumping backtrace:%{public}s", buf, 0x20u);
                  }

                  free(v63);
                  goto LABEL_134;
                }

                if (v64)
                {
                  *buf = 136446466;
                  v91 = "nw_http_messaging_get_http_version_from_alpn";
                  v92 = 2080;
                  v93 = v24;
                  v30 = "%{public}s Invalid QUIC ALPN %s, no backtrace";
                  goto LABEL_133;
                }
              }

              else
              {
                v28 = __nwlog_obj();
                v29 = type;
                if (os_log_type_enabled(v28, type))
                {
                  *buf = 136446466;
                  v91 = "nw_http_messaging_get_http_version_from_alpn";
                  v92 = 2080;
                  v93 = v24;
                  v30 = "%{public}s Invalid QUIC ALPN %s, backtrace limit exceeded";
                  goto LABEL_133;
                }
              }
            }

LABEL_134:
            if (v27)
            {
              free(v27);
            }

            v60 = 0;
            goto LABEL_137;
          }

          if (nw_protocol_waiting_for_output(*(handle + 4), handle))
          {
            v60 = 5;
            goto LABEL_174;
          }

          v65 = __nwlog_obj();
          *buf = 136446210;
          v91 = "nw_http_messaging_get_http_version_from_alpn";
          v66 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s Missing QUIC ALPN", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v88 = 0;
          if (__nwlog_fault(v66, &type, &v88))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v67 = __nwlog_obj();
              v68 = type;
              if (os_log_type_enabled(v67, type))
              {
                *buf = 136446210;
                v91 = "nw_http_messaging_get_http_version_from_alpn";
                v69 = "%{public}s Missing QUIC ALPN";
LABEL_170:
                _os_log_impl(&dword_181A37000, v67, v68, v69, buf, 0xCu);
              }
            }

            else if (v88 == 1)
            {
              v70 = __nw_create_backtrace_string();
              v67 = __nwlog_obj();
              v68 = type;
              v71 = os_log_type_enabled(v67, type);
              if (v70)
              {
                if (v71)
                {
                  *buf = 136446466;
                  v91 = "nw_http_messaging_get_http_version_from_alpn";
                  v92 = 2082;
                  v93 = v70;
                  _os_log_impl(&dword_181A37000, v67, v68, "%{public}s Missing QUIC ALPN, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v70);
                goto LABEL_171;
              }

              if (v71)
              {
                *buf = 136446210;
                v91 = "nw_http_messaging_get_http_version_from_alpn";
                v69 = "%{public}s Missing QUIC ALPN, no backtrace";
                goto LABEL_170;
              }
            }

            else
            {
              v67 = __nwlog_obj();
              v68 = type;
              if (os_log_type_enabled(v67, type))
              {
                *buf = 136446210;
                v91 = "nw_http_messaging_get_http_version_from_alpn";
                v69 = "%{public}s Missing QUIC ALPN, backtrace limit exceeded";
                goto LABEL_170;
              }
            }
          }

LABEL_171:
          if (v66)
          {
            free(v66);
          }

          v60 = 0;
LABEL_174:
          if (!v10)
          {
LABEL_176:
            os_release(v9);
            os_release(v7);
            *(handle + 64) = v60;
            if (v60 > 3)
            {
              if (v60 == 4)
              {
                if (nw_protocol_http2_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
                }

                v31 = &nw_protocol_http2_identifier::http2_protocol_identifier;
                if (*(handle + 172))
                {
                  goto LABEL_58;
                }
              }

              else
              {
                if (nw_protocol_http3_identifier::onceToken != -1)
                {
                  dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                }

                v31 = &nw_protocol_http3_identifier::http3_protocol_identifier;
                if (*(handle + 172))
                {
                  goto LABEL_58;
                }
              }

              if (nw_settings_get_http_connection_coalescing_enabled())
              {
                if (nw_endpoint_is_registered(*(handle + 14)))
                {
                  nw_endpoint_add_edges_for_instance(*(handle + 14), handle, 1);
                }

                else if ((*(handle + 172) & 2) == 0)
                {
                  v85 = __nwlog_obj();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v91 = "nw_protocol_http_messaging_connected";
                    v92 = 2082;
                    v93 = handle + 260;
                    v94 = 2080;
                    v95 = " ";
                    _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sconnection's endpoint is not registered, cannot add edges", buf, 0x20u);
                  }
                }
              }

LABEL_58:
              internal = nw_protocol_create_internal(v31, *(handle + 14), *(handle + 12), 0);
              *(handle + 19) = internal;
              *(internal + 16) = *(handle + 2);
              v33 = *(handle + 6);
              nw_protocol_set_input_handler(handle, 0);
              nw_http_messaging_add_to_version_specific_protocol(handle, v33);
              nw_protocol_add_listen_handler(*(handle + 19), (handle + 64));
              nw_protocol_replace_input_handler(*(handle + 4), handle, v33[4]);
              nw_protocol_set_output_handler(handle, 0);
              *(handle + 172) |= 0x80u;
              nw_protocol_connect(v33[4], v33);
              while (1)
              {
                v36 = *(handle + 29);
                v35 = *(handle + 30);
                v37 = v36;
                if (v36 != v35)
                {
                  while (*(v37 + 8) == 2)
                  {
                    v37 += 16;
                    if (v37 == v35)
                    {
                      v37 = *(handle + 30);
                      break;
                    }
                  }
                }

                if (v35 == v37)
                {
                  v59 = *(handle + 172);
                  if ((v59 & 0x80) != 0)
                  {
                    *(handle + 172) = v59 & 0xFF7F;
                  }

                  else
                  {
                    nw_http_messaging_destroy(handle);
                  }

                  return;
                }

                v38 = *v37;
                v39 = *(v37 + 8);
                v40 = v37 + 16;
                if (v37 + 16 != v35)
                {
                  v41 = v35 - v37 - 32;
                  if (v41 >= 0x10)
                  {
                    v42 = v37 - v36;
                    v43 = (v41 >> 4) + 1;
                    v44 = 16 * (v43 & 0x1FFFFFFFFFFFFFFELL);
                    v37 += v44;
                    v45 = v36 + v42 + 24;
                    v46 = v43 & 0x1FFFFFFFFFFFFFFELL;
                    do
                    {
                      v47 = *(v45 + 8);
                      *(v45 - 24) = *(v45 - 8);
                      *(v45 - 8) = v47;
                      LODWORD(v47) = *(v45 + 16);
                      *(v45 - 16) = *v45;
                      *v45 = v47;
                      v45 += 32;
                      v46 -= 2;
                    }

                    while (v46);
                    if (v43 == (v43 & 0x1FFFFFFFFFFFFFFELL))
                    {
                      goto LABEL_73;
                    }

                    v40 += v44;
                  }

                  do
                  {
                    *v37 = *v40;
                    *(v37 + 8) = *(v40 + 8);
                    v40 += 16;
                    v37 += 16;
                  }

                  while (v40 != v35);
                }

LABEL_73:
                *(handle + 30) = v37;
                parameters = nw_protocol_get_parameters(v38);
                if (nw_protocol_http_messaging_accept(handle, *(handle + 14), parameters) && (nw_http_messaging_add_to_version_specific_protocol(handle, v38) & 1) != 0)
                {
                  if (v39 == 1)
                  {
                    nw_protocol_connect(*(v38 + 32), v38);
                  }
                }

                else
                {
                  if ((*(handle + 172) & 2) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v49 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136446722;
                      v91 = "nw_protocol_http_messaging_connected";
                      v92 = 2082;
                      v93 = handle + 260;
                      v94 = 2080;
                      v95 = " ";
                      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sVersion specific protocol cannot accept stream", buf, 0x20u);
                    }
                  }

                  v51 = *(handle + 30);
                  v50 = *(handle + 31);
                  if (v51 < v50)
                  {
                    *v51 = v38;
                    *(v51 + 8) = 2;
                    v34 = v51 + 16;
                  }

                  else
                  {
                    v52 = *(handle + 29);
                    v53 = v51 - v52;
                    v54 = (v51 - v52) >> 4;
                    v55 = v54 + 1;
                    if ((v54 + 1) >> 60)
                    {
                      std::string::__throw_length_error[abi:nn200100]();
                    }

                    v56 = v50 - v52;
                    if (v56 >> 3 > v55)
                    {
                      v55 = v56 >> 3;
                    }

                    if (v56 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v57 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v57 = v55;
                    }

                    if (v57)
                    {
                      if (!(v57 >> 60))
                      {
                        operator new();
                      }

                      std::string::__throw_length_error[abi:nn200100]();
                    }

                    v58 = 16 * v54;
                    *v58 = v38;
                    *(v58 + 8) = 2;
                    v34 = 16 * v54 + 16;
                    memcpy(0, v52, v53);
                    *(handle + 29) = 0;
                    *(handle + 30) = v34;
                    *(handle + 31) = 0;
                    if (v52)
                    {
                      operator delete(v52);
                    }
                  }

                  *(handle + 30) = v34;
                  nw_protocol_error(v38, handle);
                  nw_protocol_disconnected(v38, handle);
                }
              }
            }

            if (!v60)
            {
              nw_protocol_http_messaging_error(handle, handle);
              nw_protocol_http_messaging_disconnected(handle, handle);
              return;
            }

LABEL_52:
            if (nw_protocol_http1_identifier::onceToken != -1)
            {
              dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
            }

            v31 = &nw_protocol_http1_identifier::http1_protocol_identifier;
            if (*(handle + 16) != *(handle + 17))
            {
              if ((*(handle + 172) & 2) == 0 && gLogDatapath == 1)
              {
                v87 = __nwlog_obj();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  v91 = "nw_protocol_http_messaging_connected";
                  v92 = 2082;
                  v93 = handle + 260;
                  v94 = 2080;
                  v95 = " ";
                  _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sremoving instance since http_joining handles joining", buf, 0x20u);
                }
              }

              nw_protocol_remove_instance(handle);
            }

            goto LABEL_58;
          }

          goto LABEL_175;
        }

        os_release(v9);
      }

      else
      {
        if ((*(handle + 172) & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            v91 = "nw_http_messaging_get_http_version_from_alpn";
            v92 = 2082;
            v93 = handle + 260;
            v94 = 2080;
            v95 = " ";
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sTop metadata isn't TLS, assuming HTTP/1.1", buf, 0x20u);
          }
        }

        if (!v7)
        {
          goto LABEL_51;
        }
      }

      os_release(v7);
LABEL_51:
      *(handle + 64) = 3;
      goto LABEL_52;
    }

    if ((v3 & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v91 = "nw_protocol_http_messaging_connected";
        v92 = 2082;
        v93 = handle + 260;
        v94 = 2080;
        v95 = " ";
        v19 = "%{public}s %{public}s%sno default input handler, ignoring connected";
        v20 = v22;
        v21 = OS_LOG_TYPE_ERROR;
        goto LABEL_30;
      }
    }
  }
}

uint64_t nw_protocol_http_messaging_connect(nw_protocol *a1, nw_protocol *a2)
{
  v129 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v69 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v121))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null protocol";
      goto LABEL_65;
    }

    if (v121 != OS_LOG_TYPE_INFO)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v73 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (!v73)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_65;
    }

    if (!v73)
    {
      goto LABEL_137;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v74 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_136:
    _os_log_impl(&dword_181A37000, v9, v10, v74, buf, 0x16u);
    goto LABEL_137;
  }

  handle = a1->handle;
  if (!handle)
  {
    v70 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null http_messaging", buf, 12);
    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v121))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null http_messaging";
      goto LABEL_65;
    }

    if (v121 != OS_LOG_TYPE_INFO)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v75 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (!v75)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null http_messaging, no backtrace";
      goto LABEL_65;
    }

    if (!v75)
    {
      goto LABEL_137;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v74 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
    goto LABEL_136;
  }

  if (!a2)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null other_protocol", buf, 12);
    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v121))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null other_protocol";
      goto LABEL_65;
    }

    if (v121 != OS_LOG_TYPE_INFO)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_65;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v76 = os_log_type_enabled(v9, type[0]);
    if (!backtrace_string)
    {
      if (!v76)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_65;
    }

    if (v76)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v74 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_136;
    }

LABEL_137:
    free(backtrace_string);
    goto LABEL_87;
  }

  if (!a1->output_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connect requires an output handler", buf, 12);
    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v121))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s connect requires an output handler";
    }

    else
    {
      if (v121 == OS_LOG_TYPE_INFO)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        v31 = type[0];
        v32 = os_log_type_enabled(gLogObj, type[0]);
        if (v29)
        {
          if (v32)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http_messaging_connect";
            *&buf[12] = 2082;
            *&buf[14] = v29;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s connect requires an output handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_87;
        }

        if (!v32)
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v11 = "%{public}s connect requires an output handler, no backtrace";
        v55 = v30;
        v56 = v31;
LABEL_66:
        v57 = 12;
LABEL_86:
        _os_log_impl(&dword_181A37000, v55, v56, v11, buf, v57);
        goto LABEL_87;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      v11 = "%{public}s connect requires an output handler, backtrace limit exceeded";
    }

LABEL_65:
    v55 = v9;
    v56 = v10;
    goto LABEL_66;
  }

  v5 = *(handle + 6);
  if (v5 != a2)
  {
    v6 = *(handle + 29);
    v7 = *(handle + 30);
    if (v6 != v7)
    {
      while (*v6 != a2)
      {
        v6 += 16;
        if (v6 == v7)
        {
          goto LABEL_26;
        }
      }
    }

    if (v6 != v7)
    {
      result = 1;
      *(v6 + 8) = 1;
      return result;
    }

LABEL_26:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Protocol %p isn't an input handler of http messaging", buf, 22);
    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v121))
    {
      goto LABEL_87;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v11 = "%{public}s Protocol %p isn't an input handler of http messaging";
      goto LABEL_85;
    }

    if (v121 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v11 = "%{public}s Protocol %p isn't an input handler of http messaging, backtrace limit exceeded";
      goto LABEL_85;
    }

    v53 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    v28 = type[0];
    v54 = os_log_type_enabled(gLogObj, type[0]);
    if (v53)
    {
      if (v54)
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2082;
        v126 = v53;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Protocol %p isn't an input handler of http messaging, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v53);
      goto LABEL_87;
    }

    if (v54)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_messaging_connect";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v11 = "%{public}s Protocol %p isn't an input handler of http messaging, no backtrace";
LABEL_85:
      v55 = v27;
      v56 = v28;
      v57 = 22;
      goto LABEL_86;
    }

LABEL_87:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  parameters = nw_protocol_get_parameters(v5);
  v14 = _nw_parameters_shallow_copy(parameters, 1);
  v15 = handle[104];
  if ((v15 & 1) != 0 && *(handle + 12))
  {
    v16 = v14;
    os_release(*(handle + 12));
    v14 = v16;
    v15 = handle[104];
  }

  *(handle + 12) = v14;
  handle[104] = v15 | 1;
  v17 = nw_parameters_copy_protocol_options_legacy(v14, handle);
  if (!nw_http_messaging_options_is_websocket(v17))
  {
    v33 = 0;
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v18 = nw_http_messaging_options_copy_http2_options(v17);
  v19 = nw_http_messaging_options_copy_http3_options(v17);
  if (!(v18 | v19))
  {
    v33 = 0;
    *(handle + 172) |= 0x100u;
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v20 = v19;
  v21 = v17;
  v22 = v21;
  if (!v21)
  {
    v88 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
    v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null options", buf, 12);

    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v89, type, &v121))
    {
      if (type[0] == 17)
      {
        v90 = __nwlog_obj();
        v91 = type[0];
        if (os_log_type_enabled(v90, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v90, v91, "%{public}s called with null options", buf, 0xCu);
        }
      }

      else if (v121 == OS_LOG_TYPE_INFO)
      {
        v100 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v101 = type[0];
        v102 = os_log_type_enabled(v90, type[0]);
        if (v100)
        {
          if (v102)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
            *&buf[12] = 2082;
            *&buf[14] = v100;
            _os_log_impl(&dword_181A37000, v90, v101, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v100);
          goto LABEL_241;
        }

        if (v102)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v90, v101, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v107 = type[0];
        if (os_log_type_enabled(v90, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_retry_with_h1_handler";
          _os_log_impl(&dword_181A37000, v90, v107, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_241:
    if (v89)
    {
      free(v89);
    }

    goto LABEL_243;
  }

  v23 = nw_protocol_copy_http_messaging_definition_onceToken;
  v24 = v21;
  if (v23 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v25 = nw_protocol_options_matches_definition(v24, nw_protocol_copy_http_messaging_definition_definition);

  if (v25)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v126 = __Block_byref_object_copy__7;
    v127 = __Block_byref_object_dispose__8;
    v128 = 0;
    *type = MEMORY[0x1E69E9820];
    *&type[8] = 3221225472;
    *&type[16] = __nw_http_messaging_options_copy_retry_with_h1_handler_block_invoke;
    v123 = &unk_1E6A3A858;
    v124 = buf;
    nw_protocol_options_access_handle(v24, type);
    v26 = _Block_copy(*(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);

    goto LABEL_244;
  }

LABEL_243:
  v26 = 0;
LABEL_244:

  nw_http_messaging_options_set_retry_with_h1_handler(v22, 0);
  if (v26)
  {
    v26[2](v26, *(handle + 12), &__block_literal_global_22_80755);
    _Block_release(v26);
  }

  if (v20)
  {
    os_release(v20);
  }

  if (v18)
  {
    os_release(v18);
    v33 = 1;
    if (!v17)
    {
      goto LABEL_37;
    }

LABEL_36:
    os_release(v17);
    goto LABEL_37;
  }

  v33 = 1;
  if (v17)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (!v33)
  {
    v35 = nw_parameters_copy_default_protocol_stack(*(handle + 12));
    v36 = nw_parameters_copy_protocol_options_legacy(*(handle + 12), handle);
    v37 = nw_protocol_options_copy(v36);
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v38 = nw_protocol_copy_http_messaging_definition_definition;
    nw_parameters_set_protocol_instance(v37, v39, handle);
    if (v38)
    {
      os_release(v38);
    }

    nw_protocol_stack_replace_protocol_with_handle(v35, handle, v37);
    if (nw_endpoint_is_registered(*(handle + 14)))
    {
      nw_endpoint_add_edges_for_instance(*(handle + 14), handle, 0);
    }

    v119 = v35;
    v40 = v36;
    v41 = v40;
    if (v40)
    {
      v42 = nw_protocol_copy_http_messaging_definition_onceToken;
      v43 = v40;
      if (v42 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      v44 = nw_protocol_options_matches_definition(v43, nw_protocol_copy_http_messaging_definition_definition);

      if (v44)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x2020000000;
        LOBYTE(v123) = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_http_messaging_options_get_early_data_enabled_block_invoke;
        v126 = &unk_1E6A3A858;
        v127 = type;
        nw_protocol_options_access_handle(v43, buf);
        v45 = *(*&type[8] + 24);
        _Block_object_dispose(type, 8);
        goto LABEL_52;
      }

      v81 = __nwlog_obj();
      *type = 136446210;
      *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
      LODWORD(v116) = 12;
      v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s protocol options are not http_messaging", type, v116);

      v121 = OS_LOG_TYPE_ERROR;
      v120 = 0;
      if (__nwlog_fault(v118, &v121, &v120))
      {
        if (v121 == OS_LOG_TYPE_FAULT)
        {
          v82 = __nwlog_obj();
          v83 = v121;
          if (os_log_type_enabled(v82, v121))
          {
            *type = 136446210;
            *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
            _os_log_impl(&dword_181A37000, v82, v83, "%{public}s protocol options are not http_messaging", type, 0xCu);
          }
        }

        else
        {
          if (v120 != 1)
          {
            v104 = __nwlog_obj();
            v105 = v121;
            if (os_log_type_enabled(v104, v121))
            {
              *type = 136446210;
              *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
              _os_log_impl(&dword_181A37000, v104, v105, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", type, 0xCu);
            }

            goto LABEL_229;
          }

          v95 = __nw_create_backtrace_string();
          v82 = __nwlog_obj();
          HIDWORD(v116) = v121;
          v96 = os_log_type_enabled(v82, v121);
          if (v95)
          {
            if (v96)
            {
              *type = 136446466;
              *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
              *&type[12] = 2082;
              *&type[14] = v95;
              _os_log_impl(&dword_181A37000, v82, BYTE4(v116), "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", type, 0x16u);
            }

            free(v95);
            goto LABEL_229;
          }

          if (v96)
          {
            *type = 136446210;
            *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
            _os_log_impl(&dword_181A37000, v82, BYTE4(v116), "%{public}s protocol options are not http_messaging, no backtrace", type, 0xCu);
          }
        }
      }

LABEL_229:
      if (v118)
      {
        free(v118);
      }

      v45 = 0;
LABEL_52:

      v46 = v43;
      v47 = nw_protocol_copy_http_messaging_definition_onceToken;
      v48 = v46;
      if (v47 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      v49 = nw_protocol_options_matches_definition(v48, nw_protocol_copy_http_messaging_definition_definition);

      if (v49)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v126 = __Block_byref_object_copy__75915;
        v127 = __Block_byref_object_dispose__75916;
        v128 = 0;
        *type = MEMORY[0x1E69E9820];
        *&type[8] = 3221225472;
        *&type[16] = __nw_http_messaging_options_copy_storage_block_invoke;
        v123 = &unk_1E6A3A858;
        v124 = buf;
        nw_protocol_options_access_handle(v48, type);
        v50 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

        goto LABEL_56;
      }

      v84 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_messaging_options_copy_storage";
      LODWORD(v116) = 12;
      v85 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s protocol options are not http_messaging", buf, v116);

      v121 = OS_LOG_TYPE_ERROR;
      v120 = 0;
      if (!__nwlog_fault(v85, &v121, &v120))
      {
        goto LABEL_235;
      }

      if (v121 == OS_LOG_TYPE_FAULT)
      {
        v86 = __nwlog_obj();
        v87 = v121;
        if (os_log_type_enabled(v86, v121))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s protocol options are not http_messaging", buf, 0xCu);
        }
      }

      else if (v120 == 1)
      {
        v97 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v98 = v121;
        v99 = os_log_type_enabled(v86, v121);
        if (v97)
        {
          if (v99)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http_messaging_options_copy_storage";
            *&buf[12] = 2082;
            *&buf[14] = v97;
            _os_log_impl(&dword_181A37000, v86, v98, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v97);
          goto LABEL_235;
        }

        if (v99)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          _os_log_impl(&dword_181A37000, v86, v98, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v86 = __nwlog_obj();
        v106 = v121;
        if (os_log_type_enabled(v86, v121))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          _os_log_impl(&dword_181A37000, v86, v106, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_235:
      if (v85)
      {
        free(v85);
      }

      v50 = 0;
      goto LABEL_56;
    }

    v77 = __nwlog_obj();
    *type = 136446210;
    *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
    LODWORD(v116) = 12;
    v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null options", type, v116);

    v121 = OS_LOG_TYPE_ERROR;
    v120 = 0;
    if (__nwlog_fault(v78, &v121, &v120))
    {
      if (v121 == OS_LOG_TYPE_FAULT)
      {
        v79 = __nwlog_obj();
        v80 = v121;
        if (os_log_type_enabled(v79, v121))
        {
          *type = 136446210;
          *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null options", type, 0xCu);
        }

LABEL_204:

        goto LABEL_205;
      }

      if (v120 != 1)
      {
        v79 = __nwlog_obj();
        v103 = v121;
        if (os_log_type_enabled(v79, v121))
        {
          *type = 136446210;
          *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
          _os_log_impl(&dword_181A37000, v79, v103, "%{public}s called with null options, backtrace limit exceeded", type, 0xCu);
        }

        goto LABEL_204;
      }

      v92 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v93 = v121;
      v94 = os_log_type_enabled(v79, v121);
      if (!v92)
      {
        if (v94)
        {
          *type = 136446210;
          *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
          _os_log_impl(&dword_181A37000, v79, v93, "%{public}s called with null options, no backtrace", type, 0xCu);
        }

        goto LABEL_204;
      }

      if (v94)
      {
        *type = 136446466;
        *&type[4] = "nw_http_messaging_options_get_early_data_enabled";
        *&type[12] = 2082;
        *&type[14] = v92;
        _os_log_impl(&dword_181A37000, v79, v93, "%{public}s called with null options, dumping backtrace:%{public}s", type, 0x16u);
      }

      free(v92);
    }

LABEL_205:
    if (v78)
    {
      free(v78);
    }

    v108 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_storage";
    LODWORD(v117) = 12;
    v109 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s called with null options", buf, v117);

    v121 = OS_LOG_TYPE_ERROR;
    v120 = 0;
    if (!__nwlog_fault(v109, &v121, &v120))
    {
      goto LABEL_223;
    }

    if (v121 == OS_LOG_TYPE_FAULT)
    {
      v110 = __nwlog_obj();
      v111 = v121;
      if (os_log_type_enabled(v110, v121))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_storage";
        _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v120 == 1)
    {
      v112 = __nw_create_backtrace_string();
      v110 = __nwlog_obj();
      v113 = v121;
      v114 = os_log_type_enabled(v110, v121);
      if (v112)
      {
        if (v114)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_messaging_options_copy_storage";
          *&buf[12] = 2082;
          *&buf[14] = v112;
          _os_log_impl(&dword_181A37000, v110, v113, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v112);
        goto LABEL_223;
      }

      if (v114)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_storage";
        _os_log_impl(&dword_181A37000, v110, v113, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v110 = __nwlog_obj();
      v115 = v121;
      if (os_log_type_enabled(v110, v121))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_messaging_options_copy_storage";
        _os_log_impl(&dword_181A37000, v110, v115, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_223:
    if (v109)
    {
      free(v109);
    }

    v45 = 0;
    v50 = 0;
LABEL_56:

    v51 = handle[168];
    if (v51)
    {
      v58 = *(handle + 20);
      v52 = v119;
      if (v58)
      {
        os_release(v58);
        v51 = handle[168];
      }
    }

    else
    {
      v52 = v119;
    }

    *(handle + 20) = v50;
    handle[168] = v51 | 1;
    if (((v50 != 0) & v45) != 1)
    {
      goto LABEL_106;
    }

    v59 = nw_parameters_copy_protocol_options_legacy(*(handle + 12), *(handle + 4));
    if (v59)
    {
      v60 = v59;
      if (_nw_protocol_options_is_quic_connection(v60))
      {
      }

      else
      {
        is_quic_stream = _nw_protocol_options_is_quic_stream(v60);

        if (!is_quic_stream)
        {
LABEL_93:
          os_release(v60);
          v52 = v119;
LABEL_106:
          result = nw_protocol_connect(a1->output_handler->flow_id, a1);
          v68 = result;
          if (v37)
          {
            os_release(v37);
            result = v68;
          }

          if (v41)
          {
            os_release(v41);
            result = v68;
          }

          if (v52)
          {
            os_release(v52);
            return v68;
          }

          return result;
        }
      }

      nw_http_messaging_setup_early_data(handle, v41, v60);
      goto LABEL_93;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    LODWORD(v116) = 12;
    v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Output handler has no options", buf, v116);
    type[0] = 16;
    v121 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v61, type, &v121))
    {
      if (type[0] == 17)
      {
        v62 = __nwlog_obj();
        v63 = type[0];
        if (!os_log_type_enabled(v62, type[0]))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v64 = "%{public}s Output handler has no options";
        goto LABEL_103;
      }

      if (v121 != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = type[0];
        if (!os_log_type_enabled(v62, type[0]))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v64 = "%{public}s Output handler has no options, backtrace limit exceeded";
        goto LABEL_103;
      }

      v66 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = type[0];
      v67 = os_log_type_enabled(v62, type[0]);
      if (v66)
      {
        if (v67)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_messaging_connect";
          *&buf[12] = 2082;
          *&buf[14] = v66;
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Output handler has no options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
        goto LABEL_104;
      }

      if (v67)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_messaging_connect";
        v64 = "%{public}s Output handler has no options, no backtrace";
LABEL_103:
        _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
      }
    }

LABEL_104:
    v52 = v119;
    if (v61)
    {
      free(v61);
    }

    goto LABEL_106;
  }

  if ((*(handle + 172) & 2) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v34 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_messaging_connect";
    *&buf[12] = 2082;
    *&buf[14] = handle + 260;
    *&buf[22] = 2080;
    v126 = " ";
    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}s%srestarting websocket to force h1", buf, 0x20u);
    return 0;
  }

  return result;
}

void sub_181EDDB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_messaging_options_is_websocket(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_is_websocket";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v8, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_is_websocket";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options", buf, 0xCu);
        }
      }

      else if (v17 == 1)
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
            *&buf[4] = "nw_http_messaging_options_is_websocket";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v13)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_is_websocket";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_messaging_options_is_websocket";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_24;
  }

  v3 = nw_protocol_copy_http_messaging_definition_onceToken;
  v4 = v1;
  if (v3 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

  if (!v5)
  {
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __nw_http_messaging_options_is_websocket_block_invoke;
  v16[3] = &unk_1E6A3A858;
  v16[4] = buf;
  nw_protocol_options_access_handle(v4, v16);
  v6 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_25:

  return v6 & 1;
}

void sub_181EDDEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181EDDEE0(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[16 * v4];
  if (v12 != __dst || &v12[16 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 16 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[16 * v8];
  if (v16 != v11 || v16 >= &v11[16 * v7])
  {

    memmove(v16, v11, 16 * v7);
  }
}

uint64_t nw_endpoint_is_registered(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_registered = _nw_endpoint_is_registered(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_is_registered";
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
        v16 = "nw_endpoint_is_registered";
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
          v16 = "nw_endpoint_is_registered";
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
        v16 = "nw_endpoint_is_registered";
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
        v16 = "nw_endpoint_is_registered";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_registered = 0;
LABEL_3:

  return is_registered;
}

uint64_t __nw_http_messaging_options_is_websocket_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 88) & 2) != 0;
  }

  return 1;
}

void nw_protocol_error(char *a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = *(a1 + 5);
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(a1 + 8)) != 0)
    {
      v11 = *(v5 + 11);
      if (v11)
      {
        v6 = 0;
        *(v5 + 11) = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
LABEL_12:
        v12 = __nwlog_obj();
        *buf = 136446210;
        v51 = "__nw_protocol_error";
        v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null other_protocol", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v48 = 0;
        if (!__nwlog_fault(v2, &type, &v48))
        {
          goto LABEL_104;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (!os_log_type_enabled(v13, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v51 = "__nw_protocol_error";
          v15 = "%{public}s called with null other_protocol";
          goto LABEL_103;
        }

        if (v48 != 1)
        {
          v13 = __nwlog_obj();
          v14 = type;
          if (!os_log_type_enabled(v13, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v51 = "__nw_protocol_error";
          v15 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_103;
        }

        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v45 = os_log_type_enabled(v13, type);
        if (!backtrace_string)
        {
          if (!v45)
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v51 = "__nw_protocol_error";
          v15 = "%{public}s called with null other_protocol, no backtrace";
LABEL_103:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
LABEL_104:
          if (!v2)
          {
            goto LABEL_37;
          }

LABEL_36:
          free(v2);
          goto LABEL_37;
        }

        if (v45)
        {
          *buf = 136446466;
          v51 = "__nw_protocol_error";
          v52 = 2082;
          v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_36;
        }

LABEL_37:
        if ((v6 & 1) == 0)
        {
          v23 = *(v3 + 5);
          if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 8)) != 0)
          {
            v24 = *(v3 + 11);
            if (v24)
            {
              v25 = v24 - 1;
              *(v3 + 11) = v25;
              if (!v25)
              {
                v26 = *(v3 + 8);
                if (v26)
                {
                  *(v3 + 8) = 0;
                  v26[2](v26);
                  _Block_release(v26);
                }

                if (v3[72])
                {
                  v27 = *(v3 + 8);
                  if (v27)
                  {
                    _Block_release(v27);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v16 = *(v8 + 88);
      if (v16)
      {
        v9 = 0;
        *(v8 + 88) = v16 + 1;
        v10 = *(a1 + 3);
        if (!v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v9 = 0;
        v10 = *(a1 + 3);
        if (!v10)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = *(a1 + 3);
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    v17 = *(v10 + 56);
    if (v17)
    {
      v17(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    v28 = __nwlog_obj();
    v29 = *(v3 + 2);
    *buf = 136446722;
    v51 = "__nw_protocol_error";
    if (!v29)
    {
      v29 = "invalid";
    }

    v52 = 2082;
    v53 = v29;
    v54 = 2048;
    v55 = v3;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v30, &type, &v48))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_94;
      }

      v33 = *(v3 + 2);
      if (!v33)
      {
        v33 = "invalid";
      }

      *buf = 136446722;
      v51 = "__nw_protocol_error";
      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid error callback";
    }

    else if (v48 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type;
      v40 = os_log_type_enabled(v31, type);
      if (v39)
      {
        if (v40)
        {
          v41 = *(v3 + 2);
          if (!v41)
          {
            v41 = "invalid";
          }

          *buf = 136446978;
          v51 = "__nw_protocol_error";
          v52 = 2082;
          v53 = v41;
          v54 = 2048;
          v55 = v3;
          v56 = 2082;
          v57 = v39;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v39);
        goto LABEL_94;
      }

      if (!v40)
      {
LABEL_94:
        if (v30)
        {
          free(v30);
        }

LABEL_25:
        if ((v9 & 1) == 0)
        {
          v18 = *(v2 + 40);
          if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
          {
            v19 = *(v2 + 88);
            if (v19)
            {
              v20 = v19 - 1;
              *(v2 + 88) = v20;
              if (!v20)
              {
                v21 = *(v2 + 64);
                if (v21)
                {
                  *(v2 + 64) = 0;
                  v21[2](v21);
                  _Block_release(v21);
                }

                if (*(v2 + 72))
                {
                  v22 = *(v2 + 64);
                  if (v22)
                  {
                    _Block_release(v22);
                  }
                }

                goto LABEL_36;
              }
            }
          }
        }

        goto LABEL_37;
      }

      v47 = *(v3 + 2);
      if (!v47)
      {
        v47 = "invalid";
      }

      *buf = 136446722;
      v51 = "__nw_protocol_error";
      v52 = 2082;
      v53 = v47;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
    }

    else
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_94;
      }

      v46 = *(v3 + 2);
      if (!v46)
      {
        v46 = "invalid";
      }

      *buf = 136446722;
      v51 = "__nw_protocol_error";
      v52 = 2082;
      v53 = v46;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x20u);
    goto LABEL_94;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v51 = "__nw_protocol_error";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v48 = 0;
  if (__nwlog_fault(v3, &type, &v48))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v51 = "__nw_protocol_error";
      v38 = "%{public}s called with null protocol";
    }

    else if (v48 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v43 = os_log_type_enabled(v36, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v51 = "__nw_protocol_error";
          v52 = 2082;
          v53 = v42;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        if (v3)
        {
          goto LABEL_48;
        }

        return;
      }

      if (!v43)
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v51 = "__nw_protocol_error";
      v38 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v51 = "__nw_protocol_error";
      v38 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
  }

LABEL_99:
  if (v3)
  {
LABEL_48:
    free(v3);
  }
}

void nw_flow_error(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v5 = a1;
  v126 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v7 = handle[20];
  v8 = v7;
  if (!v7)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    v109 = "nw_flow_error";
    v69 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v106 = 0;
    if (__nwlog_fault(v69, &type, &v106))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (os_log_type_enabled(v70, type))
        {
          *buf = 136446210;
          v109 = "nw_flow_error";
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v106 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v70 = __nwlog_obj();
        v73 = type;
        v74 = os_log_type_enabled(v70, type);
        if (backtrace_string)
        {
          if (v74)
          {
            *buf = 136446466;
            v109 = "nw_flow_error";
            v110 = 2082;
            v111 = backtrace_string;
            _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_116;
        }

        if (v74)
        {
          *buf = 136446210;
          v109 = "nw_flow_error";
          _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v70 = __nwlog_obj();
        v84 = type;
        if (os_log_type_enabled(v70, type))
        {
          *buf = 136446210;
          v109 = "nw_flow_error";
          _os_log_impl(&dword_181A37000, v70, v84, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_116:
    if (v69)
    {
      free(v69);
    }

    goto LABEL_86;
  }

  v9 = v7;
  mode = v9->mode;

  if (mode == 2)
  {
    v11 = nw_endpoint_handler_copy_flow(v9);
    if (a3)
    {
      if (a3 >> 8 == 16776959)
      {
        dns_error = nw_error_create_dns_error(a3);
      }

      else if ((a3 + 9899) > 0x63)
      {
        if ((a3 + 11999) > 0x1F3)
        {
          dns_error = nw_error_create_posix_error(a3);
        }

        else
        {
          dns_error = nw_error_create_wifi_aware_error(a3);
        }
      }

      else
      {
        dns_error = nw_error_create_tls_error(a3);
      }

      v28 = handle[40];
      handle[40] = dns_error;

      v29 = handle[40];
      if (v29)
      {
        objc_storeStrong(v11 + 109, v29);
        *(v11 + 36) &= ~1u;
      }

      v30 = v9;
      v31 = *(v30 + 284);

      if ((v31 & 0x20) == 0)
      {
        v32 = v30;
        v33 = *(v30 + 284);

        if ((v33 & 0x40) != 0)
        {
          goto LABEL_81;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          goto LABEL_80;
        }

        v96 = v5;
        log = v21;
        v103 = a2;
        v34 = v32;

        v35 = v34;
        v36 = *(v30 + 284);

        if (v36)
        {
          v37 = "dry-run ";
        }

        else
        {
          v37 = "";
        }

        v38 = nw_endpoint_handler_copy_endpoint(v35);
        v39 = v38;
        if (v38)
        {
          logging_description = _nw_endpoint_get_logging_description(v38);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v41 = v35;
        v42 = v41;
        v43 = v41[30];
        if (v43 > 5)
        {
          v44 = "unknown-state";
        }

        else
        {
          v44 = off_1E6A31048[v43];
        }

        v93 = v44;

        v45 = v42;
        v46 = v45;
        v47 = v9->mode;
        v92 = v34 + 184;
        v48 = logging_description;
        if (v47 > 2)
        {
          if (v47 == 3)
          {
            v49 = v11;
            v50 = "proxy";
            goto LABEL_70;
          }

          if (v47 != 4)
          {
            if (v47 == 5)
            {
              v49 = v11;
              v50 = "transform";
              goto LABEL_70;
            }

            goto LABEL_67;
          }

          v49 = v11;
          v50 = "fallback";
        }

        else
        {
          if (!v47)
          {
            v49 = v11;
            v50 = "path";
            goto LABEL_70;
          }

          if (v47 != 1)
          {
            if (v47 == 2)
            {
              v49 = v11;
              v50 = nw_endpoint_flow_mode_string(v45[33]);
              goto LABEL_70;
            }

LABEL_67:
            v49 = v11;
            v50 = "unknown-mode";
            goto LABEL_70;
          }

          v49 = v11;
          v50 = "resolver";
        }

LABEL_70:

        v59 = v46;
        os_unfair_lock_lock(v59 + 28);
        v60 = v59[8];
        os_unfair_lock_unlock(v59 + 28);

        name = "?";
        if (v103 && v103->identifier)
        {
          name = v103->identifier->name;
        }

        v11 = v49;
        v62 = handle[40];
        *buf = 136448258;
        v109 = "nw_flow_error";
        v110 = 2082;
        v111 = v92;
        v112 = 2082;
        v113 = v37;
        v114 = 2082;
        v115 = v48;
        v116 = 2082;
        v117 = v93;
        v118 = 2082;
        v119 = v50;
        v120 = 2114;
        v121 = v60;
        v122 = 2082;
        v123 = name;
        v124 = 2114;
        v125 = v62;
        v21 = log;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol (%{public}s) sent error: %{public}@", buf, 0x5Cu);

        v5 = v96;
        goto LABEL_80;
      }

      if ((nw_endpoint_handler_get_logging_disabled(v30) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          logb = v21;
          v75 = a2;
          v90 = v11;
          id_string = nw_endpoint_handler_get_id_string(v30);
          v97 = nw_endpoint_handler_dry_run_string(v30);
          v76 = nw_endpoint_handler_copy_endpoint(v30);
          v77 = nw_endpoint_get_logging_description(v76);
          v78 = nw_endpoint_handler_state_string(v30);
          v79 = nw_endpoint_handler_mode_string(v30);
          v80 = nw_endpoint_handler_copy_current_path(v30);
          v81 = v80;
          v82 = "?";
          if (v75 && v75->identifier)
          {
            v82 = v75->identifier->name;
          }

          v83 = handle[40];
          *buf = 136448258;
          v109 = "nw_flow_error";
          v110 = 2082;
          v111 = id_string;
          v112 = 2082;
          v113 = v97;
          v114 = 2082;
          v115 = v77;
          v116 = 2082;
          v117 = v78;
          v118 = 2082;
          v119 = v79;
          v120 = 2114;
          v121 = v80;
          v122 = 2082;
          v123 = v82;
          v124 = 2114;
          v125 = v83;
          _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol (%{public}s) sent error: %{public}@", buf, 0x5Cu);

          v11 = v90;
          v21 = logb;
        }

        goto LABEL_80;
      }

LABEL_81:
      default_input_handler = v5->default_input_handler;
      if (default_input_handler)
      {
        callbacks = default_input_handler->callbacks;
        if (callbacks)
        {
          error = callbacks->error;
          if (error)
          {
            error();
          }
        }
      }

      goto LABEL_86;
    }

    v15 = handle[40];
    handle[40] = 0;

    v16 = *(v11 + 109);
    *(v11 + 109) = 0;

    *(v11 + 36) &= ~1u;
    v17 = v9;
    v18 = *(v17 + 284);

    if ((v18 & 0x20) != 0)
    {
      if ((nw_endpoint_handler_get_logging_disabled(v17) & 1) == 0)
      {
        v91 = v11;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          logc = nw_endpoint_handler_get_id_string(v17);
          v98 = nw_endpoint_handler_dry_run_string(v17);
          v105 = nw_endpoint_handler_copy_endpoint(v17);
          v85 = nw_endpoint_get_logging_description(v105);
          v86 = nw_endpoint_handler_state_string(v17);
          v87 = nw_endpoint_handler_mode_string(v17);
          v88 = nw_endpoint_handler_copy_current_path(v17);
          *buf = 136447746;
          v109 = "nw_flow_error";
          v110 = 2082;
          v111 = logc;
          v112 = 2082;
          v113 = v98;
          v114 = 2082;
          v115 = v85;
          v116 = 2082;
          v117 = v86;
          v118 = 2082;
          v119 = v87;
          v120 = 2114;
          v121 = v88;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol cleared error", buf, 0x48u);

          v11 = v91;
        }

        goto LABEL_80;
      }

      goto LABEL_81;
    }

    v19 = v17;
    v20 = *(v17 + 284);

    if ((v20 & 0x40) != 0)
    {
      goto LABEL_81;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v21 = gconnectionLogObj;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_80;
    }

    v22 = v19;

    v23 = v22;
    v24 = *(v17 + 284);

    if (v24)
    {
      v25 = "dry-run ";
    }

    else
    {
      v25 = "";
    }

    v89 = v11;
    v26 = nw_endpoint_handler_copy_endpoint(v23);
    v27 = v26;
    if (v26)
    {
      v95 = _nw_endpoint_get_logging_description(v26);
    }

    else
    {
      v95 = "<NULL>";
    }

    loga = v21;
    v94 = v22 + 184;

    v51 = v23;
    v52 = v51;
    v53 = v51[30];
    if (v53 > 5)
    {
      v54 = "unknown-state";
    }

    else
    {
      v54 = off_1E6A31048[v53];
    }

    v55 = v52;
    v56 = v55;
    v57 = v9->mode;
    if (v57 > 2)
    {
      switch(v57)
      {
        case 3:
          v58 = "proxy";
          goto LABEL_79;
        case 4:
          v58 = "fallback";
          goto LABEL_79;
        case 5:
          v58 = "transform";
          goto LABEL_79;
      }
    }

    else
    {
      switch(v57)
      {
        case 0:
          v58 = "path";
          goto LABEL_79;
        case 1:
          v58 = "resolver";
          goto LABEL_79;
        case 2:
          v58 = nw_endpoint_flow_mode_string(v55[33]);
LABEL_79:

          v63 = v56;
          os_unfair_lock_lock(v63 + 28);
          v64 = v63[8];
          os_unfair_lock_unlock(v63 + 28);

          *buf = 136447746;
          v109 = "nw_flow_error";
          v110 = 2082;
          v111 = v94;
          v112 = 2082;
          v113 = v25;
          v114 = 2082;
          v115 = v95;
          v116 = 2082;
          v117 = v54;
          v118 = 2082;
          v119 = v58;
          v120 = 2114;
          v121 = v64;
          v21 = loga;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol cleared error", buf, 0x48u);

          v11 = v89;
LABEL_80:

          goto LABEL_81;
      }
    }

    v58 = "unknown-mode";
    goto LABEL_79;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v14 = "unknown-mode";
    }

    else
    {
      v14 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v109 = "nw_flow_error";
    v110 = 2082;
    v111 = v14;
    v112 = 2082;
    v113 = "flow";
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_86:
}

void nw_protocol_default_error(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        error = callbacks->error;
        if (error)
        {

          error();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_default_error";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_error";
      v9 = "%{public}s called with null protocol";
      goto LABEL_21;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_error";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_default_error";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_default_error";
      v9 = "%{public}s called with null protocol, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }
}

uint64_t ___ZL28nw_protocol_purge_frame_poolP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = (*(a1 + 32) + 176);
  v6 = v3[2];
  v7 = v3[3];
  if (v6)
  {
    v5 = (v6 + 24);
  }

  *v5 = v7;
  *v7 = v6;
  v3[2] = 0;
  v3[3] = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v9 - 1;
  if (!v9)
  {
    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(a1 + 32) + 160);
        v13 = 136446978;
        v14 = "nw_protocol_purge_frame_pool_block_invoke";
        v15 = 2082;
        v16 = "instance->empty_frame_pool_count";
        v17 = 2048;
        v18 = 1;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", &v13, 0x2Au);
      }
    }

    *(*(a1 + 32) + 160) = 0;
  }

  return 1;
}

uint64_t ___ZL35nw_protocol_implementation_teardownP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 - 64);
    goto LABEL_3;
  }

  v16 = extra;
  v17 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_protocol_get_output_handler";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null protocol", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v18, type, &v26))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol";
LABEL_32:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type[0];
        v23 = os_log_type_enabled(v19, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_34;
        }

        if (!v23)
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_32;
      }

      v19 = __nwlog_obj();
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v21 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:
  }

LABEL_34:
  if (v18)
  {
    free(v18);
  }

  v5 = 0;
  extra = v16;
LABEL_3:
  if (*(extra + 32) != v5)
  {
    return 1;
  }

  v7 = *(extra + 40);
  if (v7)
  {
    v8 = extra;
    nw::release_if_needed<nw_protocol *>((extra + 32));
    extra = v8;
    v7 = *(v8 + 40);
  }

  *(extra + 32) = 0;
  *(extra + 40) = v7 | 1;
  v9 = (extra + 120);
  if (gLogDatapath != 1)
  {
    v10 = *v9;
    if (!*v9)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v24 = extra;
  v25 = __nwlog_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_finalize_temp_frame_array";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
  }

  extra = v24;
  v10 = *v9;
  if (*v9)
  {
LABEL_9:
    *(v10 + 40) = type;
    v11 = *(extra + 128);
    *type = v10;
    v28 = v11;
    *(extra + 120) = 0;
    *(extra + 128) = v9;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v30 = &__block_descriptor_tmp_21_49595;
    v31 = 0;
    do
    {
      v12 = *type;
      if (!*type)
      {
        break;
      }

      v13 = *(*type + 32);
      v14 = *(*type + 40);
      v15 = (v13 + 40);
      if (!v13)
      {
        v15 = &v28;
      }

      *v15 = v14;
      *v14 = v13;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  return 1;
}

void nw_protocol_instance_tear_down_path(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_instance_tear_down_path";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &type, &v24))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_tear_down_path";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_protocol_instance_tear_down_path";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_43:
        if (!v8)
        {
          goto LABEL_9;
        }

LABEL_44:
        free(v8);
        goto LABEL_9;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_tear_down_path";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_tear_down_path";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  if (a2)
  {
    if (*(v3 + 37))
    {
      v5 = *(v3 + 15);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_protocol_instance_tear_down_path_block_invoke;
      v21[3] = &unk_1E6A3AC58;
      v22 = v3;
      v23 = a2;
      nw_queue_context_async(v5, v21);
    }

    else if ((v3[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v27 = "nw_protocol_instance_tear_down_path";
        v28 = 2082;
        v29 = v4 + 415;
        v30 = 2080;
        v31 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path table found", buf, 0x20u);
      }
    }

    goto LABEL_9;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_instance_tear_down_path";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null path", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &type, &v24))
  {
    goto LABEL_43;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_tear_down_path";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path", buf, 0xCu);
    }

    goto LABEL_42;
  }

  if (v24 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_tear_down_path";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_tear_down_path";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
    }

    goto LABEL_42;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nw_protocol_instance_tear_down_path";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_44;
  }

LABEL_9:
}

uint64_t ___ZL43nw_protocol_implementation_has_active_pathsP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  if (*(extra + 144) != 3 && !*(extra + 32))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void __nw_protocol_instance_tear_down_path_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (!v3)
  {
    if (*(v2 + 413) < 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = "";
      v15 = v13 == 0;
      if (v13)
      {
        v16 = (v13 + 415);
      }

      else
      {
        v16 = "";
      }

      v24 = 136446722;
      v25 = "nw_protocol_instance_tear_down_path_block_invoke";
      if (!v15)
      {
        v14 = " ";
      }

      v26 = 2082;
      v27 = v16;
      v28 = 2080;
      v29 = v14;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNo path table found", &v24, 0x20u);
    }

    goto LABEL_17;
  }

  node = nw_hash_table_get_node(v3, *(a1 + 40), 8);
  if (!node)
  {
    v17 = *(a1 + 32);
    if (v17 && *(v17 + 413) < 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = v18 == 0;
      if (v18)
      {
        v21 = (v18 + 415);
      }

      else
      {
        v21 = "";
      }

      v25 = "nw_protocol_instance_tear_down_path_block_invoke";
      v26 = 2082;
      v22 = " ";
      v24 = 136446978;
      if (v20)
      {
        v22 = "";
      }

      v27 = v21;
      v28 = 2080;
      v29 = v22;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sNo path found for %lx", &v24, 0x2Au);
    }

LABEL_17:

    return;
  }

  v5 = node;
  nw_protocol_instance_tear_down_path_inner(*(a1 + 32), (node + 4));
  if ((*(v5 + 176) | 2) == 3)
  {
    *(v5 + 176) = 2;
    v6 = *(a1 + 32);
    if ((*(v6 + 412) & 8) != 0 || !*(v6 + 16))
    {
      v11 = 0;
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = v8;
      v10 = *(*(*(v8 + 1) + 80) + 216);
      if (v10)
      {
        v10(v8, v7, 2, *(v8 + 39) == v7);
      }

      v6 = *(a1 + 32);
      v11 = 1;
    }

    nw_protocol_path_state_dispose(v6, v5 + 32);
    nw_hash_table_remove_node(*(*(a1 + 32) + 296), v5);
    v23 = *(a1 + 32);
    if ((*(v23 + 412) & 8) == 0)
    {
      if (v11)
      {

        nw_protocol_instance_update_available_paths(v23);
      }

      return;
    }
  }

  else
  {
    v23 = *(a1 + 32);
    if ((*(v23 + 412) & 8) == 0)
    {
      return;
    }
  }

  nw_protocol_implementation_destroy(v23);
}

void nw_protocol_instance_tear_down_path_inner(void *a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
    v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null instance", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v77) = 0;
    if (!__nwlog_fault(v45, type, &v77))
    {
      goto LABEL_127;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
        _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v77 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v60 = type[0];
      v61 = os_log_type_enabled(v46, type[0]);
      if (backtrace_string)
      {
        if (v61)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_127:
        if (!v45)
        {
          goto LABEL_69;
        }

LABEL_128:
        free(v45);
        goto LABEL_69;
      }

      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
        _os_log_impl(&dword_181A37000, v46, v60, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v46 = __nwlog_obj();
      v69 = type[0];
      if (os_log_type_enabled(v46, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
        _os_log_impl(&dword_181A37000, v46, v69, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_126:

    goto LABEL_127;
  }

  if (a2)
  {
    if (gLogDatapath == 1)
    {
      v50 = __nwlog_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v4 = *(a2 + 120);
    if (v4)
    {
      *(v4 + 40) = type;
      v5 = *(a2 + 128);
      *type = v4;
      v80 = v5;
      *(a2 + 120) = 0;
      *(a2 + 128) = a2 + 120;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v82 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v83) = 0;
      do
      {
        v6 = *type;
        if (!*type)
        {
          break;
        }

        v7 = *(*type + 32);
        v8 = *(*type + 40);
        v9 = (v7 + 40);
        if (!v7)
        {
          v9 = &v80;
        }

        *v9 = v8;
        *v8 = v7;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      goto LABEL_58;
    }

    if (v10 == *(v3 - 8))
    {
      goto LABEL_55;
    }

    v11 = *(v10 + 5);
    v12 = *(a2 + 32);
    if (v11 != &nw_protocol_ref_counted_handle)
    {
      if (v11 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v12) = 0;
        v13 = 1;
        goto LABEL_19;
      }

      v12 = *(v10 + 8);
      if (!v12)
      {
        v13 = 1;
        goto LABEL_19;
      }
    }

    v14 = *(v12 + 88);
    v13 = 0;
    if (v14)
    {
      *(v12 + 88) = v14 + 1;
    }

    LOBYTE(v12) = -1;
LABEL_19:
    *type = v10;
    LOBYTE(v80) = v12;
    v15 = *(v3 - 7);
    v16 = (v3 - 12);
    if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = *(v3 - 4)) != 0)
    {
      v19 = *(v16 + 11);
      v18 = 0;
      if (v19)
      {
        *(v16 + 11) = v19 + 1;
      }

      v17 = -1;
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    v77 = (v3 - 12);
    v78 = v17;
    v20 = *(v10 + 3);
    if (v20)
    {
      v21 = *(v20 + 8);
      if (v21)
      {
        v22 = v21();
        if (v18)
        {
LABEL_30:
          if (v13)
          {
            if (v22)
            {
              goto LABEL_55;
            }
          }

          else
          {
            nw::release_if_needed<nw_protocol *>(type);
            if (v22)
            {
              goto LABEL_55;
            }
          }

          if ((*(v3 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v23 = gLogObj;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
            *&buf[12] = 2082;
            *&buf[14] = v3 + 415;
            *&buf[22] = 2080;
            v82 = " ";
            LODWORD(v74) = 32;
            v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s %{public}s%sUnable to remove output handler", buf, v74);

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v77) = 0;
            if (__nwlog_fault(v24, type, &v77))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v25 = gLogObj;
                v26 = type[0];
                if (os_log_type_enabled(v25, type[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 415;
                  *&buf[22] = 2080;
                  v82 = " ";
                  _os_log_impl(&dword_181A37000, v25, v26, "%{public}s %{public}s%sUnable to remove output handler", buf, 0x20u);
                }
              }

              else if (v77 == 1)
              {
                v27 = __nw_create_backtrace_string();
                if (v27)
                {
                  v28 = v27;
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v29 = gLogObj;
                  v30 = type[0];
                  if (os_log_type_enabled(v29, type[0]))
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                    *&buf[12] = 2082;
                    *&buf[14] = v3 + 415;
                    *&buf[22] = 2080;
                    v82 = " ";
                    v83 = 2082;
                    v84 = v28;
                    _os_log_impl(&dword_181A37000, v29, v30, "%{public}s %{public}s%sUnable to remove output handler, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v28);
                  if (!v24)
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_54;
                }

                v25 = __nwlog_obj();
                v32 = type[0];
                if (os_log_type_enabled(v25, type[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 415;
                  *&buf[22] = 2080;
                  v82 = " ";
                  _os_log_impl(&dword_181A37000, v25, v32, "%{public}s %{public}s%sUnable to remove output handler, no backtrace", buf, 0x20u);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v25 = gLogObj;
                v31 = type[0];
                if (os_log_type_enabled(v25, type[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 415;
                  *&buf[22] = 2080;
                  v82 = " ";
                  _os_log_impl(&dword_181A37000, v25, v31, "%{public}s %{public}s%sUnable to remove output handler, backtrace limit exceeded", buf, 0x20u);
                }
              }
            }

            if (v24)
            {
LABEL_54:
              free(v24);
            }
          }

LABEL_55:
          v33 = *(a2 + 40);
          if (v33)
          {
            nw::release_if_needed<nw_protocol *>((a2 + 32));
            v33 = *(a2 + 40);
          }

          *(a2 + 32) = 0;
          *(a2 + 40) = v33 | 1;
LABEL_58:
          if ((*(a2 + 153) & 0x40) != 0)
          {
            v34 = nw_interface_option_details_create(*(a2 + 16), a2, *(a2 + 136), *(a2 + 152), 0, -1);
            if ((*(v3 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
                *&buf[12] = 2082;
                *&buf[14] = v3 + 415;
                *&buf[22] = 2080;
                v82 = " ";
                v83 = 2112;
                v84 = v34;
                _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sRemoving interface option %@", buf, 0x2Au);
              }
            }

            nw_path_flow_registration_remove_extra_interface_option(v3[35], v34);
            v36 = v3[36];
            if (v36)
            {
              v37 = nw_path_copy_for_flow_registration(v36, v3[35]);
              v38 = v3[36];
              v3[36] = v37;
            }
          }

          v39 = *(a2 + 24);
          if (v39)
          {
            nw_path_flow_registration_close(v39);
            v40 = *(a2 + 24);
            *(a2 + 24) = 0;
          }

          v41 = *(a2 + 48);
          *(a2 + 48) = 0;

          *(a2 + 56) = 0;
          uuid_clear((a2 + 64));
          v42 = *(a2 + 136);
          *(a2 + 136) = 0;

          v43 = *(a2 + 104);
          *(a2 + 104) = 0;

          goto LABEL_69;
        }

LABEL_29:
        nw::release_if_needed<nw_protocol *>(&v77);
        goto LABEL_30;
      }
    }

    v51 = v10;
    v52 = __nwlog_obj();
    v53 = *(v51 + 2);
    *buf = 136446722;
    *&buf[4] = "__nw_protocol_remove_input_handler";
    if (!v53)
    {
      v53 = "invalid";
    }

    *&buf[12] = 2082;
    *&buf[14] = v53;
    *&buf[22] = 2048;
    v54 = v51;
    v82 = v51;
    v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 32);

    v76 = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (__nwlog_fault(v55, &v76, &v75))
    {
      if (v76 == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = v76;
        if (os_log_type_enabled(v56, v76))
        {
          v58 = *(v54 + 2);
          if (!v58)
          {
            v58 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v58;
          *&buf[22] = 2048;
          v82 = v54;
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 0x20u);
        }

LABEL_133:

        goto LABEL_134;
      }

      if (v75 != 1)
      {
        v56 = __nwlog_obj();
        v71 = v76;
        if (os_log_type_enabled(v56, v76))
        {
          v72 = *(v54 + 2);
          if (!v72)
          {
            v72 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v72;
          *&buf[22] = 2048;
          v82 = v54;
          _os_log_impl(&dword_181A37000, v56, v71, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_133;
      }

      v65 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v66 = v76;
      v67 = os_log_type_enabled(v56, v76);
      if (!v65)
      {
        if (v67)
        {
          v73 = *(v54 + 2);
          if (!v73)
          {
            v73 = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v73;
          *&buf[22] = 2048;
          v82 = v54;
          _os_log_impl(&dword_181A37000, v56, v66, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace", buf, 0x20u);
        }

        goto LABEL_133;
      }

      if (v67)
      {
        v68 = *(v54 + 2);
        if (!v68)
        {
          v68 = "invalid";
        }

        *buf = 136446978;
        *&buf[4] = "__nw_protocol_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v68;
        *&buf[22] = 2048;
        v82 = v54;
        v83 = 2082;
        v84 = v65;
        _os_log_impl(&dword_181A37000, v56, v66, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v65);
    }

LABEL_134:
    if (v55)
    {
      free(v55);
    }

    v22 = 0;
    if (v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v48 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
  v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null path_state", buf, 12);

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v77) = 0;
  if (!__nwlog_fault(v45, type, &v77))
  {
    goto LABEL_127;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v46 = __nwlog_obj();
    v49 = type[0];
    if (os_log_type_enabled(v46, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
      _os_log_impl(&dword_181A37000, v46, v49, "%{public}s called with null path_state", buf, 0xCu);
    }

    goto LABEL_126;
  }

  if (v77 != 1)
  {
    v46 = __nwlog_obj();
    v70 = type[0];
    if (os_log_type_enabled(v46, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
      _os_log_impl(&dword_181A37000, v46, v70, "%{public}s called with null path_state, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_126;
  }

  v62 = __nw_create_backtrace_string();
  v46 = __nwlog_obj();
  v63 = type[0];
  v64 = os_log_type_enabled(v46, type[0]);
  if (!v62)
  {
    if (v64)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
      _os_log_impl(&dword_181A37000, v46, v63, "%{public}s called with null path_state, no backtrace", buf, 0xCu);
    }

    goto LABEL_126;
  }

  if (v64)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_instance_tear_down_path_inner";
    *&buf[12] = 2082;
    *&buf[14] = v62;
    _os_log_impl(&dword_181A37000, v46, v63, "%{public}s called with null path_state, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v62);
  if (v45)
  {
    goto LABEL_128;
  }

LABEL_69:
}

void nw_protocol_path_state_dispose(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_path_state_dispose";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
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
        v27 = "nw_protocol_path_state_dispose";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v24 == 1)
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
          v27 = "nw_protocol_path_state_dispose";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
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
        v27 = "nw_protocol_path_state_dispose";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_path_state_dispose";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (a2)
  {
    nw_protocol_instance_tear_down_path_inner(v3, a2);
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;

    v6 = *(a2 + 80);
    *(a2 + 80) = 0;

    v7 = *(a2 + 88);
    *(a2 + 88) = 0;

    v8 = *(a2 + 96);
    *(a2 + 96) = 0;

    v9 = *(a2 + 112);
    *(a2 + 112) = 0;

    *(a2 + 148) = -1;
    if (*(a2 + 40))
    {
      nw::release_if_needed<nw_protocol *>((a2 + 32));
    }

    *(a2 + 32) = 0;

    goto LABEL_6;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_path_state_dispose";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null path_state", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
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
      v27 = "nw_protocol_path_state_dispose";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null path_state", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_path_state_dispose";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null path_state, backtrace limit exceeded", buf, 0xCu);
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
      v27 = "nw_protocol_path_state_dispose";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null path_state, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_protocol_path_state_dispose";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null path_state, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_connection_read_buffer(void *a1, char *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v103 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      *v91 = 0;
      v92 = v91;
      v93 = 0x2020000000;
      v94 = 1;
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __nw_connection_read_buffer_block_invoke;
      v88[3] = &unk_1E6A3D738;
      v90 = v91;
      v13 = v10;
      v89 = v13;
      os_unfair_lock_lock(v10 + 34);
      __nw_connection_read_buffer_block_invoke(v88);
      os_unfair_lock_unlock(v10 + 34);
      if (v92[24])
      {
        v87 = v13;
        v14 = v12;
        if (!a2)
        {
          v76 = __nwlog_obj();
          *buf = 136446210;
          v98 = "nw_read_request_create_with_buffer";
          v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null buffer", buf, 12);

          type = OS_LOG_TYPE_ERROR;
          v95 = 0;
          if (__nwlog_fault(v17, &type, &v95))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v18 = __nwlog_obj();
              v77 = type;
              if (os_log_type_enabled(v18, type))
              {
                *buf = 136446210;
                v98 = "nw_read_request_create_with_buffer";
                _os_log_impl(&dword_181A37000, v18, v77, "%{public}s called with null buffer", buf, 0xCu);
              }

              goto LABEL_75;
            }

            if (v95 != 1)
            {
              v18 = __nwlog_obj();
              v85 = type;
              if (os_log_type_enabled(v18, type))
              {
                *buf = 136446210;
                v98 = "nw_read_request_create_with_buffer";
                _os_log_impl(&dword_181A37000, v18, v85, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_75;
            }

            backtrace_string = __nw_create_backtrace_string();
            v18 = __nwlog_obj();
            v83 = type;
            v84 = os_log_type_enabled(v18, type);
            if (!backtrace_string)
            {
              if (v84)
              {
                *buf = 136446210;
                v98 = "nw_read_request_create_with_buffer";
                _os_log_impl(&dword_181A37000, v18, v83, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
              }

              goto LABEL_75;
            }

            if (v84)
            {
              *buf = 136446466;
              v98 = "nw_read_request_create_with_buffer";
              v99 = 2082;
              *v100 = backtrace_string;
              _os_log_impl(&dword_181A37000, v18, v83, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
          }

LABEL_76:
          if (!v17)
          {
            goto LABEL_87;
          }

          goto LABEL_77;
        }

        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if (v15 > a4)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          *buf = 136446722;
          v98 = "nw_read_request_create_with_buffer";
          v99 = 2048;
          *v100 = v15;
          *&v100[8] = 2048;
          *&v100[10] = a4;
          v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s minlength (%zu) > max_data_count (%zu)", buf, 32);

          type = OS_LOG_TYPE_ERROR;
          v95 = 0;
          if (!__nwlog_fault(v17, &type, &v95))
          {
            goto LABEL_76;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = type;
            if (os_log_type_enabled(v18, type))
            {
              *buf = 136446722;
              v98 = "nw_read_request_create_with_buffer";
              v99 = 2048;
              *v100 = v15;
              *&v100[8] = 2048;
              *&v100[10] = a4;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s minlength (%zu) > max_data_count (%zu)", buf, 0x20u);
            }

LABEL_75:

            goto LABEL_76;
          }

          if (v95 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v47 = type;
            if (os_log_type_enabled(v18, type))
            {
              *buf = 136446722;
              v98 = "nw_read_request_create_with_buffer";
              v99 = 2048;
              *v100 = v15;
              *&v100[8] = 2048;
              *&v100[10] = a4;
              _os_log_impl(&dword_181A37000, v18, v47, "%{public}s minlength (%zu) > max_data_count (%zu), backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_75;
          }

          v38 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v39 = type;
          v40 = os_log_type_enabled(v18, type);
          if (!v38)
          {
            if (v40)
            {
              *buf = 136446722;
              v98 = "nw_read_request_create_with_buffer";
              v99 = 2048;
              *v100 = v15;
              *&v100[8] = 2048;
              *&v100[10] = a4;
              _os_log_impl(&dword_181A37000, v18, v39, "%{public}s minlength (%zu) > max_data_count (%zu), no backtrace", buf, 0x20u);
            }

            goto LABEL_75;
          }

          if (v40)
          {
            *buf = 136446978;
            v98 = "nw_read_request_create_with_buffer";
            v99 = 2048;
            *v100 = v15;
            *&v100[8] = 2048;
            *&v100[10] = a4;
            v101 = 2082;
            v102 = v38;
            _os_log_impl(&dword_181A37000, v18, v39, "%{public}s minlength (%zu) > max_data_count (%zu), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v38);
          if (v17)
          {
LABEL_77:
            free(v17);
          }

LABEL_87:

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          LODWORD(v86) = 12;
          v57 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s nw_read_request_create_with_buffer failed", buf, v86);

          type = OS_LOG_TYPE_ERROR;
          v95 = 0;
          if (__nwlog_fault(v57, &type, &v95))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v58 = gLogObj;
              v59 = type;
              if (os_log_type_enabled(v58, type))
              {
                *buf = 136446210;
                v98 = "nw_connection_read_buffer";
                _os_log_impl(&dword_181A37000, v58, v59, "%{public}s nw_read_request_create_with_buffer failed", buf, 0xCu);
              }
            }

            else if (v95 == 1)
            {
              v60 = __nw_create_backtrace_string();
              if (v60)
              {
                v61 = v60;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v62 = gLogObj;
                v63 = type;
                if (os_log_type_enabled(v62, type))
                {
                  *buf = 136446466;
                  v98 = "nw_connection_read_buffer";
                  v99 = 2082;
                  *v100 = v61;
                  _os_log_impl(&dword_181A37000, v62, v63, "%{public}s nw_read_request_create_with_buffer failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v61);
                if (!v57)
                {
                  goto LABEL_106;
                }

                goto LABEL_105;
              }

              v58 = __nwlog_obj();
              v65 = type;
              if (os_log_type_enabled(v58, type))
              {
                *buf = 136446210;
                v98 = "nw_connection_read_buffer";
                _os_log_impl(&dword_181A37000, v58, v65, "%{public}s nw_read_request_create_with_buffer failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v58 = gLogObj;
              v64 = type;
              if (os_log_type_enabled(v58, type))
              {
                *buf = 136446210;
                v98 = "nw_connection_read_buffer";
                _os_log_impl(&dword_181A37000, v58, v64, "%{public}s nw_read_request_create_with_buffer failed, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

          if (!v57)
          {
LABEL_106:
            v32 = 0;
            v31 = 0;
LABEL_107:

            goto LABEL_108;
          }

LABEL_105:
          free(v57);
          goto LABEL_106;
        }

        v27 = objc_alloc_init(NWConcrete_nw_read_request);
        if (v27)
        {
          v28 = _Block_copy(v14);
          buffer_completion = v27->buffer_completion;
          v27->buffer_completion = v28;

          objc_storeStrong(&v27->connection, a1);
          v30 = qos_class_self();
          v27->min = v15;
          v27->max = a4;
          v27->buffer = a2;
          v27->qos_class = v30;
          v27->variant = 2;
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          v31 = v27;

          nw_connection_add_read_request(v87, v31);
          v32 = 1;
          goto LABEL_107;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = gLogObj;
        *buf = 136446210;
        v98 = "nw_read_request_create_with_buffer";
        v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v95 = 0;
        if (__nwlog_fault(v44, &type, &v95))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v46 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v98 = "nw_read_request_create_with_buffer";
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 0xCu);
            }
          }

          else if (v95 == 1)
          {
            v48 = __nw_create_backtrace_string();
            if (v48)
            {
              v49 = v48;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v50 = gLogObj;
              v51 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446466;
                v98 = "nw_read_request_create_with_buffer";
                v99 = 2082;
                *v100 = v49;
                _os_log_impl(&dword_181A37000, v50, v51, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v49);
              if (!v44)
              {
                goto LABEL_86;
              }

              goto LABEL_85;
            }

            v45 = __nwlog_obj();
            v55 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v98 = "nw_read_request_create_with_buffer";
              _os_log_impl(&dword_181A37000, v45, v55, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(v45, type))
            {
              *buf = 136446210;
              v98 = "nw_read_request_create_with_buffer";
              _os_log_impl(&dword_181A37000, v45, v54, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v44)
        {
LABEL_86:

          goto LABEL_87;
        }

LABEL_85:
        free(v44);
        goto LABEL_86;
      }

      v20 = *&v13[4]._os_unfair_lock_opaque;
      if (v20 && !_nw_parameters_get_logging_disabled(v20))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        os_unfair_lock_opaque = v13[112]._os_unfair_lock_opaque;
        *buf = 136446466;
        v98 = "nw_connection_read_buffer";
        v99 = 1024;
        *v100 = os_unfair_lock_opaque;
        v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s [C%u] client_queue is nil", buf, 18);

        type = OS_LOG_TYPE_ERROR;
        v95 = 0;
        if (__nwlog_fault(v23, &type, &v95))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            v25 = type;
            if (os_log_type_enabled(v24, type))
            {
              v26 = v13[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v98 = "nw_connection_read_buffer";
              v99 = 1024;
              *v100 = v26;
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [C%u] client_queue is nil", buf, 0x12u);
            }
          }

          else if (v95 == 1)
          {
            v33 = __nw_create_backtrace_string();
            if (v33)
            {
              v34 = v33;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v35 = gconnectionLogObj;
              v36 = type;
              if (os_log_type_enabled(v35, type))
              {
                v37 = v13[112]._os_unfair_lock_opaque;
                *buf = 136446722;
                v98 = "nw_connection_read_buffer";
                v99 = 1024;
                *v100 = v37;
                *&v100[4] = 2082;
                *&v100[6] = v34;
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s [C%u] client_queue is nil, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v34);
              if (!v23)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            v52 = type;
            if (os_log_type_enabled(v24, type))
            {
              v53 = v13[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v98 = "nw_connection_read_buffer";
              v99 = 1024;
              *v100 = v53;
              _os_log_impl(&dword_181A37000, v24, v52, "%{public}s [C%u] client_queue is nil, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v24 = gconnectionLogObj;
            v41 = type;
            if (os_log_type_enabled(v24, type))
            {
              v42 = v13[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v98 = "nw_connection_read_buffer";
              v99 = 1024;
              *v100 = v42;
              _os_log_impl(&dword_181A37000, v24, v41, "%{public}s [C%u] client_queue is nil, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

        if (v23)
        {
LABEL_71:
          free(v23);
        }
      }

LABEL_72:
      v32 = 0;
LABEL_108:

      _Block_object_dispose(v91, 8);
      goto LABEL_109;
    }

    v71 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_connection_read_buffer";
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null handler", buf, 12);

    v91[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, v91, &type))
    {
      if (v91[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v72 = v91[0];
        if (os_log_type_enabled(v69, v91[0]))
        {
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v72, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_154:

        goto LABEL_155;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v81 = v91[0];
        if (os_log_type_enabled(v69, v91[0]))
        {
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v81, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_154;
      }

      v73 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v78 = v91[0];
      v79 = os_log_type_enabled(v69, v91[0]);
      if (!v73)
      {
        if (v79)
        {
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v78, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_154;
      }

      if (v79)
      {
        *buf = 136446466;
        v98 = "nw_connection_read_buffer";
        v99 = 2082;
        *v100 = v73;
        _os_log_impl(&dword_181A37000, v69, v78, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_134;
    }
  }

  else
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_connection_read_buffer";
    v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v67, 16, "%{public}s called with null connection", buf, 12);

    v91[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v68, v91, &type))
    {
      if (v91[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = v91[0];
        if (os_log_type_enabled(v69, v91[0]))
        {
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_154;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v80 = v91[0];
        if (os_log_type_enabled(v69, v91[0]))
        {
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_154;
      }

      v73 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v74 = v91[0];
      v75 = os_log_type_enabled(v69, v91[0]);
      if (!v73)
      {
        if (v75)
        {
          *buf = 136446210;
          v98 = "nw_connection_read_buffer";
          _os_log_impl(&dword_181A37000, v69, v74, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_154;
      }

      if (v75)
      {
        *buf = 136446466;
        v98 = "nw_connection_read_buffer";
        v99 = 2082;
        *v100 = v73;
        _os_log_impl(&dword_181A37000, v69, v74, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_134:

      free(v73);
    }
  }

LABEL_155:
  if (v68)
  {
    free(v68);
  }

  v32 = 0;
LABEL_109:

  return v32;
}