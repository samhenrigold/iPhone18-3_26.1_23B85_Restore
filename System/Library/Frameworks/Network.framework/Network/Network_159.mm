uint64_t nw_protocol_masque_listener_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v80 = *MEMORY[0x1E69E9840];
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
        v73 = "nw_protocol_masque_listener_finalize_output_frames";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v70 = 0;
        if (__nwlog_fault(v9, &type, &v70))
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
              v73 = "nw_protocol_masque_listener_finalize_output_frames";
              v12 = "%{public}s called with null masque";
LABEL_51:
              v34 = v10;
              v35 = v11;
LABEL_52:
              _os_log_impl(&dword_181A37000, v34, v35, v12, buf, 0xCu);
            }
          }

          else if (v70 == 1)
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
                v73 = "nw_protocol_masque_listener_finalize_output_frames";
                v74 = 2082;
                v75 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_53;
            }

            if (v24)
            {
              *buf = 136446210;
              v73 = "nw_protocol_masque_listener_finalize_output_frames";
              v12 = "%{public}s called with null masque, no backtrace";
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
              v73 = "nw_protocol_masque_listener_finalize_output_frames";
              v12 = "%{public}s called with null masque, backtrace limit exceeded";
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
    v66 = ___ZL50nw_protocol_masque_listener_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v67 = &__block_descriptor_tmp_201;
    v68 = a1;
    p_output_handler = &v8[1].output_handler;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v14 = *(tqh_first + 4);
      v15 = v66(v65);
      tqh_first = v14;
    }

    while ((v15 & 1) != 0);
    output_handler = v3->output_handler;
    if (!output_handler)
    {
      v54 = __nwlog_obj();
      *buf = 136446210;
      v73 = "__nw_protocol_finalize_output_frames";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null protocol", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v70 = 0;
      if (!__nwlog_fault(v9, &type, &v70))
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
        v73 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol";
        goto LABEL_51;
      }

      if (v70 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v73 = "__nw_protocol_finalize_output_frames";
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
          v73 = "__nw_protocol_finalize_output_frames";
          v74 = 2082;
          v75 = v60;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v60);
        goto LABEL_53;
      }

      if (v61)
      {
        *buf = 136446210;
        v73 = "__nw_protocol_finalize_output_frames";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_53;
    }

    v17 = output_handler->handle;
    v18 = v3->output_handler;
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
    v73 = "__nw_protocol_finalize_output_frames";
    if (!name)
    {
      name = "invalid";
    }

    v74 = 2082;
    v75 = name;
    v76 = 2048;
    v77 = output_handler;
    v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 32);
    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v44, &type, &v70))
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
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v47;
        v76 = 2048;
        v77 = output_handler;
        v48 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
LABEL_116:
        _os_log_impl(&dword_181A37000, v45, v46, v48, buf, 0x20u);
        goto LABEL_117;
      }

      if (v70 != 1)
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
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v62;
        v76 = 2048;
        v77 = output_handler;
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
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v63;
        v76 = 2048;
        v77 = output_handler;
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
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v57;
        v76 = 2048;
        v77 = output_handler;
        v78 = 2082;
        v79 = v55;
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
  v73 = "nw_protocol_masque_listener_finalize_output_frames";
  v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v70 = 0;
  if (__nwlog_fault(v50, &type, &v70))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v73 = "nw_protocol_masque_listener_finalize_output_frames";
        v53 = "%{public}s called with null protocol";
LABEL_123:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v70 == 1)
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
          v73 = "nw_protocol_masque_listener_finalize_output_frames";
          v74 = 2082;
          v75 = v58;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v58);
        goto LABEL_124;
      }

      if (v59)
      {
        *buf = 136446210;
        v73 = "nw_protocol_masque_listener_finalize_output_frames";
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
        v73 = "nw_protocol_masque_listener_finalize_output_frames";
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

uint64_t ___ZL50nw_protocol_masque_listener_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, _DWORD *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  v31 = 0;
  nw_frame_get_buffer(a2, &v31);
  v6 = v31 - v4;
  if (v31 - v4 == 19 || v6 == 7)
  {
    nw_frame_unclaim(a2, v5, v6, 0);
    return 1;
  }

  if (!nw_frame_unclaim(a2, v5, 7u, 0))
  {
    v19 = *(a1 + 40);
    if (v19 && (*(v19 + 505) & 1) != 0)
    {
      return 1;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v20 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = (v21 + 507);
    }

    else
    {
      v22 = "";
    }

    if (v21)
    {
      v23 = " ";
    }

    else
    {
      v23 = "";
    }

    v24 = nw_frame_unclaimed_length(a2);
    *buf = 136446722;
    v33 = v22;
    v34 = 2080;
    v35 = v23;
    v36 = 1024;
    v37 = v24;
    v16 = "%{public}s%sFrame is too short for header (%u)";
LABEL_35:
    v17 = v20;
    v18 = 28;
LABEL_36:
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    return 1;
  }

  v30 = 0;
  if (*nw_frame_unclaimed_bytes(a2, &v30) == 4)
  {
    return 1;
  }

  if (!nw_frame_unclaim(a2, v9, 0xCu, 0))
  {
    v25 = *(a1 + 40);
    if (v25 && (*(v25 + 505) & 1) != 0)
    {
      return 1;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v20 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    v26 = *(a1 + 40);
    if (v26)
    {
      v27 = (v26 + 507);
    }

    else
    {
      v27 = "";
    }

    if (v26)
    {
      v28 = " ";
    }

    else
    {
      v28 = "";
    }

    v29 = nw_frame_unclaimed_length(a2);
    *buf = 136446722;
    v33 = v27;
    v34 = 2080;
    v35 = v28;
    v36 = 1024;
    v37 = v29;
    v16 = "%{public}s%sFrame did not contain expected IP version, too short for IPv6 (%u)";
    goto LABEL_35;
  }

  if (*nw_frame_unclaimed_bytes(a2, &v30) != 6)
  {
    v10 = *(a1 + 40);
    if (!v10 || (*(v10 + 505) & 1) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v11 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        v13 = v12 == 0;
        if (v12)
        {
          v14 = (v12 + 507);
        }

        else
        {
          v14 = "";
        }

        v15 = " ";
        if (v13)
        {
          v15 = "";
        }

        *buf = 136446466;
        v33 = v14;
        v34 = 2080;
        v35 = v15;
        v16 = "%{public}s%sFrame did not contain expected IP version";
        v17 = v11;
        v18 = 22;
        goto LABEL_36;
      }
    }
  }

  return 1;
}

BOOL nw_protocol_masque_listener_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a1;
    handle = a1->handle;
    v10 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v11 = 1;
      goto LABEL_11;
    }

    v10 = *a1[1].flow_id;
    if (v10)
    {
LABEL_6:
      callbacks = v10[1].callbacks;
      v11 = 0;
      if (callbacks)
      {
        v10[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v11 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v13 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (!__nwlog_fault(v14, &type, &v76))
        {
          goto LABEL_50;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          v17 = "%{public}s called with null masque";
          goto LABEL_48;
        }

        if (v76 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_50;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          v17 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_48;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v28 = type;
        v29 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v29)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          v17 = "%{public}s called with null masque, no backtrace";
          v38 = v27;
          v39 = v28;
          goto LABEL_49;
        }

LABEL_50:
        if (v14)
        {
          free(v14);
        }

        goto LABEL_52;
      }

      v13 = *a1[1].flow_id;
    }

    if ((HIBYTE(v13[9].identifier) & 0x10) != 0)
    {
      default_input_handler = v13[8].default_input_handler;
      if (default_input_handler)
      {
        if (a2)
        {
          node = nw_hash_table_get_node(default_input_handler, a2, 8);
          if (node && a2->output_handler_context == node)
          {
            v30 = node;
            address_family = nw_endpoint_get_address_family(node[6]);
            v32 = address_family;
            if (address_family == 2 || address_family == 30)
            {
              output_handler = v8->output_handler;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              v79 = (output_handler->callbacks->get_output_frames)();
              if (*(*&buf[8] + 24))
              {
                v67[0] = MEMORY[0x1E69E9820];
                v67[1] = 0x40000000;
                v68 = ___ZL45nw_protocol_masque_listener_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
                v69 = &unk_1E6A2FE30;
                v75 = v32;
                v70 = buf;
                p_output_handler = &v13[1].output_handler;
                v72 = a6;
                v73 = v30 + 4;
                v74 = v8;
                tqh_first = a6->tqh_first;
                do
                {
                  if (!tqh_first)
                  {
                    break;
                  }

                  v35 = *(tqh_first + 4);
                  v36 = (v68)(v67);
                  tqh_first = v35;
                }

                while ((v36 & 1) != 0);
                v37 = *(*&buf[8] + 24);
              }

              else
              {
                v37 = 0;
              }

              _Block_object_dispose(buf, 8);
              result = v37;
            }

            else
            {
              if ((BYTE1(v13[9].callbacks) & 1) == 0)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v46 = gprivacy_proxyLogObj;
                result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
                if (!result)
                {
                  goto LABEL_53;
                }

                *buf = 136446722;
                *&buf[4] = v13 + 603;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 1024;
                v79 = v32;
                v23 = "%{public}s%sInvalid address family %u";
                v24 = v46;
                v25 = 28;
                goto LABEL_33;
              }

              result = 0;
            }

LABEL_53:
            if ((v11 & 1) == 0)
            {
              v40 = v8->handle;
              if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v8 = *v8[1].flow_id) != 0)
              {
                v41 = v8[1].callbacks;
                if (v41)
                {
                  v42 = (v41 - 1);
                  v8[1].callbacks = v42;
                  if (!v42)
                  {
                    v43 = result;
                    v44 = *v8[1].flow_id;
                    if (v44)
                    {
                      *v8[1].flow_id = 0;
                      v44[2](v44);
                      _Block_release(v44);
                    }

                    if (v8[1].flow_id[8])
                    {
                      v45 = *v8[1].flow_id;
                      if (v45)
                      {
                        _Block_release(v45);
                      }
                    }

                    free(v8);
                    return v43;
                  }
                }
              }
            }

            return result;
          }

          if ((BYTE1(v13[9].callbacks) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v20 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = v13 + 603;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s%sNo valid node found", buf, 0x16u);
            }
          }

LABEL_28:
          if (BYTE1(v13[9].callbacks))
          {
LABEL_52:
            result = 0;
            goto LABEL_53;
          }

          if (__nwlog_privacy_proxy_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
          }

          v21 = gprivacy_proxyLogObj;
          result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = v13 + 603;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v23 = "%{public}s%sNo valid listener flow found";
          v24 = v21;
          v25 = 22;
LABEL_33:
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
          goto LABEL_52;
        }

        v54 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
        v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null input_protocol", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v76 = 0;
        if (__nwlog_fault(v55, &type, &v76))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v56 = __nwlog_obj();
            v57 = type;
            if (!os_log_type_enabled(v56, type))
            {
              goto LABEL_132;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
            v58 = "%{public}s called with null input_protocol";
            goto LABEL_131;
          }

          if (v76 != 1)
          {
            v56 = __nwlog_obj();
            v57 = type;
            if (!os_log_type_enabled(v56, type))
            {
              goto LABEL_132;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
            v58 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_131;
          }

          v65 = __nw_create_backtrace_string();
          v56 = __nwlog_obj();
          v57 = type;
          v66 = os_log_type_enabled(v56, type);
          if (v65)
          {
            if (v66)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
              *&buf[12] = 2082;
              *&buf[14] = v65;
              _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v65);
            goto LABEL_132;
          }

          if (v66)
          {
            *buf = 136446210;
            *&buf[4] = "nw_masque_get_listener_flow_for_input_protocol";
            v58 = "%{public}s called with null input_protocol, no backtrace";
LABEL_131:
            _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
          }
        }

LABEL_132:
        if (v55)
        {
          free(v55);
        }

        goto LABEL_28;
      }

      v53 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null masque->listener_flows", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v14, &type, &v76))
      {
        goto LABEL_50;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listener_flows";
        goto LABEL_48;
      }

      if (v76 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v64 = os_log_type_enabled(v15, type);
        if (v61)
        {
          if (v64)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v61;
            v63 = "%{public}s called with null masque->listener_flows, dumping backtrace:%{public}s";
            goto LABEL_104;
          }

          goto LABEL_105;
        }

        if (!v64)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listener_flows, no backtrace";
      }

      else
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listener_flows, backtrace limit exceeded";
      }
    }

    else
    {
      v52 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
      v14 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null masque->listen_udp", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v76 = 0;
      if (!__nwlog_fault(v14, &type, &v76))
      {
        goto LABEL_50;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listen_udp";
        goto LABEL_48;
      }

      if (v76 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v62 = os_log_type_enabled(v15, type);
        if (v61)
        {
          if (v62)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v61;
            v63 = "%{public}s called with null masque->listen_udp, dumping backtrace:%{public}s";
LABEL_104:
            _os_log_impl(&dword_181A37000, v15, v16, v63, buf, 0x16u);
          }

LABEL_105:
          free(v61);
          goto LABEL_50;
        }

        if (!v62)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listen_udp, no backtrace";
      }

      else
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (!os_log_type_enabled(v15, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v17 = "%{public}s called with null masque->listen_udp, backtrace limit exceeded";
      }
    }

LABEL_48:
    v38 = v15;
    v39 = v16;
LABEL_49:
    _os_log_impl(&dword_181A37000, v38, v39, v17, buf, 0xCu);
    goto LABEL_50;
  }

  v47 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
  v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v76 = 0;
  if (__nwlog_fault(v48, &type, &v76))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v51 = "%{public}s called with null protocol";
LABEL_121:
        _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      }
    }

    else if (v76 == 1)
    {
      v59 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = type;
      v60 = os_log_type_enabled(v49, type);
      if (v59)
      {
        if (v60)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v59;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v59);
        goto LABEL_122;
      }

      if (v60)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v51 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_121;
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_listener_get_output_frames";
        v51 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_121;
      }
    }
  }

LABEL_122:
  if (v48)
  {
    free(v48);
  }

  return 0;
}

