uint64_t _nw_quic_connection_get_initial_max_stream_data_bidirectional_remote()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v0 = sub_181AA8420();
  if (!v0)
  {
    return 0;
  }

  v1 = *(*v0 + 128);
  v2 = v0;
  swift_beginAccess();
  v3 = *(v2 + v1);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 32);

  return v4;
}

uint64_t nw_quic_connection_get_initial_max_stream_data_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    initial_max_stream_data_unidirectional = _nw_quic_connection_get_initial_max_stream_data_unidirectional();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
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
            v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_initial_max_stream_data_unidirectional";
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

  initial_max_stream_data_unidirectional = 0;
LABEL_3:

  return initial_max_stream_data_unidirectional;
}

uint64_t _nw_quic_connection_get_initial_max_stream_data_unidirectional()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750, &unk_182AE4BD0);
  v0 = sub_181AA8420();
  if (!v0)
  {
    return 0;
  }

  v1 = *(*v0 + 128);
  v2 = v0;
  swift_beginAccess();
  v3 = *(v2 + v1);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 40);

  return v4;
}

BOOL nw_endpoint_flow_pre_attach_protocols(void *a1, nw_protocol *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_endpoint_flow_pre_attach_protocols";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v13, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v14, v37, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            v53 = "nw_endpoint_flow_pre_attach_protocols";
            v54 = 2082;
            v55 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v13)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v44)
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v14, v43, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v14, v45, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_53;
    }

LABEL_54:
    if (!v13)
    {
LABEL_56:
      v10 = 0;
      goto LABEL_57;
    }

