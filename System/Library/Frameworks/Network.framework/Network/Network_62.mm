uint64_t nw_protocol_ipv6_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v74 = "nw_protocol_ipv6_finalize_output_frames";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (__nwlog_fault(v9, &type, &v71))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v74 = "nw_protocol_ipv6_finalize_output_frames";
              v12 = "%{public}s called with null ipv6";
LABEL_51:
              v34 = v10;
              v35 = v11;
LABEL_52:
              _os_log_impl(&dword_181A37000, v34, v35, v12, buf, 0xCu);
            }
          }

          else if (v71 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            v23 = type;
            v24 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v24)
              {
                *buf = 136446466;
                v74 = "nw_protocol_ipv6_finalize_output_frames";
                v75 = 2082;
                v76 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_53;
            }

            if (v24)
            {
              *buf = 136446210;
              v74 = "nw_protocol_ipv6_finalize_output_frames";
              v12 = "%{public}s called with null ipv6, no backtrace";
              v34 = v22;
              v35 = v23;
              goto LABEL_52;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v10 = gLogObj;
            v11 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446210;
              v74 = "nw_protocol_ipv6_finalize_output_frames";
              v12 = "%{public}s called with null ipv6, backtrace limit exceeded";
              goto LABEL_51;
            }
          }
        }

LABEL_53:
        if (v9)
        {
          free(v9);
        }

        result = 0;
        goto LABEL_56;
      }

      v8 = *a1[1].flow_id;
    }

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 0x40000000;
    v66 = ___ZL39nw_protocol_ipv6_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v67 = &__block_descriptor_tmp_46_91173;
    p_output_handler = &v8[1].output_handler;
    v69 = a2;
    v70 = a1;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v14 = *(tqh_first + 4);
      v15 = (v66)(v65);
      tqh_first = v14;
    }

    while ((v15 & 1) != 0);
    output_handler = v8->output_handler;
    if (!output_handler)
    {
      v54 = __nwlog_obj();
      *buf = 136446210;
      v74 = "__nw_protocol_finalize_output_frames";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null protocol", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v9, &type, &v71))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v74 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol";
        goto LABEL_51;
      }

      if (v71 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v74 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      v60 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v61 = os_log_type_enabled(v10, type);
      if (v60)
      {
        if (v61)
        {
          *buf = 136446466;
          v74 = "__nw_protocol_finalize_output_frames";
          v75 = 2082;
          v76 = v60;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v60);
        goto LABEL_53;
      }

      if (v61)
      {
        *buf = 136446210;
        v74 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    v17 = output_handler->handle;
    v18 = output_handler;
    if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *output_handler[1].flow_id) != 0)
    {
      v25 = v18[1].callbacks;
      if (v25)
      {
        v19 = 0;
        v18[1].callbacks = (&v25->add_input_handler + 1);
        v20 = output_handler->callbacks;
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v19 = 0;
        v20 = output_handler->callbacks;
        if (!v20)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v19 = 1;
      v20 = output_handler->callbacks;
      if (!v20)
      {
        goto LABEL_71;
      }
    }

    finalize_output_frames = v20->finalize_output_frames;
    if (finalize_output_frames)
    {
      result = finalize_output_frames(output_handler, a2);
      if (v19)
      {
LABEL_56:
        if ((v6 & 1) == 0)
        {
          v36 = v3->handle;
          if (v36 == &nw_protocol_ref_counted_handle || v36 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
          {
            v37 = v3[1].callbacks;
            if (v37)
            {
              v38 = (v37 - 1);
              v3[1].callbacks = v38;
              if (!v38)
              {
                v39 = result;
                v40 = *v3[1].flow_id;
                if (v40)
                {
                  *v3[1].flow_id = 0;
                  v40[2](v40);
                  _Block_release(v40);
                }

                if (v3[1].flow_id[8])
                {
                  v41 = *v3[1].flow_id;
                  if (v41)
                  {
                    _Block_release(v41);
                  }
                }

                free(v3);
                return v39;
              }
            }
          }
        }

        return result;
      }

LABEL_38:
      v28 = output_handler->handle;
      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
      {
        v29 = output_handler[1].callbacks;
        if (v29)
        {
          v30 = (v29 - 1);
          output_handler[1].callbacks = v30;
          if (!v30)
          {
            v31 = result;
            v32 = *output_handler[1].flow_id;
            if (v32)
            {
              *output_handler[1].flow_id = 0;
              v32[2](v32);
              _Block_release(v32);
            }

            if (output_handler[1].flow_id[8])
            {
              v33 = *output_handler[1].flow_id;
              if (v33)
              {
                _Block_release(v33);
              }
            }

            free(output_handler);
            result = v31;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_71:
    v42 = __nwlog_obj();
    name = output_handler->identifier->name;
    *buf = 136446722;
    v74 = "__nw_protocol_finalize_output_frames";
    if (!name)
    {
      name = "invalid";
    }

    v75 = 2082;
    v76 = name;
    v77 = 2048;
    v78 = output_handler;
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (__nwlog_fault(v44, &type, &v71))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (!os_log_type_enabled(v45, type))
        {
          goto LABEL_117;
        }

        v47 = output_handler->identifier->name;
        if (!v47)
        {
          v47 = "invalid";
        }

        *buf = 136446722;
        v74 = "__nw_protocol_finalize_output_frames";
        v75 = 2082;
        v76 = v47;
        v77 = 2048;
        v78 = output_handler;
        v48 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
LABEL_116:
        _os_log_impl(&dword_181A37000, v45, v46, v48, buf, 0x20u);
        goto LABEL_117;
      }

      if (v71 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (!os_log_type_enabled(v45, type))
        {
          goto LABEL_117;
        }

        v62 = output_handler->identifier->name;
        if (!v62)
        {
          v62 = "invalid";
        }

        *buf = 136446722;
        v74 = "__nw_protocol_finalize_output_frames";
        v75 = 2082;
        v76 = v62;
        v77 = 2048;
        v78 = output_handler;
        v48 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
        goto LABEL_116;
      }

      v64 = v19;
      v55 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v56 = os_log_type_enabled(v45, type);
      if (!v55)
      {
        v19 = v64;
        if (!v56)
        {
          goto LABEL_117;
        }

        v63 = output_handler->identifier->name;
        if (!v63)
        {
          v63 = "invalid";
        }

        *buf = 136446722;
        v74 = "__nw_protocol_finalize_output_frames";
        v75 = 2082;
        v76 = v63;
        v77 = 2048;
        v78 = output_handler;
        v48 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
        goto LABEL_116;
      }

      if (v56)
      {
        v57 = output_handler->identifier->name;
        if (!v57)
        {
          v57 = "invalid";
        }

        *buf = 136446978;
        v74 = "__nw_protocol_finalize_output_frames";
        v75 = 2082;
        v76 = v57;
        v77 = 2048;
        v78 = output_handler;
        v79 = 2082;
        v80 = v55;
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v55);
      v19 = v64;
    }

LABEL_117:
    if (v44)
    {
      free(v44);
    }

    result = 0;
    if (v19)
    {
      goto LABEL_56;
    }

    goto LABEL_38;
  }

  v49 = __nwlog_obj();
  *buf = 136446210;
  v74 = "nw_protocol_ipv6_finalize_output_frames";
  v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v71 = 0;
  if (__nwlog_fault(v50, &type, &v71))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v74 = "nw_protocol_ipv6_finalize_output_frames";
        v53 = "%{public}s called with null protocol";
LABEL_123:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v71 == 1)
    {
      v58 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v59 = os_log_type_enabled(v51, type);
      if (v58)
      {
        if (v59)
        {
          *buf = 136446466;
          v74 = "nw_protocol_ipv6_finalize_output_frames";
          v75 = 2082;
          v76 = v58;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v58);
        goto LABEL_124;
      }

      if (v59)
      {
        *buf = 136446210;
        v74 = "nw_protocol_ipv6_finalize_output_frames";
        v53 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_123;
      }
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v74 = "nw_protocol_ipv6_finalize_output_frames";
        v53 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_123;
      }
    }
  }

LABEL_124:
  if (v50)
  {
    free(v50);
  }

  return 0;
}

uint64_t ___ZL39nw_protocol_ipv6_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (nw_frame_get_finalizer_context(a2) == *(a1 + 32))
  {
    v12 = (*(a1 + 40) + 8);
    v13 = *(a2 + 32);
    v14 = *(a2 + 40);
    if (v13)
    {
      v12 = (v13 + 40);
    }

    *v12 = v14;
    *v14 = v13;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
  }

  else
  {
    nw_frame_unclaim(a2, v4, 0x28u, 0);
    v36 = 0;
    v5 = nw_frame_unclaimed_bytes(a2, &v36);
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = *(v6 + 48);
      if (v7)
      {
        ++*(v7 + 192);
      }

      v8 = *(v6 + 144) & 0xFFFFFF0F;
      *v5 = v8;
      if (a2)
      {
        v9 = v8 | ((*(a2 + 186) & 3) << 12);
        *v5 = v9;
        v10 = *(a2 + 184);
        if (v10)
        {
          goto LABEL_57;
        }

        goto LABEL_7;
      }

      v20 = v5;
      v21 = __nwlog_obj();
      *buf = 136446210;
      v40 = "__nw_frame_get_ecn_flag";
      v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null frame", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (__nwlog_fault(v22, &type, &v37))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v23 = __nwlog_obj();
          v24 = type;
          if (!os_log_type_enabled(v23, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v40 = "__nw_frame_get_ecn_flag";
          v25 = "%{public}s called with null frame";
LABEL_36:
          _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
          goto LABEL_37;
        }

        if (v37 != 1)
        {
          v23 = __nwlog_obj();
          v24 = type;
          if (!os_log_type_enabled(v23, type))
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v40 = "__nw_frame_get_ecn_flag";
          v25 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_36;
        }

        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = type;
        v27 = os_log_type_enabled(v23, type);
        if (!backtrace_string)
        {
          if (!v27)
          {
            goto LABEL_37;
          }

          *buf = 136446210;
          v40 = "__nw_frame_get_ecn_flag";
          v25 = "%{public}s called with null frame, no backtrace";
          goto LABEL_36;
        }

        if (v27)
        {
          *buf = 136446466;
          v40 = "__nw_frame_get_ecn_flag";
          v41 = 2082;
          v42 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_37:
      if (v22)
      {
        free(v22);
      }

      v28 = __nwlog_obj();
      *buf = 136446210;
      v40 = "__nw_frame_get_dscp_value";
      LODWORD(v35) = 12;
      v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null frame", buf, v35);
      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (!__nwlog_fault(v29, &type, &v37))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v40 = "__nw_frame_get_dscp_value";
          v32 = "%{public}s called with null frame";
LABEL_52:
          _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
        }
      }

      else if (v37 == 1)
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
            v40 = "__nw_frame_get_dscp_value";
            v41 = 2082;
            v42 = v33;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_53;
        }

        if (v34)
        {
          *buf = 136446210;
          v40 = "__nw_frame_get_dscp_value";
          v32 = "%{public}s called with null frame, no backtrace";
          goto LABEL_52;
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          v40 = "__nw_frame_get_dscp_value";
          v32 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_52;
        }
      }

LABEL_53:
      if (v29)
      {
        free(v29);
      }

      v5 = v20;
LABEL_7:
      v10 = *(*(a1 + 32) + 158);
      if (!v10)
      {
        LOBYTE(v11) = *v5;
LABEL_9:
        *v5 = v11 & 0xF | 0x60;
        *(v5 + 6) = *(*(a1 + 32) + 156);
        *(v5 + 7) = *(*(a1 + 32) + 157);
        *(v5 + 8) = *(*(a1 + 32) + 56);
        *(v5 + 24) = *(*(a1 + 32) + 72);
        *(v5 + 4) = bswap32(v36 - 40) >> 16;
        ++**(a1 + 32);
        return 1;
      }

      v9 = *v5;
LABEL_57:
      v11 = v9 | bswap32((v10 & 0x3F) << 22);
      *v5 = v11;
      goto LABEL_9;
    }

    if (!v6 || (*(v6 + 159) & 1) == 0)
    {
      v16 = __nwlog_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      v6 = *(a1 + 32);
      if (v17)
      {
        v18 = (v6 + 160);
        if (!v6)
        {
          v18 = "";
        }

        *buf = 136446978;
        v40 = "nw_protocol_ipv6_finalize_output_frames_block_invoke";
        v41 = 2082;
        v42 = v18;
        v19 = " ";
        if (!v6)
        {
          v19 = "";
        }

        v43 = 2080;
        v44 = v19;
        v45 = 2048;
        v46 = v6;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", buf, 0x2Au);
        v6 = *(a1 + 32);
      }
    }

    *(v6 + 48) = 0;
  }

  return 1;
}