uint64_t ___ZL45nw_protocol_masque_listener_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v41);
  v5 = *(a1 + 72);
  if (v5 == 2)
  {
    if (v41 <= 6)
    {
      v13 = *(a1 + 40);
      if (v13 && (*(v13 + 505) & 1) != 0)
      {
        goto LABEL_38;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v7 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      v14 = *(a1 + 40);
      v9 = "";
      v15 = v14 == 0;
      if (v14)
      {
        v11 = (v14 + 507);
      }

      else
      {
        v11 = "";
      }

      v12 = v41;
      *buf = 136446722;
      if (!v15)
      {
        v9 = " ";
      }

      goto LABEL_37;
    }

    v26 = v4;
    *v4 = 4;
    *v42 = 0;
    *&v42[8] = 0;
    if (nw_endpoint_fillout_v4_address(*(*(a1 + 56) + 16), v42))
    {
      *(v26 + 1) = *&v42[4];
      *(v26 + 5) = *&v42[2];
      v24 = a2;
      v25 = 7;
      goto LABEL_45;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
    v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null success", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v29, &type, &v39))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
      v32 = "%{public}s called with null success";
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v37 = os_log_type_enabled(v30, type);
      if (backtrace_string)
      {
        if (v37)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          v36 = buf;
          goto LABEL_63;
        }

LABEL_64:
        free(backtrace_string);
        goto LABEL_76;
      }

      if (!v37)
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
      v32 = "%{public}s called with null success, no backtrace";
    }

    else
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
      v32 = "%{public}s called with null success, backtrace limit exceeded";
    }

    v38 = buf;
    goto LABEL_75;
  }

  if (v5 != 30)
  {
    v16 = *(a1 + 40);
    if (v16 && (*(v16 + 505) & 1) != 0)
    {
      goto LABEL_38;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v7 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v17 = *(a1 + 40);
    v9 = "";
    v18 = v17 == 0;
    if (v17)
    {
      v11 = (v17 + 507);
    }

    else
    {
      v11 = "";
    }

    v12 = v41;
    *buf = 136446722;
    if (!v18)
    {
      v9 = " ";
    }

    goto LABEL_37;
  }

  if (v41 <= 0x12)
  {
    v6 = *(a1 + 40);
    if (v6 && (*(v6 + 505) & 1) != 0)
    {
      goto LABEL_38;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v7 = gprivacy_proxyLogObj;
    if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v8 = *(a1 + 40);
    v9 = "";
    v10 = v8 == 0;
    if (v8)
    {
      v11 = (v8 + 507);
    }

    else
    {
      v11 = "";
    }

    v12 = v41;
    *buf = 136446722;
    if (!v10)
    {
      v9 = " ";
    }

LABEL_37:
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    v44 = v12;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s%sFrame is too short for header (%u)", buf, 0x1Cu);
LABEL_38:
    v19 = (*(a1 + 48) + 8);
    v20 = *(a2 + 32);
    v21 = *(a2 + 40);
    if (v20)
    {
      v19 = (v20 + 40);
    }

    *v19 = v21;
    *v21 = v20;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    --*(*(*(a1 + 32) + 8) + 24);
    return 1;
  }

  v22 = v4;
  *v4 = 6;
  v44 = 0;
  memset(buf, 0, sizeof(buf));
  if (nw_endpoint_fillout_v6_address(*(*(a1 + 56) + 16), buf))
  {
    *(v22 + 1) = *&buf[8];
    *(v22 + 17) = *&buf[2];
    v24 = a2;
    v25 = 19;
LABEL_45:
    nw_frame_claim(v24, v23, v25, 0);
    return 1;
  }

  v28 = __nwlog_obj();
  *v42 = 136446210;
  *&v42[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
  v29 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null success", v42, 12);
  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v29, &type, &v39))
  {
    goto LABEL_76;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v30 = __nwlog_obj();
    v31 = type;
    if (os_log_type_enabled(v30, type))
    {
      *v42 = 136446210;
      *&v42[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
      v32 = "%{public}s called with null success";
LABEL_71:
      v38 = v42;
LABEL_75:
      _os_log_impl(&dword_181A37000, v30, v31, v32, v38, 0xCu);
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  if (v39 == 1)
  {
    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v35 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v42 = 136446210;
        *&v42[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
        v32 = "%{public}s called with null success, no backtrace";
        goto LABEL_71;
      }

      goto LABEL_76;
    }

    if (v35)
    {
      *v42 = 136446466;
      *&v42[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
      *&v42[12] = 2082;
      *&v42[14] = backtrace_string;
      v36 = v42;
LABEL_63:
      _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null success, dumping backtrace:%{public}s", v36, 0x16u);
      goto LABEL_64;
    }

    goto LABEL_64;
  }

  v30 = __nwlog_obj();
  v31 = type;
  if (os_log_type_enabled(v30, type))
  {
    *v42 = 136446210;
    *&v42[4] = "nw_protocol_masque_listener_get_output_frames_block_invoke";
    v32 = "%{public}s called with null success, backtrace limit exceeded";
    goto LABEL_71;
  }

LABEL_76:
  if (v29)
  {
    free(v29);
  }

  return 0;
}

uint64_t nw_protocol_masque_supports_external_data(nw_protocol *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_masque_supports_external_data";
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v25, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_protocol_masque_supports_external_data";
          v28 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v34 = "nw_protocol_masque_supports_external_data";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "nw_protocol_masque_supports_external_data";
          v28 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_protocol_masque_supports_external_data";
          v28 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

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
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v6 = *a1[1].flow_id;
LABEL_18:
    result = (HIBYTE(v6[9].identifier) >> 6) & 1;
    if (v4)
    {
      return result;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v34 = "nw_protocol_masque_supports_external_data";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v7, &type, &v31))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_protocol_masque_supports_external_data";
    v10 = "%{public}s called with null masque";
LABEL_27:
    v16 = v8;
    v17 = v9;
LABEL_28:
    _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
    goto LABEL_29;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_protocol_masque_supports_external_data";
    v10 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_27;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(gLogObj, type);
  if (v12)
  {
    if (v15)
    {
      *buf = 136446466;
      v34 = "nw_protocol_masque_supports_external_data";
      v35 = 2082;
      v36 = v12;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
  }

  else if (v15)
  {
    *buf = 136446210;
    v34 = "nw_protocol_masque_supports_external_data";
    v10 = "%{public}s called with null masque, no backtrace";
    v16 = v13;
    v17 = v14;
    goto LABEL_28;
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }

  result = 0;
  if ((v4 & 1) == 0)
  {
LABEL_32:
    v18 = v1->handle;
    if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v19 = v1[1].callbacks;
      if (v19)
      {
        v20 = (v19 - 1);
        v1[1].callbacks = v20;
        if (!v20)
        {
          v21 = result;
          v22 = *v1[1].flow_id;
          if (v22)
          {
            *v1[1].flow_id = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v1[1].flow_id[8])
          {
            v23 = *v1[1].flow_id;
            if (v23)
            {
              _Block_release(v23);
            }
          }

          free(v1);
          return v21;
        }
      }
    }
  }

  return result;
}

void nw_protocol_masque_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
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
        v47 = "nw_protocol_masque_error";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v9, &type, &v44))
        {
          goto LABEL_45;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_45;
          }

          *buf = 136446210;
          v47 = "nw_protocol_masque_error";
          v12 = "%{public}s called with null masque";
        }

        else
        {
          if (v44 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            v21 = type;
            v22 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v22)
              {
                *buf = 136446466;
                v47 = "nw_protocol_masque_error";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_45;
            }

            if (!v22)
            {
LABEL_45:
              if (v9)
              {
                free(v9);
              }

              goto LABEL_57;
            }

            *buf = 136446210;
            v47 = "nw_protocol_masque_error";
            v12 = "%{public}s called with null masque, no backtrace";
            v23 = v20;
            v24 = v21;
LABEL_44:
            _os_log_impl(&dword_181A37000, v23, v24, v12, buf, 0xCu);
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_45;
          }

          *buf = 136446210;
          v47 = "nw_protocol_masque_error";
          v12 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v23 = v10;
        v24 = v11;
        goto LABEL_44;
      }

      v8 = *a1[1].flow_id;
    }

    if (a3 == 40)
    {
      if (*&v8[9].flow_id[4] == 2 && (*(&v8[9].identifier + 7) & 0x600000) == 0x200000)
      {
        goto LABEL_57;
      }

      v43 = v6;
      LODWORD(v8[9].identifier) = 40;
      goto LABEL_53;
    }

    v43 = v6;
    LODWORD(v8[9].identifier) = a3;
    if ((a3 + 9831) <= 0x18 && ((1 << (a3 + 103)) & 0x187007D) != 0)
    {
      v41 = 0;
      v42 = 1;
      v14 = a3;
    }

    else
    {
      v14 = a3;
      if (a3 != 60 || (HIBYTE(v8[9].identifier) & 4) == 0)
      {
LABEL_53:
        default_input_handler = v3->default_input_handler;
        v6 = v43;
        if (default_input_handler)
        {
          v26 = default_input_handler->callbacks;
          if (v26)
          {
            error = v26->error;
            if (error)
            {
              error();
            }
          }
        }

LABEL_57:
        if ((v6 & 1) == 0)
        {
          v28 = v3->handle;
          if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
          {
            v29 = v3[1].callbacks;
            if (v29)
            {
              v30 = (v29 - 1);
              v3[1].callbacks = v30;
              if (!v30)
              {
                v31 = *v3[1].flow_id;
                if (v31)
                {
                  *v3[1].flow_id = 0;
                  v31[2](v31);
                  _Block_release(v31);
                }

                if (v3[1].flow_id[8])
                {
                  v32 = *v3[1].flow_id;
                  if (v32)
                  {
                    _Block_release(v32);
                  }
                }

                v33 = v3;
                goto LABEL_69;
              }
            }
          }
        }

        return;
      }

      v41 = 1;
      v42 = 0;
    }

    v15 = a1;
    while (1)
    {
      v15 = v15->output_handler;
      if (!v15)
      {
        goto LABEL_53;
      }

      name = v15->identifier->name;
      if (!strcmp(name, "quic") || !strcmp(name, "quic-connection") || !strcmp(name, "tls"))
      {
        if (v15 != a2)
        {
          goto LABEL_53;
        }

        if (v42)
        {
          if ((*(&v8[9].identifier + 7) & 4) != 0)
          {
            v17 = 1206;
          }

          else
          {
            v17 = 1106;
          }

          p_output_handler = &v8[1].output_handler;
        }

        else
        {
          if (!v41)
          {
            goto LABEL_53;
          }

          p_output_handler = &v8[1].output_handler;
          v17 = v14;
        }

        nw_masque_report_error_to_proxy_agent(p_output_handler, v17);
        goto LABEL_53;
      }
    }
  }

  v34 = __nwlog_obj();
  *buf = 136446210;
  v47 = "nw_protocol_masque_error";
  v35 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v44 = 0;
  if (__nwlog_fault(v35, &type, &v44))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v47 = "nw_protocol_masque_error";
      v38 = "%{public}s called with null protocol";
LABEL_86:
      _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
      goto LABEL_87;
    }

    if (v44 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v47 = "nw_protocol_masque_error";
      v38 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_86;
    }

    v39 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type;
    v40 = os_log_type_enabled(v36, type);
    if (!v39)
    {
      if (!v40)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v47 = "nw_protocol_masque_error";
      v38 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_86;
    }

    if (v40)
    {
      *buf = 136446466;
      v47 = "nw_protocol_masque_error";
      v48 = 2082;
      v49 = v39;
      _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v39);
  }

LABEL_87:
  if (v35)
  {
    v33 = v35;
LABEL_69:
    free(v33);
  }
}

void ___ZL31nw_protocol_masque_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1)
{
  if (!nw_protocol_is_zombie(*(*(*(a1 + 32) + 8) + 40)))
  {
    v2 = *(a1 + 40);
    v3 = v2[14];
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v6 = v2 + 10;
          v7 = *(v3 + 40);
          v8 = v2[14];
          if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v3 + 64)) != 0)
          {
            v10 = *(v8 + 88);
            v9 = 0;
            if (v10)
            {
              *(v8 + 88) = v10 + 1;
            }
          }

          else
          {
            v9 = 1;
          }

          v11 = v2[15];
          v12 = v2 + 10;
          if (v11 == &nw_protocol_ref_counted_handle || v11 == &nw_protocol_ref_counted_additional_handle && (v12 = v2[18]) != 0)
          {
            v13 = v12[11];
            if (v13)
            {
              v12[11] = v13 + 1;
            }

            v5(v3, v2 + 10, 1);
            v14 = v2[15];
            if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v6 = v2[18]) != 0)
            {
              v15 = v6[11];
              if (v15)
              {
                v16 = v15 - 1;
                v6[11] = v16;
                if (!v16)
                {
                  v17 = v6[8];
                  if (v17)
                  {
                    v6[8] = 0;
                    v17[2](v17);
                    _Block_release(v17);
                  }

                  if (v6[9])
                  {
                    v18 = v6[8];
                    if (v18)
                    {
                      _Block_release(v18);
                    }
                  }

                  free(v6);
                }
              }
            }
          }

          else
          {
            v5(v3, v2 + 10, 1);
          }

          if ((v9 & 1) == 0)
          {
            v19 = *(v3 + 40);
            if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v20 = *(v3 + 88);
              if (v20)
              {
                v21 = v20 - 1;
                *(v3 + 88) = v21;
                if (!v21)
                {
                  v22 = *(v3 + 64);
                  if (v22)
                  {
                    *(v3 + 64) = 0;
                    v22[2](v22);
                    _Block_release(v22);
                  }

                  if (*(v3 + 72))
                  {
                    v23 = *(v3 + 64);
                    if (v23)
                    {
                      _Block_release(v23);
                    }
                  }

                  free(v3);
                }
              }
            }
          }

          v2 = *(a1 + 40);
        }
      }
    }

    v24 = v2[24];
    if (v24)
    {
      v25 = *(v24 + 24);
      if (v25)
      {
        v26 = *(v25 + 8);
        if (v26)
        {
          v27 = v2 + 20;
          v28 = *(v24 + 40);
          v29 = v2[24];
          if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = *(v24 + 64)) != 0)
          {
            v31 = *(v29 + 88);
            v30 = 0;
            if (v31)
            {
              *(v29 + 88) = v31 + 1;
            }
          }

          else
          {
            v30 = 1;
          }

          v32 = v2[25];
          v33 = v2 + 20;
          if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = v2[28]) != 0)
          {
            v34 = v33[11];
            if (v34)
            {
              v33[11] = v34 + 1;
            }

            v26(v24, v2 + 20, 1);
            v35 = v2[25];
            if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v27 = v2[28]) != 0)
            {
              v36 = v27[11];
              if (v36)
              {
                v37 = v36 - 1;
                v27[11] = v37;
                if (!v37)
                {
                  v38 = v27[8];
                  if (v38)
                  {
                    v27[8] = 0;
                    v38[2](v38);
                    _Block_release(v38);
                  }

                  if (v27[9])
                  {
                    v39 = v27[8];
                    if (v39)
                    {
                      _Block_release(v39);
                    }
                  }

                  free(v27);
                }
              }
            }
          }

          else
          {
            v26(v24, v2 + 20, 1);
          }

          if ((v30 & 1) == 0)
          {
            v40 = *(v24 + 40);
            if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v24 = *(v24 + 64)) != 0)
            {
              v41 = *(v24 + 88);
              if (v41)
              {
                v42 = v41 - 1;
                *(v24 + 88) = v42;
                if (!v42)
                {
                  v43 = *(v24 + 64);
                  if (v43)
                  {
                    *(v24 + 64) = 0;
                    v43[2](v43);
                    _Block_release(v43);
                  }

                  if (*(v24 + 72))
                  {
                    v44 = *(v24 + 64);
                    if (v44)
                    {
                      _Block_release(v44);
                    }
                  }

                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 __Block_byref_object_copy__75(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZL29nw_masque_wait_for_early_dataP9nw_masqueb_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  *(a2 + 32) = 0;
  v3 = *(v2 + 48);
  *(a2 + 40) = v3;
  *v3 = a2;
  *(v2 + 48) = a2 + 32;
  return 1;
}

uint64_t ___ZL26nw_masque_protocol_destroyP9nw_masque_block_invoke(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  v3 = extra;
  v4 = *extra;
  if (*extra)
  {
    *(v4 + 40) = &v16;
    v5 = extra[1];
    v16 = v4;
    v17 = v5;
    *extra = 0;
    extra[1] = extra;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v13 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v14 = &__block_descriptor_tmp_21_49595;
    v15 = 0;
    do
    {
      v6 = v16;
      if (!v16)
      {
        break;
      }

      v7 = *(v16 + 32);
      v8 = *(v16 + 40);
      v9 = (v7 + 40);
      if (!v7)
      {
        v9 = &v17;
      }

      *v9 = v8;
      *v8 = v7;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
    }

    while (((v13)(v12) & 1) != 0);
  }

  v10 = v3[2];
  if (v10)
  {
    os_release(v10);
    v3[2] = 0;
  }

  return 1;
}

uint64_t nw_protocol_masque_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_protocol_masque_replace_input_handler";
    v54 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (__nwlog_fault(v54, &type, &v68))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v55 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v55, type))
        {
          *buf = 136446210;
          v71 = "nw_protocol_masque_replace_input_handler";
          v57 = "%{public}s called with null protocol";
LABEL_130:
          _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0xCu);
        }
      }

      else if (v68 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v56 = type;
        v61 = os_log_type_enabled(v55, type);
        if (backtrace_string)
        {
          if (v61)
          {
            *buf = 136446466;
            v71 = "nw_protocol_masque_replace_input_handler";
            v72 = 2082;
            v73 = backtrace_string;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_131;
        }

        if (v61)
        {
          *buf = 136446210;
          v71 = "nw_protocol_masque_replace_input_handler";
          v57 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_130;
        }
      }

      else
      {
        v55 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v55, type))
        {
          *buf = 136446210;
          v71 = "nw_protocol_masque_replace_input_handler";
          v57 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_130;
        }
      }
    }

LABEL_131:
    if (v54)
    {
      free(v54);
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
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v68 = 0;
      if (!__nwlog_fault(v9, &type, &v68))
      {
        goto LABEL_61;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v71 = "nw_protocol_masque_replace_input_handler";
        v12 = "%{public}s called with null masque";
        goto LABEL_59;
      }

      if (v68 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v71 = "nw_protocol_masque_replace_input_handler";
        v12 = "%{public}s called with null masque, backtrace limit exceeded";
        goto LABEL_59;
      }

      v33 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type;
      v36 = os_log_type_enabled(gLogObj, type);
      if (v33)
      {
        if (v36)
        {
          *buf = 136446466;
          v71 = "nw_protocol_masque_replace_input_handler";
          v72 = 2082;
          v73 = v33;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        goto LABEL_61;
      }

      if (v36)
      {
        *buf = 136446210;
        v71 = "nw_protocol_masque_replace_input_handler";
        v12 = "%{public}s called with null masque, no backtrace";
        v40 = v34;
        v41 = v35;
        goto LABEL_60;
      }

LABEL_61:
      if (v9)
      {
        free(v9);
      }

LABEL_63:
      result = 0;
      if (v6)
      {
        return result;
      }

      goto LABEL_82;
    }

    v8 = *a1[1].flow_id;
  }

  if (!a2)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_protocol_masque_replace_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null old_input_handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v9, &type, &v68))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v12 = "%{public}s called with null old_input_handler";
      goto LABEL_59;
    }

    if (v68 == 1)
    {
      v63 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v64 = os_log_type_enabled(v10, type);
      if (v63)
      {
        if (v64)
        {
          *buf = 136446466;
          v71 = "nw_protocol_masque_replace_input_handler";
          v72 = 2082;
          v73 = v63;
          v65 = "%{public}s called with null old_input_handler, dumping backtrace:%{public}s";
LABEL_120:
          _os_log_impl(&dword_181A37000, v10, v11, v65, buf, 0x16u);
        }

LABEL_121:
        free(v63);
        goto LABEL_61;
      }

      if (!v64)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v12 = "%{public}s called with null old_input_handler, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v12 = "%{public}s called with null old_input_handler, backtrace limit exceeded";
    }

LABEL_59:
    v40 = v10;
    v41 = v11;