LABEL_55:
    free(v13);
    goto LABEL_56;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (mode > 5)
    {
      v12 = "unknown-mode";
    }

    else
    {
      v12 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v53 = "nw_endpoint_flow_pre_attach_protocols";
    v54 = 2082;
    v55 = v12;
    v56 = 2082;
    v57 = "flow";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v13, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (mode > 5)
          {
            v16 = "unknown-mode";
          }

          else
          {
            v16 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          v54 = 2082;
          v55 = v16;
          v56 = 2082;
          v57 = "flow";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v50 == 1)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (v17)
        {
          if (v19)
          {
            if (mode > 5)
            {
              v20 = "unknown-mode";
            }

            else
            {
              v20 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v53 = "nw_endpoint_flow_pre_attach_protocols";
            v54 = 2082;
            v55 = v20;
            v56 = 2082;
            v57 = "flow";
            v58 = 2082;
            v59 = v17;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v17);
          if (!v13)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v19)
        {
          if (mode > 5)
          {
            v32 = "unknown-mode";
          }

          else
          {
            v32 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          v54 = 2082;
          v55 = v32;
          v56 = 2082;
          v57 = "flow";
          _os_log_impl(&dword_181A37000, v14, v18, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v14, type))
        {
          if (mode > 5)
          {
            v30 = "unknown-mode";
          }

          else
          {
            v30 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          v54 = 2082;
          v55 = v30;
          v56 = 2082;
          v57 = "flow";
          _os_log_impl(&dword_181A37000, v14, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_53:

      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v7 = nw_endpoint_handler_copy_flow(v5);
  if ((*(v7 + 32) & 2) == 0)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_endpoint_flow_pre_attach_protocols";
    v39 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null endpoint_flow->is_leaf_flow_handler", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v39, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null endpoint_flow->is_leaf_flow_handler", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        v46 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v40, type);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            v53 = "nw_endpoint_flow_pre_attach_protocols";
            v54 = 2082;
            v55 = v46;
            _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null endpoint_flow->is_leaf_flow_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_91;
        }

        if (v48)
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null endpoint_flow->is_leaf_flow_handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v53 = "nw_endpoint_flow_pre_attach_protocols";
          _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null endpoint_flow->is_leaf_flow_handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_91:
    if (v39)
    {
      free(v39);
    }

    v10 = 0;
    goto LABEL_43;
  }

  nw_endpoint_handler_initialize_association(v5);
  nw_endpoint_flow_initialize_protocol(v5, v7 + 376, *(v7 + 32) & 1);
  if (!a2)
  {
    v21 = v5;
    os_unfair_lock_lock(&v21->lock);
    v22 = v21->current_path;
    os_unfair_lock_unlock(&v21->lock);

    v23 = v21;
    v24 = v23->parameters;

    if (nw_endpoint_flow_should_add_filter(v24, v22))
    {
      Helper_x8__ne_filter_protocol_identifier = gotLoadHelper_x8__ne_filter_protocol_identifier(v25);
      if (*(v27 + 2208))
      {
        inited = ne_filter_protocol_identifier_delayInitStub(Helper_x8__ne_filter_protocol_identifier);
      }

      else
      {
        inited = 0;
      }

      v31 = inited != 0;
      if ((*(v7 + 225) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = 1;
      if ((*(v7 + 225) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    if (v31 && v22 && (_nw_path_uses_nexus(v22) & 1) != 0)
    {
      v33 = 32 * *(v7 + 34);
      *(v7 + 33) = (v33 & 0x40 | *(v7 + 33) & 0xBF) ^ 0x40;
      if ((v33 & 0x40) == 0)
      {
        v34 = nw_endpoint_flow_setup_channel(v23);
LABEL_42:
        v10 = v34;

        goto LABEL_43;
      }

LABEL_41:
      v34 = nw_endpoint_flow_setup_protocols(v23, 0, 0, 0, 0);
      goto LABEL_42;
    }

LABEL_40:
    *(v7 + 33) &= ~0x40u;
    goto LABEL_41;
  }

  *(v7 + 34) |= 0x40u;
  v8 = nw_endpoint_handler_copy_endpoint(v5);
  v9 = *(v7 + 121);
  *(v7 + 121) = v8;

  v10 = nw_endpoint_flow_setup_protocols(v5, 0, a2, 0, 1);
LABEL_43:

LABEL_57:
  return v10;
}

void sub_181D101A4(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = *a5;
  v10 = *(sub_181AC9084() + 24);

  v11 = *(sub_181A54748() + 24);

  if (__OFADD__(v10, v11))
  {
    goto LABEL_127;
  }

  v118 = v10 + v11;
  v119 = v5;
  v12 = *(sub_181AC9084() + 24);

  v13 = *(sub_181A54748() + 24);

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v114 = a3;
  if (v118 >= 1 && v14 >= 1)
  {
    v110 = a2;
    v109 = a1;
    v107 = v9;
    v15 = 0;
    v16 = v10 + v11 - v14;
    v17 = a3;
    while (v15 < v14)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_115;
      }

      v24 = *(v17 + 16);
      v25 = v24[3];
      v26 = v15;
      v27 = __OFSUB__(v15, v25);
      v28 = v15 - v25;
      if (v28 < 0 == v27)
      {
        if (v27)
        {
          goto LABEL_120;
        }

        if (v28 < 0)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v24 = *(v17 + 24);
        v26 = v28;
        if (v28 >= v24[3])
        {
          goto LABEL_122;
        }
      }

      v29 = v24[4] + v26;
      v30 = v24[2];
      if (v29 < v30)
      {
        v30 = 0;
      }

      v31 = &v24[2 * (v29 - v30)];
      v32 = v31[5];
      v33 = v31[6];
      if (!(v33 >> 62))
      {
        v18 = *(v32 + 56);
        v19 = ~v18 & 0x1000000000000007;
        v20 = v18 & 0x1000000000000000;
        if (v19)
        {
          v21 = v20 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21 || *(v32 + 48) != a4)
        {
          goto LABEL_13;
        }

LABEL_25:
        v38 = *(a4 + 16);
        if (!v38)
        {
          goto LABEL_143;
        }

        sub_181AAC800(v38, &v126);
        v39 = 0;
        v116 = v127;
        v117 = v128;
        v120 = v129;
        v112 = BYTE1(v126);
        v113 = v126;
        v115 = v126 | (BYTE1(v126) << 8);
        v108 = v127;
        v41 = v118;
        v40 = v119;
        v111 = v15;
        while (2)
        {
          if (v39 >= v41)
          {
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v43 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_119;
          }

          v44 = *(sub_181AC9084() + 24);

          v45 = __OFSUB__(v39, v44);
          v46 = v39 - v44;
          if (v46 < 0 != v45)
          {
            v47 = *(v40 + 16);
            if (v39 >= v47[3])
            {
              goto LABEL_123;
            }

            v48 = v47[4];
            if ((v39 + v48) >= v47[2])
            {
              v49 = v47[2];
            }

            else
            {
              v49 = 0;
            }

            v50 = &v47[2 * v39 + 2 * (v48 - v49)];
            v52 = v50[5];
            v51 = v50[6];
            sub_181B2C3E0(v52, v51);
            v53 = v51 >> 62;
            if (!(v51 >> 62))
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v45)
            {
              goto LABEL_124;
            }

            v59 = sub_181A54748();
            if (v46 < 0)
            {
              goto LABEL_125;
            }

            if (v46 >= v59[3])
            {
              goto LABEL_126;
            }

            v60 = v59[4] + v46;
            v61 = v59[2];
            if (v60 < v61)
            {
              v61 = 0;
            }

            v62 = &v59[2 * (v60 - v61)];
            v52 = v62[5];
            v51 = v62[6];
            sub_181B2C3E0(v52, v51);

            v53 = v51 >> 62;
            if (!(v51 >> 62))
            {
LABEL_46:
              v121 = v39;
              v124 = v39 + 1;
              swift_beginAccess();
              v55 = *(v52 + 24);
              v56 = *(v52 + 32);
              v57 = *(v52 + 40);
              v58 = *(v52 + 16);
              sub_181F49A24(v55, v56, v57);
LABEL_47:
              v63 = v113 == v58 && v112 == (v58 >> 8);
              v64 = v120;
              if (!v63)
              {
LABEL_51:
                v42 = v116;
                v65 = v57;
                v66 = v117;
                sub_181F49A24(v116, v117, v64);
                sub_181F67190(v58, v55, v56, v65);
                sub_181AAD084(v52, v51);
                v67 = v120;
                v15 = v111;
                goto LABEL_52;
              }

              if (v57)
              {
                if ((v120 & 1) == 0)
                {
                  v64 = 0;
                  goto LABEL_51;
                }

                if (v55 == v116 && v56 == v117)
                {
                  sub_181F49A24(v116, v117, 1);
                  sub_181F67190(v58, v116, v117, v57);
                  sub_181AAD084(v52, v51);
                  sub_181F669F0(v115, v116, v117, v120);
                  sub_181F48350(v116, v117, 1);
                  sub_181F669F0(v58, v116, v117, v57);
                  v39 = v121;
                  v43 = v124;
                  v41 = v118;
                  v40 = v119;
                  v42 = v116;
                  if (v16 != v121)
                  {
                    goto LABEL_28;
                  }
                }

                else
                {
                  v106 = sub_182AD4268();
                  sub_181F49A24(v116, v117, 1);
                  sub_181F67190(v58, v55, v56, v57);
                  v69 = v51;
                  v70 = v106;
                  sub_181AAD084(v52, v69);
                  sub_181F669F0(v115, v116, v117, v120);
                  v42 = v116;
LABEL_62:
                  sub_181F48350(v55, v56, v57);
                  sub_181F669F0(v58, v55, v56, v57);
                  v41 = v118;
                  v40 = v119;
                  v39 = v121;
                  v43 = v124;
                  if (!v70 || v16 != v121)
                  {
                    goto LABEL_28;
                  }
                }

                if (v110)
                {
                  goto LABEL_70;
                }

                if (v109 == v39)
                {
                  v39 = v109;
LABEL_70:
                  sub_181F48350(v42, v117, v120);
                  v71 = v107;
                  if (v41 >= v43)
                  {
                    if (v43 == v41)
                    {
                      return;
                    }

                    v72 = v39;
                    while (2)
                    {
                      if (v43 >= v41)
                      {
                        goto LABEL_129;
                      }

                      v73 = *(sub_181AC9084() + 24);

                      v74 = __OFSUB__(v43, v73);
                      v75 = v43 - v73;
                      if (v75 < 0 != v74)
                      {
                        if (v43 < 0)
                        {
                          goto LABEL_133;
                        }

                        v76 = *(v40 + 16);
                        if (v43 >= v76[3])
                        {
                          goto LABEL_134;
                        }

                        v77 = v76[4];
                        if (v43 + v77 >= v76[2])
                        {
                          v78 = v76[2];
                        }

                        else
                        {
                          v78 = 0;
                        }

                        v79 = &v76[2 * v43 + 2 * (v77 - v78)];
                        v80 = v43;
                        v82 = v79[5];
                        v81 = v79[6];
                        sub_181B2C3E0(v82, v81);
                      }

                      else
                      {
                        if (v74)
                        {
                          goto LABEL_132;
                        }

                        v83 = sub_181A54748();
                        if (v75 < 0)
                        {
                          goto LABEL_135;
                        }

                        if (v75 >= v83[3])
                        {
                          goto LABEL_136;
                        }

                        v80 = v43;
                        v84 = v83[4] + v75;
                        v85 = v83[2];
                        if (v84 < v85)
                        {
                          v85 = 0;
                        }

                        v86 = &v83[2 * (v84 - v85)];
                        v82 = v86[5];
                        v81 = v86[6];
                        sub_181B2C3E0(v82, v81);
                      }

                      v87 = v80 - v72;
                      if (__OFSUB__(v80, v72))
                      {
                        goto LABEL_130;
                      }

                      v88 = v15 + v87;
                      if (__OFADD__(v15, v87))
                      {
                        goto LABEL_131;
                      }

                      v89 = v80;
                      v90 = *(sub_181AC9084() + 24);

                      v91 = v88 - v90;
                      if (v88 >= v90)
                      {
                        if (__OFSUB__(v88, v90))
                        {
                          goto LABEL_138;
                        }

                        v101 = sub_181A54748();
                        if (v91 < 0)
                        {
                          goto LABEL_139;
                        }

                        if (v91 >= v101[3])
                        {
                          goto LABEL_141;
                        }

                        v102 = v101[4] + v91;
                        v103 = v101[2];
                        if (v102 < v103)
                        {
                          v103 = 0;
                        }

                        v104 = &v101[2 * (v102 - v103)];
                        v97 = v104[5];
                        v96 = v104[6];
                        sub_181B2C3E0(v97, v96);

                        v98 = v81 >> 62;
                        if (!(v81 >> 62))
                        {
                          goto LABEL_110;
                        }

LABEL_101:
                        if (v98 == 1)
                        {
                          if (v96 >> 62 != 1)
                          {
                            goto LABEL_117;
                          }

                          ObjectType = swift_getObjectType();
                          LOBYTE(v126) = v71;
                          v122 = *((v81 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                          v125 = ObjectType;
                          sub_181B2C3E0(v97, v96);
                          sub_181B2C3E0(v82, v81);
                          v100 = v122(v97, v96 & 0x3FFFFFFFFFFFFFFFLL, &v126, v125, v81 & 0x3FFFFFFFFFFFFFFFLL);
                          v71 = v107;
                          goto LABEL_112;
                        }

                        sub_181AAD084(v82, v81);
                        sub_181AAD084(v97, v96);
                        if ((v96 & 0x8000000000000000) == 0)
                        {
                          return;
                        }
                      }

                      else
                      {
                        if (v88 < 0)
                        {
                          goto LABEL_137;
                        }

                        v92 = *(v114 + 16);
                        if (v88 >= v92[3])
                        {
                          goto LABEL_140;
                        }

                        v93 = v92[4] + v88;
                        v94 = v92[2];
                        if (v93 < v94)
                        {
                          v94 = 0;
                        }

                        v95 = &v92[2 * (v93 - v94)];
                        v97 = v95[5];
                        v96 = v95[6];
                        sub_181B2C3E0(v97, v96);
                        v98 = v81 >> 62;
                        if (v81 >> 62)
                        {
                          goto LABEL_101;
                        }

LABEL_110:
                        if (v96 >> 62)
                        {
LABEL_117:
                          sub_181AAD084(v82, v81);
                          sub_181AAD084(v97, v96);
                          return;
                        }

                        sub_181B2C3E0(v97, v96);
                        sub_181B2C3E0(v82, v81);
                        v100 = sub_181CC4EF0(v97, v71);
LABEL_112:
                        v105 = v100;
                        sub_181AAD084(v97, v96);
                        sub_181AAD084(v82, v81);
                        sub_181AAD084(v82, v81);
                        sub_181AAD084(v97, v96);
                        if ((v105 & 1) == 0)
                        {
                          return;
                        }
                      }

                      v43 = v89 + 1;
                      v41 = v118;
                      v40 = v119;
                      if (v118 == v89 + 1)
                      {
                        return;
                      }

                      continue;
                    }
                  }

LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
                  return;
                }

                goto LABEL_28;
              }

              v42 = v116;
              v65 = v57;
              v66 = v117;
              sub_181F49A24(v116, v117, v120);
              sub_181F67190(v58, v55, v56, v65);
              sub_181AAD084(v52, v51);
              v67 = v120;
              if ((v120 & 1) == 0)
              {
                sub_181F669F0(v115, v116, v117, v120);
                v70 = v108 == v55;
                v57 = v65;
                goto LABEL_62;
              }

LABEL_52:
              sub_181F669F0(v115, v42, v66, v67);
              sub_181F48350(v55, v56, v65);
              sub_181F669F0(v58, v55, v56, v65);
              v41 = v118;
              v40 = v119;
              v39 = v121;
              v43 = v124;
LABEL_28:
              ++v39;
              if (v43 == v41)
              {
                sub_181F48350(v42, v117, v120);
                return;
              }

              continue;
            }
          }

          break;
        }

        if (v53 == 1)
        {
          v121 = v39;
          v124 = v39 + 1;
          v54 = swift_getObjectType();
          (*((v51 & 0x3FFFFFFFFFFFFFFFLL) + 0x60))(&v126, v54, v51 & 0x3FFFFFFFFFFFFFFFLL);
          v55 = v127;
          v56 = v128;
          v57 = v129;
          v58 = v126;
          goto LABEL_47;
        }

        v42 = v116;
        sub_181F49A24(v116, v117, v120);
        sub_181AAD084(v52, v51);
        sub_181F669F0(0, 0, 0, 255);
        sub_181F669F0(v115, v116, v117, v120);
        v40 = v119;
        goto LABEL_28;
      }

      if (v33 >> 62 == 1)
      {
        v34 = swift_getObjectType();
        v35 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        sub_181B2C3E0(v32, v33);
        v36 = v34;
        v17 = v114;
        v37 = v35(a4, v36, v33 & 0x3FFFFFFFFFFFFFFFLL);
        sub_181AAD084(v32, v33);
        if (v37)
        {
          goto LABEL_25;
        }
      }

LABEL_13:
      ++v15;
      ++v16;
      if (v23 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
  }
}

uint64_t _nw_protocol_options_inherit_log_id(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(*a1 + 160));

  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = a2 + *(*a2 + 160);
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  v8 = (a1 + *(*a1 + 168));
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = (a2 + *(*a2 + 168));
  swift_beginAccess();
  *v11 = v10;
  v11[1] = v9;
}

void nw_protocol_instance_clear_flow_for_key(void *a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_instance_clear_flow_for_key";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v11, &type, &v34))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v34 == 1)
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
          v37 = "nw_protocol_instance_clear_flow_for_key";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_66:
        if (!v11)
        {
          goto LABEL_14;
        }

LABEL_67:
        free(v11);
        goto LABEL_14;
      }

      if (v18)
      {
        *buf = 136446210;
        v37 = "nw_protocol_instance_clear_flow_for_key";
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
        v37 = "nw_protocol_instance_clear_flow_for_key";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_65:

    goto LABEL_66;
  }

  if (a2)
  {
    v5 = v3[30];
    if (v5 && *(v5 + 48))
    {
      node = nw_hash_table_get_node(v5, a2, *(*(*(v4 + 1) + 80) + 264));
      if (node)
      {
        v7 = node;
        v8 = v4[413];
        if (node[2])
        {
          if ((v8 & 0x80000000) == 0 && gLogDatapath == 1)
          {
            v28 = __nwlog_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = *(v7 + 32);
              *buf = 136447234;
              v37 = "nw_protocol_instance_clear_flow_for_key";
              v38 = 2082;
              v39 = v4 + 415;
              v40 = 2080;
              v41 = " ";
              v42 = 2048;
              v43 = a2;
              v44 = 2048;
              v45 = v29;
              _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemoving custom flow mapping for key %p, flow %llx", buf, 0x34u);
            }
          }

          nw_hash_table_remove_node(*(v4 + 30), v7);
          goto LABEL_14;
        }

        if (v8 < 0)
        {
          goto LABEL_14;
        }

        v24 = __nwlog_obj();
        *buf = 136446978;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        v42 = 2048;
        v43 = v7;
        v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s %{public}s%sobject not present from node %p", buf, 42);

        type = OS_LOG_TYPE_ERROR;
        v34 = 0;
        if (!__nwlog_fault(v25, &type, &v34))
        {
          goto LABEL_74;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v26 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446978;
            v37 = "nw_protocol_instance_clear_flow_for_key";
            v38 = 2082;
            v39 = v4 + 415;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v7;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}s%sobject not present from node %p", buf, 0x2Au);
          }
        }

        else if (v34 == 1)
        {
          v30 = __nw_create_backtrace_string();
          v26 = __nwlog_obj();
          v31 = type;
          v32 = os_log_type_enabled(v26, type);
          if (v30)
          {
            if (v32)
            {
              *buf = 136447234;
              v37 = "nw_protocol_instance_clear_flow_for_key";
              v38 = 2082;
              v39 = v4 + 415;
              v40 = 2080;
              v41 = " ";
              v42 = 2048;
              v43 = v7;
              v44 = 2082;
              v45 = v30;
              _os_log_impl(&dword_181A37000, v26, v31, "%{public}s %{public}s%sobject not present from node %p, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v30);
            goto LABEL_74;
          }

          if (v32)
          {
            *buf = 136446978;
            v37 = "nw_protocol_instance_clear_flow_for_key";
            v38 = 2082;
            v39 = v4 + 415;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v7;
            _os_log_impl(&dword_181A37000, v26, v31, "%{public}s %{public}s%sobject not present from node %p, no backtrace", buf, 0x2Au);
          }
        }

        else
        {
          v26 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446978;
            v37 = "nw_protocol_instance_clear_flow_for_key";
            v38 = 2082;
            v39 = v4 + 415;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v7;
            _os_log_impl(&dword_181A37000, v26, v33, "%{public}s %{public}s%sobject not present from node %p, backtrace limit exceeded", buf, 0x2Au);
          }
        }

LABEL_74:
        if (v25)
        {
          free(v25);
        }

        goto LABEL_14;
      }

      if (v4[413] < 0)
      {
        goto LABEL_14;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        v42 = 2048;
        v43 = a2;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo flow found in custom flow mapping table for key %p", buf, 0x2Au);
      }
    }

    else
    {
      if (v4[413] < 0)
      {
        goto LABEL_14;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v37 = "nw_protocol_instance_clear_flow_for_key";
        v38 = 2082;
        v39 = v4 + 415;
        v40 = 2080;
        v41 = " ";
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFlow mapping table is empty", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_protocol_instance_clear_flow_for_key";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null key", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v11, &type, &v34))
  {
    goto LABEL_66;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v37 = "nw_protocol_instance_clear_flow_for_key";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null key", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (v34 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v37 = "nw_protocol_instance_clear_flow_for_key";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_65;
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
      v37 = "nw_protocol_instance_clear_flow_for_key";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null key, no backtrace", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (v21)
  {
    *buf = 136446466;
    v37 = "nw_protocol_instance_clear_flow_for_key";
    v38 = 2082;
    v39 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_67;
  }

LABEL_14:
}

uint64_t nw_protocol_instance_set_flow_for_key(void *a1, const void *a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_instance_set_flow_for_key";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null instance", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v23, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v31, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v45 != 1)
      {
        v24 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v42, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_52;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v37)
      {
        *buf = 136446466;
        v48 = "nw_protocol_instance_set_flow_for_key";
        v49 = 2082;
        v50 = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v36, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (!a2)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_instance_set_flow_for_key";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null key", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v23, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null key", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v45 != 1)
      {
        v24 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v43, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_52;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v38, "%{public}s called with null key, no backtrace", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v39)
      {
        *buf = 136446466;
        v48 = "nw_protocol_instance_set_flow_for_key";
        v49 = 2082;
        v50 = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v38, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (!a3)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_instance_set_flow_for_key";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null flow", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (__nwlog_fault(v23, &type, &v45))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null flow", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v45 != 1)
      {
        v24 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v44, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_52;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v24, type);
      if (!backtrace_string)
      {
        if (v41)
        {
          *buf = 136446210;
          v48 = "nw_protocol_instance_set_flow_for_key";
          _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null flow, no backtrace", buf, 0xCu);
        }

        goto LABEL_52;
      }

      if (v41)
      {
        *buf = 136446466;
        v48 = "nw_protocol_instance_set_flow_for_key";
        v49 = 2082;
        v50 = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_46;
    }

LABEL_53:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_30;
  }

  if (nw_protocol_definition_get_variant(v5[1]) != 3)
  {
    if (*(v6 + 413) < 0)
    {
      goto LABEL_30;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v48 = "nw_protocol_instance_set_flow_for_key";
      v49 = 2082;
      v50 = v6 + 415;
      v51 = 2080;
      v52 = " ";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot use custom flow mapping table on a non-multiplexing protocol", buf, 0x20u);
    }

LABEL_29:

    goto LABEL_30;
  }

  v7 = *(*(v6[1] + 10) + 264);
  if (!v7)
  {
    if (*(v6 + 413) < 0)
    {
      goto LABEL_30;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v48 = "nw_protocol_instance_set_flow_for_key";
      v49 = 2082;
      v50 = v6 + 415;
      v51 = 2080;
      v52 = " ";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sThe size of the key data in the protocol definition must be specified before using the custom flow map. See nw_protocol_definition_set_custom_flow_map_key_size.", buf, 0x20u);
    }

    goto LABEL_29;
  }

  if (v6[30])
  {
    goto LABEL_9;
  }

  internal = nw_hash_table_create_internal(0x1Fu, 8, nw_protocol_custom_mapping_get_key, nw_protocol_custom_mapping_key_hash, nw_protocol_custom_mapping_matches_key, nw_protocol_custom_mapping_release_object, 0);
  if (!internal)
  {
    v6[30] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v48 = "nw_protocol_instance_set_flow_for_key";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s nw_hash_table_create_no_lock failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v23, &type, &v45))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v48 = "nw_protocol_instance_set_flow_for_key";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_hash_table_create_no_lock failed", buf, 0xCu);
      }

LABEL_52:

      goto LABEL_53;
    }

    if (v45 != 1)
    {
      v24 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v48 = "nw_protocol_instance_set_flow_for_key";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v48 = "nw_protocol_instance_set_flow_for_key";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_hash_table_create_no_lock failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_52;
    }

    if (v28)
    {
      *buf = 136446466;
      v48 = "nw_protocol_instance_set_flow_for_key";
      v49 = 2082;
      v50 = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_46:

    free(backtrace_string);
    goto LABEL_53;
  }

  *(internal + 56) &= ~2u;
  v6[30] = internal;
LABEL_9:
  v9 = malloc_type_calloc(1uLL, v7 + 4, 0xB93A711uLL);
  if (v9)
  {
LABEL_15:
    *v9 = v7;
    memcpy(v9 + 1, a2, v7);
    type = OS_LOG_TYPE_DEFAULT;
    v14 = nw_hash_table_add_object(v6[30], v9, &type);
    if (v14)
    {
      v15 = type;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      *(v14 + 4) = a3;
      if (*(v6 + 413) < 0 || gLogDatapath != 1)
      {
        v15 = 1;
LABEL_31:

        return v15;
      }

      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447234;
        v48 = "nw_protocol_instance_set_flow_for_key";
        v49 = 2082;
        v50 = v6 + 415;
        v51 = 2080;
        v52 = " ";
        v53 = 2048;
        v54 = a2;
        v55 = 2048;
        v56 = a3;
        v18 = "%{public}s %{public}s%sAdded key %p to custom flow mapping table for flow id: %llx";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEBUG;
        v21 = 52;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if ((*(v6 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v48 = "nw_protocol_instance_set_flow_for_key";
        v49 = 2082;
        v50 = v6 + 415;
        v51 = 2080;
        v52 = " ";
        v53 = 2048;
        v54 = a2;
        v18 = "%{public}s %{public}s%sFailed to add key %p to custom flow mapping table";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 42;
LABEL_35:
        _os_log_impl(&dword_181A37000, v19, v20, v18, buf, v21);
      }

LABEL_36:

      goto LABEL_31;
    }

LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446722;
  v48 = "nw_protocol_instance_set_flow_for_key";
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v49 = 2048;
  v50 = 1;
  v51 = 2048;
  v52 = (v7 + 4);
  v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);

  result = __nwlog_should_abort(v12);
  if (!result)
  {
    free(v12);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

_DWORD *nw_protocol_custom_mapping_get_key(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  result = a1 + 1;
  *a2 = v3;
  return result;
}

void nw_protocol_instance_report_ready(void *a1, unint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_report_ready";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null instance", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81) = 0;
    if (!__nwlog_fault(v34, type, &v81))
    {
      goto LABEL_134;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v81 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v41 = type[0];
      v42 = os_log_type_enabled(v35, type[0]);
      if (backtrace_string)
      {
        if (v42)
        {
          *buf = 136446466;
          v86 = "nw_protocol_instance_report_ready";
          v87 = 2082;
          v88 = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_134:
        if (!v34)
        {
          goto LABEL_54;
        }

        goto LABEL_135;
      }

      if (v42)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v49 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v49, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_133:

    goto LABEL_134;
  }

  v5 = v3[15];
  if (v5)
  {
    v6 = v5;
    v7 = v6;
    if ((v6[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v6[1]);
    }
  }

  if ((*(v4 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v86 = "nw_protocol_instance_report_ready";
      v87 = 2082;
      v88 = v4 + 415;
      v89 = 2080;
      v90 = " ";
      v91 = 2048;
      v92 = a2;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReporting flow %llx ready", buf, 0x2Au);
    }
  }

  if (*(v4[1] + 64) != 3)
  {
    if (a2 == -1)
    {
      *(v4 + 410) |= 8u;
      nw_protocol_implementation_report_connected(v4, (v4 - 12), *(v4 - 6), 0xFFFFFFFFFFFFFFFFLL);
      nw_protocol_instance_update_available_paths(v4);
      goto LABEL_54;
    }

    v38 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_report_ready";
    v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81) = 0;
    if (!__nwlog_fault(v34, type, &v81))
    {
      goto LABEL_134;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v39, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 0xCu);
      }
    }

    else if (v81 == 1)
    {
      v54 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v55 = type[0];
      v56 = os_log_type_enabled(v35, type[0]);
      if (v54)
      {
        if (v56)
        {
          *buf = 136446466;
          v86 = "nw_protocol_instance_report_ready";
          v87 = 2082;
          v88 = v54;
          _os_log_impl(&dword_181A37000, v35, v55, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        if (!v34)
        {
          goto LABEL_54;
        }

LABEL_135:
        free(v34);
        goto LABEL_54;
      }

      if (v56)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v55, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v60 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_report_ready";
        _os_log_impl(&dword_181A37000, v35, v60, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_133;
  }

  *(v4 + 410) |= 8u;
  v8 = v4[29];
  if (a2 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __nw_protocol_instance_report_ready_block_invoke;
    v76[3] = &unk_1E6A35D48;
    v9 = v4;
    v77 = v9;
    v78 = a2;
    nw_hash_table_apply(v8, v76);
    nw_protocol_instance_update_available_paths(v9);
    v10 = nw_protocol_instance_copy_path(v9, -1);
    v11 = nw_path_copy_interface(v10);
    v12 = v9->wakeup;
    if ((*(v4 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v86 = "nw_protocol_instance_report_ready";
        v87 = 2082;
        v88 = &v9->flow_in_connected + 7;
        v89 = 2080;
        v90 = " ";
        v91 = 2112;
        v92 = v11;
        v93 = 2112;
        v94 = v12;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%sCalling notify with interface %@ for flow_registration %@", buf, 0x34u);
      }
    }

    v14 = *&v9[-1].log_str[41];
    if (v14)
    {
      v15 = *(v14 + 5);
      v16 = *&v9[-1].log_str[41];
      if (v15 != &nw_protocol_ref_counted_handle)
      {
        if (v15 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v16) = 0;
          v17 = 1;
          goto LABEL_34;
        }

        v16 = *(v14 + 8);
        if (!v16)
        {
          v17 = 1;
          goto LABEL_34;
        }
      }

      v22 = *(v16 + 88);
      v17 = 0;
      if (v22)
      {
        *(v16 + 88) = v22 + 1;
      }

      LOBYTE(v16) = -1;
LABEL_34:
      *type = v14;
      v84 = v16;
      v23 = *&v9[-1].log_str[33];
      p_paths_log_id_num = &v9[-1].paths_log_id_num;
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (p_paths_log_id_num = *&v9[-1].log_str[57]) != 0)
      {
        v27 = *(p_paths_log_id_num + 11);
        v26 = 0;
        if (v27)
        {
          *(p_paths_log_id_num + 11) = v27 + 1;
        }

        v25 = -1;
      }

      else
      {
        v25 = 0;
        v26 = 1;
      }

      v81 = &v9[-1].paths_log_id_num;
      v82 = v25;
      v28 = *(v14 + 3);
      if (v28)
      {
        v29 = *(v28 + 160);
        if (v29)
        {
          v29();
LABEL_44:
          if ((v26 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(&v81);
          }

          if ((v17 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(type);
          }

LABEL_48:
          if ((*(v4 + 413) & 4) == 0 && (v9->flow_in_connected & 0x400000000) != 0)
          {
            if ((*(v4 + 413) & 0x80) == 0 && gLogDatapath == 1)
            {
              v65 = __nwlog_obj();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                v86 = "nw_protocol_instance_report_ready";
                v87 = 2082;
                v88 = &v9->flow_in_connected + 7;
                v89 = 2080;
                v90 = " ";
                _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemoving instance now that we are fully connected", buf, 0x20u);
              }
            }

            nw_protocol_remove_instance(&v9[-1].paths_log_id_num);
          }

          goto LABEL_54;
        }
      }

      v43 = v14;
      v44 = __nwlog_obj();
      v45 = *(v43 + 2);
      *buf = 136446722;
      v86 = "__nw_protocol_notify";
      if (!v45)
      {
        v45 = "invalid";
      }

      v87 = 2082;
      v88 = v45;
      v89 = 2048;
      *v73 = v43;
      v90 = v43;
      v46 = v44;
      v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 32);

      v80 = OS_LOG_TYPE_ERROR;
      v79 = 0;
      if (__nwlog_fault(v75, &v80, &v79))
      {
        if (v80 == OS_LOG_TYPE_FAULT)
        {
          v47 = __nwlog_obj();
          v70 = v80;
          if (os_log_type_enabled(v47, v80))
          {
            v48 = *(*v73 + 16);
            if (!v48)
            {
              v48 = "invalid";
            }

            *buf = 136446722;
            v86 = "__nw_protocol_notify";
            v87 = 2082;
            v88 = v48;
            v89 = 2048;
            v90 = *v73;
            _os_log_impl(&dword_181A37000, v47, v70, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, 0x20u);
          }
        }

        else
        {
          if (v79 == 1)
          {
            v57 = __nw_create_backtrace_string();
            v71 = __nwlog_obj();
            v69 = v80;
            v58 = os_log_type_enabled(v71, v80);
            if (v57)
            {
              if (v58)
              {
                v59 = *(*v73 + 16);
                if (!v59)
                {
                  v59 = "invalid";
                }

                *buf = 136446978;
                v86 = "__nw_protocol_notify";
                v87 = 2082;
                v88 = v59;
                v89 = 2048;
                v90 = *v73;
                v91 = 2082;
                v92 = v57;
                _os_log_impl(&dword_181A37000, v71, v69, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v57);
            }

            else
            {
              if (v58)
              {
                v66 = *(*v73 + 16);
                if (!v66)
                {
                  v66 = "invalid";
                }

                *buf = 136446722;
                v86 = "__nw_protocol_notify";
                v87 = 2082;
                v88 = v66;
                v89 = 2048;
                v90 = *v73;
                _os_log_impl(&dword_181A37000, v71, v69, "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace", buf, 0x20u);
              }
            }

            goto LABEL_141;
          }

          v47 = __nwlog_obj();
          v72 = v80;
          if (os_log_type_enabled(v47, v80))
          {
            v63 = *(*v73 + 16);
            if (!v63)
            {
              v63 = "invalid";
            }

            *buf = 136446722;
            v86 = "__nw_protocol_notify";
            v87 = 2082;
            v88 = v63;
            v89 = 2048;
            v90 = *v73;
            _os_log_impl(&dword_181A37000, v47, v72, "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_141:
      if (v75)
      {
        free(v75);
      }

      goto LABEL_44;
    }

    v50 = __nwlog_obj();
    *buf = 136446210;
    v86 = "__nw_protocol_notify";
    v51 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null protocol", buf, 12);

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v81) = 0;
    if (__nwlog_fault(v51, type, &v81))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v52 = __nwlog_obj();
        v53 = type[0];
        if (os_log_type_enabled(v52, type[0]))
        {
          *buf = 136446210;
          v86 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v81 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v52 = __nwlog_obj();
        v74 = type[0];
        v62 = os_log_type_enabled(v52, type[0]);
        if (v61)
        {
          if (v62)
          {
            *buf = 136446466;
            v86 = "__nw_protocol_notify";
            v87 = 2082;
            v88 = v61;
            _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v61);
          goto LABEL_149;
        }

        if (v62)
        {
          *buf = 136446210;
          v86 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v52 = __nwlog_obj();
        v64 = type[0];
        if (os_log_type_enabled(v52, type[0]))
        {
          *buf = 136446210;
          v86 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v52, v64, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_149:
    if (v51)
    {
      free(v51);
    }

    goto LABEL_48;
  }

  node = nw_hash_table_get_node(v4[29], a2, 8);
  if (node)
  {
    v19 = *(node + 42);
    if ((v19 & 0x10) == 0)
    {
      v20 = v19 | 0x10;
      *(node + 42) = v19 | 0x10;
      if ((v19 & 4) != 0)
      {
        v30 = node[2];
        v31 = v4;
        if (nw_protocol_definition_get_message_is_stream(v4[1]) && *&v31[-1].log_str[41] == v30)
        {
          v32 = -2;
        }

        else
        {
          v32 = v30;
        }

        nw_protocol_implementation_report_connected(v31, (v4 - 12), v30, v32);
      }

      else
      {
        if ((*(v4 + 413) & 0x80000000) == 0 && gLogDatapath == 1)
        {
          v67 = node;
          v68 = __nwlog_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            v86 = "nw_protocol_instance_report_ready";
            v87 = 2082;
            v88 = v4 + 415;
            v89 = 2080;
            v90 = " ";
            v91 = 2048;
            v92 = a2;
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelaying the delivery of connected() on flow %llx", buf, 0x2Au);
          }

          node = v67;
          v20 = *(v67 + 42);
        }

        *(node + 42) = v20 | 0x20;
      }
    }
  }

  else if ((*(v4 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v86 = "nw_protocol_instance_report_ready";
      v87 = 2082;
      v88 = v4 + 415;
      v89 = 2080;
      v90 = " ";
      v91 = 2048;
      v92 = a2;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot report ready, flow %llx does not exist", buf, 0x2Au);
    }
  }

LABEL_54:
}

void nw_protocol_implementation_report_connected(NWConcrete_nw_protocol_instance *a1, nw_protocol *a2, nw_protocol *a3, unint64_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_protocol_implementation_report_connected";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null instance", buf, 12);

    v60[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v31, v60, &v58))
    {
      goto LABEL_116;
    }

    if (v60[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v43 = v60[0];
      v44 = os_log_type_enabled(v32, v60[0]);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          v63 = "nw_protocol_implementation_report_connected";
          v64 = 2082;
          v65 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_116:
        if (!v31)
        {
          goto LABEL_37;
        }

LABEL_117:
        free(v31);
        goto LABEL_37;
      }

      if (v44)
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v52 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v52, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_115:

    goto LABEL_116;
  }

  if (!a2)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_protocol_implementation_report_connected";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null protocol", buf, 12);

    v60[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v31, v60, &v58))
    {
      goto LABEL_116;
    }

    if (v60[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v35 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null protocol", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v58 != 1)
    {
      v32 = __nwlog_obj();
      v53 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v53, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_115;
    }

    v45 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v46 = v60[0];
    v47 = os_log_type_enabled(v32, v60[0]);
    if (!v45)
    {
      if (v47)
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v46, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v47)
    {
      *buf = 136446466;
      v63 = "nw_protocol_implementation_report_connected";
      v64 = 2082;
      v65 = v45;
      _os_log_impl(&dword_181A37000, v32, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_84;
  }

  if (!a3)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v63 = "nw_protocol_implementation_report_connected";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s called with null input_protocol", buf, 12);

    v60[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v31, v60, &v58))
    {
      goto LABEL_116;
    }

    if (v60[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v37 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v37, "%{public}s called with null input_protocol", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v58 != 1)
    {
      v32 = __nwlog_obj();
      v54 = v60[0];
      if (os_log_type_enabled(v32, v60[0]))
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v54, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_115;
    }

    v45 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v48 = v60[0];
    v49 = os_log_type_enabled(v32, v60[0]);
    if (!v45)
    {
      if (v49)
      {
        *buf = 136446210;
        v63 = "nw_protocol_implementation_report_connected";
        _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_115;
    }

    if (v49)
    {
      *buf = 136446466;
      v63 = "nw_protocol_implementation_report_connected";
      v64 = 2082;
      v65 = v45;
      _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_84:

    free(v45);
    if (!v31)
    {
      goto LABEL_37;
    }

    goto LABEL_117;
  }

  *&v7->level = a4;
  handle = a3->handle;
  v10 = a3;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v10) = 0;
      v11 = 1;
      goto LABEL_11;
    }

    v10 = *a3[1].flow_id;
    if (!v10)
    {
      v11 = 1;
      goto LABEL_11;
    }
  }

  callbacks = v10[1].callbacks;
  v11 = 0;
  if (callbacks)
  {
    v10[1].callbacks = (&callbacks->add_input_handler + 1);
  }

  LOBYTE(v10) = -1;
LABEL_11:
  *v60 = a3;
  v61 = v10;
  v13 = a2->handle;
  v14 = a2;
  if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *a2[1].flow_id) != 0)
  {
    v17 = v14[1].callbacks;
    v16 = 0;
    if (v17)
    {
      v14[1].callbacks = (&v17->add_input_handler + 1);
    }

    v15 = -1;
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  v58 = a2;
  v59 = v15;
  v18 = a3->callbacks;
  if (!v18 || (connected = v18->connected) == 0)
  {
    v24 = __nwlog_obj();
    identifier = a3->identifier;
    *buf = 136446722;
    v63 = "__nw_protocol_connected";
    if (!identifier)
    {
      identifier = "invalid";
    }

    v64 = 2082;
    v65 = identifier;
    v66 = 2048;
    v67 = a3;
    v26 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v26, &type, &v56))
    {
      goto LABEL_105;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        v29 = a3->identifier;
        if (!v29)
        {
          v29 = "invalid";
        }

        *buf = 136446722;
        v63 = "__nw_protocol_connected";
        v64 = 2082;
        v65 = v29;
        v66 = 2048;
        v67 = a3;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s protocol %{public}s (%p) has invalid connected callback", buf, 0x20u);
      }
    }

    else if (v56 == 1)
    {
      v38 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v27, type);
      if (v38)
      {
        if (v40)
        {
          v41 = a3->identifier;
          if (!v41)
          {
            v41 = "invalid";
          }

          *buf = 136446978;
          v63 = "__nw_protocol_connected";
          v64 = 2082;
          v65 = v41;
          v66 = 2048;
          v67 = a3;
          v68 = 2082;
          v69 = v38;
          _os_log_impl(&dword_181A37000, v27, v39, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v38);
        goto LABEL_105;
      }

      if (v40)
      {
        v55 = a3->identifier;
        if (!v55)
        {
          v55 = "invalid";
        }

        *buf = 136446722;
        v63 = "__nw_protocol_connected";
        v64 = 2082;
        v65 = v55;
        v66 = 2048;
        v67 = a3;
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v27, type))
      {
        v51 = a3->identifier;
        if (!v51)
        {
          v51 = "invalid";
        }

        *buf = 136446722;
        v63 = "__nw_protocol_connected";
        v64 = 2082;
        v65 = v51;
        v66 = 2048;
        v67 = a3;
        _os_log_impl(&dword_181A37000, v27, v50, "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded", buf, 0x20u);
      }
    }

LABEL_105:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_21;
  }

  connected(a3, a2);
LABEL_21:
  if ((v16 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v58);
  }

  if ((v11 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(v60);
  }

  *&v8->level = 0;
  if (a4 >= 0xFFFFFFFFFFFFFFFELL && (SBYTE5(v8->flow_in_connected) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136447234;
      v63 = "nw_protocol_implementation_report_connected";
      v64 = 2082;
      v65 = (&v8->flow_in_connected + 7);
      v66 = 2080;
      v67 = " ";
      v68 = 2048;
      v69 = a2;
      v70 = 2048;
      v71 = a4;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sReporting connected with protocol: %p, flow: %llx", buf, 0x34u);
    }
  }

  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    var13 = v8->parent_definition->extended_state->var13;
    if (var13)
    {
      var13(v8, a4);
    }
  }

  v22 = SBYTE3(v8->flow_in_connected);
  if (v22 < 0)
  {
    BYTE3(v8->flow_in_connected) = v22 & 0x7F;
    var14 = v8->parent_definition->extended_state->var14;
    if (var14)
    {
      var14(v8, 0);
    }
  }

  nw_protocol_implementation_finalize_pending_frames(v8);
LABEL_37:
}

void sub_181D13FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  if ((v15 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v14 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_implementation_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v5 = __nwlog_obj();
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null instance", buf, 12);

        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (__nwlog_fault(v6, &type, &v40))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_waiting_for_output";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v40 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v15 = type;
            v16 = os_log_type_enabled(v7, type);
            if (backtrace_string)
            {
              if (v16)
              {
                *buf = 136446466;
                v43 = "nw_protocol_implementation_waiting_for_output";
                v44 = 2082;
                v45 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

            if (v16)
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_waiting_for_output";
              _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v17 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              v43 = "nw_protocol_implementation_waiting_for_output";
              _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_31:
          v9 = 0;
          v13 = 0;
          goto LABEL_32;
        }

LABEL_30:
        free(v6);
        goto LABEL_31;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v3[1].handle;
    if (v10)
    {
      if (v10[10])
      {
        if (!a2 || (v11 = *&v3[5].flow_id[8]) == 0 || (node = nw_hash_table_get_node(v11, a2, 8)) == 0 || (*(node + 42) & 2) == 0)
        {
          v13 = (BYTE5(v3[7].output_handler_context) >> 2) & 1;
LABEL_32:

          return v13;
        }

LABEL_87:
        v13 = 0;
        goto LABEL_32;
      }

      v27 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_protocol_implementation_waiting_for_output";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null instance->parent_definition->extended_state", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v24, &type, &v40))
      {
LABEL_85:
        if (v24)
        {
          free(v24);
        }

        goto LABEL_87;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

LABEL_84:

        goto LABEL_85;
      }

      if (v40 != 1)
      {
        v25 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v39, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_84;
      }

      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v35 = type;
      v36 = os_log_type_enabled(v25, type);
      if (!v32)
      {
        if (v36)
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v36)
      {
        *buf = 136446466;
        v43 = "nw_protocol_implementation_waiting_for_output";
        v44 = 2082;
        v45 = v32;
        _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v23 = __nwlog_obj();
      *buf = 136446210;
      v43 = "nw_protocol_implementation_waiting_for_output";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null instance->parent_definition", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v24, &type, &v40))
      {
        goto LABEL_85;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v40 != 1)
      {
        v25 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_84;
      }

      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v25, type);
      if (!v32)
      {
        if (v34)
        {
          *buf = 136446210;
          v43 = "nw_protocol_implementation_waiting_for_output";
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v34)
      {
        *buf = 136446466;
        v43 = "nw_protocol_implementation_waiting_for_output";
        v44 = 2082;
        v45 = v32;
        _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v32);
    goto LABEL_85;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_protocol_implementation_waiting_for_output";
  v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null protocol", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v20, &type, &v40))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v21, type);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          v43 = "nw_protocol_implementation_waiting_for_output";
          v44 = 2082;
          v45 = v29;
          _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_76;
      }

      if (v31)
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        _os_log_impl(&dword_181A37000, v21, v30, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v43 = "nw_protocol_implementation_waiting_for_output";
        _os_log_impl(&dword_181A37000, v21, v37, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_76:
  if (v20)
  {
    free(v20);
  }

  return 0;
}

BOOL __nw_sec_protocol_options_iterate_application_protocols_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);
    if (v3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __nw_sec_protocol_options_iterate_application_protocols_block_invoke_2;
      v6[3] = &unk_1E6A3A7A0;
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      xpc_array_apply(v3, v6);
    }
  }

  return a2 != 0;
}

BOOL nw_socket_initialize_socket(nw_protocol *a1)
{
  v191 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        out[0] = 16;
        v185[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v7, out, v185))
        {
          goto LABEL_71;
        }

        if (out[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = out[0];
          if (!os_log_type_enabled(gLogObj, out[0]))
          {
            goto LABEL_71;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_initialize_socket";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v185[0] == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = out[0];
            v20 = os_log_type_enabled(gLogObj, out[0]);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_71;
            }

            if (!v20)
            {
LABEL_71:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_325;
            }

            *buf = 136446210;
            *&buf[4] = "nw_socket_initialize_socket";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v41 = v18;
            v42 = v19;
LABEL_70:
            _os_log_impl(&dword_181A37000, v41, v42, v10, buf, 0xCu);
            goto LABEL_71;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = out[0];
          if (!os_log_type_enabled(gLogObj, out[0]))
          {
            goto LABEL_71;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_initialize_socket";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v41 = v8;
        v42 = v9;
        goto LABEL_70;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    v182 = v4;
    if (!v11)
    {
      goto LABEL_45;
    }

    connect = v11->connect;
    if (!connect)
    {
      goto LABEL_45;
    }

    v13 = connect[15];
    if (!v13)
    {
      goto LABEL_45;
    }

    connected = v11->connected;
    input_available = v6[2].callbacks;
    if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (input_available = v11->input_available) != 0)
    {
      get_output_frames = input_available->get_output_frames;
      if (get_output_frames)
      {
        input_available->get_output_frames = get_output_frames + 1;
      }

      v16 = v13(v11);
      v22 = v11->connected;
      p_add_input_handler = &v11->add_input_handler;
      if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (p_add_input_handler = v11->input_available) != 0)
      {
        v24 = p_add_input_handler[11];
        if (v24)
        {
          v25 = v24 - 1;
          p_add_input_handler[11] = v25;
          if (!v25)
          {
            v26 = v16;
            v27 = p_add_input_handler[8];
            if (v27)
            {
              p_add_input_handler[8] = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (p_add_input_handler[9])
            {
              v28 = p_add_input_handler[8];
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(p_add_input_handler);
            v16 = v26;
          }
        }
      }
    }

    else
    {
      v16 = v13(v11);
    }

    if (v16)
    {
      v29 = v16;
      v30 = _nw_path_allows_multipath(v29);
    }

    else
    {
LABEL_45:
      v30 = 0;
    }

    output_handler = v6[4].output_handler;
    if (output_handler == 1)
    {
      if (v30)
      {
        if ((*(&v6[6].callbacks + 5) & 0x80) != 0)
        {
          v30 = 0;
          v33 = 2;
          if (!v11)
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v34 = gconnectionLogObj;
          v33 = 2;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 2082;
            *&buf[14] = v6 + 420;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Multipath not supported for datagram connections", buf, 0x16u);
          }

          v30 = 0;
          if (!v11)
          {
LABEL_121:
            address_family = 0;
            callbacks_high = HIDWORD(v6[4].callbacks);
            if (callbacks_high < 0)
            {
              goto LABEL_122;
            }

            goto LABEL_242;
          }
        }
      }

      else
      {
        v33 = 2;
        if (!v11)
        {
          goto LABEL_121;
        }
      }
    }

    else
    {
      if (output_handler != 2)
      {
        if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_326;
          }

          v37 = v6[4].output_handler;
          *buf = 136446722;
          *&buf[4] = "nw_socket_initialize_socket";
          *&buf[12] = 2082;
          *&buf[14] = v6 + 420;
          *&buf[22] = 1024;
          *&buf[24] = v37;
          v38 = "%{public}s %{public}s Data mode %d unrecognized";
          v39 = v35;
          v40 = 28;
LABEL_251:
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
        }

LABEL_325:
        result = 0;
LABEL_326:
        if ((v4 & 1) == 0)
        {
          v166 = v1->handle;
          if (v166 == &nw_protocol_ref_counted_handle || v166 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
          {
            v167 = v1[1].callbacks;
            if (v167)
            {
              v168 = (v167 - 1);
              v1[1].callbacks = v168;
              if (!v168)
              {
                v169 = result;
                v170 = *v1[1].flow_id;
                if (v170)
                {
                  *v1[1].flow_id = 0;
                  v170[2](v170);
                  _Block_release(v170);
                }

                if (v1[1].flow_id[8])
                {
                  v171 = *v1[1].flow_id;
                  if (v171)
                  {
                    _Block_release(v171);
                  }
                }

                free(v1);
                return v169;
              }
            }
          }
        }

        return result;
      }

      if (!v6[2].handle)
      {
        memset(out, 0, sizeof(out));
        uuid_generate_random(out);
        metadata = _nw_tcp_create_metadata(out);
        v6[2].handle = metadata;
        *buf = nw_protocol_socket_get_receive_buffer_size;
        *&buf[8] = nw_protocol_socket_get_send_buffer_size;
        *&buf[16] = nw_protocol_socket_reset_keepalives;
        *&buf[24] = nw_protocol_socket_set_no_delay;
        *&buf[32] = nw_protocol_socket_set_no_push;
        v187 = nw_protocol_socket_set_no_wake_from_sleep;
        v188 = nw_protocol_socket_set_max_pacing_rate;
        nw_tcp_set_callbacks(metadata, &v6[1].output_handler, buf);
      }

      v33 = 1;
      if (!v11)
      {
        goto LABEL_121;
      }
    }

    v43 = v11->connect;
    if (!v43)
    {
      goto LABEL_121;
    }

    v44 = v43[16];
    if (v44)
    {
      v45 = v11->connected;
      v46 = &v11->add_input_handler;
      if (v45 == &nw_protocol_ref_counted_handle || v45 == &nw_protocol_ref_counted_additional_handle && (v46 = v11->input_available) != 0)
      {
        v48 = v46[11];
        if (v48)
        {
          v46[11] = v48 + 1;
        }

        v47 = v44(v11);
        v49 = v11->connected;
        v50 = &v11->add_input_handler;
        if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v50 = v11->input_available) != 0)
        {
          v51 = v50[11];
          if (v51)
          {
            v52 = v51 - 1;
            v50[11] = v52;
            if (!v52)
            {
              v53 = v50[8];
              if (v53)
              {
                v50[8] = 0;
                v53[2](v53);
                _Block_release(v53);
              }

              if (v50[9])
              {
                v54 = v50[8];
                if (v54)
                {
                  _Block_release(v54);
                }
              }

              free(v50);
            }
          }
        }
      }

      else
      {
        v47 = v44(v11);
      }

      v55 = v11->connect;
      if (!v55)
      {
        goto LABEL_239;
      }

      v56 = v55[17];
      if (!v56)
      {
        goto LABEL_239;
      }
    }

    else
    {
      v47 = 0;
      v56 = v43[17];
      if (!v56)
      {
        goto LABEL_239;
      }
    }

    v57 = v11->connected;
    v58 = &v11->add_input_handler;
    if (v57 == &nw_protocol_ref_counted_handle || v57 == &nw_protocol_ref_counted_additional_handle && (v58 = v11->input_available) != 0)
    {
      v60 = v58[11];
      if (v60)
      {
        v58[11] = v60 + 1;
      }

      v59 = v56(v11);
      v61 = v11->connected;
      v62 = &v11->add_input_handler;
      if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v62 = v11->input_available) != 0)
      {
        v63 = v62[11];
        if (v63)
        {
          v64 = v63 - 1;
          v62[11] = v64;
          if (!v64)
          {
            v65 = v59;
            v66 = v62[8];
            if (v66)
            {
              v62[8] = 0;
              v66[2](v66);
              _Block_release(v66);
            }

            if (v62[9])
            {
              v67 = v62[8];
              if (v67)
              {
                _Block_release(v67);
              }
            }

            free(v62);
            v59 = v65;
          }
        }
      }
    }

    else
    {
      v59 = v56(v11);
    }

    if (v59)
    {
      v68 = v59;
      address_family = _nw_endpoint_get_address_family(v68);

      if (!v47)
      {
LABEL_241:
        v4 = v182;
        callbacks_high = HIDWORD(v6[4].callbacks);
        if (callbacks_high < 0)
        {
LABEL_122:
          LOBYTE(v6[6].output_handler) = address_family;
          if (v30)
          {
            v76 = socket(39, v33, 0);
            HIDWORD(v6[4].callbacks) = v76;
            if ((v76 & 0x80000000) == 0)
            {
              HIBYTE(v6[6].callbacks) |= 2u;
              v4 = v182;
LABEL_132:
              v78 = nw_fd_wrapper_create(v76);
              output_handler_context = v6[2].output_handler_context;
              if ((output_handler_context & 1) != 0 && v6[2].default_input_handler)
              {
                v80 = v78;
                os_release(v6[2].default_input_handler);
                v78 = v80;
                output_handler_context = v6[2].output_handler_context;
              }

              v6[2].default_input_handler = v78;
              LOBYTE(v6[2].output_handler_context) = output_handler_context | 1;
              if ((nw_socket_set_common_sockopts(v1) & 1) == 0)
              {
                v87 = v6[2].output_handler_context;
                if (v87)
                {
                  default_input_handler = v6[2].default_input_handler;
                  if (default_input_handler)
                  {
                    os_release(default_input_handler);
                    v87 = v6[2].output_handler_context;
                  }
                }

                result = 0;
                v6[2].default_input_handler = 0;
                LOBYTE(v6[2].output_handler_context) = v87 | 1;
                HIDWORD(v6[4].callbacks) = -1;
                goto LABEL_326;
              }

              v81 = &v6[6].callbacks + 5;
              if ((*(&v6[6].callbacks + 5) & 0x100) == 0)
              {
                goto LABEL_197;
              }

              memset(v185, 0, sizeof(v185));
              nw_protocol_get_flow_id(v6, v185);
              v190 = -106;
              *out = *v185;
              if ((*v81 & 0x80) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v82 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 2082;
                  *&buf[14] = v6 + 420;
                  *&buf[22] = 1042;
                  *&buf[24] = 16;
                  *&buf[28] = 2098;
                  *&buf[30] = v185;
                  _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_INFO, "%{public}s %{public}s Setting UUID %{public,uuid_t}.16P for multilayer packet logging", buf, 0x26u);
                }
              }

              if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4386, out, 0x11u))
              {
                if (!v11)
                {
                  goto LABEL_365;
                }

                v108 = v11->connect;
                if (!v108)
                {
                  goto LABEL_365;
                }

                v109 = v108[14];
                if (!v109)
                {
                  goto LABEL_365;
                }

LABEL_197:
                v110 = v11->connected;
                v111 = &v11->add_input_handler;
                if (v110 == &nw_protocol_ref_counted_handle || v110 == &nw_protocol_ref_counted_additional_handle && (v111 = v11->input_available) != 0)
                {
                  v113 = v111[11];
                  if (v113)
                  {
                    v111[11] = v113 + 1;
                  }

                  v112 = v109(v11);
                  v114 = v11->connected;
                  if (v114 == &nw_protocol_ref_counted_handle || v114 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
                  {
                    v115 = v11->get_output_frames;
                    if (v115)
                    {
                      v116 = v115 - 1;
                      v11->get_output_frames = v116;
                      if (!v116)
                      {
                        v117 = v112;
                        v118 = v11->input_available;
                        if (v118)
                        {
                          v11->input_available = 0;
                          v118[2](v118);
                          _Block_release(v118);
                        }

                        if (v11->output_available)
                        {
                          v119 = v11->input_available;
                          if (v119)
                          {
                            _Block_release(v119);
                          }
                        }

                        free(v11);
                        v112 = v117;
                      }
                    }
                  }
                }

                else
                {
                  v112 = v109(v11);
                }

                if (v112 && (_nw_parameters_get_allow_socket_access(v112) & 1) == 0)
                {
                  if ((nw_fd_wrapper_guard(v6[2].default_input_handler) & 1) != 0 || (*v81 & 0x80) != 0)
                  {
                    goto LABEL_316;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v125 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_316;
                  }

                  v126 = HIDWORD(v6[4].callbacks);
                  *buf = 136446722;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v6 + 420;
                  *&buf[22] = 1024;
                  *&buf[24] = v126;
                  v122 = "%{public}s %{public}s Failed to guard socket fd %d";
                  v123 = v125;
                  v124 = OS_LOG_TYPE_ERROR;
                }

                else
                {
LABEL_365:
                  if ((*v81 & 0x80) != 0)
                  {
                    goto LABEL_316;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v120 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_316;
                  }

                  v121 = HIDWORD(v6[4].callbacks);
                  *buf = 136446722;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v6 + 420;
                  *&buf[22] = 1024;
                  *&buf[24] = v121;
                  v122 = "%{public}s %{public}s Not guarding fd %d";
                  v123 = v120;
                  v124 = OS_LOG_TYPE_DEFAULT;
                }

                _os_log_impl(&dword_181A37000, v123, v124, v122, buf, 0x1Cu);
LABEL_316:
                result = 1;
                goto LABEL_326;
              }

              v83 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v84 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_set_mpkl_uuid";
                *&buf[12] = 2082;
                *&buf[14] = v6 + 420;
                *&buf[22] = 1024;
                *&buf[24] = v83;
                _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d", buf, 0x1Cu);
              }

              v85 = __nwlog_obj();
              v86 = v85;
              if (v83 == 22)
              {
                v4 = v182;
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = 22;
                  _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d", buf, 0x12u);
                }

                goto LABEL_197;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_set_mpkl_uuid";
              *&buf[12] = 1024;
              *&buf[14] = v83;
              v100 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v85, 16, "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d", buf, 18);
              type = OS_LOG_TYPE_ERROR;
              v183 = 0;
              if (__nwlog_fault(v100, &type, &v183))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v101 = __nwlog_obj();
                  v102 = type;
                  if (!os_log_type_enabled(v101, type))
                  {
                    goto LABEL_195;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = v83;
                  v103 = "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d";
LABEL_193:
                  v107 = v101;
LABEL_194:
                  _os_log_impl(&dword_181A37000, v107, v102, v103, buf, 0x12u);
                  goto LABEL_195;
                }

                if (v183 != 1)
                {
                  v101 = __nwlog_obj();
                  v102 = type;
                  if (!os_log_type_enabled(v101, type))
                  {
                    goto LABEL_195;
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = v83;
                  v103 = "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_193;
                }

                v104 = __nw_create_backtrace_string();
                v105 = __nwlog_obj();
                v102 = type;
                loga = v105;
                v106 = os_log_type_enabled(v105, type);
                if (v104)
                {
                  if (v106)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_socket_set_mpkl_uuid";
                    *&buf[12] = 1024;
                    *&buf[14] = v83;
                    *&buf[18] = 2082;
                    *&buf[20] = v104;
                    _os_log_impl(&dword_181A37000, loga, v102, "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v104);
                  goto LABEL_195;
                }

                if (v106)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_set_mpkl_uuid";
                  *&buf[12] = 1024;
                  *&buf[14] = v83;
                  v103 = "%{public}s setsockopt SCM_MPKL_SEND_INFO failed %{darwin.errno}d, no backtrace";
                  v107 = loga;
                  goto LABEL_194;
                }
              }

LABEL_195:
              v4 = v182;
              if (v100)
              {
                free(v100);
              }

              goto LABEL_197;
            }

            if (**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) != 43)
            {
LABEL_154:
              v89 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v90 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 2082;
                *buf = 136447234;
                if (v30)
                {
                  v91 = 39;
                }

                else
                {
                  v91 = address_family;
                }

                *&buf[14] = v6 + 420;
                *&buf[22] = 1024;
                *&buf[24] = v91;
                *&buf[28] = 1024;
                *&buf[30] = v33;
                *&buf[34] = 1024;
                *&buf[36] = v89;
                _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to create socket(%d,%d) %{darwin.errno}d", buf, 0x28u);
              }

              else if (v30)
              {
                v91 = 39;
              }

              else
              {
                v91 = address_family;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446978;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v91;
              *&buf[18] = 1024;
              *&buf[20] = v33;
              *&buf[24] = 1024;
              *&buf[26] = v89;
              v92 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d", buf, 30);
              out[0] = 16;
              v185[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v92, out, v185))
              {
                goto LABEL_177;
              }

              if (out[0] == 17)
              {
                v93 = __nwlog_obj();
                v94 = out[0];
                if (os_log_type_enabled(v93, out[0]))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v91;
                  *&buf[18] = 1024;
                  *&buf[20] = v33;
                  *&buf[24] = 1024;
                  *&buf[26] = v89;
                  v95 = "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d";
LABEL_175:
                  v99 = v93;
LABEL_176:
                  _os_log_impl(&dword_181A37000, v99, v94, v95, buf, 0x1Eu);
                }
              }

              else if (v185[0] == OS_LOG_TYPE_INFO)
              {
                v96 = __nw_create_backtrace_string();
                v97 = __nwlog_obj();
                v94 = out[0];
                log = v97;
                v98 = os_log_type_enabled(v97, out[0]);
                if (v96)
                {
                  if (v98)
                  {
                    *buf = 136447234;
                    *&buf[4] = "nw_socket_initialize_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v91;
                    *&buf[18] = 1024;
                    *&buf[20] = v33;
                    *&buf[24] = 1024;
                    *&buf[26] = v89;
                    *&buf[30] = 2082;
                    *&buf[32] = v96;
                    _os_log_impl(&dword_181A37000, log, v94, "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x28u);
                  }

                  free(v96);
                  goto LABEL_177;
                }

                if (v98)
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v91;
                  *&buf[18] = 1024;
                  *&buf[20] = v33;
                  *&buf[24] = 1024;
                  *&buf[26] = v89;
                  v95 = "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d, no backtrace";
                  v99 = log;
                  goto LABEL_176;
                }
              }

              else
              {
                v93 = __nwlog_obj();
                v94 = out[0];
                if (os_log_type_enabled(v93, out[0]))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_initialize_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v91;
                  *&buf[18] = 1024;
                  *&buf[20] = v33;
                  *&buf[24] = 1024;
                  *&buf[26] = v89;
                  v95 = "%{public}s Failed to create socket(%d,%d) %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_175;
                }
              }

LABEL_177:
              if (v92)
              {
                free(v92);
              }

              nw_socket_internal_error(&v6[1].output_handler);
              result = 0;
              v4 = v182;
              goto LABEL_326;
            }

            if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v77 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 2082;
                *&buf[14] = v6 + 420;
                _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s The kernel does not support MPTCP, using regular TCP", buf, 0x16u);
              }
            }
          }

          v76 = socket(address_family, v33, 0);
          HIDWORD(v6[4].callbacks) = v76;
          v4 = v182;
          if ((v76 & 0x80000000) == 0)
          {
            goto LABEL_132;
          }

          goto LABEL_154;
        }

