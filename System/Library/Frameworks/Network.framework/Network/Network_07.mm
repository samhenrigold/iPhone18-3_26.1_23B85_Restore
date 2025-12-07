uint64_t _nw_parameters_get_uid(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xD8);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 216);
  }

  return v3;
}

uint64_t nw_parameters_get_persona(char *a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_persona(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_parameters_get_persona";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null parameters", buf, 12);

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
        v13 = "nw_parameters_get_persona";
        v7 = "%{public}s called with null parameters";
LABEL_18:
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
            v13 = "nw_parameters_get_persona";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_parameters_get_persona";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_get_persona";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_parameters_get_delegated_unique_pid(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_delegated_unique_pid();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_delegated_unique_pid";
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
        v12 = "nw_parameters_get_delegated_unique_pid";
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
            v12 = "nw_parameters_get_delegated_unique_pid";
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
        v12 = "nw_parameters_get_delegated_unique_pid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_delegated_unique_pid";
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

uint64_t _nw_protocol_stack_copy_internet_protocol_as_ip_options(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  v3 = sub_181AD6390(v2);

  return v3;
}

uint64_t sub_181AD6390(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    v2 = *(v1 + 56);
    if ((~v2 & 0xF000000000000007) != 0 && (v2 & 0xC000000000000000) == 0x8000000000000000 && v2 == 0x8000000000000000 && *(v1 + 48) == 0)
    {
      v5 = v1;
      if (qword_1ED4102F0 != -1)
      {
        swift_once();
      }

      v6 = *(&xmmword_1ED411D60 + 1);
      v7 = unk_1ED411D70;
      v8 = byte_1ED411D78;
      v9 = xmmword_1ED411D60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
      swift_allocObject();
      v10 = sub_181BB68A0(v9, v6, v7, v8, 0);
      v1 = v5;
      v11 = *(v5 + 48);
      v12 = *(v1 + 56);
      *(v1 + 48) = v10;
      *(v1 + 56) = 0;
      sub_181F49A24(v6, v7, v8);
      sub_181A52FE0(v11, v12);
    }
  }

  swift_beginAccess();
  v13 = 0;
  v14 = *(v1 + 56);
  if (v14 >> 62)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v14 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (!v15)
  {
    v13 = *(v1 + 48);
    sub_181B2C3E0(v13, v14);
  }

  return v13;
}

uint64_t nw_parameters_get_attribution_context(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_attribution_context();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_attribution_context";
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
        v12 = "nw_parameters_get_attribution_context";
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
            v12 = "nw_parameters_get_attribution_context";
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
        v12 = "nw_parameters_get_attribution_context";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_attribution_context";
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

_BYTE *_nw_parameters_get_attribution_context_0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 272);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 264);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage + 16] & 1) == 0)
      {
        v12 = *v7;
LABEL_21:
        os_unfair_lock_unlock((*&v2[v5] + 16));

        goto LABEL_22;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = sub_18224FE14(v4, v3);
        v15 = v14;

        v3 = v15;
        if ((v15 & 0x2000000000000000) == 0)
        {
LABEL_6:
          if ((v4 & 0x1000000000000000) != 0)
          {
            v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v9 = v4 & 0xFFFFFFFFFFFFLL;
            v10 = (v4 & 0xFFFFFFFFFFFFLL) + 1;
            if (!__OFADD__(v4 & 0xFFFFFFFFFFFFLL, 1))
            {
LABEL_8:
              v11 = swift_slowAlloc();
              v12 = v11;
              if (!v9)
              {
LABEL_11:
                v13 = &v12[v9];
LABEL_12:
                *v13 = 0;
                *v7 = v12;
                *(v7 + 1) = v10;
LABEL_20:
                v7[16] = 0;
                goto LABEL_21;
              }

              if (v10 >= v9)
              {
                memcpy(v11, v8, v9);
                goto LABEL_11;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v19 = sub_182AD3CF8();
            if (!v19)
            {
LABEL_28:
              v10 = 1;
              v13 = swift_slowAlloc();
              v12 = v13;
              goto LABEL_12;
            }

            v8 = v19;
            v9 = v20;
            v10 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v16 = HIBYTE(v3) & 0xF;
      __src[0] = v4;
      __src[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v17 = swift_slowAlloc();
      v12 = v17;
      if (v16)
      {
        memcpy(v17, __src, HIBYTE(v3) & 0xF);
      }

      v12[v16] = 0;
      *v7 = v12;
      *(v7 + 1) = v16 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 272);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

_BYTE *sub_181AD696C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
    v3 = *(v1 + 288);
    if (v3)
    {
LABEL_3:
      v4 = *(v1 + 280);
      v5 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
      v6 = *&v2[OBJC_IVAR____TtC7Network17ParametersStorage_storageLock];

      os_unfair_lock_lock(v6 + 4);
      v7 = &v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
      if ((v2[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage + 16] & 1) == 0)
      {
        v12 = *v7;
LABEL_21:
        os_unfair_lock_unlock((*&v2[v5] + 16));

        goto LABEL_22;
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = sub_18224FE14(v4, v3);
        v15 = v14;

        v3 = v15;
        if ((v15 & 0x2000000000000000) == 0)
        {
LABEL_6:
          if ((v4 & 0x1000000000000000) != 0)
          {
            v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v9 = v4 & 0xFFFFFFFFFFFFLL;
            v10 = (v4 & 0xFFFFFFFFFFFFLL) + 1;
            if (!__OFADD__(v4 & 0xFFFFFFFFFFFFLL, 1))
            {
LABEL_8:
              v11 = swift_slowAlloc();
              v12 = v11;
              if (!v9)
              {
LABEL_11:
                v13 = &v12[v9];
LABEL_12:
                *v13 = 0;
                *v7 = v12;
                *(v7 + 1) = v10;
LABEL_20:
                v7[16] = 0;
                goto LABEL_21;
              }

              if (v10 >= v9)
              {
                memcpy(v11, v8, v9);
                goto LABEL_11;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v19 = sub_182AD3CF8();
            if (!v19)
            {
LABEL_28:
              v10 = 1;
              v13 = swift_slowAlloc();
              v12 = v13;
              goto LABEL_12;
            }

            v8 = v19;
            v9 = v20;
            v10 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v16 = HIBYTE(v3) & 0xF;
      __src[0] = v4;
      __src[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v17 = swift_slowAlloc();
      v12 = v17;
      if (v16)
      {
        memcpy(v17, __src, HIBYTE(v3) & 0xF);
      }

      v12[v16] = 0;
      *v7 = v12;
      *(v7 + 1) = v16 + 1;
      goto LABEL_20;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 288);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_22:

  return v12;
}

uint64_t nw_parameters_get_fallback_mode(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_fallback_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_fallback_mode";
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
        v12 = "nw_parameters_get_fallback_mode";
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
            v12 = "nw_parameters_get_fallback_mode";
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
        v12 = "nw_parameters_get_fallback_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_fallback_mode";
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

uint64_t _nw_parameters_get_fallback_mode(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE9);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 233);
  }

  return v3;
}

uint64_t nw_parameters_get_allow_ultra_constrained(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_allow_ultra_constrained(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_allow_ultra_constrained";
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
        v12 = "nw_parameters_get_allow_ultra_constrained";
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
            v12 = "nw_parameters_get_allow_ultra_constrained";
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
        v12 = "nw_parameters_get_allow_ultra_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_allow_ultra_constrained";
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

uint64_t nw_parameters_get_dry_run(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_dry_run(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_dry_run";
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
        v12 = "nw_parameters_get_dry_run";
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
            v12 = "nw_parameters_get_dry_run";
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
        v12 = "nw_parameters_get_dry_run";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_dry_run";
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

uint64_t nw_parameters_get_include_ble(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_include_ble(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_include_ble";
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
        v12 = "nw_parameters_get_include_ble";
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
            v12 = "nw_parameters_get_include_ble";
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
        v12 = "nw_parameters_get_include_ble";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_include_ble";
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

uint64_t nw_parameters_get_include_screen_off_devices(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_include_screen_off_devices(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_include_screen_off_devices";
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
        v12 = "nw_parameters_get_include_screen_off_devices";
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
            v12 = "nw_parameters_get_include_screen_off_devices";
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
        v12 = "nw_parameters_get_include_screen_off_devices";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_include_screen_off_devices";
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

BOOL nw_parameters_get_reuse_local_address(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_reuse_local_address(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_reuse_local_address";
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
        v12 = "nw_parameters_get_reuse_local_address";
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
            v12 = "nw_parameters_get_reuse_local_address";
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
        v12 = "nw_parameters_get_reuse_local_address";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_reuse_local_address";
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

uint64_t nw_parameters_get_discretionary(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_discretionary(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_discretionary";
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
        v12 = "nw_parameters_get_discretionary";
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
            v12 = "nw_parameters_get_discretionary";
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
        v12 = "nw_parameters_get_discretionary";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_discretionary";
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

uint64_t nw_parameters_get_ecn_mode(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_ecn_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_ecn_mode";
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
        v12 = "nw_parameters_get_ecn_mode";
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
            v12 = "nw_parameters_get_ecn_mode";
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
        v12 = "nw_parameters_get_ecn_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_ecn_mode";
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

uint64_t _nw_parameters_get_internal_attribution(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xE8);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 232);
  }

  return v3;
}

uint64_t _nw_parameters_get_traffic_class(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xDC);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 220);
  }

  return v3;
}

uint64_t nw_parameters_get_is_known_tracker(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_is_known_tracker(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_is_known_tracker";
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
        v12 = "nw_parameters_get_is_known_tracker";
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
            v12 = "nw_parameters_get_is_known_tracker";
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
        v12 = "nw_parameters_get_is_known_tracker";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_is_known_tracker";
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

uint64_t nw_parameters_get_data_mode(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_data_mode();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_data_mode";
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
        v12 = "nw_parameters_get_data_mode";
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
            v12 = "nw_parameters_get_data_mode";
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
        v12 = "nw_parameters_get_data_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_data_mode";
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

nw_endpoint_t nw_parameters_copy_local_endpoint(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_copy_local_endpoint(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_copy_local_endpoint";
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
        v12 = "nw_parameters_copy_local_endpoint";
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
            v12 = "nw_parameters_copy_local_endpoint";
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
        v12 = "nw_parameters_copy_local_endpoint";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_copy_local_endpoint";
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

uint64_t nw_parameters_get_allow_socket_access(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_allow_socket_access(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_allow_socket_access";
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
        v12 = "nw_parameters_get_allow_socket_access";
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
            v12 = "nw_parameters_get_allow_socket_access";
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
        v12 = "nw_parameters_get_allow_socket_access";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_allow_socket_access";
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

uint64_t nw_parameters_get_tfo(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_tfo(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_tfo";
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
        v12 = "nw_parameters_get_tfo";
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
            v12 = "nw_parameters_get_tfo";
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
        v12 = "nw_parameters_get_tfo";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_tfo";
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

uint64_t nw_parameters_is_fallback(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_fallback(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_fallback";
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
        v12 = "nw_parameters_is_fallback";
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
            v12 = "nw_parameters_is_fallback";
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
        v12 = "nw_parameters_is_fallback";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_fallback";
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

uint64_t nw_parameters_is_third_party_web_content(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_third_party_web_content(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_third_party_web_content";
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
        v12 = "nw_parameters_is_third_party_web_content";
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
            v12 = "nw_parameters_is_third_party_web_content";
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
        v12 = "nw_parameters_is_third_party_web_content";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_third_party_web_content";
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

uint64_t nw_parameters_is_approved_app_domain(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_approved_app_domain(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_approved_app_domain";
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
        v12 = "nw_parameters_is_approved_app_domain";
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
            v12 = "nw_parameters_is_approved_app_domain";
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
        v12 = "nw_parameters_is_approved_app_domain";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_approved_app_domain";
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

uint64_t nw_parameters_get_use_enhanced_privacy_mode(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_use_enhanced_privacy_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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
        v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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
            v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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
        v12 = "nw_parameters_get_use_enhanced_privacy_mode";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_use_enhanced_privacy_mode";
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

uint64_t nw_parameters_get_web_search_content(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_web_search_content(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_web_search_content";
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
        v12 = "nw_parameters_get_web_search_content";
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
            v12 = "nw_parameters_get_web_search_content";
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
        v12 = "nw_parameters_get_web_search_content";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_web_search_content";
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

uint64_t _nw_protocol_stack_iterate_application_protocols(uint64_t a1, void *aBlock)
{
  v2 = _Block_copy(aBlock);
  v5[2] = v2;

  sub_181AC9C88(v3, sub_181AA94F4, v5);
  _Block_release(v2);
}

void _nw_path_set_effective_mtu(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 25) = a2;
  }
}

void _nw_path_set_link_quality(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v3[153] = a2;
  }
}

void sub_181AD9DB8()
{
  v105 = *MEMORY[0x1E69E9840];
  v2 = v0 + 200;
  v1 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v1 + 24);
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v3)
    {
      v4 = v0;
      v5 = 0;
      v59 = 0;
      v60 = 0;
      v61 = *(v1 + 24);
      while (1)
      {
        if (v5 >= v3)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
        }

        if (__OFADD__(v5, 1))
        {
          goto LABEL_50;
        }

        v6 = *v2;
        if (!*v2)
        {
          goto LABEL_56;
        }

        if (v5 >= v6[3])
        {
          goto LABEL_51;
        }

        v7 = v6[4];
        if (v5 + v7 >= v6[2])
        {
          v8 = v6[2];
        }

        else
        {
          v8 = 0;
        }

        v9 = v6[26 * v5 + 14 + 26 * (v7 - v8)];
        if (v9)
        {
          if (*(v4 + 184))
          {

            sub_181F60BCC(v10);

            v6 = *v2;
            if (!*v2)
            {
              goto LABEL_59;
            }
          }

          else
          {
            *(v4 + 184) = v9;
          }
        }

        if (v5 >= v6[3])
        {
          goto LABEL_52;
        }

        v11 = v6[4];
        if (v5 + v11 >= v6[2])
        {
          v12 = v6[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v6[26 * v5 + 15 + 26 * (v11 - v12)];
        if (!v13)
        {
          goto LABEL_25;
        }

        if (*(v4 + 192))
        {
          break;
        }

        *(v4 + 192) = v13;

        if (*(v4 + 138))
        {
LABEL_26:
          if (!v6)
          {
            goto LABEL_58;
          }

          if (v5 >= v6[3])
          {
            goto LABEL_54;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1820E6474();
          }

          v15 = *(*v2 + 32);
          if (v5 + v15 >= *(*v2 + 16))
          {
            v16 = *(*v2 + 16);
          }

          else
          {
            v16 = 0;
          }

          v17 = *v2 + 208 * (v5 + v15 - v16);
          v18 = *(v17 + 240);
          v19 = *(v17 + 184);
          v20 = *(v17 + 216);
          v102 = *(v17 + 200);
          v103 = v20;
          v104 = *(v17 + 232);
          v21 = *(v17 + 120);
          v22 = *(v17 + 152);
          v98 = *(v17 + 136);
          v99 = v22;
          v100 = *(v17 + 168);
          v101 = v19;
          v23 = *(v17 + 56);
          v24 = *(v17 + 88);
          v94 = *(v17 + 72);
          v95 = v24;
          v96 = *(v17 + 104);
          v97 = v21;
          v92 = *(v17 + 40);
          v93 = v23;
          v18 |= 0x800u;
          v25 = v101;
          v26 = v102;
          v76 = v102;
          *v77 = v20;
          v27 = v104;
          *&v77[16] = v104;
          v28 = v97;
          v29 = v98;
          v72 = v98;
          v73 = v99;
          v30 = v99;
          v31 = v100;
          v74 = v100;
          v75 = v101;
          v32 = v93;
          v33 = v94;
          v68 = v94;
          v69 = v24;
          v34 = v24;
          v35 = v96;
          v70 = v96;
          v71 = v97;
          v36 = v92;
          v66 = v92;
          v67 = v93;
          *&v77[24] = v18;
          *(v17 + 40) = v92;
          v37 = v67;
          v38 = v68;
          v39 = v69;
          *(v17 + 104) = v70;
          *(v17 + 88) = v39;
          *(v17 + 72) = v38;
          *(v17 + 56) = v37;
          v40 = v71;
          v41 = v72;
          v42 = v73;
          *(v17 + 168) = v74;
          *(v17 + 152) = v42;
          *(v17 + 136) = v41;
          *(v17 + 120) = v40;
          v43 = v75;
          v44 = v76;
          v45 = *v77;
          *(v17 + 226) = *&v77[10];
          *(v17 + 216) = v45;
          *(v17 + 200) = v44;
          *(v17 + 184) = v43;
          v88 = v26;
          v89 = v103;
          v84 = v29;
          v85 = v30;
          v86 = v31;
          v87 = v25;
          v80 = v33;
          v81 = v34;
          v90 = v27;
          v82 = v35;
          v83 = v28;
          uu = v36;
          v79 = v32;
          v91 = v18;
          sub_181AFE6F4(&v66, v65);
          sub_181AFE6A0(&uu);
          v6 = *v2;
        }

LABEL_34:
        if (!v6)
        {
          goto LABEL_57;
        }

        if (v5 >= v6[3])
        {
          goto LABEL_53;
        }

        v64 = v5 + 1;
        v46 = v6[4];
        if (v5 + v46 >= v6[2])
        {
          v47 = v6[2];
        }

        else
        {
          v47 = 0;
        }

        v48 = &v6[26 * v5 + 26 * (v46 - v47)];
        if (*(v48 + 156) == 1 || (v49 = *(v48 + 38), v51 = v48[17], v50 = v48[18], LOBYTE(uu) = BYTE4(v51), BYTE1(uu) = BYTE5(v51), BYTE2(uu) = BYTE6(v51), BYTE3(uu) = HIBYTE(v51), *(&uu + 4) = v50, HIDWORD(uu) = v49, uuid_is_null(&uu) == 1))
        {
          ++v5;
          v3 = v61;
          v2 = v62;
          v4 = v63;
          if (v64 == v61)
          {
            v56 = v59;
            goto LABEL_47;
          }
        }

        else
        {
          v57 = *(v63 + 32);
          swift_beginAccess();
          v58 = *(*(v57 + 296) + 16);
          v52 = swift_allocObject();
          *(v52 + 16) = BYTE4(v51);
          *(v52 + 17) = BYTE5(v51);
          *(v52 + 18) = BYTE6(v51);
          *(v52 + 19) = HIBYTE(v51);
          *(v52 + 20) = v50;
          *(v52 + 28) = v49;
          *(v52 + 32) = v51;
          *(v52 + 40) = v50;
          *(v52 + 48) = v49;
          v4 = v63;
          *(v52 + 56) = v63;
          *(v52 + 64) = v5;
          v53 = v52;
          swift_unknownObjectRetain_n();
          sub_181A554F4(v60, v59);
          v54 = swift_allocObject();
          v60 = sub_181B99D9C;
          *(v54 + 16) = sub_181B99D9C;
          *(v54 + 24) = v53;
          *&v80 = sub_181ADA4AC;
          *(&v80 + 1) = v54;
          *&uu = MEMORY[0x1E69E9820];
          *(&uu + 1) = 1107296256;
          *&v79 = sub_181ACCF58;
          *(&v79 + 1) = &block_descriptor_42;
          v55 = _Block_copy(&uu);

          nw_path_access_agent_cache(v58, v55);
          _Block_release(v55);
          swift_unknownObjectRelease_n();
          v56 = v53;
          ++v5;
          v59 = v53;
          v3 = v61;
          v2 = v62;
          if (v64 == v61)
          {
            goto LABEL_47;
          }
        }
      }

      sub_181F60BCC(v14);

      v6 = *v2;
LABEL_25:
      if (*(v4 + 138))
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }

    v60 = 0;
    v56 = 0;
LABEL_47:
    sub_181A554F4(v60, v56);
  }
}

char *_nw_path_set_browse_descriptor(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    *(v3 + 21) = a2;
    swift_unknownObjectRetain();

    return swift_unknownObjectRelease();
  }

  return result;
}

void _nw_path_set_client_id(char *a1, const unsigned __int8 *a2)
{
  if (a1 && a2)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    is_null = uuid_is_null(a2);
    v6 = 0uLL;
    if (is_null != 1)
    {
      v6 = *a2;
    }

    *(v3 + 3) = v6;
    v3[64] = is_null == 1;
    swift_endAccess();
  }
}

id _nw_path_create_0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
  }

  if (!a2)
  {
    Parameters.init(noInternetProtocol:)(0, __dst);
    goto LABEL_7;
  }

  v5 = *(a2 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if (v5 < 0)
  {
    memcpy(__dst, ((v5 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    sub_181F481DC(__dst, v12);

LABEL_7:
    type metadata accessor for MutableParametersStorage();
    v5 = swift_allocObject();
    memcpy((v5 + 16), __dst, 0x188uLL);
  }

  sub_181FD45CC(a1, v5, __dst);
  v6 = type metadata accessor for __NWPath();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  type metadata accessor for SystemLock._Storage(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v7[v8] = v9;
  *&v7[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
  *&v7[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
  *&v7[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
  memcpy(&v7[OBJC_IVAR____TtC7Network8__NWPath_path], __dst, 0x17AuLL);
  sub_181A3DF5C(__dst, v12);
  v13.receiver = v7;
  v13.super_class = v6;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_181A3DFB8(__dst);
  return v10;
}

uint64_t sub_181ADA6FC(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838790, &qword_182AE4C18);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1820E5978(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    type metadata accessor for Endpoint(0);
    sub_182AD2398();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838790, &qword_182AE4C18);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838790, &qword_182AE4C18);
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
        sub_181F47BD4(v9 + 16, v9 + 40, v5, v4 + 40, type metadata accessor for Endpoint);
      }
    }
  }

  *v3 = v9;
  return result;
}

void *sub_181ADA8CC(void *result, uint64_t a2, void *a3)
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
          return a3;
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

uint64_t _nw_path_get_necp_result_direct_interface_index(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 83);

  return v3;
}

void _nw_path_set_necp_result_direct_interface_generation(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 84) = a2;
  }
}

void _nw_path_set_necp_result_direct_interface_index(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 83) = a2;
  }
}

uint64_t _nw_path_get_necp_result_delegate_interface_index(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 85);

  return v3;
}

void _nw_path_set_interface_time_delta(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 27) = a2;
  }
}

void _nw_path_add_necp_result_netagent(char *a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = OBJC_IVAR____TtC7Network8__NWPath_lock;
      v4 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
      v8 = a1;
      os_unfair_lock_lock(v4 + 4);
      v9 = OBJC_IVAR____TtC7Network8__NWPath_path;
      swift_beginAccess();
      sub_182266578(&v8[v9], a2, a3);
      swift_endAccess();
      os_unfair_lock_unlock((*&a1[v3] + 16));
    }
  }
}

void *sub_181ADABF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = result[1];
  v6 = result[2];
  v8 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (!v8)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = a2 + 20 * v7;
        *v9 = a3;
        *(v9 + 8) = a4;
        *(v9 + 16) = a5;
        v8 = __OFADD__(v5, 1);
        v10 = v5 + 1;
        if (!v8)
        {
          result[1] = v10;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
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

void sub_181ADAC58(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
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

LABEL_32:
    __break(1u);
    goto LABEL_33;
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
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[20 * v4];
  if (v12 != __dst || &v12[20 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 20 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[20 * v8];
  if (v16 != v11 || v16 >= &v11[20 * v7])
  {

    memmove(v16, v11, 20 * v7);
  }
}

void _nw_path_set_necp_result_interface_options(char *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a3;
      v5 = OBJC_IVAR____TtC7Network8__NWPath_path;
      v7 = a1;
      swift_beginAccess();
      sub_18226638C(&a1[v5], v4, a2);
      swift_endAccess();
    }
  }
}

void nw_path_snapshot_path(NWConcrete_nw_path *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_path_snapshot_path(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_path_snapshot_path";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null path", buf, 12);

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
        v14 = "nw_path_snapshot_path";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null path", buf, 0xCu);
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
          v14 = "nw_path_snapshot_path";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_path_snapshot_path";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_path_snapshot_path";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

void sub_181ADB0F8()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  *(v0 + 8) = 0;

  *(v0 + 16) = 0;
  v4 = *(v0 + 328);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = *(v0 + 332);
  if (v4)
  {
    goto LABEL_3;
  }

  v15 = *(v0 + 32);
  swift_beginAccess();
  v16 = *(v15 + 240);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v4 = *(v17 + 16);
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v4))
      {
        if (v4)
        {
LABEL_3:
          v5 = *(v0 + 32);
          swift_beginAccess();
          v6 = *(*(v5 + 296) + 16);
          v7 = *(v0 + 336);
          v8 = swift_unknownObjectRetain();
          v9 = nw_path_copy_interface_with_generation(v8, v4, v7);
          if (v9)
          {
            v10 = *&v9[OBJC_IVAR____TtC7Network13__NWInterface_interface];
            v11 = v9;

            *(v0 + 8) = v10;
          }

          v12 = *(v0 + 340);
          if (v12)
          {
            v13 = nw_path_copy_interface_with_generation(v6, v12, *(v0 + 344));
            swift_unknownObjectRelease();
            if (v13)
            {
              v14 = *&v13[OBJC_IVAR____TtC7Network13__NWInterface_interface];

              *(v0 + 16) = v14;
            }

            else
            {

              *(v0 + 16) = 0;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return;
        }

        goto LABEL_16;
      }

      __break(1u);
    }
  }

LABEL_16:
  v18 = *(v0 + 40);
  if (v18)
  {
    v19 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v18 + v19, v3);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_181B5C160(v3);
    }

    else
    {
      v20 = *(v3 + 1);
      v21 = *(v3 + 2);
      v22 = *(v3 + 3);
      v23 = *(v3 + 4);
      v24 = *(v3 + 20);
      v25 = v3[42];
      if (v25 == 2)
      {
        v33[0] = *v3;
        v33[1] = v20;
        v34 = v21;
        v35 = v22;
        v36 = v23;
        v37 = v24;
        v26 = *(v0 + 32);
        swift_beginAccess();
        v27 = *(*(v26 + 296) + 16);
        swift_unknownObjectRetain();
        v28 = v18;
        loopback_index = nw_interface_get_loopback_index();
        v30 = nw_path_copy_interface_with_generation(v27, loopback_index, 0);
        if (v30)
        {
          v31 = *&v30[OBJC_IVAR____TtC7Network13__NWInterface_interface];

          *(v0 + 8) = v31;
          swift_unknownObjectRelease();

          sub_181AD1DE4(v34, v35, v36, v37, 2u);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          sub_181AD1DE4(v34, v35, v36, v37, 2u);

          *(v0 + 8) = 0;
        }
      }

      else
      {
        v32 = *(v3 + 2);

        sub_181AD1DE4(v32, v22, v23, v24, v25);
      }
    }
  }
}

void nw_parameters_iterate_parent_ids(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_iterate_parent_ids";
    v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null parameters", buf, 12);

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
        v19 = "nw_parameters_iterate_parent_ids";
        v10 = "%{public}s called with null parameters";
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
          v19 = "nw_parameters_iterate_parent_ids";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_parameters_iterate_parent_ids";
        v10 = "%{public}s called with null parameters, no backtrace";
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
        v19 = "nw_parameters_iterate_parent_ids";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_iterate_parent_ids(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_iterate_parent_ids";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null iterator", buf, 12);

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
      v19 = "nw_parameters_iterate_parent_ids";
      v10 = "%{public}s called with null iterator";
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
      v19 = "nw_parameters_iterate_parent_ids";
      v10 = "%{public}s called with null iterator, backtrace limit exceeded";
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
      v19 = "nw_parameters_iterate_parent_ids";
      v10 = "%{public}s called with null iterator, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_iterate_parent_ids";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null iterator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

char *sub_181ADB924(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

unint64_t sub_181ADBA40(unsigned int a1, int a2)
{
  if (a2 > 4000)
  {
    if (a2 == 4001)
    {
      return 6;
    }

    if (a2 == 5001)
    {
      return 7;
    }
  }

  else
  {
    if (a2 == 1001)
    {
      return 3;
    }

    if (a2 == 1002)
    {
      return 4;
    }
  }

  v3 = 8 * a1;
  if (a1 >= 5)
  {
    v3 = 0;
  }

  return 0x102050300uLL >> v3;
}

uint64_t sub_181ADBACC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
  }

  v14[0] = a3;
  v14[1] = a4;

  sub_181AC04E8(v14, a5, a2, v15);

  if (v15[0])
  {
    v13 = v15[1];
    *a8 = v15[0];

    *a9 = v13;

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_181ADBBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      *uu1 = *(*(v3 + 48) + 16 * v5);
      v10[0] = a1;
      v10[1] = a2;
      if (!uuid_compare(uu1, v10))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t *sub_181ADBCBC(size_t *result, void *__dst, int64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if (a5 - a4 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

size_t nw_dictionary_get_count(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_dictionary_get_count";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null dictionary", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_dictionary_get_count";
      v7 = "%{public}s called with null dictionary";
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_dictionary_get_count";
      v7 = "%{public}s called with null dictionary, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v10 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_dictionary_get_count";
      v7 = "%{public}s called with null dictionary, no backtrace";
      goto LABEL_33;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_dictionary_get_count";
      v17 = 2082;
      v18 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v4)
    {
      return 0;
    }

LABEL_35:
    free(v4);
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_dictionary_get_count";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null dictionary->xpc_object", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_dictionary_get_count";
      v7 = "%{public}s called with null dictionary->xpc_object";
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "nw_dictionary_get_count";
      v7 = "%{public}s called with null dictionary->xpc_object, backtrace limit exceeded";
      goto LABEL_33;
    }

    v11 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v12 = os_log_type_enabled(v5, type);
    if (v11)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_dictionary_get_count";
        v17 = 2082;
        v18 = v11;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null dictionary->xpc_object, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v11);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_dictionary_get_count";
      v7 = "%{public}s called with null dictionary->xpc_object, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  return xpc_dictionary_get_count(v1);
}

uint64_t sub_181ADC1E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

unint64_t sub_181ADC1F8()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  arc4random_buf(v2, 8uLL);
  v0 = v2[0];
  v2[0] = 0;
  arc4random_buf(v2, 8uLL);
  return v0 & 0xFF0FFFFFFFFFFFFFLL | 0x40000000000000;
}

uint64_t sub_181ADC28C(_BYTE *a1, unint64_t *a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 216);
  v234 = *(v2 + 200);
  v235 = v9;
  v10 = *(v2 + 248);
  v236 = *(v2 + 232);
  v237 = v10;
  v11 = *(v2 + 152);
  v230 = *(v2 + 136);
  v231 = v11;
  v12 = *(v2 + 184);
  v232 = *(v2 + 168);
  v233 = v12;
  v13 = *(v2 + 88);
  v226 = *(v2 + 72);
  v227 = v13;
  v14 = *(v2 + 120);
  v228 = *(v2 + 104);
  v229 = v14;
  v15 = *(v2 + 56);
  v224 = *(v2 + 40);
  v225 = v15;
  v16 = *(v2 + 264);
  v17 = *(v2 + 352);
  v222 = *(v2 + 336);
  v223[0] = v17;
  *(v223 + 10) = *(v2 + 362);
  v18 = *(v2 + 288);
  v218 = *(v2 + 272);
  v219 = v18;
  v19 = *(v2 + 320);
  v220 = *(v2 + 304);
  v221 = v19;
  if (v5)
  {
    v199 = *(v5 + 184);
    v20 = *(v5 + 185);
    if (v7)
    {
LABEL_3:
      v198 = *(v7 + 184);
      v194 = *(v7 + 185);
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 5;
    v199 = 5;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v194 = 5;
  v198 = 5;
LABEL_6:
  *&v216[0] = v4;
  *(&v216[0] + 1) = v5;
  *&v216[1] = v7;
  *(&v216[1] + 1) = v6;
  v204 = v6;
  *&v216[2] = v8;
  *(&v216[12] + 8) = *(v2 + 200);
  *(&v216[13] + 8) = *(v2 + 216);
  *(&v216[14] + 8) = *(v2 + 232);
  *(&v216[15] + 8) = *(v2 + 248);
  *(&v216[8] + 8) = *(v2 + 136);
  *(&v216[9] + 8) = *(v2 + 152);
  *(&v216[10] + 8) = *(v2 + 168);
  *(&v216[11] + 8) = *(v2 + 184);
  *(&v216[4] + 8) = *(v2 + 72);
  *(&v216[5] + 8) = *(v2 + 88);
  *(&v216[6] + 8) = *(v2 + 104);
  *(&v216[7] + 8) = *(v2 + 120);
  *(&v216[2] + 8) = *(v2 + 40);
  *(&v216[3] + 8) = *(v2 + 56);
  *(&v216[16] + 1) = v16;
  *(&v216[22] + 10) = *(v2 + 362);
  v21 = *(v2 + 352);
  v216[21] = *(v2 + 336);
  v216[22] = v21;
  v22 = *(v2 + 288);
  v216[17] = *(v2 + 272);
  v216[18] = v22;
  v23 = *(v2 + 320);
  v216[19] = *(v2 + 304);
  v216[20] = v23;

  swift_retain_n();
  v207 = v16;
  if (sub_181ADE65C())
  {

    goto LABEL_8;
  }

  v196 = v4;
  swift_beginAccess();
  v34 = v8[30];
  if (!v34)
  {
    goto LABEL_200;
  }

  v35 = *(v34 + 24);
  if (!v35)
  {
LABEL_85:
    v76 = v8[30];
    if (v76)
    {
      goto LABEL_86;
    }

LABEL_200:

    goto LABEL_201;
  }

  if (v199 == 5)
  {
    swift_retain_n();
    goto LABEL_83;
  }

  v71 = v35[4];
  v72 = v35[3] + v71;
  if (v35[2] < v72)
  {
    v72 = v35[2];
  }

  *&v216[0] = v35;
  *(&v216[0] + 1) = v71;
  *&v216[1] = v72;

  v74 = v35;
  while (1)
  {
    if (v71 != *&v216[1])
    {
      goto LABEL_79;
    }

    if ((sub_181AC81FC(v73) & 1) == 0)
    {
      break;
    }

    v71 = *(&v216[0] + 1);
    v74 = *&v216[0];
LABEL_79:
    v75 = v74 + v71++;
    *(&v216[0] + 1) = v71;
    if (qword_182AEE030[v75[40]] == qword_182AEE030[v199])
    {

      *a1 = 7;
      *&v216[0] = 0xD000000000000010;
      *(&v216[0] + 1) = 0x8000000182BD7460;
      v84 = 0xE400000000000000;
      v85 = 0xE800000000000000;
      v86 = 0x72616C756C6C6563;
      v87 = 0x7465206465726977;
      v88 = 0xEE0074656E726568;
      if (v199 != 3)
      {
        v87 = 0x6B636162706F6F6CLL;
        v88 = 0xE800000000000000;
      }

      if (v199 != 2)
      {
        v86 = v87;
        v85 = v88;
      }

      v89 = 0x726568746FLL;
      if (v199)
      {
        v89 = 1768319351;
      }

      else
      {
        v84 = 0xE500000000000000;
      }

      if (v199 <= 1)
      {
        v90 = v89;
      }

      else
      {
        v90 = v86;
      }

      if (v199 <= 1)
      {
        v91 = v84;
      }

      else
      {
        v91 = v85;
      }

      MEMORY[0x1865D9CA0](v90, v91);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);
      goto LABEL_269;
    }
  }

  swift_retain_n();

  v16 = v207;
LABEL_83:
  if (v198 == 5)
  {

    goto LABEL_85;
  }

  v79 = a2;
  v80 = v35[4];
  v81 = v35[3] + v80;
  if (v35[2] < v81)
  {
    v81 = v35[2];
  }

  *&v216[0] = v35;
  *(&v216[0] + 1) = v80;
  *&v216[1] = v81;
  v82 = v35;
  while (2)
  {
    if (v80 != *&v216[1])
    {
      goto LABEL_94;
    }

    if (sub_181AC81FC(v36))
    {
      v80 = *(&v216[0] + 1);
      v82 = *&v216[0];
LABEL_94:
      v83 = v82 + v80++;
      *(&v216[0] + 1) = v80;
      if (qword_182AEE030[v83[40]] != qword_182AEE030[v198])
      {
        continue;
      }

      *a1 = 7;
      *&v216[0] = 0xD000000000000010;
      *(&v216[0] + 1) = 0x8000000182BD7460;
      v128 = 0xE400000000000000;
      v129 = 0xE800000000000000;
      v130 = 0x72616C756C6C6563;
      v131 = 0x7465206465726977;
      v132 = 0xEE0074656E726568;
      if (v198 != 3)
      {
        v131 = 0x6B636162706F6F6CLL;
        v132 = 0xE800000000000000;
      }

      if (v198 != 2)
      {
        v130 = v131;
        v129 = v132;
      }

      v133 = 0x726568746FLL;
      if (v198)
      {
        v133 = 1768319351;
      }

      else
      {
        v128 = 0xE500000000000000;
      }

      if (v198 <= 1)
      {
        v134 = v133;
      }

      else
      {
        v134 = v130;
      }

      if (v198 <= 1)
      {
        v135 = v128;
      }

      else
      {
        v135 = v129;
      }

      MEMORY[0x1865D9CA0](v134, v135);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);
LABEL_284:

      result = 0;
      v174 = *(&v216[0] + 1);
      *v79 = *&v216[0];
      v79[1] = v174;
      return result;
    }

    break;
  }

  v16 = v207;
  v76 = v8[30];
  if (!v76)
  {
    goto LABEL_200;
  }

LABEL_86:
  v192 = *(v76 + 32);
  if (!v192)
  {
    goto LABEL_186;
  }

  if (v20 == 5)
  {
    v77 = *(v76 + 32);
    swift_retain_n();
    goto LABEL_184;
  }

  v136 = *(v76 + 32);
  v137 = v192[4];
  v138 = v192[3] + v137;
  if (v192[2] < v138)
  {
    v138 = v192[2];
  }

  *&v216[0] = v192;
  *(&v216[0] + 1) = v137;
  *&v216[1] = v138;

  while (2)
  {
    if (v137 != *&v216[1])
    {
LABEL_180:
      v140 = v136 + v137++;
      *(&v216[0] + 1) = v137;
      if (qword_182AEE058[*(v140 + 40)] == qword_182AEE058[v20])
      {

        *a1 = 7;
        *&v216[0] = 0xD000000000000013;
        *(&v216[0] + 1) = 0x8000000182BD7400;
        v155 = 0x7365636F72706F63;
        v156 = 0xEB00000000726F73;
        if (v20 != 3)
        {
          v155 = 0x6F696E61706D6F63;
          v156 = 0xE90000000000006ELL;
        }

        if (v20 == 2)
        {
          v155 = 0x6477615F69666977;
          v156 = 0xE90000000000006CLL;
        }

        v157 = 0xE500000000000000;
        v158 = 0x726568746FLL;
        if (v20)
        {
          v158 = 0xD000000000000013;
          v157 = 0x8000000182BD71B0;
        }

        if (v20 <= 1)
        {
          v159 = v158;
        }

        else
        {
          v159 = v155;
        }

        if (v20 <= 1)
        {
          v160 = v157;
        }

        else
        {
          v160 = v156;
        }

        MEMORY[0x1865D9CA0](v159, v160);

        MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);

        result = 0;
        v161 = *(&v216[0] + 1);
        *a2 = *&v216[0];
        a2[1] = v161;
        return result;
      }

      continue;
    }

    break;
  }

  if (sub_181AC81FC(v139))
  {
    v137 = *(&v216[0] + 1);
    v136 = *&v216[0];
    goto LABEL_180;
  }

  v77 = v192;
  swift_retain_n();

  v16 = v207;
LABEL_184:
  if (v194 == 5)
  {

LABEL_186:
    v141 = v8[30];
    if (!v141)
    {
      goto LABEL_200;
    }

    goto LABEL_187;
  }

  v146 = v77[4];
  v147 = v77[3] + v146;
  if (v77[2] < v147)
  {
    v147 = v77[2];
  }

  *&v216[0] = v77;
  *(&v216[0] + 1) = v146;
  *&v216[1] = v147;
  v148 = v77;
  while (2)
  {
    if (v146 != *&v216[1])
    {
      goto LABEL_196;
    }

    if (sub_181AC81FC(v78))
    {
      v146 = *(&v216[0] + 1);
      v148 = *&v216[0];
LABEL_196:
      v149 = v148 + v146++;
      *(&v216[0] + 1) = v146;
      if (qword_182AEE058[v149[40]] != qword_182AEE058[v194])
      {
        continue;
      }

      v79 = a2;

      *a1 = 7;
      *&v216[0] = 0xD000000000000013;
      *(&v216[0] + 1) = 0x8000000182BD7400;
      v168 = 0x7365636F72706F63;
      v169 = 0xEB00000000726F73;
      if (v194 != 3)
      {
        v168 = 0x6F696E61706D6F63;
        v169 = 0xE90000000000006ELL;
      }

      if (v194 == 2)
      {
        v168 = 0x6477615F69666977;
        v169 = 0xE90000000000006CLL;
      }

      v170 = 0xE500000000000000;
      v171 = 0x726568746FLL;
      if (v194)
      {
        v171 = 0xD000000000000013;
        v170 = 0x8000000182BD71B0;
      }

      if (v194 <= 1)
      {
        v172 = v171;
      }

      else
      {
        v172 = v168;
      }

      if (v194 <= 1)
      {
        v173 = v170;
      }

      else
      {
        v173 = v169;
      }

      MEMORY[0x1865D9CA0](v172, v173);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD7440);

      goto LABEL_284;
    }

    break;
  }

  v141 = v8[30];
  if (!v141)
  {
    goto LABEL_200;
  }

LABEL_187:
  if (!*(v141 + 48))
  {
    goto LABEL_200;
  }

  v195 = *(v141 + 48);
  swift_retain_n();
  if (v5)
  {
    if (sub_181F44238(v5, v195, v142))
    {

      *a1 = 6;
      sub_182AD3BA8();

      *&v216[0] = 0x6361667265746E49;
      *(&v216[0] + 1) = 0xEB00000000272065;
      v143 = *(v5 + 40);
      v144 = *(v5 + 48);

      MEMORY[0x1865D9CA0](v143, v144);

      MEMORY[0x1865D9CA0](2579239, 0xE300000000000000);
      v217[0] = *(v5 + 16);
      v145 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v145);

      MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BD7420);

LABEL_269:

      result = 0;
      v33 = *(&v216[0] + 1);
      v32 = *&v216[0];
      goto LABEL_270;
    }
  }

  if (v7)
  {
    v193 = sub_181F44238(v7, v195, v142);

    if (v193)
    {

      *a1 = 6;
      *&v216[0] = 0;
      *(&v216[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD7400);
      v175 = *(v7 + 40);
      v176 = *(v7 + 48);

      MEMORY[0x1865D9CA0](v175, v176);

      MEMORY[0x1865D9CA0](2579239, 0xE300000000000000);
      v217[0] = *(v7 + 16);
      v177 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v177);

      MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BD7420);

      result = 0;
      *a2 = v216[0];
      return result;
    }
  }

  else
  {
  }

LABEL_201:
  *&v216[0] = v196;
  *(&v216[0] + 1) = v5;
  *&v216[1] = v7;
  *(&v216[1] + 1) = v204;
  *&v216[2] = v8;
  *(&v216[12] + 8) = v234;
  *(&v216[13] + 8) = v235;
  *(&v216[14] + 8) = v236;
  *(&v216[15] + 8) = v237;
  *(&v216[8] + 8) = v230;
  *(&v216[9] + 8) = v231;
  *(&v216[10] + 8) = v232;
  *(&v216[11] + 8) = v233;
  *(&v216[4] + 8) = v226;
  *(&v216[5] + 8) = v227;
  *(&v216[6] + 8) = v228;
  *(&v216[7] + 8) = v229;
  *(&v216[2] + 8) = v224;
  *(&v216[3] + 8) = v225;
  *(&v216[16] + 1) = v16;
  *(&v216[22] + 10) = *(v223 + 10);
  v216[21] = v222;
  v216[22] = v223[0];
  v216[17] = v218;
  v216[18] = v219;
  v216[19] = v220;
  v216[20] = v221;
  if (!sub_181ADE760())
  {
    v151 = *(v8 + 224);
    if ((v151 - 1) <= 2 && (v199 == 5 || (v151 - 1) + 2 != qword_182AEE030[v199]) && (v198 == 5 || (v151 - 1) + 2 != qword_182AEE030[v198]))
    {

      if (*a1 == 32 || !a2[1])
      {
        goto LABEL_309;
      }

      *a1 = 8;
      *&v216[0] = 0;
      *(&v216[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x6361667265746E49, 0xEF20657079742065);
      sub_1822694FC(v151);
      goto LABEL_268;
    }

    v152 = *(v8 + 225);
    if ((v152 - 1) > 3u)
    {
      goto LABEL_240;
    }

    if (v5)
    {
      v153 = *(v5 + 185);
      if (v7)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v153 = 0;
      if (v7)
      {
LABEL_213:
        v154 = *(v7 + 185);
        if (v153 == 5)
        {
LABEL_238:
          if (v154 != 5 && qword_182AEE010[v152 - 1] == qword_182AEE058[v154])
          {
LABEL_240:
            v163 = v8[30];
            if (!v163)
            {
              goto LABEL_245;
            }

            v164 = *(v163 + 16);
            if (!v164)
            {
              goto LABEL_245;
            }

            *&v216[0] = *(v163 + 16);
            if (v5)
            {
              v217[0] = v5;

              v202 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(v216, v217);
              swift_retain_n();

              if (v202)
              {

                goto LABEL_246;
              }
            }

            else
            {
              swift_retain_n();
            }

            *&v216[0] = v164;
            if (v7)
            {
              v217[0] = v7;
              v203 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(v216, v217);

              if (v203)
              {
LABEL_245:

LABEL_246:
                v150 = *(v8 + 230);
                if (v150)
                {
                  goto LABEL_247;
                }

LABEL_203:
                if ((v150 & 2) != 0)
                {
                  goto LABEL_252;
                }

                goto LABEL_256;
              }
            }

            else
            {
            }

            if (*a1 != 32 && a2[1])
            {

              *a1 = 9;
              *&v216[0] = 0x6361667265746E49;
              *(&v216[0] + 1) = 0xEA00000000002065;
              v179 = a2;
              v181 = v164[5];
              v180 = v164[6];

              MEMORY[0x1865D9CA0](v181, v180);

              MEMORY[0x1865D9CA0](91, 0xE100000000000000);
              v217[0] = v164[2];
              v182 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v182);

              MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD73A0);

              v183 = v216[0];

              result = 0;
              *v179 = v183;
              return result;
            }

            goto LABEL_309;
          }

          if (*a1 == 32 || !a2[1])
          {
            goto LABEL_309;
          }

          *a1 = 8;
          *&v216[0] = 0;
          *(&v216[0] + 1) = 0xE000000000000000;
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD73C0);
          sub_1822695CC(v152);
LABEL_268:
          MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD73E0);

          goto LABEL_269;
        }

LABEL_237:
        if (qword_182AEE010[v152 - 1] == qword_182AEE058[v153])
        {
          goto LABEL_240;
        }

        goto LABEL_238;
      }
    }

    v154 = 0;
    if (v153 == 5)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

  v150 = *(v8 + 230);
  if ((v150 & 1) == 0)
  {
    goto LABEL_203;
  }

LABEL_247:
  *&v216[0] = v196;
  *(&v216[0] + 1) = v5;
  *&v216[1] = v7;
  *(&v216[1] + 1) = v204;
  *&v216[2] = v8;
  *(&v216[12] + 8) = v234;
  *(&v216[13] + 8) = v235;
  *(&v216[14] + 8) = v236;
  *(&v216[15] + 8) = v237;
  *(&v216[8] + 8) = v230;
  *(&v216[9] + 8) = v231;
  *(&v216[10] + 8) = v232;
  *(&v216[11] + 8) = v233;
  *(&v216[4] + 8) = v226;
  *(&v216[5] + 8) = v227;
  *(&v216[6] + 8) = v228;
  *(&v216[7] + 8) = v229;
  *(&v216[2] + 8) = v224;
  *(&v216[3] + 8) = v225;
  *(&v216[16] + 1) = v16;
  *(&v216[22] + 10) = *(v223 + 10);
  v216[21] = v222;
  v216[22] = v223[0];
  v216[17] = v218;
  v216[18] = v219;
  v216[19] = v220;
  v216[20] = v221;
  if (sub_181AB5B54(v221))
  {
    if (*a1 != 32 && a2[1])
    {

      *a1 = 5;
      v165 = 0x8000000182BD7380;

      result = 0;
      v166 = 0xD000000000000019;
LABEL_288:
      *a2 = v166;
      a2[1] = v165;
      return result;
    }

    goto LABEL_309;
  }

  if ((*(v8 + 230) & 2) != 0)
  {
LABEL_252:
    *&v216[0] = v196;
    *(&v216[0] + 1) = v5;
    *&v216[1] = v7;
    *(&v216[1] + 1) = v204;
    *&v216[2] = v8;
    *(&v216[12] + 8) = v234;
    *(&v216[13] + 8) = v235;
    *(&v216[14] + 8) = v236;
    *(&v216[15] + 8) = v237;
    *(&v216[8] + 8) = v230;
    *(&v216[9] + 8) = v231;
    *(&v216[10] + 8) = v232;
    *(&v216[11] + 8) = v233;
    *(&v216[4] + 8) = v226;
    *(&v216[5] + 8) = v227;
    *(&v216[6] + 8) = v228;
    *(&v216[7] + 8) = v229;
    *(&v216[2] + 8) = v224;
    *(&v216[3] + 8) = v225;
    *(&v216[16] + 1) = v16;
    *(&v216[22] + 10) = *(v223 + 10);
    v216[21] = v222;
    v216[22] = v223[0];
    v216[17] = v218;
    v216[18] = v219;
    v216[19] = v220;
    v216[20] = v221;
    if (sub_181ABA75C(v221))
    {
      if (*a1 != 32 && a2[1])
      {

        *a1 = 25;
        v165 = 0x8000000182BD7360;

        result = 0;
        v166 = 0xD00000000000001BLL;
        goto LABEL_288;
      }

LABEL_309:

      return 0;
    }
  }

LABEL_256:
  if ((*(v8 + 231) & 1) == 0)
  {
    *&v216[0] = v196;
    *(&v216[0] + 1) = v5;
    *&v216[1] = v7;
    *(&v216[1] + 1) = v204;
    *&v216[2] = v8;
    *(&v216[12] + 8) = v234;
    *(&v216[13] + 8) = v235;
    *(&v216[14] + 8) = v236;
    *(&v216[15] + 8) = v237;
    *(&v216[8] + 8) = v230;
    *(&v216[9] + 8) = v231;
    *(&v216[10] + 8) = v232;
    *(&v216[11] + 8) = v233;
    *(&v216[4] + 8) = v226;
    *(&v216[5] + 8) = v227;
    *(&v216[6] + 8) = v228;
    *(&v216[7] + 8) = v229;
    *(&v216[2] + 8) = v224;
    *(&v216[3] + 8) = v225;
    *(&v216[16] + 1) = v16;
    *(&v216[22] + 10) = *(v223 + 10);
    v216[21] = v222;
    v216[22] = v223[0];
    v216[17] = v218;
    v216[18] = v219;
    v216[19] = v220;
    v216[20] = v221;
    if ((sub_181ADECE8() & 1) != 0 && (nw_path_is_ultra_constrained_allowed() & 1) == 0)
    {
      if (*a1 != 32 && a2[1])
      {

        *a1 = 5;
        v165 = 0x8000000182BD7330;

        result = 0;
        v166 = 0xD000000000000021;
        goto LABEL_288;
      }

      goto LABEL_309;
    }
  }

  if ((*(v8 + 231) & 2) != 0)
  {
    *&v216[0] = v196;
    *(&v216[0] + 1) = v5;
    *&v216[1] = v7;
    *(&v216[1] + 1) = v204;
    *&v216[2] = v8;
    *(&v216[12] + 8) = v234;
    *(&v216[13] + 8) = v235;
    *(&v216[14] + 8) = v236;
    *(&v216[15] + 8) = v237;
    *(&v216[8] + 8) = v230;
    *(&v216[9] + 8) = v231;
    *(&v216[10] + 8) = v232;
    *(&v216[11] + 8) = v233;
    *(&v216[4] + 8) = v226;
    *(&v216[5] + 8) = v227;
    *(&v216[6] + 8) = v228;
    *(&v216[7] + 8) = v229;
    *(&v216[2] + 8) = v224;
    *(&v216[3] + 8) = v225;
    *(&v216[16] + 1) = v16;
    *(&v216[22] + 10) = *(v223 + 10);
    v216[21] = v222;
    v216[22] = v223[0];
    v216[17] = v218;
    v216[18] = v219;
    v216[19] = v220;
    v216[20] = v221;
    sub_181EB162C();
    if (v167)
    {
      if (*a1 != 32 && a2[1])
      {

        *a1 = 5;
        v165 = 0x8000000182BD7310;

        result = 0;
        v166 = 0xD000000000000017;
        goto LABEL_288;
      }

      goto LABEL_309;
    }
  }

LABEL_8:
  swift_beginAccess();
  v24 = v8[30];
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = v24[8];
  if (!v25)
  {
    goto LABEL_114;
  }

  if (!v16)
  {

    goto LABEL_114;
  }

  v26 = v25[4];
  if (v25[2] >= v25[3] + v26)
  {
    v27 = v25[3] + v26;
  }

  else
  {
    v27 = v25[2];
  }

  *&v216[0] = v25;
  *(&v216[0] + 1) = v26;
  *&v216[1] = v27;
  swift_retain_n();
  while (2)
  {
    if (v26 != v27)
    {
LABEL_19:
      *(&v216[0] + 1) = v26 + 1;
      if (*(v16 + 16))
      {
        sub_181AC2218(*(*&v216[0] + 16 * v26 + 40), *(*&v216[0] + 16 * v26 + 48));
        if (v29)
        {

          *a1 = 10;
          v208 = NetworkAgent.description.getter();
          v211 = v30;
          MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD72F0);

          result = 0;
          v32 = v208;
          v33 = v211;
LABEL_270:
          *a2 = v32;
          a2[1] = v33;
          return result;
        }
      }

      v27 = *&v216[1];
      ++v26;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v28))
  {
    v26 = *(&v216[0] + 1);
    goto LABEL_19;
  }

  v24 = v8[30];
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_114:
  v92 = v24[10];
  if (!v92)
  {
    v100 = v24[7];
    if (!v100)
    {
      goto LABEL_26;
    }

LABEL_126:
    if (!v16)
    {

      goto LABEL_26;
    }

    v101 = v100[4];
    if (v100[2] >= v100[3] + v101)
    {
      v102 = v100[3] + v101;
    }

    else
    {
      v102 = v100[2];
    }

    v210 = v100;
    v213 = v100[4];
    v215 = v102;
    v103 = v16 + 64;
    swift_retain_n();
    v186 = a2;
    while (1)
    {
      if (v101 == v102)
      {
        v105 = v210;
        if ((sub_181AC81FC(v104) & 1) == 0)
        {
          goto LABEL_313;
        }
      }

      else
      {
        v105 = v210;
      }

      v106 = v213;
      v190 = ++v213;
      v107 = &v105[4 * v106];
      v108 = 1 << *(v16 + 32);
      v109 = v108 < 64 ? ~(-1 << v108) : -1;
      v110 = v109 & *(v16 + 64);
      v201 = *(v107 + 5);
      v206 = *(v107 + 7);
      sub_181AA5C1C(v107[5], v107[6]);
      sub_181ADC1E0(v206, *(&v206 + 1));

      v111 = 0;
      if (v110)
      {
        break;
      }

      while (1)
      {
LABEL_140:
        v112 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          __break(1u);
          return result;
        }

        if (v112 >= ((v108 + 63) >> 6))
        {
          break;
        }

        v110 = *(v103 + 8 * v112);
        ++v111;
        if (v110)
        {
          v111 = v112;
          goto LABEL_144;
        }
      }

      sub_181E4926C(v201, *(&v201 + 1));
      sub_181E49280(v206, *(&v206 + 1));
      v16 = v207;

      v102 = v215;
      v101 = v190;
    }

LABEL_144:
    while (1)
    {
      v113 = v8;
      v216[0] = v201;
      v216[1] = v206;
      if (!NetworkAgentType.domain.getter() && v114 == 0xE000000000000000)
      {
        break;
      }

      v115 = sub_182AD4268();

      if ((v115 & 1) == 0)
      {
        v216[0] = v201;
        v216[1] = v206;
        v123 = NetworkAgentType.domain.getter();
        v125 = v124;
        if (v123 != sub_181AA5C30() || v125 != v126)
        {
          v127 = sub_182AD4268();

          if ((v127 & 1) == 0)
          {
            goto LABEL_155;
          }

          goto LABEL_149;
        }

        goto LABEL_147;
      }

LABEL_149:
      v216[0] = v201;
      v216[1] = v206;
      if (!NetworkAgentType.type.getter() && v116 == 0xE000000000000000)
      {
        goto LABEL_300;
      }

      v117 = sub_182AD4268();

      if (v117)
      {
        goto LABEL_301;
      }

      v216[0] = v201;
      v216[1] = v206;
      v118 = NetworkAgentType.type.getter();
      v120 = v119;
      if (v118 == sub_1820F55CC() && v120 == v121)
      {

LABEL_300:

LABEL_301:
        sub_181E4926C(v201, *(&v201 + 1));
        sub_181E49280(v206, *(&v206 + 1));

        v65 = v186;

        *a1 = 10;
        *&v216[0] = NetworkAgent.description.getter();
        *(&v216[0] + 1) = v178;
        MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BD72F0);

        v70 = *(&v216[0] + 1);
        v69 = *&v216[0];

LABEL_72:

        result = 0;
        *v65 = v69;
        v65[1] = v70;
        return result;
      }

      v122 = sub_182AD4268();

      if (v122)
      {
        goto LABEL_301;
      }

LABEL_155:
      v110 &= v110 - 1;

      v8 = v113;
      a2 = v186;
      if (!v110)
      {
        goto LABEL_140;
      }
    }

LABEL_147:

    goto LABEL_149;
  }

  v184 = v8;
  v93 = v92[4];
  v94 = v92[3] + v93;
  if (v92[2] < v94)
  {
    v94 = v92[2];
  }

  *&v216[0] = v92;
  *(&v216[0] + 1) = v93;
  *&v216[1] = v94;
  v188 = swift_retain_n();
  while (1)
  {
    if (v93 != *&v216[1])
    {
      goto LABEL_121;
    }

    v8 = v184;
    if ((sub_181AC81FC(v95) & 1) == 0)
    {
      break;
    }

    v93 = *(&v216[0] + 1);
    v188 = *&v216[0];
LABEL_121:
    *(&v216[0] + 1) = v93 + 1;
    if (v207)
    {
      if (*(v207 + 16))
      {
        v96 = (v188 + 16 * v93);
        sub_181AC2218(v96[40] | (v96[41] << 8) | (v96[42] << 16) | (v96[43] << 24) | (v96[44] << 32) | (v96[45] << 40) | (v96[46] << 48) | (v96[47] << 56), v96[48] | (v96[49] << 8) | (v96[50] << 16) | (v96[51] << 24) | (v96[52] << 32) | (v96[53] << 40) | (v96[54] << 48) | (v96[55] << 56));
        ++v93;
        if (v97)
        {
          continue;
        }
      }
    }

    *a1 = 11;
    MEMORY[0x1EEE9AC00](v98);
    v99 = sub_182AD30D8();
    MEMORY[0x1865D9CA0](v99);

    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD72D0);

    result = 0;
    *a2 = 0xD000000000000016;
    a2[1] = 0x8000000182BD72B0;
    return result;
  }

  v162 = v184[30];
  if (!v162)
  {
    v16 = v207;
    goto LABEL_26;
  }

  v16 = v207;
  v100 = *(v162 + 56);
  if (v100)
  {
    goto LABEL_126;
  }

  while (1)
  {
LABEL_26:
    v37 = memcpy(v216, v8 + 2, 0x188uLL);
    v38 = sub_181AD3638(v37);
    if (!v38)
    {

      goto LABEL_74;
    }

    v39 = v38[4];
    if (v38[2] >= v38[3] + v39)
    {
      v40 = v38[3] + v39;
    }

    else
    {
      v40 = v38[2];
    }

    v209 = v38;
    v212 = v38[4];
    v214 = v40;
    v41 = v16 + 64;

    v185 = a2;
    if (v39 == v40)
    {
      goto LABEL_32;
    }

LABEL_31:
    v8 = v209;
LABEL_33:
    v43 = v212;
    v44 = ++v212;
    v45 = &v8[4 * v43];
    v46 = *(v45 + 5);
    v47 = v45[6];
    v48 = v45[8];
    v200 = v46;
    v205 = *(v45 + 7);
    v197 = v47;
    if (!v16)
    {
      sub_181AA5C1C(v46, v47);
      sub_181ADC1E0(v205, v48);
LABEL_71:
      v65 = v185;

      *a1 = 11;
      v216[0] = v200;
      v216[1] = v205;
      v66 = NetworkAgentType.description.getter();
      v68 = v67;
      sub_181E4926C(v200, v197);
      sub_181E49280(v205, v48);
      MEMORY[0x1865D9CA0](v66, v68);

      MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD72D0);

      v69 = 0xD000000000000016;
      v70 = 0x8000000182BD72B0;
      goto LABEL_72;
    }

    v191 = v44;
    v49 = 1 << *(v16 + 32);
    v50 = v49 < 64 ? ~(-1 << v49) : -1;
    v51 = v50 & *(v16 + 64);
    v189 = v46;
    sub_181AA5C1C(v46, v47);
    a2 = v48;
    sub_181ADC1E0(v205, v48);

    v52 = 0;
    if (v51)
    {
      break;
    }

LABEL_42:
    v53 = v205;
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= ((v49 + 63) >> 6))
      {

        goto LABEL_71;
      }

      v51 = *(v41 + 8 * v54);
      ++v52;
      if (v51)
      {
        v52 = v54;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_313:
  }

  while (1)
  {
    v53 = v205;
LABEL_47:
    v51 &= v51 - 1;
    v216[0] = v200;
    v216[1] = v53;
    if (NetworkAgentType.domain.getter() || v55 != 0xE000000000000000)
    {
      v56 = sub_182AD4268();

      if ((v56 & 1) == 0)
      {
        v216[0] = v200;
        v216[1] = v205;
        v57 = NetworkAgentType.domain.getter();
        v8 = v58;
        if (v57 == sub_181AA5C30() && v8 == v59)
        {
        }

        else
        {
          v16 = sub_182AD4268();

          if ((v16 & 1) == 0)
          {

            if (!v51)
            {
              goto LABEL_42;
            }

            continue;
          }
        }
      }
    }

    else
    {
    }

    v216[0] = v200;
    v216[1] = v205;
    if (!NetworkAgentType.type.getter() && v60 == 0xE000000000000000)
    {
      v16 = v207;

LABEL_65:
      sub_181E4926C(v189, v197);
      sub_181E49280(v205, v48);

      goto LABEL_67;
    }

    v61 = sub_182AD4268();

    if (v61)
    {
      v16 = v207;

      goto LABEL_65;
    }

    v216[0] = v200;
    v216[1] = v205;
    v62 = NetworkAgentType.type.getter();
    v8 = v63;
    if (v62 == sub_1820F55CC() && v8 == v64)
    {
      break;
    }

    v16 = sub_182AD4268();

    if (v16)
    {
      goto LABEL_66;
    }

    if (!v51)
    {
      goto LABEL_42;
    }
  }

LABEL_66:
  v16 = v207;

  sub_181E4926C(v189, v197);
  sub_181E49280(v205, v48);
LABEL_67:
  if (v191 != v214)
  {
    goto LABEL_31;
  }

LABEL_32:
  v8 = v209;
  if (sub_181AC81FC(v42))
  {
    goto LABEL_33;
  }

LABEL_74:

  return 1;
}

uint64_t sub_181ADE65C()
{
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 158))
  {
    return 1;
  }

  v4 = *(v0 + 40);
  if (!v4)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181B5C0FC(v4 + v5, v3);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    v6 = (*(v4 + OBJC_IVAR____TtC7Network8Endpoint_flags) >> 3) & 1;
  }

  else
  {
    v6 = 1;
  }

  sub_181B5C160(v3);
  return v6;
}