LABEL_60:
    _os_log_impl(&dword_181A37000, v40, v41, v12, buf, 0xCu);
    goto LABEL_61;
  }

  if (!a3)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v71 = "nw_protocol_masque_replace_input_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null new_input_handler", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v9, &type, &v68))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v12 = "%{public}s called with null new_input_handler";
      goto LABEL_59;
    }

    if (v68 == 1)
    {
      v63 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v66 = os_log_type_enabled(v10, type);
      if (v63)
      {
        if (v66)
        {
          *buf = 136446466;
          v71 = "nw_protocol_masque_replace_input_handler";
          v72 = 2082;
          v73 = v63;
          v65 = "%{public}s called with null new_input_handler, dumping backtrace:%{public}s";
          goto LABEL_120;
        }

        goto LABEL_121;
      }

      if (!v66)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v12 = "%{public}s called with null new_input_handler, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v71 = "nw_protocol_masque_replace_input_handler";
      v12 = "%{public}s called with null new_input_handler, backtrace limit exceeded";
    }

    goto LABEL_59;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler == a2)
  {
    if (a2 != a3)
    {
      v22 = a3;
      nw_protocol_release(default_input_handler);
      a3 = v22;
      v3->default_input_handler = v22;
      v23 = v22->handle;
      v24 = v22;
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *v22[1].flow_id) != 0)
      {
        v25 = v24[1].callbacks;
        if (v25)
        {
          v24[1].callbacks = (&v25->add_input_handler + 1);
        }
      }
    }

    *v3->flow_id = *a3->flow_id;
    if (!a3->output_handler)
    {
      a3->output_handler = v3;
      v43 = v3->handle;
      v44 = v3;
      if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (v44 = *v3[1].flow_id) != 0)
      {
        v45 = v44[1].callbacks;
        if (v45)
        {
          v44[1].callbacks = (&v45->add_input_handler + 1);
        }
      }
    }

    v26 = a3->callbacks;
    if (v26 && (supports_external_data = v26->supports_external_data) != 0)
    {
      v28 = supports_external_data(a3);
      v29 = (&v8[9].identifier + 7);
      if (v28)
      {
        v30 = 64;
      }

      else
      {
        v30 = 0;
      }

      v31 = *(&v8[9].identifier + 7) & 0xFFFFFFBF | v30;
    }

    else
    {
      v29 = (&v8[9].identifier + 7);
      v31 = *(&v8[9].identifier + 7) & 0xFFFFFFBF;
    }

    *v29 = v31;
    result = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_82;
    }

    return result;
  }

  if (BYTE1(v8[9].callbacks))
  {
    goto LABEL_63;
  }

  v67 = v6;
  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    v62 = a2;
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    a2 = v62;
  }

  v14 = &v8[9].callbacks + 3;
  v15 = v3->default_input_handler;
  *buf = 136447234;
  v71 = "nw_protocol_masque_replace_input_handler";
  v72 = 2082;
  v73 = &v8[9].callbacks + 3;
  v74 = 2080;
  v75 = " ";
  v76 = 2048;
  v77 = v15;
  v78 = 2048;
  v16 = a2;
  v79 = a2;
  v17 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gprivacy_proxyLogObj, 16, "%{public}s %{public}s%sOld input handler does not match (%p != %p)", buf, 52);
  type = OS_LOG_TYPE_ERROR;
  v68 = 0;
  if (__nwlog_fault(v17, &type, &v68))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v18 = gprivacy_proxyLogObj;
      v19 = type;
      if (os_log_type_enabled(gprivacy_proxyLogObj, type))
      {
        v20 = v3->default_input_handler;
        *buf = 136447234;
        v71 = "nw_protocol_masque_replace_input_handler";
        v72 = 2082;
        v73 = v14;
        v74 = 2080;
        v75 = " ";
        v76 = 2048;
        v77 = v20;
        v78 = 2048;
        v79 = v16;
        v21 = "%{public}s %{public}s%sOld input handler does not match (%p != %p)";
LABEL_78:
        _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x34u);
      }
    }

    else if (v68 == 1)
    {
      v37 = __nw_create_backtrace_string();
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v18 = gprivacy_proxyLogObj;
      v19 = type;
      v38 = os_log_type_enabled(gprivacy_proxyLogObj, type);
      if (!v37)
      {
        if (!v38)
        {
          goto LABEL_79;
        }

        v46 = v3->default_input_handler;
        *buf = 136447234;
        v71 = "nw_protocol_masque_replace_input_handler";
        v72 = 2082;
        v73 = v14;
        v74 = 2080;
        v75 = " ";
        v76 = 2048;
        v77 = v46;
        v78 = 2048;
        v79 = v16;
        v21 = "%{public}s %{public}s%sOld input handler does not match (%p != %p), no backtrace";
        goto LABEL_78;
      }

      if (v38)
      {
        v39 = v3->default_input_handler;
        *buf = 136447490;
        v71 = "nw_protocol_masque_replace_input_handler";
        v72 = 2082;
        v73 = v14;
        v74 = 2080;
        v75 = " ";
        v76 = 2048;
        v77 = v39;
        v78 = 2048;
        v79 = v16;
        v80 = 2082;
        v81 = v37;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s %{public}s%sOld input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x3Eu);
      }

      free(v37);
    }

    else
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v18 = gprivacy_proxyLogObj;
      v19 = type;
      if (os_log_type_enabled(gprivacy_proxyLogObj, type))
      {
        v42 = v3->default_input_handler;
        *buf = 136447234;
        v71 = "nw_protocol_masque_replace_input_handler";
        v72 = 2082;
        v73 = v14;
        v74 = 2080;
        v75 = " ";
        v76 = 2048;
        v77 = v42;
        v78 = 2048;
        v79 = v16;
        v21 = "%{public}s %{public}s%sOld input handler does not match (%p != %p), backtrace limit exceeded";
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  if (v17)
  {
    free(v17);
  }

  result = 0;
  if ((v67 & 1) == 0)
  {
LABEL_82:
    v47 = v3->handle;
    if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v48 = v3[1].callbacks;
      if (v48)
      {
        v49 = (v48 - 1);
        v3[1].callbacks = v49;
        if (!v49)
        {
          v50 = result;
          v51 = *v3[1].flow_id;
          if (v51)
          {
            *v3[1].flow_id = 0;
            v51[2](v51);
            _Block_release(v51);
          }

          if (v3[1].flow_id[8])
          {
            v52 = *v3[1].flow_id;
            if (v52)
            {
              _Block_release(v52);
            }
          }

          free(v3);
          return v50;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_masque_listener_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v91 = *MEMORY[0x1E69E9840];
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
        v86 = "nw_protocol_masque_listener_add_input_handler";
        v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
        type = OS_LOG_TYPE_ERROR;
        v83 = 0;
        if (!__nwlog_fault(v8, &type, &v83))
        {
          goto LABEL_40;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_40;
          }

          *buf = 136446210;
          v86 = "nw_protocol_masque_listener_add_input_handler";
          v11 = "%{public}s called with null masque";
        }

        else
        {
          if (v83 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            v19 = type;
            v20 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v20)
              {
                *buf = 136446466;
                v86 = "nw_protocol_masque_listener_add_input_handler";
                v87 = 2082;
                v88 = backtrace_string;
                _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_40;
            }

            if (!v20)
            {
LABEL_40:
              if (v8)
              {
                free(v8);
              }

LABEL_42:
              result = 0;
              if (v5)
              {
                return result;
              }

              goto LABEL_153;
            }

            *buf = 136446210;
            v86 = "nw_protocol_masque_listener_add_input_handler";
            v11 = "%{public}s called with null masque, no backtrace";
            v23 = v18;
            v24 = v19;
LABEL_39:
            _os_log_impl(&dword_181A37000, v23, v24, v11, buf, 0xCu);
            goto LABEL_40;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          v10 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_40;
          }

          *buf = 136446210;
          v86 = "nw_protocol_masque_listener_add_input_handler";
          v11 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v23 = v9;
        v24 = v10;
        goto LABEL_39;
      }

      v7 = *a1[1].flow_id;
    }

    default_input_handler = a1->default_input_handler;
    if (!default_input_handler)
    {
      result = nw_protocol_masque_add_input_handler(a1, a2);
      if (v5)
      {
        return result;
      }

      goto LABEL_153;
    }

    if (default_input_handler == a2)
    {
      if (BYTE1(v7[9].callbacks))
      {
        goto LABEL_42;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v21 = gprivacy_proxyLogObj;
      result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_152;
      }

      *buf = 136446466;
      v86 = &v7[9].callbacks + 3;
      v87 = 2080;
      v88 = " ";
      v22 = "%{public}s%sDefault input handler is being re-added";
      goto LABEL_151;
    }

    if (a2)
    {
      v13 = a2->handle;
      v14 = a2;
      if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *a2[1].flow_id) != 0)
      {
        v25 = v14[1].callbacks;
        v15 = 0;
        if (v25)
        {
          v14[1].callbacks = (&v25->add_input_handler + 1);
        }
      }

      else
      {
        v15 = 1;
      }

      v26 = a2->callbacks;
      if (v26)
      {
        get_remote_endpoint = v26->get_remote_endpoint;
        if (get_remote_endpoint)
        {
          v29 = get_remote_endpoint(a2);
          v30 = a2;
          v31 = v29;
          if (v15)
          {
            goto LABEL_61;
          }

          goto LABEL_50;
        }
      }

      v54 = __nwlog_obj();
      identifier = a2->identifier;
      *buf = 136446722;
      v86 = "__nw_protocol_get_remote_endpoint";
      if (!identifier)
      {
        identifier = "invalid";
      }

      v87 = 2082;
      v88 = identifier;
      v89 = 2048;
      *v90 = a2;
      v56 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 32);
      type = OS_LOG_TYPE_ERROR;
      v83 = 0;
      if (__nwlog_fault(v56, &type, &v83))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v57 = __nwlog_obj();
          v58 = type;
          if (!os_log_type_enabled(v57, type))
          {
            goto LABEL_121;
          }

          v59 = a2->identifier;
          if (!v59)
          {
            v59 = "invalid";
          }

          *buf = 136446722;
          v86 = "__nw_protocol_get_remote_endpoint";
          v87 = 2082;
          v88 = v59;
          v89 = 2048;
          *v90 = a2;
          v60 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_119:
          v73 = v57;
LABEL_120:
          _os_log_impl(&dword_181A37000, v73, v58, v60, buf, 0x20u);
          goto LABEL_121;
        }

        if (v83 != 1)
        {
          v57 = __nwlog_obj();
          v58 = type;
          if (!os_log_type_enabled(v57, type))
          {
            goto LABEL_121;
          }

          v72 = a2->identifier;
          if (!v72)
          {
            v72 = "invalid";
          }

          *buf = 136446722;
          v86 = "__nw_protocol_get_remote_endpoint";
          v87 = 2082;
          v88 = v72;
          v89 = 2048;
          *v90 = a2;
          v60 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
          goto LABEL_119;
        }

        v66 = __nw_create_backtrace_string();
        v67 = __nwlog_obj();
        v58 = type;
        log = v67;
        v68 = os_log_type_enabled(v67, type);
        if (v66)
        {
          if (v68)
          {
            v69 = a2->identifier;
            if (!v69)
            {
              v69 = "invalid";
            }

            *buf = 136446978;
            v86 = "__nw_protocol_get_remote_endpoint";
            v87 = 2082;
            v88 = v69;
            v89 = 2048;
            *v90 = a2;
            *&v90[8] = 2082;
            *&v90[10] = v66;
            _os_log_impl(&dword_181A37000, log, v58, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v66);
        }

        else if (v68)
        {
          v75 = a2->identifier;
          if (!v75)
          {
            v75 = "invalid";
          }

          *buf = 136446722;
          v86 = "__nw_protocol_get_remote_endpoint";
          v87 = 2082;
          v88 = v75;
          v89 = 2048;
          *v90 = a2;
          v60 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
          v73 = log;
          goto LABEL_120;
        }
      }

LABEL_121:
      if (v56)
      {
        free(v56);
      }

      v31 = 0;
      v30 = a2;
      if (v15)
      {
LABEL_61:
        if (v31)
        {
          type = OS_LOG_TYPE_DEFAULT;
          v38 = nw_hash_table_add_object(v7[8].default_input_handler, v30, &type);
          result = type;
          v39 = type;
          if (type)
          {
            extra = nw_hash_node_get_extra(v38);
            *extra = 0;
            extra[1] = extra;
            extra[2] = os_retain(v31);
            if ((BYTE1(v7[9].callbacks) & 1) == 0 && gLogDatapath == 1)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v74 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v86 = "nw_protocol_masque_listener_add_input_handler";
                v87 = 2082;
                v88 = &v7[9].callbacks + 3;
                v89 = 2080;
                *v90 = " ";
                *&v90[8] = 2112;
                *&v90[10] = v31;
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdded new flow for endpoint %@", buf, 0x2Au);
              }
            }

            a2->output_handler_context = v38;
            result = v39;
            if (a2->output_handler != v2)
            {
              nw_protocol_release(a2->output_handler);
              result = v39;
              a2->output_handler = v2;
              v41 = v2->handle;
              v42 = v2;
              if (v41 == &nw_protocol_ref_counted_handle || v41 == &nw_protocol_ref_counted_additional_handle && (v42 = *v2[1].flow_id) != 0)
              {
                v43 = v42[1].callbacks;
                if (v43)
                {
                  v42[1].callbacks = (&v43->add_input_handler + 1);
                  if (v5)
                  {
                    return result;
                  }

                  goto LABEL_153;
                }
              }
            }
          }

          else if ((BYTE1(v7[9].callbacks) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v44 = gprivacy_proxyLogObj;
            v45 = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
            result = v39;
            if (v45)
            {
              *buf = 136446978;
              v86 = &v7[9].callbacks + 3;
              v87 = 2080;
              v88 = " ";
              v89 = 1042;
              *v90 = 16;
              *&v90[4] = 2098;
              *&v90[6] = a2;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s%sInput handler already registered for %{public,uuid_t}.16P", buf, 0x26u);
              result = v39;
              if (v5)
              {
                return result;
              }

              goto LABEL_153;
            }
          }

          goto LABEL_152;
        }

        goto LABEL_146;
      }

LABEL_50:
      v32 = v30->handle;
      v33 = v30;
      if (v32 == &nw_protocol_ref_counted_handle || v32 == &nw_protocol_ref_counted_additional_handle && (v33 = *v30[1].flow_id) != 0)
      {
        v34 = v33[1].callbacks;
        if (v34)
        {
          v35 = (v34 - 1);
          v33[1].callbacks = v35;
          if (!v35)
          {
            v36 = *v33[1].flow_id;
            if (v36)
            {
              *v33[1].flow_id = 0;
              v36[2](v36);
              _Block_release(v36);
            }

            if (v33[1].flow_id[8])
            {
              v37 = *v33[1].flow_id;
              if (v37)
              {
                _Block_release(v37);
              }
            }

            free(v33);
            v30 = a2;
          }
        }
      }

      goto LABEL_61;
    }

    v61 = __nwlog_obj();
    *buf = 136446210;
    v86 = "__nw_protocol_get_remote_endpoint";
    v62 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (__nwlog_fault(v62, &type, &v83))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (!os_log_type_enabled(v63, type))
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        v86 = "__nw_protocol_get_remote_endpoint";
        v65 = "%{public}s called with null protocol";
        goto LABEL_143;
      }

      if (v83 != 1)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (!os_log_type_enabled(v63, type))
        {
          goto LABEL_144;
        }

        *buf = 136446210;
        v86 = "__nw_protocol_get_remote_endpoint";
        v65 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_143;
      }

      v70 = __nw_create_backtrace_string();
      v63 = __nwlog_obj();
      v64 = type;
      v71 = os_log_type_enabled(v63, type);
      if (v70)
      {
        if (v71)
        {
          *buf = 136446466;
          v86 = "__nw_protocol_get_remote_endpoint";
          v87 = 2082;
          v88 = v70;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v70);
        goto LABEL_144;
      }

      if (v71)
      {
        *buf = 136446210;
        v86 = "__nw_protocol_get_remote_endpoint";
        v65 = "%{public}s called with null protocol, no backtrace";
LABEL_143:
        _os_log_impl(&dword_181A37000, v63, v64, v65, buf, 0xCu);
      }
    }

LABEL_144:
    if (v62)
    {
      free(v62);
    }

LABEL_146:
    if (BYTE1(v7[9].callbacks))
    {
      goto LABEL_42;
    }

    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v21 = gprivacy_proxyLogObj;
    result = os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_152;
    }

    *buf = 136446466;
    v86 = &v7[9].callbacks + 3;
    v87 = 2080;
    v88 = " ";
    v22 = "%{public}s%sInput handler did not provide remote endpoint";
LABEL_151:
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
    result = 0;
LABEL_152:
    if (v5)
    {
      return result;
    }

LABEL_153:
    v76 = v2->handle;
    if (v76 == &nw_protocol_ref_counted_handle || v76 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v77 = v2[1].callbacks;
      if (v77)
      {
        v78 = (v77 - 1);
        v2[1].callbacks = v78;
        if (!v78)
        {
          v79 = result;
          v80 = *v2[1].flow_id;
          if (v80)
          {
            *v2[1].flow_id = 0;
            v80[2](v80);
            _Block_release(v80);
          }

          if (v2[1].flow_id[8])
          {
            v81 = *v2[1].flow_id;
            if (v81)
            {
              _Block_release(v81);
            }
          }

          free(v2);
          return v79;
        }
      }
    }

    return result;
  }

  v46 = __nwlog_obj();
  *buf = 136446210;
  v86 = "nw_protocol_masque_listener_add_input_handler";
  v47 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v46, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v83 = 0;
  if (__nwlog_fault(v47, &type, &v83))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_masque_listener_add_input_handler";
        v50 = "%{public}s called with null protocol";