LABEL_242:
        *out = 1;
        if (!setsockopt(callbacks_high, 0xFFFF, 4130, out, 4u))
        {
          goto LABEL_268;
        }

        v131 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v132 = gLogObj;
        if (v131 == 22)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = 22;
            _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 0x12u);
          }

          goto LABEL_268;
        }

        *buf = 136446466;
        *&buf[4] = "nw_socket_initialize_socket";
        *&buf[12] = 1024;
        *&buf[14] = v131;
        v135 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 18);
        v185[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v135, v185, &type))
        {
          if (v185[0] == OS_LOG_TYPE_FAULT)
          {
            v136 = __nwlog_obj();
            v137 = v185[0];
            if (!os_log_type_enabled(v136, v185[0]))
            {
              goto LABEL_266;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = v131;
            v138 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d";
            goto LABEL_265;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v136 = __nwlog_obj();
            v137 = v185[0];
            if (!os_log_type_enabled(v136, v185[0]))
            {
              goto LABEL_266;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = v131;
            v138 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_265;
          }

          v139 = __nw_create_backtrace_string();
          v136 = __nwlog_obj();
          v137 = v185[0];
          v140 = os_log_type_enabled(v136, v185[0]);
          if (v139)
          {
            if (v140)
            {
              *buf = 136446722;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v131;
              *&buf[18] = 2082;
              *&buf[20] = v139;
              _os_log_impl(&dword_181A37000, v136, v137, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v139);
            v4 = v182;
            goto LABEL_266;
          }

          v4 = v182;
          if (v140)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 1024;
            *&buf[14] = v131;
            v138 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, no backtrace";
LABEL_265:
            _os_log_impl(&dword_181A37000, v136, v137, v138, buf, 0x12u);
          }
        }

LABEL_266:
        if (v135)
        {
          free(v135);
        }

LABEL_268:
        if ((ioctl(HIDWORD(v6[4].callbacks), 0x8004667EuLL, out) & 0x80000000) == 0)
        {
          if (uuid_is_null(v1->flow_id) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4369, v1, 0x10u) || (v151 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8), LOBYTE(v6[6].output_handler) == 1) && v151 == 22)
          {
LABEL_270:
            if (v11)
            {
              v141 = v11->connect;
              if (v141)
              {
                v142 = v141[14];
                if (v142)
                {
                  v143 = v11->connected;
                  v144 = &v11->add_input_handler;
                  if (v143 == &nw_protocol_ref_counted_handle || v143 == &nw_protocol_ref_counted_additional_handle && (v144 = v11->input_available) != 0)
                  {
                    v156 = v144[11];
                    if (v156)
                    {
                      v144[11] = v156 + 1;
                    }

                    v145 = v142(v11);
                    v157 = v11->connected;
                    if (v157 == &nw_protocol_ref_counted_handle || v157 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
                    {
                      v158 = v11->get_output_frames;
                      if (v158)
                      {
                        v159 = v158 - 1;
                        v11->get_output_frames = v159;
                        if (!v159)
                        {
                          v160 = v145;
                          v161 = v11->input_available;
                          if (v161)
                          {
                            v11->input_available = 0;
                            v161[2](v161);
                            _Block_release(v161);
                          }

                          if (v11->output_available)
                          {
                            v162 = v11->input_available;
                            if (v162)
                            {
                              _Block_release(v162);
                            }
                          }

                          free(v11);
                          v145 = v160;
                        }
                      }
                    }
                  }

                  else
                  {
                    v145 = v142(v11);
                  }

                  if (v145)
                  {
                    v163 = _nw_parameters_copy_default_protocol_stack();
                    if (v163)
                    {
                      v164 = v163;
                      v165 = _nw_protocol_stack_copy_transport_protocol();
                      os_release(v164);
                      if (v165)
                      {
                        if (_nw_protocol_options_is_tcp())
                        {
                          nw_socket_set_bidirectional_tcp_sockopts(&v6[1].output_handler, v165);
                        }

                        os_release(v165);
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_316;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v152 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_socket_initialize_socket";
            *&buf[12] = 2082;
            *&buf[14] = v6 + 420;
            *&buf[22] = 1024;
            *&buf[24] = v151;
            _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, 0x1Cu);
          }

          if (v151 == 2 || v151 == 22)
          {
            v153 = __nwlog_obj();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v151;
              _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_270;
          }

          v172 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_socket_initialize_socket";
          *&buf[12] = 1024;
          *&buf[14] = v151;
          LODWORD(v179) = 18;
          v173 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, v179);
          v185[0] = OS_LOG_TYPE_ERROR;
          type = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v173, v185, &type))
          {
            if (v185[0] == OS_LOG_TYPE_FAULT)
            {
              v174 = __nwlog_obj();
              v175 = v185[0];
              if (!os_log_type_enabled(v174, v185[0]))
              {
                goto LABEL_353;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v151;
              v176 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d";
              goto LABEL_352;
            }

            if (type != OS_LOG_TYPE_INFO)
            {
              v174 = __nwlog_obj();
              v175 = v185[0];
              if (!os_log_type_enabled(v174, v185[0]))
              {
                goto LABEL_353;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v151;
              v176 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_352;
            }

            v177 = __nw_create_backtrace_string();
            v174 = __nwlog_obj();
            v175 = v185[0];
            v178 = os_log_type_enabled(v174, v185[0]);
            if (v177)
            {
              if (v178)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 1024;
                *&buf[14] = v151;
                *&buf[18] = 2082;
                *&buf[20] = v177;
                _os_log_impl(&dword_181A37000, v174, v175, "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v177);
              v4 = v182;
              goto LABEL_353;
            }

            v4 = v182;
            if (v178)
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v151;
              v176 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, no backtrace";
LABEL_352:
              _os_log_impl(&dword_181A37000, v174, v175, v176, buf, 0x12u);
            }
          }

LABEL_353:
          if (v173)
          {
            free(v173);
          }

          goto LABEL_270;
        }

        v146 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_socket_initialize_socket";
        *&buf[12] = 1024;
        *&buf[14] = v146;
        LODWORD(v179) = 18;
        v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s FIONBIO failed %{darwin.errno}d", buf, v179);
        v185[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v147, v185, &type))
        {
          if (v185[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v148 = gLogObj;
            v149 = v185[0];
            if (os_log_type_enabled(gLogObj, v185[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v146;
              v150 = "%{public}s FIONBIO failed %{darwin.errno}d";
LABEL_321:
              _os_log_impl(&dword_181A37000, v148, v149, v150, buf, 0x12u);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            v154 = __nw_create_backtrace_string();
            v148 = __nwlog_obj();
            v149 = v185[0];
            v155 = os_log_type_enabled(v148, v185[0]);
            if (v154)
            {
              if (v155)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_initialize_socket";
                *&buf[12] = 1024;
                *&buf[14] = v146;
                *&buf[18] = 2082;
                *&buf[20] = v154;
                _os_log_impl(&dword_181A37000, v148, v149, "%{public}s FIONBIO failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v154);
              v4 = v182;
              goto LABEL_322;
            }

            v4 = v182;
            if (v155)
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v146;
              v150 = "%{public}s FIONBIO failed %{darwin.errno}d, no backtrace";
              goto LABEL_321;
            }
          }

          else
          {
            v148 = __nwlog_obj();
            v149 = v185[0];
            if (os_log_type_enabled(v148, v185[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_initialize_socket";
              *&buf[12] = 1024;
              *&buf[14] = v146;
              v150 = "%{public}s FIONBIO failed %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_321;
            }
          }
        }

LABEL_322:
        if (v147)
        {
          free(v147);
        }

        nw_socket_internal_error(&v6[1].output_handler);
        goto LABEL_325;
      }

LABEL_240:
      v129 = v47;
      v130 = _nw_endpoint_get_address_family(v129);

      if (address_family == v130)
      {
        goto LABEL_241;
      }

      v4 = v182;
      if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v133 = gconnectionLogObj;
        result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_326;
        }

        v134 = nw_endpoint_get_address_family(v129);
        *buf = 136446978;
        *&buf[4] = "nw_socket_initialize_socket";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 420;
        *&buf[22] = 1024;
        *&buf[24] = v134;
        *&buf[28] = 1024;
        *&buf[30] = address_family;
        v38 = "%{public}s %{public}s Local endpoint family %d does not match remote endpoint %d";
        v39 = v133;
        v40 = 34;
        goto LABEL_251;
      }

      goto LABEL_325;
    }

LABEL_239:
    address_family = 0;
    if (!v47)
    {
      goto LABEL_241;
    }

    goto LABEL_240;
  }

  v70 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_initialize_socket";
  v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null protocol", buf, 12);
  out[0] = 16;
  v185[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v71, out, v185))
  {
    if (out[0] == 17)
    {
      v72 = __nwlog_obj();
      v73 = out[0];
      if (os_log_type_enabled(v72, out[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v74 = "%{public}s called with null protocol";
LABEL_359:
        _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
      }
    }

    else if (v185[0] == OS_LOG_TYPE_INFO)
    {
      v127 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = out[0];
      v128 = os_log_type_enabled(v72, out[0]);
      if (v127)
      {
        if (v128)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_initialize_socket";
          *&buf[12] = 2082;
          *&buf[14] = v127;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v127);
        goto LABEL_360;
      }

      if (v128)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v74 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_359;
      }
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = out[0];
      if (os_log_type_enabled(v72, out[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_initialize_socket";
        v74 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_359;
      }
    }
  }

LABEL_360:
  if (v71)
  {
    free(v71);
  }

  return 0;
}

uint64_t nw_socket_set_common_sockopts(nw_protocol *a1)
{
  v524 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler", buf, 12);
        uu[0] = 16;
        LOBYTE(v521[0]) = 0;
        if (!__nwlog_fault(v7, uu, v521))
        {
          goto LABEL_130;
        }

        if (uu[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = uu[0];
          if (!os_log_type_enabled(gLogObj, uu[0]))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v518 = "nw_socket_set_common_sockopts";
          v10 = "%{public}s called with null socket_handler";
LABEL_128:
          v54 = v8;
          v55 = v9;
          goto LABEL_129;
        }

        if (LOBYTE(v521[0]) != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = uu[0];
          if (!os_log_type_enabled(gLogObj, uu[0]))
          {
            goto LABEL_130;
          }

          *buf = 136446210;
          v518 = "nw_socket_set_common_sockopts";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
          goto LABEL_128;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = uu[0];
        v20 = os_log_type_enabled(gLogObj, uu[0]);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 2082;
            *v520 = backtrace_string;
            v21 = "%{public}s called with null socket_handler, dumping backtrace:%{public}s";
LABEL_68:
            _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x16u);
            goto LABEL_69;
          }

          goto LABEL_69;
        }

        if (!v20)
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null socket_handler, no backtrace";
        goto LABEL_123;
      }

      v6 = *a1[1].flow_id;
    }

    if ((HIDWORD(v6[4].callbacks) & 0x80000000) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v518 = "nw_socket_set_common_sockopts";
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null socket_handler->fd", buf, 12);
      uu[0] = 16;
      LOBYTE(v521[0]) = 0;
      if (!__nwlog_fault(v7, uu, v521))
      {
        goto LABEL_130;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null socket_handler->fd";
        goto LABEL_128;
      }

      if (LOBYTE(v521[0]) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null socket_handler->fd, backtrace limit exceeded";
        goto LABEL_128;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = uu[0];
      v22 = os_log_type_enabled(gLogObj, uu[0]);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 2082;
          *v520 = backtrace_string;
          v21 = "%{public}s called with null socket_handler->fd, dumping backtrace:%{public}s";
          goto LABEL_68;
        }

LABEL_69:
        free(backtrace_string);
        goto LABEL_130;
      }

      if (!v22)
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v518 = "nw_socket_set_common_sockopts";
      v10 = "%{public}s called with null socket_handler->fd, no backtrace";
LABEL_123:
      v54 = v18;
      v55 = v19;
LABEL_129:
      _os_log_impl(&dword_181A37000, v54, v55, v10, buf, 0xCu);
      goto LABEL_130;
    }

    v11 = v6[2].callbacks;
    if (!v11)
    {
      goto LABEL_60;
    }

    connect = v11->connect;
    if (!connect)
    {
      goto LABEL_60;
    }

    v13 = connect[17];
    if (!v13)
    {
      goto LABEL_60;
    }

    connected = v11->connected;
    v15 = v6[2].callbacks;
    if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
    {
      get_output_frames = v15->get_output_frames;
      if (get_output_frames)
      {
        v15->get_output_frames = get_output_frames + 1;
      }

      v16 = v13(v11);
      v24 = v11->connected;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
      {
        v25 = v11->get_output_frames;
        if (v25)
        {
          v26 = v25 - 1;
          v11->get_output_frames = v26;
          if (!v26)
          {
            input_available = v11->input_available;
            if (input_available)
            {
              v11->input_available = 0;
              input_available[2](input_available);
              _Block_release(input_available);
            }

            if (v11->output_available)
            {
              v28 = v11->input_available;
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v11);
          }
        }
      }
    }

    else
    {
      v16 = v13(v6[2].callbacks);
    }

    if (!v16)
    {
LABEL_60:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v518 = "nw_socket_set_common_sockopts";
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null remote_endpoint", buf, 12);
      uu[0] = 16;
      LOBYTE(v521[0]) = 0;
      if (!__nwlog_fault(v7, uu, v521))
      {
        goto LABEL_130;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null remote_endpoint";
        goto LABEL_128;
      }

      if (LOBYTE(v521[0]) != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null remote_endpoint, backtrace limit exceeded";
        goto LABEL_128;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = uu[0];
      v35 = os_log_type_enabled(gLogObj, uu[0]);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 2082;
          *v520 = backtrace_string;
          v21 = "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s";
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (!v35)
      {
        goto LABEL_130;
      }

      *buf = 136446210;
      v518 = "nw_socket_set_common_sockopts";
      v10 = "%{public}s called with null remote_endpoint, no backtrace";
      goto LABEL_123;
    }

    v29 = v6[2].callbacks;
    if (!v29)
    {
      goto LABEL_95;
    }

    v30 = v29->connect;
    if (!v30)
    {
      goto LABEL_95;
    }

    v31 = v30[14];
    if (!v31)
    {
      goto LABEL_95;
    }

    v32 = v29->connected;
    v33 = v6[2].callbacks;
    if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = v29->input_available) != 0)
    {
      v36 = v33->get_output_frames;
      if (v36)
      {
        v33->get_output_frames = v36 + 1;
      }

      v34 = v31(v29);
      v37 = v29->connected;
      if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v29 = v29->input_available) != 0)
      {
        v38 = v29->get_output_frames;
        if (v38)
        {
          v39 = v38 - 1;
          v29->get_output_frames = v39;
          if (!v39)
          {
            v40 = v29->input_available;
            if (v40)
            {
              v29->input_available = 0;
              v40[2](v40);
              _Block_release(v40);
            }

            if (v29->output_available)
            {
              v41 = v29->input_available;
              if (v41)
              {
                _Block_release(v41);
              }
            }

            free(v29);
          }
        }
      }
    }

    else
    {
      v34 = v31(v6[2].callbacks);
    }

    if (!v34)
    {
LABEL_95:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v518 = "nw_socket_set_common_sockopts";
      v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null parameters", buf, 12);
      uu[0] = 16;
      LOBYTE(v521[0]) = 0;
      if (!__nwlog_fault(v7, uu, v521))
      {
        goto LABEL_130;
      }

      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = uu[0];
        if (!os_log_type_enabled(gLogObj, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null parameters";
      }

      else if (LOBYTE(v521[0]) == 1)
      {
        v50 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = uu[0];
        v51 = os_log_type_enabled(v8, uu[0]);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 2082;
            *v520 = v50;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          goto LABEL_130;
        }

        if (!v51)
        {
LABEL_130:
          if (v7)
          {
            free(v7);
          }

LABEL_373:
          result = 0;
          if (v4)
          {
            return result;
          }

LABEL_374:
          v156 = v1->handle;
          if (v156 == &nw_protocol_ref_counted_handle || v156 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
          {
            v157 = v1[1].callbacks;
            if (v157)
            {
              v158 = (v157 - 1);
              v1[1].callbacks = v158;
              if (!v158)
              {
                v159 = result;
                v160 = *v1[1].flow_id;
                if (v160)
                {
                  *v1[1].flow_id = 0;
                  v160[2](v160);
                  _Block_release(v160);
                }

                if (v1[1].flow_id[8])
                {
                  v161 = *v1[1].flow_id;
                  if (v161)
                  {
                    _Block_release(v161);
                  }
                }

                free(v1);
                return v159;
              }
            }
          }

          return result;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null parameters, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = uu[0];
        if (!os_log_type_enabled(v8, uu[0]))
        {
          goto LABEL_130;
        }

        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
      }

      goto LABEL_128;
    }

    path = nw_socket_get_path(v1);
    v515 = 0;
    v516 = 1;
    output_handler_low = LOBYTE(v6[6].output_handler);
    v508 = v6;
    if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4130, &v516, 4u))
    {
LABEL_138:
      if (ioctl(HIDWORD(v6[4].callbacks), 0x8004667EuLL, &v516) < 0)
      {
        v61 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v62 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 2082;
          *v520 = v6 + 420;
          *&v520[8] = 1024;
          *&v520[10] = v61;
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s FIONBIO failed %{darwin.errno}d", buf, 0x1Cu);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v63 = gLogObj;
        if (v61 == 22)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = 22;
            v64 = "%{public}s FIONBIO failed %{darwin.errno}d";
LABEL_335:
            _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, v64, buf, 0x12u);
          }