BOOL sub_181ADE760()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 288);
  v3 = *(v0 + 292);
  swift_beginAccess();
  v4 = *(v1 + 240);
  if (v4 && (v5 = *(v4 + 16)) != 0 && ((v6 = *(v5 + 16)) != 0 ? (v7 = v2 == 6) : (v7 = 0), v7))
  {
    return v6 != v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_181ADE7DC(char *a1, unint64_t *a2)
{
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v100 = *v2;
  v101 = v9;
  v10 = *(v2 + 4);
  v11 = *(v2 + 5);
  v12 = v2[7];
  v13 = v2[8];
  v14 = v2[5];
  v97 = v2[6];
  v98 = v12;
  v99[0] = v13;
  *(v99 + 12) = *(v2 + 140);
  v15 = v2[3];
  v95 = v2[4];
  v96 = v14;
  v16 = *(v2 + 39);
  v93 = v2[16];
  v94 = v15;
  v17 = v2[15];
  v91 = v2[14];
  v92 = v17;
  v18 = v2[13];
  v89 = v2[12];
  v90 = v18;
  v19 = v2[11];
  v87 = v2[10];
  v88 = v19;
  v20 = *(v2 + 34);
  v21 = *(v2 + 35);
  v22 = *(v2 + 72);
  v23 = *(v2 + 73);
  v24 = *(v2 + 74);
  v25 = *(v2 + 300);
  *(v86 + 12) = *(v2 + 312);
  v86[0] = v25;
  v26 = *(v2 + 82);
  v27 = *(v2 + 332);
  v85 = *(v2 + 87);
  v84 = v27;
  if (v22 == 3)
  {
    if (*a1 != 32)
    {
      result = a2[1];
      if (result)
      {

        v29 = "No network route";
        v30 = 0xD00000000000001ELL;
        v31 = 2;
LABEL_5:
        result = 0;
        *a1 = v31;
        *a2 = v30;
        a2[1] = v29 | 0x8000000000000000;
        return result;
      }

      return result;
    }

    return 0;
  }

  v53 = a2;
  v54 = a1;
  v49 = v6;
  v32 = *(v2 + 88);
  v33 = v2 + 356;
  v50 = v24;
  v51 = v32;
  *&v52 = v21;
  *(&v52 + 1) = v20;
  if (v22 == 4)
  {
    goto LABEL_16;
  }

  v34 = v2[1];
  v55 = *v2;
  v56 = v34;
  v57 = v10;
  v58 = v11;
  v35 = v2[8];
  v63 = v2[7];
  *v64 = v35;
  *&v64[12] = *(v2 + 140);
  v36 = v2[4];
  v59 = v2[3];
  v60 = v36;
  v37 = v2[6];
  v61 = v2[5];
  v62 = v37;
  v65 = v16;
  v38 = v2[15];
  v70 = v2[14];
  v71 = v38;
  v72 = v2[16];
  v39 = v2[11];
  v66 = v2[10];
  v67 = v39;
  v40 = v2[13];
  v68 = v2[12];
  v69 = v40;
  v73 = v20;
  v74 = v21;
  v75 = v22;
  v76 = v23;
  v77 = v24;
  v48 = v10;
  *&v78[12] = *(v2 + 312);
  *v78 = *(v2 + 300);
  v79 = v26;
  v80 = *(v2 + 332);
  v81 = *(v2 + 87);
  v82 = v32;
  *&v83[14] = *(v2 + 370);
  *v83 = *v33;
  v41 = v11;
  v47 = v23;
  v42 = sub_181AC2A38(1);
  v23 = v47;
  v11 = v41;
  v24 = v50;
  v32 = v51;
  v20 = *(&v52 + 1);
  v21 = v52;
  v10 = v48;
  if ((v42 & 1) != 0 || v16 & 0x10400 | v26)
  {
    goto LABEL_16;
  }

  if (v41)
  {
    v43 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v41 + v43, v8);
    if (swift_getEnumCaseMultiPayload() - 1 < 2)
    {
      sub_181B5C160(v8);
      v10 = v48;
      v24 = v50;
      v32 = v51;
      v20 = *(&v52 + 1);
      v21 = v52;
      v11 = v41;
      v23 = v47;
      goto LABEL_16;
    }

    v44 = *(v41 + OBJC_IVAR____TtC7Network8Endpoint_flags);
    sub_181B5C160(v8);
    v10 = v48;
    v24 = v50;
    v32 = v51;
    v20 = *(&v52 + 1);
    v21 = v52;
    v11 = v41;
    v23 = v47;
    if ((v44 & 8) != 0)
    {
LABEL_16:
      v55 = v100;
      v56 = v101;
      v63 = v98;
      *v64 = v99[0];
      *&v64[12] = *(v99 + 12);
      v59 = v94;
      v60 = v95;
      v57 = v10;
      v58 = v11;
      v61 = v96;
      v62 = v97;
      v65 = v16;
      v70 = v91;
      v71 = v92;
      v72 = v93;
      v66 = v87;
      v67 = v88;
      v68 = v89;
      v69 = v90;
      v73 = v20;
      v74 = v21;
      v75 = v22;
      v76 = v23;
      v77 = v24;
      *&v78[12] = *(v86 + 12);
      *v78 = v86[0];
      v79 = v26;
      v80 = v84;
      v81 = v85;
      v82 = v32;
      *&v83[14] = *(v33 + 14);
      *v83 = *v33;
      a2 = v53;
      a1 = v54;
      v45 = v10;
      if ((sub_181ADC28C(v54, v53) & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      if ((*(v45 + 231) & 0x10) == 0)
      {
        return 1;
      }

      if (v52 == 0)
      {
        if (v22 == 4 || v51)
        {
          if (*a1 == 32)
          {
            return 0;
          }

          result = a2[1];
          if (!result)
          {
            return result;
          }

          v29 = "wifi_infrastructure";
          v30 = 0xD000000000000030;
        }

        else
        {
          if (!v50)
          {
            return 1;
          }

          if (*a1 == 32)
          {
            return 0;
          }

          result = a2[1];
          if (!result)
          {
            return result;
          }

          v29 = "w divert on path";
          v30 = 0xD00000000000002BLL;
        }
      }

      else
      {
        if (*a1 == 32)
        {
          return 0;
        }

        result = a2[1];
        if (!result)
        {
          return result;
        }

        v29 = "route due to filter on path";
        v30 = 0xD00000000000002CLL;
      }

      v31 = 31;
      goto LABEL_5;
    }
  }

  a1 = v54;
  if (*v54 == 32)
  {
    return 0;
  }

  a2 = v53;
  result = v53[1];
  if (result)
  {
    v30 = 0xD000000000000010;

    v29 = "route due to proxies on path";
    v31 = 3;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_181ADECE8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 176);
  v79 = *(v0 + 160);
  v80 = v5;
  v6 = *(v0 + 200);
  v81 = *(v0 + 192);
  v7 = *(v0 + 112);
  v75 = *(v0 + 96);
  v76 = v7;
  v8 = *(v0 + 144);
  v77 = *(v0 + 128);
  v78 = v8;
  v9 = *(v0 + 48);
  v71 = *(v0 + 32);
  v72 = v9;
  v10 = *(v0 + 80);
  v73 = *(v0 + 64);
  v74 = v10;
  v11 = *(v0 + 336);
  v12 = *(v0 + 352);
  v13 = *(v0 + 304);
  v68 = *(v0 + 320);
  v69 = v11;
  v70[0] = v12;
  *(v70 + 10) = *(v0 + 362);
  v14 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = v14;
  v67 = v13;
  v15 = *(v0 + 224);
  v61 = *(v0 + 208);
  v62 = v15;
  v16 = *(v0 + 256);
  v63 = *(v0 + 240);
  v64 = v16;
  if (v2)
  {
    if ((*(v2 + 137) & 0x40) != 0)
    {
      return 1;
    }
  }

  else if (v6)
  {
    v17 = v6[4];
    v18 = v6[2];
    if (v18 >= v6[3] + v17)
    {
      v18 = v6[3] + v17;
    }

    v36 = v6;
    v37 = v17;
    v38 = v18;
    v19 = v6;
    while (1)
    {
      if (v17 == v18)
      {
        if ((sub_181AC81FC(v16) & 1) == 0)
        {

          goto LABEL_17;
        }

        v19 = v36;
        v17 = v37;
      }

      v20 = v17 + 1;
      v37 = v17 + 1;
      v21 = &v19[26 * v17];
      v22 = *(v21 + 9);
      v23 = *(v21 + 13);
      v24 = *(v21 + 7);
      v42 = *(v21 + 11);
      v43 = v23;
      v40 = v24;
      v41 = v22;
      v25 = *(v21 + 17);
      v26 = *(v21 + 21);
      v27 = *(v21 + 15);
      v46 = *(v21 + 19);
      v47 = v26;
      v44 = v27;
      v45 = v25;
      v28 = *(v21 + 25);
      v29 = *(v21 + 27);
      v30 = *(v21 + 23);
      *&v50[10] = *(v21 + 226);
      v49 = v28;
      *v50 = v29;
      v48 = v30;
      v16 = *(v21 + 5);
      v39 = v16;
      v31 = v16.n128_u64[1];
      if (v16.n128_u64[1])
      {
        if (v50[24])
        {
          break;
        }
      }

      v18 = v38;
      v17 = v20;
    }

    sub_181AFE6F4(&v39, v35);

    sub_181AFE6A0(&v39);
    v32 = *(v31 + 136);

    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    return 1;
  }

LABEL_17:
  v35[0] = 0;
  v35[1] = 0;
  v39.n128_u64[0] = v2;
  v39.n128_u64[1] = v1;
  *&v40 = v4;
  *(&v40 + 1) = v3;
  v49 = v79;
  *v50 = v80;
  v45 = v75;
  v46 = v76;
  v47 = v77;
  v48 = v78;
  v41 = v71;
  v42 = v72;
  v43 = v73;
  v44 = v74;
  *&v50[16] = v81;
  *&v50[24] = v6;
  *(v60 + 10) = *(v70 + 10);
  v59 = v69;
  v60[0] = v70[0];
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v33 = sub_181ADEF94(0, 0, &v36, v35);

  if (v33)
  {
    if ((!v1 || (*(v1 + 137) & 0x40) == 0) && (!v4 || (*(v4 + 137) & 0x40) == 0))
    {
      if (v3)
      {
        return (*(v3 + 137) >> 6) & 1;
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_181ADEF94(int a1, char a2, BOOL *a3, void *a4)
{
  memcpy(__dst, v4, sizeof(__dst));
  v7 = *(v4 + 264);
  v8 = *(v4 + 352);
  v44 = *(v4 + 336);
  v45[0] = v8;
  *(v45 + 10) = *(v4 + 362);
  v9 = *(v4 + 288);
  v40 = *(v4 + 272);
  v41 = v9;
  v10 = *(v4 + 320);
  v42 = *(v4 + 304);
  v43 = v10;
  *a3 = 0;
  if (v7)
  {
    v28 = a3;
    v11 = 1;
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;

    v17 = 0;
    v29 = 0;
    while (v14)
    {
LABEL_12:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = *(*(v7 + 56) + ((v17 << 9) | (8 * v19)));
      memcpy(v33, __dst, 0x108uLL);
      v33[33] = v7;
      v38 = v44;
      v39[0] = v45[0];
      *(v39 + 10) = *(v45 + 10);
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v37 = v43;
      v32 = v20;

      v21 = sub_181ADF2B8(&v32, 1);
      v22 = *(v20 + 80);
      if ((v22 & 3) == 1 && ((v22 & 0x40) != 0 || (a2 & 1) == 0) && ((v22 >> 4) & 1 & ~(v21 | a1)) == 0)
      {
        if (v29)
        {
          v29 = 1;
        }

        else
        {
          v29 = (v22 & 0xC) != 0;
          *v28 = v29;
        }

        if (a4[1])
        {

          if (nw_path_agent_is_vpn(*(v20 + 16)))
          {
            v32 = v20;
            v33[0] = NetworkAgent.description.getter();
            v33[1] = v23;

            v24 = 0x8000000182BD74A0;
            v25 = 0xD000000000000010;
          }

          else
          {
            v32 = v20;
            v33[0] = NetworkAgent.description.getter();
            v33[1] = v26;

            v25 = 0x61736E7520736920;
            v24 = 0xEF64656966736974;
          }

          MEMORY[0x1865D9CA0](v25, v24);

          v11 = 0;
          v27 = v33[1];
          *a4 = v33[0];
          a4[1] = v27;
        }

        else
        {

          v11 = 0;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v11 & 1;
      }

      v14 = *(v7 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 1;
    return v11 & 1;
  }

  return result;
}

uint64_t sub_181ADF260()
{
  sub_181AC350C(0, &v2);
  result = v2;
  if (v2)
  {
    v1 = v3;
    result = sub_181AD1A40(v2, v3, v4, v5);
    if ((v1 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else if (v1 >= 5)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t sub_181ADF2B8(uint64_t *a1, char a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 80);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 32);
  if ((v4 & 0x20) == 0 && (a2 & 1) == 0)
  {
    return 1;
  }

  swift_beginAccess();
  v7 = *(v6 + 240);
  if (v7)
  {
    v8 = *(v7 + 80);
    if (v8)
    {
      v9 = v8[4];
      if (v8[2] >= v8[3] + v9)
      {
        v10 = v8[3] + v9;
      }

      else
      {
        v10 = v8[2];
      }

      __dst[0] = *(v7 + 80);
      __dst[1] = v9;
      __dst[2] = v10;
      swift_retain_n();
      v12 = v8;
      if (v9 != v10)
      {
        do
        {
LABEL_15:
          v13 = v9 + 1;
          __dst[1] = v9 + 1;
          *uu1 = *&v12[2 * v9 + 5];
          v42 = *uu1;
          v40 = *(v3 + 32);
          if (!uuid_compare(uu1, &v40))
          {

            return 1;
          }

          ++v9;
        }

        while (v13 != __dst[2]);
      }

      if (sub_181AC81FC(v11))
      {
        v12 = __dst[0];
        v9 = __dst[1];
        goto LABEL_15;
      }
    }
  }

  v14 = memcpy(__dst, (v6 + 16), sizeof(__dst));
  v15 = sub_181AD3638(v14);
  if (!v15)
  {
LABEL_86:
    v27 = memcpy(__dst, (v6 + 16), sizeof(__dst));
    v28 = sub_181AD41DC(v27);
    if (!v28)
    {
LABEL_156:

      return 0;
    }

    v30 = v28;
    v31 = v28[4];
    v32 = v28[3] + v31;
    if (v28[2] < v32)
    {
      v32 = v28[2];
    }

    __dst[0] = v28;
    __dst[1] = v31;
    for (__dst[2] = v32; ; v32 = __dst[2])
    {
      if (v31 == v32)
      {
        if ((sub_181AC81FC(v29) & 1) == 0)
        {

          goto LABEL_156;
        }

        v30 = __dst[0];
        v31 = __dst[1];
      }

      v33 = &v30[4 * v31++];
      __dst[1] = v31;
      v34 = v33[6];
      v36 = v33[7];
      v35 = v33[8];
      v37 = *(v3 + 56);
      v39 = *(v3 + 64);
      v38 = *(v3 + 72);
      if (v34 > 2)
      {
        switch(v34)
        {
          case 3:
            if (v37 != 3)
            {
              continue;
            }

            goto LABEL_118;
          case 4:
            if (v37 != 4)
            {
              continue;
            }

            goto LABEL_118;
          case 5:
            if (v37 != 5)
            {
              continue;
            }

            goto LABEL_118;
        }
      }

      else
      {
        switch(v34)
        {
          case 0:
            if (v37)
            {
              continue;
            }

            goto LABEL_118;
          case 1:
            if (v37 != 1)
            {
              continue;
            }

            goto LABEL_118;
          case 2:
            if (v37 != 2)
            {
              continue;
            }

            goto LABEL_118;
        }
      }

      if (v37 < 6 || (v33[5] != *(v3 + 48) || v34 != v37) && (sub_182AD4268() & 1) == 0)
      {
        continue;
      }

LABEL_118:
      if (v35 > 4)
      {
        if (v35 <= 6)
        {
          if (v35 == 5)
          {
            if (v38 == 5)
            {
              goto LABEL_151;
            }
          }

          else if (v38 == 6)
          {
            goto LABEL_151;
          }

          continue;
        }

        switch(v35)
        {
          case 7:
            if (v38 == 7)
            {
              goto LABEL_151;
            }

            continue;
          case 8:
            if (v38 == 8)
            {
              goto LABEL_151;
            }

            continue;
          case 9:
            if (v38 == 9)
            {
              goto LABEL_151;
            }

            continue;
        }
      }

      else
      {
        if (v35 > 1)
        {
          if (v35 == 2)
          {
            if (v38 == 2)
            {
              goto LABEL_151;
            }
          }

          else if (v35 == 3)
          {
            if (v38 == 3)
            {
              goto LABEL_151;
            }
          }

          else if (v38 == 4)
          {
            goto LABEL_151;
          }

          continue;
        }

        if (!v35)
        {
          if (!v38)
          {
            goto LABEL_151;
          }

          continue;
        }

        if (v35 == 1)
        {
          if (v38 == 1)
          {
            goto LABEL_151;
          }

          continue;
        }
      }

      if (v38 >= 0xA && (v36 == v39 && v35 == v38 || (sub_182AD4268() & 1) != 0))
      {
LABEL_151:

        goto LABEL_152;
      }
    }
  }

  v17 = v15[4];
  v18 = v15[3] + v17;
  if (v15[2] < v18)
  {
    v18 = v15[2];
  }

  __dst[0] = v15;
  __dst[1] = v17;
  __dst[2] = v18;
  v19 = v15;
  while (1)
  {
    if (v17 != v18)
    {
      goto LABEL_28;
    }

    if ((sub_181AC81FC(v16) & 1) == 0)
    {

      goto LABEL_86;
    }

    v19 = __dst[0];
    v17 = __dst[1];
LABEL_28:
    v20 = &v19[4 * v17++];
    __dst[1] = v17;
    v21 = v20[6];
    v23 = v20[7];
    v22 = v20[8];
    v24 = *(v3 + 56);
    v26 = *(v3 + 64);
    v25 = *(v3 + 72);
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          if (v24 != 3)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 4:
          if (v24 != 4)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 5:
          if (v24 != 5)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          if (v24)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 1:
          if (v24 != 1)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
        case 2:
          if (v24 != 2)
          {
            goto LABEL_24;
          }

          goto LABEL_51;
      }
    }

    if (v24 < 6 || (v20[5] != *(v3 + 48) || v21 != v24) && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_51:
    if (v22 <= 4)
    {
      break;
    }

    if (v22 <= 6)
    {
      if (v22 == 5)
      {
        if (v25 == 5)
        {
          goto LABEL_84;
        }
      }

      else if (v25 == 6)
      {
        goto LABEL_84;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          if (v25 == 7)
          {
            goto LABEL_84;
          }

          break;
        case 8:
          if (v25 == 8)
          {
            goto LABEL_84;
          }

          break;
        case 9:
          if (v25 == 9)
          {
            goto LABEL_84;
          }

          break;
        default:
          goto LABEL_80;
      }
    }

LABEL_24:
    v18 = __dst[2];
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      if (v25 == 2)
      {
        goto LABEL_84;
      }
    }

    else if (v22 == 3)
    {
      if (v25 == 3)
      {
        goto LABEL_84;
      }
    }

    else if (v25 == 4)
    {
      goto LABEL_84;
    }

    goto LABEL_24;
  }

  if (!v22)
  {
    if (!v25)
    {
      goto LABEL_84;
    }

    goto LABEL_24;
  }

  if (v22 == 1)
  {
    if (v25 == 1)
    {
      goto LABEL_84;
    }

    goto LABEL_24;
  }

LABEL_80:
  if (v25 < 0xA || (v23 != v26 || v22 != v25) && (sub_182AD4268() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_84:

LABEL_152:

  return 1;
}

uint64_t sub_181ADF8C8(uint64_t a1, uint64_t a2, size_t a3, size_t a4)
{
  result = sub_181ADFAF4(a1, a2, a3, a4);
  v10 = *v4;
  v11 = *(*v4 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v10 + 3) >> 1, v15 < v12))
  {
    if (v11 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    v10 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v16, 1, v10);
    v15 = *(v10 + 3) >> 1;
  }

  v17 = *(v10 + 2);
  v18 = v15 - v17;
  result = sub_181ADBCBC(&v34, &v10[v17 + 32], v15 - v17, a1, a2, a3, a4);
  if (result < v13)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v20 = *(v10 + 2);
    v21 = __OFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v10 + 2) = v22;
  }

  if (result != v18)
  {
LABEL_13:
    *v4 = v10;
    return result;
  }

LABEL_16:
  v23 = v35;
  if (v38 == v35)
  {
    goto LABEL_13;
  }

  if (v38 >= v35 || (v24 = v34, v38 < v34))
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    v25 = v36;
    if (v36)
    {
      v26 = v37 - v36;
    }

    else
    {
      v26 = 0;
    }

    if ((v38 & 0x8000000000000000) == 0 && v38 < v26)
    {
      v13 = *(v10 + 2);
      v27 = *(v36 + v38);
      v28 = v38 + 1;
      while (1)
      {
LABEL_26:
        v29 = *(v10 + 3);
        v30 = v29 >> 1;
        if ((v29 >> 1) < v13 + 1)
        {
          v32 = v10;
          v33 = v27;
          result = sub_181ADBA10((v29 > 1), v13 + 1, 1, v32);
          v27 = v33;
          v10 = result;
          v30 = *(result + 24) >> 1;
          v31 = v13 - v30;
          if (v13 < v30)
          {
LABEL_28:
            v19 = 0;
            while (1)
            {
              v10[v13 + 32 + v19] = v27;
              if (v23 - v28 == v19)
              {
                break;
              }

              if (v28 < v24 || v28 + v19 >= v23)
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              if (v28 < 0 || v28 + v19 >= v26)
              {
                goto LABEL_41;
              }

              v27 = *(v25 + v28 + v19++);
              if (!(v31 + v19))
              {
                v28 += v19;
                v13 = v30;
                *(v10 + 2) = v30;
                goto LABEL_26;
              }
            }

LABEL_39:
            *(v10 + 2) = v13 + v19 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v31 = v13 - v30;
          if (v13 < v30)
          {
            goto LABEL_28;
          }
        }

        *(v10 + 2) = v13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181ADFAF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t nw_flow_passthrough_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_passthrough_get_output_frames";
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
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol";
LABEL_38:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
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
          v24 = "nw_flow_passthrough_get_output_frames";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v12)
        {
          return 0;
        }

LABEL_41:
        free(v12);
        return 0;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_passthrough_get_output_frames";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null protocol->output_handler", buf, 12);

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
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol->output_handler";
        goto LABEL_38;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v20 = os_log_type_enabled(v13, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_flow_passthrough_get_output_frames";
            v25 = 2082;
            v26 = v19;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol->output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          if (!v12)
          {
            return 0;
          }

          goto LABEL_41;
        }

        if (!v20)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol->output_handler, no backtrace";
        goto LABEL_38;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_output_frames";
        v15 = "%{public}s called with null protocol->output_handler, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks || (get_output_frames = callbacks->get_output_frames) == 0)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v24 = "nw_flow_passthrough_get_output_frames";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support get_output_frames", buf, 0xCu);
    }

    return 0;
  }

  return get_output_frames();
}

uint64_t nw_flow_passthrough_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_flow_passthrough_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null protocol", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol";
LABEL_38:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v20 = "nw_flow_passthrough_finalize_output_frames";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v8)
        {
          return 0;
        }

LABEL_41:
        free(v8);
        return 0;
      }

      if (v14)
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_flow_passthrough_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol->output_handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol->output_handler";
        goto LABEL_38;
      }
    }

    else
    {
      if (v17 == 1)
      {
        v15 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v16 = os_log_type_enabled(v9, type);
        if (v15)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "nw_flow_passthrough_finalize_output_frames";
            v21 = 2082;
            v22 = v15;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol->output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v15);
          if (!v8)
          {
            return 0;
          }

          goto LABEL_41;
        }

        if (!v16)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol->output_handler, no backtrace";
        goto LABEL_38;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_flow_passthrough_finalize_output_frames";
        v11 = "%{public}s called with null protocol->output_handler, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks || (finalize_output_frames = callbacks->finalize_output_frames) == 0)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v20 = "nw_flow_passthrough_finalize_output_frames";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support finalize_output_frames", buf, 0xCu);
    }

    return 0;
  }

  return finalize_output_frames();
}