LABEL_127:
        _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
      }
    }

    else if (v83 == 1)
    {
      v51 = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v49 = type;
      v52 = os_log_type_enabled(v48, type);
      if (v51)
      {
        if (v52)
        {
          *buf = 136446466;
          v86 = "nw_protocol_masque_listener_add_input_handler";
          v87 = 2082;
          v88 = v51;
          _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v51);
        goto LABEL_128;
      }

      if (v52)
      {
        *buf = 136446210;
        v86 = "nw_protocol_masque_listener_add_input_handler";
        v50 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_127;
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v48, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_masque_listener_add_input_handler";
        v50 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_127;
      }
    }
  }

LABEL_128:
  if (v47)
  {
    free(v47);
  }

  return 0;
}

BOOL nw_masque_listener_compare_metadata(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      return *a2 == *a3;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_masque_listener_compare_metadata";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null handle2", buf, 12);
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
        v17 = "nw_masque_listener_compare_metadata";
        v8 = "%{public}s called with null handle2";
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
        v17 = "nw_masque_listener_compare_metadata";
        v8 = "%{public}s called with null handle2, backtrace limit exceeded";
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
        v17 = "nw_masque_listener_compare_metadata";
        v8 = "%{public}s called with null handle2, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_masque_listener_compare_metadata";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null handle2, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_masque_listener_compare_metadata";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null handle1", buf, 12);
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
        v17 = "nw_masque_listener_compare_metadata";
        v8 = "%{public}s called with null handle1, backtrace limit exceeded";
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
        v17 = "nw_masque_listener_compare_metadata";
        v8 = "%{public}s called with null handle1, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_masque_listener_compare_metadata";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null handle1, dumping backtrace:%{public}s";
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
    v17 = "nw_masque_listener_compare_metadata";
    v8 = "%{public}s called with null handle1";
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

void nw_masque_listener_deallocate_metadata(nw_protocol_definition *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *nw_masque_listener_allocate_metadata(nw_protocol_definition *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x234525DDuLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v6 = 136446722;
    v7 = "nw_masque_listener_allocate_metadata";
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

char *nw_masque_serialize_options(nw_protocol_definition *a1, void *a2, unint64_t *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_masque_serialize_options";
    v59 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v58, 16, "%{public}s called with null existing_handle", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v59, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v60 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v60, type))
        {
          *buf = 136446210;
          v73 = "nw_masque_serialize_options";
          v62 = "%{public}s called with null existing_handle";
LABEL_95:
          _os_log_impl(&dword_181A37000, v60, v61, v62, buf, 0xCu);
        }
      }

      else if (v70 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v61 = type;
        v64 = os_log_type_enabled(v60, type);
        if (backtrace_string)
        {
          if (v64)
          {
            *buf = 136446466;
            v73 = "nw_masque_serialize_options";
            v74 = 2082;
            v75 = backtrace_string;
            _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_96;
        }

        if (v64)
        {
          *buf = 136446210;
          v73 = "nw_masque_serialize_options";
          v62 = "%{public}s called with null existing_handle, no backtrace";
          goto LABEL_95;
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v60, type))
        {
          *buf = 136446210;
          v73 = "nw_masque_serialize_options";
          v62 = "%{public}s called with null existing_handle, backtrace limit exceeded";
          goto LABEL_95;
        }
      }
    }

LABEL_96:
    if (v59)
    {
      free(v59);
    }

    return 0;
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    count = xpc_array_get_count(v5);
    v7 = *(a2 + 2);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  count = 0;
  v7 = *(a2 + 2);
  if (v7)
  {
LABEL_4:
    v7 = xpc_array_get_count(v7);
  }

LABEL_5:
  if (count)
  {
    v8 = count == v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      string = xpc_array_get_string(*(a2 + 1), v11);
      v13 = xpc_array_get_string(*(a2 + 2), v11);
      v14 = strlen(string);
      v15 = v10 + v14 + strlen(v13);
      v10 = v15 + 2;
      ++v11;
    }

    while (count != v11);
    v20 = v15 + 78;
    if (v15 == -78)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      *buf = 136446210;
      v73 = "nw_masque_serialize_options";
      v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s strict_calloc called with size 0", buf, 12);
      result = __nwlog_should_abort(v18);
      if (result)
      {
        goto LABEL_99;
      }

      free(v18);
      v20 = 0;
    }
  }

  else
  {
    v20 = 76;
  }

  v21 = malloc_type_calloc(1uLL, v20, 0xEC11E3AFuLL);
  if (v21)
  {
    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  v23 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v73 = "nw_masque_serialize_options";
  if (v23)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v74 = 2048;
  v75 = 1;
  v76 = 2048;
  v77 = v20;
  LODWORD(v65) = 32;
  v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v65);
  result = __nwlog_should_abort(v25);
  if (!result)
  {
    free(v25);
LABEL_27:
    *v21 = *(a2 + 3);
    *(v21 + 37) = *(a2 + 16);
    if (*a2)
    {
      v26 = *a2;
      port = _nw_endpoint_get_port(v26);

      *(v21 + 4) = port;
      hostname = nw_endpoint_get_hostname(*a2);
      if (hostname)
      {
        v29 = hostname;
        if (strlen(hostname) - 1 <= 0x3E)
        {
          v30 = v21 + 10;
          v31 = 64;
          while (1)
          {
            v32 = *v29;
            *v30 = v32;
            if (!v32)
            {
              break;
            }

            ++v30;
            ++v29;
            if (--v31 <= 1)
            {
              *v30 = 0;
              break;
            }
          }
        }
      }
    }

    if (v9)
    {
      v33 = 0;
      v34 = v21 + 76;
      while (1)
      {
        v35 = xpc_array_get_string(*(a2 + 1), v33);
        v36 = strlen(v35);
        if (v34)
        {
          break;
        }

        v48 = v36;
        v49 = __nwlog_obj();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        *buf = 136446210;
        v73 = "_strict_strlcpy";
        LODWORD(v65) = 12;
        v51 = _os_log_send_and_compose_impl(v50, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s strict_strlcpy called with NULL dst", buf, v65);
        result = __nwlog_should_abort(v51);
        if (result)
        {
          goto LABEL_99;
        }

        free(v51);
        v36 = v48;
        if (!v35)
        {
          goto LABEL_63;
        }

LABEL_39:
        v37 = v36 + 1;
        v38 = v34;
        v39 = v36 + 1;
        if (v36 + 1 < 2)
        {
LABEL_44:
          if (v36 != -1 && v39)
          {
            *v38 = 0;
          }
        }

        else
        {
          v40 = v36 + 1;
          v38 = v34;
          while (1)
          {
            v41 = *v35;
            *v38 = v41;
            if (!v41)
            {
              break;
            }

            ++v38;
            ++v35;
            if (--v40 <= 1)
            {
              v39 = 1;
              goto LABEL_44;
            }
          }
        }

        v42 = xpc_array_get_string(*(a2 + 2), v33);
        v43 = strlen(v42);
        if (!v34)
        {
          v66 = __nwlog_obj();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v56 = 3;
          }

          else
          {
            v56 = 2;
          }

          *buf = 136446210;
          v73 = "_strict_strlcpy";
          LODWORD(v65) = 12;
          v67 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &dword_181A37000, v66, 16, "%{public}s strict_strlcpy called with NULL dst", buf, v65);
          result = __nwlog_should_abort(v67);
          if (result)
          {
            goto LABEL_99;
          }

          free(v67);
          if (v42)
          {
            goto LABEL_49;
          }

LABEL_73:
          v68 = __nwlog_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          *buf = 136446210;
          v73 = "_strict_strlcpy";
          LODWORD(v65) = 12;
          v69 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s strict_strlcpy called with NULL src", buf, v65);
          result = __nwlog_should_abort(v69);
          if (result)
          {
            goto LABEL_99;
          }

          free(v69);
          goto LABEL_49;
        }

        if (!v42)
        {
          goto LABEL_73;
        }

LABEL_49:
        if (v43 + 1 < 2)
        {
          v45 = &v34[v37];
          v47 = v43 + 1;
          if (v43 != -1)
          {
LABEL_56:
            if (v47)
            {
              *v45 = 0;
            }
          }
        }

        else
        {
          v44 = v43 + 1;
          v45 = &v34[v37];
          while (1)
          {
            v46 = *v42;
            *v45 = v46;
            if (!v46)
            {
              break;
            }

            ++v45;
            ++v42;
            if (--v44 <= 1)
            {
              v47 = 1;
              if (v43 != -1)
              {
                goto LABEL_56;
              }

              break;
            }
          }
        }

        v34 += v37 + v43 + 1;
        if (++v33 == count)
        {
          goto LABEL_78;
        }
      }

      if (v35)
      {
        goto LABEL_39;
      }

LABEL_63:
      v52 = v36;
      v53 = __nwlog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      *buf = 136446210;
      v73 = "_strict_strlcpy";
      LODWORD(v65) = 12;
      v55 = _os_log_send_and_compose_impl(v54, 0, 0, 0, &dword_181A37000, v53, 16, "%{public}s strict_strlcpy called with NULL src", buf, v65);
      result = __nwlog_should_abort(v55);
      if (result)
      {
        goto LABEL_99;
      }

      free(v55);
      v36 = v52;
      goto LABEL_39;
    }

LABEL_78:
    *a3 = v20;
    return v21;
  }

LABEL_99:
  __break(1u);
  return result;
}

uint64_t nw_masque_option_is_equal(nw_protocol_definition *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*(a2 + 6) != *(a3 + 6) || *(a2 + 7) != *(a3 + 7) || a2[32] != a3[32] || a2[33] != a3[33] || !nw_endpoint_is_equal(*a2, *a3, 0) || !nw_unordered_xpc_array_is_equal(*(a2 + 1), *(a3 + 1)))
  {
    return 0;
  }

  v5 = *(a2 + 2);
  v6 = *(a3 + 2);

  return nw_unordered_xpc_array_is_equal(v5, v6);
}

void *nw_masque_allocate_options(nw_protocol_definition *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0x28uLL, 0xE8F90BB3uLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v6 = 136446722;
    v7 = "nw_masque_allocate_options";
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
    v11 = 40;
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

void nw_masque_deallocate_globals(nw_protocol_definition *a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *nw_masque_allocate_globals(nw_protocol_definition *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = malloc_type_calloc(1uLL, 0xCuLL, 0x90DD098EuLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v6 = 136446722;
    v7 = "nw_masque_allocate_globals";
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
    v11 = 12;
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

uint64_t nw_masque_add_additional_demux_pattern(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  is_masque = nw_protocol_metadata_is_masque(a1);
  if (is_masque)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __nw_masque_add_additional_demux_pattern_block_invoke;
    v13[3] = &__block_descriptor_tmp_12_28717;
    v13[4] = a2;
    nw_protocol_metadata_access_handle(a1, v13);
    return is_masque;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_masque_add_additional_demux_pattern";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null nw_protocol_metadata_is_masque(metadata)", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "nw_masque_add_additional_demux_pattern";
      v10 = "%{public}s called with null nw_protocol_metadata_is_masque(metadata)";
      goto LABEL_17;
    }

    if (v14 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "nw_masque_add_additional_demux_pattern";
      v10 = "%{public}s called with null nw_protocol_metadata_is_masque(metadata), backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v17 = "nw_masque_add_additional_demux_pattern";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_metadata_is_masque(metadata), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v12)
    {
      *buf = 136446210;
      v17 = "nw_masque_add_additional_demux_pattern";
      v10 = "%{public}s called with null nw_protocol_metadata_is_masque(metadata), no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    }
  }

LABEL_18:
  if (v7)
  {
    free(v7);
  }

  return is_masque;
}

uint64_t nw_protocol_metadata_is_masque(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
    {
      v9 = a1;
      dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
      a1 = v9;
    }

    if (nw_protocol_masque_get_definition(void)::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_masque_get_definition(void)::definition);
      a1 = v1;
    }

    else
    {
      v2 = 0;
    }

    return nw_protocol_metadata_matches_definition(a1, v2);
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_metadata_is_masque";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null metadata", buf, 12);
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
        v15 = "nw_protocol_metadata_is_masque";
        v8 = "%{public}s called with null metadata";
LABEL_23:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_metadata_is_masque";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_metadata_is_masque";
        v8 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_23;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_metadata_is_masque";
        v8 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t __nw_masque_add_additional_demux_pattern_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 8));
  v4 = *a2;
  nw_masque_send_demux_options(*a2, *(a1 + 32), 0);
  v5 = nw_parameters_copy_default_protocol_stack(*(v4 + 304));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __nw_masque_add_additional_demux_pattern_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_11_28718;
  v6 = *(a1 + 32);
  v8[4] = v4;
  v8[5] = v6;
  nw_protocol_stack_iterate_application_protocols(v5, v8);
  os_unfair_lock_unlock((a2 + 8));
  return 1;
}

void __nw_masque_add_additional_demux_pattern_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  protocol_handle = nw_protocol_options_get_protocol_handle(a2);
  v5 = *(a1 + 32);
  if (protocol_handle == *(v5 + 416))
  {
    if ((*(v5 + 505) & 1) == 0)
    {
      v6 = protocol_handle;
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v7 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v8 == 0;
        if (v8)
        {
          v10 = (v8 + 507);
        }

        else
        {
          v10 = "";
        }

        *buf = 136446722;
        v15 = v10;
        v11 = " ";
        if (v9)
        {
          v11 = "";
        }

        v16 = 2080;
        v17 = v11;
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s%sFound lower demux protocol %p, registering options", buf, 0x20u);
      }
    }

    v12 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __nw_masque_add_additional_demux_pattern_block_invoke_7;
    v13[3] = &__block_descriptor_tmp_9_28720;
    v13[4] = a2;
    nw_demux_options_enumerate_patterns(v12, v13);
  }
}

void *nw_protocol_masque_copy_definition()
{
  if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
  }

  if (!nw_protocol_masque_get_definition(void)::definition)
  {
    return 0;
  }

  v0 = os_retain(nw_protocol_masque_get_definition(void)::definition);
  if (!v0)
  {
    return 0;
  }

  return os_retain(v0);
}

void *nw_protocol_masque_listener_copy_definition()
{
  if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
  }

  if (!nw_protocol_masque_listener_get_definition(void)::definition)
  {
    return 0;
  }

  v0 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
  if (!v0)
  {
    return 0;
  }

  return os_retain(v0);
}

uint64_t nw_protocol_options_is_masque_listener(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
    {
      v9 = a1;
      dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
      a1 = v9;
    }

    if (nw_protocol_masque_listener_get_definition(void)::definition)
    {
      v1 = a1;
      v2 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
      a1 = v1;
    }

    else
    {
      v2 = 0;
    }

    return nw_protocol_options_matches_definition(a1, v2);
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_masque_listener";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null options", buf, 12);
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
        v15 = "nw_protocol_options_is_masque_listener";
        v8 = "%{public}s called with null options";
LABEL_23:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v11 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "nw_protocol_options_is_masque_listener";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_masque_listener";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_23;
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_masque_listener";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void nw_masque_options_set_target_endpoint(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __nw_masque_options_set_target_endpoint_block_invoke;
    v9[3] = &__block_descriptor_tmp_13_28745;
    v9[4] = a2;
    nw_protocol_options_access_handle(a1, v9);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_masque_options_set_target_endpoint";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
  v11 = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &v11, &v10))
  {
    if (v11 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v11;
      if (!os_log_type_enabled(v4, v11))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v13 = "nw_masque_options_set_target_endpoint";
      v6 = "%{public}s called with null options";
      goto LABEL_17;
    }

    if (v10 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v11;
      if (!os_log_type_enabled(v4, v11))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v13 = "nw_masque_options_set_target_endpoint";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v11;
    v8 = os_log_type_enabled(v4, v11);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v13 = "nw_masque_options_set_target_endpoint";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v13 = "nw_masque_options_set_target_endpoint";
      v6 = "%{public}s called with null options, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }
}

uint64_t __nw_masque_options_set_target_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = os_retain(v3);
  }

  *a2 = v3;
  return 1;
}

uint64_t nw_masque_options_copy_target_endpoint(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __nw_masque_options_copy_target_endpoint_block_invoke;
    v10[3] = &unk_1E6A2F548;
    v10[4] = buf;
    nw_protocol_options_access_handle(a1, v10);
    v1 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    return v1;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_options_copy_target_endpoint";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null options", buf, 12);
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
        *&buf[4] = "nw_masque_options_copy_target_endpoint";
        v7 = "%{public}s called with null options";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v11 == 1)
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
          *&buf[4] = "nw_masque_options_copy_target_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v9)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_copy_target_endpoint";
        v7 = "%{public}s called with null options, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_copy_target_endpoint";
        v7 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