void nw_protocol_ipv6_notify(char *a1, char *a2, unsigned int a3, _BYTE *a4, uint64_t a5)
{
  v107 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1;
    v8 = *(a1 + 5);
    v9 = a1;
    if (v8 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v8 != &nw_protocol_ref_counted_additional_handle)
    {
      v10 = 1;
      goto LABEL_11;
    }

    v9 = *(a1 + 8);
    if (v9)
    {
LABEL_6:
      v11 = *(v9 + 11);
      v10 = 0;
      if (v11)
      {
        *(v9 + 11) = v11 + 1;
      }
    }

    else
    {
      v10 = 1;
    }

    v8 = *(a1 + 5);
LABEL_11:
    v12 = a1;
    if (v8 != &nw_protocol_ref_counted_handle)
    {
      if (v8 != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v98 = "nw_protocol_ipv6_notify";
        v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
        type[0] = OS_LOG_TYPE_ERROR;
        v96 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v13, type, &v96))
        {
          goto LABEL_39;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v16 = "%{public}s called with null ipv6";
          goto LABEL_37;
        }

        if (v96 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_39;
          }

          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v16 = "%{public}s called with null ipv6, backtrace limit exceeded";
          goto LABEL_37;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type[0];
        v23 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v98 = "nw_protocol_ipv6_notify";
            v99 = 2082;
            v100 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v23)
        {
          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v16 = "%{public}s called with null ipv6, no backtrace";
          v24 = v21;
          v25 = v22;
          goto LABEL_38;
        }

LABEL_39:
        if (!v13)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v12 = *(a1 + 8);
    }

    if (!a2)
    {
      v53 = __nwlog_obj();
      *buf = 136446210;
      v98 = "nw_protocol_ipv6_notify";
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null other_protocol", buf, 12);
      type[0] = OS_LOG_TYPE_ERROR;
      v96 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v13, type, &v96))
      {
        goto LABEL_39;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type[0];
        if (!os_log_type_enabled(v14, type[0]))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v98 = "nw_protocol_ipv6_notify";
        v16 = "%{public}s called with null other_protocol";
        goto LABEL_37;
      }

      if (v96 == OS_LOG_TYPE_INFO)
      {
        v56 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type[0];
        v57 = os_log_type_enabled(v14, type[0]);
        if (v56)
        {
          if (!v57)
          {
            goto LABEL_137;
          }

          *buf = 136446466;
          v98 = "nw_protocol_ipv6_notify";
          v99 = 2082;
          v100 = v56;
          v58 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
          goto LABEL_136;
        }

        if (!v57)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v98 = "nw_protocol_ipv6_notify";
        v16 = "%{public}s called with null other_protocol, no backtrace";
      }

      else
      {
        v14 = __nwlog_obj();
        v15 = type[0];
        if (!os_log_type_enabled(v14, type[0]))
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v98 = "nw_protocol_ipv6_notify";
        v16 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      }

LABEL_37:
      v24 = v14;
      v25 = v15;
LABEL_38:
      _os_log_impl(&dword_181A37000, v24, v25, v16, buf, 0xCu);
      goto LABEL_39;
    }

    if (a3 != 17)
    {
      if (a3 == 14)
      {
        if (*(v12 + 6) == a2)
        {
          if (a4)
          {
            if (a5 == 1)
            {
              v17 = v12[255];
              v12[255] = v17 & 0xF7 | (8 * *a4);
              if ((v17 & 1) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v18 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  v19 = (v12[255] >> 3) & 1;
                  *buf = 136447234;
                  v98 = "nw_protocol_ipv6_notify";
                  v99 = 2082;
                  v100 = v12 + 256;
                  v101 = 2080;
                  v102 = " ";
                  v103 = 2048;
                  v104 = v12 + 96;
                  v105 = 1024;
                  v106 = v19;
                  _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p segmentation offload notify enable %d", buf, 0x30u);
                }
              }

              goto LABEL_41;
            }

            v61 = __nwlog_obj();
            *buf = 136446210;
            v98 = "nw_protocol_ipv6_notify";
            v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s called with null (len == sizeof(BOOL))", buf, 12);
            type[0] = OS_LOG_TYPE_ERROR;
            v96 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v13, type, &v96))
            {
              goto LABEL_39;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v98 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL))";
              goto LABEL_37;
            }

            if (v96 == OS_LOG_TYPE_INFO)
            {
              v56 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type[0];
              v70 = os_log_type_enabled(v14, type[0]);
              if (v56)
              {
                if (!v70)
                {
                  goto LABEL_137;
                }

                *buf = 136446466;
                v98 = "nw_protocol_ipv6_notify";
                v99 = 2082;
                v100 = v56;
                v58 = "%{public}s called with null (len == sizeof(BOOL)), dumping backtrace:%{public}s";
LABEL_136:
                _os_log_impl(&dword_181A37000, v14, v15, v58, buf, 0x16u);
LABEL_137:
                free(v56);
                if (v13)
                {
LABEL_40:
                  free(v13);
                }

LABEL_41:
                if ((v10 & 1) == 0)
                {
                  v26 = *(v7 + 5);
                  if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v7 = *(v7 + 8)) != 0)
                  {
                    v27 = *(v7 + 11);
                    if (v27)
                    {
                      v28 = v27 - 1;
                      *(v7 + 11) = v28;
                      if (!v28)
                      {
                        v29 = *(v7 + 8);
                        if (v29)
                        {
                          *(v7 + 8) = 0;
                          v29[2](v29);
                          _Block_release(v29);
                        }

                        if (v7[72])
                        {
                          v30 = *(v7 + 8);
                          if (v30)
                          {
                            _Block_release(v30);
                          }
                        }

                        v31 = v7;
                        goto LABEL_53;
                      }
                    }
                  }
                }

                return;
              }

              if (!v70)
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v98 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL)), no backtrace";
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v98 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (len == sizeof(BOOL)), backtrace limit exceeded";
            }
          }

          else
          {
            v60 = __nwlog_obj();
            *buf = 136446210;
            v98 = "nw_protocol_ipv6_notify";
            v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null (val != nil)", buf, 12);
            type[0] = OS_LOG_TYPE_ERROR;
            v96 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v13, type, &v96))
            {
              goto LABEL_39;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v98 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (val != nil)";
              goto LABEL_37;
            }

            if (v96 == OS_LOG_TYPE_INFO)
            {
              v56 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type[0];
              v69 = os_log_type_enabled(v14, type[0]);
              if (v56)
              {
                if (!v69)
                {
                  goto LABEL_137;
                }

                *buf = 136446466;
                v98 = "nw_protocol_ipv6_notify";
                v99 = 2082;
                v100 = v56;
                v58 = "%{public}s called with null (val != nil), dumping backtrace:%{public}s";
                goto LABEL_136;
              }

              if (!v69)
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v98 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (val != nil), no backtrace";
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type[0];
              if (!os_log_type_enabled(v14, type[0]))
              {
                goto LABEL_39;
              }

              *buf = 136446210;
              v98 = "nw_protocol_ipv6_notify";
              v16 = "%{public}s called with null (val != nil), backtrace limit exceeded";
            }
          }
        }

        else
        {
          v59 = __nwlog_obj();
          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol))", buf, 12);
          type[0] = OS_LOG_TYPE_ERROR;
          v96 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v13, type, &v96))
          {
            goto LABEL_39;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v14 = __nwlog_obj();
            v15 = type[0];
            if (!os_log_type_enabled(v14, type[0]))
            {
              goto LABEL_39;
            }

            *buf = 136446210;
            v98 = "nw_protocol_ipv6_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol))";
            goto LABEL_37;
          }

          if (v96 == OS_LOG_TYPE_INFO)
          {
            v56 = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v15 = type[0];
            v68 = os_log_type_enabled(v14, type[0]);
            if (v56)
            {
              if (!v68)
              {
                goto LABEL_137;
              }

              *buf = 136446466;
              v98 = "nw_protocol_ipv6_notify";
              v99 = 2082;
              v100 = v56;
              v58 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol)), dumping backtrace:%{public}s";
              goto LABEL_136;
            }

            if (!v68)
            {
              goto LABEL_39;
            }

            *buf = 136446210;
            v98 = "nw_protocol_ipv6_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol)), no backtrace";
          }

          else
          {
            v14 = __nwlog_obj();
            v15 = type[0];
            if (!os_log_type_enabled(v14, type[0]))
            {
              goto LABEL_39;
            }

            *buf = 136446210;
            v98 = "nw_protocol_ipv6_notify";
            v16 = "%{public}s called with null (other_protocol == nw_protocol_get_input_handler(&ipv6->protocol)), backtrace limit exceeded";
          }
        }

        goto LABEL_37;
      }

LABEL_28:
      nw_protocol_common_notify(v7, a2, a3);
      goto LABEL_41;
    }

    if (*(a1 + 4) != a2)
    {
      goto LABEL_28;
    }

    v32 = *(a2 + 5);
    v33 = a2;
    if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *(a2 + 8)) != 0)
    {
      v35 = *(v33 + 11);
      v34 = 0;
      if (v35)
      {
        *(v33 + 11) = v35 + 1;
      }
    }

    else
    {
      v34 = 1;
    }

    v36 = *(a2 + 3);
    if (v36)
    {
      v37 = *(v36 + 200);
      if (v37)
      {
        v38 = v37(a2);
        if (v34)
        {
          goto LABEL_77;
        }

        goto LABEL_66;
      }
    }

    v62 = __nwlog_obj();
    v63 = *(a2 + 2);
    *buf = 136446722;
    v98 = "__nw_protocol_get_output_local_endpoint";
    if (!v63)
    {
      v63 = "invalid";
    }

    v99 = 2082;
    v100 = v63;
    v101 = 2048;
    v102 = a2;
    type[0] = OS_LOG_TYPE_ERROR;
    v96 = OS_LOG_TYPE_DEFAULT;
    v91 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback", buf, 32);
    if (__nwlog_fault(v91, type, &v96))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v64 = __nwlog_obj();
        v65 = type[0];
        log = v64;
        if (!os_log_type_enabled(v64, type[0]))
        {
          goto LABEL_165;
        }

        v66 = *(a2 + 2);
        if (!v66)
        {
          v66 = "invalid";
        }

        *buf = 136446722;
        v98 = "__nw_protocol_get_output_local_endpoint";
        v99 = 2082;
        v100 = v66;
        v101 = 2048;
        v102 = a2;
        v67 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback";
LABEL_163:
        v76 = log;
        v77 = v65;
LABEL_164:
        _os_log_impl(&dword_181A37000, v76, v77, v67, buf, 0x20u);
        goto LABEL_165;
      }

      if (v96 != OS_LOG_TYPE_INFO)
      {
        v74 = __nwlog_obj();
        v65 = type[0];
        log = v74;
        if (!os_log_type_enabled(v74, type[0]))
        {
          goto LABEL_165;
        }

        v75 = *(a2 + 2);
        if (!v75)
        {
          v75 = "invalid";
        }

        *buf = 136446722;
        v98 = "__nw_protocol_get_output_local_endpoint";
        v99 = 2082;
        v100 = v75;
        v101 = 2048;
        v102 = a2;
        v67 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, backtrace limit exceeded";
        goto LABEL_163;
      }

      v71 = __nw_create_backtrace_string();
      loga = __nwlog_obj();
      v87 = type[0];
      v72 = os_log_type_enabled(loga, type[0]);
      if (v71)
      {
        if (v72)
        {
          v73 = *(a2 + 2);
          if (!v73)
          {
            v73 = "invalid";
          }

          *buf = 136446978;
          v98 = "__nw_protocol_get_output_local_endpoint";
          v99 = 2082;
          v100 = v73;
          v101 = 2048;
          v102 = a2;
          v103 = 2082;
          v104 = v71;
          _os_log_impl(&dword_181A37000, loga, v87, "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v71);
      }

      else if (v72)
      {
        v83 = *(a2 + 2);
        if (!v83)
        {
          v83 = "invalid";
        }

        *buf = 136446722;
        v98 = "__nw_protocol_get_output_local_endpoint";
        v99 = 2082;
        v100 = v83;
        v101 = 2048;
        v102 = a2;
        v67 = "%{public}s protocol %{public}s (%p) has invalid get_output_local_endpoint callback, no backtrace";
        v76 = loga;
        v77 = v87;
        goto LABEL_164;
      }
    }

LABEL_165:
    if (v91)
    {
      free(v91);
    }

    v38 = 0;
    if (v34)
    {
LABEL_77:
      if (!v38)
      {
        goto LABEL_28;
      }

      v45 = v38;
      address_family = _nw_endpoint_get_address_family(v45);

      if (address_family != 30)
      {
        goto LABEL_28;
      }

      *type = 0;
      v94 = 0uLL;
      v95 = 0;
      if (nw_endpoint_fillout_v6_address(v45, type))
      {
        *(v12 + 152) = v94;
        if ((v12[255] & 1) == 0)
        {
          v47 = __nwlog_obj();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            v98 = "nw_protocol_ipv6_notify";
            v99 = 2082;
            v100 = v12 + 256;
            v101 = 2080;
            v102 = " ";
            v103 = 2048;
            v104 = v12 + 96;
            _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p updated local address", buf, 0x2Au);
          }
        }

        goto LABEL_28;
      }

      v78 = __nwlog_obj();
      *buf = 136446210;
      v98 = "nw_protocol_ipv6_notify";
      LODWORD(v86) = 12;
      v79 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v78, 16, "%{public}s called with null success", buf, v86);
      v96 = OS_LOG_TYPE_ERROR;
      v92 = 0;
      if (__nwlog_fault(v79, &v96, &v92))
      {
        if (v96 == OS_LOG_TYPE_FAULT)
        {
          v80 = __nwlog_obj();
          v81 = v96;
          if (!os_log_type_enabled(v80, v96))
          {
            goto LABEL_193;
          }

          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v82 = "%{public}s called with null success";
          goto LABEL_192;
        }

        if (v92 != 1)
        {
          v80 = __nwlog_obj();
          v81 = v96;
          if (!os_log_type_enabled(v80, v96))
          {
            goto LABEL_193;
          }

          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v82 = "%{public}s called with null success, backtrace limit exceeded";
          goto LABEL_192;
        }

        v84 = __nw_create_backtrace_string();
        v80 = __nwlog_obj();
        v81 = v96;
        v85 = os_log_type_enabled(v80, v96);
        if (v84)
        {
          if (v85)
          {
            *buf = 136446466;
            v98 = "nw_protocol_ipv6_notify";
            v99 = 2082;
            v100 = v84;
            _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v84);
          goto LABEL_193;
        }

        if (v85)
        {
          *buf = 136446210;
          v98 = "nw_protocol_ipv6_notify";
          v82 = "%{public}s called with null success, no backtrace";
LABEL_192:
          _os_log_impl(&dword_181A37000, v80, v81, v82, buf, 0xCu);
        }
      }