NWConcrete_nw_write_request *nw_write_request_create_idempotent(void *a1, void *a2, void *a3, int a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v48 = v9;
  v49 = v8;
  if (v8)
  {
    if (v7 || (a4 & 1) != 0 || v8 != &__block_literal_global_6_44667 && v8 != &__block_literal_global_44658 && v8 != &__block_literal_global_8_44676 && v8 != &__block_literal_global_10_44685)
    {
      v10 = v7;
      if (v9)
      {
        v11 = v9;
        if (v11 == &__block_literal_global_10_44685)
        {
        }

        else
        {
          if (v11 == &__block_literal_global_8_44676 || v11 == &__block_literal_global_6_44667 || v11 == &__block_literal_global_44658)
          {

            goto LABEL_14;
          }

          v12 = v11;
          os_unfair_lock_lock(v11 + 28);
          v13 = BYTE2(v12[29]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v12 + 28);

          if ((v13 & 0x40) == 0)
          {
LABEL_14:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v53 = "nw_write_request_create_idempotent";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot send a reply for a protocol that does not support replies", buf, 0xCu);
            }

            v7 = v10;
            v15 = 0;
            goto LABEL_61;
          }
        }
      }

      v16 = objc_alloc_init(NWConcrete_nw_write_request);
      v15 = v16;
      v7 = v10;
      if (v16)
      {
        if (v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = MEMORY[0x1E69E9668];
        }

        objc_storeStrong(&v16->data, v17);
        objc_storeStrong(&v15->context, a2);
        objc_storeStrong(&v15->original_message, a3);
        *(v15 + 128) = *(v15 + 128) & 0xFE | a4 | 4;
        v18 = v49;
        v19 = v18;
        v20 = 0.5;
        if (v18 != &__block_literal_global_10_44685 && v18 != &__block_literal_global_8_44676 && v18 != &__block_literal_global_6_44667 && v18 != &__block_literal_global_44658 && (*(v18 + 118) & 1) == 0)
        {
          v20 = v18[10];
        }

        v21 = 0;
        v15->relative_priority = v20;
        if (!v10 && a4)
        {
          v22 = v19;
          v21 = 0;
          if (v19 != &__block_literal_global_44658 && v19 != &__block_literal_global_10_44685)
          {
            v21 = 8;
            if (v19 != &__block_literal_global_6_44667 && v19 != &__block_literal_global_8_44676)
            {
              v21 = 8 * (*(v22 + 118) & 1);
            }
          }
        }

        *(v15 + 128) = *(v15 + 128) & 0xF7 | v21;
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
        }

        if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
        {
          data = v15->data;
          if (data)
          {
            dispatch_data_get_size(data);
          }

          context = v15->context;
          if (context)
          {
            nw_content_context_get_is_final(context);
          }

          kdebug_trace();
        }

        v23 = v15;
        goto LABEL_60;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      *buf = 136446210;
      v53 = "nw_write_request_create_idempotent";
      v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v50 = 0;
      if (__nwlog_fault(v25, &type, &v50))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v53 = "nw_write_request_create_idempotent";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed", buf, 0xCu);
          }
        }

        else if (v50 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v29 = type;
          v30 = os_log_type_enabled(v26, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v53 = "nw_write_request_create_idempotent";
              v54 = 2082;
              v55 = backtrace_string;
              _os_log_impl(&dword_181A37000, v26, v29, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v25)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          if (v30)
          {
            *buf = 136446210;
            v53 = "nw_write_request_create_idempotent";
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v31 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v53 = "nw_write_request_create_idempotent";
            _os_log_impl(&dword_181A37000, v26, v31, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v25)
      {
LABEL_60:

        goto LABEL_61;
      }

LABEL_59:
      free(v25);
      goto LABEL_60;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_write_request_create_idempotent";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s Send content may only be nil if the request is marked as complete", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v34, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s Send content may only be nil if the request is marked as complete", buf, 0xCu);
        }

LABEL_99:

        goto LABEL_100;
      }

      if (v50 != 1)
      {
        v35 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v44, "%{public}s Send content may only be nil if the request is marked as complete, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_99;
      }

      v39 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v35, type);
      if (!v39)
      {
        if (v41)
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v40, "%{public}s Send content may only be nil if the request is marked as complete, no backtrace", buf, 0xCu);
        }

        goto LABEL_99;
      }

      if (v41)
      {
        *buf = 136446466;
        v53 = "nw_write_request_create_idempotent";
        v54 = 2082;
        v55 = v39;
        _os_log_impl(&dword_181A37000, v35, v40, "%{public}s Send content may only be nil if the request is marked as complete, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_81;
    }
  }

  else
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_write_request_create_idempotent";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null context", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v34, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v38, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_99;
      }

      if (v50 != 1)
      {
        v35 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v46, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_99;
      }

      v39 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v35, type);
      if (!v39)
      {
        if (v43)
        {
          *buf = 136446210;
          v53 = "nw_write_request_create_idempotent";
          _os_log_impl(&dword_181A37000, v35, v42, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_99;
      }

      if (v43)
      {
        *buf = 136446466;
        v53 = "nw_write_request_create_idempotent";
        v54 = 2082;
        v55 = v39;
        _os_log_impl(&dword_181A37000, v35, v42, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_81:

      free(v39);
    }
  }

LABEL_100:
  if (v34)
  {
    free(v34);
  }

  v15 = 0;
LABEL_61:

  return v15;
}

uint64_t nw_protocol_get_output_frames(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    v7 = a1;
    v8 = a1[5];
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = a1[8]) != 0)
    {
      v29 = v9[11];
      if (v29)
      {
        v10 = 0;
        v9[11] = v29 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v10 = 0;
        if (!a2)
        {
LABEL_38:
          v30 = __nwlog_obj();
          *buf = 136446210;
          v68 = "__nw_protocol_get_output_frames";
          v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null input_protocol", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v65 = 0;
          if (__nwlog_fault(v31, &type, &v65))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v32 = __nwlog_obj();
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446210;
                v68 = "__nw_protocol_get_output_frames";
                v34 = "%{public}s called with null input_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
              }
            }

            else if (v65 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v32 = __nwlog_obj();
              v33 = type;
              v57 = os_log_type_enabled(v32, type);
              if (backtrace_string)
              {
                if (v57)
                {
                  *buf = 136446466;
                  v68 = "__nw_protocol_get_output_frames";
                  v69 = 2082;
                  v70 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v57)
              {
                *buf = 136446210;
                v68 = "__nw_protocol_get_output_frames";
                v34 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v32 = __nwlog_obj();
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446210;
                v68 = "__nw_protocol_get_output_frames";
                v34 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v31)
          {
            free(v31);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v11 = *(a2 + 40);
    v12 = a2;
    if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
    {
      v35 = *(v12 + 88);
      if (v35)
      {
        v13 = 0;
        *(v12 + 88) = v35 + 1;
        if (!a6)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0;
        if (!a6)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v13 = 1;
      if (!a6)
      {
LABEL_45:
        v36 = __nwlog_obj();
        *buf = 136446210;
        v68 = "__nw_protocol_get_output_frames";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null return_array", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v65 = 0;
        if (!__nwlog_fault(v37, &type, &v65))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (!os_log_type_enabled(v38, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v68 = "__nw_protocol_get_output_frames";
          v40 = "%{public}s called with null return_array";
          goto LABEL_117;
        }

        if (v65 != 1)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (!os_log_type_enabled(v38, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v68 = "__nw_protocol_get_output_frames";
          v40 = "%{public}s called with null return_array, backtrace limit exceeded";
          goto LABEL_117;
        }

        v58 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = type;
        v59 = os_log_type_enabled(v38, type);
        if (v58)
        {
          if (v59)
          {
            *buf = 136446466;
            v68 = "__nw_protocol_get_output_frames";
            v69 = 2082;
            v70 = v58;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null return_array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v58);
          if (!v37)
          {
LABEL_121:
            result = 0;
            if (v13)
            {
LABEL_22:
              if ((v10 & 1) == 0)
              {
                v23 = v7[5];
                if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v7 = v7[8]) != 0)
                {
                  v24 = v7[11];
                  if (v24)
                  {
                    v25 = v24 - 1;
                    v7[11] = v25;
                    if (!v25)
                    {
                      v26 = result;
                      v27 = v7[8];
                      if (v27)
                      {
                        v7[8] = 0;
                        v27[2](v27);
                        _Block_release(v27);
                      }

                      if (v7[9])
                      {
                        v28 = v7[8];
                        if (v28)
                        {
                          _Block_release(v28);
                        }
                      }

                      free(v7);
                      return v26;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v17 = *(v6 + 40);
            if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
            {
              v18 = *(v6 + 88);
              if (v18)
              {
                v19 = v18 - 1;
                *(v6 + 88) = v19;
                if (!v19)
                {
                  v20 = result;
                  v21 = *(v6 + 64);
                  if (v21)
                  {
                    *(v6 + 64) = 0;
                    v21[2](v21);
                    _Block_release(v21);
                  }

                  if (*(v6 + 72))
                  {
                    v22 = *(v6 + 64);
                    if (v22)
                    {
                      _Block_release(v22);
                    }
                  }

                  free(v6);
                  result = v20;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v37);
          goto LABEL_121;
        }

        if (v59)
        {
          *buf = 136446210;
          v68 = "__nw_protocol_get_output_frames";
          v40 = "%{public}s called with null return_array, no backtrace";
LABEL_117:
          v62 = v38;
          v63 = v39;
          v64 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v14 = a1[3];
    if (v14)
    {
      v15 = *(v14 + 88);
      if (v15)
      {
        result = v15(a1, a2);
        if (v13)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    v41 = __nwlog_obj();
    v42 = v7[2];
    *buf = 136446722;
    v68 = "__nw_protocol_get_output_frames";
    if (!v42)
    {
      v42 = "invalid";
    }

    v69 = 2082;
    v70 = v42;
    v71 = 2048;
    v72 = v7;
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v37, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_119;
        }

        v45 = v7[2];
        if (!v45)
        {
          v45 = "invalid";
        }

        *buf = 136446722;
        v68 = "__nw_protocol_get_output_frames";
        v69 = 2082;
        v70 = v45;
        v71 = 2048;
        v72 = v7;
        v40 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
      }

      else if (v65 == 1)
      {
        v51 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type;
        v52 = os_log_type_enabled(v43, type);
        if (v51)
        {
          if (v52)
          {
            v53 = v7[2];
            if (!v53)
            {
              v53 = "invalid";
            }

            *buf = 136446978;
            v68 = "__nw_protocol_get_output_frames";
            v69 = 2082;
            v70 = v53;
            v71 = 2048;
            v72 = v7;
            v73 = 2082;
            v74 = v51;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v51);
          goto LABEL_119;
        }

        if (!v52)
        {
          goto LABEL_119;
        }

        v61 = v7[2];
        if (!v61)
        {
          v61 = "invalid";
        }

        *buf = 136446722;
        v68 = "__nw_protocol_get_output_frames";
        v69 = 2082;
        v70 = v61;
        v71 = 2048;
        v72 = v7;
        v40 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_119;
        }

        v60 = v7[2];
        if (!v60)
        {
          v60 = "invalid";
        }

        *buf = 136446722;
        v68 = "__nw_protocol_get_output_frames";
        v69 = 2082;
        v70 = v60;
        v71 = 2048;
        v72 = v7;
        v40 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
      }

      v62 = v43;
      v63 = v44;
      v64 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v62, v63, v40, buf, v64);
    }

LABEL_119:
    if (!v37)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  v68 = "__nw_protocol_get_output_frames";
  v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v65 = 0;
  if (__nwlog_fault(v47, &type, &v65))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        v68 = "__nw_protocol_get_output_frames";
        v50 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

    else if (v65 == 1)
    {
      v54 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = type;
      v55 = os_log_type_enabled(v48, type);
      if (v54)
      {
        if (v55)
        {
          *buf = 136446466;
          v68 = "__nw_protocol_get_output_frames";
          v69 = 2082;
          v70 = v54;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        goto LABEL_106;
      }

      if (v55)
      {
        *buf = 136446210;
        v68 = "__nw_protocol_get_output_frames";
        v50 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        v68 = "__nw_protocol_get_output_frames";
        v50 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v47)
  {
    free(v47);
  }

  return 0;
}

void *nw_mem_buffer_allocate_sized_typed(void *result, malloc_type_id_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_mem_buffer_allocate_sized_typed";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null buffer_manager", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_28;
      }

      *buf = 136446210;
      v18 = "nw_mem_buffer_allocate_sized_typed";
      v12 = "%{public}s called with null buffer_manager";
    }

    else if (v15 == 1)
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
          v18 = "nw_mem_buffer_allocate_sized_typed";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null buffer_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_28;
      }

      if (!v14)
      {
LABEL_28:
        if (v9)
        {
          free(v9);
        }

        return 0;
      }

      *buf = 136446210;
      v18 = "nw_mem_buffer_allocate_sized_typed";
      v12 = "%{public}s called with null buffer_manager, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_28;
      }

      *buf = 136446210;
      v18 = "nw_mem_buffer_allocate_sized_typed";
      v12 = "%{public}s called with null buffer_manager, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_28;
  }

  if (use_malloc_memory == 1)
  {
    if (result)
    {
      result = malloc_type_malloc(result, a2);
      if (result)
      {
        v3 = result;
        v4 = malloc_size(result);
        nw_mem_track_allocation(v4);
        return v3;
      }
    }

    return result;
  }

  if (!*(a3 + 88))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "nw_mem_buffer_allocate_sized_typed";
      v19 = 2082;
      v20 = (a3 + 96);
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s buffer cache is NULL for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  g_transaction_touched = 1;
  nw_mem_cache_update_set_timer();
  v6 = *(a3 + 88);

  return nw_mem_cache_alloc(v6);
}

uint64_t nw_protocol_finalize_output_frames(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    v4 = a1;
    if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v4 = a1[8]) != 0)
    {
      v15 = v4[11];
      if (v15)
      {
        v5 = 0;
        v4[11] = v15 + 1;
        if (!a2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v5 = 0;
        if (!a2)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v5 = 1;
      if (!a2)
      {
LABEL_23:
        v16 = __nwlog_obj();
        *buf = 136446210;
        v46 = "__nw_protocol_finalize_output_frames";
        v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null frames", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (!__nwlog_fault(v17, &type, &v43))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (!os_log_type_enabled(v18, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v46 = "__nw_protocol_finalize_output_frames";
          v20 = "%{public}s called with null frames";
          goto LABEL_80;
        }

        if (v43 != 1)
        {
          v18 = __nwlog_obj();
          v19 = type;
          if (!os_log_type_enabled(v18, type))
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v46 = "__nw_protocol_finalize_output_frames";
          v20 = "%{public}s called with null frames, backtrace limit exceeded";
          goto LABEL_80;
        }

        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v37 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v37)
          {
            *buf = 136446466;
            v46 = "__nw_protocol_finalize_output_frames";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null frames, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v17)
          {
LABEL_84:
            result = 0;
            if (v5)
            {
              return result;
            }

LABEL_8:
            v9 = v2[5];
            if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
            {
              v10 = v2[11];
              if (v10)
              {
                v11 = v10 - 1;
                v2[11] = v11;
                if (!v11)
                {
                  v12 = result;
                  v13 = v2[8];
                  if (v13)
                  {
                    v2[8] = 0;
                    v13[2](v13);
                    _Block_release(v13);
                  }

                  if (v2[9])
                  {
                    v14 = v2[8];
                    if (v14)
                    {
                      _Block_release(v14);
                    }
                  }

                  free(v2);
                  return v12;
                }
              }
            }

            return result;
          }

LABEL_83:
          free(v17);
          goto LABEL_84;
        }

        if (v37)
        {
          *buf = 136446210;
          v46 = "__nw_protocol_finalize_output_frames";
          v20 = "%{public}s called with null frames, no backtrace";
LABEL_80:
          v40 = v18;
          v41 = v19;
          v42 = 12;
          goto LABEL_81;
        }

        goto LABEL_82;
      }
    }

    v6 = a1[3];
    if (v6)
    {
      v7 = *(v6 + 96);
      if (v7)
      {
        result = v7(a1);
        if (v5)
        {
          return result;
        }

        goto LABEL_8;
      }
    }

    v21 = __nwlog_obj();
    v22 = v2[2];
    *buf = 136446722;
    v46 = "__nw_protocol_finalize_output_frames";
    if (!v22)
    {
      v22 = "invalid";
    }

    v47 = 2082;
    v48 = v22;
    v49 = 2048;
    v50 = v2;
    v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v17, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_82;
        }

        v25 = v2[2];
        if (!v25)
        {
          v25 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_finalize_output_frames";
        v47 = 2082;
        v48 = v25;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
      }

      else if (v43 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = type;
        v32 = os_log_type_enabled(v23, type);
        if (v31)
        {
          if (v32)
          {
            v33 = v2[2];
            if (!v33)
            {
              v33 = "invalid";
            }

            *buf = 136446978;
            v46 = "__nw_protocol_finalize_output_frames";
            v47 = 2082;
            v48 = v33;
            v49 = 2048;
            v50 = v2;
            v51 = 2082;
            v52 = v31;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v31);
          goto LABEL_82;
        }

        if (!v32)
        {
          goto LABEL_82;
        }

        v39 = v2[2];
        if (!v39)
        {
          v39 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_finalize_output_frames";
        v47 = 2082;
        v48 = v39;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
      }

      else
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_82;
        }

        v38 = v2[2];
        if (!v38)
        {
          v38 = "invalid";
        }

        *buf = 136446722;
        v46 = "__nw_protocol_finalize_output_frames";
        v47 = 2082;
        v48 = v38;
        v49 = 2048;
        v50 = v2;
        v20 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
      }

      v40 = v23;
      v41 = v24;
      v42 = 32;
LABEL_81:
      _os_log_impl(&dword_181A37000, v40, v41, v20, buf, v42);
    }

LABEL_82:
    if (!v17)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v46 = "__nw_protocol_finalize_output_frames";
  v27 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null protocol", buf, 12);
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
        v46 = "__nw_protocol_finalize_output_frames";
        v30 = "%{public}s called with null protocol";
LABEL_74:
        _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v34 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v35 = os_log_type_enabled(v28, type);
      if (v34)
      {
        if (v35)
        {
          *buf = 136446466;
          v46 = "__nw_protocol_finalize_output_frames";
          v47 = 2082;
          v48 = v34;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_75;
      }

      if (v35)
      {
        *buf = 136446210;
        v46 = "__nw_protocol_finalize_output_frames";
        v30 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_74;
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v46 = "__nw_protocol_finalize_output_frames";
        v30 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_74;
      }
    }
  }

LABEL_75:
  if (v27)
  {
    free(v27);
  }

  return 0;
}

void nw_mem_buffer_free(uint64_t a1, unint64_t ptr)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_mem_buffer_free";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null buffer_manager", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v43, &type, &v58))
    {
      goto LABEL_111;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v46 = "%{public}s called with null buffer_manager";
      goto LABEL_110;
    }

    if (v58 != 1)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v46 = "%{public}s called with null buffer_manager, backtrace limit exceeded";
      goto LABEL_110;
    }

    backtrace_string = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = type;
    v49 = os_log_type_enabled(v44, type);
    if (!backtrace_string)
    {
      if (!v49)
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v46 = "%{public}s called with null buffer_manager, no backtrace";
      goto LABEL_110;
    }

    if (v49)
    {
      *buf = 136446466;
      *&buf[4] = "nw_mem_buffer_free";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null buffer_manager, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_111:
    if (!v43)
    {
      return;
    }

    goto LABEL_112;
  }

  if (!ptr)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_mem_buffer_free";
    v43 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null buffer", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v43, &type, &v58))
    {
      goto LABEL_111;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v46 = "%{public}s called with null buffer";
      goto LABEL_110;
    }

    if (v58 != 1)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (!os_log_type_enabled(v44, type))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v46 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_110;
    }

    v50 = __nw_create_backtrace_string();
    v44 = __nwlog_obj();
    v45 = type;
    v51 = os_log_type_enabled(v44, type);
    if (v50)
    {
      if (v51)
      {
        *buf = 136446466;
        *&buf[4] = "nw_mem_buffer_free";
        *&buf[12] = 2082;
        *&buf[14] = v50;
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v50);
      if (!v43)
      {
        return;
      }

LABEL_112:
      free(v43);
      return;
    }

    if (v51)
    {
      *buf = 136446210;
      *&buf[4] = "nw_mem_buffer_free";
      v46 = "%{public}s called with null buffer, no backtrace";
LABEL_110:
      _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
      goto LABEL_111;
    }

    goto LABEL_111;
  }

  if (use_malloc_memory == 1)
  {
    v3 = malloc_size(ptr);
    free(ptr);
    v4 = atomic_load(g_track_mem_total_usage);
    v5 = v4 - v3;
    if (v4 >= v3)
    {
LABEL_70:
      g_track_transaction_touched = 1;
      if (atomic_fetch_add_explicit(g_track_mem_total_usage, -v3, memory_order_relaxed) > 0x8000)
      {
        v41 = atomic_load(g_track_mem_total_usage);
        if (v41 <= 0x8000)
        {
          nw_mem_track_check_transaction_required();
        }
      }

      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    *&buf[4] = "nw_mem_track_deallocation";
    *&buf[12] = 2082;
    *&buf[14] = "temp_total_mem_usage";
    v61 = 2048;
    v62 = v3;
    v63 = 2048;
    v64 = v5;
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v6, &type, &v58))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_68;
        }

        *buf = 136446978;
        *&buf[4] = "nw_mem_track_deallocation";
        *&buf[12] = 2082;
        *&buf[14] = "temp_total_mem_usage";
        v61 = 2048;
        v62 = v3;
        v63 = 2048;
        v64 = v5;
        v9 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
        goto LABEL_67;
      }

      if (v58 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_68;
        }

        *buf = 136446978;
        *&buf[4] = "nw_mem_track_deallocation";
        *&buf[12] = 2082;
        *&buf[14] = "temp_total_mem_usage";
        v61 = 2048;
        v62 = v3;
        v63 = 2048;
        v64 = v5;
        v9 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        goto LABEL_67;
      }

      v38 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v39 = os_log_type_enabled(gLogObj, type);
      if (v38)
      {
        if (v39)
        {
          *buf = 136447234;
          *&buf[4] = "nw_mem_track_deallocation";
          *&buf[12] = 2082;
          *&buf[14] = "temp_total_mem_usage";
          v61 = 2048;
          v62 = v3;
          v63 = 2048;
          v64 = v5;
          v65 = 2082;
          v66 = v38;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v38);
        goto LABEL_68;
      }

      if (v39)
      {
        *buf = 136446978;
        *&buf[4] = "nw_mem_track_deallocation";
        *&buf[12] = 2082;
        *&buf[14] = "temp_total_mem_usage";
        v61 = 2048;
        v62 = v3;
        v63 = 2048;
        v64 = v5;
        v9 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
LABEL_67:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x2Au);
      }
    }