nw_endpoint_t nw_masque_copy_proxy_url_endpoint(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_masque_copy_proxy_url_endpoint";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v45, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v2, type, &v50))
    {
      goto LABEL_22;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type[0];
      if (!os_log_type_enabled(v3, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v52 = "nw_masque_copy_proxy_url_endpoint";
      v5 = "%{public}s called with null protocol";
      goto LABEL_20;
    }

    if (v50 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type[0];
      if (!os_log_type_enabled(v3, type[0]))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v52 = "nw_masque_copy_proxy_url_endpoint";
      v5 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type[0];
    v48 = os_log_type_enabled(v3, type[0]);
    if (backtrace_string)
    {
      if (v48)
      {
        *buf = 136446466;
        v52 = "nw_masque_copy_proxy_url_endpoint";
        v53 = 2082;
        v54 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v48)
    {
      *buf = 136446210;
      v52 = "nw_masque_copy_proxy_url_endpoint";
      v5 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (nw_protocol_masque_identifier(void)::onceToken == -1)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      goto LABEL_4;
    }

LABEL_6:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v52 = "nw_masque_copy_proxy_url_endpoint";
    v2 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v2, type, &v50))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446210;
          v52 = "nw_masque_copy_proxy_url_endpoint";
          v5 = "%{public}s called with null masque_protocol";
LABEL_20:
          v13 = v3;
          v14 = v4;
LABEL_21:
          _os_log_impl(&dword_181A37000, v13, v14, v5, buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        v6 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type[0];
        v9 = os_log_type_enabled(gLogObj, type[0]);
        if (v6)
        {
          if (v9)
          {
            *buf = 136446466;
            v52 = "nw_masque_copy_proxy_url_endpoint";
            v53 = 2082;
            v54 = v6;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null masque_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v6);
          goto LABEL_22;
        }

        if (v9)
        {
          *buf = 136446210;
          v52 = "nw_masque_copy_proxy_url_endpoint";
          v5 = "%{public}s called with null masque_protocol, no backtrace";
          v13 = v7;
          v14 = v8;
          goto LABEL_21;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446210;
          v52 = "nw_masque_copy_proxy_url_endpoint";
          v5 = "%{public}s called with null masque_protocol, backtrace limit exceeded";
          goto LABEL_20;
        }
      }
    }

LABEL_22:
    if (v2)
    {
      free(v2);
    }

    return 0;
  }

  dispatch_once(&nw_protocol_masque_identifier(void)::onceToken, &__block_literal_global_204);
  v1 = *(a1 + 48);
  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_4:
  while (!nw_protocols_are_equal(*(v1 + 16), &nw_protocol_masque_identifier(void)::g_masque_protocol_identifier))
  {
    v1 = *(v1 + 48);
    if (!v1)
    {
      goto LABEL_6;
    }
  }

  v10 = *(v1 + 40);
  v11 = v1;
  if (v10 != &nw_protocol_ref_counted_handle)
  {
    if (v10 != &nw_protocol_ref_counted_additional_handle)
    {
      v12 = 1;
      goto LABEL_31;
    }

    v11 = *(v1 + 64);
    if (!v11)
    {
      v17 = 1;
      goto LABEL_52;
    }
  }

  v16 = *(v11 + 88);
  if (v16)
  {
    *(v11 + 88) = v16 + 1;
  }

  if (v10 == &nw_protocol_ref_counted_handle)
  {
    v17 = 0;
    v26 = v1;
    goto LABEL_53;
  }

  v17 = 0;
  v12 = 0;
  if (v10 == &nw_protocol_ref_counted_additional_handle)
  {
LABEL_52:
    v26 = *(v1 + 64);
LABEL_53:
    http_request_for_connect = nw_masque_create_http_request_for_connect(v26 + 96);
    if (!http_request_for_connect)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v52 = "nw_masque_copy_proxy_url_endpoint";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s Unable to generate HTTP request for masque connect", buf, 0xCu);
      }

      result = 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_68;
      }

      return result;
    }

    v30 = http_request_for_connect;
    v31 = _nw_http_request_copy_url();

    *type = v31;
    if (!v31)
    {
      v34 = nw_masque_copy_remote_endpoint(v26 + 96);
      if (!v34 || (v35 = v34, nw_endpoint_get_type(v34) != nw_endpoint_type_host))
      {
        v38 = __nwlog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v52 = "nw_masque_copy_proxy_url_endpoint";
          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s Unable to get url or host endpoint for masque", buf, 0xCu);
        }

        url = 0;
LABEL_67:
        os_release(v30);
        result = url;
        if (v17)
        {
          return result;
        }

        goto LABEL_68;
      }

      hostname = nw_endpoint_get_hostname(v35);
      port = nw_endpoint_get_port(v35);
      asprintf(type, "https://%s:%u", hostname, port);
      v31 = *type;
    }

    url = nw_endpoint_create_url(v31);
    if (*type)
    {
      free(*type);
    }

    goto LABEL_67;
  }

LABEL_31:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v52 = "nw_masque_copy_proxy_url_endpoint";
  v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null masque", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (!__nwlog_fault(v18, type, &v50))
  {
    goto LABEL_47;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v52 = "nw_masque_copy_proxy_url_endpoint";
    v21 = "%{public}s called with null masque";
LABEL_45:
    v27 = v19;
    v28 = v20;
LABEL_46:
    _os_log_impl(&dword_181A37000, v27, v28, v21, buf, 0xCu);
    goto LABEL_47;
  }

  if (v50 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v52 = "nw_masque_copy_proxy_url_endpoint";
    v21 = "%{public}s called with null masque, backtrace limit exceeded";
    goto LABEL_45;
  }

  v22 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  v24 = type[0];
  v25 = os_log_type_enabled(gLogObj, type[0]);
  if (v22)
  {
    if (v25)
    {
      *buf = 136446466;
      v52 = "nw_masque_copy_proxy_url_endpoint";
      v53 = 2082;
      v54 = v22;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v22);
  }

  else if (v25)
  {
    *buf = 136446210;
    v52 = "nw_masque_copy_proxy_url_endpoint";
    v21 = "%{public}s called with null masque, no backtrace";
    v27 = v23;
    v28 = v24;
    goto LABEL_46;
  }

LABEL_47:
  if (v18)
  {
    free(v18);
  }

  result = 0;
  if ((v12 & 1) == 0)
  {
LABEL_68:
    v39 = *(v1 + 40);
    if (v39 == &nw_protocol_ref_counted_handle || v39 == &nw_protocol_ref_counted_additional_handle && (v1 = *(v1 + 64)) != 0)
    {
      v40 = *(v1 + 88);
      if (v40)
      {
        v41 = v40 - 1;
        *(v1 + 88) = v41;
        if (!v41)
        {
          v42 = result;
          v43 = *(v1 + 64);
          if (v43)
          {
            *(v1 + 64) = 0;
            v43[2](v43);
            _Block_release(v43);
          }

          if (*(v1 + 72))
          {
            v44 = *(v1 + 64);
            if (v44)
            {
              _Block_release(v44);
            }
          }

          free(v1);
          return v42;
        }
      }
    }
  }

  return result;
}

void nw_masque_options_set_forced_protocol(void *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __nw_masque_options_set_forced_protocol_block_invoke;
    v9[3] = &__block_descriptor_tmp_16_28776;
    v10 = a2;
    nw_protocol_options_access_handle(a1, v9);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_masque_options_set_forced_protocol";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
  v12 = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v3, &v12, &v11))
  {
    if (v12 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v12;
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_masque_options_set_forced_protocol";
      v6 = "%{public}s called with null options";
      goto LABEL_17;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v12;
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_masque_options_set_forced_protocol";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v12;
    v8 = os_log_type_enabled(v4, v12);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v14 = "nw_masque_options_set_forced_protocol";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v14 = "nw_masque_options_set_forced_protocol";
      v6 = "%{public}s called with null options, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }
}

void nw_masque_options_set_allow_connect_ip(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __nw_masque_options_set_allow_connect_ip_block_invoke;
    v9[3] = &__block_descriptor_tmp_17_28782;
    v10 = a2;
    nw_protocol_options_access_handle(a1, v9);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_masque_options_set_allow_connect_ip";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
  v12 = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v3, &v12, &v11))
  {
    if (v12 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v12;
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_masque_options_set_allow_connect_ip";
      v6 = "%{public}s called with null options";
      goto LABEL_17;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v12;
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_masque_options_set_allow_connect_ip";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v12;
    v8 = os_log_type_enabled(v4, v12);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v14 = "nw_masque_options_set_allow_connect_ip";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v14 = "nw_masque_options_set_allow_connect_ip";
      v6 = "%{public}s called with null options, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }
}

void nw_masque_options_set_fast_open(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __nw_masque_options_set_fast_open_block_invoke;
    v9[3] = &__block_descriptor_tmp_18_28788;
    v10 = a2;
    nw_protocol_options_access_handle(a1, v9);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_masque_options_set_fast_open";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
  v12 = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v3, &v12, &v11))
  {
    if (v12 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v12;
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_masque_options_set_fast_open";
      v6 = "%{public}s called with null options";
      goto LABEL_17;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v12;
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v14 = "nw_masque_options_set_fast_open";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v12;
    v8 = os_log_type_enabled(v4, v12);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v14 = "nw_masque_options_set_fast_open";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v8)
    {
      *buf = 136446210;
      v14 = "nw_masque_options_set_fast_open";
      v6 = "%{public}s called with null options, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }
}

void nw_masque_options_add_extra_header(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_masque_options_add_extra_header";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null options", buf, 12);
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &v18, &v17))
    {
      goto LABEL_47;
    }

    if (v18 != OS_LOG_TYPE_FAULT)
    {
      if (v17 != 1)
      {
        v5 = __nwlog_obj();
        v6 = v18;
        if (!os_log_type_enabled(v5, v18))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v20 = "nw_masque_options_add_extra_header";
        v7 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = v18;
      v11 = os_log_type_enabled(v5, v18);
      if (!backtrace_string)
      {
        if (!v11)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v20 = "nw_masque_options_add_extra_header";
        v7 = "%{public}s called with null options, no backtrace";
        goto LABEL_46;
      }

      if (v11)
      {
        *buf = 136446466;
        v20 = "nw_masque_options_add_extra_header";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_47;
    }

    v5 = __nwlog_obj();
    v6 = v18;
    if (!os_log_type_enabled(v5, v18))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v20 = "nw_masque_options_add_extra_header";
    v7 = "%{public}s called with null options";
LABEL_46:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_47;
  }

  if (a2)
  {
    if (a3)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __nw_masque_options_add_extra_header_block_invoke;
      v16[3] = &__block_descriptor_tmp_19_28804;
      v16[4] = a2;
      v16[5] = a3;
      nw_protocol_options_access_handle(a1, v16);
      return;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_masque_options_add_extra_header";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null value", buf, 12);
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v4, &v18, &v17))
    {
      if (v18 == OS_LOG_TYPE_FAULT)
      {
        v5 = __nwlog_obj();
        v6 = v18;
        if (!os_log_type_enabled(v5, v18))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v20 = "nw_masque_options_add_extra_header";
        v7 = "%{public}s called with null value";
        goto LABEL_46;
      }

      if (v17 != 1)
      {
        v5 = __nwlog_obj();
        v6 = v18;
        if (!os_log_type_enabled(v5, v18))
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v20 = "nw_masque_options_add_extra_header";
        v7 = "%{public}s called with null value, backtrace limit exceeded";
        goto LABEL_46;
      }

      v12 = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = v18;
      v15 = os_log_type_enabled(v5, v18);
      if (!v12)
      {
        if (!v15)
        {
          goto LABEL_47;
        }

        *buf = 136446210;
        v20 = "nw_masque_options_add_extra_header";
        v7 = "%{public}s called with null value, no backtrace";
        goto LABEL_46;
      }

      if (v15)
      {
        *buf = 136446466;
        v20 = "nw_masque_options_add_extra_header";
        v21 = 2082;
        v22 = v12;
        v14 = "%{public}s called with null value, dumping backtrace:%{public}s";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

LABEL_47:
    if (v4)
    {
      goto LABEL_48;
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_masque_options_add_extra_header";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null header", buf, 12);
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &v18, &v17))
  {
    goto LABEL_47;
  }

  if (v18 == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = v18;
    if (!os_log_type_enabled(v5, v18))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v20 = "nw_masque_options_add_extra_header";
    v7 = "%{public}s called with null header";
    goto LABEL_46;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = v18;
    if (!os_log_type_enabled(v5, v18))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v20 = "nw_masque_options_add_extra_header";
    v7 = "%{public}s called with null header, backtrace limit exceeded";
    goto LABEL_46;
  }

  v12 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = v18;
  v13 = os_log_type_enabled(v5, v18);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v20 = "nw_masque_options_add_extra_header";
    v7 = "%{public}s called with null header, no backtrace";
    goto LABEL_46;
  }

  if (v13)
  {
    *buf = 136446466;
    v20 = "nw_masque_options_add_extra_header";
    v21 = 2082;
    v22 = v12;
    v14 = "%{public}s called with null header, dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v14, buf, 0x16u);
  }

LABEL_32:
  free(v12);
  if (v4)
  {
LABEL_48:
    free(v4);
  }
}

uint64_t __nw_masque_options_add_extra_header_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    v4 = xpc_array_create(0, 0);
    *(a2 + 8) = v4;
    if (*(a2 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a2 + 16) = xpc_array_create(0, 0);
    v4 = *(a2 + 8);
    goto LABEL_3;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  xpc_array_set_string(*(a2 + 16), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 40));
  return 1;
}

void nw_masque_options_set_version(void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a2 - 3) > 0xFFFFFFFD)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __nw_masque_options_set_version_block_invoke;
      v12[3] = &__block_descriptor_tmp_20_28815;
      v13 = a2;
      nw_protocol_options_access_handle(a1, v12);
      return;
    }

    v7 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_masque_options_set_version";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null (version == nw_masque_version_draft_03 || version == nw_masque_version_rfc9298)", buf, 12);
    v15 = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v3, &v15, &v14))
    {
      if (v15 == OS_LOG_TYPE_FAULT)
      {
        v4 = __nwlog_obj();
        v5 = v15;
        if (!os_log_type_enabled(v4, v15))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v17 = "nw_masque_options_set_version";
        v6 = "%{public}s called with null (version == nw_masque_version_draft_03 || version == nw_masque_version_rfc9298)";
        goto LABEL_32;
      }

      if (v14 != 1)
      {
        v4 = __nwlog_obj();
        v5 = v15;
        if (!os_log_type_enabled(v4, v15))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v17 = "nw_masque_options_set_version";
        v6 = "%{public}s called with null (version == nw_masque_version_draft_03 || version == nw_masque_version_rfc9298), backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = v15;
      v11 = os_log_type_enabled(v4, v15);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_masque_options_set_version";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null (version == nw_masque_version_draft_03 || version == nw_masque_version_rfc9298), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_masque_options_set_version";
        v6 = "%{public}s called with null (version == nw_masque_version_draft_03 || version == nw_masque_version_rfc9298), no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_masque_options_set_version";
    v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null options", buf, 12);
    v15 = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v3, &v15, &v14))
    {
      goto LABEL_33;
    }

    if (v15 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v15;
      if (!os_log_type_enabled(v4, v15))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v17 = "nw_masque_options_set_version";
      v6 = "%{public}s called with null options";
      goto LABEL_32;
    }

    if (v14 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v15;
      if (!os_log_type_enabled(v4, v15))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v17 = "nw_masque_options_set_version";
      v6 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_32;
    }

    v8 = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v15;
    v9 = os_log_type_enabled(v4, v15);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v17 = "nw_masque_options_set_version";
      v6 = "%{public}s called with null options, no backtrace";
      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v17 = "nw_masque_options_set_version";
      v18 = 2082;
      v19 = v8;
      _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v8);
  }

LABEL_33:
  if (v3)
  {
LABEL_34:
    free(v3);
  }
}

