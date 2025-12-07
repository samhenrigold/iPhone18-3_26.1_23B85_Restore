BOOL sub_181B8AEF8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v29, v2, 0x17AuLL);
  v7 = v29[5];
  if (!v29[5])
  {
    return 0;
  }

  v8 = v29[1];
  if (!v29[1] || !v29[34] && !v29[35] && (a1 & 1) == 0)
  {
    return 0;
  }

  v9 = v29[4];
  swift_beginAccess();
  if ((*(v9 + 235) & 0x20) != 0)
  {
    return 0;
  }

  v10 = type metadata accessor for __NWPath();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  type metadata accessor for SystemLock._Storage(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v11[v12] = v13;
  *&v11[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
  *&v11[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
  *&v11[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
  memcpy(&v11[OBJC_IVAR____TtC7Network8__NWPath_path], v29, 0x17AuLL);
  v14 = v7;

  sub_181A3DF5C(v29, v27);
  v26.receiver = v11;
  v26.super_class = v10;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  LODWORD(v11) = nw_path_get_dns_service_id(v15, 0);

  if (v11)
  {

LABEL_9:

    return 0;
  }

  v17 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181B5C0FC(v14 + v17, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      goto LABEL_19;
    }

LABEL_17:

    sub_181B5C160(v6);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_19:

      sub_181B5C160(v6);
      return 0;
    }

    goto LABEL_17;
  }

  v20 = v6[1];
  v27[0] = *v6;
  v27[1] = v20;
  v22 = *v6;
  v21 = v6[1];
  v28[0] = v6[2];
  *(v28 + 12) = *(v6 + 44);
  v24[0] = v22;
  v24[1] = v21;
  v25[0] = v6[2];
  *(v25 + 12) = *(v6 + 44);
  v23 = sub_18217A078();

  sub_181AA57B4(v27);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_18:
  v19 = *(v8 + 184);

  return v19 < 4;
}

void nw_path_evaluator_set_logging(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    HIBYTE(v2[26]._os_unfair_lock_opaque) &= ~0x40u;
    os_unfair_lock_unlock(v2 + 24);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_evaluator_set_logging";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null evaluator", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_evaluator_set_logging";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null evaluator", buf, 0xCu);
      }
    }

    else if (v11 == 1)
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
          v14 = "nw_path_evaluator_set_logging";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_evaluator_set_logging";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_evaluator_set_logging";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
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

id nw_association_copy_current_path(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_association_copy_current_path";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null association", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null association", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
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
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v17)
    {
      *buf = 136446466;
      v26 = "nw_association_copy_current_path";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v5 = nw_path_parameters_copy_context(*(v3 + 2));
  nw_context_assert_queue(v5);

  nw_association_activate(v3, v4, 0, 1);
  if (*(v3 + 76))
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_association_copy_current_path";
    v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null !association->dormant", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null !association->dormant", buf, 0xCu);
      }

LABEL_36:

LABEL_37:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_39;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null !association->dormant, backtrace limit exceeded", buf, 0xCu);
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
        v26 = "nw_association_copy_current_path";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null !association->dormant, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_association_copy_current_path";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null !association->dormant, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_24:

    free(backtrace_string);
    goto LABEL_37;
  }

  v6 = *(v3 + 3);
  if (!v6)
  {
LABEL_39:
    v8 = 0;
    goto LABEL_40;
  }

  v7 = v6;
  os_unfair_lock_lock(v6 + 24);
  v8 = v7[6];
  os_unfair_lock_unlock(v6 + 24);

LABEL_40:
  return v8;
}

uint64_t nw_parameters_get_block_trackers(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_block_trackers(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_block_trackers";
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
        v12 = "nw_parameters_get_block_trackers";
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
            v12 = "nw_parameters_get_block_trackers";
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
        v12 = "nw_parameters_get_block_trackers";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_block_trackers";
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

const char *nw_endpoint_event_event_string(int a1, int a2)
{
  result = "unknown";
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v4 = a2 - 1;
        if ((a2 - 1) >= 0xC)
        {
          return result;
        }

        v5 = off_1E6A31670;
        return v5[v4];
      case 2:
        v4 = a2 - 1;
        if ((a2 - 1) >= 8u)
        {
          return result;
        }

        v5 = off_1E6A316D0;
        return v5[v4];
      case 3:
        v4 = a2 - 1;
        if ((a2 - 1) < 0xF)
        {
          v5 = off_1E6A31710;
          return v5[v4];
        }

        break;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v4 = a2 - 1;
        if ((a2 - 1) >= 6)
        {
          return result;
        }

        v5 = off_1E6A31788;
      }

      else
      {
        v4 = a2 - 1;
        if ((a2 - 1) >= 5)
        {
          return result;
        }

        v5 = off_1E6A317B8;
      }

      return v5[v4];
    }

    if (a1 == 6)
    {
      v4 = a2 - 1;
      if ((a2 - 1) >= 5)
      {
        return result;
      }

      v5 = off_1E6A317F8;
      return v5[v4];
    }

    if (a1 == 7)
    {
      v4 = a2 - 1;
      if ((a2 - 1) < 3)
      {
        v5 = off_1E6A317E0;
        return v5[v4];
      }
    }
  }

  return result;
}