LABEL_193:
      if (v79)
      {
        free(v79);
      }

      goto LABEL_41;
    }

LABEL_66:
    v39 = *(a2 + 5);
    v40 = a2;
    if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v40 = *(a2 + 8)) != 0)
    {
      v41 = *(v40 + 11);
      if (v41)
      {
        v42 = v41 - 1;
        *(v40 + 11) = v42;
        if (!v42)
        {
          v90 = v38;
          v43 = *(v40 + 8);
          if (v43)
          {
            *(v40 + 8) = 0;
            v43[2](v43);
            _Block_release(v43);
          }

          if (v40[72])
          {
            v44 = *(v40 + 8);
            if (v44)
            {
              _Block_release(v44);
            }
          }

          free(v40);
          v38 = v90;
        }
      }
    }

    goto LABEL_77;
  }

  v48 = __nwlog_obj();
  *buf = 136446210;
  v98 = "nw_protocol_ipv6_notify";
  v49 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v96 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v49, type, &v96))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v98 = "nw_protocol_ipv6_notify";
      v52 = "%{public}s called with null protocol";
LABEL_141:
      _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
      goto LABEL_142;
    }

    if (v96 != OS_LOG_TYPE_INFO)
    {
      v50 = __nwlog_obj();
      v51 = type[0];
      if (!os_log_type_enabled(v50, type[0]))
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v98 = "nw_protocol_ipv6_notify";
      v52 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_141;
    }

    v54 = __nw_create_backtrace_string();
    v50 = __nwlog_obj();
    v51 = type[0];
    v55 = os_log_type_enabled(v50, type[0]);
    if (!v54)
    {
      if (!v55)
      {
        goto LABEL_142;
      }

      *buf = 136446210;
      v98 = "nw_protocol_ipv6_notify";
      v52 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_141;
    }

    if (v55)
    {
      *buf = 136446466;
      v98 = "nw_protocol_ipv6_notify";
      v99 = 2082;
      v100 = v54;
      _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v54);
  }

LABEL_142:
  if (v49)
  {
    v31 = v49;
LABEL_53:
    free(v31);
  }
}

uint64_t nw_activity_is_activated(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[140] >> 2) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_activity_is_activated";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null activity", buf, 12);

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
        v15 = "nw_activity_is_activated";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null activity", buf, 0xCu);
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
          v15 = "nw_activity_is_activated";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_activity_is_activated";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_activity_is_activated";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
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

void network_config_set_interface_radio_type(const char *a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = a3;
  nw_allow_use_of_dispatch_internal(a1);

  networkd_privileged_set_radio_type(a1, a2, v3);
}

void networkd_privileged_set_radio_type(const char *a1, unsigned int a2, unsigned int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, networkd_privileged_key_type, 0x14uLL);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_radio_type, a2);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_radio_channel, a3);
      xpc_dictionary_set_string(v7, networkd_privileged_key_interface_name, a1);
      v8 = networkd_privileged_copy_connection();
      if (v8)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v9 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __networkd_privileged_set_radio_type_block_invoke;
        v34[3] = &unk_1E6A2B620;
        v36 = a2;
        v37 = a3;
        v35 = v7;
        networkd_privileged_send_async_inner("networkd_privileged_set_radio_type", v35, v9, v34);

LABEL_7:
LABEL_8:

        return;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v41 = "networkd_privileged_set_radio_type";
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s Unable to connect to networkd privileged", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v19, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_radio_type";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v38 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v29 = type;
          v30 = os_log_type_enabled(v20, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v41 = "networkd_privileged_set_radio_type";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v30)
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_radio_type";
            _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v20 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_radio_type";
            _os_log_impl(&dword_181A37000, v20, v33, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_7;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v41 = "networkd_privileged_set_radio_type";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v15, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_radio_type";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v16, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v41 = "networkd_privileged_set_radio_type";
            v42 = 2082;
            v43 = v25;
            _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_57;
        }

        if (v27)
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_radio_type";
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_radio_type";
          _os_log_impl(&dword_181A37000, v16, v32, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v41 = "networkd_privileged_set_radio_type";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null ifname", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v11, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_radio_type";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v12, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v41 = "networkd_privileged_set_radio_type";
          v42 = 2082;
          v43 = v22;
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_52;
      }

      if (v24)
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_radio_type";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_radio_type";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v11)
  {
    free(v11);
  }
}

id networkd_privileged_copy_connection(void)
{
  v21 = *MEMORY[0x1E69E9840];
  if (networkd_privileged_copy_queue(void)::onceToken != -1)
  {
    dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
  }

  v0 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
  v1 = v0;
  if (!v0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "networkd_privileged_copy_connection";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s networkd_privileged_copy_queue failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v4, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_copy_connection";
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s networkd_privileged_copy_queue failed", buf, 0xCu);
        }
      }

      else if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v9 = type;
        v10 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *buf = 136446466;
            *&buf[4] = "networkd_privileged_copy_connection";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v9, "%{public}s networkd_privileged_copy_queue failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v4)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v10)
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_copy_connection";
          _os_log_impl(&dword_181A37000, v5, v9, "%{public}s networkd_privileged_copy_queue failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v11 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_copy_connection";
          _os_log_impl(&dword_181A37000, v5, v11, "%{public}s networkd_privileged_copy_queue failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v4)
    {
LABEL_12:
      v2 = 0;
      goto LABEL_13;
    }

LABEL_11:
    free(v4);
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__993;
  v19 = __Block_byref_object_dispose__994;
  v20 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL35networkd_privileged_copy_connectionv_block_invoke;
  block[3] = &unk_1E6A3D738;
  v13 = v0;
  v14 = buf;
  dispatch_sync(v13, block);
  v2 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
LABEL_13:

  return v2;
}

void ___ZL35networkd_privileged_copy_connectionv_block_invoke(uint64_t a1)
{
  v2 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
  if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
  {
    goto LABEL_2;
  }

  mach_service = xpc_connection_create_mach_service(networkd_privileged_service, *(a1 + 32), 2uLL);
  v4 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
  _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection = mach_service;

  if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
  {
    Class = object_getClass(_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection);
    v6 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
    if (Class == MEMORY[0x1E69E9E68])
    {
      v7 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      v8 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL35networkd_privileged_copy_connectionv_block_invoke_2;
      handler[3] = &unk_1E6A2B5F8;
      v9 = v7;
      v11 = v9;
      xpc_connection_set_event_handler(v8, handler);
      xpc_connection_resume(_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection);

      v2 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      if (!_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
      {
        return;
      }

      goto LABEL_2;
    }

    if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
    {
      _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection = 0;

      v2 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
      if (_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
      {
LABEL_2:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
      }
    }
  }
}

void networkd_privileged_send_async_inner(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = networkd_privileged_copy_connection();
  if (v9)
  {
    networkd_privileged_send_async_inner_rec(a1, v9, v10, v7, v8, 1u);
  }
}

void networkd_privileged_send_async_inner_rec(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (a6 >= 6)
  {
    (*(v14 + 2))(v14, MEMORY[0x1E69E9E18]);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL40networkd_privileged_send_async_inner_recPKcPU24objcproto13OS_xpc_object8NSObjectS3_PU28objcproto17OS_dispatch_queueS1_U13block_pointerFvS3_Ej_block_invoke;
    v16[3] = &unk_1E6A2B648;
    v20 = v14;
    v21 = a1;
    v22 = a6;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    xpc_connection_send_message_with_reply(v17, v18, v19, v16);
  }
}

void network_config_set_interface_estimated_throughput(const char *a1, unint64_t a2, unint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_allow_use_of_dispatch_internal(a1);
    v6 = 49 - __clz(a2);
    if (a2 >= 0x10000)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = 49 - __clz(a3);
    if (a3 >= 0x10000)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if (a3)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    if (v8)
    {
      if (v8 > 0x30u)
      {
        v13 = -1;
        if (!v11)
        {
          goto LABEL_23;
        }

LABEL_20:
        if (v11 <= 0x30u)
        {
          v14 = 1 << (v11 + 15);
        }

        else
        {
          v14 = -1;
        }

        goto LABEL_25;
      }

      v13 = 1 << (v8 + 15);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
      if (v11)
      {
        goto LABEL_20;
      }
    }

LABEL_23:
    v14 = 0;
LABEL_25:
    *buf = 136448002;
    v26 = "network_config_set_interface_estimated_throughput";
    v27 = 2082;
    v28 = a1;
    v29 = 2048;
    v30 = a2;
    v31 = 1024;
    v32 = v8;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = a3;
    v37 = 1024;
    v38 = v11;
    v39 = 2048;
    v40 = v14;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s up: %lluBps -> %u (%lluBps), down: %lluBps -> %u (%lluBps)", buf, 0x4Au);
LABEL_26:

    networkd_privileged_set_throughput_estimates(a1, v8, v11);
    return;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v26 = "network_config_set_interface_estimated_throughput";
  v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null name", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v16, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v26 = "network_config_set_interface_estimated_throughput";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null name", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v26 = "network_config_set_interface_estimated_throughput";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_44;
      }

      if (v21)
      {
        *buf = 136446210;
        v26 = "network_config_set_interface_estimated_throughput";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null name, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v26 = "network_config_set_interface_estimated_throughput";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null name, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_44:
  if (v16)
  {
    free(v16);
  }
}

void networkd_privileged_set_throughput_estimates(const char *a1, unsigned int a2, unsigned int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, networkd_privileged_key_type, 0x13uLL);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_upload, a2);
      xpc_dictionary_set_uint64(v7, networkd_privileged_key_download, a3);
      xpc_dictionary_set_string(v7, networkd_privileged_key_interface_name, a1);
      v8 = networkd_privileged_copy_connection();
      if (v8)
      {
        if (networkd_privileged_copy_queue(void)::onceToken != -1)
        {
          dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
        }

        v9 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __networkd_privileged_set_throughput_estimates_block_invoke;
        v34[3] = &unk_1E6A2B620;
        v36 = a2;
        v37 = a3;
        v35 = v7;
        networkd_privileged_send_async_inner("networkd_privileged_set_throughput_estimates", v35, v9, v34);

LABEL_7:
LABEL_8:

        return;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      v41 = "networkd_privileged_set_throughput_estimates";
      v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s Unable to connect to networkd privileged", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v19, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_throughput_estimates";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Unable to connect to networkd privileged", buf, 0xCu);
          }
        }

        else if (v38 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v29 = type;
          v30 = os_log_type_enabled(v20, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              v41 = "networkd_privileged_set_throughput_estimates";
              v42 = 2082;
              v43 = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_62;
          }

          if (v30)
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_throughput_estimates";
            _os_log_impl(&dword_181A37000, v20, v29, "%{public}s Unable to connect to networkd privileged, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v20 = __nwlog_obj();
          v33 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v41 = "networkd_privileged_set_throughput_estimates";
            _os_log_impl(&dword_181A37000, v20, v33, "%{public}s Unable to connect to networkd privileged, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_62:
      if (v19)
      {
        free(v19);
      }

      goto LABEL_7;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v41 = "networkd_privileged_set_throughput_estimates";
    v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s xpc_dictionary_create failed", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v15, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_throughput_estimates";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v16, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v41 = "networkd_privileged_set_throughput_estimates";
            v42 = 2082;
            v43 = v25;
            _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_57;
        }

        if (v27)
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_throughput_estimates";
          _os_log_impl(&dword_181A37000, v16, v26, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "networkd_privileged_set_throughput_estimates";
          _os_log_impl(&dword_181A37000, v16, v32, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_57:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v41 = "networkd_privileged_set_throughput_estimates";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null ifname", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v11, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_throughput_estimates";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null ifname", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v22 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v12, type);
      if (v22)
      {
        if (v24)
        {
          *buf = 136446466;
          v41 = "networkd_privileged_set_throughput_estimates";
          v42 = 2082;
          v43 = v22;
          _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v22);
        goto LABEL_52;
      }

      if (v24)
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_throughput_estimates";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v41 = "networkd_privileged_set_throughput_estimates";
        _os_log_impl(&dword_181A37000, v12, v31, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_52:
  if (v11)
  {
    free(v11);
  }
}

uint64_t connectionMatchesEntitlementGroup(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v20)
  {
    v19 = *v23;
    while (2)
    {
      v3 = 0;
      while (2)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * v3);
        v5 = v21;
        v6 = v4;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (!v8)
        {
LABEL_21:

          v16 = 1;
          goto LABEL_22;
        }

        v9 = v8;
        v10 = *v27;
LABEL_10:
        v11 = 0;
        while (1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = v5;
          [v12 UTF8String];
          v14 = xpc_connection_copy_entitlement_value();

          if (!v14 || object_getClass(v14) != MEMORY[0x1E69E9E58])
          {
            break;
          }

          value = xpc_BOOL_get_value(v14);

          if (!value)
          {
            goto LABEL_5;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v9)
            {
              goto LABEL_10;
            }

            goto LABEL_21;
          }
        }

LABEL_5:
        if (++v3 != v20)
        {
          continue;
        }

        break;
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_22:

  return v16;
}

const char *nw_interface_radio_type_to_string(int a1)
{
  v1 = a1 - 1;
  result = "802.11b";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "802.11a";
      break;
    case 2:
      result = "802.11g";
      break;
    case 3:
      result = "802.11n";
      break;
    case 4:
      result = "802.11ac";
      break;
    case 5:
      result = "802.11ax";
      break;
    case 127:
      result = "lte";
      break;
    case 128:
      result = "endc_sub6";
      break;
    case 129:
      result = "endc_mmw";
      break;
    case 130:
      result = "nr_sa_sub6";
      break;
    case 131:
      result = "nr_sa_mmw";
      break;
    case 132:
      result = "wcdma";
      break;
    case 133:
      result = "gsm";
      break;
    case 134:
      result = "cdma";
      break;
    case 135:
      result = "evdo";
      break;
    default:
      result = "";
      break;
  }

  return result;
}

uint64_t handleRadioType(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v38 = 0u;
  v39 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_51;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LOBYTE(v39) = xpc_dictionary_get_uint64(v5, networkd_privileged_key_radio_type);

  v6 = [v1 request];
  BYTE1(v39) = xpc_dictionary_get_uint64(v6, networkd_privileged_key_radio_channel);

  v7 = socket(2, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (ioctl(v7, 0xC02069D5uLL, &v38) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 2082;
        *v37 = &v38;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully set radio type on %{public}s", buf, 0x16u);
      }

      v4 = 0;
LABEL_50:
      close(v8);
      goto LABEL_51;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v35 = "handleRadioType";
      v36 = 2082;
      *v37 = &v38;
      *&v37[8] = 1024;
      *&v37[10] = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to set radio type on %{public}s: %{darwin.errno}d", buf, 0x1Cu);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = v18;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = 6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_50;
    }

    *buf = 136446722;
    v35 = "handleRadioType";
    v36 = 1024;
    *v37 = v8;
    *&v37[4] = 1024;
    *&v37[6] = v16;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 24);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v23, &type, &v32))
    {
LABEL_48:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d";
LABEL_46:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x18u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v30 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446978;
            v35 = "handleRadioType";
            v36 = 1024;
            *v37 = v8;
            *&v37[4] = 1024;
            *&v37[6] = v16;
            *&v37[10] = 2082;
            *&v37[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v30)
        {
          goto LABEL_47;
        }

        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_46;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_46;
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v35 = "handleRadioType";
  v36 = 1024;
  *v37 = v10;
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d", buf, 18);

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v12, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_30:
        v27 = v13;
        v28 = v14;
LABEL_31:
        _os_log_impl(&dword_181A37000, v27, v28, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v13, type);
        if (v20)
        {
          if (v22)
          {
            *buf = 136446722;
            v35 = "handleRadioType";
            v36 = 1024;
            *v37 = v10;
            *&v37[4] = 2082;
            *&v37[6] = v20;
            _os_log_impl(&dword_181A37000, v13, v21, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v20);
          goto LABEL_33;
        }

        if (!v22)
        {
          goto LABEL_32;
        }

        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v27 = v13;
        v28 = v21;
        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleRadioType";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_32:
  }

LABEL_33:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_51:

  return v4;
}

void ___ZL40networkd_privileged_send_async_inner_recPKcPU24objcproto13OS_xpc_object8NSObjectS3_PU28objcproto17OS_dispatch_queueS1_U13block_pointerFvS3_Ej_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);
      v7 = 136446722;
      v8 = "networkd_privileged_send_async_inner_rec_block_invoke";
      v9 = 2082;
      v10 = v5;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v7, 0x1Cu);
    }

    networkd_privileged_send_async_inner_rec(*(a1 + 64), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72) + 1);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __networkd_privileged_set_radio_type_block_invoke(uint64_t a1, void *a2)
{
  *&v82[11] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_radio_type_block_invoke";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s received NULL response", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_172;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s received response without result code", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s received invalid result type", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_144:

LABEL_145:
        if (!v17)
        {
LABEL_147:

          goto LABEL_148;
        }

LABEL_146:
        free(v17);
        goto LABEL_147;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_147;
      }

      goto LABEL_146;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_148;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 40);
        v51 = *(a1 + 41);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        *buf = 136447234;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = nw_interface_radio_type_to_string(v50);
        *&v81[8] = 1024;
        *&v81[10] = v50;
        *&v81[14] = 1024;
        *&v81[16] = v51;
        v82[0] = 2082;
        *&v82[1] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s Set radio type to: %{public}s (%u), channel: %u on %{public}s", buf, 0x2Cu);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_147;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_radio_type_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_147;
            }

            goto LABEL_180;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_179:
      if (!v58)
      {
        goto LABEL_147;
      }