uint64_t nw_masque_options_copy_listener_options(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
    }

    v2 = nw_protocol_masque_listener_get_definition(void)::definition;
    if (nw_protocol_masque_listener_get_definition(void)::definition)
    {
      v2 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition);
      if (v2)
      {
        v2 = os_retain(v2);
      }
    }

    options = nw_proxy_create_options(v2);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __nw_masque_options_copy_listener_options_block_invoke;
    v14[3] = &__block_descriptor_tmp_23_28821;
    v14[4] = options;
    nw_protocol_options_access_handle(a1, v14);
    v4 = _nw_protocol_options_copy_proxy_endpoint(a1);
    should_override_stack = _nw_protocol_options_proxy_endpoint_should_override_stack(a1);
    nw_protocol_options_set_proxy_endpoint(options, v4, should_override_stack);
    if (v4)
    {
      os_release(v4);
    }

    return options;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_options_copy_listener_options";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null options", buf, 12);
  v16 = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &v16, &v15))
  {
    if (v16 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v16;
      if (os_log_type_enabled(v9, v16))
      {
        *buf = 136446210;
        v18 = "nw_masque_options_copy_listener_options";
        v11 = "%{public}s called with null options";
LABEL_23:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v16;
      v13 = os_log_type_enabled(v9, v16);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v18 = "nw_masque_options_copy_listener_options";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_masque_options_copy_listener_options";
        v11 = "%{public}s called with null options, no backtrace";
        goto LABEL_23;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v16;
      if (os_log_type_enabled(v9, v16))
      {
        *buf = 136446210;
        v18 = "nw_masque_options_copy_listener_options";
        v11 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t __nw_masque_options_copy_listener_options_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __nw_masque_options_copy_listener_options_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_22_28822;
  v4[4] = a2;
  return nw_protocol_options_access_handle(v2, v4);
}

uint64_t __nw_masque_options_copy_listener_options_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  if (*v3)
  {
    v4 = os_retain(v4);
  }

  *a2 = v4;
  v5 = *(v3 + 8);
  if (v5)
  {
    *(a2 + 8) = xpc_copy(v5);
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    *(a2 + 16) = xpc_copy(v6);
  }

  *(a2 + 24) = *(v3 + 24);
  *(a2 + 32) = *(v3 + 32);
  return 1;
}

void sub_18252FE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1825301F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182530738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18253083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182530C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182530FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182531390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182531744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182531B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182531FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28965(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_182532DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182533454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18253403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18253466C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18253474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182535B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *NWCreateDictionaryFromCFNetworkTaskMetrics(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
  v3 = *(a1 + 32);
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a1 + 16];
  v71 = v4;
  if ((*(a1 + 82) & 0x20) != 0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>.<%u>", v4, *(a1 + 72), v4];
  }

  else
  {
    [v4 UUIDString];
  }
  v5 = ;
  [v2 setObject:v5 forKeyedSubscript:@"taskUUID"];

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a1];
  v7 = [v6 UUIDString];
  [v2 setObject:v7 forKeyedSubscript:@"activityUUID"];

  v8 = *(a1 + 40);
  if (v8 < v3 || v8 == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 - v3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  [v2 setObject:v11 forKeyedSubscript:@"didCompleteWithError"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 76)];
  [v2 setObject:v12 forKeyedSubscript:@"numberOfRetries"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 78)];
  [v2 setObject:v13 forKeyedSubscript:@"numberOfRedirects"];

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
  [v2 setObject:v14 forKeyedSubscript:@"error"];

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  [v2 setObject:v15 forKeyedSubscript:@"underlyingError"];

  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 64)];
  [v2 setObject:v16 forKeyedSubscript:@"underlyingErrorDomain"];

  v17 = (*(a1 + 82) & 0xF) - 1;
  v18 = @"UNKNOWN";
  if (v17 <= 5)
  {
    v18 = off_1E6A2FFB8[v17];
  }

  [v2 setObject:v18 forKeyedSubscript:@"taskType"];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:(*(a1 + 82) >> 4) & 1];
  [v2 setObject:v19 forKeyedSubscript:@"isBackground"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:(*(a1 + 82) >> 5) & 1];
  [v2 setObject:v20 forKeyedSubscript:@"usedUnifiedStack"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:(*(a1 + 82) >> 6) & 1];
  [v2 setObject:v21 forKeyedSubscript:@"apSleepWakeMonitored"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 82) >> 7];
  v72 = v2;
  [v2 setObject:v22 forKeyedSubscript:@"resumableUploadSupported"];

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a1 + 80)];
  if (*(a1 + 80))
  {
    v24 = 0;
    v25 = (a1 + 166);
    do
    {
      v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
      v33 = *(v25 - 31);
      if (v33 < v3 || v33 == 0)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33 - v3;
      }

      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v35];
      [v32 setObject:v36 forKeyedSubscript:@"requestStart"];

      v37 = *(v25 - 27);
      if (v37 < v3 || v37 == 0)
      {
        v39 = 0;
      }

      else
      {
        v39 = v37 - v3;
      }

      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v39];
      [v32 setObject:v40 forKeyedSubscript:@"requestEnd"];

      v41 = *(v25 - 23);
      if (v41 < v3 || v41 == 0)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41 - v3;
      }

      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v43];
      [v32 setObject:v44 forKeyedSubscript:@"responseStart"];

      v45 = *(v25 - 19);
      if (v45 < v3 || v45 == 0)
      {
        v47 = 0;
      }

      else
      {
        v47 = v45 - v3;
      }

      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v47];
      [v32 setObject:v48 forKeyedSubscript:@"responseEnd"];

      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v25 - 11)];
      [v32 setObject:v49 forKeyedSubscript:@"totalBytesWritten"];

      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v25 - 7)];
      [v32 setObject:v50 forKeyedSubscript:@"totalBytesRead"];

      v51 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v25 - 39];
      v52 = [v51 UUIDString];
      [v32 setObject:v52 forKeyedSubscript:@"connectionUUID"];

      v53 = (*(v25 - 1) << 24) >> 28;
      v54 = @"NETWORK_LOAD";
      if (v53 != 1)
      {
        v54 = @"UNKNOWN";
      }

      if (v53 == 3)
      {
        v55 = @"LOCAL_CACHE";
      }

      else
      {
        v55 = v54;
      }

      [v32 setObject:v55 forKeyedSubscript:@"networkLoadType"];
      v56 = ((*(v25 - 1) >> 20) & 0xF) - 1;
      v57 = @"UNKNOWN";
      if (v56 <= 4)
      {
        v57 = off_1E6A2FFE8[v56];
      }

      [v32 setObject:v57 forKeyedSubscript:@"schedulingTier"];
      v58 = (*(v25 - 1) & 0xF) - 1;
      v59 = @"UNKNOWN";
      if (v58 <= 3)
      {
        v59 = off_1E6A30010[v58];
      }

      [v32 setObject:v59 forKeyedSubscript:@"http3Status"];
      v60 = (*(v25 - 1) >> 12) - 1;
      v61 = @"UNKNOWN";
      if (v60 <= 4)
      {
        v61 = off_1E6A30030[v60];
      }

      [v32 setObject:v61 forKeyedSubscript:@"networkProtocolName"];
      v62 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(*(v25 - 1)) & 1];
      [v32 setObject:v62 forKeyedSubscript:@"reusedConnection"];

      v63 = [MEMORY[0x1E696AD98] numberWithBool:(*(v25 - 1) >> 25) & 1];
      [v32 setObject:v63 forKeyedSubscript:@"isRedirected"];

      v64 = [MEMORY[0x1E696AD98] numberWithBool:(*(v25 - 1) >> 26) & 1];
      [v32 setObject:v64 forKeyedSubscript:@"apsRelayAttempted"];

      v65 = [MEMORY[0x1E696AD98] numberWithBool:(*(v25 - 1) >> 27) & 1];
      [v32 setObject:v65 forKeyedSubscript:@"apsRelaySucceeded"];

      v66 = (*(v25 - 3) & 0xF) - 1;
      v67 = @"UNKNOWN";
      if (v66 <= 0xD)
      {
        v67 = off_1E6A30058[v66];
      }

      [v32 setObject:v67 forKeyedSubscript:@"httpServerType"];
      v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v25 - 15)];
      [v32 setObject:v68 forKeyedSubscript:@"reusedAfterTime"];

      v69 = [MEMORY[0x1E696AD98] numberWithBool:(*(v25 - 1) >> 28) & 1];
      [v32 setObject:v69 forKeyedSubscript:@"reusedAfterSleepWake"];

      [v32 setObject:? forKeyedSubscript:?];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(v25 - 3)];
      [v32 setObject:v26 forKeyedSubscript:@"statusCode"];

      v27 = [MEMORY[0x1E696AD98] numberWithBool:(*(v25 - 1) >> 29) & 1];
      [v32 setObject:v27 forKeyedSubscript:@"connectionCoalescingEnabled"];

      v28 = [MEMORY[0x1E696AD98] numberWithBool:(*(v25 - 1) >> 30) & 1];
      [v32 setObject:v28 forKeyedSubscript:@"earlyDataEnabled"];

      v29 = [MEMORY[0x1E696AD98] numberWithBool:*(v25 - 1) >> 31];
      [v32 setObject:v29 forKeyedSubscript:@"earlyDataAttempted"];

      v30 = *v25;
      v25 += 40;
      v31 = [MEMORY[0x1E696AD98] numberWithBool:v30 & 1];
      [v32 setObject:v31 forKeyedSubscript:@"earlyDataAccepted"];

      [v23 addObject:v32];
      ++v24;
    }

    while (v24 < *(a1 + 80));
  }

  [v72 setObject:v23 forKeyedSubscript:@"transactionMetrics"];

  return v72;
}