LABEL_371:
          p_output_handler = &v6[1].output_handler;
          goto LABEL_372;
        }

        v67 = v4;
        *buf = 136446466;
        v518 = "nw_socket_set_common_sockopts";
        v519 = 1024;
        *v520 = v61;
        LODWORD(v493) = 18;
        v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s FIONBIO failed %{darwin.errno}d", buf, v493);
        uu[0] = 16;
        LOBYTE(v521[0]) = 0;
        if (!__nwlog_fault(v68, uu, v521))
        {
          goto LABEL_369;
        }

        if (uu[0] == 17)
        {
          v69 = __nwlog_obj();
          v70 = uu[0];
          if (!os_log_type_enabled(v69, uu[0]))
          {
            goto LABEL_369;
          }

          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v61;
          v71 = "%{public}s FIONBIO failed %{darwin.errno}d";
        }

        else if (LOBYTE(v521[0]) == 1)
        {
          v72 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v70 = uu[0];
          v73 = os_log_type_enabled(v69, uu[0]);
          if (v72)
          {
            if (v73)
            {
              *buf = 136446722;
              v518 = "nw_socket_set_common_sockopts";
              v519 = 1024;
              *v520 = v61;
              *&v520[4] = 2082;
              *&v520[6] = v72;
              v74 = "%{public}s FIONBIO failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_353:
              _os_log_impl(&dword_181A37000, v69, v70, v74, buf, 0x1Cu);
            }

LABEL_354:
            free(v72);
            v6 = v508;
            goto LABEL_369;
          }

          v6 = v508;
          if (!v73)
          {
            goto LABEL_369;
          }

          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v61;
          v71 = "%{public}s FIONBIO failed %{darwin.errno}d, no backtrace";
        }

        else
        {
          v69 = __nwlog_obj();
          v70 = uu[0];
          if (!os_log_type_enabled(v69, uu[0]))
          {
            goto LABEL_369;
          }

          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v61;
          v71 = "%{public}s FIONBIO failed %{darwin.errno}d, backtrace limit exceeded";
        }

LABEL_368:
        _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0x12u);
LABEL_369:
        v4 = v67;
        if (!v68)
        {
          goto LABEL_371;
        }

LABEL_370:
        free(v68);
        goto LABEL_371;
      }

      *uu = 0;
      v523 = 0;
      v56 = v34;
      _nw_parameters_get_listener_uuid();

      if (uuid_is_null(uu))
      {
        if (uuid_is_null(v1->flow_id))
        {
          goto LABEL_220;
        }

        if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4369, v1, 0x10u))
        {
          goto LABEL_220;
        }

        v57 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (LOBYTE(v6[6].output_handler) == 1 && v57 == 22)
        {
          goto LABEL_220;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v58 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 2082;
          *v520 = v6 + 420;
          *&v520[8] = 1024;
          *&v520[10] = v57;
          _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, 0x1Cu);
        }

        if (v57 == 2 || v57 == 22)
        {
          v59 = __nwlog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v57;
            v60 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d";
LABEL_168:
            _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, v60, buf, 0x12u);
            goto LABEL_220;
          }

          goto LABEL_220;
        }

        v495 = output_handler_low;
        v497 = v56;
        v75 = v4;
        v84 = __nwlog_obj();
        *buf = 136446466;
        v518 = "nw_socket_set_common_sockopts";
        v519 = 1024;
        *v520 = v57;
        LODWORD(v493) = 18;
        v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d", buf, v493);
        LOBYTE(v521[0]) = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if ((__nwlog_fault(v77, v521, type) & 1) == 0)
        {
          goto LABEL_217;
        }

        if (LOBYTE(v521[0]) == 17)
        {
          v78 = __nwlog_obj();
          v79 = v521[0];
          if (os_log_type_enabled(v78, v521[0]))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v57;
            v80 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v78 = __nwlog_obj();
          v79 = v521[0];
          if (os_log_type_enabled(v78, v521[0]))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v57;
            v80 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        v81 = __nw_create_backtrace_string();
        v78 = __nwlog_obj();
        v79 = v521[0];
        v85 = os_log_type_enabled(v78, v521[0]);
        if (!v81)
        {
          if (v85)
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v57;
            v80 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, no backtrace";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        if (v85)
        {
          *buf = 136446722;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v57;
          *&v520[4] = 2082;
          *&v520[6] = v81;
          v83 = "%{public}s setsockopt SO_NECP_CLIENTUUID failed %{darwin.errno}d, dumping backtrace:%{public}s";
          goto LABEL_199;
        }
      }

      else
      {
        if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4384, uu, 0x10u))
        {
          goto LABEL_220;
        }

        v65 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v66 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 2082;
          *v520 = v6 + 420;
          *&v520[8] = 1024;
          *&v520[10] = v65;
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, 0x1Cu);
        }

        if (v65 == 2 || v65 == 22)
        {
          v59 = __nwlog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v65;
            v60 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d";
            goto LABEL_168;
          }

LABEL_220:
          traffic_class = _nw_parameters_get_traffic_class(v56);
          if (traffic_class && nw_socket_set_traffic_class(&v6[1].output_handler, traffic_class))
          {
            p_output_handler = &v6[1].output_handler;
LABEL_372:
            nw_socket_internal_error(p_output_handler);
            goto LABEL_373;
          }

          v95 = v16;
          v96 = _nw_endpoint_get_type(v95);

          v504 = v95;
          if (v96 != 1 || output_handler_low != 2 || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 0x20000, &v516, 4u))
          {
LABEL_250:
            v108 = getpid();
            if (_nw_parameters_has_delegated_proc_pid(v56, v108))
            {
              LODWORD(v521[0]) = _nw_parameters_get_pid(v56);
              if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4359, v521, 4u))
              {
                if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v120 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446722;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 2082;
                    *v520 = v6 + 420;
                    *&v520[8] = 1024;
                    *&v520[10] = v521[0];
                    v116 = "%{public}s %{public}s successfully set source application pid to %d";
                    v117 = v120;
                    v118 = OS_LOG_TYPE_DEBUG;
                    v119 = 28;
                    goto LABEL_276;
                  }
                }

LABEL_294:
                LODWORD(v521[0]) = _nw_parameters_get_fallback_mode(v56);
                if (!LODWORD(v521[0]) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4400, v521, 4u))
                {
                  goto LABEL_320;
                }

                v129 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v130 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 2082;
                  *v520 = v6 + 420;
                  *&v520[8] = 1024;
                  *&v520[10] = v521[0];
                  *&v520[14] = 1024;
                  *&v520[16] = v129;
                  _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d", buf, 0x22u);
                }

                v131 = __nwlog_obj();
                v132 = v131;
                if (v129 == 22)
                {
                  v95 = v504;
                  if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v521[0];
                    *&v520[4] = 1024;
                    *&v520[6] = 22;
                    _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d", buf, 0x18u);
                  }

                  goto LABEL_320;
                }

                v500 = v56;
                v133 = v4;
                *buf = 136446722;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v521[0];
                *&v520[4] = 1024;
                *&v520[6] = v129;
                LODWORD(v493) = 24;
                v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v131, 16, "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d", buf, v493);
                type[0] = OS_LOG_TYPE_ERROR;
                v513[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v134, type, v513))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v135 = __nwlog_obj();
                    v136 = type[0];
                    if (os_log_type_enabled(v135, type[0]))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v521[0];
                      *&v520[4] = 1024;
                      *&v520[6] = v129;
                      v137 = "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d";
LABEL_316:
                      _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0x18u);
                    }
                  }

                  else if (v513[0] == OS_LOG_TYPE_INFO)
                  {
                    v138 = __nw_create_backtrace_string();
                    v135 = __nwlog_obj();
                    v136 = type[0];
                    v139 = os_log_type_enabled(v135, type[0]);
                    if (v138)
                    {
                      if (v139)
                      {
                        *buf = 136446978;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v521[0];
                        *&v520[4] = 1024;
                        *&v520[6] = v129;
                        *&v520[10] = 2082;
                        *&v520[12] = v138;
                        _os_log_impl(&dword_181A37000, v135, v136, "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
                      }

                      free(v138);
                      goto LABEL_317;
                    }

                    if (v139)
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v521[0];
                      *&v520[4] = 1024;
                      *&v520[6] = v129;
                      v137 = "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d, no backtrace";
                      goto LABEL_316;
                    }
                  }

                  else
                  {
                    v135 = __nwlog_obj();
                    v136 = type[0];
                    if (os_log_type_enabled(v135, type[0]))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v521[0];
                      *&v520[4] = 1024;
                      *&v520[6] = v129;
                      v137 = "%{public}s setsockopt SO_FALLBACK_MODE %d failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_316;
                    }
                  }
                }

LABEL_317:
                v95 = v504;
                if (v134)
                {
                  free(v134);
                }

                v4 = v133;
                v6 = v508;
                v56 = v500;
LABEL_320:
                *type = 0;
                if (_nw_parameters_get_prohibit_cellular(v56))
                {
                  *type |= 4u;
                }

                if (_nw_parameters_get_prohibit_expensive(v56))
                {
                  *type |= 8u;
                }

                if (_nw_parameters_get_prohibit_constrained(v56))
                {
                  *type |= 0x10u;
                }

                else if (!*type)
                {
                  goto LABEL_336;
                }

                if (setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4225, type, 4u))
                {
                  v140 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v141 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 2082;
                    *v520 = v6 + 420;
                    *&v520[8] = 1024;
                    *&v520[10] = v140;
                    _os_log_impl(&dword_181A37000, v141, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d", buf, 0x1Cu);
                  }

                  v142 = __nwlog_obj();
                  v63 = v142;
                  if (v140 == 22)
                  {
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = 22;
                      v64 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d";
                      goto LABEL_335;
                    }

                    goto LABEL_371;
                  }

                  v67 = v4;
                  *buf = 136446466;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v140;
                  LODWORD(v493) = 18;
                  v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v142, 16, "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d", buf, v493);
                  v513[0] = OS_LOG_TYPE_ERROR;
                  v512[0] = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v68, v513, v512))
                  {
                    goto LABEL_369;
                  }

                  if (v513[0] == OS_LOG_TYPE_FAULT)
                  {
                    v69 = __nwlog_obj();
                    v70 = v513[0];
                    if (!os_log_type_enabled(v69, v513[0]))
                    {
                      goto LABEL_369;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v140;
                    v71 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d";
                    goto LABEL_368;
                  }

                  if (v512[0] != OS_LOG_TYPE_INFO)
                  {
                    v69 = __nwlog_obj();
                    v70 = v513[0];
                    if (!os_log_type_enabled(v69, v513[0]))
                    {
                      goto LABEL_369;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v140;
                    v71 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d, backtrace limit exceeded";
                    goto LABEL_368;
                  }

                  v72 = __nw_create_backtrace_string();
                  v69 = __nwlog_obj();
                  v70 = v513[0];
                  v147 = os_log_type_enabled(v69, v513[0]);
                  if (v72)
                  {
                    if (v147)
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v140;
                      *&v520[4] = 2082;
                      *&v520[6] = v72;
                      v74 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d, dumping backtrace:%{public}s";
                      goto LABEL_353;
                    }

                    goto LABEL_354;
                  }

                  v6 = v508;
                  if (!v147)
                  {
                    goto LABEL_369;
                  }

                  *buf = 136446466;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v140;
                  v71 = "%{public}s setsockopt SO_RESTRICT_DENY_EXPENSIVE failed %{darwin.errno}d, no backtrace";
                  goto LABEL_368;
                }

LABEL_336:
                if (!_nw_parameters_get_no_wake_from_sleep(v56) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 0x10000, &v516, 4u))
                {
                  goto LABEL_394;
                }

                v143 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v144 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 2082;
                  *v520 = v6 + 420;
                  *&v520[8] = 1024;
                  *&v520[10] = v143;
                  _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v145 = __nwlog_obj();
                v146 = v145;
                if (v143 == 22)
                {
                  v95 = v504;
                  if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = 22;
                    _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_394;
                }

                v501 = v56;
                v148 = v4;
                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v143;
                LODWORD(v493) = 18;
                v149 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v145, 16, "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, v493);
                v513[0] = OS_LOG_TYPE_ERROR;
                v512[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v149, v513, v512))
                {
                  if (v513[0] == OS_LOG_TYPE_FAULT)
                  {
                    v150 = __nwlog_obj();
                    v151 = v513[0];
                    if (os_log_type_enabled(v150, v513[0]))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v143;
                      v152 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d";
LABEL_390:
                      _os_log_impl(&dword_181A37000, v150, v151, v152, buf, 0x12u);
                    }
                  }

                  else if (v512[0] == OS_LOG_TYPE_INFO)
                  {
                    v153 = __nw_create_backtrace_string();
                    v150 = __nwlog_obj();
                    v151 = v513[0];
                    v154 = os_log_type_enabled(v150, v513[0]);
                    if (v153)
                    {
                      if (v154)
                      {
                        *buf = 136446722;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v143;
                        *&v520[4] = 2082;
                        *&v520[6] = v153;
                        _os_log_impl(&dword_181A37000, v150, v151, "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v153);
                      goto LABEL_391;
                    }

                    if (v154)
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v143;
                      v152 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, no backtrace";
                      goto LABEL_390;
                    }
                  }

                  else
                  {
                    v150 = __nwlog_obj();
                    v151 = v513[0];
                    if (os_log_type_enabled(v150, v513[0]))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v143;
                      v152 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_390;
                    }
                  }
                }

LABEL_391:
                v6 = v508;
                v95 = v504;
                if (v149)
                {
                  free(v149);
                }

                v4 = v148;
                v56 = v501;