LABEL_180:
      free(v58);
      goto LABEL_147;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_radio_type_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_179;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          *&v81[18] = 2082;
          *v82 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_179;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_179;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_radio_type_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_172:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_radio_type_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_radio_type_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_148;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_148;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_radio_type_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_radio_type_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_radio_type_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_148:
}

uint64_t handleThroughputEstimates(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 request];
  string = xpc_dictionary_get_string(v2, networkd_privileged_key_interface_name);

  v38 = 0u;
  v39 = 0u;
  if (!string || strlen(string) > 0x10)
  {
    v4 = 22;
    goto LABEL_51;
  }

  __strlcpy_chk();
  v5 = [v1 request];
  LOBYTE(v39) = xpc_dictionary_get_uint64(v5, networkd_privileged_key_upload);

  v6 = [v1 request];
  BYTE1(v39) = xpc_dictionary_get_uint64(v6, networkd_privileged_key_download);

  v7 = socket(2, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (ioctl(v7, 0xC02069D4uLL, &v38) != -1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 2082;
        *v37 = &v38;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully set throughput estimate on %{public}s", buf, 0x16u);
      }

      v4 = 0;
LABEL_50:
      close(v8);
      goto LABEL_51;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v35 = "handleThroughputEstimates";
      v36 = 2082;
      *v37 = &v38;
      *&v37[8] = 1024;
      *&v37[10] = v16;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to set throughput estimate on %{public}s: %{darwin.errno}d", buf, 0x1Cu);
    }

    v4 = v16;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = v18;
    if (v16 == 6)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = 6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 0x18u);
      }

      goto LABEL_50;
    }

    *buf = 136446722;
    v35 = "handleThroughputEstimates";
    v36 = 1024;
    *v37 = v8;
    *&v37[4] = 1024;
    *&v37[6] = v16;
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d", buf, 24);

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v23, &type, &v32))
    {
LABEL_48:
      if (v23)
      {
        free(v23);
      }

      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d";
LABEL_46:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x18u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v30 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446978;
            v35 = "handleThroughputEstimates";
            v36 = 1024;
            *v37 = v8;
            *&v37[4] = 1024;
            *&v37[6] = v16;
            *&v37[10] = 2082;
            *&v37[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (!v30)
        {
          goto LABEL_47;
        }

        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, no backtrace";
        goto LABEL_46;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446722;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v8;
        *&v37[4] = 1024;
        *&v37[6] = v16;
        v26 = "%{public}s ioctl(%d, SIOCSIFCONSTRAINED, ...) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_46;
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446466;
  v35 = "handleThroughputEstimates";
  v36 = 1024;
  *v37 = v10;
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d", buf, 18);

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v12, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d";
LABEL_30:
        v27 = v13;
        v28 = v14;
LABEL_31:
        _os_log_impl(&dword_181A37000, v27, v28, v15, buf, 0x12u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v13, type);
        if (v20)
        {
          if (v22)
          {
            *buf = 136446722;
            v35 = "handleThroughputEstimates";
            v36 = 1024;
            *v37 = v10;
            *&v37[4] = 2082;
            *&v37[6] = v20;
            _os_log_impl(&dword_181A37000, v13, v21, "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v20);
          goto LABEL_33;
        }

        if (!v22)
        {
          goto LABEL_32;
        }

        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, no backtrace";
        v27 = v13;
        v28 = v21;
        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446466;
        v35 = "handleThroughputEstimates";
        v36 = 1024;
        *v37 = v10;
        v15 = "%{public}s socket(AF_INET, SOCK_DGRAM, 0) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_32:
  }

LABEL_33:
  v4 = v10;
  if (v12)
  {
    free(v12);
  }

LABEL_51:

  return v4;
}

void __networkd_privileged_set_throughput_estimates_block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s received NULL response", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v6, &type, &v76))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v76 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_172;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_172;
    }

    if (v22)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v3);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v14 = xpc_dictionary_get_value(v4, networkd_privileged_key_result);
    v15 = v14;
    if (!v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s received response without result code", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v30, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v47, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v41 = type;
      v42 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v42)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v42)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v41, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_76;
    }

    if (object_getClass(v14) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s received invalid result type", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v17, &type, &v76))
      {
        goto LABEL_145;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_144:

LABEL_145:
        if (!v17)
        {
LABEL_147:

          goto LABEL_148;
        }

LABEL_146:
        free(v17);
        goto LABEL_147;
      }

      if (v76 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v46 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v46, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_144;
      }

      v38 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v18, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_144;
      }

      if (v40)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = v38;
        _os_log_impl(&dword_181A37000, v18, v39, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_76:

      free(v38);
      if (!v17)
      {
        goto LABEL_147;
      }

      goto LABEL_146;
    }

    value = xpc_int64_get_value(v15);
    v35 = value;
    if (!value)
    {

      if (xpc_dictionary_get_int64(v4, networkd_privileged_key_result))
      {
        goto LABEL_148;
      }

      v43 = __nwlog_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v50 = *(a1 + 40);
        v51 = *(a1 + 41);
        string = xpc_dictionary_get_string(*(a1 + 32), networkd_privileged_key_interface_name);
        *buf = 136446978;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 1024;
        *v81 = v50;
        *&v81[4] = 1024;
        *&v81[6] = v51;
        *&v81[10] = 2082;
        *&v81[12] = string;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_INFO, "%{public}s Set estimated throughput buckets up: %u, down: %u on %{public}s", buf, 0x22u);
      }

      goto LABEL_83;
    }

    if (!(value >> 31))
    {
      v36 = __nwlog_obj();
      v37 = v36;
      if (v35 == 6)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          v80 = 1024;
          *v81 = 6;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
        }

        goto LABEL_147;
      }

      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 1024;
      *v81 = v35;
      v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v36, 16, "%{public}s received failure result code %{darwin.errno}d", buf, 18);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (__nwlog_fault(v58, &type, &v76))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v76 == 1)
        {
          v71 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v72 = type;
          v73 = os_log_type_enabled(v65, type);
          if (v71)
          {
            if (v73)
            {
              *buf = 136446722;
              v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
              v80 = 1024;
              *v81 = v35;
              *&v81[4] = 2082;
              *&v81[6] = v71;
              _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v71);
            if (!v58)
            {
              goto LABEL_147;
            }

            goto LABEL_180;
          }

          if (v73)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v72, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v75 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 1024;
            *v81 = v35;
            _os_log_impl(&dword_181A37000, v65, v75, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_179:
      if (!v58)
      {
        goto LABEL_147;
      }

LABEL_180:
      free(v58);
      goto LABEL_147;
    }

    v56 = __nwlog_obj();
    v57 = networkd_privileged_result_to_string(v35);
    *buf = 136446722;
    v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
    v80 = 2048;
    *v81 = v35;
    *&v81[8] = 2082;
    *&v81[10] = v57;
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v56, 16, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 32);

    type = OS_LOG_TYPE_ERROR;
    v76 = 0;
    if (!__nwlog_fault(v58, &type, &v76))
    {
      goto LABEL_179;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v76 == 1)
    {
      v67 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v68 = type;
      v69 = os_log_type_enabled(v59, type);
      if (v67)
      {
        if (v69)
        {
          *buf = 136446978;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          v80 = 2048;
          *v81 = v35;
          *&v81[8] = 2082;
          *&v81[10] = v57;
          *&v81[18] = 2082;
          v82 = v67;
          _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v67);
        goto LABEL_179;
      }

      if (v69)
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v68, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446722;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2048;
        *v81 = v35;
        *&v81[8] = 2082;
        *&v81[10] = v57;
        _os_log_impl(&dword_181A37000, v59, v74, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_179;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v4 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v33, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v61, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v45)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v45)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v44, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v4 != MEMORY[0x1E69E9E20])
    {
      if (v4 != MEMORY[0x1E69E9E38])
      {
        v6 = MEMORY[0x1865DFA50](v4);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = v6;
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s received returned unknown XPC error %{public}s", buf, 22);

        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v8, &type, &v76))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v24, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v76 != 1)
        {
          v9 = __nwlog_obj();
          v64 = type;
          if (os_log_type_enabled(v9, type))
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v64, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v53 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v54 = type;
        v55 = os_log_type_enabled(v9, type);
        if (!v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
            v80 = 2082;
            *v81 = v6;
            _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v55)
        {
          *buf = 136446722;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          v80 = 2082;
          *v81 = v6;
          *&v81[8] = 2082;
          *&v81[10] = v53;
          _os_log_impl(&dword_181A37000, v9, v54, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        if (!v8)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v8);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 12);

      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v6, &type, &v76))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v49, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_172:

        goto LABEL_54;
      }

      if (v76 != 1)
      {
        v12 = __nwlog_obj();
        v70 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v70, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_172;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v62 = type;
      v63 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
          _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_172;
      }

      if (v63)
      {
        *buf = 136446466;
        v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
        v80 = 2082;
        *v81 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v62, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v6)
      {
        goto LABEL_148;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_83:

    goto LABEL_148;
  }

  v6 = MEMORY[0x1865DFA50](v4);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446466;
  v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
  v80 = 2082;
  *v81 = v6;
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s received unknown type XPC %{public}s", buf, 22);

  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (!__nwlog_fault(v8, &type, &v76))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v76 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v31, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v9, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446466;
      v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
      v80 = 2082;
      *v81 = v6;
      _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v27)
  {
    *buf = 136446722;
    v79 = "networkd_privileged_set_throughput_estimates_block_invoke";
    v80 = 2082;
    *v81 = v6;
    *&v81[8] = 2082;
    *&v81[10] = v25;
    _os_log_impl(&dword_181A37000, v9, v26, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v25);
  if (v8)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v6)
  {
LABEL_55:
    free(v6);
  }