LABEL_68:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_70;
  }

  if (*(a1 + 88))
  {
    g_transaction_touched = 1;
    nw_mem_cache_update_set_timer();
    v11 = *(a1 + 88);
    nw_mem_cache_operations_during_interval = 1;
    if ((*(v11 + 176) & 2) != 0)
    {
      v52 = *(v11 + 288) + 8 * ((ptr >> *(v11 + 272)) & *(v11 + 280));
      while (1)
      {
        v52 = *v52;
        if (!v52)
        {
          break;
        }

        if (*(v52 + 8) == ptr)
        {
          *buf = 0;
          *&buf[8] = 0;
          gettimeofday(buf, 0);
          *(v52 + 32) = 1000 * *buf + *&buf[8] / 1000;
          *(v52 + 44) = backtrace((v52 + 48), 16);
          goto LABEL_11;
        }
      }

      v53 = __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_mem_audit_buf";
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      *&buf[12] = 2082;
      *&buf[14] = v11 + 96;
      v61 = 2048;
      v62 = ptr;
      v55 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s %{public}s failed to get bufctl for %p\n", buf, 32);
      if (__nwlog_should_abort(v55))
      {
LABEL_113:
        __break(1u);
        return;
      }

      free(v55);
      *buf = 0;
      *&buf[8] = 0;
      gettimeofday(buf, 0);
      MEMORY[0x20] = 1000 * *buf + *&buf[8] / 1000;
      MEMORY[0x2C] = backtrace(0x30, 16);
    }

LABEL_11:
    v12 = *(v11 + 552);
    v13 = *(v11 + 560);
    if (v12 < v13)
    {
LABEL_12:
      v14 = *(v11 + 520) + 8 * v12;
      *(v11 + 552) = v12 + 1;
      *(v14 + 8) = ptr;
      ++*(v11 + 544);
      return;
    }

    while (1)
    {
      if (!*(v11 + 556))
      {
        *(v11 + 556) = v12;
        *(v11 + 520) = vextq_s8(*(v11 + 520), *(v11 + 520), 8uLL);
LABEL_17:
        *(v11 + 552) = 0;
        goto LABEL_18;
      }

      if (!v13)
      {
        v40 = *(v11 + 192);
        if (v40)
        {
          v40(ptr, *(v11 + 208));
        }

        nw_mem_slab_free(v11, ptr);
        return;
      }

      v16 = *(v11 + 384);
      if (v16)
      {
        *(v11 + 384) = *v16;
        v17 = *(v11 + 392) - 1;
        *(v11 + 392) = v17;
        if (v17 < *(v11 + 396))
        {
          *(v11 + 396) = v17;
        }

        ++*(v11 + 376);
        v18 = *(v11 + 528);
        if (v18)
        {
          *v18 = *(v11 + 352);
          *(v11 + 352) = v18;
          ++*(v11 + 360);
        }

        *(v11 + 528) = *(v11 + 520);
        *(v11 + 556) = v12;
        *(v11 + 520) = v16;
        goto LABEL_17;
      }

      v19 = *(v11 + 336);
      v20 = v19[1];
      v21 = 8 * *v19;
      v22 = v21 + 8;
      if (v21 == -8)
      {
        break;
      }

      if (v20 <= 7)
      {
        goto LABEL_39;
      }

LABEL_29:
      if ((v20 & (v20 - 1)) != 0)
      {
        v31 = __nwlog_obj();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        *buf = 136446466;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *&buf[4] = "nw_mem_cache_free";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        LODWORD(v56) = 22;
        v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s strict_memalign called with alignment (%zu) that is not a power of 2", buf, v56);
        if (__nwlog_should_abort(v34))
        {
          goto LABEL_113;
        }

        free(v34);
      }

      v23 = malloc_type_zone_memalign(g_slab_zone, v20, v22, 0x4D3EEDA2uLL);
      if (v23)
      {
        v13 = *(v11 + 560);
        if (v13 != *v19)
        {
          malloc_zone_free(g_slab_zone, v23);
          v13 = *(v11 + 560);
          goto LABEL_18;
        }

LABEL_32:
        *v23 = *(v11 + 384);
        *(v11 + 384) = v23;
        ++*(v11 + 392);
        goto LABEL_18;
      }

      v57 = __nwlog_obj();
      v35 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      *&buf[4] = "nw_mem_cache_free";
      *&buf[12] = 2048;
      *&buf[14] = v20;
      v61 = 2048;
      v62 = v22;
      LODWORD(v56) = 32;
      v37 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s malloc_zone_memalign(..., %zu, %zu) failed", buf, v56);
      if (__nwlog_should_abort(v37))
      {
        goto LABEL_113;
      }

      free(v37);
      v13 = *(v11 + 560);
      if (v13 == *v19)
      {
        goto LABEL_32;
      }

LABEL_18:
      v12 = *(v11 + 552);
      if (v12 < v13)
      {
        goto LABEL_12;
      }
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

    *buf = 136446210;
    *&buf[4] = "nw_mem_cache_free";
    LODWORD(v56) = 12;
    v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s strict_memalign called with size 0", buf, v56);
    if (__nwlog_should_abort(v26))
    {
      goto LABEL_113;
    }

    free(v26);
    if (v20 > 7)
    {
      goto LABEL_29;
    }

LABEL_39:
    v27 = __nwlog_obj();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    *buf = 136446466;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    *&buf[4] = "nw_mem_cache_free";
    *&buf[12] = 2048;
    *&buf[14] = v20;
    LODWORD(v56) = 22;
    v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s strict_memalign called with alignment (%zu) < sizeof(void*)", buf, v56);
    if (__nwlog_should_abort(v30))
    {
      goto LABEL_113;
    }

    free(v30);
    goto LABEL_29;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&buf[4] = "nw_mem_buffer_free";
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s buffer cache is NULL", buf, 0xCu);
  }
}