uint64_t _nw_path_should_fallback(char *a1, char a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v3], 0x17AuLL);
    memcpy(__src, &a1[v3], sizeof(__src));
    sub_181A3DF5C(__dst, v10);
    v6 = sub_181B5AEA8(a2);
    memcpy(v10, __src, 0x17AuLL);
    sub_181A3DFB8(v10);
    swift_endAccess();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL nw_path_can_support_endpoint(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      can_support_endpoint = _nw_path_can_support_endpoint(v3, v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_can_support_endpoint";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null endpoint", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_can_support_endpoint";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_can_support_endpoint";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null path", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_path_can_support_endpoint";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_can_support_endpoint";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  can_support_endpoint = 0;
LABEL_4:

  return can_support_endpoint;
}

uint32_t nw_interface_get_index(nw_interface_t interface)
{
  if (interface)
  {
    LODWORD(interface) = _nw_interface_get_index(interface);
  }

  return interface;
}

unint64_t _nw_interface_get_index(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void nw_endpoint_resolver_update(void *a1, void *a2, unsigned int a3)
{
  v433 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v410 = v5;
  v411 = v6;
  if (!v5)
  {
    v81 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_resolver_update";
    v82 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s called with null handler", buf, 12);

    v420[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v82, v420, type))
    {
      if (v420[0] == 17)
      {
        v83 = __nwlog_obj();
        v84 = v420[0];
        if (os_log_type_enabled(v83, v420[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_update";
          _os_log_impl(&dword_181A37000, v83, v84, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v83 = __nwlog_obj();
        v86 = v420[0];
        v87 = os_log_type_enabled(v83, v420[0]);
        if (backtrace_string)
        {
          if (v87)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v83, v86, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_119;
        }

        if (v87)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_update";
          _os_log_impl(&dword_181A37000, v83, v86, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v83 = __nwlog_obj();
        v95 = v420[0];
        if (os_log_type_enabled(v83, v420[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_update";
          _os_log_impl(&dword_181A37000, v83, v95, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_119:
    if (v82)
    {
      free(v82);
    }

    goto LABEL_451;
  }

  v7 = v6;
  v408 = a3;
  v8 = v5;
  v9 = v8[29];

  if (v9 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v9 > 5)
      {
        v24 = "unknown-mode";
      }

      else
      {
        v24 = off_1E6A31018[v9];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_resolver_update";
      *&buf[12] = 2082;
      *&buf[14] = v24;
      *&buf[22] = 2082;
      v423 = "resolver";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

    goto LABEL_102;
  }

  v10 = v8;
  v11 = v10->state & 0xFFFFFFFE;

  if (v11 != 4)
  {
    v397 = v10;
    v25 = nw_endpoint_handler_copy_resolver(v10);
    v26 = *(v25 + 1);
    v27 = v10;
    v28 = v27;
    v402 = v25;
    if (v26 != v7)
    {
      v29 = *(v27 + 284);

      if ((v29 & 0x20) != 0)
      {
        if ((nw_endpoint_handler_get_logging_disabled(v28) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v28);
            v97 = nw_endpoint_handler_dry_run_string(v28);
            v98 = nw_endpoint_handler_copy_endpoint(v28);
            logging_description = nw_endpoint_get_logging_description(v98);
            v100 = nw_endpoint_handler_state_string(v28);
            v101 = nw_endpoint_handler_mode_string(v28);
            v102 = nw_endpoint_handler_copy_current_path(v28);
            v103 = *(v402 + 1);
            *buf = 136448258;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = id_string;
            *&buf[22] = 2082;
            v423 = v97;
            *v424 = 2082;
            *&v424[2] = logging_description;
            *&v424[10] = 2082;
            *&v424[12] = v100;
            v425 = 2082;
            v426 = v101;
            v427 = 2114;
            v428 = v102;
            v429 = 2048;
            v430 = v103;
            v431 = 2048;
            v432 = v411;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring update from old resolver object (%p != %p)", buf, 0x5Cu);
          }

          goto LABEL_449;
        }
      }

      else
      {
        v30 = v28;
        v31 = *(v28 + 284);

        if ((v31 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_449;
          }

          v33 = v30;

          v34 = v33;
          v35 = *(v28 + 284);

          if (v35)
          {
            v36 = "dry-run ";
          }

          else
          {
            v36 = "";
          }

          v37 = nw_endpoint_handler_copy_endpoint(v34);
          v38 = v37;
          if (v37)
          {
            v39 = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            v39 = "<NULL>";
          }

          v67 = v33 + 184;

          v68 = v34;
          v69 = v68;
          state = v10->state;
          if (state > 5)
          {
            v71 = "unknown-state";
          }

          else
          {
            v71 = off_1E6A31048[state];
          }

          v72 = v69;
          v73 = v72;
          v74 = v8[29];
          if (v74 > 2)
          {
            switch(v74)
            {
              case 3:
                v75 = "proxy";
                goto LABEL_86;
              case 4:
                v75 = "fallback";
                goto LABEL_86;
              case 5:
                v75 = "transform";
                goto LABEL_86;
            }
          }

          else
          {
            switch(v74)
            {
              case 0:
                v75 = "path";
                goto LABEL_86;
              case 1:
                v75 = "resolver";
                goto LABEL_86;
              case 2:
                v75 = nw_endpoint_flow_mode_string(v72[33]);
LABEL_86:

                v78 = v73;
                os_unfair_lock_lock(v78 + 28);
                v79 = v78[8];
                os_unfair_lock_unlock(v78 + 28);

                v80 = *(v402 + 1);
                *buf = 136448258;
                *&buf[4] = "nw_endpoint_resolver_update";
                *&buf[12] = 2082;
                *&buf[14] = v67;
                *&buf[22] = 2082;
                v423 = v36;
                *v424 = 2082;
                *&v424[2] = v39;
                *&v424[10] = 2082;
                *&v424[12] = v71;
                v425 = 2082;
                v426 = v75;
                v427 = 2114;
                v428 = v79;
                v429 = 2048;
                v430 = v80;
                v431 = 2048;
                v432 = v411;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring update from old resolver object (%p != %p)", buf, 0x5Cu);

LABEL_449:
                v25 = v402;
                goto LABEL_450;
            }
          }

          v75 = "unknown-mode";
          goto LABEL_86;
        }
      }

LABEL_450:

      goto LABEL_451;
    }

    v40 = v27->parameters;

    v387 = v40;
    if (v40)
    {
      if (_nw_parameters_get_fail_if_svcb_received(v40))
      {
        v420[0] = 0;
        nw_resolver_get_svcb_report(*(v25 + 1), 0, v420, 0);
        if (v420[0] == 1)
        {
          v41 = v28;
          v42 = (*(v41 + 284) & 0x20) == 0;

          if (v42)
          {
            v43 = v41;
            v44 = (*(v41 + 284) & 0x40) == 0;

            if (!v44)
            {
LABEL_41:
              v53 = nw_endpoint_handler_copy_endpoint(v41);
              v54 = nw_endpoint_get_type(v53);
              if (v54 == (nw_endpoint_type_url|nw_endpoint_type_address))
              {
                v55 = 7;
              }

              else
              {
                v55 = 2;
              }

              if (v54 == nw_endpoint_type_bonjour_service)
              {
                v56 = 4;
              }

              else
              {
                v56 = v55;
              }

              nw_endpoint_handler_handle_failure(v41);
              v57 = [[NWConcrete_nw_error alloc] initWithDomain:-65571 code:?];
              v41->event.domain = 2;
              v41->event.event = v56;
              nw_endpoint_handler_report(v41, 0, &v41->event.domain, v57);

              goto LABEL_448;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v45 = gconnectionLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = nw_endpoint_handler_get_id_string(v43);
              v47 = nw_endpoint_handler_dry_run_string(v43);
              v48 = nw_endpoint_handler_copy_endpoint(v43);
              v49 = nw_endpoint_get_logging_description(v48);
              v50 = nw_endpoint_handler_state_string(v43);
              v51 = nw_endpoint_handler_mode_string(v43);
              v52 = nw_endpoint_handler_copy_current_path(v43);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v423 = v47;
              *v424 = 2082;
              *&v424[2] = v49;
              *&v424[10] = 2082;
              *&v424[12] = v50;
              v425 = 2082;
              v426 = v51;
              v427 = 2114;
              v428 = v52;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received SVCB, and required to fail", buf, 0x48u);
            }
          }

          else
          {
            if (nw_endpoint_handler_get_logging_disabled(v41))
            {
              goto LABEL_41;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v45 = gconnectionLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v112 = nw_endpoint_handler_get_id_string(v41);
              v113 = nw_endpoint_handler_dry_run_string(v41);
              v114 = nw_endpoint_handler_copy_endpoint(v41);
              v115 = nw_endpoint_get_logging_description(v114);
              v116 = nw_endpoint_handler_state_string(v41);
              v117 = nw_endpoint_handler_mode_string(v41);
              v118 = nw_endpoint_handler_copy_current_path(v41);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v112;
              *&buf[22] = 2082;
              v423 = v113;
              *v424 = 2082;
              *&v424[2] = v115;
              *&v424[10] = 2082;
              *&v424[12] = v116;
              v425 = 2082;
              v426 = v117;
              v427 = 2114;
              v428 = v118;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received SVCB, and required to fail", buf, 0x48u);
            }
          }

          goto LABEL_41;
        }
      }

LABEL_140:
      if (*(v25 + 4))
      {
        v119 = v28;
        v120 = (*(v119 + 284) & 0x20) == 0;

        if (!v120)
        {
          if (nw_endpoint_handler_get_logging_disabled(v119))
          {
            goto LABEL_448;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v123 = gconnectionLogObj;
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            v353 = nw_endpoint_handler_get_id_string(v119);
            v354 = nw_endpoint_handler_dry_run_string(v119);
            v355 = nw_endpoint_handler_copy_endpoint(v119);
            v356 = nw_endpoint_get_logging_description(v355);
            v357 = nw_endpoint_handler_state_string(v119);
            v358 = nw_endpoint_handler_mode_string(v119);
            v359 = nw_endpoint_handler_copy_current_path(v119);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v353;
            *&buf[22] = 2082;
            v423 = v354;
            *v424 = 2082;
            *&v424[2] = v356;
            *&v424[10] = 2082;
            *&v424[12] = v357;
            v425 = 2082;
            v426 = v358;
            v427 = 2114;
            v428 = v359;
            _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already connected, ignoring update from resolver", buf, 0x48u);
          }

          goto LABEL_433;
        }

        v121 = v119;
        v122 = (*(v119 + 284) & 0x40) == 0;

        if (!v122)
        {
LABEL_448:
          v32 = v387;
          goto LABEL_449;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v123 = gconnectionLogObj;
        if (!os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
        {
LABEL_433:

          goto LABEL_448;
        }

        v124 = v121;

        v125 = v124;
        v126 = (*(v119 + 284) & 1) == 0;

        if (v126)
        {
          v127 = "";
        }

        else
        {
          v127 = "dry-run ";
        }

        v128 = nw_endpoint_handler_copy_endpoint(v125);
        v129 = v128;
        if (v128)
        {
          v130 = _nw_endpoint_get_logging_description(v128);
        }

        else
        {
          v130 = "<NULL>";
        }

        v143 = v125;
        v144 = v143;
        v145 = v10->state;
        if (v145 > 5)
        {
          v146 = "unknown-state";
        }

        else
        {
          v146 = off_1E6A31048[v145];
        }

        v147 = v144;
        v148 = v147;
        v149 = v8[29];
        if (v149 > 2)
        {
          switch(v149)
          {
            case 3:
              v150 = "proxy";
              goto LABEL_432;
            case 4:
              v150 = "fallback";
              goto LABEL_432;
            case 5:
              v150 = "transform";
              goto LABEL_432;
          }
        }

        else
        {
          switch(v149)
          {
            case 0:
              v150 = "path";
              goto LABEL_432;
            case 1:
              v150 = "resolver";
              goto LABEL_432;
            case 2:
              v150 = nw_endpoint_flow_mode_string(v147[33]);
LABEL_432:

              v339 = v148;
              os_unfair_lock_lock(v339 + 28);
              v340 = v339[8];
              os_unfair_lock_unlock(v339 + 28);

              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v124->id_str;
              *&buf[22] = 2082;
              v423 = v127;
              *v424 = 2082;
              *&v424[2] = v130;
              *&v424[10] = 2082;
              *&v424[12] = v146;
              v425 = 2082;
              v426 = v150;
              v427 = 2114;
              v428 = v340;
              _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already connected, ignoring update from resolver", buf, 0x48u);

              goto LABEL_433;
          }
        }

        v150 = "unknown-mode";
        goto LABEL_432;
      }

      *(v25 + 4) = v408;
      v131 = v28;
      v132 = (*(v131 + 284) & 0x40) == 0;
      v409 = v131;

      if (v132)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v133 = gconnectionLogObj;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          v134 = nw_endpoint_handler_get_id_string(v409);
          v135 = nw_endpoint_handler_dry_run_string(v409);
          v136 = nw_endpoint_handler_copy_endpoint(v409);
          v137 = nw_endpoint_get_logging_description(v136);
          v138 = nw_endpoint_handler_state_string(v409);
          v139 = nw_endpoint_handler_mode_string(v409);
          v140 = nw_endpoint_handler_copy_current_path(v409);
          v141 = v140;
          if (v408 > 2)
          {
            v142 = "unknown";
          }

          else
          {
            v142 = off_1E6A30E18[v408];
          }

          *buf = 136448002;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v134;
          *&buf[22] = 2082;
          v423 = v135;
          *v424 = 2082;
          *&v424[2] = v137;
          *&v424[10] = 2082;
          *&v424[12] = v138;
          v425 = 2082;
          v426 = v139;
          v427 = 2114;
          v428 = v140;
          v429 = 2082;
          v430 = v142;
          _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver is %{public}s", buf, 0x52u);
        }
      }

      v151 = v402;
      v152 = *(v402 + 12);
      v153 = *(v402 + 11);
      if (v153)
      {
        v385 = v152;
        combined_array = nw_array_create_combined_array(v152, v153);

        v152 = combined_array;
        v151 = v402;
      }

      v386 = v152;
      if (v152)
      {
        if (_nw_array_get_count(v152))
        {
          v155 = *(v151 + 8);
          if (v155)
          {
            nw_queue_cancel_source(v155);
            *(v151 + 8) = 0;
          }
        }
      }

      if (v408 - 1 > 1)
      {
LABEL_447:

        goto LABEL_448;
      }

      v382 = v386;
      v395 = _nw_array_create();
      count = *(v402 + 5);
      v396 = (v402 + 40);
      v157 = *(v402 + 5);
      if (count)
      {
        count = _nw_array_get_count(count);
      }

      if (count < v157)
      {
        v401 = v382;
        if (!*v396)
        {
          goto LABEL_326;
        }

        LODWORD(v157) = _nw_array_get_count(*v396);
      }

      v401 = v382;
      if (v157)
      {
        v398 = 0;
        v390 = v157;
        v401 = v382;
        do
        {
          if (*v396)
          {
            v405 = _nw_array_get_object_at_index(*v396, v398);
            if (v395)
            {
              v158 = v405;
              if (!v405)
              {
                goto LABEL_193;
              }

              _nw_array_append(v395, v405);
            }

            v158 = v405;
          }

          else
          {
            v158 = 0;
          }

LABEL_193:
          v406 = v158;
          v159 = nw_endpoint_handler_copy_endpoint(v158);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL44nw_endpoint_resolver_array_contains_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke;
          v423 = &unk_1E6A3CCB8;
          *v424 = v159;
          v160 = v159;
          v403 = v160;
          if (v401)
          {
            v161 = _nw_array_apply(v401, buf);

            if ((v161 & 1) == 0)
            {
              v162 = v401;
              v163 = v403;
              if (v163)
              {
                v164 = _nw_array_create();
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ZL53nw_endpoint_resolver_duplicate_array_without_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke;
                v423 = &unk_1E6A35E80;
                *v424 = v163;
                v165 = v164;
                *&v424[8] = v165;
                _nw_array_apply(v162, buf);
                v166 = *&v424[8];
                v401 = v165;

                goto LABEL_197;
              }

              v248 = __nwlog_obj();
              *v420 = 136446210;
              *&v420[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
              LODWORD(v381) = 12;
              v249 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v248, 16, "%{public}s called with null remove_endpoint", v420, v381);

              v250 = v162;
              type[0] = OS_LOG_TYPE_ERROR;
              v419 = 0;
              if (__nwlog_fault(v249, type, &v419))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v251 = __nwlog_obj();
                  v252 = type[0];
                  if (os_log_type_enabled(v251, type[0]))
                  {
                    *v420 = 136446210;
                    *&v420[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                    _os_log_impl(&dword_181A37000, v251, v252, "%{public}s called with null remove_endpoint", v420, 0xCu);
                  }

                  goto LABEL_311;
                }

                if (v419 == 1)
                {
                  v253 = __nw_create_backtrace_string();
                  v254 = __nwlog_obj();
                  v255 = type[0];
                  v256 = os_log_type_enabled(v254, type[0]);
                  if (v253)
                  {
                    if (v256)
                    {
                      *v420 = 136446466;
                      *&v420[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                      *&v420[12] = 2082;
                      *&v420[14] = v253;
                      _os_log_impl(&dword_181A37000, v254, v255, "%{public}s called with null remove_endpoint, dumping backtrace:%{public}s", v420, 0x16u);
                    }

                    free(v253);
                  }

                  else
                  {
                    if (v256)
                    {
                      *v420 = 136446210;
                      *&v420[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                      _os_log_impl(&dword_181A37000, v254, v255, "%{public}s called with null remove_endpoint, no backtrace", v420, 0xCu);
                    }
                  }
                }

                else
                {
                  v251 = __nwlog_obj();
                  v257 = type[0];
                  if (os_log_type_enabled(v251, type[0]))
                  {
                    *v420 = 136446210;
                    *&v420[4] = "nw_endpoint_resolver_duplicate_array_without_endpoint";
                    _os_log_impl(&dword_181A37000, v251, v257, "%{public}s called with null remove_endpoint, backtrace limit exceeded", v420, 0xCu);
                  }

LABEL_311:
                }
              }

              if (v249)
              {
                free(v249);
              }

              v401 = 0;
              v162 = v250;
LABEL_197:

              v167 = v409;
              v168 = (*(v409 + 284) & 0x40) == 0;

              if (v168)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v169 = gconnectionLogObj;
                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                {
                  v170 = v167;

                  v171 = v170;
                  LODWORD(v170) = (*(v409 + 284) & 1) == 0;

                  if (v170)
                  {
                    v172 = "";
                  }

                  else
                  {
                    v172 = "dry-run ";
                  }

                  v173 = nw_endpoint_handler_copy_endpoint(v171);
                  v174 = v173;
                  v384 = v173;
                  log = v172;
                  if (v173)
                  {
                    v383 = _nw_endpoint_get_logging_description(v173);
                  }

                  else
                  {
                    v383 = "<NULL>";
                  }

                  v193 = v171;
                  v194 = v193;
                  v195 = v397->state;
                  v196 = "unknown-state";
                  if (v195 <= 5)
                  {
                    v196 = off_1E6A31048[v195];
                  }

                  v197 = v194;
                  v198 = v8[29];
                  if (v198 > 2)
                  {
                    switch(v198)
                    {
                      case 3:
                        v199 = "proxy";
                        break;
                      case 4:
                        v199 = "fallback";
                        break;
                      case 5:
                        v199 = "transform";
                        break;
                      default:
                        goto LABEL_291;
                    }
                  }

                  else if (v198)
                  {
                    if (v198 == 1)
                    {
                      v199 = "resolver";
                    }

                    else
                    {
                      if (v198 == 2)
                      {
                        v199 = nw_endpoint_flow_mode_string(v409->mode_handler);
                        goto LABEL_294;
                      }

LABEL_291:
                      v199 = "unknown-mode";
                    }
                  }

                  else
                  {
                    v199 = "path";
                  }

LABEL_294:
                  v232 = v163 == 0;

                  v233 = v162;
                  v234 = v197;
                  os_unfair_lock_lock(&v409->lock);
                  v235 = v409->current_path;
                  os_unfair_lock_unlock(&v409->lock);

                  v162 = v233;
                  v236 = v235;
                  v237 = v163;
                  v238 = v237;
                  if (v232)
                  {
                    v239 = "<NULL>";
                  }

                  else
                  {
                    v239 = _nw_endpoint_get_logging_description(v237);
                  }

                  *buf = 136448002;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v409->id_str;
                  *&buf[22] = 2082;
                  v423 = log;
                  *v424 = 2082;
                  *&v424[2] = v383;
                  *&v424[10] = 2082;
                  *&v424[12] = v196;
                  v425 = 2082;
                  v426 = v199;
                  v427 = 2114;
                  v428 = v236;
                  v429 = 2082;
                  v430 = v239;
                  _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Keeping started endpoint %{public}s", buf, 0x52u);
                }
              }

              v206 = v403;
              goto LABEL_300;
            }
          }

          else
          {
          }

          v175 = v409;
          v176 = (*(v409 + 284) & 0x20) == 0;

          if (!v176)
          {
            if (nw_endpoint_handler_get_logging_disabled(v175))
            {
              goto LABEL_251;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v179 = gconnectionLogObj;
            if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
            {
              v240 = nw_endpoint_handler_get_id_string(v175);
              v241 = nw_endpoint_handler_dry_run_string(v175);
              v242 = nw_endpoint_handler_copy_endpoint(v175);
              v243 = nw_endpoint_get_logging_description(v242);
              v244 = nw_endpoint_handler_state_string(v175);
              v245 = nw_endpoint_handler_mode_string(v175);
              v246 = nw_endpoint_handler_copy_current_path(v175);
              v247 = nw_endpoint_get_logging_description(v403);
              *buf = 136448002;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v240;
              *&buf[22] = 2082;
              v423 = v241;
              *v424 = 2082;
              *&v424[2] = v243;
              *&v424[10] = 2082;
              *&v424[12] = v244;
              v425 = 2082;
              v426 = v245;
              v427 = 2114;
              v428 = v246;
              v429 = 2082;
              v430 = v247;
              _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Started endpoint %{public}s is no longer resolved", buf, 0x52u);
            }

            goto LABEL_250;
          }

          v177 = v175;
          v178 = (*(v409 + 284) & 0x40) == 0;

          if (v178)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v179 = gconnectionLogObj;
            if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
            {
              loga = v179;
              v180 = v177;

              v181 = v180;
              LODWORD(v180) = (*(v409 + 284) & 1) == 0;

              if (v180)
              {
                v182 = "";
              }

              else
              {
                v182 = "dry-run ";
              }

              v183 = nw_endpoint_handler_copy_endpoint(v181);
              v184 = v183;
              if (v183)
              {
                v185 = _nw_endpoint_get_logging_description(v183);
              }

              else
              {
                v185 = "<NULL>";
              }

              v186 = v181;
              v187 = v186;
              v188 = v397->state;
              v189 = "unknown-state";
              if (v188 <= 5)
              {
                v189 = off_1E6A31048[v188];
              }

              v190 = v187;
              v191 = v8[29];
              if (v191 > 2)
              {
                switch(v191)
                {
                  case 3:
                    v192 = "proxy";
                    break;
                  case 4:
                    v192 = "fallback";
                    break;
                  case 5:
                    v192 = "transform";
                    break;
                  default:
                    goto LABEL_243;
                }
              }

              else if (v191)
              {
                if (v191 == 1)
                {
                  v192 = "resolver";
                }

                else
                {
                  if (v191 == 2)
                  {
                    v192 = nw_endpoint_flow_mode_string(v409->mode_handler);
                    goto LABEL_246;
                  }

LABEL_243:
                  v192 = "unknown-mode";
                }
              }

              else
              {
                v192 = "path";
              }

LABEL_246:

              v200 = v190;
              os_unfair_lock_lock(&v409->lock);
              v201 = v409->current_path;
              os_unfair_lock_unlock(&v409->lock);

              v202 = v201;
              v203 = v403;
              v204 = v203;
              if (v203)
              {
                v205 = _nw_endpoint_get_logging_description(v203);
              }

              else
              {
                v205 = "<NULL>";
              }

              *buf = 136448002;
              *&buf[4] = "nw_endpoint_resolver_update";
              *&buf[12] = 2082;
              *&buf[14] = v409->id_str;
              *&buf[22] = 2082;
              v423 = v182;
              *v424 = 2082;
              *&v424[2] = v185;
              *&v424[10] = 2082;
              *&v424[12] = v189;
              v425 = 2082;
              v426 = v192;
              v427 = 2114;
              v428 = v202;
              v429 = 2082;
              v430 = v205;
              _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Started endpoint %{public}s is no longer resolved", buf, 0x52u);

              v179 = loga;
            }

LABEL_250:
          }

LABEL_251:
          v206 = v403;
          if (v408 != 1 || (*(v402 + 24) & 0x20) == 0)
          {
            goto LABEL_300;
          }

          nw_array_remove_object(v395, v406);
          v207 = *(v402 + 6);
          if (v207 && v406 && _nw_array_contains_object(v207, v406))
          {
            v208 = nw_array_duplicate_array_without_object(*(v402 + 6), v406);
            v209 = *(v402 + 6);
            *(v402 + 6) = v208;
          }

          v210 = v175;
          v211 = (*(v409 + 284) & 0x40) == 0;

          if (!v211)
          {
            goto LABEL_288;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v212 = gconnectionLogObj;
          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
          {
            v213 = v210;

            v214 = v213;
            LODWORD(v213) = (*(v409 + 284) & 1) == 0;

            if (v213)
            {
              v215 = "";
            }

            else
            {
              v215 = "dry-run ";
            }

            v216 = nw_endpoint_handler_copy_endpoint(v214);
            v217 = v216;
            if (v216)
            {
              v218 = _nw_endpoint_get_logging_description(v216);
            }

            else
            {
              v218 = "<NULL>";
            }

            v219 = v214;
            v220 = v219;
            v221 = v397->state;
            v222 = "unknown-state";
            if (v221 <= 5)
            {
              v222 = off_1E6A31048[v221];
            }

            v223 = v220;
            v224 = v8[29];
            if (v224 > 2)
            {
              switch(v224)
              {
                case 3:
                  v225 = "proxy";
                  goto LABEL_283;
                case 4:
                  v225 = "fallback";
                  goto LABEL_283;
                case 5:
                  v225 = "transform";
                  goto LABEL_283;
              }
            }

            else
            {
              switch(v224)
              {
                case 0:
                  v225 = "path";
                  goto LABEL_283;
                case 1:
                  v225 = "resolver";
                  goto LABEL_283;
                case 2:
                  v225 = nw_endpoint_flow_mode_string(v409->mode_handler);
LABEL_283:

                  v226 = v223;
                  os_unfair_lock_lock(&v409->lock);
                  v227 = v409->current_path;
                  os_unfair_lock_unlock(&v409->lock);

                  v228 = v227;
                  v229 = v403;
                  v230 = v229;
                  if (v229)
                  {
                    description = _nw_endpoint_get_description(v229);
                  }

                  else
                  {
                    description = "<NULL>";
                  }

                  *buf = 136448002;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v409->id_str;
                  *&buf[22] = 2082;
                  v423 = v215;
                  *v424 = 2082;
                  *&v424[2] = v218;
                  *&v424[10] = 2082;
                  *&v424[12] = v222;
                  v425 = 2082;
                  v426 = v225;
                  v427 = 2114;
                  v428 = v228;
                  v429 = 2080;
                  v430 = description;
                  _os_log_impl(&dword_181A37000, v212, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Removing endpoint handler for %s", buf, 0x52u);

                  goto LABEL_287;
              }
            }

            v225 = "unknown-mode";
            goto LABEL_283;
          }

LABEL_287:

LABEL_288:
          v206 = v403;
          nw_endpoint_handler_cancel(v406, 0, 0);
LABEL_300:

          ++v398;
        }

        while (v390 != v398);
      }

LABEL_326:
      objc_storeStrong(v396, v395);
      v258 = *v396;
      if (*v396)
      {
        LODWORD(v258) = _nw_array_get_count(v258);
      }

      *(v402 + 5) = v258;
      if (v401)
      {
        v407 = _nw_array_get_count(v401);
        if (v407)
        {
          v259 = v401;
          v260 = 0;
          while (1)
          {
            v261 = _nw_array_get_object_at_index(v259, v260);
            child_parameters = nw_endpoint_resolver_create_child_parameters(v409);
            if (nw_endpoint_get_is_approved_app_domain(v261))
            {
              nw_parameters_set_is_approved_app_domain(child_parameters);
            }

            inner = nw_endpoint_handler_create_inner(v261, child_parameters, nw_endpoint_resolver_receive_report, v409, v409, 0, 0, 0);
            if (!inner)
            {
              goto LABEL_371;
            }

            v264 = v409;
            v265 = (*(v409 + 284) & 0x20) == 0;

            if (v265)
            {
              break;
            }

            if ((nw_endpoint_handler_get_logging_disabled(v264) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v404 = gconnectionLogObj;
              if (os_log_type_enabled(v404, OS_LOG_TYPE_DEBUG))
              {
                v394 = nw_endpoint_handler_get_id_string(v264);
                v392 = nw_endpoint_handler_dry_run_string(v264);
                v400 = nw_endpoint_handler_copy_endpoint(v264);
                v290 = nw_endpoint_get_logging_description(v400);
                v291 = nw_endpoint_handler_state_string(v264);
                v292 = nw_endpoint_handler_mode_string(v264);
                v293 = nw_endpoint_handler_copy_current_path(v264);
                v294 = nw_endpoint_get_logging_description(v261);
                is_known_tracker = nw_parameters_get_is_known_tracker(child_parameters);
                *buf = 136448258;
                v296 = "";
                if (is_known_tracker)
                {
                  v296 = ", tracker";
                }

                *&buf[4] = "nw_endpoint_resolver_update";
                *&buf[12] = 2082;
                *&buf[14] = v394;
                *&buf[22] = 2082;
                v423 = v392;
                *v424 = 2082;
                *&v424[2] = v290;
                *&v424[10] = 2082;
                *&v424[12] = v291;
                v425 = 2082;
                v426 = v292;
                v427 = 2114;
                v428 = v293;
                v429 = 2082;
                v430 = v294;
                v431 = 2080;
                v432 = v296;
                _os_log_impl(&dword_181A37000, v404, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding endpoint handler for %{public}s%s", buf, 0x5Cu);
              }

LABEL_367:
              v268 = v404;
LABEL_368:
            }

LABEL_369:
            if (*v396)
            {
              _nw_array_append(*v396, inner);
            }

LABEL_371:

            ++v260;
            v259 = v401;
            if (v407 == v260)
            {
              goto LABEL_380;
            }
          }

          v266 = v264;
          v267 = (*(v409 + 284) & 0x40) == 0;

          if (!v267)
          {
            goto LABEL_369;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v268 = gconnectionLogObj;
          if (!os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_368;
          }

          v404 = v268;
          v269 = v266;

          v270 = v269;
          v271 = (*(v409 + 284) & 1) == 0;

          if (v271)
          {
            v272 = "";
          }

          else
          {
            v272 = "dry-run ";
          }

          v273 = nw_endpoint_handler_copy_endpoint(v270);
          v274 = v273;
          v393 = v273;
          v399 = v272;
          if (v273)
          {
            v391 = _nw_endpoint_get_logging_description(v273);
          }

          else
          {
            v391 = "<NULL>";
          }

          v275 = v270;
          v276 = v275;
          v277 = v397->state;
          v278 = "unknown-state";
          if (v277 <= 5)
          {
            v278 = off_1E6A31048[v277];
          }

          v279 = v276;
          v280 = v8[29];
          if (v280 > 2)
          {
            switch(v280)
            {
              case 3:
                v281 = "proxy";
                goto LABEL_361;
              case 4:
                v281 = "fallback";
                goto LABEL_361;
              case 5:
                v281 = "transform";
                goto LABEL_361;
            }
          }

          else
          {
            switch(v280)
            {
              case 0:
                v281 = "path";
                goto LABEL_361;
              case 1:
                v281 = "resolver";
                goto LABEL_361;
              case 2:
                v281 = nw_endpoint_flow_mode_string(v409->mode_handler);
LABEL_361:

                v282 = v279;
                os_unfair_lock_lock(&v409->lock);
                v283 = v409->current_path;
                os_unfair_lock_unlock(&v409->lock);

                v284 = v283;
                v285 = v261;
                v286 = v285;
                if (v285)
                {
                  v287 = _nw_endpoint_get_logging_description(v285);
                }

                else
                {
                  v287 = "<NULL>";
                }

                v288 = nw_parameters_get_is_known_tracker(child_parameters);
                *buf = 136448258;
                v289 = "";
                if (v288)
                {
                  v289 = ", tracker";
                }

                *&buf[4] = "nw_endpoint_resolver_update";
                *&buf[12] = 2082;
                *&buf[14] = v409->id_str;
                *&buf[22] = 2082;
                v423 = v399;
                *v424 = 2082;
                *&v424[2] = v391;
                *&v424[10] = 2082;
                *&v424[12] = v278;
                v425 = 2082;
                v426 = v281;
                v427 = 2114;
                v428 = v284;
                v429 = 2082;
                v430 = v287;
                v431 = 2080;
                v432 = v289;
                _os_log_impl(&dword_181A37000, v404, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding endpoint handler for %{public}s%s", buf, 0x5Cu);

                goto LABEL_367;
            }
          }

          v281 = "unknown-mode";
          goto LABEL_361;
        }
      }

LABEL_380:
      v297 = __nwlog_obj();
      if (os_log_type_enabled(v297, OS_LOG_TYPE_DEBUG))
      {
      }

      else
      {
        v298 = gLogFDOverride == -1;

        if (v298)
        {
          goto LABEL_394;
        }
      }

      *v420 = 0;
      *&v420[8] = v420;
      *&v420[16] = 0x2020000000;
      v421 = 1;
      *type = 0;
      v416 = type;
      v417 = 0x2020000000;
      v418 = 0;
      asprintf(&v418, "");
      v299 = *v396;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL27nw_endpoint_resolver_updateP30NWConcrete_nw_endpoint_handlerPU25objcproto14OS_nw_resolver8NSObject20nw_resolver_status_t_block_invoke;
      aBlock[3] = &unk_1E6A39C00;
      aBlock[4] = type;
      aBlock[5] = v420;
      if (v299)
      {
        _nw_array_apply(v299, aBlock);
      }

      if ((nw_endpoint_handler_get_logging_disabled(v409) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v300 = gconnectionLogObj;
        if (os_log_type_enabled(v300, OS_LOG_TYPE_DEBUG))
        {
          v301 = nw_endpoint_handler_get_id_string(v409);
          v302 = nw_endpoint_handler_dry_run_string(v409);
          v303 = nw_endpoint_handler_copy_endpoint(v409);
          v304 = nw_endpoint_get_logging_description(v303);
          v305 = nw_endpoint_handler_state_string(v409);
          v306 = nw_endpoint_handler_mode_string(v409);
          v307 = nw_endpoint_handler_copy_current_path(v409);
          v308 = *(v416 + 3);
          *buf = 136448002;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v301;
          *&buf[22] = 2082;
          v423 = v302;
          *v424 = 2082;
          *&v424[2] = v304;
          *&v424[10] = 2082;
          *&v424[12] = v305;
          v425 = 2082;
          v426 = v306;
          v427 = 2114;
          v428 = v307;
          v429 = 2082;
          v430 = v308;
          _os_log_impl(&dword_181A37000, v300, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Updated endpoint list is (%{public}s)", buf, 0x52u);
        }
      }

      v309 = *(v416 + 3);
      if (v309)
      {
        free(v309);
        *(v416 + 3) = 0;
      }

      _Block_object_dispose(type, 8);
      _Block_object_dispose(v420, 8);
LABEL_394:
      v310 = nw_endpoint_handler_copy_endpoint(v409);
      v311 = nw_endpoint_get_type(v310);
      if (v311 == (nw_endpoint_type_url|nw_endpoint_type_address))
      {
        v312 = 7;
      }

      else
      {
        v312 = 2;
      }

      if (v311 == nw_endpoint_type_bonjour_service)
      {
        v313 = 4;
      }

      else
      {
        v313 = v312;
      }

      if (*v396)
      {
        v314 = _nw_array_get_count(*v396);
        if (v314)
        {
          v409->event.domain = 2;
          v409->event.event = v313;
          nw_endpoint_handler_report(v409, 0, &v409->event.domain, 0);
          v315 = *(v402 + 6);
          if (v315)
          {
            v315 = _nw_array_get_count(v315);
            if (v408 == 2 && v314 == v315)
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v409);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v409);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_412;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v318 = gconnectionLogObj;
                if (os_log_type_enabled(v318, OS_LOG_TYPE_DEBUG))
                {
                  v374 = nw_endpoint_handler_get_id_string(v409);
                  v375 = nw_endpoint_handler_dry_run_string(v409);
                  v376 = nw_endpoint_handler_copy_endpoint(v409);
                  v377 = nw_endpoint_get_logging_description(v376);
                  v378 = nw_endpoint_handler_state_string(v409);
                  v379 = nw_endpoint_handler_mode_string(v409);
                  v380 = nw_endpoint_handler_copy_current_path(v409);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v374;
                  *&buf[22] = 2082;
                  v423 = v375;
                  *v424 = 2082;
                  *&v424[2] = v377;
                  *&v424[10] = 2082;
                  *&v424[12] = v378;
                  v425 = 2082;
                  v426 = v379;
                  v427 = 2114;
                  v428 = v380;
                  _os_log_impl(&dword_181A37000, v318, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver complete, all children failed", buf, 0x48u);
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_412:
                  nw_endpoint_handler_handle_failure(v409);
                  v409->event = 327682;
                  nw_endpoint_handler_report(v409, 0, &v409->event.domain, 0);
LABEL_446:

                  goto LABEL_447;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v318 = gconnectionLogObj;
                if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
                {
                  v319 = nw_endpoint_handler_get_id_string(v409);
                  v320 = nw_endpoint_handler_dry_run_string(v409);
                  v321 = nw_endpoint_handler_copy_endpoint(v409);
                  v322 = nw_endpoint_get_logging_description(v321);
                  v323 = nw_endpoint_handler_state_string(v409);
                  v324 = nw_endpoint_handler_mode_string(v409);
                  v325 = nw_endpoint_handler_copy_current_path(v409);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_resolver_update";
                  *&buf[12] = 2082;
                  *&buf[14] = v319;
                  *&buf[22] = 2082;
                  v423 = v320;
                  *v424 = 2082;
                  *&v424[2] = v322;
                  *&v424[10] = 2082;
                  *&v424[12] = v323;
                  v425 = 2082;
                  v426 = v324;
                  v427 = 2114;
                  v428 = v325;
                  _os_log_impl(&dword_181A37000, v318, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver complete, all children failed", buf, 0x48u);
                }
              }

              goto LABEL_412;
            }
          }

          v336 = *(v402 + 5);
          if (v336 && v315 != v336 && (*(v402 + 24) & 2) == 0)
          {
            goto LABEL_446;
          }

          v337 = nw_endpoint_handler_copy_context(v409);
          v412[0] = MEMORY[0x1E69E9820];
          v412[1] = 3221225472;
          v412[2] = ___ZL27nw_endpoint_resolver_updateP30NWConcrete_nw_endpoint_handlerPU25objcproto14OS_nw_resolver8NSObject20nw_resolver_status_t_block_invoke_114;
          v412[3] = &unk_1E6A3D868;
          v413 = v409;
          nw_queue_context_async(v337, v412);

          dns_error = v413;
LABEL_445:

          goto LABEL_446;
        }
      }

      if (v408 != 2)
      {
        goto LABEL_446;
      }

      if (nw_endpoint_handler_trigger_agents(v409, 1))
      {
        v326 = nw_endpoint_handler_get_minimize_logging(v409);
        v327 = nw_endpoint_handler_get_logging_disabled(v409);
        if (v326)
        {
          if (v327)
          {
            goto LABEL_422;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v328 = gconnectionLogObj;
          if (os_log_type_enabled(v328, OS_LOG_TYPE_DEBUG))
          {
            v360 = nw_endpoint_handler_get_id_string(v409);
            v361 = nw_endpoint_handler_dry_run_string(v409);
            v362 = nw_endpoint_handler_copy_endpoint(v409);
            v363 = nw_endpoint_get_logging_description(v362);
            v364 = nw_endpoint_handler_state_string(v409);
            v365 = nw_endpoint_handler_mode_string(v409);
            v366 = nw_endpoint_handler_copy_current_path(v409);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v360;
            *&buf[22] = 2082;
            v423 = v361;
            *v424 = 2082;
            *&v424[2] = v363;
            *&v424[10] = 2082;
            *&v424[12] = v364;
            v425 = 2082;
            v426 = v365;
            v427 = 2114;
            v428 = v366;
            _os_log_impl(&dword_181A37000, v328, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed, trying to trigger voluntary agents", buf, 0x48u);
          }
        }

        else
        {
          if (v327)
          {
LABEL_422:
            nw_endpoint_handler_reset_mode(v409, 0);
            goto LABEL_446;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v328 = gconnectionLogObj;
          if (os_log_type_enabled(v328, OS_LOG_TYPE_INFO))
          {
            v329 = nw_endpoint_handler_get_id_string(v409);
            v330 = nw_endpoint_handler_dry_run_string(v409);
            v331 = nw_endpoint_handler_copy_endpoint(v409);
            v332 = nw_endpoint_get_logging_description(v331);
            v333 = nw_endpoint_handler_state_string(v409);
            v334 = nw_endpoint_handler_mode_string(v409);
            v335 = nw_endpoint_handler_copy_current_path(v409);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v329;
            *&buf[22] = 2082;
            v423 = v330;
            *v424 = 2082;
            *&v424[2] = v332;
            *&v424[10] = 2082;
            *&v424[12] = v333;
            v425 = 2082;
            v426 = v334;
            v427 = 2114;
            v428 = v335;
            _os_log_impl(&dword_181A37000, v328, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed, trying to trigger voluntary agents", buf, 0x48u);
          }
        }

        goto LABEL_422;
      }

      v341 = nw_endpoint_handler_copy_current_path(v409);
      nw_path_trigger_inactive_cellular_agent_if_necessary(v341);

      LODWORD(v341) = nw_endpoint_handler_get_minimize_logging(v409);
      v342 = nw_endpoint_handler_get_logging_disabled(v409);
      if (v341)
      {
        v343 = v402;
        if (v342)
        {
          goto LABEL_441;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v344 = gconnectionLogObj;
        if (os_log_type_enabled(v344, OS_LOG_TYPE_DEBUG))
        {
          v367 = nw_endpoint_handler_get_id_string(v409);
          v368 = nw_endpoint_handler_dry_run_string(v409);
          v369 = nw_endpoint_handler_copy_endpoint(v409);
          v370 = nw_endpoint_get_logging_description(v369);
          v371 = nw_endpoint_handler_state_string(v409);
          v372 = nw_endpoint_handler_mode_string(v409);
          v373 = nw_endpoint_handler_copy_current_path(v409);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v367;
          *&buf[22] = 2082;
          v423 = v368;
          *v424 = 2082;
          *&v424[2] = v370;
          *&v424[10] = 2082;
          *&v424[12] = v371;
          v425 = 2082;
          v426 = v372;
          v427 = 2114;
          v428 = v373;
          _os_log_impl(&dword_181A37000, v344, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed", buf, 0x48u);
        }
      }

      else
      {
        v343 = v402;
        if (v342)
        {
LABEL_441:
          error = nw_resolver_get_error(*(v343 + 1));
          if (error)
          {
            dns_error = nw_error_create_dns_error(error);
          }

          else
          {
            dns_error = 0;
          }

          nw_endpoint_handler_handle_failure(v409);
          v409->event.domain = 2;
          v409->event.event = v313;
          nw_endpoint_handler_report(v409, 0, &v409->event.domain, dns_error);
          goto LABEL_445;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v344 = gconnectionLogObj;
        if (os_log_type_enabled(v344, OS_LOG_TYPE_INFO))
        {
          v345 = nw_endpoint_handler_get_id_string(v409);
          v346 = nw_endpoint_handler_dry_run_string(v409);
          v347 = nw_endpoint_handler_copy_endpoint(v409);
          v348 = nw_endpoint_get_logging_description(v347);
          v349 = nw_endpoint_handler_state_string(v409);
          v350 = nw_endpoint_handler_mode_string(v409);
          v351 = nw_endpoint_handler_copy_current_path(v409);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_update";
          *&buf[12] = 2082;
          *&buf[14] = v345;
          *&buf[22] = 2082;
          v423 = v346;
          *v424 = 2082;
          *&v424[2] = v348;
          *&v424[10] = 2082;
          *&v424[12] = v349;
          v425 = 2082;
          v426 = v350;
          v427 = 2114;
          v428 = v351;
          _os_log_impl(&dword_181A37000, v344, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolution failed", buf, 0x48u);
        }
      }

      v343 = v402;
      goto LABEL_441;
    }

    v104 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
    v105 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s called with null parameters", buf, 12);

    v420[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v105, v420, type))
    {
      if (v420[0] == 17)
      {
        v106 = __nwlog_obj();
        v107 = v420[0];
        if (os_log_type_enabled(v106, v420[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        v108 = __nw_create_backtrace_string();
        v106 = __nwlog_obj();
        v109 = v420[0];
        v110 = os_log_type_enabled(v106, v420[0]);
        if (v108)
        {
          if (v110)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
            *&buf[12] = 2082;
            *&buf[14] = v108;
            _os_log_impl(&dword_181A37000, v106, v109, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v108);
          goto LABEL_137;
        }

        if (v110)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
          _os_log_impl(&dword_181A37000, v106, v109, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v106 = __nwlog_obj();
        v111 = v420[0];
        if (os_log_type_enabled(v106, v420[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_fail_if_svcb_received";
          _os_log_impl(&dword_181A37000, v106, v111, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_137:
    if (v105)
    {
      free(v105);
    }

    v25 = v402;
    goto LABEL_140;
  }

  v12 = v10;
  v13 = *(v12 + 284);

  if ((v13 & 0x20) != 0)
  {
    if ((nw_endpoint_handler_get_logging_disabled(v12) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v88 = nw_endpoint_handler_get_id_string(v12);
        v89 = nw_endpoint_handler_dry_run_string(v12);
        v90 = nw_endpoint_handler_copy_endpoint(v12);
        v91 = nw_endpoint_get_logging_description(v90);
        v92 = nw_endpoint_handler_state_string(v12);
        v93 = nw_endpoint_handler_mode_string(v12);
        v94 = nw_endpoint_handler_copy_current_path(v12);
        *buf = 136447746;
        *&buf[4] = "nw_endpoint_resolver_update";
        *&buf[12] = 2082;
        *&buf[14] = v88;
        *&buf[22] = 2082;
        v423 = v89;
        *v424 = 2082;
        *&v424[2] = v91;
        *&v424[10] = 2082;
        *&v424[12] = v92;
        v425 = 2082;
        v426 = v93;
        v427 = 2114;
        v428 = v94;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring resolver update", buf, 0x48u);
      }

      goto LABEL_102;
    }
  }

  else
  {
    v14 = v12;
    v15 = *(v12 + 284);

    if ((v15 & 0x40) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_102;
      }

      v17 = v14;

      v18 = v17;
      v19 = *(v12 + 284);

      if (v19)
      {
        v20 = "dry-run ";
      }

      else
      {
        v20 = "";
      }

      v21 = nw_endpoint_handler_copy_endpoint(v18);
      v22 = v21;
      if (v21)
      {
        v23 = _nw_endpoint_get_logging_description(v21);
      }

      else
      {
        v23 = "<NULL>";
      }

      v58 = v17 + 184;

      v59 = v18;
      v60 = v59;
      v61 = v10->state;
      if (v61 > 5)
      {
        v62 = "unknown-state";
      }

      else
      {
        v62 = off_1E6A31048[v61];
      }

      v63 = v60;
      v64 = v63;
      v65 = v8[29];
      if (v65 > 2)
      {
        switch(v65)
        {
          case 3:
            v66 = "proxy";
            goto LABEL_79;
          case 4:
            v66 = "fallback";
            goto LABEL_79;
          case 5:
            v66 = "transform";
            goto LABEL_79;
        }
      }

      else
      {
        switch(v65)
        {
          case 0:
            v66 = "path";
            goto LABEL_79;
          case 1:
            v66 = "resolver";
            goto LABEL_79;
          case 2:
            v66 = nw_endpoint_flow_mode_string(v63[33]);
LABEL_79:

            v76 = v64;
            os_unfair_lock_lock(v76 + 28);
            v77 = v76[8];
            os_unfair_lock_unlock(v76 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_update";
            *&buf[12] = 2082;
            *&buf[14] = v58;
            *&buf[22] = 2082;
            v423 = v20;
            *v424 = 2082;
            *&v424[2] = v23;
            *&v424[10] = 2082;
            *&v424[12] = v62;
            v425 = 2082;
            v426 = v66;
            v427 = 2114;
            v428 = v77;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring resolver update", buf, 0x48u);

LABEL_102:
            goto LABEL_451;
        }
      }

      v66 = "unknown-mode";
      goto LABEL_79;
    }
  }

LABEL_451:
}

uint64_t nw_endpoint_get_is_approved_app_domain(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_approved_app_domain = _nw_endpoint_get_is_approved_app_domain(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_is_approved_app_domain";
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
        v16 = "nw_endpoint_get_is_approved_app_domain";
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
          v16 = "nw_endpoint_get_is_approved_app_domain";
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
        v16 = "nw_endpoint_get_is_approved_app_domain";
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
        v16 = "nw_endpoint_get_is_approved_app_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_approved_app_domain = 0;
LABEL_3:

  return is_approved_app_domain;
}

uint64_t nw_endpoint_resolver_receive_report(void *a1, int a2, unsigned int a3, unsigned __int16 *a4, void *a5, void *a6)
{
  v341 = *MEMORY[0x1E69E9840];
  v303 = a1;
  v301 = a5;
  v12 = a6;
  v302 = v12;
  if (!v12)
  {
    v214 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_resolver_receive_report";
    v215 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v214, 16, "%{public}s called with null handler", buf, 12);

    type[0] = 16;
    v316 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v215, type, &v316))
    {
      if (type[0] == 17)
      {
        v216 = __nwlog_obj();
        v217 = type[0];
        if (os_log_type_enabled(v216, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          _os_log_impl(&dword_181A37000, v216, v217, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v316 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v216 = __nwlog_obj();
        v219 = type[0];
        v220 = os_log_type_enabled(v216, type[0]);
        if (backtrace_string)
        {
          if (v220)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_resolver_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v216, v219, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_269;
        }

        if (v220)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          _os_log_impl(&dword_181A37000, v216, v219, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v216 = __nwlog_obj();
        v221 = type[0];
        if (os_log_type_enabled(v216, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          _os_log_impl(&dword_181A37000, v216, v221, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_269:
    if (v215)
    {
      free(v215);
    }

    goto LABEL_18;
  }

  v13 = v12;
  v14 = v13[29];

  if (v14 == 1)
  {
    v294 = a2;
    obj = a1;
    v293 = v13;
    v297 = a3;
    v15 = v13;
    v16 = *(v15 + 284);

    v300 = v15;
    v296 = a4;
    if ((v16 & 0x40) != 0)
    {
LABEL_42:
      nw_endpoint_handler_report(v15, v303, a4, v301);
      v51 = nw_endpoint_handler_copy_resolver(v15);
      v52 = *(v51 + 5);
      if (v52 && v303 && _nw_array_contains_object(v52, v303))
      {
        loga = v51;
        if (a4 && *a4 - 1 <= 1 && a4[1] == 7)
        {
          v53 = 1;
LABEL_100:
          v92 = networkd_settings_get_BOOL(nw_setting_tcpconn_no_happy_eyeballs_full_stack);
          v93 = 0;
          if (v297 == 2 && a4)
          {
            v93 = *a4 == 3 && a4[1] == 5;
          }

          v94 = v301;
          if (v301)
          {
            v95 = v301;
            v96 = v95[3];

            if (v96 <= 0x3D && ((1 << v96) & 0x3000000000000001) != 0)
            {
              v94 = 0;
            }

            else if (v296)
            {
              v94 = *v296 != 2;
            }

            else
            {
              v94 = 1;
            }
          }

          if (v297 != 3)
          {
            v112 = *(v51 + 24);
            v113 = v112 & v94;
            v114 = v92 ? v93 : v112 & v94;
            if ((v113 & 1) == 0 && !v114)
            {
              if (v297 == 4)
              {
                v115 = *(v51 + 6);
                if (v115)
                {
                  if (_nw_array_contains_object(v115, v303))
                  {
                    goto LABEL_138;
                  }

                  v116 = *(v51 + 6);
                  if (v116)
                  {
                    goto LABEL_137;
                  }
                }

                v117 = _nw_array_create();
                v119 = *(v51 + 6);
                v118 = (v51 + 48);
                *v118 = v117;

                v116 = *v118;
                if (*v118)
                {
LABEL_137:
                  _nw_array_append(v116, v303);
                }

LABEL_138:
                v120 = v300;
                v121 = v120->state == 5;

                if (v121)
                {
LABEL_139:
                  v27 = 1;
LABEL_239:
                  v51 = loga;
                  goto LABEL_240;
                }

                isa = loga[6].isa;
                if (isa)
                {
                  count = _nw_array_get_count(isa);
                }

                else
                {
                  count = 0;
                }

                v172 = loga[5].isa;
                if (v172)
                {
                  v172 = _nw_array_get_count(v172);
                }

                if (count == v172)
                {
                  v173 = loga[3].isa;
                  if ((v173 & 4) == 0)
                  {
                    nw_endpoint_resolver_check_desperate_ivan(v120);
                    v173 = loga[3].isa;
                  }

                  if ((v173 & 8) != 0 && nw_endpoint_resolver_add_desperate_ivan(v120))
                  {
                    v174 = nw_endpoint_handler_copy_context(v120);
                    v309[0] = MEMORY[0x1E69E9820];
                    v309[1] = 3221225472;
                    v309[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_2;
                    v309[3] = &unk_1E6A3D868;
                    v310 = v120;
                    nw_queue_context_async(v174, v309);

                    v27 = 1;
                    p_super = &v310->super;
                    goto LABEL_238;
                  }

                  v187 = loga[2].isa;
                  minimize_logging = nw_endpoint_handler_get_minimize_logging(v120);
                  logging_disabled = nw_endpoint_handler_get_logging_disabled(v120);
                  if (v187 == 1)
                  {
                    if (minimize_logging)
                    {
                      if (logging_disabled)
                      {
                        goto LABEL_139;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v190 = gconnectionLogObj;
                      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                      {
                        id_string = nw_endpoint_handler_get_id_string(v120);
                        v266 = nw_endpoint_handler_dry_run_string(v120);
                        v267 = nw_endpoint_handler_copy_endpoint(v120);
                        logging_description = nw_endpoint_get_logging_description(v267);
                        v269 = nw_endpoint_handler_state_string(v120);
                        v270 = nw_endpoint_handler_mode_string(v120);
                        v271 = nw_endpoint_handler_copy_current_path(v120);
                        *buf = 136447746;
                        *&buf[4] = "nw_endpoint_resolver_receive_report";
                        *&buf[12] = 2082;
                        *&buf[14] = id_string;
                        *&buf[22] = 2082;
                        v320 = v266;
                        v321 = 2082;
                        v322 = logging_description;
                        v323 = 2082;
                        v324 = v269;
                        v325 = 2082;
                        v326 = v270;
                        v327 = 2114;
                        v328 = v271;
                        _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed, but resolver isn't done. Wait.", buf, 0x48u);
                      }

                      goto LABEL_223;
                    }

                    if (logging_disabled)
                    {
                      goto LABEL_139;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    p_super = gconnectionLogObj;
                    v27 = 1;
                    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
                    {
                      v190 = p_super;
                      v191 = nw_endpoint_handler_get_id_string(v120);
                      v192 = nw_endpoint_handler_dry_run_string(v120);
                      v193 = nw_endpoint_handler_copy_endpoint(v120);
                      v194 = nw_endpoint_get_logging_description(v193);
                      v195 = nw_endpoint_handler_state_string(v120);
                      v196 = nw_endpoint_handler_mode_string(v120);
                      v197 = nw_endpoint_handler_copy_current_path(v120);
                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v191;
                      *&buf[22] = 2082;
                      v320 = v192;
                      v321 = 2082;
                      v322 = v194;
                      v323 = 2082;
                      v324 = v195;
                      v325 = 2082;
                      v326 = v196;
                      v327 = 2114;
                      v328 = v197;
                      _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed, but resolver isn't done. Wait.", buf, 0x48u);

LABEL_223:
                      v27 = 1;
                      p_super = v190;
                    }

LABEL_238:

                    goto LABEL_239;
                  }

                  if (minimize_logging)
                  {
                    if (logging_disabled)
                    {
                      goto LABEL_249;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v205 = gconnectionLogObj;
                    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
                    {
                      v272 = nw_endpoint_handler_get_id_string(v120);
                      v273 = nw_endpoint_handler_dry_run_string(v120);
                      v274 = nw_endpoint_handler_copy_endpoint(v120);
                      v275 = nw_endpoint_get_logging_description(v274);
                      v276 = nw_endpoint_handler_state_string(v120);
                      v277 = nw_endpoint_handler_mode_string(v120);
                      v278 = nw_endpoint_handler_copy_current_path(v120);
                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v272;
                      *&buf[22] = 2082;
                      v320 = v273;
                      v321 = 2082;
                      v322 = v275;
                      v323 = 2082;
                      v324 = v276;
                      v325 = 2082;
                      v326 = v277;
                      v327 = 2114;
                      v328 = v278;
                      _os_log_impl(&dword_181A37000, v205, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
                    }
                  }

                  else
                  {
                    if (logging_disabled)
                    {
LABEL_249:
                      nw_endpoint_handler_handle_failure(v120);
                      if (v53)
                      {
                        v213 = 7;
                      }

                      else
                      {
                        v213 = 5;
                      }

                      v120->event.domain = 2;
                      v120->event.event = v213;
                      nw_endpoint_handler_report(v120, 0, &v120->event.domain, 0);
                      goto LABEL_139;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v205 = gconnectionLogObj;
                    if (os_log_type_enabled(v205, OS_LOG_TYPE_INFO))
                    {
                      v206 = nw_endpoint_handler_get_id_string(v120);
                      v207 = nw_endpoint_handler_dry_run_string(v120);
                      v208 = nw_endpoint_handler_copy_endpoint(v120);
                      v209 = nw_endpoint_get_logging_description(v208);
                      v210 = nw_endpoint_handler_state_string(v120);
                      v211 = nw_endpoint_handler_mode_string(v120);
                      v212 = nw_endpoint_handler_copy_current_path(v120);
                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v206;
                      *&buf[22] = 2082;
                      v320 = v207;
                      v321 = 2082;
                      v322 = v209;
                      v323 = 2082;
                      v324 = v210;
                      v325 = 2082;
                      v326 = v211;
                      v327 = 2114;
                      v328 = v212;
                      _os_log_impl(&dword_181A37000, v205, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
                    }
                  }

                  goto LABEL_249;
                }

                if (count != HIDWORD(loga[2].isa))
                {
                  goto LABEL_139;
                }

                v175 = nw_endpoint_handler_get_minimize_logging(v120);
                v176 = nw_endpoint_handler_get_logging_disabled(v120);
                if (v175)
                {
                  if (v176)
                  {
                    goto LABEL_213;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v177 = gconnectionLogObj;
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                  {
                    v258 = nw_endpoint_handler_get_id_string(v120);
                    v259 = nw_endpoint_handler_dry_run_string(v120);
                    v260 = nw_endpoint_handler_copy_endpoint(v120);
                    v261 = nw_endpoint_get_logging_description(v260);
                    v262 = nw_endpoint_handler_state_string(v120);
                    v263 = nw_endpoint_handler_mode_string(v120);
                    v264 = nw_endpoint_handler_copy_current_path(v120);
                    *buf = 136447746;
                    *&buf[4] = "nw_endpoint_resolver_receive_report";
                    *&buf[12] = 2082;
                    *&buf[14] = v258;
                    *&buf[22] = 2082;
                    v320 = v259;
                    v321 = 2082;
                    v322 = v261;
                    v323 = 2082;
                    v324 = v262;
                    v325 = 2082;
                    v326 = v263;
                    v327 = 2114;
                    v328 = v264;
                    _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
                  }
                }

                else
                {
                  if (v176)
                  {
LABEL_213:
                    if (v53)
                    {
                      v185 = loga[4].isa;
                      loga[4].isa = 0;
                    }

                    v186 = nw_endpoint_handler_copy_context(v120);
                    v307[0] = MEMORY[0x1E69E9820];
                    v307[1] = 3221225472;
                    v307[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_120;
                    v307[3] = &unk_1E6A3D868;
                    v308 = v120;
                    nw_queue_context_async(v186, v307);

                    v27 = 1;
                    p_super = &v308->super;
                    goto LABEL_238;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v177 = gconnectionLogObj;
                  if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
                  {
                    v178 = nw_endpoint_handler_get_id_string(v120);
                    v179 = nw_endpoint_handler_dry_run_string(v120);
                    v180 = nw_endpoint_handler_copy_endpoint(v120);
                    v181 = nw_endpoint_get_logging_description(v180);
                    v182 = nw_endpoint_handler_state_string(v120);
                    v183 = nw_endpoint_handler_mode_string(v120);
                    v184 = nw_endpoint_handler_copy_current_path(v120);
                    *buf = 136447746;
                    *&buf[4] = "nw_endpoint_resolver_receive_report";
                    *&buf[12] = 2082;
                    *&buf[14] = v178;
                    *&buf[22] = 2082;
                    v320 = v179;
                    v321 = 2082;
                    v322 = v181;
                    v323 = 2082;
                    v324 = v182;
                    v325 = 2082;
                    v326 = v183;
                    v327 = 2114;
                    v328 = v184;
                    _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
                  }
                }

                goto LABEL_213;
              }

              if ((*(v51 + 24) & 1) == 0 && v93)
              {
                *(v51 + 24) |= 1u;
                if (*(v51 + 7))
                {
                  v138 = nw_endpoint_handler_get_minimize_logging(v300);
                  v139 = nw_endpoint_handler_get_logging_disabled(v300);
                  if (v138)
                  {
                    if (v139)
                    {
                      goto LABEL_162;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v140 = gconnectionLogObj;
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
                    {
                      v243 = nw_endpoint_handler_get_id_string(v300);
                      v244 = nw_endpoint_handler_dry_run_string(v300);
                      v245 = nw_endpoint_handler_copy_endpoint(v300);
                      v246 = nw_endpoint_get_logging_description(v245);
                      v247 = nw_endpoint_handler_state_string(v300);
                      v248 = nw_endpoint_handler_mode_string(v300);
                      v249 = nw_endpoint_handler_copy_current_path(v300);
                      *buf = 136448002;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v243;
                      *&buf[22] = 2082;
                      v320 = v244;
                      v321 = 2082;
                      v322 = v246;
                      v323 = 2082;
                      v324 = v247;
                      v325 = 2082;
                      v326 = v248;
                      v327 = 2114;
                      v328 = v249;
                      v329 = 2048;
                      v330 = 2000;
                      _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out endpoint race by %llums", buf, 0x52u);
                    }
                  }

                  else
                  {
                    if (v139)
                    {
LABEL_162:
                      v148 = *(v51 + 7);
                      v149 = dispatch_time(0x8000000000000000, 2000000000);
                      nw_queue_set_timer_values(v148, v149, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                      goto LABEL_195;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v140 = gconnectionLogObj;
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
                    {
                      v141 = nw_endpoint_handler_get_id_string(v300);
                      v142 = nw_endpoint_handler_dry_run_string(v300);
                      v143 = nw_endpoint_handler_copy_endpoint(v300);
                      v144 = nw_endpoint_get_logging_description(v143);
                      v145 = nw_endpoint_handler_state_string(v300);
                      v146 = nw_endpoint_handler_mode_string(v300);
                      v147 = nw_endpoint_handler_copy_current_path(v300);
                      *buf = 136448002;
                      *&buf[4] = "nw_endpoint_resolver_receive_report";
                      *&buf[12] = 2082;
                      *&buf[14] = v141;
                      *&buf[22] = 2082;
                      v320 = v142;
                      v321 = 2082;
                      v322 = v144;
                      v323 = 2082;
                      v324 = v145;
                      v325 = 2082;
                      v326 = v146;
                      v327 = 2114;
                      v328 = v147;
                      v329 = 2048;
                      v330 = 2000;
                      _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] pushing out endpoint race by %llums", buf, 0x52u);
                    }
                  }

                  v51 = loga;
                  goto LABEL_162;
                }
              }

LABEL_195:
              v27 = 1;
LABEL_240:

              goto LABEL_241;
            }
          }

          v97 = *(v51 + 7);
          if (v97)
          {
            nw_queue_cancel_source(v97);
            *(v51 + 7) = 0;
          }

          v98 = *(v51 + 8);
          if (v98)
          {
            nw_queue_cancel_source(v98);
            *(v51 + 8) = 0;
          }

          v99 = *(v51 + 9);
          if (v99)
          {
            nw_queue_cancel_source(v99);
            *(v51 + 9) = 0;
          }

          if (v297 != 4)
          {
            objc_storeStrong(v51 + 4, obj);
            v122 = loga;
            v123 = v296;
            v124 = v297;
            if ((loga[3].isa & 0x10) != 0 && LODWORD(loga[2].isa) == 1)
            {
              LODWORD(loga[2].isa) = 2;
              v125 = v300;
              if ((nw_endpoint_handler_get_logging_disabled(v300) & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v126 = gconnectionLogObj;
                if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
                {
                  v127 = nw_endpoint_handler_get_id_string(v300);
                  v128 = nw_endpoint_handler_dry_run_string(v300);
                  v129 = nw_endpoint_handler_copy_endpoint(v300);
                  v130 = nw_endpoint_get_logging_description(v129);
                  v131 = nw_endpoint_handler_state_string(v300);
                  v132 = nw_endpoint_handler_mode_string(v300);
                  v133 = nw_endpoint_handler_copy_current_path(v300);
                  v134 = v133;
                  isa_low = LODWORD(loga[2].isa);
                  if (isa_low > 2)
                  {
                    v136 = "unknown";
                  }

                  else
                  {
                    v136 = off_1E6A30E18[isa_low];
                  }

                  *buf = 136448002;
                  *&buf[4] = "nw_endpoint_resolver_receive_report";
                  *&buf[12] = 2082;
                  *&buf[14] = v127;
                  *&buf[22] = 2082;
                  v320 = v128;
                  v321 = 2082;
                  v322 = v130;
                  v323 = 2082;
                  v324 = v131;
                  v325 = 2082;
                  v326 = v132;
                  v327 = 2114;
                  v328 = v133;
                  v329 = 2082;
                  v330 = v136;
                  _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolver is %{public}s as a child has connected", buf, 0x52u);
                }

                v122 = loga;
                v125 = v300;
                v123 = v296;
                v124 = v297;
              }

              nw_endpoint_resolver_remove_agent_assertions(v125);
            }

            if (v124 == 3)
            {
              v198 = v300;
              v198->state = 3;

              v122 = loga;
              v123 = v296;
            }

            nw_endpoint_handler_report(v300, 0, v123, 0);
            v199 = v122[5].isa;
            v311[0] = MEMORY[0x1E69E9820];
            v311[1] = 3221225472;
            v311[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_119;
            v311[3] = &unk_1E6A3CCB8;
            v312 = v303;
            if (v199)
            {
              _nw_array_apply(v199, v311);
            }

            if (v122[1].isa)
            {
              v200 = v300;
              v201 = v200[4];

              if (nw_parameters_get_use_long_outstanding_queries(v201))
              {
              }

              else
              {
                v202 = nw_endpoint_handler_copy_endpoint(v200);
                v203 = nw_endpoint_get_type(v202) == nw_endpoint_type_bonjour_service;

                if (v203)
                {
                  nw_resolver_cancel(loga[1].isa);
                }
              }
            }

            v27 = 1;
            p_super = v312;
            goto LABEL_238;
          }

          v100 = v300;
          v101 = (*(v300 + 284) & 0x20) == 0;

          if (!v101)
          {
            if (nw_endpoint_handler_get_logging_disabled(v100))
            {
              goto LABEL_194;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v104 = gconnectionLogObj;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
            {
              v222 = nw_endpoint_handler_get_id_string(v100);
              v223 = nw_endpoint_handler_dry_run_string(v100);
              v224 = nw_endpoint_handler_copy_endpoint(v100);
              v225 = nw_endpoint_get_logging_description(v224);
              v226 = nw_endpoint_handler_state_string(v100);
              v227 = nw_endpoint_handler_mode_string(v100);
              v228 = nw_endpoint_handler_copy_current_path(v100);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v222;
              *&buf[22] = 2082;
              v320 = v223;
              v321 = 2082;
              v322 = v225;
              v323 = 2082;
              v324 = v226;
              v325 = 2082;
              v326 = v227;
              v327 = 2114;
              v328 = v228;
              _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child failed after transport finished", buf, 0x48u);
            }

            goto LABEL_193;
          }

          v102 = v100;
          v103 = (*(v300 + 284) & 0x40) == 0;

          if (!v103)
          {
LABEL_194:
            v51 = loga;
            nw_endpoint_handler_handle_failure(v100);
            v100->event = 327682;
            nw_endpoint_handler_report(v100, 0, &v100->event.domain, 0);
            goto LABEL_195;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v104 = gconnectionLogObj;
          if (!os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
          {
LABEL_193:

            goto LABEL_194;
          }

          v105 = v102;

          v106 = v105;
          v107 = (*(v300 + 284) & 1) == 0;

          if (v107)
          {
            v108 = "";
          }

          else
          {
            v108 = "dry-run ";
          }

          v109 = nw_endpoint_handler_copy_endpoint(v106);
          v110 = v109;
          if (v109)
          {
            v111 = _nw_endpoint_get_logging_description(v109);
          }

          else
          {
            v111 = "<NULL>";
          }

          v150 = v106;
          v151 = v150;
          v152 = v150[30];
          if (v152 > 5)
          {
            v153 = "unknown-state";
          }

          else
          {
            v153 = off_1E6A31048[v152];
          }

          v154 = v151;
          v155 = v154;
          v156 = v293[29];
          if (v156 > 2)
          {
            switch(v156)
            {
              case 3:
                v157 = "proxy";
                goto LABEL_192;
              case 4:
                v157 = "fallback";
                goto LABEL_192;
              case 5:
                v157 = "transform";
                goto LABEL_192;
            }
          }

          else
          {
            switch(v156)
            {
              case 0:
                v157 = "path";
                goto LABEL_192;
              case 1:
                v157 = "resolver";
                goto LABEL_192;
              case 2:
                v157 = nw_endpoint_flow_mode_string(v154[33]);
LABEL_192:

                v170 = v155;
                os_unfair_lock_lock(v170 + 28);
                v171 = v170[8];
                os_unfair_lock_unlock(v170 + 28);

                *buf = 136447746;
                *&buf[4] = "nw_endpoint_resolver_receive_report";
                *&buf[12] = 2082;
                *&buf[14] = v105->id_str;
                *&buf[22] = 2082;
                v320 = v108;
                v321 = 2082;
                v322 = v111;
                v323 = 2082;
                v324 = v153;
                v325 = 2082;
                v326 = v157;
                v327 = 2114;
                v328 = v171;
                _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child failed after transport finished", buf, 0x48u);

                goto LABEL_193;
            }
          }

          v157 = "unknown-mode";
          goto LABEL_192;
        }

        if (*(v51 + 4) != v303)
        {
          if (v294 == 2 && v297 == 4)
          {
            p_super = nw_endpoint_handler_copy_endpoint(v303);
            if (nw_endpoint_get_type(p_super) == nw_endpoint_type_address)
            {
              v70 = v15;
              os_unfair_lock_lock(v70 + 28);
              v71 = *(v70 + 8);
              os_unfair_lock_unlock(v70 + 28);

              *type = 0;
              *buf = 0;
              *&buf[8] = 0;
              if (!nw_path_get_vpn_config_uuid(v71, buf, type, 1, 1))
              {
LABEL_98:

                goto LABEL_99;
              }

              memset(buf, 0, sizeof(buf));
              LODWORD(v320) = 0;
              v27 = nw_endpoint_fillout_v4v6_address(p_super, buf);
              if (v27)
              {
                if (nw_path_voluntary_agent_matches_address(v71, buf, 0))
                {
                  v72 = nw_endpoint_handler_copy_context(v70);
                  v313[0] = MEMORY[0x1E69E9820];
                  v313[1] = 3221225472;
                  v313[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke;
                  v313[3] = &unk_1E6A3D868;
                  v314 = v70;
                  nw_queue_context_async(v72, v313);

LABEL_78:
                  goto LABEL_238;
                }

                goto LABEL_98;
              }

              v229 = __nwlog_obj();
              *type = 136446210;
              *&type[4] = "nw_endpoint_resolver_receive_report";
              v230 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v229, 16, "%{public}s called with null success", type, 12);

              v316 = OS_LOG_TYPE_ERROR;
              v315 = 0;
              if (__nwlog_fault(v230, &v316, &v315))
              {
                if (v316 == OS_LOG_TYPE_FAULT)
                {
                  v231 = __nwlog_obj();
                  v232 = v316;
                  if (os_log_type_enabled(v231, v316))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_endpoint_resolver_receive_report";
                    _os_log_impl(&dword_181A37000, v231, v232, "%{public}s called with null success", type, 0xCu);
                  }
                }

                else if (v315 == 1)
                {
                  v233 = __nw_create_backtrace_string();
                  v231 = __nwlog_obj();
                  v234 = v316;
                  v235 = os_log_type_enabled(v231, v316);
                  if (v233)
                  {
                    if (v235)
                    {
                      *type = 136446466;
                      *&type[4] = "nw_endpoint_resolver_receive_report";
                      *&type[12] = 2082;
                      *&type[14] = v233;
                      _os_log_impl(&dword_181A37000, v231, v234, "%{public}s called with null success, dumping backtrace:%{public}s", type, 0x16u);
                    }

                    free(v233);
                    goto LABEL_328;
                  }

                  if (v235)
                  {
                    *type = 136446210;
                    *&type[4] = "nw_endpoint_resolver_receive_report";
                    _os_log_impl(&dword_181A37000, v231, v234, "%{public}s called with null success, no backtrace", type, 0xCu);
                  }
                }

                else
                {
                  v231 = __nwlog_obj();
                  v250 = v316;
                  if (os_log_type_enabled(v231, v316))
                  {
                    *type = 136446210;
                    *&type[4] = "nw_endpoint_resolver_receive_report";
                    _os_log_impl(&dword_181A37000, v231, v250, "%{public}s called with null success, backtrace limit exceeded", type, 0xCu);
                  }
                }
              }

LABEL_328:
              if (v230)
              {
                free(v230);
              }

              goto LABEL_78;
            }

LABEL_99:

            v53 = 0;
            v51 = loga;
            a4 = v296;
            goto LABEL_100;
          }

          if (v294 != 3 || (v78 = *(v51 + 5)) == 0 || !*(v51 + 7) || (v79 = *(v51 + 5)) == 0)
          {
            v53 = 0;
            goto LABEL_100;
          }

          p_super = nw_array_get_object_at_index(v79, (v78 - 1));
          if (p_super != v303)
          {
            goto LABEL_99;
          }

          v80 = nw_endpoint_handler_get_minimize_logging(v15);
          v81 = nw_endpoint_handler_get_logging_disabled(v15);
          v295 = p_super;
          if (v80)
          {
            p_isa = v51;
            if (v81)
            {
LABEL_95:
              v91 = p_isa[7];
              if (v91)
              {
                nw_queue_cancel_source(v91);
                p_isa[7] = 0;
              }

              goto LABEL_99;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v83 = gconnectionLogObj;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              v251 = nw_endpoint_handler_get_id_string(v300);
              v252 = nw_endpoint_handler_dry_run_string(v300);
              v253 = nw_endpoint_handler_copy_endpoint(v300);
              v254 = nw_endpoint_get_logging_description(v253);
              v255 = nw_endpoint_handler_state_string(v300);
              v256 = nw_endpoint_handler_mode_string(v300);
              v257 = nw_endpoint_handler_copy_current_path(v300);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v251;
              *&buf[22] = 2082;
              v320 = v252;
              v321 = 2082;
              v322 = v254;
              v323 = 2082;
              v324 = v255;
              v325 = 2082;
              v326 = v256;
              v327 = 2114;
              v328 = v257;
              _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child is proxy, cancelling happy eyeballs timer", buf, 0x48u);
            }
          }

          else
          {
            p_isa = v51;
            if (v81)
            {
              goto LABEL_95;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v83 = gconnectionLogObj;
            if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
            {
              v84 = nw_endpoint_handler_get_id_string(v15);
              v85 = nw_endpoint_handler_dry_run_string(v15);
              v86 = nw_endpoint_handler_copy_endpoint(v15);
              v87 = nw_endpoint_get_logging_description(v86);
              v88 = nw_endpoint_handler_state_string(v15);
              v89 = nw_endpoint_handler_mode_string(v15);
              v90 = nw_endpoint_handler_copy_current_path(v15);
              *buf = 136447746;
              *&buf[4] = "nw_endpoint_resolver_receive_report";
              *&buf[12] = 2082;
              *&buf[14] = v84;
              *&buf[22] = 2082;
              v320 = v85;
              v321 = 2082;
              v322 = v87;
              v323 = 2082;
              v324 = v88;
              v325 = 2082;
              v326 = v89;
              v327 = 2114;
              v328 = v90;
              _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child is proxy, cancelling happy eyeballs timer", buf, 0x48u);
            }
          }

          p_isa = &loga->isa;
          p_super = v295;
          goto LABEL_95;
        }

        if (v297 != 4 || (v73 = v15, v74 = (v15[71] & 8) == 0, v73, v15 = v300, v74) || (v75 = nw_endpoint_handler_copy_parent(v73), v76 = v75 == 0, v75, v15 = v300, !v76))
        {
          v77 = v15;
          v77[30] = v297;

          nw_endpoint_handler_report(v77, 0, v296, 0);
          goto LABEL_195;
        }

        v160 = nw_endpoint_handler_get_minimize_logging(v73);
        v161 = nw_endpoint_handler_get_logging_disabled(v73);
        if (v160)
        {
          if (v161)
          {
            goto LABEL_186;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v162 = gconnectionLogObj;
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
          {
            v236 = nw_endpoint_handler_get_id_string(v73);
            v237 = nw_endpoint_handler_dry_run_string(v73);
            v238 = nw_endpoint_handler_copy_endpoint(v73);
            v239 = nw_endpoint_get_logging_description(v238);
            v240 = nw_endpoint_handler_state_string(v73);
            v241 = nw_endpoint_handler_mode_string(v73);
            v242 = nw_endpoint_handler_copy_current_path(v73);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = v236;
            *&buf[22] = 2082;
            v320 = v237;
            v321 = 2082;
            v322 = v239;
            v323 = 2082;
            v324 = v240;
            v325 = 2082;
            v326 = v241;
            v327 = 2114;
            v328 = v242;
            _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected child failed when a better path is available", buf, 0x48u);
          }
        }

        else
        {
          if (v161)
          {
LABEL_186:
            v51 = loga;
            nw_endpoint_handler_handle_failure(v73);
            goto LABEL_195;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v162 = gconnectionLogObj;
          if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
          {
            v163 = nw_endpoint_handler_get_id_string(v73);
            v164 = nw_endpoint_handler_dry_run_string(v73);
            v165 = nw_endpoint_handler_copy_endpoint(v73);
            v166 = nw_endpoint_get_logging_description(v165);
            v167 = nw_endpoint_handler_state_string(v73);
            v168 = nw_endpoint_handler_mode_string(v73);
            v169 = nw_endpoint_handler_copy_current_path(v73);
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_resolver_receive_report";
            *&buf[12] = 2082;
            *&buf[14] = v163;
            *&buf[22] = 2082;
            v320 = v164;
            v321 = 2082;
            v322 = v166;
            v323 = 2082;
            v324 = v167;
            v325 = 2082;
            v326 = v168;
            v327 = 2114;
            v328 = v169;
            _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connected child failed when a better path is available", buf, 0x48u);
          }
        }

        goto LABEL_186;
      }

      v27 = 1;
      if (v297 | v294 || !a4 || *a4 != 1 || a4[1] != 1)
      {
        goto LABEL_240;
      }

      p_super = nw_endpoint_handler_copy_parameters(v303);
      loga = v51;
      if (!nw_parameters_get_desperate_ivan(p_super))
      {
        goto LABEL_238;
      }

      v55 = nw_endpoint_handler_copy_parameters(v15);
      if (nw_parameters_get_desperate_ivan(v55))
      {
LABEL_69:

        v27 = 1;
        goto LABEL_238;
      }

      v56 = nw_endpoint_handler_copy_endpoint(v303);
      if (nw_endpoint_get_type(v56) != nw_endpoint_type_address || nw_endpoint_get_address_family(v56) != 30)
      {
LABEL_68:

        goto LABEL_69;
      }

      *type = 0;
      *&type[8] = type;
      *&type[16] = 0x2020000000;
      v318 = 0;
      v57 = loga[5].isa;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_121;
      aBlock[3] = &unk_1E6A3BB28;
      v305 = v56;
      v306 = type;
      if (!v57 || (_nw_array_apply(v57, aBlock), (*(*&type[8] + 24) & 1) == 0))
      {
LABEL_67:

        _Block_object_dispose(type, 8);
        goto LABEL_68;
      }

      v58 = nw_endpoint_handler_get_minimize_logging(v15);
      v59 = nw_endpoint_handler_get_logging_disabled(v15);
      if (v58)
      {
        if (v59)
        {
          goto LABEL_66;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v279 = gconnectionLogObj;
        if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
        {
          v299 = nw_endpoint_handler_get_id_string(v300);
          v280 = nw_endpoint_handler_dry_run_string(v300);
          v281 = nw_endpoint_handler_copy_endpoint(v300);
          v282 = nw_endpoint_get_logging_description(v281);
          v283 = nw_endpoint_handler_state_string(v300);
          v284 = nw_endpoint_handler_mode_string(v300);
          v285 = nw_endpoint_handler_copy_current_path(v300);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v299;
          *&buf[22] = 2082;
          v320 = v280;
          v321 = 2082;
          v322 = v282;
          v323 = 2082;
          v324 = v283;
          v325 = 2082;
          v326 = v284;
          v327 = 2114;
          v328 = v285;
          _os_log_impl(&dword_181A37000, v279, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan, address already started", buf, 0x48u);
        }

        v60 = v279;
      }

      else
      {
        if (v59)
        {
LABEL_66:
          nw_endpoint_handler_cancel(v303, 0, 1);
          goto LABEL_67;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v60 = gconnectionLogObj;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = nw_endpoint_handler_get_id_string(v15);
          v62 = nw_endpoint_handler_dry_run_string(v15);
          v298 = v60;
          v63 = nw_endpoint_handler_copy_endpoint(v15);
          v64 = nw_endpoint_get_logging_description(v63);
          v65 = nw_endpoint_handler_state_string(v15);
          v66 = nw_endpoint_handler_mode_string(v15);
          v67 = v15;
          v68 = v66;
          v69 = nw_endpoint_handler_copy_current_path(v67);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v61;
          *&buf[22] = 2082;
          v320 = v62;
          v321 = 2082;
          v322 = v64;
          v323 = 2082;
          v324 = v65;
          v325 = 2082;
          v326 = v68;
          v327 = 2114;
          v328 = v69;
          _os_log_impl(&dword_181A37000, v298, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan, address already started", buf, 0x48u);

          v60 = v298;
        }
      }

      goto LABEL_66;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v17 = gconnectionLogObj;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
LABEL_41:

      v15 = v300;
      a4 = v296;
      goto LABEL_42;
    }

    v18 = v15;

    v19 = v18;
    v20 = *(v15 + 284);

    if (v20)
    {
      v21 = "dry-run ";
    }

    else
    {
      v21 = "";
    }

    log = v17;
    v22 = nw_endpoint_handler_copy_endpoint(v19);
    v23 = v22;
    v288 = v22;
    if (v22)
    {
      v24 = _nw_endpoint_get_logging_description(v22);
    }

    else
    {
      v24 = "<NULL>";
    }

    v28 = v19;
    v29 = v28;
    v30 = v28[30];
    if (v30 > 5)
    {
      v31 = "unknown-state";
    }

    else
    {
      v31 = off_1E6A31048[v30];
    }

    v32 = v29;
    v33 = v32;
    v34 = v293[29];
    if (v34 > 2)
    {
      switch(v34)
      {
        case 3:
          v35 = "proxy";
          goto LABEL_37;
        case 4:
          v35 = "fallback";
          goto LABEL_37;
        case 5:
          v35 = "transform";
          goto LABEL_37;
      }
    }

    else
    {
      switch(v34)
      {
        case 0:
          v35 = "path";
          goto LABEL_37;
        case 1:
          v35 = "resolver";
          goto LABEL_37;
        case 2:
          v35 = nw_endpoint_flow_mode_string(v32[33]);
LABEL_37:

          v36 = v33;
          os_unfair_lock_lock(v36 + 28);
          v37 = v36[8];
          os_unfair_lock_unlock(v36 + 28);

          v38 = v37;
          v39 = nw_endpoint_handler_get_id_string(v303);
          v40 = nw_endpoint_handler_dry_run_string(v303);
          v289 = v38;
          v41 = nw_endpoint_handler_copy_endpoint(v303);
          v42 = v41;
          v286 = v40;
          v287 = v39;
          if (v41)
          {
            v43 = _nw_endpoint_get_logging_description(v41);
            v44 = v35;
            v45 = v31;
            v46 = v21;
          }

          else
          {
            v44 = v35;
            v45 = v31;
            v46 = v21;
            v43 = "<NULL>";
          }

          v47 = (v18 + 46);

          v48 = nw_endpoint_handler_state_string(v303);
          v49 = nw_endpoint_handler_mode_string(v303);
          v50 = nw_endpoint_handler_copy_current_path(v303);
          *buf = 136449282;
          *&buf[4] = "nw_endpoint_resolver_receive_report";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          *&buf[22] = 2082;
          v320 = v46;
          v321 = 2082;
          v322 = v24;
          v323 = 2082;
          v324 = v45;
          v325 = 2082;
          v326 = v44;
          v327 = 2114;
          v328 = v289;
          v329 = 2082;
          v330 = v287;
          v331 = 2082;
          v332 = v286;
          v333 = 2082;
          v334 = v43;
          v335 = 2082;
          v336 = v48;
          v337 = 2082;
          v338 = v49;
          v339 = 2114;
          v340 = v50;
          v17 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received child report: [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          goto LABEL_41;
      }
    }

    v35 = "unknown-mode";
    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    if (v14 > 5)
    {
      v26 = "unknown-mode";
    }

    else
    {
      v26 = off_1E6A31018[v14];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_resolver_receive_report";
    *&buf[12] = 2082;
    *&buf[14] = v26;
    *&buf[22] = 2082;
    v320 = "resolver";
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_18:
  v27 = 0;
LABEL_241:

  return v27;
}

void sub_181B926EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_handler_get_child_timeout_nanos(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_endpoint_handler_copy_endpoint(v1);
    if (nw_endpoint_get_type(v3) == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(v3);
    }

    else
    {
      address = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    memset(buf, 0, sizeof(buf));
    v5 = v2;
    os_unfair_lock_lock(v2 + 28);
    v6 = v5[8];
    os_unfair_lock_unlock(v2 + 28);

    if (v6 && nw_path_fillout_route_stats(v6, buf, 0))
    {
      if (DWORD2(v34))
      {
        LODWORD(v7) = 8 * HIDWORD(v34) + (DWORD2(v34) >> 2);
        if (v7 <= DWORD2(v34))
        {
          v7 = DWORD2(v34);
        }

        else
        {
          v7 = v7;
        }

        v8 = 31250 * (v7 + DWORD2(v34));
        goto LABEL_23;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    if (address && address->sa_family == 2)
    {
      v8 = 250000000;
      v9 = nw_setting_tcpconn_ipv4_delay;
    }

    else
    {
      v8 = 250000000;
      v9 = nw_setting_tcpconn_ipv6_delay;
    }

    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        int64 = xpc_dictionary_get_int64(sCachedSettings, v9);
        pthread_mutex_unlock(&sSettingsMutex);
        if (int64)
        {
          v8 = 1000000 * int64;
        }
      }

      else
      {
        pthread_mutex_unlock(&sSettingsMutex);
      }
    }

LABEL_23:
    v11 = nw_setting_tcpconn_min_delay;
    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        v12 = xpc_dictionary_get_int64(sCachedSettings, v11);
      }

      else
      {
        v12 = 0;
      }

      pthread_mutex_unlock(&sSettingsMutex);
    }

    else
    {
      v12 = 0;
    }

    v13 = nw_setting_tcpconn_max_delay;
    networkd_settings_init();
    if (sCachedSettings)
    {
      pthread_mutex_lock(&sSettingsMutex);
      if (sCachedSettings)
      {
        v14 = xpc_dictionary_get_int64(sCachedSettings, v13);
      }

      else
      {
        v14 = 0;
      }

      pthread_mutex_unlock(&sSettingsMutex);
      v15 = 100000000;
      if (v12)
      {
        v15 = v12;
      }

      if (v14)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v15 = 100000000;
      if (v12)
      {
        v15 = v12;
      }
    }

    v14 = 2000000000;
LABEL_40:
    if (v8 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v8;
    }

    if (v8 >= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    goto LABEL_47;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null child_handler", buf, 12);

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
        *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null child_handler", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v21, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null child_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_64;
      }

      if (v25)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null child_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_child_timeout_nanos";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null child_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_64:
  if (v20)
  {
    free(v20);
  }

  v17 = 100000000;
LABEL_47:

  return v17;
}

uint64_t common_prefix_length(const sockaddr_in_4_6 *a1, const sockaddr_in_4_6 *a2)
{
  if (a1->var0.sa_family != 30 || a2->var0.sa_family != 30)
  {
    return 0;
  }

  v2 = a2->var3.sin6_addr.__u6_addr8[0];
  v3 = a1->var3.sin6_addr.__u6_addr8[0];
  if (v2 == v3)
  {
    v2 = a2->var3.sin6_addr.__u6_addr8[1];
    v3 = a1->var3.sin6_addr.__u6_addr8[1];
    if (v2 == v3)
    {
      v2 = a2->var3.sin6_addr.__u6_addr8[2];
      v3 = a1->var3.sin6_addr.__u6_addr8[2];
      if (v2 == v3)
      {
        v2 = a2->var3.sin6_addr.__u6_addr8[3];
        v3 = a1->var3.sin6_addr.__u6_addr8[3];
        if (v2 == v3)
        {
          v2 = a2->var3.sin6_addr.__u6_addr8[4];
          v3 = a1->var3.sin6_addr.__u6_addr8[4];
          if (v2 == v3)
          {
            v2 = a2->var3.sin6_addr.__u6_addr8[5];
            v3 = a1->var3.sin6_addr.__u6_addr8[5];
            if (v2 == v3)
            {
              v2 = a2->var3.sin6_addr.__u6_addr8[6];
              v3 = a1->var3.sin6_addr.__u6_addr8[6];
              if (v2 == v3)
              {
                v2 = a2->var3.sin6_addr.__u6_addr8[7];
                v3 = a1->var3.sin6_addr.__u6_addr8[7];
                if (v2 == v3)
                {
                  return 64;
                }

                result = 56;
              }

              else
              {
                result = 48;
              }
            }

            else
            {
              result = 40;
            }
          }

          else
          {
            result = 32;
          }
        }

        else
        {
          result = 24;
        }
      }

      else
      {
        result = 16;
      }
    }

    else
    {
      result = 8;
    }
  }

  else
  {
    result = 0;
  }

  for (i = v3 ^ v2; (i & 0x80) == 0; i *= 2)
  {
    result = (result + 1);
  }

  return result;
}

uint64_t sub_181B93020(char *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  while (1)
  {
    if (*&v2[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint])
    {
      v4 = *&v2[OBJC_IVAR____TtC7Network8Endpoint_flags];

      if ((v4 & 0x20) != 0)
      {

        v7 = 1;
        v3 = v1;
        goto LABEL_9;
      }
    }

    else
    {
    }

    v5 = *&v1[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
    v6 = v5;

    if (!v5)
    {
      break;
    }

    v2 = v6;
    v1 = v5;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a3);
    connected_flow_count = nw_context_endpoint_get_connected_flow_count(a1[4], v5);
    v10 = a1 + 6;
    goto LABEL_5;
  }

  v9 = nw_context_endpoint_get_connected_flow_count(a1[4], v5);
  v10 = a1 + 6;
  if (v9 > *(*(a1[6] + 8) + 24))
  {
    v11 = *(a1[5] + 8);
    v12 = v9;
    objc_storeStrong((v11 + 40), a3);
    connected_flow_count = v12;
LABEL_5:
    *(*(*v10 + 8) + 24) = connected_flow_count;
  }

  return 1;
}

uint64_t nw_context_endpoint_get_connected_flow_count(void *a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      if ((v3[19] & 8) == 0)
      {
        dispatch_assert_queue_V2(v3[1]);
      }

      v6 = nw_context_copy_cache_context(v3);

      v7 = v5;
      v8 = _nw_endpoint_get_type(v7);

      v9 = 6;
      if (v8 == 2)
      {
        v9 = 5;
      }

      if (v8 == 1)
      {
        v9 = 4;
      }

      isa = v6[3][v9].isa;
      if (isa)
      {
        node = nw_hash_table_get_node(isa, v7, 0);
        if (node)
        {
          v12 = nw_hash_table_get_node(node[2], v7, 0);
          if (v12)
          {
            v13 = v12[2];
            v14 = v13;
            if (v13)
            {
              connected_flow_count = _nw_endpoint_get_connected_flow_count(v13);
LABEL_14:

LABEL_85:
              v3 = v6;
              goto LABEL_86;
            }

            v37 = __nwlog_obj();
            *buf = 136446210;
            v52 = "nw_endpoint_get_connected_flow_count";
            v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null endpoint", buf, 12);

            type = OS_LOG_TYPE_ERROR;
            v49 = 0;
            if (__nwlog_fault(v38, &type, &v49))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v39 = __nwlog_obj();
                v40 = type;
                if (os_log_type_enabled(v39, type))
                {
                  *buf = 136446210;
                  v52 = "nw_endpoint_get_connected_flow_count";
                  _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null endpoint", buf, 0xCu);
                }
              }

              else if (v49 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v39 = __nwlog_obj();
                v45 = type;
                v46 = os_log_type_enabled(v39, type);
                if (backtrace_string)
                {
                  if (v46)
                  {
                    *buf = 136446466;
                    v52 = "nw_endpoint_get_connected_flow_count";
                    v53 = 2082;
                    v54 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v39, v45, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
                  goto LABEL_90;
                }

                if (v46)
                {
                  *buf = 136446210;
                  v52 = "nw_endpoint_get_connected_flow_count";
                  _os_log_impl(&dword_181A37000, v39, v45, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v39 = __nwlog_obj();
                v47 = type;
                if (os_log_type_enabled(v39, type))
                {
                  *buf = 136446210;
                  v52 = "nw_endpoint_get_connected_flow_count";
                  _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_90:
            if (v38)
            {
              free(v38);
            }

            connected_flow_count = 0;
            goto LABEL_14;
          }
        }

LABEL_84:
        connected_flow_count = 0;
        goto LABEL_85;
      }

      v24 = __nwlog_obj();
      *buf = 136446210;
      v52 = "nw_context_endpoint_get_connected_flow_count";
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null hash_table", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v49 = 0;
      if (__nwlog_fault(v25, &type, &v49))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v52 = "nw_context_endpoint_get_connected_flow_count";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null hash_table", buf, 0xCu);
          }
        }

        else if (v49 == 1)
        {
          v34 = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v35 = type;
          v36 = os_log_type_enabled(v26, type);
          if (v34)
          {
            if (v36)
            {
              *buf = 136446466;
              v52 = "nw_context_endpoint_get_connected_flow_count";
              v53 = 2082;
              v54 = v34;
              _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v34);
            goto LABEL_82;
          }

          if (v36)
          {
            *buf = 136446210;
            v52 = "nw_context_endpoint_get_connected_flow_count";
            _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v52 = "nw_context_endpoint_get_connected_flow_count";
            _os_log_impl(&dword_181A37000, v26, v43, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_82:
      if (v25)
      {
        free(v25);
      }

      goto LABEL_84;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_context_endpoint_get_connected_flow_count";
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v21, &type, &v49))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v49 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v22, type);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          v52 = "nw_context_endpoint_get_connected_flow_count";
          v53 = 2082;
          v54 = v31;
          _os_log_impl(&dword_181A37000, v22, v32, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_76;
      }

      if (v33)
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v22, v32, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v22, v42, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_76:
    if (v21)
    {
      free(v21);
    }

    connected_flow_count = 0;
    goto LABEL_86;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v52 = "nw_context_endpoint_get_connected_flow_count";
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null context", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v49 = 0;
  if (__nwlog_fault(v17, &type, &v49))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v49 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v18, type);
      if (v28)
      {
        if (v30)
        {
          *buf = 136446466;
          v52 = "nw_context_endpoint_get_connected_flow_count";
          v53 = 2082;
          v54 = v28;
          _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_70;
      }

      if (v30)
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v52 = "nw_context_endpoint_get_connected_flow_count";
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_70:
  if (v17)
  {
    free(v17);
  }

  v3 = 0;
  connected_flow_count = 0;
LABEL_86:

  return connected_flow_count;
}

uint64_t ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a3);
    active_instance_count = nw_context_endpoint_get_active_instance_count(a1[4], v5);
    v10 = a1 + 6;
    goto LABEL_5;
  }

  v9 = nw_context_endpoint_get_active_instance_count(a1[4], v5);
  v10 = a1 + 6;
  if (v9 > *(*(a1[6] + 8) + 24))
  {
    v11 = *(a1[5] + 8);
    v12 = v9;
    objc_storeStrong((v11 + 40), a3);
    active_instance_count = v12;
LABEL_5:
    *(*(*v10 + 8) + 24) = active_instance_count;
  }

  return 1;
}

uint64_t nw_context_endpoint_get_active_instance_count(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_endpoint_get_active_instance_count";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v19, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_endpoint_get_active_instance_count";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_59;
        }

        if (v32)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v20, v39, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_59:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_73;
  }

  if (!v4)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_endpoint_get_active_instance_count";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null endpoint", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v23, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null endpoint", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v24, type);
        if (v33)
        {
          if (v35)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_endpoint_get_active_instance_count";
            *&buf[12] = 2082;
            *&buf[14] = v33;
            _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_64;
        }

        if (v35)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v24, v34, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_64:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_73;
  }

  if ((*(v3 + 152) & 8) == 0)
  {
    dispatch_assert_queue_V2(*(v3 + 1));
  }

  v6 = v5;
  has_proxy_parent = _nw_endpoint_has_proxy_parent(v6);

  if (has_proxy_parent)
  {
    v8 = nw_context_copy_globals_context(v3);
  }

  else
  {
    v8 = nw_context_copy_cache_context(v3);
  }

  v9 = v8;

  v10 = v6;
  v11 = _nw_endpoint_get_type(v10);

  v12 = 48;
  if (v11 == 2)
  {
    v12 = 40;
  }

  if (v11 == 1)
  {
    v12 = 32;
  }

  v13 = *(v9[3] + v12);
  if (!v13)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_context_endpoint_get_active_instance_count";
    v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null hash_table", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v27, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null hash_table", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v37 = type;
        v38 = os_log_type_enabled(v28, type);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            *&buf[4] = "nw_context_endpoint_get_active_instance_count";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null hash_table, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_70;
        }

        if (v38)
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null hash_table, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_context_endpoint_get_active_instance_count";
          _os_log_impl(&dword_181A37000, v28, v41, "%{public}s called with null hash_table, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v27)
    {
      free(v27);
    }

LABEL_73:
    v16 = 0;
    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v46 = 0;
  node = nw_hash_table_get_node(v13, v10, 0);
  if (node)
  {
    v15 = node[2];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __nw_context_endpoint_get_active_instance_count_block_invoke;
    v42[3] = &unk_1E6A2CE68;
    v42[4] = buf;
    nw_hash_table_apply(v15, v42);
  }

  v16 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

LABEL_16:
  return v16;
}

id nw_protocol_copy_resolver_definition(void)
{
  if (nw_protocol_copy_resolver_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_resolver_definition(void)::onceToken, &__block_literal_global_196);
  }

  v1 = nw_protocol_copy_resolver_definition(void)::resolver_definition;

  return v1;
}

void nw_association_set_cached_content_for_protocol(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v102 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7)
  {
    v69 = __nwlog_obj();
    *buf = 136446210;
    v93 = "nw_association_set_cached_content_for_protocol";
    v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s called with null association", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v90 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v70, &type, &v90))
    {
      goto LABEL_147;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v71 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v93 = "nw_association_set_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v71, v72, "%{public}s called with null association", buf, 0xCu);
      }
    }

    else if (v90 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v71 = __nwlog_obj();
      v76 = type;
      v77 = os_log_type_enabled(v71, type);
      if (backtrace_string)
      {
        if (v77)
        {
          *buf = 136446466;
          v93 = "nw_association_set_cached_content_for_protocol";
          v94 = 2082;
          v95 = backtrace_string;
          _os_log_impl(&dword_181A37000, v71, v76, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_147:
        if (!v70)
        {
          goto LABEL_108;
        }

LABEL_148:
        free(v70);
        goto LABEL_108;
      }

      if (v77)
      {
        *buf = 136446210;
        v93 = "nw_association_set_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v71, v76, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v71 = __nwlog_obj();
      v81 = type;
      if (os_log_type_enabled(v71, type))
      {
        *buf = 136446210;
        v93 = "nw_association_set_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v71, v81, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_146:

    goto LABEL_147;
  }

  if (v8)
  {
    v10 = nw_path_parameters_copy_context(*(v7 + 2));
    nw_context_assert_queue(v10);
    internal = *(v7 + 7);
    if (!internal)
    {
      internal = nw_hash_table_create_internal(5u, 48, nw_association_get_key, nw_association_key_hash, nw_association_matches_key, nw_association_release, 0);
      if (!internal)
      {
        *(v7 + 7) = 0;
        goto LABEL_107;
      }

      *(internal + 56) &= ~2u;
      *(v7 + 7) = internal;
    }

    node = nw_hash_table_get_node(internal, v9, 0);
    if (!node)
    {
      goto LABEL_52;
    }

    v13 = node;
    v14 = node[9];
    if (v14)
    {
      if (v14 == a3)
      {
        node[8] = a4;
        nw_context_remove_cache_entry(v10, node + 4);
        nw_context_add_cache_entry(v10, v13 + 4);
        goto LABEL_107;
      }

      nw_protocol_definition_deallocate_cache_entry(v9, v14);
    }

    nw_context_remove_cache_entry(v10, &v13[4]);
    if (nw_hash_table_remove_node(*(v7 + 7), v13) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v7 + 2)))
    {
LABEL_52:
      if (a3)
      {
        type = OS_LOG_TYPE_DEFAULT;
        v36 = *(v7 + 7);
        v37 = v9;
        v38 = nw_hash_table_add_object(v36, v37, &type);
        if (v38)
        {
          v39 = v38;
          if (type & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v7 + 2)))
          {
LABEL_106:
            v39[8] = a4;
            v39[9] = a3;
            nw_context_add_cache_entry(v10, v39 + 4);
            goto LABEL_107;
          }

          v86 = a3;
          v88 = a4;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v40 = gconnectionLogObj;
          v41 = *(v7 + 1);
          v42 = v41;
          if (v41)
          {
            logging_description = _nw_endpoint_get_logging_description(v41);
          }

          else
          {
            logging_description = "<NULL>";
          }

          *buf = 136446978;
          v93 = "nw_association_set_cached_content_for_protocol";
          v94 = 2082;
          v95 = logging_description;
          v96 = 2048;
          v97 = v37;
          v98 = 2048;
          v99 = v39;
          LODWORD(v83) = 42;
          v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p)", buf, v83);

          v90 = OS_LOG_TYPE_ERROR;
          v89 = 0;
          v52 = v84;
          if (!__nwlog_fault(v84, &v90, &v89))
          {
LABEL_103:
            if (v52)
            {
              free(v52);
            }

            a3 = v86;
            a4 = v88;
            goto LABEL_106;
          }

          if (v90 == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v54 = v90;
            if (os_log_type_enabled(v53, v90))
            {
              v55 = *(v7 + 1);
              v56 = v55;
              if (v55)
              {
                v57 = _nw_endpoint_get_logging_description(v55);
              }

              else
              {
                v57 = "<NULL>";
              }

              *buf = 136446978;
              v93 = "nw_association_set_cached_content_for_protocol";
              v94 = 2082;
              v95 = v57;
              v96 = 2048;
              v97 = v37;
              v98 = 2048;
              v99 = v39;
              _os_log_impl(&dword_181A37000, v53, v54, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p)", buf, 0x2Au);
            }
          }

          else if (v89 == 1)
          {
            v58 = __nw_create_backtrace_string();
            if (v58)
            {
              v59 = v58;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v60 = gconnectionLogObj;
              v61 = v90;
              if (os_log_type_enabled(v60, v90))
              {
                v62 = nw_endpoint_get_logging_description(*(v7 + 1));
                *buf = 136447234;
                v93 = "nw_association_set_cached_content_for_protocol";
                v94 = 2082;
                v95 = v62;
                v96 = 2048;
                v97 = v37;
                v98 = 2048;
                v99 = v39;
                v100 = 2082;
                v101 = v59;
                _os_log_impl(&dword_181A37000, v60, v61, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p), dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v59);
              goto LABEL_102;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v67 = v90;
            if (os_log_type_enabled(v53, v90))
            {
              v68 = nw_endpoint_get_logging_description(*(v7 + 1));
              *buf = 136446978;
              v93 = "nw_association_set_cached_content_for_protocol";
              v94 = 2082;
              v95 = v68;
              v96 = 2048;
              v97 = v37;
              v98 = 2048;
              v99 = v39;
              _os_log_impl(&dword_181A37000, v53, v67, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p), no backtrace", buf, 0x2Au);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v53 = gconnectionLogObj;
            v64 = v90;
            if (os_log_type_enabled(v53, v90))
            {
              v65 = nw_endpoint_get_logging_description(*(v7 + 1));
              *buf = 136446978;
              v93 = "nw_association_set_cached_content_for_protocol";
              v94 = 2082;
              v95 = v65;
              v96 = 2048;
              v97 = v37;
              v98 = 2048;
              v99 = v39;
              _os_log_impl(&dword_181A37000, v53, v64, "%{public}s <nw_association %{public}s> failed to add cached content for protocol %p (node %p), backtrace limit exceeded", buf, 0x2Au);
            }
          }

LABEL_102:
          v52 = v84;
          goto LABEL_103;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        *buf = 136446210;
        v93 = "nw_association_set_cached_content_for_protocol";
        LODWORD(v83) = 12;
        v45 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s nw_hash_table_add_object failed", buf, v83);

        v90 = OS_LOG_TYPE_ERROR;
        v89 = 0;
        if (__nwlog_fault(v45, &v90, &v89))
        {
          if (v90 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            v47 = v90;
            if (os_log_type_enabled(v46, v90))
            {
              *buf = 136446210;
              v93 = "nw_association_set_cached_content_for_protocol";
              _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_hash_table_add_object failed", buf, 0xCu);
            }
          }

          else if (v89 == 1)
          {
            v48 = __nw_create_backtrace_string();
            if (v48)
            {
              v49 = v48;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v50 = gLogObj;
              v51 = v90;
              if (os_log_type_enabled(v50, v90))
              {
                *buf = 136446466;
                v93 = "nw_association_set_cached_content_for_protocol";
                v94 = 2082;
                v95 = v49;
                _os_log_impl(&dword_181A37000, v50, v51, "%{public}s nw_hash_table_add_object failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v49);
              if (!v45)
              {
                goto LABEL_107;
              }

              goto LABEL_98;
            }

            v46 = __nwlog_obj();
            v66 = v90;
            if (os_log_type_enabled(v46, v90))
            {
              *buf = 136446210;
              v93 = "nw_association_set_cached_content_for_protocol";
              _os_log_impl(&dword_181A37000, v46, v66, "%{public}s nw_hash_table_add_object failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v46 = gLogObj;
            v63 = v90;
            if (os_log_type_enabled(v46, v90))
            {
              *buf = 136446210;
              v93 = "nw_association_set_cached_content_for_protocol";
              _os_log_impl(&dword_181A37000, v46, v63, "%{public}s nw_hash_table_add_object failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (v45)
        {
LABEL_98:
          free(v45);
        }
      }

LABEL_107:

      goto LABEL_108;
    }

    v85 = a3;
    v87 = a4;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v15 = gconnectionLogObj;
    v16 = *(v7 + 1);
    v17 = v16;
    if (v16)
    {
      v18 = _nw_endpoint_get_logging_description(v16);
    }

    else
    {
      v18 = "<NULL>";
    }

    *buf = 136446722;
    v93 = "nw_association_set_cached_content_for_protocol";
    v94 = 2082;
    v95 = v18;
    v96 = 2048;
    v97 = v13;
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v90 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v19, &type, &v90))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          v22 = *(v7 + 1);
          v23 = v22;
          if (v22)
          {
            v24 = _nw_endpoint_get_logging_description(v22);
          }

          else
          {
            v24 = "<NULL>";
          }

          *buf = 136446722;
          v93 = "nw_association_set_cached_content_for_protocol";
          v94 = 2082;
          v95 = v24;
          v96 = 2048;
          v97 = v13;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 0x20u);
        }
      }

      else if (v90 == OS_LOG_TYPE_INFO)
      {
        v25 = __nw_create_backtrace_string();
        if (v25)
        {
          v26 = v25;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v27 = gconnectionLogObj;
          v28 = type;
          if (os_log_type_enabled(v27, type))
          {
            v29 = nw_endpoint_get_logging_description(*(v7 + 1));
            *buf = 136446978;
            v93 = "nw_association_set_cached_content_for_protocol";
            v94 = 2082;
            v95 = v29;
            v96 = 2048;
            v97 = v13;
            v98 = 2082;
            v99 = v26;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v26);
          goto LABEL_49;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v34 = type;
        if (os_log_type_enabled(v20, type))
        {
          v35 = nw_endpoint_get_logging_description(*(v7 + 1));
          *buf = 136446722;
          v93 = "nw_association_set_cached_content_for_protocol";
          v94 = 2082;
          v95 = v35;
          v96 = 2048;
          v97 = v13;
          _os_log_impl(&dword_181A37000, v20, v34, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        v30 = type;
        if (os_log_type_enabled(v20, type))
        {
          v31 = *(v7 + 1);
          v32 = v31;
          if (v31)
          {
            v33 = _nw_endpoint_get_logging_description(v31);
          }

          else
          {
            v33 = "<NULL>";
          }

          *buf = 136446722;
          v93 = "nw_association_set_cached_content_for_protocol";
          v94 = 2082;
          v95 = v33;
          v96 = 2048;
          v97 = v13;
          _os_log_impl(&dword_181A37000, v20, v30, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_49:
    if (v19)
    {
      free(v19);
    }

    a3 = v85;
    a4 = v87;
    goto LABEL_52;
  }

  v73 = __nwlog_obj();
  *buf = 136446210;
  v93 = "nw_association_set_cached_content_for_protocol";
  v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v73, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v90 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v70, &type, &v90))
  {
    goto LABEL_147;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v71 = __nwlog_obj();
    v74 = type;
    if (os_log_type_enabled(v71, type))
    {
      *buf = 136446210;
      v93 = "nw_association_set_cached_content_for_protocol";
      _os_log_impl(&dword_181A37000, v71, v74, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_146;
  }

  if (v90 != OS_LOG_TYPE_INFO)
  {
    v71 = __nwlog_obj();
    v82 = type;
    if (os_log_type_enabled(v71, type))
    {
      *buf = 136446210;
      v93 = "nw_association_set_cached_content_for_protocol";
      _os_log_impl(&dword_181A37000, v71, v82, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_146;
  }

  v78 = __nw_create_backtrace_string();
  v71 = __nwlog_obj();
  v79 = type;
  v80 = os_log_type_enabled(v71, type);
  if (!v78)
  {
    if (v80)
    {
      *buf = 136446210;
      v93 = "nw_association_set_cached_content_for_protocol";
      _os_log_impl(&dword_181A37000, v71, v79, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_146;
  }

  if (v80)
  {
    *buf = 136446466;
    v93 = "nw_association_set_cached_content_for_protocol";
    v94 = 2082;
    v95 = v78;
    _os_log_impl(&dword_181A37000, v71, v79, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v78);
  if (v70)
  {
    goto LABEL_148;
  }

LABEL_108:
}

char *nw_path_create_flow_result_from_tlv(NWConcrete_nw_path *a1, const unsigned __int8 *a2, unint64_t a3)
{
  v201 = *MEMORY[0x1E69E9840];
  v191 = a1;
  if (a3 <= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_create_flow_result_from_tlv";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s NECP buffer too short %zu", buf, 22);

    v199[0] = 16;
    LOBYTE(v196) = 0;
    if (!__nwlog_fault(v6, v199, &v196))
    {
      goto LABEL_373;
    }

    if (v199[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = v199[0];
      if (os_log_type_enabled(v7, v199[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s NECP buffer too short %zu", buf, 0x16u);
      }
    }

    else
    {
      if (v196 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v199[0];
        v14 = os_log_type_enabled(v12, v199[0]);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 2048;
            *&buf[14] = a3;
            *&buf[22] = 2082;
            *&buf[24] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_375;
          }

          goto LABEL_374;
        }

        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
        }

LABEL_373:
        if (!v6)
        {
LABEL_375:
          v15 = 0;
          goto LABEL_401;
        }

LABEL_374:
        free(v6);
        goto LABEL_375;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v16 = v199[0];
      if (os_log_type_enabled(v7, v199[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = a3;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_373;
  }

  v9 = _nw_path_flow_create();
  if (!v9)
  {
    v15 = 0;
    goto LABEL_400;
  }

  v192 = v9;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  if (a3 == 5)
  {
    v190 = 0;
    v189 = 0;
    v10 = 0;
    goto LABEL_384;
  }

  v190 = 0;
  v10 = 0;
  v189 = 0;
  while (1)
  {
    v17 = a2[v10];
    v18 = *&a2[v10 + 1];
    if (!v18)
    {
      goto LABEL_49;
    }

    if (v18 <= 0xFFFFFFF9 && a3 >= v18 + 5 && a3 - (v18 + 5) >= v10)
    {
      v28 = &a2[v10 + 5];
      goto LABEL_50;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446978;
    *&buf[4] = "nw_necp_buffer_get_tlv_value";
    *&buf[12] = 2048;
    *&buf[14] = v10;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    *&buf[32] = 1024;
    *&buf[34] = v18;
    LODWORD(v186) = 38;
    v21 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, v186);

    v199[0] = 16;
    v198 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v21, v199, &v198))
    {
      if (v199[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = v199[0];
        if (os_log_type_enabled(v22, v199[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_necp_buffer_get_tlv_value";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          *&buf[32] = 1024;
          *&buf[34] = v18;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
        }
      }

      else
      {
        if (v198 == OS_LOG_TYPE_INFO)
        {
          v24 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = v199[0];
          v27 = os_log_type_enabled(v25, v199[0]);
          if (v24)
          {
            if (v27)
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v10;
              *&buf[22] = 2048;
              *&buf[24] = a3;
              *&buf[32] = 1024;
              *&buf[34] = v18;
              *&buf[38] = 2082;
              *&buf[40] = v24;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v24);
            if (!v21)
            {
              goto LABEL_49;
            }

LABEL_48:
            free(v21);
            goto LABEL_49;
          }

          if (v27)
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v10;
            *&buf[22] = 2048;
            *&buf[24] = a3;
            *&buf[32] = 1024;
            *&buf[34] = v18;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
          }

          goto LABEL_47;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = v199[0];
        if (os_log_type_enabled(v22, v199[0]))
        {
          *buf = 136446978;
          *&buf[4] = "nw_necp_buffer_get_tlv_value";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          *&buf[32] = 1024;
          *&buf[34] = v18;
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
        }
      }
    }

LABEL_47:
    if (v21)
    {
      goto LABEL_48;
    }

LABEL_49:
    v28 = 0;
LABEL_50:
    v10 += v18 + 5;
    if (v10 > a3)
    {
      break;
    }

    if (v18 && v28)
    {
      switch(v17)
      {
        case 6:
          memset(v199, 0, 20);
          if (v18 == 20)
          {
            goto LABEL_55;
          }

          if (v18 >= 0x15)
          {
            v103 = __nwlog_obj();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 6;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 20;
              _os_log_impl(&dword_181A37000, v103, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_55:
            *v199 = *v28;
            *&v199[16] = *(v28 + 4);
          }

          *buf = *v199;
          *&buf[16] = *&v199[16];
          _nw_path_flow_set_nexus_agent_struct(v192, buf);
          break;
        case 7:
          if (v18 == 4)
          {
            goto LABEL_73;
          }

          if (v18 >= 5)
          {
            v98 = __nwlog_obj();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 7;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_73:
            v37 = *v28;
            if ((*v28 & 0x80) != 0)
            {
              _nw_path_flow_set_is_viable(v192, 1);
            }

            if ((v37 & 0x40) != 0)
            {
              _nw_path_flow_set_is_assigned(v192, 1);
            }

            if ((v37 & 0x200) != 0)
            {
              _nw_path_flow_set_ecn_enabled(v192, 1);
            }

            if ((v37 & 0x400) != 0)
            {
              _nw_path_flow_set_fast_open_blocked(v192, 1);
            }

            if (v37)
            {
              _nw_path_flow_set_is_local(v192, 1);
            }

            if ((v37 & 2) != 0)
            {
              _nw_path_flow_set_is_direct(v192, 1);
            }

            if ((v37 & 0x10) != 0)
            {
              _nw_path_flow_set_is_defunct(v192, 1);
            }

            if ((v37 & 4) != 0)
            {
              _nw_path_flow_set_has_ipv4(v192, 1);
            }

            if ((v37 & 8) != 0)
            {
              _nw_path_flow_set_has_ipv6(v192, 1);
            }

            if ((v37 & 0x2000) != 0)
            {
              _nw_path_flow_set_has_nat64(v192, 1);
            }
          }

          break;
        case 8:
          if (v18 == 8)
          {
            goto LABEL_109;
          }

          if (v18 < 9)
          {
            v41 = 0;
            v40 = 0;
          }

          else
          {
            v102 = __nwlog_obj();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 8;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 8;
              _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_109:
            v40 = *v28;
            v41 = *(v28 + 1);
          }

          _nw_path_flow_set_interface_struct(v192, v40 | (v41 << 32));
          v42 = v191;
          v43 = v42;
          if (v191)
          {
            v44 = _nw_path_copy_parameters(v42);
            goto LABEL_112;
          }

          v109 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_parameters";
          LODWORD(v186) = 12;
          v188 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s called with null path", buf, v186);

          v199[0] = 16;
          v198 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v188, v199, &v198))
          {
            goto LABEL_345;
          }

          if (v199[0] == 17)
          {
            v110 = __nwlog_obj();
            v111 = v199[0];
            if (os_log_type_enabled(v110, v199[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_parameters";
              _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null path", buf, 0xCu);
            }

LABEL_298:

            goto LABEL_345;
          }

          if (v198 != OS_LOG_TYPE_INFO)
          {
            v110 = __nwlog_obj();
            v132 = v199[0];
            if (os_log_type_enabled(v110, v199[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_parameters";
              _os_log_impl(&dword_181A37000, v110, v132, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_298;
          }

          v120 = __nw_create_backtrace_string();
          v121 = __nwlog_obj();
          v122 = v199[0];
          log = v121;
          v123 = os_log_type_enabled(v121, v199[0]);
          if (v120)
          {
            if (v123)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_copy_parameters";
              *&buf[12] = 2082;
              *&buf[14] = v120;
              _os_log_impl(&dword_181A37000, log, v122, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v120);
          }

          else
          {
            if (v123)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_parameters";
              _os_log_impl(&dword_181A37000, log, v122, "%{public}s called with null path, no backtrace", buf, 0xCu);
            }
          }

LABEL_345:
          if (v188)
          {
            free(v188);
          }

          v44 = 0;
LABEL_112:

          v45 = nw_parameters_copy_context(v44);
          v46 = nw_path_copy_interface_with_generation(v45, v41, v40);

          _nw_path_flow_set_interface(v192, v46);
          break;
        case 12:
          if (v18 == 12)
          {
            goto LABEL_94;
          }

          if (v18 >= 0xD)
          {
            v99 = __nwlog_obj();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 12;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 12;
              _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_94:
            _nw_path_flow_set_protoctl_event(v192, *v28, *(v28 + 1), *(v28 + 2));
          }

          break;
        case 13:
          if (v18 > 0x10)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            *buf = 136447234;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = 13;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_create_flow_result_from_tlv";
            *&buf[34] = 1024;
            *&buf[36] = 2573;
            LODWORD(v186) = 40;
            v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, v186);

            v199[0] = 16;
            v198 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v63, v199, &v198))
            {
              goto LABEL_244;
            }

            if (v199[0] == 17)
            {
              v64 = __nwlog_obj();
              v65 = v199[0];
              if (os_log_type_enabled(v64, v199[0]))
              {
                *buf = 136447234;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 13;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2080;
                *&buf[26] = "nw_path_create_flow_result_from_tlv";
                *&buf[34] = 1024;
                *&buf[36] = 2573;
                _os_log_impl(&dword_181A37000, v64, v65, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
              }

              goto LABEL_230;
            }

            if (v198 != OS_LOG_TYPE_INFO)
            {
              v64 = __nwlog_obj();
              v84 = v199[0];
              if (os_log_type_enabled(v64, v199[0]))
              {
                *buf = 136447234;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 13;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2080;
                *&buf[26] = "nw_path_create_flow_result_from_tlv";
                *&buf[34] = 1024;
                *&buf[36] = 2573;
                _os_log_impl(&dword_181A37000, v64, v84, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
              }

              goto LABEL_230;
            }

            v74 = __nw_create_backtrace_string();
            v75 = __nwlog_obj();
            v76 = v199[0];
            v77 = os_log_type_enabled(v75, v199[0]);
            if (v74)
            {
              if (v77)
              {
                *buf = 136447490;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = 13;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2080;
                *&buf[26] = "nw_path_create_flow_result_from_tlv";
                *&buf[34] = 1024;
                *&buf[36] = 2573;
                *&buf[40] = 2082;
                *&buf[42] = v74;
                _os_log_impl(&dword_181A37000, v75, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
              }

              free(v74);
              goto LABEL_244;
            }

            if (v77)
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 13;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2573;
              _os_log_impl(&dword_181A37000, v75, v76, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
            }

            goto LABEL_243;
          }

          _nw_path_flow_set_tfo_cookie(v192, v28, v18);
          break;
        case 16:
          *v199 = 0;
          *&v199[8] = 0;
          if (v18 == 16)
          {
            goto LABEL_118;
          }

          if (v18 >= 0x11)
          {
            v104 = __nwlog_obj();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 16;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_118:
            *v199 = *v28;
            _nw_path_flow_set_id(v192, v199);
          }

          break;
        case 100:
          *v199 = 0;
          *&v199[8] = 0;
          _nw_path_flow_set_nexus_instance(v192, v199);
          if (v18 == 16)
          {
            goto LABEL_120;
          }

          if (v18 >= 0x11)
          {
            v112 = __nwlog_obj();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_120:
            *v199 = *v28;
            _nw_path_flow_set_nexus_instance(v192, v199);
          }

          break;
        case 101:
          if (v18 == 2)
          {
            goto LABEL_131;
          }

          if (v18 < 3)
          {
            v55 = 0;
          }

          else
          {
            v105 = __nwlog_obj();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 101;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 2;
              _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_131:
            v55 = *v28;
          }

          _nw_path_flow_set_nexus_port(v192, v55);
          break;
        case 102:
          _nw_path_flow_set_nexus_key(v192, 0, 0);
          _nw_path_flow_set_nexus_key(v192, v28, v18);
          break;
        case 103:
          _nw_path_flow_set_nexus_flow_index(v192, 0);
          if (v18 == 4)
          {
            goto LABEL_70;
          }

          if (v18 < 5)
          {
            v36 = 0;
          }

          else
          {
            v108 = __nwlog_obj();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 103;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_70:
            v36 = *v28;
          }

          _nw_path_flow_set_nexus_flow_index(v192, v36);
          break;
        case 104:
          break;
        case 156:
          if (!v190)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
            }

            goto LABEL_164;
          }

          nw_path_set_agent_identifier_on_endpoint(v190, 156, v18, v28);
          break;
        case 158:
          if (!v190)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
            }

            goto LABEL_164;
          }

          *buf = 0;
          asprintf(buf, "%.*s", v18, v28);
          v39 = *buf;
          v190 = v190;
          _nw_endpoint_set_device_id(v190, v39);

          if (*buf)
          {
            free(*buf);
          }

          break;
        case 159:
          if (v190)
          {
            v31 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:v18];
            nw_endpoint_append_public_key(v190, v31);
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v68 = gLogObj;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
            }

LABEL_164:

            v190 = 0;
          }

          break;
        case 200:
          v48 = nw_path_copy_endpoint_from_tlv(200, v18, v28);

          v49 = v48;
          v190 = v49;
          if (v49)
          {
            _nw_path_flow_set_local_endpoint(v192, v49);
          }

          goto LABEL_21;
        case 201:
          v50 = nw_path_copy_endpoint_from_tlv(201, v18, v28);

          v190 = v50;
          if (!v190)
          {
            goto LABEL_187;
          }

          v51 = v191;
          if (v191)
          {
            v52 = v51;
            v53 = _nw_path_copy_endpoint(v51);

            if (v53)
            {
              if (nw_endpoint_is_equal(v190, v53, 0))
              {
                v54 = v53;
              }

              else
              {
                nw_endpoint_clone_parent_endpoint_properties(v190, v53);
                v54 = v190;
              }
            }

            else
            {
              v54 = v190;
            }

            goto LABEL_186;
          }

          v113 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_endpoint";
          LODWORD(v186) = 12;
          v114 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null path", buf, v186);

          v199[0] = 16;
          v198 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v114, v199, &v198))
          {
            goto LABEL_351;
          }

          if (v199[0] == 17)
          {
            v115 = __nwlog_obj();
            v116 = v199[0];
            if (os_log_type_enabled(v115, v199[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_endpoint";
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null path", buf, 0xCu);
            }

LABEL_307:

            goto LABEL_351;
          }

          if (v198 != OS_LOG_TYPE_INFO)
          {
            v115 = __nwlog_obj();
            v133 = v199[0];
            if (os_log_type_enabled(v115, v199[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_endpoint";
              _os_log_impl(&dword_181A37000, v115, v133, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_307;
          }

          v124 = __nw_create_backtrace_string();
          v125 = __nwlog_obj();
          v126 = v199[0];
          v127 = os_log_type_enabled(v125, v199[0]);
          if (v124)
          {
            if (v127)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_copy_endpoint";
              *&buf[12] = 2082;
              *&buf[14] = v124;
              _os_log_impl(&dword_181A37000, v125, v126, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v124);
          }

          else
          {
            if (v127)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_copy_endpoint";
              _os_log_impl(&dword_181A37000, v125, v126, "%{public}s called with null path, no backtrace", buf, 0xCu);
            }
          }

LABEL_351:
          if (v114)
          {
            free(v114);
          }

          v53 = 0;
          v54 = v190;
LABEL_186:
          _nw_path_flow_set_remote_endpoint(v192, v54);

LABEL_187:
          break;
        case 202:
          v57 = nw_path_copy_endpoint_from_tlv(202, v18, v28);

          v58 = v57;
          v190 = v58;
          if (v58)
          {
            v59 = _nw_path_flow_copy_interface(v192);
            nw_endpoint_set_interface(v58, v59);

            _nw_path_flow_append_discovered_endpoint(v192, v58);
          }

          break;
        case 203:
          v56 = nw_path_copy_endpoint_from_tlv(203, v18, v28);

          v49 = v56;
          v190 = v49;
          if (v49)
          {
            _nw_path_flow_append_resolved_endpoint(v192, v49);
          }

          goto LABEL_21;
        case 204:
          if (v18 == 6)
          {
            goto LABEL_58;
          }

          if (v18 >= 7)
          {
            v96 = __nwlog_obj();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 204;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_58:
            v196 = *v28;
            v197 = *(v28 + 2);
          }

          BYTE4(v189) = 1;
          break;
        case 205:
          if (v18 == 6)
          {
            goto LABEL_102;
          }

          if (v18 >= 7)
          {
            v101 = __nwlog_obj();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 205;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_102:
            v194 = *v28;
            v195 = *(v28 + 2);
          }

          LOBYTE(v189) = 1;
          break;
        case 216:
          if (v18 == 8)
          {
            goto LABEL_140;
          }

          v106 = __nwlog_obj();
          v107 = v106;
          if (v18 < 9)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            *&buf[18] = 2048;
            *&buf[20] = 8;
            LODWORD(v186) = 28;
            v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v106, 16, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu", buf, v186);

            v199[0] = 16;
            v198 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v117, v199, &v198))
            {
              if (v199[0] == 17)
              {
                v118 = __nwlog_obj();
                v119 = v199[0];
                if (os_log_type_enabled(v118, v199[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_path_create_flow_result_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v18;
                  *&buf[18] = 2048;
                  *&buf[20] = 8;
                  _os_log_impl(&dword_181A37000, v118, v119, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu", buf, 0x1Cu);
                }

                goto LABEL_316;
              }

              if (v198 == OS_LOG_TYPE_INFO)
              {
                v128 = __nw_create_backtrace_string();
                v129 = __nwlog_obj();
                v130 = v199[0];
                v131 = os_log_type_enabled(v129, v199[0]);
                if (v128)
                {
                  if (v131)
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_path_create_flow_result_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v18;
                    *&buf[18] = 2048;
                    *&buf[20] = 8;
                    *&buf[28] = 2082;
                    *&buf[30] = v128;
                    _os_log_impl(&dword_181A37000, v129, v130, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu, dumping backtrace:%{public}s", buf, 0x26u);
                  }

                  free(v128);
                }

                else
                {
                  if (v131)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_path_create_flow_result_from_tlv";
                    *&buf[12] = 1024;
                    *&buf[14] = v18;
                    *&buf[18] = 2048;
                    *&buf[20] = 8;
                    _os_log_impl(&dword_181A37000, v129, v130, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu, no backtrace", buf, 0x1Cu);
                  }
                }
              }

              else
              {
                v118 = __nwlog_obj();
                v134 = v199[0];
                if (os_log_type_enabled(v118, v199[0]))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_path_create_flow_result_from_tlv";
                  *&buf[12] = 1024;
                  *&buf[14] = v18;
                  *&buf[18] = 2048;
                  *&buf[20] = 8;
                  _os_log_impl(&dword_181A37000, v118, v134, "%{public}s Invalid length %u for NECP_CLIENT_RESULT_AGENT_ERROR, should be %zu, backtrace limit exceeded", buf, 0x1Cu);
                }

LABEL_316:
              }
            }

            if (v117)
            {
              free(v117);
            }

            break;
          }

          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 216;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            *&buf[24] = 1024;
            *&buf[26] = 8;
            _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_140:
          v60 = *v28;
          if (v60 >> 8 == 16776959)
          {
            dns_error = nw_error_create_dns_error(v60);
          }

          else if ((v60 + 9899) > 0x63)
          {
            if ((v60 + 11999) > 0x1F3)
            {
              dns_error = nw_error_create_posix_error(v60);
            }

            else
            {
              dns_error = nw_error_create_wifi_aware_error(v60);
            }
          }

          else
          {
            dns_error = nw_error_create_tls_error(v60);
          }

          v83 = dns_error;
          _nw_path_flow_set_error(v192, dns_error);

          break;
        case 217:
          if (v18 == 4)
          {
            goto LABEL_61;
          }

          if (v18 < 5)
          {
            v30 = 0;
          }

          else
          {
            v97 = __nwlog_obj();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 217;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_61:
            v30 = *v28;
          }

          _nw_path_flow_set_unique_flow_tag(v192, v30);
          break;
        case 219:
          if (v18 == 4)
          {
            goto LABEL_96;
          }

          if (v18 < 5)
          {
            v38 = 0;
          }

          else
          {
            v100 = __nwlog_obj();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 219;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_96:
            v38 = *v28;
          }

          _nw_path_flow_set_flow_stats_index(v192, v38);
          break;
        case 222:
          v32 = _nw_path_flow_copy_assigned_protocol(v192);
          v33 = v32 == 0;

          if (!v33)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = _nw_path_flow_copy_assigned_protocol(v192);
              *buf = 136446466;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 2112;
              *&buf[14] = v35;
              _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s Flow already has protocol %@ assigned, ignoring extra protocol", buf, 0x16u);
            }

            break;
          }

          if (v18 < 0x2A)
          {
            v81 = __nwlog_obj();
            *buf = 136446466;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            LODWORD(v186) = 18;
            v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v81, 16, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, v186);

            v199[0] = 16;
            v198 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v63, v199, &v198))
            {
              goto LABEL_244;
            }

            if (v199[0] == 17)
            {
              v64 = __nwlog_obj();
              v82 = v199[0];
              if (os_log_type_enabled(v64, v199[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v18;
                _os_log_impl(&dword_181A37000, v64, v82, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, 0x12u);
              }

              goto LABEL_230;
            }

            if (v198 != OS_LOG_TYPE_INFO)
            {
              v64 = __nwlog_obj();
              v92 = v199[0];
              if (os_log_type_enabled(v64, v199[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v18;
                _os_log_impl(&dword_181A37000, v64, v92, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_230;
            }

            v78 = __nw_create_backtrace_string();
            v75 = __nwlog_obj();
            v88 = v199[0];
            v89 = os_log_type_enabled(v75, v199[0]);
            if (v78)
            {
              if (v89)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v18;
                *&buf[18] = 2082;
                *&buf[20] = v78;
                _os_log_impl(&dword_181A37000, v75, v88, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_221;
            }

            if (v89)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v18;
              _os_log_impl(&dword_181A37000, v75, v88, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            v69 = *(v28 + 20);
            if (v69 + 42 == v18)
            {
              if (nw_path_flow_load_protocols(void)::onceToken != -1)
              {
                dispatch_once_f(&nw_path_flow_load_protocols(void)::onceToken, 0, nw_path_flow_load_protocols_internal);
              }

              v70 = *(v28 + 1);
              *buf = *v28;
              *&buf[16] = v70;
              *&buf[32] = *(v28 + 4);
              v71 = nw_protocol_copy_definition_for_identifier(buf);
              v72 = v71;
              if (v71)
              {
                if (*(v28 + 20))
                {
                  deserialized_options = _nw_protocol_create_deserialized_options(v71, v28 + 42, *(v28 + 20));
                }

                else
                {
                  deserialized_options = _nw_protocol_create_options(v71);
                }

                v93 = deserialized_options;
                if (deserialized_options)
                {
                  _nw_path_flow_set_assigned_protocol(v192, deserialized_options);
                }

                else
                {
                  v95 = __nwlog_obj();
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    *v199 = 136446466;
                    *&v199[4] = "nw_path_create_flow_result_from_tlv";
                    *&v199[12] = 2112;
                    *&v199[14] = v72;
                    _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to deserialize options for %@", v199, 0x16u);
                  }

                  v93 = 0;
                }
              }

              else
              {
                v93 = __nwlog_obj();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                {
                  *v199 = 136446466;
                  *&v199[4] = "nw_path_create_flow_result_from_tlv";
                  *&v199[12] = 2080;
                  *&v199[14] = buf;
                  _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEFAULT, "%{public}s No protocol definition registered for %s", v199, 0x16u);
                }
              }

              break;
            }

            v86 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v69;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            LODWORD(v186) = 24;
            v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v86, 16, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u)", buf, v186);

            v199[0] = 16;
            v198 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v63, v199, &v198))
            {
              goto LABEL_244;
            }

            if (v199[0] == 17)
            {
              v64 = __nwlog_obj();
              v87 = v199[0];
              if (os_log_type_enabled(v64, v199[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v69;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                _os_log_impl(&dword_181A37000, v64, v87, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u)", buf, 0x18u);
              }

              goto LABEL_230;
            }

            if (v198 != OS_LOG_TYPE_INFO)
            {
              v64 = __nwlog_obj();
              v94 = v199[0];
              if (os_log_type_enabled(v64, v199[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v69;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                _os_log_impl(&dword_181A37000, v64, v94, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_230;
            }

            v78 = __nw_create_backtrace_string();
            v75 = __nwlog_obj();
            v90 = v199[0];
            v91 = os_log_type_enabled(v75, v199[0]);
            if (v78)
            {
              if (v91)
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_create_flow_result_from_tlv";
                *&buf[12] = 1024;
                *&buf[14] = v69;
                *&buf[18] = 1024;
                *&buf[20] = v18;
                *&buf[24] = 2082;
                *&buf[26] = v78;
                _os_log_impl(&dword_181A37000, v75, v90, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), dumping backtrace:%{public}s", buf, 0x22u);
              }

              goto LABEL_221;
            }

            if (v91)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = v69;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              _os_log_impl(&dword_181A37000, v75, v90, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), no backtrace", buf, 0x18u);
            }
          }

          goto LABEL_243;
        case 224:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v18;
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s NW_NECP_CLIENT_PARAMETER_CUSTOM_METADATA %u bytes", buf, 0x12u);
          }

          if (v18 <= 0x100)
          {
            _nw_path_flow_set_custom_metadata(v192, v28, v18);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v66 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 1024;
          *&buf[14] = 224;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_create_flow_result_from_tlv";
          *&buf[34] = 1024;
          *&buf[36] = 2619;
          LODWORD(v186) = 40;
          v63 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, v186);

          v199[0] = 16;
          v198 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v63, v199, &v198))
          {
            goto LABEL_244;
          }

          if (v199[0] == 17)
          {
            v64 = __nwlog_obj();
            v67 = v199[0];
            if (os_log_type_enabled(v64, v199[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2619;
              _os_log_impl(&dword_181A37000, v64, v67, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_230;
          }

          if (v198 != OS_LOG_TYPE_INFO)
          {
            v64 = __nwlog_obj();
            v85 = v199[0];
            if (os_log_type_enabled(v64, v199[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2619;
              _os_log_impl(&dword_181A37000, v64, v85, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

LABEL_230:

LABEL_244:
            if (!v63)
            {
              break;
            }

LABEL_245:
            free(v63);
            break;
          }

          v78 = __nw_create_backtrace_string();
          v75 = __nwlog_obj();
          v79 = v199[0];
          v80 = os_log_type_enabled(v75, v199[0]);
          if (!v78)
          {
            if (v80)
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_create_flow_result_from_tlv";
              *&buf[12] = 1024;
              *&buf[14] = 224;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_create_flow_result_from_tlv";
              *&buf[34] = 1024;
              *&buf[36] = 2619;
              _os_log_impl(&dword_181A37000, v75, v79, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
            }

LABEL_243:

            goto LABEL_244;
          }

          if (v80)
          {
            *buf = 136447490;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = 224;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_create_flow_result_from_tlv";
            *&buf[34] = 1024;
            *&buf[36] = 2619;
            *&buf[40] = 2082;
            *&buf[42] = v78;
            _os_log_impl(&dword_181A37000, v75, v79, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
          }

LABEL_221:

          free(v78);
          if (v63)
          {
            goto LABEL_245;
          }

          break;
        default:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v49 = gLogObj;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_create_flow_result_from_tlv";
            *&buf[12] = 1024;
            *&buf[14] = v17;
            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s Received unknown flow result TLV (type %d)", buf, 0x12u);
          }

LABEL_21:

          break;
      }
    }

    if (v10 >= a3 - 5)
    {
      goto LABEL_384;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v135 = gLogObj;
  *buf = 136446978;
  *&buf[4] = "nw_path_create_flow_result_from_tlv";
  *&buf[12] = 1024;
  *&buf[14] = v18;
  *&buf[18] = 2048;
  *&buf[20] = v10;
  *&buf[28] = 2048;
  *&buf[30] = a3;
  LODWORD(v186) = 38;
  v136 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v135, 16, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, v186);

  v199[0] = 16;
  v198 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v136, v199, &v198))
  {
    goto LABEL_382;
  }

  if (v199[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v137 = gLogObj;
    v138 = v199[0];
    if (os_log_type_enabled(v137, v199[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_create_flow_result_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v137, v138, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
    }

    goto LABEL_363;
  }

  if (v198 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v137 = gLogObj;
    v143 = v199[0];
    if (os_log_type_enabled(v137, v199[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_create_flow_result_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v137, v143, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
    }

LABEL_363:

LABEL_382:
    if (!v136)
    {
      goto LABEL_384;
    }

    goto LABEL_383;
  }

  v139 = __nw_create_backtrace_string();
  v140 = __nwlog_obj();
  v141 = v199[0];
  v142 = os_log_type_enabled(v140, v199[0]);
  if (!v139)
  {
    if (v142)
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_create_flow_result_from_tlv";
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a3;
      _os_log_impl(&dword_181A37000, v140, v141, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
    }

    goto LABEL_382;
  }

  if (v142)
  {
    *buf = 136447234;
    *&buf[4] = "nw_path_create_flow_result_from_tlv";
    *&buf[12] = 1024;
    *&buf[14] = v18;
    *&buf[18] = 2048;
    *&buf[20] = v10;
    *&buf[28] = 2048;
    *&buf[30] = a3;
    *&buf[38] = 2082;
    *&buf[40] = v139;
    _os_log_impl(&dword_181A37000, v140, v141, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
  }

  free(v139);
  if (v136)
  {
LABEL_383:
    free(v136);
  }

LABEL_384:
  if (v10 == a3)
  {
    goto LABEL_385;
  }

  v159 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_path_create_flow_result_from_tlv";
  *&buf[12] = 2048;
  *&buf[14] = v10;
  *&buf[22] = 2048;
  *&buf[24] = a3;
  LODWORD(v186) = 32;
  v160 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s cursor has unexpected value %zu != %zu", buf, v186);

  v199[0] = 16;
  v198 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v160, v199, &v198))
  {
    if (v199[0] == 17)
    {
      v161 = __nwlog_obj();
      v162 = v199[0];
      if (os_log_type_enabled(v161, v199[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        _os_log_impl(&dword_181A37000, v161, v162, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
      }

      goto LABEL_406;
    }

    if (v198 == OS_LOG_TYPE_INFO)
    {
      v163 = __nw_create_backtrace_string();
      v164 = __nwlog_obj();
      v165 = v199[0];
      v166 = os_log_type_enabled(v164, v199[0]);
      if (v163)
      {
        if (v166)
        {
          *buf = 136446978;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          *&buf[32] = 2082;
          *&buf[34] = v163;
          _os_log_impl(&dword_181A37000, v164, v165, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v163);
      }

      else
      {
        if (v166)
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_create_flow_result_from_tlv";
          *&buf[12] = 2048;
          *&buf[14] = v10;
          *&buf[22] = 2048;
          *&buf[24] = a3;
          _os_log_impl(&dword_181A37000, v164, v165, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
        }
      }
    }

    else
    {
      v161 = __nwlog_obj();
      v167 = v199[0];
      if (os_log_type_enabled(v161, v199[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_create_flow_result_from_tlv";
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        _os_log_impl(&dword_181A37000, v161, v167, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
      }

LABEL_406:
    }
  }

  if (v160)
  {
    free(v160);
  }

LABEL_385:
  v144 = v190;
  if ((v189 & 0x100000000) == 0)
  {
    goto LABEL_392;
  }

  v145 = v192;
  v146 = _nw_path_flow_copy_local_endpoint(v192);
  v147 = v146;
  if (!v146 || (v148 = v146, v149 = _nw_endpoint_get_type(v148), v148, v145 = v192, v149 != 1))
  {
    *&buf[8] = 0;
    *&buf[2] = 0;
    *buf = 16;
    address_with_ethernet = _nw_endpoint_create_address_with_ethernet(buf);
    _nw_path_flow_set_local_endpoint(v145, address_with_ethernet);

LABEL_391:
    v144 = v190;
LABEL_392:
    v152 = v192;
    if ((v189 & 1) == 0)
    {
LABEL_398:
      v15 = v152;
      goto LABEL_399;
    }

    v153 = _nw_path_flow_copy_remote_endpoint(v192);
    v154 = v153;
    if (!v153 || (v148 = v153, type = _nw_endpoint_get_type(v148), v148, type != 1))
    {
LABEL_397:

      v152 = v192;
      v144 = v190;
      goto LABEL_398;
    }

    memset(buf, 0, 28);
    if (nw_endpoint_fillout_v4v6_address(v148, buf))
    {
      v156 = _nw_endpoint_create_address_with_ethernet(buf);
      v157 = nw_path_copy_endpoint(v191);
      nw_endpoint_clone_parent_endpoint_properties(v156, v157);

      _nw_path_flow_set_remote_endpoint(v192, v156);
      goto LABEL_397;
    }

    v172 = __nwlog_obj();
    *v199 = 136446210;
    *&v199[4] = "nw_path_create_flow_result_from_tlv";
    LODWORD(v186) = 12;
    v173 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s called with null success_remote", v199, v186);

    v198 = OS_LOG_TYPE_ERROR;
    v193 = 0;
    if (__nwlog_fault(v173, &v198, &v193))
    {
      if (v198 == OS_LOG_TYPE_FAULT)
      {
        v174 = __nwlog_obj();
        v175 = v198;
        if (os_log_type_enabled(v174, v198))
        {
          *v199 = 136446210;
          *&v199[4] = "nw_path_create_flow_result_from_tlv";
          _os_log_impl(&dword_181A37000, v174, v175, "%{public}s called with null success_remote", v199, 0xCu);
        }
      }

      else
      {
        if (v193 == 1)
        {
          v180 = __nw_create_backtrace_string();
          v181 = __nwlog_obj();
          v182 = v198;
          v183 = os_log_type_enabled(v181, v198);
          if (v180)
          {
            if (v183)
            {
              *v199 = 136446466;
              *&v199[4] = "nw_path_create_flow_result_from_tlv";
              *&v199[12] = 2082;
              *&v199[14] = v180;
              _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null success_remote, dumping backtrace:%{public}s", v199, 0x16u);
            }

            free(v180);
          }

          else
          {
            if (v183)
            {
              *v199 = 136446210;
              *&v199[4] = "nw_path_create_flow_result_from_tlv";
              _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null success_remote, no backtrace", v199, 0xCu);
            }
          }

          goto LABEL_455;
        }

        v174 = __nwlog_obj();
        v185 = v198;
        if (os_log_type_enabled(v174, v198))
        {
          *v199 = 136446210;
          *&v199[4] = "nw_path_create_flow_result_from_tlv";
          _os_log_impl(&dword_181A37000, v174, v185, "%{public}s called with null success_remote, backtrace limit exceeded", v199, 0xCu);
        }
      }
    }

LABEL_455:
    if (v173)
    {
      free(v173);
    }

    goto LABEL_457;
  }

  memset(buf, 0, 28);
  if (nw_endpoint_fillout_v4v6_address(v148, buf))
  {
    v150 = _nw_endpoint_create_address_with_ethernet(buf);
    _nw_path_flow_set_local_endpoint(v192, v150);

    goto LABEL_391;
  }

  v168 = __nwlog_obj();
  *v199 = 136446210;
  *&v199[4] = "nw_path_create_flow_result_from_tlv";
  LODWORD(v186) = 12;
  v169 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v168, 16, "%{public}s called with null success_local", v199, v186);

  v198 = OS_LOG_TYPE_ERROR;
  v193 = 0;
  if (__nwlog_fault(v169, &v198, &v193))
  {
    if (v198 == OS_LOG_TYPE_FAULT)
    {
      v170 = __nwlog_obj();
      v171 = v198;
      if (os_log_type_enabled(v170, v198))
      {
        *v199 = 136446210;
        *&v199[4] = "nw_path_create_flow_result_from_tlv";
        _os_log_impl(&dword_181A37000, v170, v171, "%{public}s called with null success_local", v199, 0xCu);
      }

      goto LABEL_419;
    }

    if (v193 == 1)
    {
      v176 = __nw_create_backtrace_string();
      v177 = __nwlog_obj();
      v178 = v198;
      v179 = os_log_type_enabled(v177, v198);
      if (v176)
      {
        if (v179)
        {
          *v199 = 136446466;
          *&v199[4] = "nw_path_create_flow_result_from_tlv";
          *&v199[12] = 2082;
          *&v199[14] = v176;
          _os_log_impl(&dword_181A37000, v177, v178, "%{public}s called with null success_local, dumping backtrace:%{public}s", v199, 0x16u);
        }

        free(v176);
      }

      else
      {
        if (v179)
        {
          *v199 = 136446210;
          *&v199[4] = "nw_path_create_flow_result_from_tlv";
          _os_log_impl(&dword_181A37000, v177, v178, "%{public}s called with null success_local, no backtrace", v199, 0xCu);
        }
      }
    }

    else
    {
      v170 = __nwlog_obj();
      v184 = v198;
      if (os_log_type_enabled(v170, v198))
      {
        *v199 = 136446210;
        *&v199[4] = "nw_path_create_flow_result_from_tlv";
        _os_log_impl(&dword_181A37000, v170, v184, "%{public}s called with null success_local, backtrace limit exceeded", v199, 0xCu);
      }

LABEL_419:
    }
  }

  if (v169)
  {
    free(v169);
  }

LABEL_457:

  v15 = 0;
  v144 = v190;
LABEL_399:

  v9 = v192;
LABEL_400:

LABEL_401:
  return v15;
}

void sub_181B991CC(char *a1, const unsigned __int8 *a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  LODWORD(v3) = v3[153];

  if (v3 == 1)
  {
    v5 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v6 = v4;
    swift_beginAccess();
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
    *(v5 + 76) = 1;
  }

  v7 = v4;
  is_null = uuid_is_null(a2);
  if (is_null == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
  }

  v11 = &v7[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  swift_beginAccess();
  if (v11[153])
  {
    __break(1u);
  }

  else
  {
    *(v11 + 17) = v9;
    *(v11 + 18) = v10;
    v11[152] = is_null == 1;
  }
}

void _nw_path_flow_set_nexus_port_0(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  LODWORD(v3) = v3[153];

  if (v3 == 1)
  {
    v5 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v6 = v4;
    swift_beginAccess();
    *(v5 + 16) = 0;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
    *(v5 + 76) = 1;
  }

  v7 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = v4;
  swift_beginAccess();
  if (v7[153])
  {
    __break(1u);
  }

  else
  {
    *(v7 + 33) = a2;
  }
}

uint64_t sub_181B993C0(char *a1, const void *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a1;
    v7 = sub_181AC1BE8(v5, 0);
    memcpy(v7 + 4, a2, v5);
    v8 = OBJC_IVAR____TtC7Network12__NWPathFlow_flow;
    swift_beginAccess();
    *&v6[v8] = v7;
  }

  else
  {
    v9 = OBJC_IVAR____TtC7Network12__NWPathFlow_flow;
    v10 = a1;
    swift_beginAccess();
    *&a1[v9] = 0;
  }
}

void sub_181B9948C(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x40) == 0)
    {
      v6 = v5 | 0x40;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    v6 = v5 & 0xFFBF;
    goto LABEL_6;
  }
}

void _nw_path_flow_set_nexus_agent_struct(char *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v4 = *a2;
  v3 = a2[1];
  v5 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v6 = a1;
  swift_beginAccess();
  *(v5 + 12) = v4;
  *(v5 + 13) = v3;
  *(v5 + 28) = v2;
  v5[116] = 0;
}

void _nw_path_flow_set_unique_flow_tag(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 48) = a2;
}

uint64_t sub_181B995E0(uint64_t a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v25 = *(a1 + 24);
  v26 = *(a1 + 16);
  v24 = *(a1 + 32);
  v5 = *(a1 + 42);
  v6 = *(a1 + 48);
  v22 = *(a1 + 52);
  v23 = *(a1 + 40);
  v7 = *a2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 42);
  v19 = *(v2 + 48);
  v20 = v6;
  v21 = *(v2 + 52);
  v32 = *v2;
  v33 = v8;
  v27 = v3;
  v28 = v4;
  v37 = v7;

  v15 = sub_181B0AD48(&v27, &v37, v14);

  if (!v15)
  {
    return 0;
  }

  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v27 = v26;
  v28 = v25;
  v29 = v24;
  v30 = v23;
  v31 = v5;
  sub_181B9979C(v9, v10, v11, v12, v13);
  sub_181B9979C(v26, v25, v24, v23, v5);
  v16 = _s7Network15AddressEndpointV0bC4TypeO2eeoiySbAE_AEtFZ_0(&v32, &v27);
  sub_181AD1DE4(v27, v28, v29, v30, v31);
  sub_181AD1DE4(v32, v33, v34, v35, v36);
  if (!v16)
  {
    return 0;
  }

  if (v21)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    v18 = v22;
    if (v19 != v20)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

void sub_181B9979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 == 2)
  {
  }

  else if (a5 <= 1u)
  {
  }
}

uint64_t sub_181B997D0(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0, &qword_182AE4B58);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_1820E5AB8(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0, &qword_182AE4B58);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 208;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_181C4E26C(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386D0, &qword_182AE4B58);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 208;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_181F47CDC(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

void *sub_181B999A8(void *result, uint64_t a2, _OWORD *a3)
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
        v7 = a3[11];
        v8 = (a2 + 208 * v5);
        v8[10] = a3[10];
        v8[11] = v7;
        *(v8 + 186) = *(a3 + 186);
        v9 = a3[7];
        v8[6] = a3[6];
        v8[7] = v9;
        v10 = a3[9];
        v8[8] = a3[8];
        v8[9] = v10;
        v11 = a3[3];
        v8[2] = a3[2];
        v8[3] = v11;
        v12 = a3[5];
        v8[4] = a3[4];
        v8[5] = v12;
        v13 = a3[1];
        *v8 = *a3;
        v8[1] = v13;
        v6 = __OFADD__(v3, 1);
        v14 = v3 + 1;
        if (!v6)
        {
          result[1] = v14;
          return sub_181AFE6F4(a3, &v15);
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

void _nw_path_flow_set_ecn_enabled_0(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 4) == 0)
    {
      v6 = v5 | 4;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 4) != 0)
  {
    v6 = v5 & 0xFFFB;
    goto LABEL_6;
  }
}

char *sub_181B99AFC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_15:
    __break(1u);
  }

  *&v39 = a3;
  *(&v39 + 1) = a4;

  LOBYTE(v62) = 0;
  result = sub_181AC04E8(&v39, a5, a2, v51);
  v13 = *&v51[0];
  if (!*&v51[0])
  {
  }

  v15 = *(a8 + 200);
  v14 = a8 + 200;
  if (!v15)
  {
    __break(1u);
    return result;
  }

  v16 = *(&v51[0] + 1);

  if (a9 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(*v14 + 24) <= a9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E6474();
  }

  v17 = *(*v14 + 32) + a9;
  v18 = *(*v14 + 16);
  if (v17 < v18)
  {
    v18 = 0;
  }

  v19 = 208 * (v17 - v18);
  v20 = *v14 + v19;
  v21 = *(v20 + 184);
  v22 = *(v20 + 216);
  v60 = *(v20 + 200);
  v61[0] = v22;
  *(v61 + 10) = *(v20 + 226);
  v58 = *(v20 + 168);
  v59 = v21;
  v23 = *(v20 + 40);
  v24 = *(v20 + 56);
  v25 = *(v20 + 88);
  v64 = *(v20 + 72);
  v65 = v25;
  v62 = v23;
  v63 = v24;
  v26 = *(v20 + 104);
  v27 = *(v20 + 120);
  v28 = *(v20 + 136);
  v69 = *(v20 + 152);
  v67 = v27;
  v68 = v28;
  v66 = v26;

  v41 = v64;
  v42 = v65;
  v39 = v62;
  v40 = v63;
  v44 = v67;
  v45 = v68;
  v43 = v66;
  *&v46 = v69;
  *(&v46 + 1) = v13;
  *(v50 + 10) = *(v61 + 10);
  v49 = v60;
  v50[0] = v61[0];
  v47 = v58;
  v48 = v59;
  v29 = *v14 + v19;
  v30 = v46;
  v31 = v58;
  v32 = v68;
  *(v29 + 120) = v67;
  *(v29 + 136) = v32;
  *(v29 + 168) = v31;
  *(v29 + 152) = v30;
  *(v29 + 40) = v39;
  v33 = v40;
  v34 = v41;
  v35 = v42;
  *(v29 + 104) = v43;
  *(v29 + 88) = v35;
  *(v29 + 72) = v34;
  *(v29 + 56) = v33;
  v36 = v48;
  v37 = v49;
  v38 = v50[0];
  *(v29 + 226) = *(v50 + 10);
  *(v29 + 216) = v38;
  *(v29 + 200) = v37;
  *(v29 + 184) = v36;
  sub_181AFE6F4(&v39, v51);

  sub_181B99DD0(v13, v16);
  v51[4] = v66;
  v51[5] = v67;
  v51[6] = v68;
  v51[0] = v62;
  v51[1] = v63;
  v51[2] = v64;
  v51[3] = v65;
  v52 = v69;
  v53 = v13;
  *(v57 + 10) = *(v61 + 10);
  v56 = v60;
  v57[0] = v61[0];
  v54 = v58;
  v55 = v59;
  return sub_181AFE6A0(v51);
}

uint64_t sub_181B99DD0(uint64_t result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_181B99E10(uint64_t a1, char a2)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 65);
  v9 = *(v2 + 81);
  v10 = *(v2 + 116);
  v11 = *(v2 + 117);
  v12 = *(v2 + 156);
  v13 = *(v2 + 200);
  v14 = *(v2 + 216);
  v15 = *(v2 + 264);
  v16 = *(v2 + 280);
  v17 = *(v2 + 336);
  v92 = *(v2 + 320);
  v93 = v17;
  v94 = *(v2 + 352);
  v18 = *(v2 + 304);
  v90 = *(v2 + 288);
  v91 = v18;
  v19 = *(v2 + 376);
  v20 = *(a1 + 81);
  if (v9)
  {
    v79 = v12;
    v81 = v15;
    object1 = v16;
    v78 = v14;
    if ((*(a1 + 81) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = *(a1 + 65);
    v95 = v8;
    LOBYTE(v96) = 0;
    if (v20)
    {
      goto LABEL_34;
    }

    v79 = v12;
    v81 = v15;
    object1 = v16;
    v78 = v14;
    v88 = v21;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v95, &v88))
    {
      goto LABEL_34;
    }
  }

  if (v90 == 3 && *(a1 + 288) == 3)
  {
LABEL_8:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  v22 = *(a1 + 336);
  v97 = *(a1 + 320);
  v98 = v22;
  v99 = *(a1 + 352);
  v23 = *(a1 + 304);
  v95 = *(a1 + 288);
  v96 = v23;
  result = sub_181B9AA34(&v90, &v95);
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = *(&v96 + 1);
  if (*(&v91 + 1))
  {
    if (!*(&v96 + 1))
    {
      goto LABEL_34;
    }

    v26 = *(*(&v91 + 1) + 24);
    if (v26 != *(*(&v96 + 1) + 24))
    {
      goto LABEL_34;
    }

    if (v26 && *(&v91 + 1) != *(&v96 + 1))
    {
      v65 = v7;
      v67 = v6;
      v69 = v5;
      v27 = *(*(&v91 + 1) + 32);
      v28 = v27 + v26;
      if (*(*(&v91 + 1) + 16) < v27 + v26)
      {
        v28 = *(*(&v91 + 1) + 16);
      }

      *&v88 = *(&v91 + 1);
      *(&v88 + 1) = v27;
      v89 = v28;
      v29 = *(*(&v96 + 1) + 32);
      v30 = v29 + v26;
      if (*(*(&v96 + 1) + 16) < v30)
      {
        v30 = *(*(&v96 + 1) + 16);
      }

      v85 = *(&v96 + 1);
      v86 = v29;
      v87 = v30;
      swift_retain_n();
      swift_retain_n();
      v75 = v25;
      while (1)
      {
        v32 = *(&v88 + 1);
        if (*(&v88 + 1) != v89)
        {
          goto LABEL_23;
        }

        if (sub_181AC81FC(v31))
        {
          break;
        }

        v35 = 0;
        v36 = 0uLL;
        v33 = 1;
LABEL_25:
        if (v29 == v87)
        {
          v73 = v36;
          if ((sub_181AC81FC(v31) & 1) == 0)
          {

            if (v33)
            {

              v6 = v67;
              v5 = v69;
              v7 = v65;
              goto LABEL_38;
            }

LABEL_32:

LABEL_34:
            LOBYTE(v7) = 0;
            return v7 & 1;
          }

          v29 = v86;
          v75 = v85;
          v36 = v73;
        }

        v86 = v29 + 1;
        if ((v33 & 1) == 0)
        {
          v37 = v75 + 24 * v29;
          if (v35 == *(v37 + 40))
          {
            *uu2 = *(v37 + 48);
            *uu1 = v36;
            ++v29;
            if (!uuid_compare(uu1, uu2))
            {
              continue;
            }
          }
        }

        goto LABEL_32;
      }

      v32 = *(&v88 + 1);
LABEL_23:
      v33 = 0;
      *(&v88 + 1) = v32 + 1;
      v34 = v88 + 24 * v32;
      v35 = *(v34 + 40);
      v36 = *(v34 + 48);
      goto LABEL_25;
    }
  }

  else if (*(&v96 + 1))
  {
    goto LABEL_34;
  }

LABEL_38:
  v38 = v7;
  LOBYTE(v7) = 0;
  if (v10 != *(a1 + 116) || v11 != *(a1 + 117))
  {
    return v7 & 1;
  }

  if ((v19 & 1) == 0 && *(a1 + 376) != 1)
  {
    goto LABEL_8;
  }

  v39 = v79;
  if (a2)
  {
    v7 = *(a1 + 200);
    if (v13)
    {
      if (!v7)
      {
        return v7 & 1;
      }

      v40 = v13[3];
      if (v40 != *(v7 + 24))
      {
        goto LABEL_34;
      }

      if (v40)
      {
        if (v13 != v7)
        {

          v41 = sub_1822C5050(v7, v13);

          v39 = v79;
          if ((v41 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }
    }

    else if (v7)
    {
      goto LABEL_34;
    }
  }

  v42 = *(a1 + 156);
  if ((v39 & 1) == ((v42 & 1) == 0) || ((v42 & 2) == 0) == (v39 & 2) >> 1 || ((v42 & 0x20) == 0) == (v39 & 0x20) >> 5 || ((v42 & 0x10) == 0) == (v39 & 0x10) >> 4 || ((v42 & 0x40) == 0) == (v39 & 0x40) >> 6 || ((v42 & 0x80) == 0) == (v39 & 0x80) >> 7)
  {
    goto LABEL_34;
  }

  v7 = *(a1 + 264);
  if (v81)
  {
    if (!v7)
    {
      return v7 & 1;
    }

    v44 = sub_181B9AEF8(v43, v7);

    if (!v44)
    {
      goto LABEL_34;
    }
  }

  else if (v7)
  {
    goto LABEL_34;
  }

  v72 = *(a1 + 216);
  v68 = *(v78 + 16);
  if (v68 != *(v72 + 16))
  {
    goto LABEL_34;
  }

  v45 = v78;
  if (!v68)
  {
LABEL_152:
    v62 = *(a1 + 280);
    if (object1)
    {
      if (!v62 || !xpc_equal(object1, v62))
      {
        goto LABEL_34;
      }
    }

    else if (v62)
    {
      goto LABEL_34;
    }

    *&v88 = v38;
    v85 = *(a1 + 24);

    v63 = _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(&v88, &v85);

    if (!v63)
    {
      goto LABEL_34;
    }

    *&v88 = v6;
    v85 = *(a1 + 8);

    v64 = _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(&v88, &v85);

    if (!v64)
    {
      goto LABEL_34;
    }

    *&v88 = v5;
    v85 = *(a1 + 16);

    LOBYTE(v7) = _s7Network9InterfaceV24isDeepEqualWithOptionals3if13if2SbACSg_AGtFZ_0(&v88, &v85);

    return v7 & 1;
  }

  v46 = 0;
  v47 = (v78 + 56);
  v82 = (v72 + 56);
  while (v46 < *(v45 + 16))
  {
    v49 = *(v47 - 2);
    v76 = *(v47 - 3);
    v80 = v46;
    if (v49 > 2)
    {
      if (v49 == 3)
      {
        result = 0xD000000000000010;
        v50 = 0x8000000182BD7080;
        goto LABEL_82;
      }

      if (v49 != 4)
      {
        if (v49 == 5)
        {
          result = 0xD000000000000013;
          v50 = 0x8000000182BD7060;
          goto LABEL_82;
        }

        goto LABEL_79;
      }

      v50 = 0xE700000000000000;
      result = 0x6B6C6177796B53;
    }

    else
    {
      if (!v49)
      {
        v50 = 0xE700000000000000;
        result = 0x6B726F7774654ELL;
        goto LABEL_82;
      }

      if (v49 != 1)
      {
        if (v49 == 2)
        {
          result = 0x6F436D6574737953;
          v50 = 0xEC0000006769666ELL;
          goto LABEL_82;
        }

LABEL_79:
        result = *(v47 - 3);
        v50 = *(v47 - 2);
        goto LABEL_82;
      }

      v50 = 0xE800000000000000;
      result = 0x72616C756C6C6543;
    }

LABEL_82:
    if (v46 >= *(v72 + 16))
    {
      goto LABEL_162;
    }

    v51 = *(v82 - 2);
    v71 = *(v82 - 3);
    if (v51 > 2)
    {
      switch(v51)
      {
        case 3:
          v52 = 0xD000000000000010;
          v53 = 0x8000000182BD7080;
          break;
        case 4:
          v53 = 0xE700000000000000;
          v54 = 0x6C6177796B53;
          goto LABEL_97;
        case 5:
          v52 = 0xD000000000000013;
          v53 = 0x8000000182BD7060;
          break;
        default:
          goto LABEL_94;
      }
    }

    else
    {
      if (!v51)
      {
        v53 = 0xE700000000000000;
        v54 = 0x726F7774654ELL;
LABEL_97:
        v52 = v54 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
        goto LABEL_98;
      }

      if (v51 == 1)
      {
        v53 = 0xE800000000000000;
        v52 = 0x72616C756C6C6543;
        goto LABEL_98;
      }

      if (v51 != 2)
      {
LABEL_94:
        v52 = *(v82 - 3);
        v53 = *(v82 - 2);
        goto LABEL_98;
      }

      v52 = 0x6F436D6574737953;
      v53 = 0xEC0000006769666ELL;
    }

LABEL_98:
    v55 = *v47;
    v74 = *(v47 - 1);
    v70 = v47;
    if (result == v52 && v50 == v53)
    {
      sub_181AA5C1C(v76, v49);
      sub_181AA5C1C(v71, v51);
      sub_181AA5C1C(v76, v49);
      sub_181ADC1E0(v74, v55);
    }

    else
    {
      v66 = sub_182AD4268();
      sub_181AA5C1C(v76, v49);
      sub_181AA5C1C(v71, v51);
      sub_181AA5C1C(v76, v49);
      sub_181ADC1E0(v74, v55);

      if ((v66 & 1) == 0)
      {
        sub_181E4926C(v76, v49);
        sub_181E49280(v74, v55);
        goto LABEL_34;
      }
    }

    if (v55 > 4)
    {
      if (v55 > 6)
      {
        switch(v55)
        {
          case 7:
            v56 = 0x4465746176697250;
            v57 = 0xEA0000000000534ELL;
            goto LABEL_124;
          case 8:
            v56 = 0xD000000000000010;
            v57 = 0x8000000182BD7020;
            goto LABEL_124;
          case 9:
            v56 = 0xD000000000000011;
            v57 = 0x8000000182BD7000;
            goto LABEL_124;
        }

        goto LABEL_123;
      }

      if (v55 == 5)
      {
        v56 = 0xD000000000000012;
        v57 = 0x8000000182BD7040;
      }

      else
      {
        v57 = 0xE800000000000000;
        v56 = 0x746E656741534E44;
      }
    }

    else
    {
      if (v55 <= 1)
      {
        if (!v55)
        {
          v57 = 0xE800000000000000;
          v56 = 0x74656E7265746E49;
          goto LABEL_124;
        }

        if (v55 == 1)
        {
          v56 = 0x7265764F68746150;
          v57 = 0xEC00000065646972;
          goto LABEL_124;
        }

LABEL_123:

        v56 = v74;
        v57 = v55;
        goto LABEL_124;
      }

      if (v55 == 2)
      {
        v56 = 0x65674179786F7250;
        v57 = 0xEA0000000000746ELL;
      }

      else if (v55 == 3)
      {
        v57 = 0xE500000000000000;
        v56 = 0x79786F7250;
      }

      else
      {
        v56 = 0x5079636176697250;
        v57 = 0xEC00000079786F72;
      }
    }

LABEL_124:
    sub_181E4926C(v76, v49);
    result = sub_181E49280(v74, v55);
    if (v80 >= *(v72 + 16))
    {
      goto LABEL_163;
    }

    v59 = *(v82 - 1);
    v58 = *v82;
    if (*v82 > 4)
    {
      if (v58 <= 6)
      {
        if (v58 == 5)
        {
          v60 = 0xD000000000000012;
          v61 = 0x8000000182BD7040;
          goto LABEL_149;
        }

        if (v58 == 6)
        {
          v61 = 0xE800000000000000;
          v60 = 0x746E656741534E44;
          goto LABEL_149;
        }
      }

      else
      {
        switch(v58)
        {
          case 7:
            v60 = 0x4465746176697250;
            v61 = 0xEA0000000000534ELL;
            goto LABEL_149;
          case 8:
            v60 = 0xD000000000000010;
            v61 = 0x8000000182BD7020;
            goto LABEL_149;
          case 9:
            v60 = 0xD000000000000011;
            v61 = 0x8000000182BD7000;
            goto LABEL_149;
        }
      }
    }

    else if (v58 <= 1)
    {
      if (!v58)
      {
        v61 = 0xE800000000000000;
        v60 = 0x74656E7265746E49;
        goto LABEL_149;
      }

      if (v58 == 1)
      {
        v60 = 0x7265764F68746150;
        v61 = 0xEC00000065646972;
        goto LABEL_149;
      }
    }

    else
    {
      switch(v58)
      {
        case 2:
          v60 = 0x65674179786F7250;
          v61 = 0xEA0000000000746ELL;
          goto LABEL_149;
        case 3:
          v61 = 0xE500000000000000;
          v60 = 0x79786F7250;
          goto LABEL_149;
        case 4:
          v60 = 0x5079636176697250;
          v61 = 0xEC00000079786F72;
          goto LABEL_149;
      }
    }

    v60 = *(v82 - 1);
    v61 = *v82;
LABEL_149:
    if (v56 == v60 && v57 == v61)
    {
      sub_181ADC1E0(*(v82 - 1), *v82);
    }

    else
    {
      v48 = sub_182AD4268();
      sub_181ADC1E0(v59, v58);

      if ((v48 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v46 = v80 + 1;
    v47 = v70 + 4;
    v82 += 4;
    v45 = v78;
    if (v68 == v80 + 1)
    {
      goto LABEL_152;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}