LABEL_148:
}

uint64_t nw_connection_get_id(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[112];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_connection_get_id";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null connection", buf, 12);

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
        v15 = "nw_connection_get_id";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null connection", buf, 0xCu);
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
          v15 = "nw_connection_get_id";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_connection_get_id";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_connection_get_id";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

char *nw_protocol_ipv6_copy_info(uint64_t a1, int a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_ipv6_copy_info";
    v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v31, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_ipv6_copy_info";
          v34 = "%{public}s called with null protocol";
LABEL_70:
          _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type;
        v36 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446466;
            v40 = "nw_protocol_ipv6_copy_info";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_71;
        }

        if (v36)
        {
          *buf = 136446210;
          v40 = "nw_protocol_ipv6_copy_info";
          v34 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_70;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v40 = "nw_protocol_ipv6_copy_info";
          v34 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    if (v31)
    {
      free(v31);
    }

    return 0;
  }

  v3 = a1;
  v4 = *(a1 + 40);
  v5 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v4 != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
LABEL_6:
    v7 = *(v5 + 88);
    v6 = 0;
    if (v7)
    {
      *(v5 + 88) = v7 + 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v4 = *(a1 + 40);
LABEL_11:
  v8 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (v4 == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *(a1 + 64);
LABEL_18:
    if (a2 == 5)
    {
      result = malloc_type_calloc(1uLL, 0xE0uLL, 0x5AFA426DuLL);
      if (!result)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        *buf = 136446722;
        v40 = "nw_protocol_ipv6_copy_info";
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v41 = 2048;
        v42 = 1;
        v43 = 2048;
        v44 = 224;
        v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, 32);
        result = __nwlog_should_abort(v17);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v17);
        result = 0;
      }

      *(result + 8) = *(v8 + 104);
      *(result + 24) = *(v8 + 120);
      *(result + 5) = *(v8 + 96);
      if (a3)
      {
        *a3 = 224;
        if (v6)
        {
          return result;
        }

        goto LABEL_43;
      }
    }

    else
    {
      result = 0;
    }

    if (v6)
    {
      return result;
    }

    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v40 = "nw_protocol_ipv6_copy_info";
  v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv6", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v9, &type, &v37))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v40 = "nw_protocol_ipv6_copy_info";
    v12 = "%{public}s called with null ipv6";
LABEL_38:
    v22 = v10;
    v23 = v11;
LABEL_39:
    _os_log_impl(&dword_181A37000, v22, v23, v12, buf, 0xCu);
    goto LABEL_40;
  }

  if (v37 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v40 = "nw_protocol_ipv6_copy_info";
    v12 = "%{public}s called with null ipv6, backtrace limit exceeded";
    goto LABEL_38;
  }

  v18 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  v20 = type;
  v21 = os_log_type_enabled(gLogObj, type);
  if (v18)
  {
    if (v21)
    {
      *buf = 136446466;
      v40 = "nw_protocol_ipv6_copy_info";
      v41 = 2082;
      v42 = v18;
      _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null ipv6, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v18);
  }

  else if (v21)
  {
    *buf = 136446210;
    v40 = "nw_protocol_ipv6_copy_info";
    v12 = "%{public}s called with null ipv6, no backtrace";
    v22 = v19;
    v23 = v20;
    goto LABEL_39;
  }

LABEL_40:
  if (v9)
  {
    free(v9);
  }

  result = 0;
  if ((v6 & 1) == 0)
  {
LABEL_43:
    v24 = *(v3 + 40);
    if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
    {
      v25 = *(v3 + 88);
      if (v25)
      {
        v26 = v25 - 1;
        *(v3 + 88) = v26;
        if (!v26)
        {
          v27 = result;
          v28 = *(v3 + 64);
          if (v28)
          {
            *(v3 + 64) = 0;
            v28[2](v28);
            _Block_release(v28);
          }

          if (*(v3 + 72))
          {
            v29 = *(v3 + 64);
            if (v29)
            {
              _Block_release(v29);
            }
          }

          free(v3);
          return v27;
        }
      }
    }
  }

  return result;
}

const char **nw_context_16k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 172);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_1, dword_1EA83C2D8, word_1EA83C2DC);
      *(*(v3 + 4) + 172) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_16k_buffer_manager";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null context", buf, 12);

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
        v17 = "nw_context_16k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
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
          v17 = "nw_context_16k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_16k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_16k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

BOOL nw_settings_networkscore_metrics_enabled()
{
  v0 = nw_setting_enable_networkscore_metrics;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v1 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_7;
  }

  Class = object_getClass(sCachedSettings);
  v3 = 0;
  if (!v0 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(v1, v0);
  if (value && (v5 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v3 = xpc_BOOL_get_value(v5);
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

LABEL_8:
  pthread_mutex_unlock(&sSettingsMutex);
  return v3;
}

void nw_protocol_input_finished(char *a1, uint64_t a2)
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
        v51 = "__nw_protocol_input_finished";
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
          v51 = "__nw_protocol_input_finished";
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
          v51 = "__nw_protocol_input_finished";
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
          v51 = "__nw_protocol_input_finished";
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
          v51 = "__nw_protocol_input_finished";
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

    v17 = *(v10 + 184);
    if (v17)
    {
      v17(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    v28 = __nwlog_obj();
    v29 = *(v3 + 2);
    *buf = 136446722;
    v51 = "__nw_protocol_input_finished";
    if (!v29)
    {
      v29 = "invalid";
    }

    v52 = 2082;
    v53 = v29;
    v54 = 2048;
    v55 = v3;
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s protocol %{public}s (%p) has invalid input_finished callback", buf, 32);
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
      v51 = "__nw_protocol_input_finished";
      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback";
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
          v51 = "__nw_protocol_input_finished";
          v52 = 2082;
          v53 = v41;
          v54 = 2048;
          v55 = v3;
          v56 = 2082;
          v57 = v39;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
      v51 = "__nw_protocol_input_finished";
      v52 = 2082;
      v53 = v47;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace";
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
      v51 = "__nw_protocol_input_finished";
      v52 = 2082;
      v53 = v46;
      v54 = 2048;
      v55 = v3;
      v34 = "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x20u);
    goto LABEL_94;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v51 = "__nw_protocol_input_finished";
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
      v51 = "__nw_protocol_input_finished";
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
          v51 = "__nw_protocol_input_finished";
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
      v51 = "__nw_protocol_input_finished";
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
      v51 = "__nw_protocol_input_finished";
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

uint64_t nw_protocol_input_available_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 64) != 0;
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

uint64_t NetworkAgentType.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = 0xD000000000000010;
      goto LABEL_16;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        v3 = 0xD000000000000013;
        goto LABEL_16;
      }

LABEL_12:
      v3 = *v0;
      goto LABEL_16;
    }

    v4 = 0x6C6177796B53;
LABEL_15:
    v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6B000000000000;
    goto LABEL_16;
  }

  if (!v2)
  {
    v4 = 0x726F7774654ELL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x72616C756C6C6543;
    goto LABEL_16;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x6F436D6574737953;
LABEL_16:
  sub_181AA5C1C(v1, v2);
  return v3;
}

void ___ZL29nw_path_necp_update_evaluatorP28NWConcrete_nw_path_evaluatorPKhmb_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  os_unfair_lock_lock(v2 + 24);
  os_unfair_lock_opaque_high = HIBYTE(v3[26]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v2 + 24);

  if ((os_unfair_lock_opaque_high & 0x20) == 0)
  {
    if ((*(*(a1 + 32) + 107) & 0x40) != 0 && *(a1 + 56) == 1)
    {
      if (__nwlog_path_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_path_log::onceToken, &__block_literal_global_52);
      }

      v5 = gpathLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 16);
        v8 = v7;
        if (v7)
        {
          logging_description = _nw_endpoint_get_logging_description(v7);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v10 = *(a1 + 40);
        v11 = *(*(a1 + 32) + 8);
        v12 = 136447490;
        v13 = "nw_path_necp_update_evaluator_block_invoke";
        v14 = 1042;
        v15 = 16;
        v16 = 2098;
        v17 = v6 + 80;
        v18 = 2082;
        v19 = logging_description;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s [%{public,uuid_t}.16P %{public}s %@]\n\tpath: %@", &v12, 0x3Au);
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_181E4926C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_181E49280(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

void nw_http_client_initialize_metadata(uint64_t a1, uint64_t a2)
{
  mach_get_times();
  *a2 = 1;
  *(a2 + 16) = 0 - *MEMORY[0x1E695E468] + 0 * 0.000000001;
  v3 = _nw_array_create();
  v4 = *(a2 + 24);
  *(a2 + 24) = v3;
}

void nw_http_client_metadata_create_next_transaction(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_client_metadata_create_next_transaction";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_client_metadata_create_next_transaction";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_client_metadata_create_next_transaction";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_client_metadata_create_next_transaction";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_client_metadata_create_next_transaction";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_client_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_client_metadata_create_next_transaction_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle();
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_client_metadata_create_next_transaction";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s metadata must be http_client", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_client_metadata_create_next_transaction";
      v9 = "%{public}s metadata must be http_client";
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
      v22 = "nw_http_client_metadata_create_next_transaction";
      v9 = "%{public}s metadata must be http_client, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_client_metadata_create_next_transaction";
      v9 = "%{public}s metadata must be http_client, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_client_metadata_create_next_transaction";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t __nw_http_client_metadata_create_next_transaction_block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    object = _nw_array_copy_last_object(v4);
  }

  else
  {
    object = 0;
  }

  if (*(a1 + 32) == 3 && !nw_http_transaction_metadata_get_outbound_message_start_time(object))
  {
    goto LABEL_19;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  singleton = _nw_protocol_metadata_create_singleton(nw_protocol_copy_http_transaction_definition_definition);
  v7 = *(a1 + 32);
  v8 = singleton;
  if (!v8)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http_transaction_metadata_set_start_reason";
    v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null metadata", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v14, &type, &v31))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v17 = "%{public}s called with null metadata";
LABEL_44:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v24 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v34 = "nw_http_transaction_metadata_set_start_reason";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_46;
        }

        if (!v24)
        {
          goto LABEL_45;
        }

        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v17 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_44;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v17 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

LABEL_45:

LABEL_46:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_16;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if ((nw_protocol_metadata_matches_definition(v8, nw_protocol_copy_http_transaction_definition_definition) & 1) == 0)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http_transaction_metadata_set_start_reason";
    v19 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s metadata must be http_transaction", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v19, &type, &v31))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v22 = "%{public}s metadata must be http_transaction";
LABEL_50:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v26 = os_log_type_enabled(v20, type);
        if (v25)
        {
          if (v26)
          {
            *buf = 136446466;
            v34 = "nw_http_transaction_metadata_set_start_reason";
            v35 = 2082;
            v36 = v25;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_52;
        }

        if (!v26)
        {
          goto LABEL_51;
        }

        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v22 = "%{public}s metadata must be http_transaction, no backtrace";
        goto LABEL_50;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v34 = "nw_http_transaction_metadata_set_start_reason";
        v22 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
        goto LABEL_50;
      }
    }

LABEL_51:

LABEL_52:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_14;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = __nw_http_transaction_metadata_set_start_reason_block_invoke;
  v29 = &__block_descriptor_36_e9_B16__0_v8l;
  v30 = v7;
  handle = _nw_protocol_metadata_get_handle();
  if (handle)
  {
    v28(v27, handle);
  }

LABEL_14:

  v10 = *(a2 + 24);
  if (v10)
  {
    _nw_array_append(v10, v8);
  }

LABEL_16:
  if (object)
  {
    start_time = nw_http_transaction_metadata_get_start_time(v8);
    nw_http_transaction_metadata_set_end_time(object, start_time);
  }

LABEL_19:
  return 1;
}