void sub_1825370D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __httpRequestMethodFromRequest_block_invoke(uint64_t a1, char *a2)
{
  result = strcasecmp(a2, "GET");
  if (result)
  {
    result = strcasecmp(a2, "HEAD");
    if (result)
    {
      result = strcasecmp(a2, "POST");
      if (result)
      {
        result = strcasecmp(a2, "PUT");
        if (result)
        {
          result = strcasecmp(a2, "DELETE");
          if (result)
          {
            result = strcasecmp(a2, "CONNECT");
            if (result)
            {
              result = strcasecmp(a2, "OPTIONS");
              if (result)
              {
                result = strcasecmp(a2, "TRACE");
                if (result)
                {
                  result = strcasecmp(a2, "PATCH");
                  if (result)
                  {
                    return result;
                  }

                  v5 = 10;
                }

                else
                {
                  v5 = 9;
                }
              }

              else
              {
                v5 = 8;
              }
            }

            else
            {
              v5 = 7;
            }
          }

          else
          {
            v5 = 6;
          }
        }

        else
        {
          v5 = 5;
        }
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

char *__httpServerTypeFromResponse_block_invoke(char *result, char *__big)
{
  if (__big)
  {
    v3 = result;
    result = strcasestr(__big, "CloudFront");
    if (result)
    {
      v4 = 5;
      v5 = 32;
    }

    else
    {
      result = strcasestr(__big, "varnish");
      if (!result)
      {
        return result;
      }

      v4 = 1;
      v5 = 40;
    }

    *(*(*&v3[v5] + 8) + 24) = v4;
  }

  return result;
}

char *__httpServerTypeFromResponse_block_invoke_2(char *result, char *__big)
{
  if (__big)
  {
    v2 = result;
    result = strcasestr(__big, "fsly");
    if (result)
    {
      *(*(*(v2 + 4) + 8) + 24) = 14;
    }
  }

  return result;
}

char *__httpServerTypeFromResponse_block_invoke_3(char *result, char *__big)
{
  if (__big)
  {
    v2 = result;
    result = strcasestr(__big, "akamai");
    if (result)
    {
      *(*(*(v2 + 4) + 8) + 24) = 6;
    }
  }

  return result;
}

char *__httpServerTypeFromResponse_block_invoke_4(char *result, char *__big)
{
  if (__big)
  {
    v3 = result;
    result = strcasestr(__big, "gws");
    if (result || (result = strcasestr(__big, "GSE")) != 0 || (result = strcasestr(__big, "ESF")) != 0)
    {
      v4 = 2;
LABEL_6:
      *(*(*(v3 + 4) + 8) + 24) = v4;
      return result;
    }

    result = strcasestr(__big, "cloudflare");
    if (result)
    {
      v4 = 4;
      goto LABEL_6;
    }

    result = strcasestr(__big, "ApacheTrafficServer");
    if (result || (result = strcasestr(__big, "ATS")) != 0)
    {
      v4 = 7;
      goto LABEL_6;
    }

    result = strcasestr(__big, "apache");
    if (result)
    {
      v4 = 8;
      goto LABEL_6;
    }

    result = strcasestr(__big, "nginx");
    if (result)
    {
      v4 = 9;
      goto LABEL_6;
    }

    result = strcasestr(__big, "LiteSpeed");
    if (result)
    {
      v4 = 10;
      goto LABEL_6;
    }

    result = strcasestr(__big, "lighttpd");
    if (result)
    {
      v4 = 11;
      goto LABEL_6;
    }

    result = strcasestr(__big, "nghttpx");
    if (result)
    {
      v4 = 12;
      goto LABEL_6;
    }
  }

  return result;
}

CFURLRef nw_http_security_create_secure_url(uint64_t a1, CFURLRef anURL)
{
  v31 = *MEMORY[0x1E69E9840];
  if (anURL)
  {
    v4 = CFURLCopyScheme(anURL);
    if (CFStringCompare(v4, @"http", 1uLL))
    {
      if (CFStringCompare(v4, @"ws", 1uLL))
      {
        if ((*(a1 + 198) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v5 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v24 = "nw_http_security_create_secure_url";
            v25 = 2082;
            v26 = (a1 + 114);
            v27 = 2080;
            v28 = " ";
            v29 = 2112;
            v30 = v4;
            _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%scannot upgrade unknown scheme %@", buf, 0x2Au);
          }
        }

        v6 = 0;
LABEL_14:
        if (v4)
        {
          CFRelease(v4);
        }

        return v6;
      }

      v7 = "wss";
    }

    else
    {
      v7 = "https";
    }

    v8 = strlen(v7);
    v9 = CFURLCopyAbsoluteURL(anURL);
    v10 = CFURLGetBytes(v9, 0, 0);
    Length = CFStringGetLength(v4);
    v12 = nw_calloc_type<unsigned char>(v10 + v8);
    CFURLGetBytes(v9, &v12[v8], v10);
    memcpy(&v12[Length], v7, v8);
    v6 = CFURLCreateAbsoluteURLWithBytes(*MEMORY[0x1E695E480], &v12[Length], v10 + v8 - Length, 0x600u, 0, 0);
    if (v12)
    {
      free(v12);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_14;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_http_security_create_secure_url";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null url", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_security_create_secure_url";
        v18 = "%{public}s called with null url";
LABEL_30:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v20 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v24 = "nw_http_security_create_secure_url";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null url, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_http_security_create_secure_url";
        v18 = "%{public}s called with null url, no backtrace";
        goto LABEL_30;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_http_security_create_secure_url";
        v18 = "%{public}s called with null url, backtrace limit exceeded";
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__39(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    _Block_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_47(uint64_t a1)
{
  v2 = nw_protocol_plugin_retry_end_async(*(a1 + 40) + 344);
  v3 = *(a1 + 40);
  if (v2)
  {
    v3[552] |= 8u;
    v4 = nw_context_copy_registered_endpoint(*(*(a1 + 40) + 520), *(*(*(a1 + 32) + 8) + 40));
    nw_http_security_reissue(*(a1 + 40), v4, 0);
    if (v4)
    {

      os_release(v4);
    }
  }

  else
  {

    nw_http_security_destroy(v3);
  }
}

void ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_2_49(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((nw_protocol_connect(*(*(a1 + 32) + 32), *(a1 + 32)) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v14 = "nw_http_security_connect_block_invoke_2";
    v1 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s connect failed", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v1, &type, &v11))
    {
      goto LABEL_15;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_15;
      }

      *buf = 136446210;
      v14 = "nw_http_security_connect_block_invoke";
      v4 = "%{public}s connect failed";
    }

    else
    {
      if (v11 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        v8 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v14 = "nw_http_security_connect_block_invoke";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s connect failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_15;
        }

        if (!v8)
        {
LABEL_15:
          if (v1)
          {
            free(v1);
          }

          return;
        }

        *buf = 136446210;
        v14 = "nw_http_security_connect_block_invoke";
        v4 = "%{public}s connect failed, no backtrace";
        v9 = v6;
        v10 = v7;
LABEL_14:
        _os_log_impl(&dword_181A37000, v9, v10, v4, buf, 0xCu);
        goto LABEL_15;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_15;
      }

      *buf = 136446210;
      v14 = "nw_http_security_connect_block_invoke";
      v4 = "%{public}s connect failed, backtrace limit exceeded";
    }

    v9 = v2;
    v10 = v3;
    goto LABEL_14;
  }
}

void nw_http_security_reissue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_security_reissue";
    v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s called with null http_security", buf, 12);
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &v19, &v18))
    {
      goto LABEL_36;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "nw_http_security_reissue";
      v11 = "%{public}s called with null http_security";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v19;
      v14 = os_log_type_enabled(v9, v19);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v21 = "nw_http_security_reissue";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null http_security, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v8)
        {
          return;
        }

LABEL_37:
        free(v8);
        return;
      }

      if (!v14)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "nw_http_security_reissue";
      v11 = "%{public}s called with null http_security, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "nw_http_security_reissue";
      v11 = "%{public}s called with null http_security, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_36;
  }

  if (a2)
  {
    if ((*(a1 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v21 = "nw_http_security_reissue";
        v22 = 2082;
        v23 = (a1 + 114);
        v24 = 2080;
        v25 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%supgrading to https", buf, 0x20u);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZL24nw_http_security_reissueP25nw_protocol_http_securityP11nw_endpointP13nw_parameters_block_invoke;
    v17[3] = &__block_descriptor_tmp_73;
    v17[4] = a1;
    v17[5] = a2;
    v17[6] = a3;
    nw_http_security_perform_url_filter_check(a1, a2, a3, v17, COERCE_DOUBLE(0x40000000));
    return;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_http_security_reissue";
  v8 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null endpoint", buf, 12);
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v8, &v19, &v18))
  {
    goto LABEL_36;
  }

  if (v19 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = v19;
    if (!os_log_type_enabled(v9, v19))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v21 = "nw_http_security_reissue";
    v11 = "%{public}s called with null endpoint";
    goto LABEL_35;
  }

  if (v18 != 1)
  {
    v9 = __nwlog_obj();
    v10 = v19;
    if (!os_log_type_enabled(v9, v19))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v21 = "nw_http_security_reissue";
    v11 = "%{public}s called with null endpoint, backtrace limit exceeded";
    goto LABEL_35;
  }

  v15 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = v19;
  v16 = os_log_type_enabled(v9, v19);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v21 = "nw_http_security_reissue";
    v11 = "%{public}s called with null endpoint, no backtrace";
    goto LABEL_35;
  }

  if (v16)
  {
    *buf = 136446466;
    v21 = "nw_http_security_reissue";
    v22 = 2082;
    v23 = v15;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v8)
  {
    goto LABEL_37;
  }
}

void ___ZL24nw_http_security_reissueP25nw_protocol_http_securityP11nw_endpointP13nw_parameters_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(v1 + 520);
  v4 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL24nw_http_security_reissueP25nw_protocol_http_securityP11nw_endpointP13nw_parameters_block_invoke_4;
  v5[3] = &__block_descriptor_tmp_72_29203;
  v5[4] = v1;
  nw_protocol_plugin_retry_reissue_output_frames(v1 + 344, v1, v3, v2, v4, 2, 0, &__block_literal_global_67_29204, &__block_literal_global_71, v5);
}

void ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_2(uint64_t a1, void *object, void *a3, void *a4)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3802000000;
  v22[3] = __Block_byref_object_copy__36;
  v22[4] = __Block_byref_object_dispose__37;
  if (object)
  {
    v7 = os_retain(object);
    v8 = v24 | 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v23 = v7;
  v24 = v8;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3802000000;
  v19[3] = __Block_byref_object_copy__40;
  v19[4] = __Block_byref_object_dispose__41;
  if (a3)
  {
    v9 = os_retain(a3);
    v10 = v21 | 1;
  }

  else
  {
    v9 = 0;
    v10 = -1;
  }

  v20 = v9;
  v21 = v10;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3802000000;
  v16[3] = __Block_byref_object_copy__26;
  v16[4] = __Block_byref_object_dispose__27;
  if (a4)
  {
    v11 = os_retain(a4);
    v12 = v18 | 1;
  }

  else
  {
    v11 = 0;
    v12 = -1;
  }

  objecta = v11;
  v18 = v12;
  v13 = *(a1 + 32);
  v14 = *(v13 + 520);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_42;
  v15[3] = &unk_1E6A30230;
  v15[4] = v16;
  v15[5] = v22;
  v15[6] = v19;
  v15[7] = v13;
  nw_queue_context_async_if_needed(v14, v15);
  _Block_object_dispose(v16, 8);
  if ((v18 & 1) != 0 && objecta)
  {
    os_release(objecta);
  }

  _Block_object_dispose(v19, 8);
  if ((v21 & 1) != 0 && v20)
  {
    os_release(v20);
  }

  _Block_object_dispose(v22, 8);
  if (v24)
  {
    if (v23)
    {
      os_release(v23);
    }
  }
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__41(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__27(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL24nw_http_security_connectP25nw_protocol_http_securityP11nw_protocol_block_invoke_42(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(a1[7] + 344))
  {
    v2 = a1[7];
    if (*(*(a1[4] + 8) + 40))
    {
      if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
        v2 = a1[7];
        if (v15)
        {
          v16 = 136446722;
          v17 = "nw_http_security_connect_block_invoke";
          v18 = 2082;
          v19 = (v2 + 114);
          v20 = 2080;
          v21 = " ";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived new request metadata from upgrade handler", &v16, 0x20u);
          v2 = a1[7];
        }
      }

      v3 = nw_context_copy_registered_endpoint(*(v2 + 520), *(*(a1[5] + 8) + 40));
      v4 = *(*(a1[4] + 8) + 40);
      if (v4)
      {
        v5 = os_retain(v4);
      }

      else
      {
        v5 = 0;
      }

      v9 = a1[7];
      v10 = *(v9 + 544);
      if (v10)
      {
        v11 = *(v9 + 536);
        if (v11)
        {
          os_release(v11);
          v10 = *(v9 + 544);
        }
      }

      *(v9 + 536) = v5;
      *(v9 + 544) = v10 | 1;
      nw_http_security_reissue(a1[7], v3, *(*(a1[6] + 8) + 40));
      if (v3)
      {
        os_release(v3);
      }
    }

    else
    {
      nw_protocol_error(*(v2 + 48), v2);
      v7 = a1[7];
      v8 = *(v7 + 48);

      nw_protocol_disconnected(v8, v7);
    }
  }

  else
  {
    v6 = a1[7];
    if ((v6[198] & 1) == 0 && gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      v6 = a1[7];
      if (v13)
      {
        v16 = 136446722;
        v17 = "nw_http_security_connect_block_invoke";
        v18 = 2082;
        v19 = v6 + 114;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferred destroy when coming back from callout", &v16, 0x20u);
        v6 = a1[7];
      }
    }

    nw_http_security_destroy(v6);
  }
}

void nw_protocol_http_security_create::$_1::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, type, &v30))
    {
      goto LABEL_68;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null protocol";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type[0];
      v20 = os_log_type_enabled(v13, type[0]);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          *&buf[4] = "operator()";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_68:
        if (!v12)
        {
          return;
        }

        goto LABEL_69;
      }

      if (!v20)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_67;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null http_security", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, type, &v30))
    {
      goto LABEL_68;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type[0];
        if (!os_log_type_enabled(v13, type[0]))
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v15 = "%{public}s called with null http_security, backtrace limit exceeded";
        goto LABEL_67;
      }

      v21 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type[0];
      v22 = os_log_type_enabled(v13, type[0]);
      if (!v21)
      {
        if (!v22)
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v15 = "%{public}s called with null http_security, no backtrace";
        goto LABEL_67;
      }

      if (!v22)
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v21;
      v23 = "%{public}s called with null http_security, dumping backtrace:%{public}s";
      goto LABEL_48;
    }

    v13 = __nwlog_obj();
    v14 = type[0];
    if (!os_log_type_enabled(v13, type[0]))
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v15 = "%{public}s called with null http_security";
LABEL_67:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_68;
  }

  if (!a3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null metadata", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, type, &v30))
    {
      goto LABEL_68;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null metadata";
      goto LABEL_67;
    }

    if (v30 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_67;
    }

    v21 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type[0];
    v24 = os_log_type_enabled(v13, type[0]);
    if (!v21)
    {
      if (!v24)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_67;
    }

    if (!v24)
    {
      goto LABEL_49;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    v23 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_48:
    _os_log_impl(&dword_181A37000, v13, v14, v23, buf, 0x16u);
    goto LABEL_49;
  }

  if (!a5)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null completion", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v12, type, &v30))
    {
      goto LABEL_68;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null completion";
      goto LABEL_67;
    }

    if (v30 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (!os_log_type_enabled(v13, type[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_67;
    }

    v21 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type[0];
    v25 = os_log_type_enabled(v13, type[0]);
    if (!v21)
    {
      if (!v25)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v15 = "%{public}s called with null completion, no backtrace";
      goto LABEL_67;
    }

    if (v25)
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v21;
      v23 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_48;
    }

LABEL_49:
    free(v21);
    if (!v12)
    {
      return;
    }

LABEL_69:
    free(v12);
    return;
  }

  v8 = *(v5 + 536);
  if (v8)
  {
    v9 = nw_http_metadata_copy_request(v8);
    nw_http_metadata_set_request(a3, v9);
    if (v9)
    {
      os_release(v9);
    }
  }

  if ((*(v5 + 552) & 8) != 0)
  {
    v10 = nw_http_metadata_copy_request(a3);
    *type = 0;
    v27 = type;
    v28 = 0x2000000000;
    v29 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZZ32nw_protocol_http_security_createENK3__1clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke;
    v32 = &unk_1E6A30208;
    v33 = type;
    nw_http_request_access_scheme(v10, buf);
    if (*(v27 + 3))
    {
      nw_http_request_set_scheme(v10);
    }

    _Block_object_dispose(type, 8);
    if (v10)
    {
      os_release(v10);
    }
  }

  (*(a5 + 16))(a5, 1);
}

uint64_t ___ZZ32nw_protocol_http_security_createENK3__1clEP11nw_protocolS1_P20nw_protocol_metadatabU13block_pointerFv46nw_protocol_plugin_metadata_processor_result_tE_block_invoke(uint64_t result, char *a2)
{
  if (a2)
  {
    v3 = result;
    result = strcasecmp(a2, "http");
    if (result)
    {
      result = strcasecmp(a2, "ws");
      if (result)
      {
        return result;
      }

      v4 = "wss";
    }

    else
    {
      v4 = "https";
    }

    *(*(*(v3 + 32) + 8) + 24) = v4;
  }

  return result;
}

void nw_protocol_http_security_create::$_0::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v22 = __nwlog_obj();
    *block = 136446210;
    *&block[4] = "operator()";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v22, 16, "%{public}s called with null protocol", block, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v60[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v23, type, v60))
    {
      goto LABEL_111;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v60[0] != OS_LOG_TYPE_INFO)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_111;
        }

        *block = 136446210;
        *&block[4] = "operator()";
        v26 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_110;
      }

      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type[0];
      v32 = os_log_type_enabled(v24, type[0]);
      if (!backtrace_string)
      {
        if (!v32)
        {
          goto LABEL_111;
        }

        *block = 136446210;
        *&block[4] = "operator()";
        v26 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_110;
      }

      if (v32)
      {
        *block = 136446466;
        *&block[4] = "operator()";
        *&block[12] = 2082;
        *&block[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol, dumping backtrace:%{public}s", block, 0x16u);
      }

      free(backtrace_string);
LABEL_111:
      if (v23)
      {
        goto LABEL_112;
      }

      return;
    }

    v24 = __nwlog_obj();
    v25 = type[0];
    if (!os_log_type_enabled(v24, type[0]))
    {
      goto LABEL_111;
    }

    *block = 136446210;
    *&block[4] = "operator()";
    v26 = "%{public}s called with null protocol";
    goto LABEL_110;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v27 = __nwlog_obj();
    *block = 136446210;
    *&block[4] = "operator()";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null http_security", block, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v60[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v23, type, v60))
    {
      goto LABEL_111;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v60[0] != OS_LOG_TYPE_INFO)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_111;
        }

        *block = 136446210;
        *&block[4] = "operator()";
        v26 = "%{public}s called with null http_security, backtrace limit exceeded";
        goto LABEL_110;
      }

      v33 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type[0];
      v34 = os_log_type_enabled(v24, type[0]);
      if (!v33)
      {
        if (!v34)
        {
          goto LABEL_111;
        }

        *block = 136446210;
        *&block[4] = "operator()";
        v26 = "%{public}s called with null http_security, no backtrace";
        goto LABEL_110;
      }

      if (!v34)
      {
        goto LABEL_82;
      }

      *block = 136446466;
      *&block[4] = "operator()";
      *&block[12] = 2082;
      *&block[14] = v33;
      v35 = "%{public}s called with null http_security, dumping backtrace:%{public}s";
      goto LABEL_81;
    }

    v24 = __nwlog_obj();
    v25 = type[0];
    if (!os_log_type_enabled(v24, type[0]))
    {
      goto LABEL_111;
    }

    *block = 136446210;
    *&block[4] = "operator()";
    v26 = "%{public}s called with null http_security";
LABEL_110:
    _os_log_impl(&dword_181A37000, v24, v25, v26, block, 0xCu);
    goto LABEL_111;
  }

  if (!a2)
  {
    v28 = __nwlog_obj();
    *block = 136446210;
    *&block[4] = "operator()";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s called with null other_protocol", block, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v60[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v23, type, v60))
    {
      goto LABEL_111;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v60[0] != OS_LOG_TYPE_INFO)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_111;
        }

        *block = 136446210;
        *&block[4] = "operator()";
        v26 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_110;
      }

      v33 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type[0];
      v36 = os_log_type_enabled(v24, type[0]);
      if (!v33)
      {
        if (!v36)
        {
          goto LABEL_111;
        }

        *block = 136446210;
        *&block[4] = "operator()";
        v26 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_110;
      }

      if (!v36)
      {
        goto LABEL_82;
      }

      *block = 136446466;
      *&block[4] = "operator()";
      *&block[12] = 2082;
      *&block[14] = v33;
      v35 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_81;
    }

    v24 = __nwlog_obj();
    v25 = type[0];
    if (!os_log_type_enabled(v24, type[0]))
    {
      goto LABEL_111;
    }

    *block = 136446210;
    *&block[4] = "operator()";
    v26 = "%{public}s called with null other_protocol";
    goto LABEL_110;
  }

  if (!a3)
  {
    v29 = __nwlog_obj();
    *block = 136446210;
    *&block[4] = "operator()";
    v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null metadata", block, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v60[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v23, type, v60))
    {
      goto LABEL_111;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_111;
      }

      *block = 136446210;
      *&block[4] = "operator()";
      v26 = "%{public}s called with null metadata";
      goto LABEL_110;
    }

    if (v60[0] != OS_LOG_TYPE_INFO)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (!os_log_type_enabled(v24, type[0]))
      {
        goto LABEL_111;
      }

      *block = 136446210;
      *&block[4] = "operator()";
      v26 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_110;
    }

    v33 = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v25 = type[0];
    v37 = os_log_type_enabled(v24, type[0]);
    if (!v33)
    {
      if (!v37)
      {
        goto LABEL_111;
      }

      *block = 136446210;
      *&block[4] = "operator()";
      v26 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_110;
    }

    if (!v37)
    {
      goto LABEL_82;
    }

    *block = 136446466;
    *&block[4] = "operator()";
    *&block[12] = 2082;
    *&block[14] = v33;
    v35 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_81:
    _os_log_impl(&dword_181A37000, v24, v25, v35, block, 0x16u);
    goto LABEL_82;
  }

  if (a5)
  {
    if (*(v5 + 552))
    {
      goto LABEL_38;
    }

    if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v39 = a5;
      v40 = a3;
      v41 = __nwlog_obj();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
      a3 = v40;
      a5 = v39;
      if (v42)
      {
        *block = 136446722;
        *&block[4] = "nw_http_security_process_response";
        *&block[12] = 2082;
        *&block[14] = v5 + 114;
        *&block[22] = 2080;
        v80 = " ";
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", block, 0x20u);
        a3 = v40;
        a5 = v39;
      }
    }

    if (!*(v5 + 456))
    {
      goto LABEL_38;
    }

    if (!*(v5 + 472))
    {
      goto LABEL_38;
    }

    v6 = a5;
    v7 = a3;
    v8 = nw_http_metadata_get_type(a3);
    a5 = v6;
    if (v8 == 3)
    {
      goto LABEL_38;
    }

    *type = 0;
    v73 = type;
    v74 = 0x3802000000;
    v75 = __Block_byref_object_copy__29291;
    v76 = __Block_byref_object_dispose__29292;
    v77 = nw_http_metadata_copy_response(v7);
    v78 |= 1u;
    v9 = *(v73 + 5);
    if (v9)
    {
      v10 = v9;
      have_field_with_name = _nw_http_fields_have_field_with_name(v10, "Strict-Transport-Security");

      if (!have_field_with_name)
      {
        goto LABEL_27;
      }

      parameters = nw_protocol_get_parameters(v5);
      if (nw_parameters_is_third_party_web_content(parameters))
      {
        goto LABEL_34;
      }

      nw_http_security_fetch_sec_protocol_metadata(v5);
      if (!*(v5 + 504))
      {
LABEL_27:
        v16 = nw_http_fields_copy_value_by_name(*(v73 + 5), "Alt-Svc");
        if (v16)
        {
          v17 = v16;
          if (*(v5 + 488))
          {
            nw_http_security_fetch_sec_protocol_metadata(v5);
            if (*(v5 + 504))
            {
              remote_endpoint = nw_protocol_get_remote_endpoint(v5);
              v19 = nw_protocol_get_parameters(v5);
              storage_partition = nw_parameters_get_storage_partition(v19);
              if (nw_endpoint_get_hostname(remote_endpoint))
              {
                nw_http_connection_state_storage_parse_and_set_alt_svc(*(v5 + 488), storage_partition, remote_endpoint, v17, *(v5 + 504));
              }
            }
          }

          v21 = v17;
          goto LABEL_33;
        }

LABEL_34:
        _Block_object_dispose(type, 8);
        if (v78)
        {
          if (v77)
          {
            os_release(v77);
          }
        }

        a5 = v6;
LABEL_38:
        (*(a5 + 16))(a5, 1);
        return;
      }

      v13 = nw_parameters_copy_protocol_options_legacy(parameters, v5);
      if (v13)
      {
        v14 = v13;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 0x40000000;
        v68 = ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke;
        v69 = &unk_1E6A30168;
        v70 = type;
        v71 = v5;
        if (nw_http_security_options_get_save_hsts_with_untrusted_root_cert(v13))
        {
          v68(v67);
        }

        else
        {
          *v60 = 0;
          v61 = v60;
          v62 = 0x3802000000;
          v63 = __Block_byref_object_copy__17_29304;
          v64 = __Block_byref_object_dispose__18_29305;
          v65 = sec_protocol_metadata_copy_sec_trust();
          v66 |= 1u;
          if (*(v61 + 5))
          {
            v53 = 0;
            v54 = &v53;
            v55 = 0x3802000000;
            v56 = __Block_byref_object_copy__19;
            v57 = __Block_byref_object_dispose__20;
            object = nw_context_copy_cached_targeted_dispatch_queue(*(v5 + 520));
            v59 |= 1u;
            nw_protocol_plugin_retry_begin_async(v5 + 344);
            v15 = v54[5];
            *block = MEMORY[0x1E69E9820];
            *&block[8] = 0x40000000;
            *&block[16] = ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke_21;
            v80 = &unk_1E6A301B8;
            v81 = v67;
            v82 = v60;
            v83 = &v53;
            v84 = v5;
            dispatch_async(v15, block);
            _Block_object_dispose(&v53, 8);
            if (v59)
            {
              if (object)
              {
                dispatch_release(object);
              }
            }
          }

          _Block_object_dispose(v60, 8);
          if ((v66 & 1) != 0 && v65)
          {
            os_release(v65);
          }
        }

        os_release(v14);
        goto LABEL_27;
      }

      v50 = __nwlog_obj();
      *block = 136446210;
      *&block[4] = "nw_http_security_process_response";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v50, 16, "%{public}s called with null protocol_options", block, 12);
      v60[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v53) = 0;
      if (!__nwlog_fault(v44, v60, &v53))
      {
        goto LABEL_137;
      }

      if (v60[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = v60[0];
        if (!os_log_type_enabled(v45, v60[0]))
        {
          goto LABEL_137;
        }

        *block = 136446210;
        *&block[4] = "nw_http_security_process_response";
        v47 = "%{public}s called with null protocol_options";
        goto LABEL_136;
      }

      if (v53 != 1)
      {
        v45 = __nwlog_obj();
        v46 = v60[0];
        if (!os_log_type_enabled(v45, v60[0]))
        {
          goto LABEL_137;
        }

        *block = 136446210;
        *&block[4] = "nw_http_security_process_response";
        v47 = "%{public}s called with null protocol_options, backtrace limit exceeded";
        goto LABEL_136;
      }

      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = v60[0];
      v52 = os_log_type_enabled(v45, v60[0]);
      if (v51)
      {
        if (v52)
        {
          *block = 136446466;
          *&block[4] = "nw_http_security_process_response";
          *&block[12] = 2082;
          *&block[14] = v51;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null protocol_options, dumping backtrace:%{public}s", block, 0x16u);
        }

        free(v51);
        if (!v44)
        {
          goto LABEL_34;
        }

LABEL_138:
        v21 = v44;
LABEL_33:
        free(v21);
        goto LABEL_34;
      }

      if (v52)
      {
        *block = 136446210;
        *&block[4] = "nw_http_security_process_response";
        v47 = "%{public}s called with null protocol_options, no backtrace";
LABEL_136:
        _os_log_impl(&dword_181A37000, v45, v46, v47, block, 0xCu);
      }
    }

    else
    {
      v43 = __nwlog_obj();
      *block = 136446210;
      *&block[4] = "nw_http_security_process_response";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null response", block, 12);
      v60[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v53) = 0;
      if (!__nwlog_fault(v44, v60, &v53))
      {
        goto LABEL_137;
      }

      if (v60[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = v60[0];
        if (!os_log_type_enabled(v45, v60[0]))
        {
          goto LABEL_137;
        }

        *block = 136446210;
        *&block[4] = "nw_http_security_process_response";
        v47 = "%{public}s called with null response";
        goto LABEL_136;
      }

      if (v53 != 1)
      {
        v45 = __nwlog_obj();
        v46 = v60[0];
        if (!os_log_type_enabled(v45, v60[0]))
        {
          goto LABEL_137;
        }

        *block = 136446210;
        *&block[4] = "nw_http_security_process_response";
        v47 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_136;
      }

      v48 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = v60[0];
      v49 = os_log_type_enabled(v45, v60[0]);
      if (!v48)
      {
        if (!v49)
        {
          goto LABEL_137;
        }

        *block = 136446210;
        *&block[4] = "nw_http_security_process_response";
        v47 = "%{public}s called with null response, no backtrace";
        goto LABEL_136;
      }

      if (v49)
      {
        *block = 136446466;
        *&block[4] = "nw_http_security_process_response";
        *&block[12] = 2082;
        *&block[14] = v48;
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null response, dumping backtrace:%{public}s", block, 0x16u);
      }

      free(v48);
    }

LABEL_137:
    if (!v44)
    {
      goto LABEL_34;
    }

    goto LABEL_138;
  }

  v30 = __nwlog_obj();
  *block = 136446210;
  *&block[4] = "operator()";
  v23 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null completion", block, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v60[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v23, type, v60))
  {
    goto LABEL_111;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v24 = __nwlog_obj();
    v25 = type[0];
    if (!os_log_type_enabled(v24, type[0]))
    {
      goto LABEL_111;
    }

    *block = 136446210;
    *&block[4] = "operator()";
    v26 = "%{public}s called with null completion";
    goto LABEL_110;
  }

  if (v60[0] != OS_LOG_TYPE_INFO)
  {
    v24 = __nwlog_obj();
    v25 = type[0];
    if (!os_log_type_enabled(v24, type[0]))
    {
      goto LABEL_111;
    }

    *block = 136446210;
    *&block[4] = "operator()";
    v26 = "%{public}s called with null completion, backtrace limit exceeded";
    goto LABEL_110;
  }

  v33 = __nw_create_backtrace_string();
  v24 = __nwlog_obj();
  v25 = type[0];
  v38 = os_log_type_enabled(v24, type[0]);
  if (!v33)
  {
    if (!v38)
    {
      goto LABEL_111;
    }

    *block = 136446210;
    *&block[4] = "operator()";
    v26 = "%{public}s called with null completion, no backtrace";
    goto LABEL_110;
  }

  if (v38)
  {
    *block = 136446466;
    *&block[4] = "operator()";
    *&block[12] = 2082;
    *&block[14] = v33;
    v35 = "%{public}s called with null completion, dumping backtrace:%{public}s";
    goto LABEL_81;
  }