LABEL_394:
                if (!_nw_parameters_get_receive_any_interface(v56) || !setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4356, &v516, 4u))
                {
                  goto LABEL_420;
                }

                v162 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v163 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 2082;
                  *v520 = v6 + 420;
                  *&v520[8] = 1024;
                  *&v520[10] = v162;
                  _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v164 = __nwlog_obj();
                v165 = v164;
                if (v162 == 22)
                {
                  v95 = v504;
                  if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = 22;
                    _os_log_impl(&dword_181A37000, v165, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_420;
                }

                v502 = v56;
                v166 = v4;
                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v162;
                LODWORD(v493) = 18;
                v167 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v164, 16, "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d", buf, v493);
                v513[0] = OS_LOG_TYPE_ERROR;
                v512[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v167, v513, v512))
                {
                  if (v513[0] == OS_LOG_TYPE_FAULT)
                  {
                    v168 = __nwlog_obj();
                    v169 = v513[0];
                    if (os_log_type_enabled(v168, v513[0]))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v162;
                      v170 = "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d";
LABEL_416:
                      _os_log_impl(&dword_181A37000, v168, v169, v170, buf, 0x12u);
                    }
                  }

                  else if (v512[0] == OS_LOG_TYPE_INFO)
                  {
                    v171 = __nw_create_backtrace_string();
                    v168 = __nwlog_obj();
                    v169 = v513[0];
                    v172 = os_log_type_enabled(v168, v513[0]);
                    if (v171)
                    {
                      if (v172)
                      {
                        *buf = 136446722;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v162;
                        *&v520[4] = 2082;
                        *&v520[6] = v171;
                        _os_log_impl(&dword_181A37000, v168, v169, "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v171);
                      goto LABEL_417;
                    }

                    if (v172)
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v162;
                      v170 = "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d, no backtrace";
                      goto LABEL_416;
                    }
                  }

                  else
                  {
                    v168 = __nwlog_obj();
                    v169 = v513[0];
                    if (os_log_type_enabled(v168, v513[0]))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v162;
                      v170 = "%{public}s setsockopt SO_RECV_ANYIF failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_416;
                    }
                  }
                }

LABEL_417:
                v6 = v508;
                v95 = v504;
                if (v167)
                {
                  free(v167);
                }

                v4 = v166;
                v56 = v502;
LABEL_420:
                v507 = v4;
                if (!_nw_parameters_is_approved_app_domain(v56) || (setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4393, &v516, 4u) & 0x80000000) == 0)
                {
                  goto LABEL_422;
                }

                v180 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v181 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 2082;
                  *v520 = v6 + 420;
                  *&v520[8] = 1024;
                  *&v520[10] = v180;
                  _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v182 = __nwlog_obj();
                v183 = v182;
                if (v180 == 22)
                {
                  v95 = v504;
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = 22;
                    _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_422;
                }

                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v180;
                LODWORD(v493) = 18;
                v188 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v182, 16, "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d", buf, v493);
                v513[0] = OS_LOG_TYPE_ERROR;
                v512[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v188, v513, v512))
                {
                  if (v513[0] == OS_LOG_TYPE_FAULT)
                  {
                    v189 = __nwlog_obj();
                    v190 = v513[0];
                    if (!os_log_type_enabled(v189, v513[0]))
                    {
                      goto LABEL_512;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v180;
                    v191 = "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d";
                    goto LABEL_511;
                  }

                  if (v512[0] != OS_LOG_TYPE_INFO)
                  {
                    v189 = __nwlog_obj();
                    v190 = v513[0];
                    if (!os_log_type_enabled(v189, v513[0]))
                    {
                      goto LABEL_512;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v180;
                    v191 = "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d, backtrace limit exceeded";
                    goto LABEL_511;
                  }

                  v194 = __nw_create_backtrace_string();
                  v189 = __nwlog_obj();
                  v190 = v513[0];
                  v195 = os_log_type_enabled(v189, v513[0]);
                  if (v194)
                  {
                    if (v195)
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v180;
                      *&v520[4] = 2082;
                      *&v520[6] = v194;
                      _os_log_impl(&dword_181A37000, v189, v190, "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                    }

                    free(v194);
                    goto LABEL_512;
                  }

                  if (v195)
                  {
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v180;
                    v191 = "%{public}s setsockopt SO_MARK_APPROVED_APP_DOMAIN failed %{darwin.errno}d, no backtrace";
LABEL_511:
                    _os_log_impl(&dword_181A37000, v189, v190, v191, buf, 0x12u);
                  }
                }

LABEL_512:
                v95 = v504;
                if (v188)
                {
                  free(v188);
                }

LABEL_422:
                v173 = _nw_parameters_copy_default_protocol_stack();
                v174 = nw_protocol_stack_copy_internet_protocol(v173);
                v175 = nw_protocol_stack_copy_transport_protocol(v173);
                if (v173)
                {
                  os_release(v173);
                }

                v496 = v175;
                if (!v174)
                {
LABEL_759:
                  v4 = v507;
                  if (!v175)
                  {
                    goto LABEL_1089;
                  }

                  if (_nw_protocol_options_is_tcp())
                  {
                    v503 = v56;
                    v305 = v508;
                    if ((nw_socket_set_bidirectional_tcp_sockopts(&v508[1].output_handler, v175) & 1) == 0)
                    {
                      goto LABEL_1245;
                    }

                    ecn_mode = _nw_parameters_get_ecn_mode(v503);
                    if (ecn_mode)
                    {
                      if (ecn_mode == 1)
                      {
                        v307 = 1;
                      }

                      else
                      {
                        v307 = 2;
                      }
                    }

                    else
                    {
                      v56 = v503;
                      if (!_nw_tcp_options_get_disable_ecn())
                      {
                        goto LABEL_813;
                      }

                      v307 = 2;
                      v305 = v508;
                    }

                    *v513 = v307;
                    v312 = setsockopt(HIDWORD(v305[4].callbacks), 6, 528, v513, 4u);
                    v56 = v503;
                    if (!v312)
                    {
                      goto LABEL_813;
                    }

                    v313 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v314 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v313;
                      _os_log_impl(&dword_181A37000, v314, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v315 = __nwlog_obj();
                    v316 = v315;
                    if (v313 == 22)
                    {
                      if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = 22;
                        _os_log_impl(&dword_181A37000, v316, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_813;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v313;
                    LODWORD(v493) = 18;
                    v317 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v315, 16, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, v493);
                    v512[0] = OS_LOG_TYPE_ERROR;
                    v510[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v317, v512, v510))
                    {
                      if (v512[0] == OS_LOG_TYPE_FAULT)
                      {
                        v318 = __nwlog_obj();
                        v319 = v512[0];
                        if (!os_log_type_enabled(v318, v512[0]))
                        {
                          goto LABEL_811;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v313;
                        v320 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d";
                        goto LABEL_810;
                      }

                      if (v510[0] != OS_LOG_TYPE_INFO)
                      {
                        v318 = __nwlog_obj();
                        v319 = v512[0];
                        if (!os_log_type_enabled(v318, v512[0]))
                        {
                          goto LABEL_811;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v313;
                        v320 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_810;
                      }

                      v325 = __nw_create_backtrace_string();
                      v318 = __nwlog_obj();
                      v319 = v512[0];
                      v326 = os_log_type_enabled(v318, v512[0]);
                      if (v325)
                      {
                        if (v326)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v313;
                          *&v520[4] = 2082;
                          *&v520[6] = v325;
                          _os_log_impl(&dword_181A37000, v318, v319, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v325);
                        v95 = v504;
                        goto LABEL_811;
                      }

                      v95 = v504;
                      if (v326)
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v313;
                        v320 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, no backtrace";
LABEL_810:
                        _os_log_impl(&dword_181A37000, v318, v319, v320, buf, 0x12u);
                      }
                    }

LABEL_811:
                    v4 = v507;
                    v175 = v496;
                    if (v317)
                    {
                      free(v317);
                    }

LABEL_813:
                    enable_l4s = _nw_tcp_options_get_enable_l4s();
                    if (enable_l4s == 2)
                    {
                      goto LABEL_874;
                    }

                    *v513 = enable_l4s == 1;
                    if (!setsockopt(HIDWORD(v508[4].callbacks), 6, 539, v513, 4u))
                    {
                      goto LABEL_874;
                    }

                    v330 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v331 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v330;
                      _os_log_impl(&dword_181A37000, v331, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v332 = __nwlog_obj();
                    v333 = v332;
                    if (v330 == 22)
                    {
                      if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = 22;
                        _os_log_impl(&dword_181A37000, v333, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_874;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v330;
                    LODWORD(v493) = 18;
                    v334 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v332, 16, "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d", buf, v493);
                    v512[0] = OS_LOG_TYPE_ERROR;
                    v510[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v334, v512, v510))
                    {
                      if (v512[0] == OS_LOG_TYPE_FAULT)
                      {
                        v335 = __nwlog_obj();
                        v336 = v512[0];
                        if (!os_log_type_enabled(v335, v512[0]))
                        {
                          goto LABEL_872;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v330;
                        v337 = "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d";
                        goto LABEL_871;
                      }

                      if (v510[0] != OS_LOG_TYPE_INFO)
                      {
                        v335 = __nwlog_obj();
                        v336 = v512[0];
                        if (!os_log_type_enabled(v335, v512[0]))
                        {
                          goto LABEL_872;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v330;
                        v337 = "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_871;
                      }

                      v338 = __nw_create_backtrace_string();
                      v335 = __nwlog_obj();
                      v336 = v512[0];
                      v339 = os_log_type_enabled(v335, v512[0]);
                      if (v338)
                      {
                        if (v339)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v330;
                          *&v520[4] = 2082;
                          *&v520[6] = v338;
                          _os_log_impl(&dword_181A37000, v335, v336, "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v338);
                        v95 = v504;
                        goto LABEL_872;
                      }

                      v95 = v504;
                      if (v339)
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v330;
                        v337 = "%{public}s setsockopt TCP_ENABLE_L4S failed %{darwin.errno}d, no backtrace";
LABEL_871:
                        _os_log_impl(&dword_181A37000, v335, v336, v337, buf, 0x12u);
                      }
                    }

LABEL_872:
                    v4 = v507;
                    v175 = v496;
                    if (v334)
                    {
                      free(v334);
                    }

LABEL_874:
                    if (!_nw_tcp_options_get_fast_open_force_enable() || !setsockopt(HIDWORD(v508[4].callbacks), 6, 536, &v516, 4u))
                    {
                      goto LABEL_899;
                    }

                    v354 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v355 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v354;
                      _os_log_impl(&dword_181A37000, v355, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v356 = __nwlog_obj();
                    v357 = v356;
                    if (v354 == 22)
                    {
                      if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = 22;
                        _os_log_impl(&dword_181A37000, v357, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_899;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v354;
                    LODWORD(v493) = 18;
                    v358 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v356, 16, "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d", buf, v493);
                    v513[0] = OS_LOG_TYPE_ERROR;
                    v512[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v358, v513, v512))
                    {
                      if (v513[0] == OS_LOG_TYPE_FAULT)
                      {
                        v359 = __nwlog_obj();
                        v360 = v513[0];
                        if (!os_log_type_enabled(v359, v513[0]))
                        {
                          goto LABEL_897;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v354;
                        v361 = "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d";
                        goto LABEL_896;
                      }

                      if (v512[0] != OS_LOG_TYPE_INFO)
                      {
                        v359 = __nwlog_obj();
                        v360 = v513[0];
                        if (!os_log_type_enabled(v359, v513[0]))
                        {
                          goto LABEL_897;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v354;
                        v361 = "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_896;
                      }

                      v362 = __nw_create_backtrace_string();
                      v359 = __nwlog_obj();
                      v360 = v513[0];
                      v363 = os_log_type_enabled(v359, v513[0]);
                      if (v362)
                      {
                        if (v363)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v354;
                          *&v520[4] = 2082;
                          *&v520[6] = v362;
                          _os_log_impl(&dword_181A37000, v359, v360, "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v362);
                        v95 = v504;
                        goto LABEL_897;
                      }

                      v95 = v504;
                      if (v363)
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v354;
                        v361 = "%{public}s setsockopt TCP_FASTOPEN_FORCE_ENABLE failed %{darwin.errno}d, no backtrace";
LABEL_896:
                        _os_log_impl(&dword_181A37000, v359, v360, v361, buf, 0x12u);
                      }
                    }

LABEL_897:
                    v4 = v507;
                    v175 = v496;
                    if (v358)
                    {
                      free(v358);
                    }

LABEL_899:
                    *v513 = _nw_tcp_options_get_connection_timeout();
                    if (!*v513 || !setsockopt(HIDWORD(v508[4].callbacks), 6, 32, v513, 4u))
                    {
                      goto LABEL_924;
                    }

                    v364 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v365 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v364;
                      _os_log_impl(&dword_181A37000, v365, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v366 = __nwlog_obj();
                    v367 = v366;
                    if (v364 == 22)
                    {
                      if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = 22;
                        _os_log_impl(&dword_181A37000, v367, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d", buf, 0x12u);
                      }

                      goto LABEL_924;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v364;
                    LODWORD(v493) = 18;
                    v368 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v366, 16, "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d", buf, v493);
                    v512[0] = OS_LOG_TYPE_ERROR;
                    v510[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v368, v512, v510))
                    {
                      if (v512[0] == OS_LOG_TYPE_FAULT)
                      {
                        v369 = __nwlog_obj();
                        v370 = v512[0];
                        if (!os_log_type_enabled(v369, v512[0]))
                        {
                          goto LABEL_922;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v364;
                        v371 = "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d";
                        goto LABEL_921;
                      }

                      if (v510[0] != OS_LOG_TYPE_INFO)
                      {
                        v369 = __nwlog_obj();
                        v370 = v512[0];
                        if (!os_log_type_enabled(v369, v512[0]))
                        {
                          goto LABEL_922;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v364;
                        v371 = "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_921;
                      }

                      v372 = __nw_create_backtrace_string();
                      v369 = __nwlog_obj();
                      v370 = v512[0];
                      v373 = os_log_type_enabled(v369, v512[0]);
                      if (v372)
                      {
                        if (v373)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v364;
                          *&v520[4] = 2082;
                          *&v520[6] = v372;
                          _os_log_impl(&dword_181A37000, v369, v370, "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                        }

                        free(v372);
                        v95 = v504;
                        goto LABEL_922;
                      }

                      v95 = v504;
                      if (v373)
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v364;
                        v371 = "%{public}s setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_921:
                        _os_log_impl(&dword_181A37000, v369, v370, v371, buf, 0x12u);
                      }
                    }

LABEL_922:
                    v4 = v507;
                    v175 = v496;
                    if (v368)
                    {
                      free(v368);
                    }

LABEL_924:
                    multipath_service = _nw_parameters_get_multipath_service();
                    v375 = v508;
                    if ((HIBYTE(v508[6].callbacks) & 2) == 0 || !multipath_service)
                    {
                      goto LABEL_1077;
                    }

                    *v512 = -1;
                    switch(multipath_service)
                    {
                      case 3:
                        v376 = 2;
                        break;
                      case 2:
                        v376 = 1;
                        break;
                      case 1:
                        *v512 = 0;
                        goto LABEL_937;
                      default:
                        if (multipath_service == 101)
                        {
                          v376 = 4;
                          break;
                        }

                        if (multipath_service == 100)
                        {
                          v376 = 3;
                          break;
                        }

                        if ((*(&v508[6].callbacks + 5) & 0x80) == 0)
                        {
                          v393 = multipath_service;
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 2082;
                          *v520 = v508 + 420;
                          *&v520[8] = 1024;
                          *&v520[10] = v393;
                          LODWORD(v493) = 28;
                          v394 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gconnectionLogObj, 16, "%{public}s %{public}s Multipath Service has not been set correctly: %u", buf, v493);
                          v510[0] = OS_LOG_TYPE_ERROR;
                          v511 = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v394, v510, &v511))
                          {
                            goto LABEL_1012;
                          }

                          if (v510[0] == OS_LOG_TYPE_FAULT)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v395 = gconnectionLogObj;
                            v396 = v510[0];
                            if (!os_log_type_enabled(gconnectionLogObj, v510[0]))
                            {
                              goto LABEL_1012;
                            }

                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 2082;
                            *v520 = v508 + 420;
                            *&v520[8] = 1024;
                            *&v520[10] = v393;
                            v397 = "%{public}s %{public}s Multipath Service has not been set correctly: %u";
                          }

                          else
                          {
                            if (v511 == OS_LOG_TYPE_INFO)
                            {
                              v404 = __nw_create_backtrace_string();
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v405 = gconnectionLogObj;
                              v406 = v510[0];
                              v407 = os_log_type_enabled(gconnectionLogObj, v510[0]);
                              if (v404)
                              {
                                if (v407)
                                {
                                  *buf = 136446978;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 2082;
                                  *v520 = v508 + 420;
                                  *&v520[8] = 1024;
                                  *&v520[10] = v393;
                                  *&v520[14] = 2082;
                                  *&v520[16] = v404;
                                  _os_log_impl(&dword_181A37000, v405, v406, "%{public}s %{public}s Multipath Service has not been set correctly: %u, dumping backtrace:%{public}s", buf, 0x26u);
                                }

                                free(v404);
                                goto LABEL_1012;
                              }

                              if (!v407)
                              {
LABEL_1012:
                                if (v394)
                                {
                                  free(v394);
                                }

                                v4 = v507;
                                v175 = v496;
                                goto LABEL_1245;
                              }

                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 2082;
                              *v520 = v508 + 420;
                              *&v520[8] = 1024;
                              *&v520[10] = v393;
                              v397 = "%{public}s %{public}s Multipath Service has not been set correctly: %u, no backtrace";
                              v408 = v405;
                              v409 = v406;
LABEL_1011:
                              _os_log_impl(&dword_181A37000, v408, v409, v397, buf, 0x1Cu);
                              goto LABEL_1012;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v395 = gconnectionLogObj;
                            v396 = v510[0];
                            if (!os_log_type_enabled(gconnectionLogObj, v510[0]))
                            {
                              goto LABEL_1012;
                            }

                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 2082;
                            *v520 = v508 + 420;
                            *&v520[8] = 1024;
                            *&v520[10] = v393;
                            v397 = "%{public}s %{public}s Multipath Service has not been set correctly: %u, backtrace limit exceeded";
                          }

                          v408 = v395;
                          v409 = v396;
                          goto LABEL_1011;
                        }

LABEL_1245:
                        os_release(v175);
                        goto LABEL_373;
                    }

                    *v512 = v376;
LABEL_937:
                    if (setsockopt(HIDWORD(v508[4].callbacks), 6, 531, v512, 4u))
                    {
                      v377 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v378 = gconnectionLogObj;
                      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446722;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 2082;
                        *v520 = v508 + 420;
                        *&v520[8] = 1024;
                        *&v520[10] = v377;
                        _os_log_impl(&dword_181A37000, v378, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d", buf, 0x1Cu);
                      }

                      if (v377 == 13 || v377 == 22)
                      {
                        v379 = __nwlog_obj();
                        if (os_log_type_enabled(v379, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v377;
                          v380 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d";
LABEL_1087:
                          _os_log_impl(&dword_181A37000, v379, OS_LOG_TYPE_ERROR, v380, buf, 0x12u);
                          goto LABEL_1244;
                        }

                        goto LABEL_1244;
                      }

                      v385 = __nwlog_obj();
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v377;
                      LODWORD(v493) = 18;
                      v386 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v385, 16, "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d", buf, v493);
                      v510[0] = OS_LOG_TYPE_ERROR;
                      v511 = OS_LOG_TYPE_DEFAULT;
                      if ((__nwlog_fault(v386, v510, &v511) & 1) == 0)
                      {
                        goto LABEL_1241;
                      }

                      if (v510[0] == OS_LOG_TYPE_FAULT)
                      {
                        v387 = __nwlog_obj();
                        v388 = v510[0];
                        if (os_log_type_enabled(v387, v510[0]))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v377;
                          v389 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d";
LABEL_1240:
                          _os_log_impl(&dword_181A37000, v387, v388, v389, buf, 0x12u);
                          goto LABEL_1241;
                        }

                        goto LABEL_1241;
                      }

                      if (v511 != OS_LOG_TYPE_INFO)
                      {
                        v387 = __nwlog_obj();
                        v388 = v510[0];
                        if (os_log_type_enabled(v387, v510[0]))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v377;
                          v389 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1240;
                        }

LABEL_1241:
                        v175 = v496;
                        if (v386)
                        {
                          free(v386);
                        }

                        v375 = v508;
                        goto LABEL_1244;
                      }

                      v390 = __nw_create_backtrace_string();
                      v387 = __nwlog_obj();
                      v388 = v510[0];
                      v391 = os_log_type_enabled(v387, v510[0]);
                      if (!v390)
                      {
                        v4 = v507;
                        if (v391)
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v377;
                          v389 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1240;
                        }

                        goto LABEL_1241;
                      }

                      if (v391)
                      {
                        *buf = 136446722;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v377;
                        *&v520[4] = 2082;
                        *&v520[6] = v390;
                        v392 = "%{public}s setsockopt MPTCP_SERVICE_TYPE failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_1214:
                        _os_log_impl(&dword_181A37000, v387, v388, v392, buf, 0x1Cu);
                        goto LABEL_1215;
                      }

                      goto LABEL_1215;
                    }

                    if (!_nw_parameters_get_multipath_force_enable(v56) || !setsockopt(HIDWORD(v508[4].callbacks), 6, 535, &v516, 4u))
                    {
LABEL_1050:
                      *v510 = _nw_tcp_options_get_multipath_force_version();
                      if (*v510 <= 1u && setsockopt(HIDWORD(v375[4].callbacks), 6, 538, v510, 4u))
                      {
                        v419 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v420 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 2082;
                          *v520 = v508 + 420;
                          *&v520[8] = 1024;
                          *&v520[10] = v419;
                          _os_log_impl(&dword_181A37000, v420, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v421 = __nwlog_obj();
                        v422 = v421;
                        if (v419 == 22)
                        {
                          if (os_log_type_enabled(v421, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = 22;
                            _os_log_impl(&dword_181A37000, v422, OS_LOG_TYPE_ERROR, "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d", buf, 0x12u);
                          }

LABEL_1076:
                          v375 = v508;
                          nw_socket_internal_error(&v508[1].output_handler);
                          v4 = v507;
                          goto LABEL_1077;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v419;
                        LODWORD(v493) = 18;
                        v423 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v421, 16, "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d", buf, v493);
                        v511 = OS_LOG_TYPE_ERROR;
                        v509 = 0;
                        if (__nwlog_fault(v423, &v511, &v509))
                        {
                          if (v511 == OS_LOG_TYPE_FAULT)
                          {
                            v424 = __nwlog_obj();
                            v425 = v511;
                            if (os_log_type_enabled(v424, v511))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v419;
                              v426 = "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d";
LABEL_1072:
                              _os_log_impl(&dword_181A37000, v424, v425, v426, buf, 0x12u);
                            }
                          }

                          else if (v509 == 1)
                          {
                            v427 = __nw_create_backtrace_string();
                            v424 = __nwlog_obj();
                            v425 = v511;
                            v428 = os_log_type_enabled(v424, v511);
                            if (v427)
                            {
                              if (v428)
                              {
                                *buf = 136446722;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v419;
                                *&v520[4] = 2082;
                                *&v520[6] = v427;
                                _os_log_impl(&dword_181A37000, v424, v425, "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v427);
                              goto LABEL_1073;
                            }

                            if (v428)
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v419;
                              v426 = "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1072;
                            }
                          }

                          else
                          {
                            v424 = __nwlog_obj();
                            v425 = v511;
                            if (os_log_type_enabled(v424, v511))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v419;
                              v426 = "%{public}s setsockopt MPTCP_FORCE_VERSION failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1072;
                            }
                          }
                        }

LABEL_1073:
                        if (v423)
                        {
                          free(v423);
                        }

                        v56 = v503;
                        v95 = v504;
                        v175 = v496;
                        goto LABEL_1076;
                      }

LABEL_1077:
                      *v512 = nw_endpoint_get_alternate_port(v95);
                      if (*v512 && (HIBYTE(v375[6].callbacks) & 2) != 0 && setsockopt(HIDWORD(v375[4].callbacks), 6, 534, v512, 4u))
                      {
                        v429 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v430 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 2082;
                          *v520 = v375 + 420;
                          *&v520[8] = 1024;
                          *&v520[10] = v429;
                          _os_log_impl(&dword_181A37000, v430, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v431 = __nwlog_obj();
                        v379 = v431;
                        if (v429 == 22)
                        {
                          if (os_log_type_enabled(v431, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = 22;
                            v380 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d";
                            goto LABEL_1087;
                          }

LABEL_1244:
                          nw_socket_internal_error(&v375[1].output_handler);
                          goto LABEL_1245;
                        }

                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v429;
                        LODWORD(v493) = 18;
                        v386 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v431, 16, "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d", buf, v493);
                        v510[0] = OS_LOG_TYPE_ERROR;
                        v511 = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v386, v510, &v511))
                        {
                          goto LABEL_1241;
                        }

                        if (v510[0] == OS_LOG_TYPE_FAULT)
                        {
                          v387 = __nwlog_obj();
                          v388 = v510[0];
                          if (os_log_type_enabled(v387, v510[0]))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v429;
                            v389 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d";
                            goto LABEL_1240;
                          }

                          goto LABEL_1241;
                        }

                        if (v511 != OS_LOG_TYPE_INFO)
                        {
                          v387 = __nwlog_obj();
                          v388 = v510[0];
                          if (os_log_type_enabled(v387, v510[0]))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v429;
                            v389 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_1240;
                          }

                          goto LABEL_1241;
                        }

                        v390 = __nw_create_backtrace_string();
                        v387 = __nwlog_obj();
                        v388 = v510[0];
                        v484 = os_log_type_enabled(v387, v510[0]);
                        if (!v390)
                        {
                          v4 = v507;
                          if (v484)
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v429;
                            v389 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d, no backtrace";
                            goto LABEL_1240;
                          }

                          goto LABEL_1241;
                        }

                        if (v484)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v429;
                          *&v520[4] = 2082;
                          *&v520[6] = v390;
                          v392 = "%{public}s setsockopt MPTCP_ALTERNATE_PORT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                          goto LABEL_1214;
                        }

LABEL_1215:
                        free(v390);
                        v4 = v507;
                        goto LABEL_1241;
                      }

                      goto LABEL_1088;
                    }

                    v381 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v382 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v381;
                      _os_log_impl(&dword_181A37000, v382, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v383 = __nwlog_obj();
                    v384 = v383;
                    if (v381 == 22)
                    {
                      if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = 22;
                        _os_log_impl(&dword_181A37000, v384, OS_LOG_TYPE_ERROR, "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d", buf, 0x12u);
                      }

LABEL_1049:
                      v375 = v508;
                      nw_socket_internal_error(&v508[1].output_handler);
                      v4 = v507;
                      goto LABEL_1050;
                    }

                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v381;
                    LODWORD(v493) = 18;
                    v398 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v383, 16, "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d", buf, v493);
                    v510[0] = OS_LOG_TYPE_ERROR;
                    v511 = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v398, v510, &v511))
                    {
                      if (v510[0] == OS_LOG_TYPE_FAULT)
                      {
                        v399 = __nwlog_obj();
                        v400 = v510[0];
                        if (os_log_type_enabled(v399, v510[0]))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v381;
                          v401 = "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d";
LABEL_1045:
                          _os_log_impl(&dword_181A37000, v399, v400, v401, buf, 0x12u);
                        }
                      }

                      else if (v511 == OS_LOG_TYPE_INFO)
                      {
                        v402 = __nw_create_backtrace_string();
                        v399 = __nwlog_obj();
                        v400 = v510[0];
                        v403 = os_log_type_enabled(v399, v510[0]);
                        if (v402)
                        {
                          if (v403)
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v381;
                            *&v520[4] = 2082;
                            *&v520[6] = v402;
                            _os_log_impl(&dword_181A37000, v399, v400, "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                          }

                          free(v402);
                          goto LABEL_1046;
                        }

                        if (v403)
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v381;
                          v401 = "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1045;
                        }
                      }

                      else
                      {
                        v399 = __nwlog_obj();
                        v400 = v510[0];
                        if (os_log_type_enabled(v399, v510[0]))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v381;
                          v401 = "%{public}s setsockopt MPTCP_FORCE_ENABLE failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1045;
                        }
                      }
                    }