uint64_t __nw_http_client_metadata_set_initial_request_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 32) = 0;
  }

  *(a2 + 32) = CFRetain(*(a1 + 32));
  return 1;
}

uint64_t __nw_http_client_metadata_set_prevent_timeout_callback_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _Block_copy(*(a1 + 32));
  v4 = *(a2 + 56);
  *(a2 + 56) = v3;

  return 1;
}

id nw_endpoint_create_with_cfurl(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_endpoint_create_with_cfurl(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_with_cfurl";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null url", buf, 12);

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
        v12 = "nw_endpoint_create_with_cfurl";
        v6 = "%{public}s called with null url";
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
            v12 = "nw_endpoint_create_with_cfurl";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null url, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_with_cfurl";
        v6 = "%{public}s called with null url, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_with_cfurl";
        v6 = "%{public}s called with null url, backtrace limit exceeded";
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

id _nw_endpoint_create_with_cfurl(void *a1)
{
  v1 = a1;
  v2 = sub_181E4B980(v1);

  return v2;
}

id sub_181E4B980(uint64_t a1)
{
  v1 = sub_182AD2058();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470, &qword_182AE3CE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URLEndpoint(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_182AD1FD8();
  sub_181B2BB30(v3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_181F49A88(v6, &unk_1EA83A470, &qword_182AE3CE0);
    return 0;
  }

  else
  {
    sub_181B2BEE4(v6, v13);
    sub_181A546E0(v13, v10, type metadata accessor for URLEndpoint);
    v15 = objc_allocWithZone(type metadata accessor for Endpoint(0));
    v16 = Endpoint.init(_:)(v10);
    sub_181A5513C(v13, type metadata accessor for URLEndpoint);
    return v16;
  }
}

_DWORD *nw_http2_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x14uLL, 0xD3B5BA3CuLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http2_allocate_options";
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
  v12 = 20;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:
    *v2 = 240;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t __nw_http_messaging_create_options_block_invoke(uint64_t a1, uint64_t a2)
{
  if (nw_protocol_copy_http1_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
  }

  options = nw_protocol_create_options(nw_protocol_copy_http1_definition_http1_definition);
  v4 = *a2;
  *a2 = options;

  if (nw_protocol_copy_http2_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http2_definition_onceToken, &__block_literal_global_5_76055);
  }

  v5 = nw_protocol_create_options(nw_protocol_copy_http2_definition_http2_definition);
  v6 = *(a2 + 8);
  *(a2 + 8) = v5;

  if (nw_protocol_copy_http3_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
  }

  v7 = nw_protocol_create_options(nw_protocol_copy_http3_definition_http3_definition);
  v8 = *(a2 + 16);
  *(a2 + 16) = v7;

  return 1;
}

void *nw_http1_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x743D54E4uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http1_allocate_options";
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
  v12 = 8;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:
    *v2 = 0x60000001DLL;

    return v2;
  }

  __break(1u);
  return result;
}

_DWORD *nw_http3_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x4DDEC035uLL);
  if (v2)
  {
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v7 = 136446722;
  v8 = "nw_http3_allocate_options";
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
  v12 = 112;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
LABEL_7:
    v2[26] = 2;
    *(v2 + 109) &= ~1u;
    *(v2 + 12) = 240;

    return v2;
  }

  __break(1u);
  return result;
}

void nw_http_messaging_options_set_client_metadata(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_http_messaging_options_set_client_metadata";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null options", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
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
        v20 = "nw_http_messaging_options_set_client_metadata";
        v9 = "%{public}s called with null options";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_http_messaging_options_set_client_metadata";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          goto LABEL_6;
        }

LABEL_37:
        free(v6);
        goto LABEL_6;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_http_messaging_options_set_client_metadata";
        v9 = "%{public}s called with null options, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_http_messaging_options_set_client_metadata";
        v9 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  if (nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_messaging_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_http_messaging_options_set_client_metadata_block_invoke;
    v15[3] = &unk_1E6A3A950;
    v16 = v4;
    nw_protocol_options_access_handle(v3, v15);

    goto LABEL_6;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_messaging_options_set_client_metadata";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s protocol options are not http_messaging", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v6, &type, &v17))
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
      v20 = "nw_http_messaging_options_set_client_metadata";
      v9 = "%{public}s protocol options are not http_messaging";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v20 = "nw_http_messaging_options_set_client_metadata";
      v9 = "%{public}s protocol options are not http_messaging, backtrace limit exceeded";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v20 = "nw_http_messaging_options_set_client_metadata";
      v9 = "%{public}s protocol options are not http_messaging, no backtrace";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v20 = "nw_http_messaging_options_set_client_metadata";
    v21 = 2082;
    v22 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_37;
  }

LABEL_6:
}