uint64_t nw_frame_array_foreach(uint64_t result, char a2, uint64_t a3)
{
  v5 = *result;
  if (a2)
  {
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 32);
      result = (*(a3 + 16))(a3);
      v5 = v6;
    }

    while ((result & 1) != 0);
  }

  else
  {
    do
    {
      if (!v5)
      {
        break;
      }

      v7 = *(v5 + 16);
      result = (*(a3 + 16))(a3);
      v5 = v7;
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t _nw_protocol_metadata_copy_identifier(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_18214FD4C(&qword_1ED40FBD8, &qword_1EA83AA60, &qword_182AF9640);

  sub_181AE3300(v3, a2, &v5);

  return v5;
}

void sub_181AE3300(uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v8, ObjectType, a2);
  *src = v8;
  uuid_copy(a3, src);
  *a4 = 1;
}

__n128 ProtocolMetadata.messageIdentifier.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 41);
  *a1 = result;
  return result;
}

BOOL nw_parameters_is_persona_set(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_is_persona_set(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_is_persona_set";
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
        v12 = "nw_parameters_is_persona_set";
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
            v12 = "nw_parameters_is_persona_set";
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
        v12 = "nw_parameters_is_persona_set";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_is_persona_set";
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

void nw_mem_track_allocation(unint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(g_track_mem_total_usage);
  v3 = v2 + a1;
  if (!__CFADD__(v2, a1))
  {
    goto LABEL_19;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446978;
  v14 = "nw_mem_track_allocation";
  v15 = 2082;
  v16 = "temp_total_mem_usage";
  v17 = 2048;
  v18 = a1;
  v19 = 2048;
  v20 = v3;
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_17;
      }

      *buf = 136446978;
      v14 = "nw_mem_track_allocation";
      v15 = 2082;
      v16 = "temp_total_mem_usage";
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v3;
      v7 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
      goto LABEL_16;
    }

    if (v11 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_17;
      }

      *buf = 136446978;
      v14 = "nw_mem_track_allocation";
      v15 = 2082;
      v16 = "temp_total_mem_usage";
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v3;
      v7 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
      goto LABEL_16;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v9 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136447234;
        v14 = "nw_mem_track_allocation";
        v15 = 2082;
        v16 = "temp_total_mem_usage";
        v17 = 2048;
        v18 = a1;
        v19 = 2048;
        v20 = v3;
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
      }

      free(backtrace_string);
      goto LABEL_17;
    }

    if (v9)
    {
      *buf = 136446978;
      v14 = "nw_mem_track_allocation";
      v15 = 2082;
      v16 = "temp_total_mem_usage";
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v3;
      v7 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
LABEL_16:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0x2Au);
    }
  }