LABEL_1046:
                    if (v398)
                    {
                      free(v398);
                    }

                    v56 = v503;
                    v95 = v504;
                    v175 = v496;
                    goto LABEL_1049;
                  }

                  if (!_nw_protocol_options_is_udp(v175))
                  {
                    goto LABEL_1088;
                  }

                  if (!_nw_udp_options_get_prefer_no_checksum(v175) || !setsockopt(HIDWORD(v508[4].callbacks), 17, 1, &v516, 4u))
                  {
LABEL_838:
                    if (output_handler_low == 2)
                    {
                      if ((setsockopt(HIDWORD(v508[4].callbacks), 0, 27, &v516, 4u) & 0x80000000) == 0)
                      {
                        goto LABEL_1020;
                      }

                      v340 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                      v341 = __nwlog_obj();
                      v342 = v341;
                      if (v340 == 22)
                      {
                        if (os_log_type_enabled(v341, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = 22;
                          v343 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d";
LABEL_848:
                          _os_log_impl(&dword_181A37000, v342, OS_LOG_TYPE_ERROR, v343, buf, 0x12u);
                          goto LABEL_1020;
                        }

                        goto LABEL_1020;
                      }

                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v340;
                      LODWORD(v493) = 18;
                      v346 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v341, 16, "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d", buf, v493);
                      v513[0] = OS_LOG_TYPE_ERROR;
                      v512[0] = OS_LOG_TYPE_DEFAULT;
                      if (__nwlog_fault(v346, v513, v512))
                      {
                        if (v513[0] == OS_LOG_TYPE_FAULT)
                        {
                          v347 = __nwlog_obj();
                          v348 = v513[0];
                          if (!os_log_type_enabled(v347, v513[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v340;
                          v349 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d";
LABEL_1017:
                          _os_log_impl(&dword_181A37000, v347, v348, v349, buf, 0x12u);
                          goto LABEL_1018;
                        }

                        if (v512[0] != OS_LOG_TYPE_INFO)
                        {
                          v347 = __nwlog_obj();
                          v348 = v513[0];
                          if (!os_log_type_enabled(v347, v513[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v340;
                          v349 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1017;
                        }

                        v350 = __nw_create_backtrace_string();
                        v347 = __nwlog_obj();
                        v348 = v513[0];
                        v351 = os_log_type_enabled(v347, v513[0]);
                        if (!v350)
                        {
                          v95 = v504;
                          if (!v351)
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v340;
                          v349 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1017;
                        }

                        if (v351)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v340;
                          *&v520[4] = 2082;
                          *&v520[6] = v350;
                          v352 = "%{public}s setsockopt IP_RECVTOS failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_865:
                          _os_log_impl(&dword_181A37000, v347, v348, v352, buf, 0x1Cu);
                          goto LABEL_866;
                        }

                        goto LABEL_866;
                      }
                    }

                    else
                    {
                      if (output_handler_low != 30 || (setsockopt(HIDWORD(v508[4].callbacks), 41, 35, &v516, 4u) & 0x80000000) == 0)
                      {
                        goto LABEL_1020;
                      }

                      v344 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                      v345 = __nwlog_obj();
                      v342 = v345;
                      if (v344 == 22)
                      {
                        if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = 22;
                          v343 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d";
                          goto LABEL_848;
                        }

LABEL_1020:
                        if (nw_endpoint_get_type(v95) == nw_endpoint_type_address && nw_endpoint_is_broadcast(v95, path) && setsockopt(HIDWORD(v508[4].callbacks), 0xFFFF, 32, &v516, 4u) < 0)
                        {
                          v410 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          v411 = __nwlog_obj();
                          v412 = v411;
                          if (v410 == 22)
                          {
                            if (os_log_type_enabled(v411, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = 22;
                              _os_log_impl(&dword_181A37000, v412, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d", buf, 0x12u);
                            }

                            goto LABEL_1088;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v410;
                          LODWORD(v493) = 18;
                          v413 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v411, 16, "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d", buf, v493);
                          v513[0] = OS_LOG_TYPE_ERROR;
                          v512[0] = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v413, v513, v512))
                          {
                            if (v513[0] == OS_LOG_TYPE_FAULT)
                            {
                              v414 = __nwlog_obj();
                              v415 = v513[0];
                              if (!os_log_type_enabled(v414, v513[0]))
                              {
                                goto LABEL_1040;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v410;
                              v416 = "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d";
                              goto LABEL_1039;
                            }

                            if (v512[0] != OS_LOG_TYPE_INFO)
                            {
                              v414 = __nwlog_obj();
                              v415 = v513[0];
                              v95 = v504;
                              if (!os_log_type_enabled(v414, v513[0]))
                              {
                                goto LABEL_1040;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v410;
                              v416 = "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1039;
                            }

                            v417 = __nw_create_backtrace_string();
                            v414 = __nwlog_obj();
                            v415 = v513[0];
                            v418 = os_log_type_enabled(v414, v513[0]);
                            if (v417)
                            {
                              if (v418)
                              {
                                *buf = 136446722;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v410;
                                *&v520[4] = 2082;
                                *&v520[6] = v417;
                                _os_log_impl(&dword_181A37000, v414, v415, "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v417);
                              v95 = v504;
                              goto LABEL_1040;
                            }

                            v95 = v504;
                            if (v418)
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v410;
                              v416 = "%{public}s setsockopt SO_BROADCAST failed %{darwin.errno}d, no backtrace";
LABEL_1039:
                              _os_log_impl(&dword_181A37000, v414, v415, v416, buf, 0x12u);
                            }
                          }

LABEL_1040:
                          v4 = v507;
                          v175 = v496;
                          if (v413)
                          {
                            free(v413);
                          }
                        }

LABEL_1088:
                        os_release(v175);
LABEL_1089:
                        v6 = v508;
                        if (_nw_parameters_get_reuse_local_address(v56))
                        {
                          if (setsockopt(HIDWORD(v508[4].callbacks), 0xFFFF, 4, &v516, 4u) < 0)
                          {
                            v444 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v445 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 2082;
                              *v520 = v508 + 420;
                              *&v520[8] = 1024;
                              *&v520[10] = v444;
                              _os_log_impl(&dword_181A37000, v445, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d", buf, 0x1Cu);
                            }

                            v446 = __nwlog_obj();
                            v63 = v446;
                            if (v444 == 22)
                            {
                              if (!os_log_type_enabled(v446, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_371;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = 22;
                              v64 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d";
                              goto LABEL_335;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v444;
                            LODWORD(v493) = 18;
                            v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v446, 16, "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d", buf, v493);
                            v513[0] = OS_LOG_TYPE_ERROR;
                            v512[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v68, v513, v512))
                            {
                              goto LABEL_1234;
                            }

                            if (v513[0] == OS_LOG_TYPE_FAULT)
                            {
                              v452 = __nwlog_obj();
                              v453 = v513[0];
                              if (!os_log_type_enabled(v452, v513[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v444;
                              v454 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d";
                              goto LABEL_1233;
                            }

                            if (v512[0] != OS_LOG_TYPE_INFO)
                            {
                              v452 = __nwlog_obj();
                              v453 = v513[0];
                              if (!os_log_type_enabled(v452, v513[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v444;
                              v454 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1233;
                            }

                            v460 = __nw_create_backtrace_string();
                            v452 = __nwlog_obj();
                            v453 = v513[0];
                            v466 = os_log_type_enabled(v452, v513[0]);
                            if (!v460)
                            {
                              v6 = v508;
                              if (!v466)
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v444;
                              v454 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1233;
                            }

                            if (v466)
                            {
                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v444;
                              *&v520[4] = 2082;
                              *&v520[6] = v460;
                              v462 = "%{public}s setsockopt SO_REUSEADDR failed %{darwin.errno}d, dumping backtrace:%{public}s";
                              goto LABEL_1198;
                            }

LABEL_1199:
                            free(v460);
                            v6 = v508;
                            goto LABEL_1234;
                          }

                          if (setsockopt(HIDWORD(v508[4].callbacks), 0xFFFF, 512, &v516, 4u) < 0)
                          {
                            v455 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v456 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 2082;
                              *v520 = v508 + 420;
                              *&v520[8] = 1024;
                              *&v520[10] = v455;
                              _os_log_impl(&dword_181A37000, v456, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d", buf, 0x1Cu);
                            }

                            v457 = __nwlog_obj();
                            v63 = v457;
                            if (v455 == 22)
                            {
                              if (!os_log_type_enabled(v457, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_371;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = 22;
                              v64 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d";
                              goto LABEL_335;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v455;
                            LODWORD(v493) = 18;
                            v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v457, 16, "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d", buf, v493);
                            v513[0] = OS_LOG_TYPE_ERROR;
                            v512[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v68, v513, v512))
                            {
                              goto LABEL_1234;
                            }

                            if (v513[0] == OS_LOG_TYPE_FAULT)
                            {
                              v452 = __nwlog_obj();
                              v453 = v513[0];
                              if (!os_log_type_enabled(v452, v513[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v455;
                              v454 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d";
                              goto LABEL_1233;
                            }

                            if (v512[0] != OS_LOG_TYPE_INFO)
                            {
                              v452 = __nwlog_obj();
                              v453 = v513[0];
                              if (!os_log_type_enabled(v452, v513[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v455;
                              v454 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1233;
                            }

                            v460 = __nw_create_backtrace_string();
                            v452 = __nwlog_obj();
                            v453 = v513[0];
                            v469 = os_log_type_enabled(v452, v513[0]);
                            if (!v460)
                            {
                              v6 = v508;
                              if (!v469)
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v455;
                              v454 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1233;
                            }

                            if (v469)
                            {
                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v455;
                              *&v520[4] = 2082;
                              *&v520[6] = v460;
                              v462 = "%{public}s setsockopt SO_REUSEPORT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                              goto LABEL_1198;
                            }

                            goto LABEL_1199;
                          }
                        }

                        v432 = v508[3].callbacks;
                        if (v432)
                        {
                          callbacks_high = HIDWORD(v508[4].callbacks);
                          bytes_ptr = xpc_data_get_bytes_ptr(v432);
                          length = xpc_data_get_length(v508[3].callbacks);
                          v436 = bytes_ptr;
                          v6 = v508;
                          if (setsockopt(callbacks_high, 0xFFFF, 4358, v436, length))
                          {
                            v437 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v438 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 2082;
                              *v520 = v508 + 420;
                              *&v520[8] = 1024;
                              *&v520[10] = v437;
                              _os_log_impl(&dword_181A37000, v438, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d", buf, 0x1Cu);
                            }

                            v439 = __nwlog_obj();
                            v63 = v439;
                            if (v437 == 22)
                            {
                              if (!os_log_type_enabled(v439, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_371;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = 22;
                              v64 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d";
                              goto LABEL_335;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v437;
                            LODWORD(v493) = 18;
                            v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v439, 16, "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d", buf, v493);
                            v513[0] = OS_LOG_TYPE_ERROR;
                            v512[0] = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v68, v513, v512))
                            {
                              goto LABEL_1234;
                            }

                            if (v513[0] == OS_LOG_TYPE_FAULT)
                            {
                              v452 = __nwlog_obj();
                              v453 = v513[0];
                              if (!os_log_type_enabled(v452, v513[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v437;
                              v454 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d";
                              goto LABEL_1233;
                            }

                            if (v512[0] != OS_LOG_TYPE_INFO)
                            {
                              v452 = __nwlog_obj();
                              v453 = v513[0];
                              if (!os_log_type_enabled(v452, v513[0]))
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v437;
                              v454 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1233;
                            }

                            v460 = __nw_create_backtrace_string();
                            v452 = __nwlog_obj();
                            v453 = v513[0];
                            v461 = os_log_type_enabled(v452, v513[0]);
                            if (!v460)
                            {
                              v6 = v508;
                              if (!v461)
                              {
                                goto LABEL_1234;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v437;
                              v454 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1233;
                            }

                            if (v461)
                            {
                              *buf = 136446722;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v437;
                              *&v520[4] = 2082;
                              *&v520[6] = v460;
                              v462 = "%{public}s setsockopt SO_FLOW_DIVERT_TOKEN failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_1198:
                              _os_log_impl(&dword_181A37000, v452, v453, v462, buf, 0x1Cu);
                              goto LABEL_1199;
                            }

                            goto LABEL_1199;
                          }
                        }

                        if (path && nw_path_uses_interface_subtype(path, 4001) && setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4376, &v516, 4u) < 0)
                        {
                          v463 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v464 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 2082;
                            *v520 = v6 + 420;
                            *&v520[8] = 1024;
                            *&v520[10] = v463;
                            _os_log_impl(&dword_181A37000, v464, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d", buf, 0x1Cu);
                          }

                          v465 = __nwlog_obj();
                          v63 = v465;
                          if (v463 == 22)
                          {
                            if (!os_log_type_enabled(v465, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_371;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = 22;
                            v64 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d";
                            goto LABEL_335;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v463;
                          LODWORD(v493) = 18;
                          v68 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v465, 16, "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d", buf, v493);
                          v513[0] = OS_LOG_TYPE_ERROR;
                          v512[0] = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v68, v513, v512))
                          {
                            goto LABEL_1234;
                          }

                          if (v513[0] == OS_LOG_TYPE_FAULT)
                          {
                            v452 = __nwlog_obj();
                            v453 = v513[0];
                            if (!os_log_type_enabled(v452, v513[0]))
                            {
                              goto LABEL_1234;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v463;
                            v454 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d";
                            goto LABEL_1233;
                          }

                          if (v512[0] != OS_LOG_TYPE_INFO)
                          {
                            v452 = __nwlog_obj();
                            v453 = v513[0];
                            if (!os_log_type_enabled(v452, v513[0]))
                            {
                              goto LABEL_1234;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v463;
                            v454 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_1233;
                          }

                          v460 = __nw_create_backtrace_string();
                          v452 = __nwlog_obj();
                          v453 = v513[0];
                          v475 = os_log_type_enabled(v452, v513[0]);
                          if (!v460)
                          {
                            v6 = v508;
                            if (!v475)
                            {
                              goto LABEL_1234;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v463;
                            v454 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d, no backtrace";
LABEL_1233:
                            _os_log_impl(&dword_181A37000, v452, v453, v454, buf, 0x12u);
LABEL_1234:
                            v4 = v507;
                            if (!v68)
                            {
                              goto LABEL_371;
                            }

                            goto LABEL_370;
                          }

                          if (v475)
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v463;
                            *&v520[4] = 2082;
                            *&v520[6] = v460;
                            v462 = "%{public}s setsockopt SO_INTCOPROC_ALLOW failed %{darwin.errno}d, dumping backtrace:%{public}s";
                            goto LABEL_1198;
                          }

                          goto LABEL_1199;
                        }

                        v440 = _nw_parameters_copy_context();
                        do_not_log_trackers = nw_context_get_do_not_log_trackers(v440);
                        if (v440)
                        {
                          os_release(v440);
                        }

                        if (do_not_log_trackers)
                        {
                          if ((setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4405, &v516, 4u) & 0x80000000) == 0)
                          {
                            if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                            {
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v442 = gconnectionLogObj;
                              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 2082;
                                *v520 = v6 + 420;
                                v443 = "%{public}s %{public}s set SO_MARK_DOMAIN_INFO_SILENT on";
LABEL_1259:
                                v487 = v442;
                                v488 = OS_LOG_TYPE_DEBUG;
                                v489 = 22;
LABEL_1266:
                                _os_log_impl(&dword_181A37000, v487, v488, v443, buf, v489);
                                goto LABEL_1285;
                              }
                            }

                            goto LABEL_1285;
                          }

                          v458 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (v458 == 22 || v458 == 42)
                          {
                            v459 = __nwlog_obj();
                            if (!os_log_type_enabled(v459, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1285;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v458;
                            v443 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d";
LABEL_1265:
                            v487 = v459;
                            v488 = OS_LOG_TYPE_ERROR;
                            v489 = 18;
                            goto LABEL_1266;
                          }

                          v470 = __nwlog_obj();
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v458;
                          LODWORD(v493) = 18;
                          v471 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v470, 16, "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d", buf, v493);
                          v513[0] = OS_LOG_TYPE_ERROR;
                          v512[0] = OS_LOG_TYPE_DEFAULT;
                          if ((__nwlog_fault(v471, v513, v512) & 1) == 0)
                          {
                            goto LABEL_1282;
                          }

                          if (v513[0] == OS_LOG_TYPE_FAULT)
                          {
                            v472 = __nwlog_obj();
                            v473 = v513[0];
                            if (os_log_type_enabled(v472, v513[0]))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v458;
                              v474 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d";
LABEL_1281:
                              _os_log_impl(&dword_181A37000, v472, v473, v474, buf, 0x12u);
                              goto LABEL_1282;
                            }

                            goto LABEL_1282;
                          }

                          if (v512[0] != OS_LOG_TYPE_INFO)
                          {
                            v472 = __nwlog_obj();
                            v473 = v513[0];
                            if (os_log_type_enabled(v472, v513[0]))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v458;
                              v474 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1281;
                            }

LABEL_1282:
                            v95 = v504;
                            if (v471)
                            {
                              free(v471);
                            }

                            v6 = v508;
                            goto LABEL_1285;
                          }

                          v481 = __nw_create_backtrace_string();
                          v472 = __nwlog_obj();
                          v473 = v513[0];
                          v482 = os_log_type_enabled(v472, v513[0]);
                          if (!v481)
                          {
                            v4 = v507;
                            if (v482)
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v458;
                              v474 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          if (v482)
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v458;
                            *&v520[4] = 2082;
                            *&v520[6] = v481;
                            v483 = "%{public}s setsockopt SO_MARK_DOMAIN_INFO_SILENT failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_1275:
                            _os_log_impl(&dword_181A37000, v472, v473, v483, buf, 0x1Cu);
                            goto LABEL_1276;
                          }

                          goto LABEL_1276;
                        }

                        if (!_nw_parameters_get_is_known_tracker(v56))
                        {
                          goto LABEL_1252;
                        }

                        if ((setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4389, &v516, 4u) & 0x80000000) == 0)
                        {
                          if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v447 = gconnectionLogObj;
                            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 2082;
                              *v520 = v6 + 420;
                              v448 = "%{public}s %{public}s set SO_MARK_KNOWN_TRACKER on";
                              v449 = v447;
                              v450 = OS_LOG_TYPE_DEBUG;
                              v451 = 22;
LABEL_1169:
                              _os_log_impl(&dword_181A37000, v449, v450, v448, buf, v451);
                            }
                          }

LABEL_1252:
                          if (nw_parameters_get_attribution(v56) != nw_parameters_attribution_user)
                          {
                            goto LABEL_1285;
                          }

                          if ((setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4390, &v516, 4u) & 0x80000000) == 0)
                          {
                            if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
                            {
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v442 = gconnectionLogObj;
                              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 2082;
                                *v520 = v6 + 420;
                                v443 = "%{public}s %{public}s set SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED on";
                                goto LABEL_1259;
                              }
                            }

LABEL_1285:
                            nw_protocol_socket_set_necp_attributes(&v6[1].output_handler, v56, v95);
                            result = 1;
                            if (v4)
                            {
                              return result;
                            }

                            goto LABEL_374;
                          }

                          v490 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (v490 == 22 || v490 == 42 || v490 == 100)
                          {
                            v459 = __nwlog_obj();
                            if (!os_log_type_enabled(v459, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_1285;
                            }

                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v490;
                            v443 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d";
                            goto LABEL_1265;
                          }

                          v491 = __nwlog_obj();
                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v490;
                          LODWORD(v493) = 18;
                          v471 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v491, 16, "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d", buf, v493);
                          v513[0] = OS_LOG_TYPE_ERROR;
                          v512[0] = OS_LOG_TYPE_DEFAULT;
                          if ((__nwlog_fault(v471, v513, v512) & 1) == 0)
                          {
                            goto LABEL_1282;
                          }

                          if (v513[0] == OS_LOG_TYPE_FAULT)
                          {
                            v472 = __nwlog_obj();
                            v473 = v513[0];
                            if (os_log_type_enabled(v472, v513[0]))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v490;
                              v474 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          if (v512[0] != OS_LOG_TYPE_INFO)
                          {
                            v472 = __nwlog_obj();
                            v473 = v513[0];
                            v4 = v507;
                            if (os_log_type_enabled(v472, v513[0]))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v490;
                              v474 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          v481 = __nw_create_backtrace_string();
                          v472 = __nwlog_obj();
                          v473 = v513[0];
                          v492 = os_log_type_enabled(v472, v513[0]);
                          if (!v481)
                          {
                            v4 = v507;
                            if (v492)
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v490;
                              v474 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1281;
                            }

                            goto LABEL_1282;
                          }

                          if (v492)
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v490;
                            *&v520[4] = 2082;
                            *&v520[6] = v481;
                            v483 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED failed %{darwin.errno}d, dumping backtrace:%{public}s";
                            goto LABEL_1275;
                          }

LABEL_1276:
                          free(v481);
                          v4 = v507;
                          goto LABEL_1282;
                        }

                        v467 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (v467 == 22 || v467 == 42)
                        {
                          v468 = __nwlog_obj();
                          if (!os_log_type_enabled(v468, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1252;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v467;
                          v448 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d";
                          v449 = v468;
                          v450 = OS_LOG_TYPE_ERROR;
                          v451 = 18;
                          goto LABEL_1169;
                        }

                        v476 = __nwlog_obj();
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v467;
                        LODWORD(v493) = 18;
                        v477 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v476, 16, "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d", buf, v493);
                        v513[0] = OS_LOG_TYPE_ERROR;
                        v512[0] = OS_LOG_TYPE_DEFAULT;
                        if (__nwlog_fault(v477, v513, v512))
                        {
                          if (v513[0] == OS_LOG_TYPE_FAULT)
                          {
                            v478 = __nwlog_obj();
                            v479 = v513[0];
                            if (os_log_type_enabled(v478, v513[0]))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v467;
                              v480 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d";
LABEL_1248:
                              _os_log_impl(&dword_181A37000, v478, v479, v480, buf, 0x12u);
                            }
                          }

                          else if (v512[0] == OS_LOG_TYPE_INFO)
                          {
                            v485 = __nw_create_backtrace_string();
                            v478 = __nwlog_obj();
                            v479 = v513[0];
                            v486 = os_log_type_enabled(v478, v513[0]);
                            if (v485)
                            {
                              if (v486)
                              {
                                *buf = 136446722;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v467;
                                *&v520[4] = 2082;
                                *&v520[6] = v485;
                                _os_log_impl(&dword_181A37000, v478, v479, "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v485);
                              v4 = v507;
                              goto LABEL_1249;
                            }

                            v4 = v507;
                            if (v486)
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v467;
                              v480 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d, no backtrace";
                              goto LABEL_1248;
                            }
                          }

                          else
                          {
                            v478 = __nwlog_obj();
                            v479 = v513[0];
                            if (os_log_type_enabled(v478, v513[0]))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v467;
                              v480 = "%{public}s setsockopt SO_MARK_KNOWN_TRACKER failed %{darwin.errno}d, backtrace limit exceeded";
                              goto LABEL_1248;
                            }
                          }
                        }

LABEL_1249:
                        v95 = v504;
                        if (v477)
                        {
                          free(v477);
                        }

                        v6 = v508;
                        goto LABEL_1252;
                      }

                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v344;
                      LODWORD(v493) = 18;
                      v346 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v345, 16, "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d", buf, v493);
                      v513[0] = OS_LOG_TYPE_ERROR;
                      v512[0] = OS_LOG_TYPE_DEFAULT;
                      if (__nwlog_fault(v346, v513, v512))
                      {
                        if (v513[0] == OS_LOG_TYPE_FAULT)
                        {
                          v347 = __nwlog_obj();
                          v348 = v513[0];
                          if (!os_log_type_enabled(v347, v513[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v344;
                          v349 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d";
                          goto LABEL_1017;
                        }

                        if (v512[0] != OS_LOG_TYPE_INFO)
                        {
                          v347 = __nwlog_obj();
                          v348 = v513[0];
                          v95 = v504;
                          if (!os_log_type_enabled(v347, v513[0]))
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v344;
                          v349 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d, backtrace limit exceeded";
                          goto LABEL_1017;
                        }

                        v350 = __nw_create_backtrace_string();
                        v347 = __nwlog_obj();
                        v348 = v513[0];
                        v353 = os_log_type_enabled(v347, v513[0]);
                        if (!v350)
                        {
                          v95 = v504;
                          if (!v353)
                          {
                            goto LABEL_1018;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v344;
                          v349 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d, no backtrace";
                          goto LABEL_1017;
                        }

                        if (v353)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v344;
                          *&v520[4] = 2082;
                          *&v520[6] = v350;
                          v352 = "%{public}s setsockopt IPV6_RECVTCLASS failed %{darwin.errno}d, dumping backtrace:%{public}s";
                          goto LABEL_865;
                        }

LABEL_866:
                        free(v350);
                        v95 = v504;
                      }
                    }

LABEL_1018:
                    v4 = v507;
                    v175 = v496;
                    if (v346)
                    {
                      free(v346);
                    }

                    goto LABEL_1020;
                  }

                  v308 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v309 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 2082;
                    *v520 = v508 + 420;
                    *&v520[8] = 1024;
                    *&v520[10] = v308;
                    _os_log_impl(&dword_181A37000, v309, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d", buf, 0x1Cu);
                  }

                  v310 = __nwlog_obj();
                  v311 = v310;
                  if (v308 == 22)
                  {
                    v175 = v496;
                    if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = 22;
                      _os_log_impl(&dword_181A37000, v311, OS_LOG_TYPE_ERROR, "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d", buf, 0x12u);
                    }

                    goto LABEL_838;
                  }

                  *buf = 136446466;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v308;
                  LODWORD(v493) = 18;
                  v321 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v310, 16, "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d", buf, v493);
                  v513[0] = OS_LOG_TYPE_ERROR;
                  v512[0] = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v321, v513, v512))
                  {
                    if (v513[0] == OS_LOG_TYPE_FAULT)
                    {
                      v322 = __nwlog_obj();
                      v323 = v513[0];
                      if (!os_log_type_enabled(v322, v513[0]))
                      {
                        goto LABEL_836;
                      }

                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v308;
                      v324 = "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d";
                      goto LABEL_835;
                    }

                    if (v512[0] != OS_LOG_TYPE_INFO)
                    {
                      v322 = __nwlog_obj();
                      v323 = v513[0];
                      if (!os_log_type_enabled(v322, v513[0]))
                      {
                        goto LABEL_836;
                      }

                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v308;
                      v324 = "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_835;
                    }

                    v327 = __nw_create_backtrace_string();
                    v322 = __nwlog_obj();
                    v323 = v513[0];
                    v328 = os_log_type_enabled(v322, v513[0]);
                    if (v327)
                    {
                      if (v328)
                      {
                        *buf = 136446722;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v308;
                        *&v520[4] = 2082;
                        *&v520[6] = v327;
                        _os_log_impl(&dword_181A37000, v322, v323, "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v327);
                      v95 = v504;
                      goto LABEL_836;
                    }

                    v95 = v504;
                    if (v328)
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v308;
                      v324 = "%{public}s setsockopt UDP_NOCKSUM failed %{darwin.errno}d, no backtrace";
LABEL_835:
                      _os_log_impl(&dword_181A37000, v322, v323, v324, buf, 0x12u);
                    }
                  }

LABEL_836:
                  v4 = v507;
                  v175 = v496;
                  if (v321)
                  {
                    free(v321);
                  }

                  goto LABEL_838;
                }

                if (!_nw_ip_options_get_calculate_receive_time() || !setsockopt(HIDWORD(v508[4].callbacks), 0xFFFF, 0x40000, &v516, 4u))
                {
LABEL_469:
                  *v513 = _nw_ip_options_get_hop_limit();
                  if (!*v513)
                  {
                    goto LABEL_526;
                  }

                  if (output_handler_low == 2)
                  {
                    if (!setsockopt(HIDWORD(v508[4].callbacks), 0, 4, v513, 4u))
                    {
                      goto LABEL_526;
                    }

                    v196 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v197 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v196;
                      _os_log_impl(&dword_181A37000, v197, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_TTL failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v198 = __nwlog_obj();
                    v199 = v198;
                    if (v196 == 22)
                    {
                      v175 = v496;
                      if (!os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_526;
                      }

                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = 22;
                      v200 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d";
LABEL_488:
                      _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_ERROR, v200, buf, 0x12u);
                      goto LABEL_526;
                    }

                    v204 = output_handler_low;
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v196;
                    LODWORD(v493) = 18;
                    v205 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v198, 16, "%{public}s setsockopt IP_TTL failed %{darwin.errno}d", buf, v493);
                    v512[0] = OS_LOG_TYPE_ERROR;
                    v510[0] = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v205, v512, v510))
                    {
                      goto LABEL_523;
                    }

                    if (v512[0] == OS_LOG_TYPE_FAULT)
                    {
                      v206 = __nwlog_obj();
                      v207 = v512[0];
                      if (os_log_type_enabled(v206, v512[0]))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v196;
                        v208 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d";
LABEL_522:
                        _os_log_impl(&dword_181A37000, v206, v207, v208, buf, 0x12u);
                        goto LABEL_523;
                      }

                      goto LABEL_523;
                    }

                    if (v510[0] != OS_LOG_TYPE_INFO)
                    {
                      v206 = __nwlog_obj();
                      v207 = v512[0];
                      if (os_log_type_enabled(v206, v512[0]))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v196;
                        v208 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    v209 = __nw_create_backtrace_string();
                    v206 = __nwlog_obj();
                    v207 = v512[0];
                    v210 = os_log_type_enabled(v206, v512[0]);
                    if (!v209)
                    {
                      if (v210)
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v196;
                        v208 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d, no backtrace";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    if (v210)
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v196;
                      *&v520[4] = 2082;
                      *&v520[6] = v209;
                      v211 = "%{public}s setsockopt IP_TTL failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_505:
                      _os_log_impl(&dword_181A37000, v206, v207, v211, buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    if (output_handler_low != 30 || !setsockopt(HIDWORD(v508[4].callbacks), 41, 47, v513, 4u))
                    {
                      goto LABEL_526;
                    }

                    v201 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v202 = gconnectionLogObj;
                    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 2082;
                      *v520 = v508 + 420;
                      *&v520[8] = 1024;
                      *&v520[10] = v201;
                      _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d", buf, 0x1Cu);
                    }

                    v203 = __nwlog_obj();
                    v199 = v203;
                    if (v201 == 22)
                    {
                      v175 = v496;
                      if (!os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_526;
                      }

                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = 22;
                      v200 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d";
                      goto LABEL_488;
                    }

                    v204 = output_handler_low;
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v201;
                    LODWORD(v493) = 18;
                    v205 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v203, 16, "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d", buf, v493);
                    v512[0] = OS_LOG_TYPE_ERROR;
                    v510[0] = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v205, v512, v510))
                    {
                      goto LABEL_523;
                    }

                    if (v512[0] == OS_LOG_TYPE_FAULT)
                    {
                      v206 = __nwlog_obj();
                      v207 = v512[0];
                      if (os_log_type_enabled(v206, v512[0]))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v201;
                        v208 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d";
                        goto LABEL_522;
                      }

LABEL_523:
                      v175 = v496;
                      output_handler_low = v204;
                      if (v205)
                      {
                        free(v205);
                      }

                      v95 = v504;
LABEL_526:
                      if (!_nw_ip_options_get_receive_hop_limit())
                      {
                        goto LABEL_576;
                      }

                      if (output_handler_low == 2)
                      {
                        if (!setsockopt(HIDWORD(v508[4].callbacks), 0, 24, &v516, 4u))
                        {
                          goto LABEL_576;
                        }

                        v213 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v214 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 2082;
                          *v520 = v508 + 420;
                          *&v520[8] = 1024;
                          *&v520[10] = v213;
                          _os_log_impl(&dword_181A37000, v214, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v215 = __nwlog_obj();
                        v216 = v215;
                        if (v213 == 22)
                        {
                          v175 = v496;
                          if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = 22;
                            v217 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d";
LABEL_545:
                            _os_log_impl(&dword_181A37000, v216, OS_LOG_TYPE_ERROR, v217, buf, 0x12u);
                            goto LABEL_576;
                          }

                          goto LABEL_576;
                        }

                        v221 = output_handler_low;
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v213;
                        LODWORD(v493) = 18;
                        v222 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v215, 16, "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d", buf, v493);
                        v512[0] = OS_LOG_TYPE_ERROR;
                        v510[0] = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v222, v512, v510))
                        {
                          goto LABEL_573;
                        }

                        if (v512[0] == OS_LOG_TYPE_FAULT)
                        {
                          v223 = __nwlog_obj();
                          v224 = v512[0];
                          if (os_log_type_enabled(v223, v512[0]))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v213;
                            v225 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d";
LABEL_572:
                            _os_log_impl(&dword_181A37000, v223, v224, v225, buf, 0x12u);
                            goto LABEL_573;
                          }

                          goto LABEL_573;
                        }

                        if (v510[0] != OS_LOG_TYPE_INFO)
                        {
                          v223 = __nwlog_obj();
                          v224 = v512[0];
                          if (os_log_type_enabled(v223, v512[0]))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v213;
                            v225 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        v226 = __nw_create_backtrace_string();
                        v223 = __nwlog_obj();
                        v224 = v512[0];
                        v227 = os_log_type_enabled(v223, v512[0]);
                        if (!v226)
                        {
                          if (v227)
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v213;
                            v225 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d, no backtrace";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        if (v227)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v213;
                          *&v520[4] = 2082;
                          *&v520[6] = v226;
                          v228 = "%{public}s setsockopt IP_RECVTTL failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_562:
                          _os_log_impl(&dword_181A37000, v223, v224, v228, buf, 0x1Cu);
                        }
                      }

                      else
                      {
                        if (output_handler_low != 30 || !setsockopt(HIDWORD(v508[4].callbacks), 41, 37, &v516, 4u))
                        {
                          goto LABEL_576;
                        }

                        v218 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v219 = gconnectionLogObj;
                        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 2082;
                          *v520 = v508 + 420;
                          *&v520[8] = 1024;
                          *&v520[10] = v218;
                          _os_log_impl(&dword_181A37000, v219, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d", buf, 0x1Cu);
                        }

                        v220 = __nwlog_obj();
                        v216 = v220;
                        if (v218 == 22)
                        {
                          v175 = v496;
                          if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = 22;
                            v217 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d";
                            goto LABEL_545;
                          }

LABEL_576:
                          if (nw_ip_options_get_fragmentation_value(v174) == 1 || nw_parameters_get_upper_transport_protocol(v56) == 253)
                          {
                            if (output_handler_low == 2)
                            {
                              if (setsockopt(HIDWORD(v508[4].callbacks), 0, 28, &v516, 4u))
                              {
                                v230 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v231 = gconnectionLogObj;
                                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446722;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 2082;
                                  *v520 = v508 + 420;
                                  *&v520[8] = 1024;
                                  *&v520[10] = v230;
                                  _os_log_impl(&dword_181A37000, v231, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d", buf, 0x1Cu);
                                }

                                v232 = __nwlog_obj();
                                v233 = v232;
                                v234 = output_handler_low;
                                if (v230 == 22)
                                {
                                  if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446466;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 1024;
                                    *v520 = 22;
                                    _os_log_impl(&dword_181A37000, v233, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d", buf, 0x12u);
                                  }

                                  v235 = 0;
                                  v175 = v496;
                                  goto LABEL_690;
                                }

                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v230;
                                LODWORD(v493) = 18;
                                v240 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v232, 16, "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d", buf, v493);
                                v512[0] = OS_LOG_TYPE_ERROR;
                                v510[0] = OS_LOG_TYPE_DEFAULT;
                                if (__nwlog_fault(v240, v512, v510))
                                {
                                  if (v512[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v241 = __nwlog_obj();
                                    v242 = v512[0];
                                    if (os_log_type_enabled(v241, v512[0]))
                                    {
                                      *buf = 136446466;
                                      v518 = "nw_socket_set_common_sockopts";
                                      v519 = 1024;
                                      *v520 = v230;
                                      v243 = "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d";
LABEL_623:
                                      _os_log_impl(&dword_181A37000, v241, v242, v243, buf, 0x12u);
                                    }
                                  }

                                  else if (v510[0] == OS_LOG_TYPE_INFO)
                                  {
                                    v248 = __nw_create_backtrace_string();
                                    v241 = __nwlog_obj();
                                    v242 = v512[0];
                                    v249 = os_log_type_enabled(v241, v512[0]);
                                    if (v248)
                                    {
                                      if (v249)
                                      {
                                        *buf = 136446722;
                                        v518 = "nw_socket_set_common_sockopts";
                                        v519 = 1024;
                                        *v520 = v230;
                                        *&v520[4] = 2082;
                                        *&v520[6] = v248;
                                        _os_log_impl(&dword_181A37000, v241, v242, "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                      }

                                      free(v248);
                                      goto LABEL_624;
                                    }

                                    if (v249)
                                    {
                                      *buf = 136446466;
                                      v518 = "nw_socket_set_common_sockopts";
                                      v519 = 1024;
                                      *v520 = v230;
                                      v243 = "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d, no backtrace";
                                      goto LABEL_623;
                                    }
                                  }

                                  else
                                  {
                                    v241 = __nwlog_obj();
                                    v242 = v512[0];
                                    if (os_log_type_enabled(v241, v512[0]))
                                    {
                                      *buf = 136446466;
                                      v518 = "nw_socket_set_common_sockopts";
                                      v519 = 1024;
                                      *v520 = v230;
                                      v243 = "%{public}s setsockopt IP_DONTFRAG failed %{darwin.errno}d, backtrace limit exceeded";
                                      goto LABEL_623;
                                    }
                                  }
                                }

LABEL_624:
                                if (v240)
                                {
                                  free(v240);
                                }

                                v235 = 0;
                                v95 = v504;
                                v175 = v496;
LABEL_690:
                                if (!nw_endpoint_is_multicast(v95))
                                {
                                  goto LABEL_758;
                                }

                                disable_multicast_loopback = _nw_ip_options_get_disable_multicast_loopback();
                                if (v234 == 2 && v175 && _nw_protocol_options_is_udp(v175))
                                {
                                  if (disable_multicast_loopback)
                                  {
                                    v274 = &v515;
                                  }

                                  else
                                  {
                                    v274 = &v516;
                                  }

                                  if (!setsockopt(HIDWORD(v508[4].callbacks), 0, 11, v274, 4u))
                                  {
                                    goto LABEL_758;
                                  }

                                  v275 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                                  if (__nwlog_connection_log::onceToken[0] != -1)
                                  {
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                  }

                                  v276 = gconnectionLogObj;
                                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446722;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 2082;
                                    *v520 = v508 + 420;
                                    *&v520[8] = 1024;
                                    *&v520[10] = v275;
                                    _os_log_impl(&dword_181A37000, v276, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x1Cu);
                                  }

                                  v277 = __nwlog_obj();
                                  v278 = v277;
                                  if (v275 == 22)
                                  {
                                    v175 = v496;
                                    if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 136446466;
                                      v518 = "nw_socket_set_common_sockopts";
                                      v519 = 1024;
                                      *v520 = 22;
                                      v279 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d";
                                      v280 = v278;
                                      v281 = OS_LOG_TYPE_ERROR;
                                      v282 = 18;
LABEL_751:
                                      _os_log_impl(&dword_181A37000, v280, v281, v279, buf, v282);
                                      goto LABEL_758;
                                    }

                                    goto LABEL_758;
                                  }

                                  *buf = 136446466;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = v275;
                                  LODWORD(v493) = 18;
                                  v289 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v277, 16, "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d", buf, v493);
                                  v512[0] = OS_LOG_TYPE_ERROR;
                                  v510[0] = OS_LOG_TYPE_DEFAULT;
                                  if (__nwlog_fault(v289, v512, v510))
                                  {
                                    if (v512[0] == OS_LOG_TYPE_FAULT)
                                    {
                                      v290 = __nwlog_obj();
                                      v291 = v512[0];
                                      if (os_log_type_enabled(v290, v512[0]))
                                      {
                                        *buf = 136446466;
                                        v518 = "nw_socket_set_common_sockopts";
                                        v519 = 1024;
                                        *v520 = v275;
                                        v292 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d";
LABEL_754:
                                        _os_log_impl(&dword_181A37000, v290, v291, v292, buf, 0x12u);
                                      }
                                    }

                                    else if (v510[0] == OS_LOG_TYPE_INFO)
                                    {
                                      v297 = __nw_create_backtrace_string();
                                      v290 = __nwlog_obj();
                                      v291 = v512[0];
                                      v298 = os_log_type_enabled(v290, v512[0]);
                                      if (v297)
                                      {
                                        if (v298)
                                        {
                                          *buf = 136446722;
                                          v518 = "nw_socket_set_common_sockopts";
                                          v519 = 1024;
                                          *v520 = v275;
                                          *&v520[4] = 2082;
                                          *&v520[6] = v297;
                                          _os_log_impl(&dword_181A37000, v290, v291, "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                        }

                                        free(v297);
                                        goto LABEL_755;
                                      }

                                      if (v298)
                                      {
                                        *buf = 136446466;
                                        v518 = "nw_socket_set_common_sockopts";
                                        v519 = 1024;
                                        *v520 = v275;
                                        v292 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace";
                                        goto LABEL_754;
                                      }
                                    }

                                    else
                                    {
                                      v290 = __nwlog_obj();
                                      v291 = v512[0];
                                      if (os_log_type_enabled(v290, v512[0]))
                                      {
                                        *buf = 136446466;
                                        v518 = "nw_socket_set_common_sockopts";
                                        v519 = 1024;
                                        *v520 = v275;
                                        v292 = "%{public}s setsockopt IP_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded";
                                        goto LABEL_754;
                                      }
                                    }
                                  }

LABEL_755:
                                  v175 = v496;
                                  if (v289)
                                  {
                                    free(v289);
                                  }

                                  v95 = v504;
                                  goto LABEL_758;
                                }

                                if (v175)
                                {
                                  v283 = v235;
                                }

                                else
                                {
                                  v283 = 0;
                                }

                                if (v283 != 1 || !_nw_protocol_options_is_udp(v175))
                                {
                                  goto LABEL_758;
                                }

                                if (disable_multicast_loopback)
                                {
                                  v284 = &v515;
                                }

                                else
                                {
                                  v284 = &v516;
                                }

                                if (!setsockopt(HIDWORD(v508[4].callbacks), 41, 11, v284, 4u))
                                {
LABEL_747:
                                  v303 = __nwlog_obj();
                                  if (os_log_type_enabled(v303, OS_LOG_TYPE_DEBUG))
                                  {
                                    v304 = "Enabled";
                                    if (disable_multicast_loopback)
                                    {
                                      v304 = "Disabled";
                                    }

                                    *buf = 136446466;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 2080;
                                    *v520 = v304;
                                    v279 = "%{public}s %s multicast loopback";
                                    v280 = v303;
                                    v281 = OS_LOG_TYPE_DEBUG;
                                    v282 = 22;
                                    goto LABEL_751;
                                  }

LABEL_758:
                                  os_release(v174);
                                  output_handler_low = v234;
                                  goto LABEL_759;
                                }

                                v285 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v286 = gconnectionLogObj;
                                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446722;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 2082;
                                  *v520 = v508 + 420;
                                  *&v520[8] = 1024;
                                  *&v520[10] = v285;
                                  _os_log_impl(&dword_181A37000, v286, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x1Cu);
                                }

                                v287 = __nwlog_obj();
                                v288 = v287;
                                if (v285 == 22)
                                {
                                  v175 = v496;
                                  if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446466;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 1024;
                                    *v520 = 22;
                                    _os_log_impl(&dword_181A37000, v288, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x12u);
                                  }

                                  goto LABEL_747;
                                }

                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v285;
                                LODWORD(v493) = 18;
                                v293 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v287, 16, "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, v493);
                                v512[0] = OS_LOG_TYPE_ERROR;
                                v510[0] = OS_LOG_TYPE_DEFAULT;
                                if (__nwlog_fault(v293, v512, v510))
                                {
                                  if (v512[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v294 = __nwlog_obj();
                                    v295 = v512[0];
                                    if (!os_log_type_enabled(v294, v512[0]))
                                    {
                                      goto LABEL_745;
                                    }

                                    *buf = 136446466;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 1024;
                                    *v520 = v285;
                                    v296 = "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d";
LABEL_743:
                                    v302 = v294;
LABEL_744:
                                    _os_log_impl(&dword_181A37000, v302, v295, v296, buf, 0x12u);
                                    goto LABEL_745;
                                  }

                                  if (v510[0] != OS_LOG_TYPE_INFO)
                                  {
                                    v294 = __nwlog_obj();
                                    v295 = v512[0];
                                    if (!os_log_type_enabled(v294, v512[0]))
                                    {
                                      goto LABEL_745;
                                    }

                                    *buf = 136446466;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 1024;
                                    *v520 = v285;
                                    v296 = "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded";
                                    goto LABEL_743;
                                  }

                                  v299 = __nw_create_backtrace_string();
                                  v300 = __nwlog_obj();
                                  v295 = v512[0];
                                  log = v300;
                                  v301 = os_log_type_enabled(v300, v512[0]);
                                  if (v299)
                                  {
                                    if (v301)
                                    {
                                      *buf = 136446722;
                                      v518 = "nw_socket_set_common_sockopts";
                                      v519 = 1024;
                                      *v520 = v285;
                                      *&v520[4] = 2082;
                                      *&v520[6] = v299;
                                      _os_log_impl(&dword_181A37000, log, v295, "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                    }

                                    free(v299);
                                    goto LABEL_745;
                                  }

                                  if (v301)
                                  {
                                    *buf = 136446466;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 1024;
                                    *v520 = v285;
                                    v296 = "%{public}s setsockopt IPV6_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace";
                                    v302 = log;
                                    goto LABEL_744;
                                  }
                                }

LABEL_745:
                                v95 = v504;
                                v175 = v496;
                                if (v293)
                                {
                                  free(v293);
                                }

                                goto LABEL_747;
                              }

LABEL_598:
                              v234 = output_handler_low;
                              v235 = 0;
                              goto LABEL_690;
                            }

                            if (output_handler_low != 30)
                            {
                              goto LABEL_598;
                            }

                            if (setsockopt(HIDWORD(v508[4].callbacks), 41, 62, &v516, 4u))
                            {
                              v236 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v237 = gconnectionLogObj;
                              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446722;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 2082;
                                *v520 = v508 + 420;
                                *&v520[8] = 1024;
                                *&v520[10] = v236;
                                _os_log_impl(&dword_181A37000, v237, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d", buf, 0x1Cu);
                              }

                              v238 = __nwlog_obj();
                              v239 = v238;
                              if (v236 == 22)
                              {
                                v175 = v496;
                                if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136446466;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = 22;
                                  _os_log_impl(&dword_181A37000, v239, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d", buf, 0x12u);
                                }

                                goto LABEL_633;
                              }

                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = v236;
                              LODWORD(v493) = 18;
                              v244 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v238, 16, "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d", buf, v493);
                              v512[0] = OS_LOG_TYPE_ERROR;
                              v510[0] = OS_LOG_TYPE_DEFAULT;
                              if (!__nwlog_fault(v244, v512, v510))
                              {
                                goto LABEL_630;
                              }

                              if (v512[0] == OS_LOG_TYPE_FAULT)
                              {
                                v245 = __nwlog_obj();
                                v246 = v512[0];
                                if (os_log_type_enabled(v245, v512[0]))
                                {
                                  *buf = 136446466;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = v236;
                                  v247 = "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d";
LABEL_629:
                                  _os_log_impl(&dword_181A37000, v245, v246, v247, buf, 0x12u);
                                }
                              }

                              else if (v510[0] == OS_LOG_TYPE_INFO)
                              {
                                v250 = __nw_create_backtrace_string();
                                v245 = __nwlog_obj();
                                v246 = v512[0];
                                v251 = os_log_type_enabled(v245, v512[0]);
                                if (v250)
                                {
                                  if (v251)
                                  {
                                    *buf = 136446722;
                                    v518 = "nw_socket_set_common_sockopts";
                                    v519 = 1024;
                                    *v520 = v236;
                                    *&v520[4] = 2082;
                                    *&v520[6] = v250;
                                    _os_log_impl(&dword_181A37000, v245, v246, "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                  }

                                  free(v250);
                                  goto LABEL_630;
                                }

                                if (v251)
                                {
                                  *buf = 136446466;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = v236;
                                  v247 = "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d, no backtrace";
                                  goto LABEL_629;
                                }
                              }

                              else
                              {
                                v245 = __nwlog_obj();
                                v246 = v512[0];
                                if (os_log_type_enabled(v245, v512[0]))
                                {
                                  *buf = 136446466;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = v236;
                                  v247 = "%{public}s setsockopt IPV6_DONTFRAG failed %{darwin.errno}d, backtrace limit exceeded";
                                  goto LABEL_629;
                                }
                              }

LABEL_630:
                              v175 = v496;
                              if (v244)
                              {
                                free(v244);
                              }

                              v95 = v504;
                            }
                          }

                          else if (output_handler_low != 30)
                          {
                            goto LABEL_598;
                          }

LABEL_633:
                          if (!_nw_ip_options_get_use_minimum_mtu() || !setsockopt(HIDWORD(v508[4].callbacks), 41, 42, &v516, 4u))
                          {
                            goto LABEL_659;
                          }

                          v252 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v253 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 2082;
                            *v520 = v508 + 420;
                            *&v520[8] = 1024;
                            *&v520[10] = v252;
                            _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d", buf, 0x1Cu);
                          }

                          v254 = __nwlog_obj();
                          v255 = v254;
                          if (v252 == 22)
                          {
                            v175 = v496;
                            if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = 22;
                              _os_log_impl(&dword_181A37000, v255, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d", buf, 0x12u);
                            }

                            goto LABEL_659;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v252;
                          LODWORD(v493) = 18;
                          v256 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v254, 16, "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d", buf, v493);
                          v512[0] = OS_LOG_TYPE_ERROR;
                          v510[0] = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v256, v512, v510))
                          {
                            if (v512[0] == OS_LOG_TYPE_FAULT)
                            {
                              v257 = __nwlog_obj();
                              v258 = v512[0];
                              if (os_log_type_enabled(v257, v512[0]))
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v252;
                                v259 = "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d";
LABEL_655:
                                _os_log_impl(&dword_181A37000, v257, v258, v259, buf, 0x12u);
                              }
                            }

                            else if (v510[0] == OS_LOG_TYPE_INFO)
                            {
                              v260 = __nw_create_backtrace_string();
                              v257 = __nwlog_obj();
                              v258 = v512[0];
                              v261 = os_log_type_enabled(v257, v512[0]);
                              if (v260)
                              {
                                if (v261)
                                {
                                  *buf = 136446722;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = v252;
                                  *&v520[4] = 2082;
                                  *&v520[6] = v260;
                                  _os_log_impl(&dword_181A37000, v257, v258, "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v260);
                                goto LABEL_656;
                              }

                              if (v261)
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v252;
                                v259 = "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d, no backtrace";
                                goto LABEL_655;
                              }
                            }

                            else
                            {
                              v257 = __nwlog_obj();
                              v258 = v512[0];
                              if (os_log_type_enabled(v257, v512[0]))
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v252;
                                v259 = "%{public}s setsockopt IPV6_USE_MIN_MTU failed %{darwin.errno}d, backtrace limit exceeded";
                                goto LABEL_655;
                              }
                            }
                          }

LABEL_656:
                          v175 = v496;
                          if (v256)
                          {
                            free(v256);
                          }

                          v95 = v504;
LABEL_659:
                          local_address_preference = _nw_ip_options_get_local_address_preference();
                          if (!local_address_preference)
                          {
                            goto LABEL_689;
                          }

                          *v512 = -1;
                          if (local_address_preference == 2)
                          {
                            *v512 = 0;
                          }

                          else if (local_address_preference == 1)
                          {
                            *v512 = 1;
                          }

                          if (!setsockopt(HIDWORD(v508[4].callbacks), 41, 63, v512, 4u))
                          {
                            goto LABEL_689;
                          }

                          v263 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          if (__nwlog_connection_log::onceToken[0] != -1)
                          {
                            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                          }

                          v264 = gconnectionLogObj;
                          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 2082;
                            *v520 = v508 + 420;
                            *&v520[8] = 1024;
                            *&v520[10] = v263;
                            _os_log_impl(&dword_181A37000, v264, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d", buf, 0x1Cu);
                          }

                          v265 = __nwlog_obj();
                          v266 = v265;
                          if (v263 == 22)
                          {
                            v175 = v496;
                            if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446466;
                              v518 = "nw_socket_set_common_sockopts";
                              v519 = 1024;
                              *v520 = 22;
                              _os_log_impl(&dword_181A37000, v266, OS_LOG_TYPE_ERROR, "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d", buf, 0x12u);
                            }

LABEL_689:
                            v234 = output_handler_low;
                            v235 = 1;
                            goto LABEL_690;
                          }

                          *buf = 136446466;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v263;
                          LODWORD(v493) = 18;
                          v267 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v265, 16, "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d", buf, v493);
                          v510[0] = OS_LOG_TYPE_ERROR;
                          v511 = OS_LOG_TYPE_DEFAULT;
                          if (__nwlog_fault(v267, v510, &v511))
                          {
                            if (v510[0] == OS_LOG_TYPE_FAULT)
                            {
                              v268 = __nwlog_obj();
                              v269 = v510[0];
                              if (os_log_type_enabled(v268, v510[0]))
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v263;
                                v270 = "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d";
LABEL_685:
                                _os_log_impl(&dword_181A37000, v268, v269, v270, buf, 0x12u);
                              }
                            }

                            else if (v511 == OS_LOG_TYPE_INFO)
                            {
                              v271 = __nw_create_backtrace_string();
                              v268 = __nwlog_obj();
                              v269 = v510[0];
                              v272 = os_log_type_enabled(v268, v510[0]);
                              if (v271)
                              {
                                if (v272)
                                {
                                  *buf = 136446722;
                                  v518 = "nw_socket_set_common_sockopts";
                                  v519 = 1024;
                                  *v520 = v263;
                                  *&v520[4] = 2082;
                                  *&v520[6] = v271;
                                  _os_log_impl(&dword_181A37000, v268, v269, "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v271);
                                goto LABEL_686;
                              }

                              if (v272)
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v263;
                                v270 = "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d, no backtrace";
                                goto LABEL_685;
                              }
                            }

                            else
                            {
                              v268 = __nwlog_obj();
                              v269 = v510[0];
                              if (os_log_type_enabled(v268, v510[0]))
                              {
                                *buf = 136446466;
                                v518 = "nw_socket_set_common_sockopts";
                                v519 = 1024;
                                *v520 = v263;
                                v270 = "%{public}s setsockopt IPV6_PREFER_TEMPADDR failed %{darwin.errno}d, backtrace limit exceeded";
                                goto LABEL_685;
                              }
                            }
                          }

LABEL_686:
                          v175 = v496;
                          if (v267)
                          {
                            free(v267);
                          }

                          v95 = v504;
                          goto LABEL_689;
                        }

                        v221 = output_handler_low;
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v218;
                        LODWORD(v493) = 18;
                        v222 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v220, 16, "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d", buf, v493);
                        v512[0] = OS_LOG_TYPE_ERROR;
                        v510[0] = OS_LOG_TYPE_DEFAULT;
                        if (!__nwlog_fault(v222, v512, v510))
                        {
                          goto LABEL_573;
                        }

                        if (v512[0] == OS_LOG_TYPE_FAULT)
                        {
                          v223 = __nwlog_obj();
                          v224 = v512[0];
                          if (os_log_type_enabled(v223, v512[0]))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v218;
                            v225 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d";
                            goto LABEL_572;
                          }

LABEL_573:
                          v175 = v496;
                          output_handler_low = v221;
                          if (v222)
                          {
                            free(v222);
                          }

                          v95 = v504;
                          goto LABEL_576;
                        }

                        if (v510[0] != OS_LOG_TYPE_INFO)
                        {
                          v223 = __nwlog_obj();
                          v224 = v512[0];
                          if (os_log_type_enabled(v223, v512[0]))
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v218;
                            v225 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d, backtrace limit exceeded";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        v226 = __nw_create_backtrace_string();
                        v223 = __nwlog_obj();
                        v224 = v512[0];
                        v229 = os_log_type_enabled(v223, v512[0]);
                        if (!v226)
                        {
                          if (v229)
                          {
                            *buf = 136446466;
                            v518 = "nw_socket_set_common_sockopts";
                            v519 = 1024;
                            *v520 = v218;
                            v225 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d, no backtrace";
                            goto LABEL_572;
                          }

                          goto LABEL_573;
                        }

                        if (v229)
                        {
                          *buf = 136446722;
                          v518 = "nw_socket_set_common_sockopts";
                          v519 = 1024;
                          *v520 = v218;
                          *&v520[4] = 2082;
                          *&v520[6] = v226;
                          v228 = "%{public}s setsockopt IPV6_RECVHOPLIMIT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                          goto LABEL_562;
                        }
                      }

                      free(v226);
                      goto LABEL_573;
                    }

                    if (v510[0] != OS_LOG_TYPE_INFO)
                    {
                      v206 = __nwlog_obj();
                      v207 = v512[0];
                      if (os_log_type_enabled(v206, v512[0]))
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v201;
                        v208 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d, backtrace limit exceeded";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    v209 = __nw_create_backtrace_string();
                    v206 = __nwlog_obj();
                    v207 = v512[0];
                    v212 = os_log_type_enabled(v206, v512[0]);
                    if (!v209)
                    {
                      if (v212)
                      {
                        *buf = 136446466;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v201;
                        v208 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d, no backtrace";
                        goto LABEL_522;
                      }

                      goto LABEL_523;
                    }

                    if (v212)
                    {
                      *buf = 136446722;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v201;
                      *&v520[4] = 2082;
                      *&v520[6] = v209;
                      v211 = "%{public}s setsockopt IPV6_HOPLIMIT failed %{darwin.errno}d, dumping backtrace:%{public}s";
                      goto LABEL_505;
                    }
                  }

                  free(v209);
                  goto LABEL_523;
                }

                v176 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v177 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 2082;
                  *v520 = v508 + 420;
                  *&v520[8] = 1024;
                  *&v520[10] = v176;
                  _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d", buf, 0x1Cu);
                }

                v178 = __nwlog_obj();
                v179 = v178;
                if (v176 == 22)
                {
                  v175 = v496;
                  if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = 22;
                    _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_469;
                }

                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v176;
                LODWORD(v493) = 18;
                v184 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v178, 16, "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d", buf, v493);
                v513[0] = OS_LOG_TYPE_ERROR;
                v512[0] = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v184, v513, v512))
                {
                  if (v513[0] == OS_LOG_TYPE_FAULT)
                  {
                    v185 = __nwlog_obj();
                    v186 = v513[0];
                    if (os_log_type_enabled(v185, v513[0]))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v176;
                      v187 = "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d";
LABEL_465:
                      _os_log_impl(&dword_181A37000, v185, v186, v187, buf, 0x12u);
                    }
                  }

                  else if (v512[0] == OS_LOG_TYPE_INFO)
                  {
                    v192 = __nw_create_backtrace_string();
                    v185 = __nwlog_obj();
                    v186 = v513[0];
                    v193 = os_log_type_enabled(v185, v513[0]);
                    if (v192)
                    {
                      if (v193)
                      {
                        *buf = 136446722;
                        v518 = "nw_socket_set_common_sockopts";
                        v519 = 1024;
                        *v520 = v176;
                        *&v520[4] = 2082;
                        *&v520[6] = v192;
                        _os_log_impl(&dword_181A37000, v185, v186, "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v192);
                      goto LABEL_466;
                    }

                    if (v193)
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v176;
                      v187 = "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d, no backtrace";
                      goto LABEL_465;
                    }
                  }

                  else
                  {
                    v185 = __nwlog_obj();
                    v186 = v513[0];
                    if (os_log_type_enabled(v185, v513[0]))
                    {
                      *buf = 136446466;
                      v518 = "nw_socket_set_common_sockopts";
                      v519 = 1024;
                      *v520 = v176;
                      v187 = "%{public}s setsockopt SO_TIMESTAMP_CONTINUOUS failed %{darwin.errno}d, backtrace limit exceeded";
                      goto LABEL_465;
                    }
                  }
                }