void nw_http1_set_idle_timeout(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http1_options(v3);
    nw_http1_set_idle_timeout(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http1(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http1_set_idle_timeout_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http1_set_idle_timeout";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http1(options)", buf, 12);

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
        v17 = "nw_http1_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options)";
LABEL_19:
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
            v17 = "nw_http1_set_idle_timeout";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http1(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http1_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http1_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http1(options), backtrace limit exceeded";
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

LABEL_5:
}

id nw_http_messaging_options_copy_http1_options(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_messaging_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

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
      v21[2] = __nw_http_messaging_options_copy_http1_options_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http1_options";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http_messaging", buf, 12);

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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_messaging", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http1_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http1_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http1_options";
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

void sub_181E4CF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_options_is_http1(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http1_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http1_definition_http1_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http1";
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
        v14 = "nw_protocol_options_is_http1";
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
            v14 = "nw_protocol_options_is_http1";
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
        v14 = "nw_protocol_options_is_http1";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http1";
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

void nw_http2_set_idle_timeout(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http2_options(v3);
    nw_http2_set_idle_timeout(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http2_set_idle_timeout_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http2_set_idle_timeout";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 12);

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
        v17 = "nw_http2_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http2(options)";
LABEL_19:
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
            v17 = "nw_http2_set_idle_timeout";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http2_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http2_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded";
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

LABEL_5:
}

id nw_http_messaging_options_copy_http2_options(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_messaging_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v5 = nw_protocol_options_matches_definition(v4, nw_protocol_copy_http_messaging_definition_definition);

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
      v21[2] = __nw_http_messaging_options_copy_http2_options_block_invoke;
      v21[3] = &unk_1E6A3A858;
      v21[4] = buf;
      nw_protocol_options_access_handle(v4, v21);
      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http2_options";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s protocol options are not http_messaging", buf, 12);

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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s protocol options are not http_messaging", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s protocol options are not http_messaging, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http2_options";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s protocol options are not http_messaging, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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
          *&buf[4] = "nw_http_messaging_options_copy_http2_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_messaging_options_copy_http2_options";
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

void sub_181E4DA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http3_set_idle_timeout(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_http_messaging(v3))
  {
    v4 = nw_http_messaging_options_copy_http3_options(v3);
    nw_http3_set_idle_timeout(v4, a2);

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_http3_set_idle_timeout_block_invoke;
    v12[3] = &__block_descriptor_36_e9_B16__0_v8l;
    v13 = a2;
    nw_protocol_options_access_handle(v3, v12);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_http3_set_idle_timeout";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 12);

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
        v17 = "nw_http3_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options)";
LABEL_19:
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
            v17 = "nw_http3_set_idle_timeout";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v11)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v17 = "nw_http3_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace";
        goto LABEL_19;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_http3_set_idle_timeout";
        v9 = "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded";
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

LABEL_5:
}

id nw_parameters_create_secure_http_messaging(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v161 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v9)
  {
    v101 = v11;
    v102 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null configure_security", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v103, &v156, &v155))
    {
      goto LABEL_250;
    }

    if (v156 != OS_LOG_TYPE_FAULT)
    {
      if (v155 != 1)
      {
        v104 = __nwlog_obj();
        v105 = v156;
        if (os_log_type_enabled(v104, v156))
        {
          *buf = 136446210;
          v158 = "nw_parameters_create_secure_http_messaging";
          v106 = "%{public}s called with null configure_security, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      v122 = 0;
      v123 = v12;
      backtrace_string = __nw_create_backtrace_string();
      v125 = __nwlog_obj();
      v126 = v156;
      v127 = os_log_type_enabled(v125, v156);
      if (backtrace_string)
      {
        if (!v127)
        {
          goto LABEL_224;
        }

        *buf = 136446466;
        v158 = "nw_parameters_create_secure_http_messaging";
        v159 = 2082;
        v160 = backtrace_string;
        v128 = "%{public}s called with null configure_security, dumping backtrace:%{public}s";
        goto LABEL_223;
      }

      v9 = 0;
      if (!v127)
      {
        goto LABEL_272;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v143 = "%{public}s called with null configure_security, no backtrace";
      goto LABEL_271;
    }

    v104 = __nwlog_obj();
    v105 = v156;
    if (!os_log_type_enabled(v104, v156))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v106 = "%{public}s called with null configure_security";
LABEL_248:
    _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0xCu);
    goto LABEL_249;
  }

  if (!v10)
  {
    v101 = v11;
    v107 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null configure_quic_stream", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v103, &v156, &v155))
    {
      goto LABEL_250;
    }

    if (v156 != OS_LOG_TYPE_FAULT)
    {
      if (v155 != 1)
      {
        v104 = __nwlog_obj();
        v105 = v156;
        if (os_log_type_enabled(v104, v156))
        {
          *buf = 136446210;
          v158 = "nw_parameters_create_secure_http_messaging";
          v106 = "%{public}s called with null configure_quic_stream, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      v122 = v9;
      v123 = v12;
      backtrace_string = __nw_create_backtrace_string();
      v125 = __nwlog_obj();
      v126 = v156;
      v129 = os_log_type_enabled(v125, v156);
      if (backtrace_string)
      {
        if (!v129)
        {
          goto LABEL_224;
        }

        *buf = 136446466;
        v158 = "nw_parameters_create_secure_http_messaging";
        v159 = 2082;
        v160 = backtrace_string;
        v128 = "%{public}s called with null configure_quic_stream, dumping backtrace:%{public}s";
        goto LABEL_223;
      }

      v9 = v122;
      if (!v129)
      {
        goto LABEL_272;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v143 = "%{public}s called with null configure_quic_stream, no backtrace";
      goto LABEL_271;
    }

    v104 = __nwlog_obj();
    v105 = v156;
    if (!os_log_type_enabled(v104, v156))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v106 = "%{public}s called with null configure_quic_stream";
    goto LABEL_248;
  }

  if (!v11)
  {
    v101 = 0;
    v108 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v108, 16, "%{public}s called with null configure_quic_connection", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v103, &v156, &v155))
    {
      goto LABEL_250;
    }

    if (v156 != OS_LOG_TYPE_FAULT)
    {
      if (v155 != 1)
      {
        v104 = __nwlog_obj();
        v105 = v156;
        if (os_log_type_enabled(v104, v156))
        {
          *buf = 136446210;
          v158 = "nw_parameters_create_secure_http_messaging";
          v106 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_248;
        }

        goto LABEL_249;
      }

      v122 = v9;
      v123 = v12;
      backtrace_string = __nw_create_backtrace_string();
      v125 = __nwlog_obj();
      v126 = v156;
      v130 = os_log_type_enabled(v125, v156);
      if (backtrace_string)
      {
        if (!v130)
        {
          goto LABEL_224;
        }

        *buf = 136446466;
        v158 = "nw_parameters_create_secure_http_messaging";
        v159 = 2082;
        v160 = backtrace_string;
        v128 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
        goto LABEL_223;
      }

      v9 = v122;
      if (!v130)
      {
        goto LABEL_272;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v143 = "%{public}s called with null configure_quic_connection, no backtrace";
      goto LABEL_271;
    }

    v104 = __nwlog_obj();
    v105 = v156;
    if (!os_log_type_enabled(v104, v156))
    {
      goto LABEL_249;
    }

    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v106 = "%{public}s called with null configure_quic_connection";
    goto LABEL_248;
  }

  if (!v12)
  {
    v109 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v110 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v109, 16, "%{public}s called with null configure_tcp", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v110, &v156, &v155))
    {
      goto LABEL_241;
    }

    if (v156 == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = v156;
      if (!os_log_type_enabled(v111, v156))
      {
LABEL_240:

LABEL_241:
        if (!v110)
        {
LABEL_243:
          v63 = 0;
          goto LABEL_151;
        }

LABEL_242:
        free(v110);
        goto LABEL_243;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v113 = "%{public}s called with null configure_tcp";
    }

    else
    {
      if (v155 == 1)
      {
        v131 = v9;
        v132 = __nw_create_backtrace_string();
        v133 = __nwlog_obj();
        v134 = v156;
        v135 = os_log_type_enabled(v133, v156);
        if (v132)
        {
          if (v135)
          {
            *buf = 136446466;
            v158 = "nw_parameters_create_secure_http_messaging";
            v159 = 2082;
            v160 = v132;
            _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null configure_tcp, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v132);
          v12 = 0;
          v9 = v131;
          if (!v110)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v9 = v131;
          if (v135)
          {
            *buf = 136446210;
            v158 = "nw_parameters_create_secure_http_messaging";
            _os_log_impl(&dword_181A37000, v133, v134, "%{public}s called with null configure_tcp, no backtrace", buf, 0xCu);
          }

          v12 = 0;
          if (!v110)
          {
            goto LABEL_243;
          }
        }

        goto LABEL_242;
      }

      v111 = __nwlog_obj();
      v112 = v156;
      if (!os_log_type_enabled(v111, v156))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v113 = "%{public}s called with null configure_tcp, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v111, v112, v113, buf, 0xCu);
    goto LABEL_240;
  }

  if (!v13)
  {
    v101 = v11;
    v114 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v114, 16, "%{public}s called with null configure_http_messaging", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v103, &v156, &v155))
    {
      goto LABEL_250;
    }

    if (v156 == OS_LOG_TYPE_FAULT)
    {
      v104 = __nwlog_obj();
      v105 = v156;
      if (!os_log_type_enabled(v104, v156))
      {
        goto LABEL_249;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v106 = "%{public}s called with null configure_http_messaging";
      goto LABEL_248;
    }

    if (v155 != 1)
    {
      v104 = __nwlog_obj();
      v105 = v156;
      if (os_log_type_enabled(v104, v156))
      {
        *buf = 136446210;
        v158 = "nw_parameters_create_secure_http_messaging";
        v106 = "%{public}s called with null configure_http_messaging, backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    v122 = v9;
    v123 = v12;
    backtrace_string = __nw_create_backtrace_string();
    v125 = __nwlog_obj();
    v126 = v156;
    v136 = os_log_type_enabled(v125, v156);
    if (backtrace_string)
    {
      if (!v136)
      {
        goto LABEL_224;
      }

      *buf = 136446466;
      v158 = "nw_parameters_create_secure_http_messaging";
      v159 = 2082;
      v160 = backtrace_string;
      v128 = "%{public}s called with null configure_http_messaging, dumping backtrace:%{public}s";
      goto LABEL_223;
    }

    v9 = v122;
    if (!v136)
    {
      goto LABEL_272;
    }

    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v143 = "%{public}s called with null configure_http_messaging, no backtrace";
LABEL_271:
    _os_log_impl(&dword_181A37000, v125, v126, v143, buf, 0xCu);
    goto LABEL_272;
  }

  if (v13 == &__block_literal_global_19409)
  {
    v101 = v11;
    v115 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v115, 16, "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable))", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v103, &v156, &v155))
    {
      goto LABEL_250;
    }

    if (v156 == OS_LOG_TYPE_FAULT)
    {
      v104 = __nwlog_obj();
      v105 = v156;
      if (os_log_type_enabled(v104, v156))
      {
        *buf = 136446210;
        v158 = "nw_parameters_create_secure_http_messaging";
        v106 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_248;
      }

LABEL_249:

LABEL_250:
      if (!v103)
      {
LABEL_252:
        v63 = 0;
        v11 = v101;
        goto LABEL_151;
      }

LABEL_251:
      free(v103);
      goto LABEL_252;
    }

    if (v155 != 1)
    {
      v104 = __nwlog_obj();
      v105 = v156;
      if (os_log_type_enabled(v104, v156))
      {
        *buf = 136446210;
        v158 = "nw_parameters_create_secure_http_messaging";
        v106 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    v122 = v9;
    v123 = v12;
    backtrace_string = __nw_create_backtrace_string();
    v125 = __nwlog_obj();
    v126 = v156;
    v137 = os_log_type_enabled(v125, v156);
    if (backtrace_string)
    {
      if (!v137)
      {
        goto LABEL_224;
      }

      *buf = 136446466;
      v158 = "nw_parameters_create_secure_http_messaging";
      v159 = 2082;
      v160 = backtrace_string;
      v128 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_223:
      _os_log_impl(&dword_181A37000, v125, v126, v128, buf, 0x16u);
LABEL_224:

      free(backtrace_string);
      v12 = v123;
      v9 = v122;
      if (!v103)
      {
        goto LABEL_252;
      }

      goto LABEL_251;
    }

    v9 = v122;
    if (v137)
    {
      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v143 = "%{public}s called with null (configure_http_messaging != (_nw_parameters_configure_protocol_disable)), no backtrace";
      goto LABEL_271;
    }

LABEL_272:

    v12 = v123;
    if (!v103)
    {
      goto LABEL_252;
    }

    goto LABEL_251;
  }

  v150 = _nw_parameters_create();
  if (v150)
  {
    stack = _nw_parameters_copy_default_protocol_stack();
    if (stack)
    {
      v148 = v12;
      v15 = v11;
      if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
      }

      v149 = v10;
      options = nw_protocol_create_options(nw_protocol_copy_http_messaging_definition_definition);
      nw_protocol_options_access_handle(options, &__block_literal_global_96);
      if (v14 != &__block_literal_global_2)
      {
        v14[2](v14, options);
      }

      v144 = v14;
      v17 = nw_http_messaging_options_copy_http1_options(options);

      v18 = nw_http_messaging_options_copy_http2_options(options);
      v19 = nw_http_messaging_options_copy_http3_options(options);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_parameters_create_secure_http_messaging_block_invoke;
      aBlock[3] = &__block_descriptor_35_e39___NSObject_OS_nw_protocol_options__8__0l;
      v152 = v19 != 0;
      v153 = v18 != 0;
      v154 = v17 != 0;
      v20 = _Block_copy(aBlock);
      v145 = v20;
      v27 = 0;
      if (v149 == &__block_literal_global_19409 || v15 == &__block_literal_global_19409 || !v19)
      {
LABEL_22:
        if (v17)
        {
          if (v148 == &__block_literal_global_19409)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        else if (v148 == &__block_literal_global_19409 || !v18)
        {
          goto LABEL_36;
        }

        v36 = _nw_tcp_create_options(v20, v21, v22, v23, v24, v25, v26);
        if (v36)
        {
          v17 = v36;
          if (v148 != &__block_literal_global_2)
          {
            v148[2]();
          }

          if (!v27)
          {
            _nw_protocol_stack_set_transport_protocol(stack, v17);
          }

LABEL_36:
          nw_protocol_stack_prepend_application_protocol(stack, options);
          v37 = _nw_array_create();
          if (v27 && v17)
          {
            v38 = _nw_protocol_transform_create();
            if (!v38)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v84 = gLogObj;
              *buf = 136446210;
              v158 = "nw_parameters_create_secure_http_messaging";
              v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v84, 16, "%{public}s nw_protocol_transform_create failed", buf, 12);

              v156 = OS_LOG_TYPE_ERROR;
              v155 = 0;
              if (!__nwlog_fault(v80, &v156, &v155))
              {
                goto LABEL_143;
              }

              if (v156 == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v81 = gLogObj;
                v82 = v156;
                if (os_log_type_enabled(v81, v156))
                {
                  *buf = 136446210;
                  v158 = "nw_parameters_create_secure_http_messaging";
                  v83 = "%{public}s nw_protocol_transform_create failed";
                  goto LABEL_141;
                }

LABEL_142:

                goto LABEL_143;
              }

              if (v155 != 1)
              {
                v81 = __nwlog_obj();
                v82 = v156;
                if (os_log_type_enabled(v81, v156))
                {
                  *buf = 136446210;
                  v158 = "nw_parameters_create_secure_http_messaging";
                  v83 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
                  goto LABEL_141;
                }

                goto LABEL_142;
              }

              v94 = __nw_create_backtrace_string();
              v95 = __nwlog_obj();
              v96 = v156;
              v98 = os_log_type_enabled(v95, v156);
              if (v94)
              {
                if (!v98)
                {
                  goto LABEL_133;
                }

                goto LABEL_132;
              }

              if (v98)
              {
                *buf = 136446210;
                v158 = "nw_parameters_create_secure_http_messaging";
                goto LABEL_166;
              }

              goto LABEL_167;
            }

            v39 = v38;
            _nw_protocol_transform_clear_protocols_at_level(v38, 3);
            v40 = v39;
            v41 = v27;
            _nw_protocol_transform_append_protocol(v40, 3, v41);

            _nw_protocol_transform_set_fallback_mode(v40, 2);
            v42 = v40;
            _nw_protocol_transform_add_match_url_scheme(v42, "https");

            v43 = v42;
            _nw_protocol_transform_add_match_url_scheme(v43, "https+unix");

            v44 = v43;
            _nw_protocol_transform_add_match_url_scheme(v44, "wss");

            v45 = v44;
            _nw_protocol_transform_add_match_url_scheme(v45, "wss+unix");

            _nw_protocol_transform_set_prohibit_direct(v45, 1);
            if (v37)
            {
              _nw_array_append(v37, v45);
            }
          }

          else if (!v17)
          {
LABEL_54:
            if (v37 && _nw_array_get_count(v37))
            {
              nw_parameters_set_transform_array(v150, v37);
            }

            _nw_parameters_set_data_mode(v150, 2);
            v63 = v150;
            goto LABEL_146;
          }

          if (nw_get_http3_override_onceToken != -1)
          {
            dispatch_once(&nw_get_http3_override_onceToken, &__block_literal_global_11_76433);
          }

          if (nw_get_http3_override_value != 1)
          {
            v46 = _nw_protocol_transform_create();
            if (!v46)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v93 = gLogObj;
              *buf = 136446210;
              v158 = "nw_parameters_create_secure_http_messaging";
              v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s nw_protocol_transform_create failed", buf, 12);

              v156 = OS_LOG_TYPE_ERROR;
              v155 = 0;
              if (!__nwlog_fault(v80, &v156, &v155))
              {
                goto LABEL_143;
              }

              if (v156 == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v81 = gLogObj;
                v82 = v156;
                if (os_log_type_enabled(v81, v156))
                {
                  *buf = 136446210;
                  v158 = "nw_parameters_create_secure_http_messaging";
                  v83 = "%{public}s nw_protocol_transform_create failed";
                  goto LABEL_141;
                }

                goto LABEL_142;
              }

              if (v155 != 1)
              {
                v81 = __nwlog_obj();
                v82 = v156;
                if (os_log_type_enabled(v81, v156))
                {
                  *buf = 136446210;
                  v158 = "nw_parameters_create_secure_http_messaging";
                  v83 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
                  goto LABEL_141;
                }

                goto LABEL_142;
              }

              v94 = __nw_create_backtrace_string();
              v95 = __nwlog_obj();
              v96 = v156;
              v99 = os_log_type_enabled(v95, v156);
              if (v94)
              {
                if (!v99)
                {
                  goto LABEL_133;
                }

                goto LABEL_132;
              }

              if (v99)
              {
                *buf = 136446210;
                v158 = "nw_parameters_create_secure_http_messaging";
                goto LABEL_166;
              }

              goto LABEL_167;
            }

            v47 = v46;
            _nw_protocol_transform_clear_protocols_at_level(v46, 3);
            v48 = v145[2]();
            v9[2](v9, v48, 0);

            nw_protocol_transform_append_protocol(v47, 4, v48);
            v49 = v47;
            v50 = v17;
            _nw_protocol_transform_append_protocol(v49, 3, v50);

            v51 = v49;
            _nw_protocol_transform_add_match_url_scheme(v51, "https");

            v52 = v51;
            _nw_protocol_transform_add_match_url_scheme(v52, "https+unix");

            v53 = v52;
            _nw_protocol_transform_add_match_url_scheme(v53, "wss");

            v54 = v53;
            _nw_protocol_transform_add_match_url_scheme(v54, "wss+unix");

            _nw_protocol_transform_set_prohibit_direct(v54, 1);
            if (v37)
            {
              _nw_array_append(v37, v54);
            }
          }

          v55 = _nw_protocol_transform_create();
          if (v55)
          {
            v56 = v55;
            _nw_protocol_transform_clear_protocols_at_level(v55, 3);
            v57 = v56;
            v58 = v17;
            _nw_protocol_transform_append_protocol(v57, 3, v58);

            v59 = v57;
            _nw_protocol_transform_add_match_url_scheme(v59, "http");

            v60 = v59;
            _nw_protocol_transform_add_match_url_scheme(v60, "http+unix");

            v61 = v60;
            _nw_protocol_transform_add_match_url_scheme(v61, "ws");

            v62 = v61;
            _nw_protocol_transform_add_match_url_scheme(v62, "ws+unix");

            _nw_protocol_transform_set_prohibit_direct(v62, 1);
            if (v37)
            {
              _nw_array_append(v37, v62);
            }

            goto LABEL_54;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v79 = gLogObj;
          *buf = 136446210;
          v158 = "nw_parameters_create_secure_http_messaging";
          v80 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s nw_protocol_transform_create failed", buf, 12);

          v156 = OS_LOG_TYPE_ERROR;
          v155 = 0;
          if (!__nwlog_fault(v80, &v156, &v155))
          {
LABEL_143:
            if (!v80)
            {
LABEL_145:
              v63 = 0;
LABEL_146:

              goto LABEL_147;
            }

LABEL_144:
            free(v80);
            goto LABEL_145;
          }

          if (v156 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v81 = gLogObj;
            v82 = v156;
            if (os_log_type_enabled(v81, v156))
            {
              *buf = 136446210;
              v158 = "nw_parameters_create_secure_http_messaging";
              v83 = "%{public}s nw_protocol_transform_create failed";
LABEL_141:
              _os_log_impl(&dword_181A37000, v81, v82, v83, buf, 0xCu);
              goto LABEL_142;
            }

            goto LABEL_142;
          }

          if (v155 != 1)
          {
            v81 = __nwlog_obj();
            v82 = v156;
            if (os_log_type_enabled(v81, v156))
            {
              *buf = 136446210;
              v158 = "nw_parameters_create_secure_http_messaging";
              v83 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
              goto LABEL_141;
            }

            goto LABEL_142;
          }

          v94 = __nw_create_backtrace_string();
          v95 = __nwlog_obj();
          v96 = v156;
          v97 = os_log_type_enabled(v95, v156);
          if (v94)
          {
            if (!v97)
            {
              goto LABEL_133;
            }

LABEL_132:
            *buf = 136446466;
            v158 = "nw_parameters_create_secure_http_messaging";
            v159 = 2082;
            v160 = v94;
            _os_log_impl(&dword_181A37000, v95, v96, "%{public}s nw_protocol_transform_create failed, dumping backtrace:%{public}s", buf, 0x16u);
LABEL_133:

            free(v94);
            if (!v80)
            {
              goto LABEL_145;
            }

            goto LABEL_144;
          }

          if (v97)
          {
            *buf = 136446210;
            v158 = "nw_parameters_create_secure_http_messaging";
LABEL_166:
            _os_log_impl(&dword_181A37000, v95, v96, "%{public}s nw_protocol_transform_create failed, no backtrace", buf, 0xCu);
          }

LABEL_167:

          if (!v80)
          {
            goto LABEL_145;
          }

          goto LABEL_144;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v74 = gLogObj;
        *buf = 136446210;
        v158 = "nw_parameters_create_secure_http_messaging";
        v75 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v74, 16, "%{public}s nw_tcp_create_options failed", buf, 12);

        v156 = OS_LOG_TYPE_ERROR;
        v155 = 0;
        if (!__nwlog_fault(v75, &v156, &v155))
        {
LABEL_126:
          if (!v75)
          {
LABEL_128:
            v63 = 0;
LABEL_147:

            v10 = v149;
            v14 = v144;
            goto LABEL_148;
          }

LABEL_127:
          free(v75);
          goto LABEL_128;
        }

        if (v156 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v76 = gLogObj;
          v77 = v156;
          if (!os_log_type_enabled(v76, v156))
          {
LABEL_125:

            goto LABEL_126;
          }

          *buf = 136446210;
          v158 = "nw_parameters_create_secure_http_messaging";
          v78 = "%{public}s nw_tcp_create_options failed";
        }

        else
        {
          if (v155 == 1)
          {
            v89 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v90 = gLogObj;
            v91 = v156;
            v92 = os_log_type_enabled(v90, v156);
            if (v89)
            {
              if (v92)
              {
                *buf = 136446466;
                v158 = "nw_parameters_create_secure_http_messaging";
                v159 = 2082;
                v160 = v89;
                _os_log_impl(&dword_181A37000, v90, v91, "%{public}s nw_tcp_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v89);
              if (!v75)
              {
                goto LABEL_128;
              }
            }

            else
            {
              if (v92)
              {
                *buf = 136446210;
                v158 = "nw_parameters_create_secure_http_messaging";
                _os_log_impl(&dword_181A37000, v90, v91, "%{public}s nw_tcp_create_options failed, no backtrace", buf, 0xCu);
              }

              if (!v75)
              {
                goto LABEL_128;
              }
            }

            goto LABEL_127;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v76 = gLogObj;
          v77 = v156;
          if (!os_log_type_enabled(v76, v156))
          {
            goto LABEL_125;
          }

          *buf = 136446210;
          v158 = "nw_parameters_create_secure_http_messaging";
          v78 = "%{public}s nw_tcp_create_options failed, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v76, v77, v78, buf, 0xCu);
        goto LABEL_125;
      }

      stream_options = _nw_quic_create_stream_options(v20);
      if (stream_options)
      {
        v27 = stream_options;
        _nw_protocol_stack_set_transport_protocol(stack, stream_options);
        if (v149 != &__block_literal_global_2)
        {
          v149[2]();
        }

        v29 = nw_quic_stream_copy_shared_connection_options(v27);
        v30 = v145[2]();
        v9[2](v9, v30, 1);
        nw_quic_connection_set_sec_protocol_options(v29, v30);
        if (v15 != &__block_literal_global_2)
        {
          v15[2](v15, v29);
        }

        goto LABEL_22;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v69 = gLogObj;
      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v70 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s nw_quic_create_stream_options failed", buf, 12);

      v156 = OS_LOG_TYPE_ERROR;
      v155 = 0;
      v10 = v149;
      if (!__nwlog_fault(v70, &v156, &v155))
      {
LABEL_119:
        if (!v70)
        {
LABEL_121:
          v63 = 0;
LABEL_148:

          v11 = v15;
          v12 = v148;
LABEL_149:

          goto LABEL_150;
        }

LABEL_120:
        free(v70);
        goto LABEL_121;
      }

      if (v156 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v71 = gLogObj;
        v72 = v156;
        if (!os_log_type_enabled(v71, v156))
        {
LABEL_118:

          goto LABEL_119;
        }

        *buf = 136446210;
        v158 = "nw_parameters_create_secure_http_messaging";
        v73 = "%{public}s nw_quic_create_stream_options failed";
      }

      else
      {
        if (v155 == 1)
        {
          v85 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v86 = gLogObj;
          v87 = v156;
          v88 = os_log_type_enabled(v86, v156);
          if (v85)
          {
            if (v88)
            {
              *buf = 136446466;
              v158 = "nw_parameters_create_secure_http_messaging";
              v159 = 2082;
              v160 = v85;
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s nw_quic_create_stream_options failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v85);
            v10 = v149;
            if (!v70)
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v88)
            {
              *buf = 136446210;
              v158 = "nw_parameters_create_secure_http_messaging";
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s nw_quic_create_stream_options failed, no backtrace", buf, 0xCu);
            }

            v10 = v149;
            if (!v70)
            {
              goto LABEL_121;
            }
          }

          goto LABEL_120;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v71 = gLogObj;
        v72 = v156;
        if (!os_log_type_enabled(v71, v156))
        {
          goto LABEL_118;
        }

        *buf = 136446210;
        v158 = "nw_parameters_create_secure_http_messaging";
        v73 = "%{public}s nw_quic_create_stream_options failed, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v71, v72, v73, buf, 0xCu);
      goto LABEL_118;
    }

    v116 = v9;
    v117 = __nwlog_obj();
    *buf = 136446210;
    v158 = "nw_parameters_create_secure_http_messaging";
    v118 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v117, 16, "%{public}s called with null stack", buf, 12);

    v156 = OS_LOG_TYPE_ERROR;
    v155 = 0;
    if (!__nwlog_fault(v118, &v156, &v155))
    {
LABEL_278:
      if (v118)
      {
        free(v118);
      }

      v63 = 0;
      v9 = v116;
      goto LABEL_149;
    }

    if (v156 == OS_LOG_TYPE_FAULT)
    {
      v119 = __nwlog_obj();
      v120 = v156;
      if (!os_log_type_enabled(v119, v156))
      {
LABEL_256:

        goto LABEL_278;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v121 = "%{public}s called with null stack";
    }

    else
    {
      if (v155 == 1)
      {
        v138 = v11;
        v139 = __nw_create_backtrace_string();
        v140 = __nwlog_obj();
        v141 = v156;
        v142 = os_log_type_enabled(v140, v156);
        if (v139)
        {
          if (v142)
          {
            *buf = 136446466;
            v158 = "nw_parameters_create_secure_http_messaging";
            v159 = 2082;
            v160 = v139;
            _os_log_impl(&dword_181A37000, v140, v141, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v139);
        }

        else
        {
          if (v142)
          {
            *buf = 136446210;
            v158 = "nw_parameters_create_secure_http_messaging";
            _os_log_impl(&dword_181A37000, v140, v141, "%{public}s called with null stack, no backtrace", buf, 0xCu);
          }
        }

        v116 = v9;
        v11 = v138;
        goto LABEL_278;
      }

      v119 = __nwlog_obj();
      v120 = v156;
      if (!os_log_type_enabled(v119, v156))
      {
        goto LABEL_256;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v121 = "%{public}s called with null stack, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v119, v120, v121, buf, 0xCu);
    goto LABEL_256;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = gLogObj;
  *buf = 136446210;
  v158 = "nw_parameters_create_secure_http_messaging";
  v32 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s nw_parameters_create failed", buf, 12);

  v156 = OS_LOG_TYPE_ERROR;
  v155 = 0;
  if (__nwlog_fault(v32, &v156, &v155))
  {
    if (v156 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = v156;
      if (!os_log_type_enabled(v33, v156))
      {
LABEL_74:

        goto LABEL_75;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v35 = "%{public}s nw_parameters_create failed";
    }

    else
    {
      if (v155 == 1)
      {
        v146 = v9;
        v64 = v11;
        v65 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v66 = gLogObj;
        v67 = v156;
        v68 = os_log_type_enabled(v66, v156);
        if (v65)
        {
          if (v68)
          {
            *buf = 136446466;
            v158 = "nw_parameters_create_secure_http_messaging";
            v159 = 2082;
            v160 = v65;
            _os_log_impl(&dword_181A37000, v66, v67, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v65);
        }

        else
        {
          if (v68)
          {
            *buf = 136446210;
            v158 = "nw_parameters_create_secure_http_messaging";
            _os_log_impl(&dword_181A37000, v66, v67, "%{public}s nw_parameters_create failed, no backtrace", buf, 0xCu);
          }
        }

        v11 = v64;
        v9 = v146;
        if (!v32)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = v156;
      if (!os_log_type_enabled(v33, v156))
      {
        goto LABEL_74;
      }

      *buf = 136446210;
      v158 = "nw_parameters_create_secure_http_messaging";
      v35 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
    goto LABEL_74;
  }

LABEL_75:
  if (v32)
  {
LABEL_76:
    free(v32);
  }

LABEL_77:
  v63 = 0;
LABEL_150:

LABEL_151:
  return v63;
}

id *nw_http_messaging_allocate_options(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x56CC64F2uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v7 = 136446722;
    v8 = "nw_http_messaging_allocate_options";
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
    v12 = 96;
    v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s strict_calloc(%zu, %zu) failed", &v7, 32);

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v5);
  }

  if (nw_http_connection_state_storage_copy_shared_token != -1)
  {
    dispatch_once(&nw_http_connection_state_storage_copy_shared_token, &__block_literal_global_55557);
  }

  objc_storeStrong(v2 + 7, nw_http_connection_state_storage_copy_shared_storage);

  return v2;
}

uint64_t nw_protocol_options_is_http2(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http2_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http2_definition_onceToken, &__block_literal_global_5_76055);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http2_definition_http2_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http2";
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
        v14 = "nw_protocol_options_is_http2";
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
            v14 = "nw_protocol_options_is_http2";
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
        v14 = "nw_protocol_options_is_http2";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http2";
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