LABEL_17:
  if (v4)
  {
    free(v4);
  }

LABEL_19:
  g_track_transaction_touched = 1;
  if (atomic_fetch_add_explicit(g_track_mem_total_usage, a1, memory_order_relaxed) < 0x4B000)
  {
    v10 = atomic_load(g_track_mem_total_usage);
    if (v10 > 0x4AFFF)
    {
      nw_mem_track_check_transaction_required();
    }
  }
}

void ___ZL17nw_channel_createP10nw_contextPhjPvjbbPb_block_invoke_39(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(*(a1 + 32) + 136))
  {
    os_channel_sync();
  }

  *(*(a1 + 32) + 460) |= 4u;
  nw_channel_update_input_source(*(a1 + 32), 0, 1);
  *(*(a1 + 32) + 460) &= ~4u;
}

uint64_t nw_protocol_get_input_frames(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    v7 = a1;
    v8 = a1[5];
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = a1[8]) != 0)
    {
      v29 = v9[11];
      if (v29)
      {
        v10 = 0;
        v9[11] = v29 + 1;
        if (!a2)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v10 = 0;
        if (!a2)
        {
LABEL_38:
          v30 = __nwlog_obj();
          *buf = 136446210;
          v68 = "__nw_protocol_get_input_frames";
          v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null input_protocol", buf, 12);
          type = OS_LOG_TYPE_ERROR;
          v65 = 0;
          if (__nwlog_fault(v31, &type, &v65))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v32 = __nwlog_obj();
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446210;
                v68 = "__nw_protocol_get_input_frames";
                v34 = "%{public}s called with null input_protocol";
LABEL_111:
                _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
              }
            }

            else if (v65 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v32 = __nwlog_obj();
              v33 = type;
              v57 = os_log_type_enabled(v32, type);
              if (backtrace_string)
              {
                if (v57)
                {
                  *buf = 136446466;
                  v68 = "__nw_protocol_get_input_frames";
                  v69 = 2082;
                  v70 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_112;
              }

              if (v57)
              {
                *buf = 136446210;
                v68 = "__nw_protocol_get_input_frames";
                v34 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_111;
              }
            }

            else
            {
              v32 = __nwlog_obj();
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446210;
                v68 = "__nw_protocol_get_input_frames";
                v34 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_111;
              }
            }
          }