LABEL_466:
                v175 = v496;
                if (v184)
                {
                  free(v184);
                }

                v95 = v504;
                goto LABEL_469;
              }

              v109 = output_handler_low;
              v110 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v111 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 2082;
                *v520 = v6 + 420;
                *&v520[8] = 1024;
                *&v520[10] = v521[0];
                *&v520[14] = 1024;
                *&v520[16] = v110;
                _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_ERROR, "%{public}s %{public}s set source pid to %d failed %{darwin.errno}d", buf, 0x22u);
              }

              output_handler_low = v109;
            }

            if (!_nw_parameters_has_delegated_proc_uuid(v56))
            {
              goto LABEL_294;
            }

            v521[0] = 0;
            v521[1] = 0;
            _nw_parameters_get_e_proc_uuid();
            if (!setsockopt(HIDWORD(v6[4].callbacks), 0xFFFF, 4360, v521, 0x10u))
            {
              if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v121 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 2082;
                  *v520 = v6 + 420;
                  *&v520[8] = 1042;
                  *&v520[10] = 16;
                  *&v520[14] = 2098;
                  *&v520[16] = v521;
                  v116 = "%{public}s %{public}s successfully set source application uuid to %{public,uuid_t}.16P";
                  v117 = v121;
                  v118 = OS_LOG_TYPE_DEBUG;
                  v119 = 38;
                  goto LABEL_276;
                }
              }

              goto LABEL_294;
            }

            v112 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v113 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v518 = "nw_socket_set_common_sockopts";
              v519 = 2082;
              *v520 = v6 + 420;
              *&v520[8] = 1024;
              *&v520[10] = v112;
              _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s set source app uuid failed %{darwin.errno}d", buf, 0x1Cu);
            }

            v114 = __nwlog_obj();
            v115 = v114;
            if (v112 == 22)
            {
              v95 = v504;
              if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = 22;
                v116 = "%{public}s set source app uuid failed %{darwin.errno}d";
                v117 = v115;
                v118 = OS_LOG_TYPE_ERROR;
                v119 = 18;
LABEL_276:
                _os_log_impl(&dword_181A37000, v117, v118, v116, buf, v119);
                goto LABEL_294;
              }

              goto LABEL_294;
            }

            v499 = v56;
            v122 = v4;
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v112;
            LODWORD(v493) = 18;
            v123 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v114, 16, "%{public}s set source app uuid failed %{darwin.errno}d", buf, v493);
            type[0] = OS_LOG_TYPE_ERROR;
            v513[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v123, type, v513))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v124 = __nwlog_obj();
                v125 = type[0];
                if (os_log_type_enabled(v124, type[0]))
                {
                  *buf = 136446466;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v112;
                  v126 = "%{public}s set source app uuid failed %{darwin.errno}d";
LABEL_290:
                  _os_log_impl(&dword_181A37000, v124, v125, v126, buf, 0x12u);
                }
              }

              else if (v513[0] == OS_LOG_TYPE_INFO)
              {
                v127 = __nw_create_backtrace_string();
                v124 = __nwlog_obj();
                v125 = type[0];
                v128 = os_log_type_enabled(v124, type[0]);
                if (v127)
                {
                  if (v128)
                  {
                    *buf = 136446722;
                    v518 = "nw_socket_set_common_sockopts";
                    v519 = 1024;
                    *v520 = v112;
                    *&v520[4] = 2082;
                    *&v520[6] = v127;
                    _os_log_impl(&dword_181A37000, v124, v125, "%{public}s set source app uuid failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v127);
                  goto LABEL_291;
                }

                if (v128)
                {
                  *buf = 136446466;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v112;
                  v126 = "%{public}s set source app uuid failed %{darwin.errno}d, no backtrace";
                  goto LABEL_290;
                }
              }

              else
              {
                v124 = __nwlog_obj();
                v125 = type[0];
                if (os_log_type_enabled(v124, type[0]))
                {
                  *buf = 136446466;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v112;
                  v126 = "%{public}s set source app uuid failed %{darwin.errno}d, backtrace limit exceeded";
                  goto LABEL_290;
                }
              }
            }

LABEL_291:
            v6 = v508;
            v95 = v504;
            if (v123)
            {
              free(v123);
            }

            v4 = v122;
            v56 = v499;
            goto LABEL_294;
          }

          v97 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v98 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 2082;
            *v520 = v6 + 420;
            *&v520[8] = 1024;
            *&v520[10] = v97;
            _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d", buf, 0x1Cu);
          }

          v99 = __nwlog_obj();
          v100 = v99;
          if (v97 == 22)
          {
            v95 = v504;
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v518 = "nw_socket_set_common_sockopts";
              v519 = 1024;
              *v520 = 22;
              _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_250;
          }

          v498 = v56;
          v101 = v4;
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v97;
          LODWORD(v493) = 18;
          v102 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v99, 16, "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d", buf, v493);
          LOBYTE(v521[0]) = 16;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v102, v521, type))
          {
            if (LOBYTE(v521[0]) == 17)
            {
              v103 = __nwlog_obj();
              v104 = v521[0];
              if (os_log_type_enabled(v103, v521[0]))
              {
                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v97;
                v105 = "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d";
LABEL_246:
                _os_log_impl(&dword_181A37000, v103, v104, v105, buf, 0x12u);
              }
            }

            else if (type[0] == OS_LOG_TYPE_INFO)
            {
              v106 = __nw_create_backtrace_string();
              v103 = __nwlog_obj();
              v104 = v521[0];
              v107 = os_log_type_enabled(v103, v521[0]);
              if (v106)
              {
                if (v107)
                {
                  *buf = 136446722;
                  v518 = "nw_socket_set_common_sockopts";
                  v519 = 1024;
                  *v520 = v97;
                  *&v520[4] = 2082;
                  *&v520[6] = v106;
                  _os_log_impl(&dword_181A37000, v103, v104, "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v106);
                goto LABEL_247;
              }

              if (v107)
              {
                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v97;
                v105 = "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d, no backtrace";
                goto LABEL_246;
              }
            }

            else
            {
              v103 = __nwlog_obj();
              v104 = v521[0];
              if (os_log_type_enabled(v103, v521[0]))
              {
                *buf = 136446466;
                v518 = "nw_socket_set_common_sockopts";
                v519 = 1024;
                *v520 = v97;
                v105 = "%{public}s setsockopt SO_NOAPNFALLBK failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_246;
              }
            }
          }

LABEL_247:
          v6 = v508;
          v95 = v504;
          if (v102)
          {
            free(v102);
          }

          v4 = v101;
          v56 = v498;
          goto LABEL_250;
        }

        v495 = output_handler_low;
        v497 = v56;
        v75 = v4;
        v76 = __nwlog_obj();
        *buf = 136446466;
        v518 = "nw_socket_set_common_sockopts";
        v519 = 1024;
        *v520 = v65;
        LODWORD(v493) = 18;
        v77 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, v493);
        LOBYTE(v521[0]) = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if ((__nwlog_fault(v77, v521, type) & 1) == 0)
        {
          goto LABEL_217;
        }

        if (LOBYTE(v521[0]) == 17)
        {
          v78 = __nwlog_obj();
          v79 = v521[0];
          if (os_log_type_enabled(v78, v521[0]))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v65;
            v80 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d";
LABEL_216:
            _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0x12u);
          }