LABEL_82:
  free(v33);
  if (v23)
  {
LABEL_112:
    free(v23);
  }
}

uint64_t __Block_byref_object_copy__29291(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__29292(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void nw_http_security_fetch_sec_protocol_metadata(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 552) & 4) != 0)
  {
    return;
  }

  *(a1 + 552) |= 4u;
  v2 = nw_protocol_copy_info(*(a1 + 32));
  v3 = v2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3802000000;
  v24 = __Block_byref_object_copy__26;
  v25 = __Block_byref_object_dispose__27;
  object = 0;
  v27 = -1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZL44nw_http_security_fetch_sec_protocol_metadataP25nw_protocol_http_security_block_invoke;
  aBlock[3] = &unk_1E6A301E0;
  aBlock[4] = &v21;
  if (v2)
  {
    _nw_array_apply(v2, aBlock);
    v4 = v22[5];
    if (v4)
    {
      v5 = v4;
      v6 = nw_protocol_copy_http_connection_definition_onceToken;
      v7 = v5;
      if (v6 != -1)
      {
        dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
      }

      v8 = nw_protocol_metadata_matches_definition(v7, nw_protocol_copy_http_connection_definition_definition);

      if (v8)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v35 = __Block_byref_object_copy__75915;
        v36 = __Block_byref_object_dispose__75916;
        v37 = 0;
        *type = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __nw_http_connection_metadata_get_sec_metadata_block_invoke;
        v31 = &unk_1E6A3A858;
        v32 = buf;
        if (_nw_protocol_metadata_get_handle())
        {
          (v30)(type);
        }

        v9 = *(*&buf[8] + 40);
        _Block_object_dispose(buf, 8);

LABEL_10:
        v10 = *(a1 + 512);
        if (v10)
        {
          v11 = *(a1 + 504);
          if (v11)
          {
            os_release(v11);
            v10 = *(a1 + 512);
          }
        }

        *(a1 + 504) = v9;
        *(a1 + 512) = v10 | 1;
        goto LABEL_14;
      }

      v12 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_connection_metadata_get_sec_metadata";
      v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s metadata must be http_connection", buf, 12);

      type[0] = OS_LOG_TYPE_ERROR;
      v33 = 0;
      if (__nwlog_fault(v13, type, &v33))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v15 = type[0];
          if (os_log_type_enabled(v14, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_get_sec_metadata";
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s metadata must be http_connection", buf, 0xCu);
          }
        }

        else if (v33 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v17 = type[0];
          v18 = os_log_type_enabled(v14, type[0]);
          if (backtrace_string)
          {
            if (v18)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http_connection_metadata_get_sec_metadata";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v17, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_36;
          }

          if (v18)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_get_sec_metadata";
            _os_log_impl(&dword_181A37000, v14, v17, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v14 = __nwlog_obj();
          v19 = type[0];
          if (os_log_type_enabled(v14, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_get_sec_metadata";
            _os_log_impl(&dword_181A37000, v14, v19, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_36:
      if (v13)
      {
        free(v13);
      }

      v9 = 0;
      goto LABEL_10;
    }
  }

LABEL_14:
  _Block_object_dispose(&v21, 8);
  if ((v27 & 1) != 0 && object)
  {
    os_release(object);
  }

  if (v3)
  {
    os_release(v3);
  }
}

unint64_t ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_15_29310;
  v3[4] = *(a1 + 40);
  return nw_http_fields_enumerate_by_name(v1, "Strict-Transport-Security", v3);
}

uint64_t __Block_byref_object_copy__17_29304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__18_29305(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__20(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    dispatch_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke_21(void *a1)
{
  v2 = sec_trust_copy_ref(*(*(a1[5] + 8) + 40));
  v3 = *(*(a1[6] + 8) + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke_2_22;
  v5[3] = &unk_1E6A30190;
  v4 = a1[7];
  v5[4] = a1[4];
  v5[5] = v4;
  SecTrustEvaluateAsyncWithError(v2, v3, v5);
  if (v2)
  {
    os_release(v2);
  }
}

void ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke_2_22(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  if (!nw_protocol_plugin_retry_end_async(*(a1 + 40) + 344))
  {
    v4 = *(a1 + 40);
    if ((v4[198] & 1) == 0 && gLogDatapath == 1)
    {
      v5 = __nwlog_obj();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      v4 = *(a1 + 40);
      if (v6)
      {
        v7 = 136446722;
        v8 = "nw_http_security_process_response_block_invoke_2";
        v9 = 2082;
        v10 = v4 + 114;
        v11 = 2080;
        v12 = " ";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDeferred destroy when coming back from callout", &v7, 0x20u);
        v4 = *(a1 + 40);
      }
    }

    nw_http_security_destroy(v4);
  }
}

uint64_t ___ZL33nw_http_security_process_responseP25nw_protocol_http_securityP20nw_protocol_metadata_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v16 = __nwlog_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    v5 = *(a1 + 32);
    if (v17)
    {
      *buf = 136446722;
      v29 = "nw_http_security_process_response_block_invoke_2";
      v30 = 2082;
      v31 = (v5 + 114);
      v32 = 2080;
      v33 = " ";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sparsing Strict-Transport-Security header field", buf, 0x20u);
      v5 = *(a1 + 32);
    }
  }

  v6 = *(v5 + 456);
  v7 = *(v5 + 472);
  if (!v7)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_hsts_storage_parse_and_set";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null storage", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &type, &v26))
    {
      goto LABEL_52;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v21 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v29 = "nw_hsts_storage_parse_and_set";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null storage, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_52:
          if (!v11)
          {
            goto LABEL_7;
          }

LABEL_53:
          free(v11);
          goto LABEL_7;
        }

        if (v21)
        {
          *buf = 136446210;
          v29 = "nw_hsts_storage_parse_and_set";
          v14 = "%{public}s called with null storage, no backtrace";
          goto LABEL_50;
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_hsts_storage_parse_and_set";
          v14 = "%{public}s called with null storage, backtrace limit exceeded";
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v29 = "nw_hsts_storage_parse_and_set";
    v14 = "%{public}s called with null storage";
    goto LABEL_50;
  }

  if (!v6)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_hsts_storage_parse_and_set";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null url", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &type, &v26))
    {
      goto LABEL_52;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_hsts_storage_parse_and_set";
          v14 = "%{public}s called with null url, backtrace limit exceeded";
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      v22 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v23 = os_log_type_enabled(v12, type);
      if (!v22)
      {
        if (v23)
        {
          *buf = 136446210;
          v29 = "nw_hsts_storage_parse_and_set";
          v14 = "%{public}s called with null url, no backtrace";
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (v23)
      {
        *buf = 136446466;
        v29 = "nw_hsts_storage_parse_and_set";
        v30 = 2082;
        v31 = v22;
        v24 = "%{public}s called with null url, dumping backtrace:%{public}s";
LABEL_35:
        _os_log_impl(&dword_181A37000, v12, v13, v24, buf, 0x16u);
      }

LABEL_36:

      free(v22);
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_53;
    }

    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_51;
    }

    *buf = 136446210;
    v29 = "nw_hsts_storage_parse_and_set";
    v14 = "%{public}s called with null url";
LABEL_50:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_51;
  }

  if (!a4)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_hsts_storage_parse_and_set";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null sts_header", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &type, &v26))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_hsts_storage_parse_and_set";
        v14 = "%{public}s called with null sts_header";
        goto LABEL_50;
      }

LABEL_51:

      goto LABEL_52;
    }

    if (v26 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_hsts_storage_parse_and_set";
        v14 = "%{public}s called with null sts_header, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    v22 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v25 = os_log_type_enabled(v12, type);
    if (!v22)
    {
      if (v25)
      {
        *buf = 136446210;
        v29 = "nw_hsts_storage_parse_and_set";
        v14 = "%{public}s called with null sts_header, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (v25)
    {
      *buf = 136446466;
      v29 = "nw_hsts_storage_parse_and_set";
      v30 = 2082;
      v31 = v22;
      v24 = "%{public}s called with null sts_header, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x201u);
  [v7[1] handleSTSHeader:v8 forURL:v6];

LABEL_7:
  return 0;
}

uint64_t ___ZL44nw_http_security_fetch_sec_protocol_metadataP25nw_protocol_http_security_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    if (v3)
    {
      v3 = os_retain(v3);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 48);
    if (v6)
    {
      v7 = *(v5 + 40);
      if (v7)
      {
        os_release(v7);
        v6 = *(v5 + 48);
      }
    }

    *(v5 + 40) = v3;
    *(v5 + 48) = v6 | 1;
  }

  return 1;
}

void ___ZL39nw_protocol_http_security_get_callbacksv_block_invoke()
{
  nw_protocol_http_security_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840870 = nw_protocol_common_replace_input_handler;
  qword_1EA8408B0 = nw_protocol_common_get_input_frames;
  qword_1EA8408B8 = nw_protocol_common_get_output_frames;
  qword_1EA8408C0 = nw_protocol_common_finalize_output_frames;
  qword_1EA8408D0 = nw_protocol_common_get_parameters;
  qword_1EA8408D8 = nw_protocol_common_get_path;
  qword_1EA8408E8 = nw_protocol_common_get_remote_endpoint;
  qword_1EA8408E0 = nw_protocol_common_get_local_endpoint;
  qword_1EA840928 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840930 = nw_protocol_common_get_output_interface;
  qword_1EA840878 = nw_protocol_common_connect;
  qword_1EA840888 = nw_protocol_common_connected;
  qword_1EA840880 = nw_protocol_common_disconnect;
  qword_1EA840890 = nw_protocol_common_disconnected;
  qword_1EA8408A0 = nw_protocol_common_input_available;
  qword_1EA8408A8 = nw_protocol_common_output_available;
  qword_1EA840918 = nw_protocol_common_input_finished;
  qword_1EA840920 = nw_protocol_common_output_finished;
  qword_1EA840968 = nw_protocol_common_input_flush;
  qword_1EA840898 = nw_protocol_common_error;
  qword_1EA840960 = nw_protocol_common_reset;
  qword_1EA840958 = nw_protocol_common_get_message_properties;
  qword_1EA840940 = nw_protocol_common_copy_info;
  qword_1EA840910 = nw_protocol_common_supports_external_data;
  qword_1EA840938 = nw_protocol_common_waiting_for_output;
  qword_1EA8408F0 = nw_protocol_common_register_notification;
  qword_1EA8408F8 = nw_protocol_common_unregister_notification;
  qword_1EA840900 = nw_protocol_common_notify;
  qword_1EA840908 = nw_protocol_common_updated_path;
  qword_1EA8408C8 = nw_protocol_common_link_state;
  qword_1EA840868 = nw_protocol_http_security_remove_input_handler;
}

double __nw_protocol_http_security_identifier_block_invoke()
{
  strcpy(nw_protocol_http_security_identifier::protocol_identifier, "http_security");
  *&result = 0x100000005;
  qword_1EA840F90 = 0x100000005;
  return result;
}

void ___ZL25can_log_sensitive_contentv_block_invoke()
{
  if (in_development_environment(void)::onceToken != -1)
  {
    dispatch_once(&in_development_environment(void)::onceToken, &__block_literal_global_12_29352);
  }

  v0 = (in_development_environment(void)::ok & 1) != 0 || CFPreferencesAppValueIsForced(@"AppleCFNetworkDiagnosticLogging", @"Apple Global Domain") != 0;
  can_log_sensitive_content(void)::ok = v0;
}

void ___ZL26in_development_environmentv_block_invoke()
{
  in_development_environment(void)::ok = os_variant_allows_internal_security_policies();
  if (in_development_environment(void)::ok)
  {
    return;
  }

  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = SecTaskCopyValueForEntitlement(v0, @"get-task-allow", 0);
  if (v2)
  {
    in_development_environment(void)::ok = v2 == *MEMORY[0x1E695E4D0];
LABEL_7:
    CFRelease(v2);
    goto LABEL_8;
  }

  v2 = SecTaskCopyValueForEntitlement(v1, @"com.apple.security.get-task-allow", 0);
  in_development_environment(void)::ok = v2 == *MEMORY[0x1E695E4D0];
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_8:

  CFRelease(v1);
}