LABEL_112:
          if (v31)
          {
            free(v31);
          }

          result = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a2)
      {
        goto LABEL_38;
      }
    }

    v11 = *(a2 + 40);
    v12 = a2;
    if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = *(a2 + 64)) != 0)
    {
      v35 = *(v12 + 88);
      if (v35)
      {
        v13 = 0;
        *(v12 + 88) = v35 + 1;
        if (!a6)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0;
        if (!a6)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v13 = 1;
      if (!a6)
      {
LABEL_45:
        v36 = __nwlog_obj();
        *buf = 136446210;
        v68 = "__nw_protocol_get_input_frames";
        v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null return_array", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v65 = 0;
        if (!__nwlog_fault(v37, &type, &v65))
        {
          goto LABEL_119;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (!os_log_type_enabled(v38, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v68 = "__nw_protocol_get_input_frames";
          v40 = "%{public}s called with null return_array";
          goto LABEL_117;
        }

        if (v65 != 1)
        {
          v38 = __nwlog_obj();
          v39 = type;
          if (!os_log_type_enabled(v38, type))
          {
            goto LABEL_119;
          }

          *buf = 136446210;
          v68 = "__nw_protocol_get_input_frames";
          v40 = "%{public}s called with null return_array, backtrace limit exceeded";
          goto LABEL_117;
        }

        v58 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = type;
        v59 = os_log_type_enabled(v38, type);
        if (v58)
        {
          if (v59)
          {
            *buf = 136446466;
            v68 = "__nw_protocol_get_input_frames";
            v69 = 2082;
            v70 = v58;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null return_array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v58);
          if (!v37)
          {
LABEL_121:
            result = 0;
            if (v13)
            {
LABEL_22:
              if ((v10 & 1) == 0)
              {
                v23 = v7[5];
                if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v7 = v7[8]) != 0)
                {
                  v24 = v7[11];
                  if (v24)
                  {
                    v25 = v24 - 1;
                    v7[11] = v25;
                    if (!v25)
                    {
                      v26 = result;
                      v27 = v7[8];
                      if (v27)
                      {
                        v7[8] = 0;
                        v27[2](v27);
                        _Block_release(v27);
                      }

                      if (v7[9])
                      {
                        v28 = v7[8];
                        if (v28)
                        {
                          _Block_release(v28);
                        }
                      }

                      free(v7);
                      return v26;
                    }
                  }
                }
              }

              return result;
            }

LABEL_11:
            v17 = *(v6 + 40);
            if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
            {
              v18 = *(v6 + 88);
              if (v18)
              {
                v19 = v18 - 1;
                *(v6 + 88) = v19;
                if (!v19)
                {
                  v20 = result;
                  v21 = *(v6 + 64);
                  if (v21)
                  {
                    *(v6 + 64) = 0;
                    v21[2](v21);
                    _Block_release(v21);
                  }

                  if (*(v6 + 72))
                  {
                    v22 = *(v6 + 64);
                    if (v22)
                    {
                      _Block_release(v22);
                    }
                  }

                  free(v6);
                  result = v20;
                }
              }
            }

            goto LABEL_22;
          }

LABEL_120:
          free(v37);
          goto LABEL_121;
        }

        if (v59)
        {
          *buf = 136446210;
          v68 = "__nw_protocol_get_input_frames";
          v40 = "%{public}s called with null return_array, no backtrace";
LABEL_117:
          v62 = v38;
          v63 = v39;
          v64 = 12;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    v14 = a1[3];
    if (v14)
    {
      v15 = *(v14 + 80);
      if (v15)
      {
        result = v15(a1, a2);
        if (v13)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    v41 = __nwlog_obj();
    v42 = v7[2];
    *buf = 136446722;
    v68 = "__nw_protocol_get_input_frames";
    if (!v42)
    {
      v42 = "invalid";
    }

    v69 = 2082;
    v70 = v42;
    v71 = 2048;
    v72 = v7;
    v37 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v37, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_119;
        }

        v45 = v7[2];
        if (!v45)
        {
          v45 = "invalid";
        }

        *buf = 136446722;
        v68 = "__nw_protocol_get_input_frames";
        v69 = 2082;
        v70 = v45;
        v71 = 2048;
        v72 = v7;
        v40 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
      }

      else if (v65 == 1)
      {
        v51 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type;
        v52 = os_log_type_enabled(v43, type);
        if (v51)
        {
          if (v52)
          {
            v53 = v7[2];
            if (!v53)
            {
              v53 = "invalid";
            }

            *buf = 136446978;
            v68 = "__nw_protocol_get_input_frames";
            v69 = 2082;
            v70 = v53;
            v71 = 2048;
            v72 = v7;
            v73 = 2082;
            v74 = v51;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v51);
          goto LABEL_119;
        }

        if (!v52)
        {
          goto LABEL_119;
        }

        v61 = v7[2];
        if (!v61)
        {
          v61 = "invalid";
        }

        *buf = 136446722;
        v68 = "__nw_protocol_get_input_frames";
        v69 = 2082;
        v70 = v61;
        v71 = 2048;
        v72 = v7;
        v40 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_119;
        }

        v60 = v7[2];
        if (!v60)
        {
          v60 = "invalid";
        }

        *buf = 136446722;
        v68 = "__nw_protocol_get_input_frames";
        v69 = 2082;
        v70 = v60;
        v71 = 2048;
        v72 = v7;
        v40 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
      }

      v62 = v43;
      v63 = v44;
      v64 = 32;
LABEL_118:
      _os_log_impl(&dword_181A37000, v62, v63, v40, buf, v64);
    }

LABEL_119:
    if (!v37)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  v68 = "__nw_protocol_get_input_frames";
  v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v65 = 0;
  if (__nwlog_fault(v47, &type, &v65))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        v68 = "__nw_protocol_get_input_frames";
        v50 = "%{public}s called with null protocol";
LABEL_105:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

    else if (v65 == 1)
    {
      v54 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = type;
      v55 = os_log_type_enabled(v48, type);
      if (v54)
      {
        if (v55)
        {
          *buf = 136446466;
          v68 = "__nw_protocol_get_input_frames";
          v69 = 2082;
          v70 = v54;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        goto LABEL_106;
      }

      if (v55)
      {
        *buf = 136446210;
        v68 = "__nw_protocol_get_input_frames";
        v50 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_105;
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        v68 = "__nw_protocol_get_input_frames";
        v50 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_105;
      }
    }
  }

LABEL_106:
  if (v47)
  {
    free(v47);
  }

  return 0;
}