LABEL_217:
          v6 = v508;
          output_handler_low = v495;
          if (v77)
          {
            free(v77);
          }

          v4 = v75;
          v56 = v497;
          goto LABEL_220;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v78 = __nwlog_obj();
          v79 = v521[0];
          if (os_log_type_enabled(v78, v521[0]))
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v65;
            v80 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        v81 = __nw_create_backtrace_string();
        v78 = __nwlog_obj();
        v79 = v521[0];
        v82 = os_log_type_enabled(v78, v521[0]);
        if (!v81)
        {
          if (v82)
          {
            *buf = 136446466;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v65;
            v80 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, no backtrace";
            goto LABEL_216;
          }

          goto LABEL_217;
        }

        if (v82)
        {
          *buf = 136446722;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v65;
          *&v520[4] = 2082;
          *&v520[6] = v81;
          v83 = "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_199:
          _os_log_impl(&dword_181A37000, v78, v79, v83, buf, 0x1Cu);
        }
      }

      free(v81);
      goto LABEL_217;
    }

    v43 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v44 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v518 = "nw_socket_set_common_sockopts";
      v519 = 2082;
      *v520 = v6 + 420;
      *&v520[8] = 1024;
      *&v520[10] = v43;
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (v43 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v518 = "nw_socket_set_common_sockopts";
        v519 = 1024;
        *v520 = 22;
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_138;
    }

    v506 = v4;
    *buf = 136446466;
    v518 = "nw_socket_set_common_sockopts";
    v519 = 1024;
    *v520 = v43;
    v46 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d", buf, 18);
    uu[0] = 16;
    LOBYTE(v521[0]) = 0;
    if (__nwlog_fault(v46, uu, v521))
    {
      if (uu[0] == 17)
      {
        v47 = __nwlog_obj();
        v48 = uu[0];
        if (os_log_type_enabled(v47, uu[0]))
        {
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v43;
          v49 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d";
LABEL_134:
          _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x12u);
        }
      }

      else if (LOBYTE(v521[0]) == 1)
      {
        v52 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v48 = uu[0];
        v53 = os_log_type_enabled(v47, uu[0]);
        if (v52)
        {
          if (v53)
          {
            *buf = 136446722;
            v518 = "nw_socket_set_common_sockopts";
            v519 = 1024;
            *v520 = v43;
            *&v520[4] = 2082;
            *&v520[6] = v52;
            _os_log_impl(&dword_181A37000, v47, v48, "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v52);
          goto LABEL_135;
        }

        if (v53)
        {
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v43;
          v49 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, no backtrace";
          goto LABEL_134;
        }
      }

      else
      {
        v47 = __nwlog_obj();
        v48 = uu[0];
        if (os_log_type_enabled(v47, uu[0]))
        {
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 1024;
          *v520 = v43;
          v49 = "%{public}s setsockopt SO_NOSIGPIPE failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_134;
        }
      }
    }

LABEL_135:
    v6 = v508;
    if (v46)
    {
      free(v46);
    }

    v4 = v506;
    goto LABEL_138;
  }

  v86 = __nwlog_obj();
  *buf = 136446210;
  v518 = "nw_socket_set_common_sockopts";
  v87 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v86, 16, "%{public}s called with null protocol", buf, 12);
  uu[0] = 16;
  LOBYTE(v521[0]) = 0;
  if (__nwlog_fault(v87, uu, v521))
  {
    if (uu[0] == 17)
    {
      v88 = __nwlog_obj();
      v89 = uu[0];
      if (os_log_type_enabled(v88, uu[0]))
      {
        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v90 = "%{public}s called with null protocol";
LABEL_989:
        _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
      }
    }

    else if (LOBYTE(v521[0]) == 1)
    {
      v91 = __nw_create_backtrace_string();
      v88 = __nwlog_obj();
      v89 = uu[0];
      v92 = os_log_type_enabled(v88, uu[0]);
      if (v91)
      {
        if (v92)
        {
          *buf = 136446466;
          v518 = "nw_socket_set_common_sockopts";
          v519 = 2082;
          *v520 = v91;
          _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v91);
        goto LABEL_990;
      }

      if (v92)
      {
        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v90 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_989;
      }
    }

    else
    {
      v88 = __nwlog_obj();
      v89 = uu[0];
      if (os_log_type_enabled(v88, uu[0]))
      {
        *buf = 136446210;
        v518 = "nw_socket_set_common_sockopts";
        v90 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_989;
      }
    }
  }

LABEL_990:
  if (v87)
  {
    free(v87);
  }

  return 0;
}