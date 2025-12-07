uint64_t nw_protocol_ipv4_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
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
        v73 = "nw_protocol_ipv4_finalize_output_frames";
        v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s called with null ipv4", buf, 12);
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
              v73 = "nw_protocol_ipv4_finalize_output_frames";
              v12 = "%{public}s called with null ipv4";
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
                v73 = "nw_protocol_ipv4_finalize_output_frames";
                v74 = 2082;
                v75 = backtrace_string;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null ipv4, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_53;
            }

            if (v24)
            {
              *buf = 136446210;
              v73 = "nw_protocol_ipv4_finalize_output_frames";
              v12 = "%{public}s called with null ipv4, no backtrace";
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
              v73 = "nw_protocol_ipv4_finalize_output_frames";
              v12 = "%{public}s called with null ipv4, backtrace limit exceeded";
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

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 0x40000000;
    v65 = ___ZL39nw_protocol_ipv4_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v66 = &__block_descriptor_tmp_32_91664;
    p_output_handler = &v8[1].output_handler;
    v68 = a2;
    v69 = a1;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v14 = *(tqh_first + 4);
      v15 = (v65)(v64);
      tqh_first = v14;
    }

    while ((v15 & 1) != 0);
    output_handler = v3->output_handler;
    if (!output_handler)
    {
      v61 = __nwlog_obj();
      *buf = 136446210;
      v73 = "__nw_protocol_finalize_output_frames";
      v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v61, 16, "%{public}s called with null protocol", buf, 12);
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

      v62 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v63 = os_log_type_enabled(v10, type);
      if (v62)
      {
        if (v63)
        {
          *buf = 136446466;
          v73 = "__nw_protocol_finalize_output_frames";
          v74 = 2082;
          v75 = v62;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v62);
        goto LABEL_53;
      }

      if (v63)
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
          goto LABEL_106;
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
LABEL_105:
        _os_log_impl(&dword_181A37000, v45, v46, v48, buf, 0x20u);
        goto LABEL_106;
      }

      if (v70 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (!os_log_type_enabled(v45, type))
        {
          goto LABEL_106;
        }

        v59 = output_handler->identifier->name;
        if (!v59)
        {
          v59 = "invalid";
        }

        *buf = 136446722;
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v59;
        v76 = 2048;
        v77 = output_handler;
        v48 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
        goto LABEL_105;
      }

      v54 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v55 = os_log_type_enabled(v45, type);
      if (!v54)
      {
        if (!v55)
        {
          goto LABEL_106;
        }

        v60 = output_handler->identifier->name;
        if (!v60)
        {
          v60 = "invalid";
        }

        *buf = 136446722;
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v60;
        v76 = 2048;
        v77 = output_handler;
        v48 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
        goto LABEL_105;
      }

      if (v55)
      {
        v56 = output_handler->identifier->name;
        if (!v56)
        {
          v56 = "invalid";
        }

        *buf = 136446978;
        v73 = "__nw_protocol_finalize_output_frames";
        v74 = 2082;
        v75 = v56;
        v76 = 2048;
        v77 = output_handler;
        v78 = 2082;
        v79 = v54;
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v54);
    }

LABEL_106:
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
  v73 = "nw_protocol_ipv4_finalize_output_frames";
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
        v73 = "nw_protocol_ipv4_finalize_output_frames";
        v53 = "%{public}s called with null protocol";
LABEL_112:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v70 == 1)
    {
      v57 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v58 = os_log_type_enabled(v51, type);
      if (v57)
      {
        if (v58)
        {
          *buf = 136446466;
          v73 = "nw_protocol_ipv4_finalize_output_frames";
          v74 = 2082;
          v75 = v57;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v57);
        goto LABEL_113;
      }

      if (v58)
      {
        *buf = 136446210;
        v73 = "nw_protocol_ipv4_finalize_output_frames";
        v53 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_112;
      }
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v73 = "nw_protocol_ipv4_finalize_output_frames";
        v53 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_112;
      }
    }
  }

LABEL_113:
  if (v50)
  {
    free(v50);
  }

  return 0;
}

uint64_t ___ZL39nw_protocol_ipv4_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  if (nw_frame_get_finalizer_context(a2) == *(a1 + 32))
  {
    v16 = (*(a1 + 40) + 8);
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    if (v17)
    {
      v16 = (v17 + 40);
    }

    *v16 = v18;
    *v18 = v17;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
  }

  else
  {
    nw_frame_unclaim(a2, v4, 0x14u, 0);
    v61 = 0;
    v5 = nw_frame_unclaimed_bytes(a2, &v61);
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = v5;
      v8 = *(v6 + 48);
      if (v8)
      {
        ++*(v8 + 232);
      }

      *(v5 + 12) = *(v6 + 56);
      *(v5 + 9) = *(v6 + 134);
      *(v5 + 8) = *(v6 + 135);
      *v5 = 69;
      *(v5 + 2) = bswap32(v61) >> 16;
      if (a2)
      {
        v9 = *(a2 + 186) & 3;
        *(v5 + 1) = v9;
        v10 = (v5 + 1);
        v11 = *(a2 + 184);
        if (v11)
        {
          goto LABEL_60;
        }

        goto LABEL_7;
      }

      v23 = __nwlog_obj();
      __buf = 136446210;
      v65 = "__nw_frame_get_ecn_flag";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null frame", &__buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (__nwlog_fault(v24, &type, &v62))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (!os_log_type_enabled(v25, type))
          {
            goto LABEL_41;
          }

          __buf = 136446210;
          v65 = "__nw_frame_get_ecn_flag";
          v27 = "%{public}s called with null frame";
LABEL_40:
          _os_log_impl(&dword_181A37000, v25, v26, v27, &__buf, 0xCu);
          goto LABEL_41;
        }

        if (v62 != 1)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (!os_log_type_enabled(v25, type))
          {
            goto LABEL_41;
          }

          __buf = 136446210;
          v65 = "__nw_frame_get_ecn_flag";
          v27 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_40;
        }

        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v29 = os_log_type_enabled(v25, type);
        if (!backtrace_string)
        {
          if (!v29)
          {
            goto LABEL_41;
          }

          __buf = 136446210;
          v65 = "__nw_frame_get_ecn_flag";
          v27 = "%{public}s called with null frame, no backtrace";
          goto LABEL_40;
        }

        if (v29)
        {
          __buf = 136446466;
          v65 = "__nw_frame_get_ecn_flag";
          v66 = 2082;
          v67 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_41:
      if (v24)
      {
        free(v24);
      }

      *(v7 + 1) = 0;
      v10 = (v7 + 1);
      v30 = __nwlog_obj();
      __buf = 136446210;
      v65 = "__nw_frame_get_dscp_value";
      LODWORD(v60) = 12;
      v31 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v30, 16, "%{public}s called with null frame", &__buf, v60);
      type = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (!__nwlog_fault(v31, &type, &v62))
      {
        goto LABEL_57;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (!os_log_type_enabled(v32, type))
        {
          goto LABEL_57;
        }

        __buf = 136446210;
        v65 = "__nw_frame_get_dscp_value";
        v34 = "%{public}s called with null frame";
      }

      else if (v62 == 1)
      {
        v35 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type;
        v36 = os_log_type_enabled(v32, type);
        if (v35)
        {
          if (v36)
          {
            __buf = 136446466;
            v65 = "__nw_frame_get_dscp_value";
            v66 = 2082;
            v67 = v35;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
          }

          free(v35);
          v10 = (v7 + 1);
          goto LABEL_57;
        }

        v10 = (v7 + 1);
        if (!v36)
        {
LABEL_57:
          if (v31)
          {
            free(v31);
          }

LABEL_7:
          v11 = *(*(a1 + 32) + 136);
          if (!v11)
          {
            if (a2)
            {
              goto LABEL_9;
            }

            goto LABEL_61;
          }

          v9 = *v10;
LABEL_60:
          *v10 = v9 | (4 * v11);
          if (a2)
          {
LABEL_9:
            v12 = *(a2 + 180);
            if (v12 == 2)
            {
              goto LABEL_12;
            }

            v13 = *(a1 + 32);
            if (v12)
            {
LABEL_78:
              v15 = 0;
              *(v7 + 4) = 0x400000;
              goto LABEL_79;
            }

LABEL_11:
            if ((*(v13 + 137) & 8) != 0)
            {
LABEL_12:
              *(v7 + 6) = 0;
              LOWORD(__buf) = 0;
              v14 = (BYTE4(a2) ^ BYTE6(a2) ^ BYTE2(a2) ^ a2);
              do
              {
                arc4random_buf(&__buf, 2uLL);
              }

              while (v14 == __buf);
              v15 = __buf ^ v14;
              *(v7 + 4) = v15;
              v13 = *(a1 + 32);
LABEL_79:
              *(v7 + 10) = 0;
              if ((*(v13 + 137) & 0x20) != 0)
              {
                if ((*(v13 + 137) & 0x40) != 0)
                {
                  *(v7 + 10) = nw_ipv4_checksum(v7);
                  v51 = *(v13 + 48);
                  if (v51)
                  {
                    *(v51 + 312) = vaddq_s64(*(v51 + 312), xmmword_182B08E90);
                  }

                  *(v13 + 137) &= ~0x40u;
                }

                else
                {
                  *(v7 + 10) = -16657;
                  *(v13 + 137) |= 0x40u;
                }

                goto LABEL_89;
              }

              if ((*(v13 + 137) & 0x10) == 0)
              {
                if ((v7 & 3) != 0)
                {
                  v44.i32[0] = *v7;
                  v44.i32[1] = *(v7 + 6);
                  v44.i64[1] = *(v7 + 12);
                  v45 = vaddlvq_u16(v44);
                  LODWORD(v46) = ((v45 + v15) >> 16) + (v45 + v15) + ((((v45 + v15) >> 16) + (v45 + v15)) >> 16);
                }

                else
                {
                  v47 = vaddlvq_u32(*v7);
                  v48 = ((v47 + *(v7 + 16)) >> 32) + (v47 + *(v7 + 16));
                  v46 = (((v48 >> 16) + v48) >> 16) + (WORD1(v48) + v48);
                  LOWORD(v46) = WORD1(v46) + v46;
                }

                *(v7 + 10) = ~v46;
                v49 = *(v13 + 48);
                if (v49)
                {
                  *(v49 + 312) = vaddq_s64(*(v49 + 312), xmmword_182B08E90);
                }

LABEL_89:
                ++**(a1 + 32);
                return 1;
              }

              if (a2)
              {
                if ((*(a2 + 204) & 0x100) != 0)
                {
                  *(a2 + 203) |= 4u;
                }

                goto LABEL_89;
              }

              v52 = __nwlog_obj();
              __buf = 136446210;
              v65 = "__nw_frame_add_internet_csum_flags";
              LODWORD(v59) = 12;
              v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null frame", &__buf, v59);
              type = OS_LOG_TYPE_ERROR;
              v62 = 0;
              if (__nwlog_fault(v53, &type, &v62))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v54 = __nwlog_obj();
                  v55 = type;
                  if (!os_log_type_enabled(v54, type))
                  {
                    goto LABEL_110;
                  }

                  __buf = 136446210;
                  v65 = "__nw_frame_add_internet_csum_flags";
                  v56 = "%{public}s called with null frame";
                  goto LABEL_109;
                }

                if (v62 != 1)
                {
                  v54 = __nwlog_obj();
                  v55 = type;
                  if (!os_log_type_enabled(v54, type))
                  {
                    goto LABEL_110;
                  }

                  __buf = 136446210;
                  v65 = "__nw_frame_add_internet_csum_flags";
                  v56 = "%{public}s called with null frame, backtrace limit exceeded";
                  goto LABEL_109;
                }

                v57 = __nw_create_backtrace_string();
                v54 = __nwlog_obj();
                v55 = type;
                v58 = os_log_type_enabled(v54, type);
                if (v57)
                {
                  if (v58)
                  {
                    __buf = 136446466;
                    v65 = "__nw_frame_add_internet_csum_flags";
                    v66 = 2082;
                    v67 = v57;
                    _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
                  }

                  free(v57);
                  goto LABEL_110;
                }

                if (v58)
                {
                  __buf = 136446210;
                  v65 = "__nw_frame_add_internet_csum_flags";
                  v56 = "%{public}s called with null frame, no backtrace";
LABEL_109:
                  _os_log_impl(&dword_181A37000, v54, v55, v56, &__buf, 0xCu);
                }
              }

LABEL_110:
              if (v53)
              {
                free(v53);
              }

              goto LABEL_89;
            }

            goto LABEL_78;
          }

LABEL_61:
          v37 = __nwlog_obj();
          __buf = 136446210;
          v65 = "__nw_frame_get_fragmentation";
          LODWORD(v59) = 12;
          v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null frame", &__buf, v59);
          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (__nwlog_fault(v38, &type, &v62))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v39 = __nwlog_obj();
              v40 = type;
              if (os_log_type_enabled(v39, type))
              {
                __buf = 136446210;
                v65 = "__nw_frame_get_fragmentation";
                v41 = "%{public}s called with null frame";
LABEL_74:
                _os_log_impl(&dword_181A37000, v39, v40, v41, &__buf, 0xCu);
              }
            }

            else if (v62 == 1)
            {
              v42 = __nw_create_backtrace_string();
              v39 = __nwlog_obj();
              v40 = type;
              v43 = os_log_type_enabled(v39, type);
              if (v42)
              {
                if (v43)
                {
                  __buf = 136446466;
                  v65 = "__nw_frame_get_fragmentation";
                  v66 = 2082;
                  v67 = v42;
                  _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null frame, dumping backtrace:%{public}s", &__buf, 0x16u);
                }

                free(v42);
                goto LABEL_75;
              }

              if (v43)
              {
                __buf = 136446210;
                v65 = "__nw_frame_get_fragmentation";
                v41 = "%{public}s called with null frame, no backtrace";
                goto LABEL_74;
              }
            }

            else
            {
              v39 = __nwlog_obj();
              v40 = type;
              if (os_log_type_enabled(v39, type))
              {
                __buf = 136446210;
                v65 = "__nw_frame_get_fragmentation";
                v41 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_74;
              }
            }
          }

LABEL_75:
          if (v38)
          {
            free(v38);
          }

          v13 = *(a1 + 32);
          goto LABEL_11;
        }

        __buf = 136446210;
        v65 = "__nw_frame_get_dscp_value";
        v34 = "%{public}s called with null frame, no backtrace";
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (!os_log_type_enabled(v32, type))
        {
          goto LABEL_57;
        }

        __buf = 136446210;
        v65 = "__nw_frame_get_dscp_value";
        v34 = "%{public}s called with null frame, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v32, v33, v34, &__buf, 0xCu);
      goto LABEL_57;
    }

    if (!v6 || (*(v6 + 137) & 1) == 0)
    {
      v19 = __nwlog_obj();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      v6 = *(a1 + 32);
      if (v20)
      {
        v21 = (v6 + 138);
        if (!v6)
        {
          v21 = "";
        }

        __buf = 136446978;
        v65 = "nw_protocol_ipv4_finalize_output_frames_block_invoke";
        v66 = 2082;
        v67 = v21;
        v22 = " ";
        if (!v6)
        {
          v22 = "";
        }

        v68 = 2080;
        v69 = v22;
        v70 = 2048;
        v71 = v6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s%p Frame is no longer valid", &__buf, 0x2Au);
        v6 = *(a1 + 32);
      }
    }

    *(v6 + 48) = 0;
  }

  return 1;
}

uint64_t nw_channel_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      handle[462] = handle[462] & 0xF9 | 2;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v29 = 0;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        *type = 0;
        nw_frame_array_get_frame_count(a2, 1, type);
      }

      *type = 0;
      v26 = type;
      tqh_first = a2->tqh_first;
      if (a2->tqh_first)
      {
        *(tqh_first + 5) = type;
        tqh_last = a2->tqh_last;
        *type = tqh_first;
        v26 = tqh_last;
        a2->tqh_first = 0;
        a2->tqh_last = &a2->tqh_first;
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v22 = ___ZL33nw_channel_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v23 = &unk_1E6A3D688;
      v24 = buf;
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
          v9 = &v26;
        }

        *v9 = v8;
        *v8 = v7;
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
      }

      while (((v22)(v21) & 1) != 0);
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1)
      {
        if (kdebug_is_enabled())
        {
          kdebug_trace();
        }
      }

      _Block_object_dispose(buf, 8);
      return 1;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_channel_finalize_output_frames";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v16, 16, "%{public}s called with null channel", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, type, &v27))
    {
      goto LABEL_53;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v15 = "%{public}s called with null channel";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v15 = "%{public}s called with null channel, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type[0];
    v20 = os_log_type_enabled(v13, type[0]);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v15 = "%{public}s called with null channel, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v19 = "%{public}s called with null channel, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_channel_finalize_output_frames";
  v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null channel_protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v12, type, &v27))
  {
    goto LABEL_53;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v27 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v15 = "%{public}s called with null channel_protocol, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type[0];
    v18 = os_log_type_enabled(v13, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_channel_finalize_output_frames";
        v15 = "%{public}s called with null channel_protocol, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      *&buf[4] = "nw_channel_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v19 = "%{public}s called with null channel_protocol, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
    }

LABEL_43:
    free(backtrace_string);
    goto LABEL_53;
  }

  v13 = __nwlog_obj();
  v14 = type[0];
  if (os_log_type_enabled(v13, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_channel_finalize_output_frames";
    v15 = "%{public}s called with null channel_protocol";
LABEL_52:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
  }

LABEL_53:
  if (v12)
  {
    free(v12);
  }

  return 0;
}

uint64_t ___ZL33nw_channel_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_channel_set_internet_checksum_handler(nw_frame *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  metadata = nw_frame_get_metadata(a1);
  if (metadata)
  {
    if ((*(metadata + 24) & 1) == 0)
    {
      return 45;
    }

    v8 = *metadata;

    return MEMORY[0x1EEE72DE0](v8, a2, a3, a4);
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_channel_set_internet_checksum_handler";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null frame_info", buf, 12);
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
        v20 = "nw_channel_set_internet_checksum_handler";
        v13 = "%{public}s called with null frame_info";
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v20 = "nw_channel_set_internet_checksum_handler";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null frame_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_channel_set_internet_checksum_handler";
        v13 = "%{public}s called with null frame_info, no backtrace";
        goto LABEL_20;
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_channel_set_internet_checksum_handler";
        v13 = "%{public}s called with null frame_info, backtrace limit exceeded";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

  return 22;
}

uint64_t nw_frame_get_finalizer_context(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 88);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_frame_get_finalizer_context";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null frame", buf, 12);
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
        v12 = "nw_frame_get_finalizer_context";
        v6 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
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
          v12 = "nw_frame_get_finalizer_context";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        v12 = "nw_frame_get_finalizer_context";
        v6 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_frame_get_finalizer_context";
        v6 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_channel_finalize_output_frame(nw_frame *a1, int a2, char *a3)
{
  v265 = *MEMORY[0x1E69E9840];
  metadata = nw_frame_get_metadata(a1);
  v7 = metadata;
  if (!metadata || !*metadata)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136446210;
    v260 = "nw_channel_finalize_output_frame";
    v11 = "%{public}s Frame has no packet";
LABEL_13:
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  if (!metadata[1])
  {
    if ((*(a3 + 230) & 0x1000) == 0)
    {
      goto LABEL_114;
    }

    if (!*(a3 + 17))
    {
      goto LABEL_114;
    }

    v20 = os_channel_packet_free();
    if (!v20)
    {
      goto LABEL_114;
    }

    if (!*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      goto LABEL_114;
    }

    if ((a3[462] & 8) != 0)
    {
LABEL_114:
      *v7 = 0;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136446210;
      v260 = "nw_channel_finalize_output_frame";
      v11 = "%{public}s Frame has no buflet";
      goto LABEL_13;
    }

    v21 = v20;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
      goto LABEL_114;
    }

    v206 = __nwlog_obj();
    *buf = 136446466;
    v260 = "nw_channel_finalize_output_frame";
    v261 = 1024;
    *v262 = v21;
    v207 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s os_channel_packet_free failed %{darwin.errno}d", buf, 18);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (__nwlog_fault(v207, &v263, type))
    {
      if (v263 == 17)
      {
        v208 = __nwlog_obj();
        v209 = v263;
        if (!os_log_type_enabled(v208, v263))
        {
          goto LABEL_522;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v21;
        v210 = "%{public}s os_channel_packet_free failed %{darwin.errno}d";
        goto LABEL_521;
      }

      if (LOBYTE(type[0]) != 1)
      {
        v208 = __nwlog_obj();
        v209 = v263;
        if (!os_log_type_enabled(v208, v263))
        {
          goto LABEL_522;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v21;
        v210 = "%{public}s os_channel_packet_free failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_521;
      }

      backtrace_string = __nw_create_backtrace_string();
      v208 = __nwlog_obj();
      v209 = v263;
      v216 = os_log_type_enabled(v208, v263);
      if (backtrace_string)
      {
        if (v216)
        {
          *buf = 136446722;
          v260 = "nw_channel_finalize_output_frame";
          v261 = 1024;
          *v262 = v21;
          *&v262[4] = 2082;
          *&v262[6] = backtrace_string;
          _os_log_impl(&dword_181A37000, v208, v209, "%{public}s os_channel_packet_free failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_522;
      }

      if (v216)
      {
        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v21;
        v210 = "%{public}s os_channel_packet_free failed %{darwin.errno}d, no backtrace";
LABEL_521:
        _os_log_impl(&dword_181A37000, v208, v209, v210, buf, 0x12u);
      }
    }

LABEL_522:
    if (v207)
    {
      free(v207);
    }

    goto LABEL_114;
  }

  if (!*(a3 + 17))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 136446210;
    v260 = "nw_channel_finalize_output_frame";
    v11 = "%{public}s Channel is defunct, cannot write frame";
    v12 = v23;
    v13 = OS_LOG_TYPE_DEBUG;
LABEL_14:
    _os_log_impl(&dword_181A37000, v12, v13, v11, buf, 0xCu);
    goto LABEL_15;
  }

  if (!a2)
  {
    v24 = os_buflet_set_data_length();
    if (!v24)
    {
      goto LABEL_91;
    }

    if (!*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

LABEL_91:
      LOWORD(v263) = 0;
      type[0] = 0;
      *v255 = 0;
      if (a1)
      {
        if ((*(a1 + 102) & 0x100) == 0 && (*(a1 + 102) & 0x200) == 0 || !g_channel_get_internet_checksum_handler)
        {
          goto LABEL_133;
        }

        internet_checksum_handler = g_channel_get_internet_checksum_handler(a1, &v263, type, v255);
        if (!internet_checksum_handler)
        {
          if (!(type[0] | v263 | *v255))
          {
            goto LABEL_133;
          }

          v39 = __nwlog_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            v260 = "nw_channel_finalize_output_frame";
            v261 = 1024;
            *v262 = v263;
            *&v262[4] = 1024;
            *&v262[6] = type[0];
            *&v262[10] = 1024;
            *&v262[12] = *v255;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s Bleaching partial checksum bits: is_partial=%d; start=%u; stuff=%u", buf, 0x1Eu);
          }

          v40 = 45;
          if ((*(a1 + 102) & 0x100) != 0)
          {
            v41 = g_channel_set_internet_checksum_handler;
            if (g_channel_set_internet_checksum_handler)
            {
              *(a1 + 203) |= 4u;
              v42 = (v41)(a1, 4, 0, 0);
              if (!v42)
              {
                goto LABEL_133;
              }

              v40 = v42;
            }
          }

          v43 = __nwlog_obj();
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_133;
          }

          *buf = 136447234;
          v260 = "nw_channel_finalize_output_frame";
          v261 = 1024;
          *v262 = v263;
          *&v262[4] = 1024;
          *&v262[6] = type[0];
          *&v262[10] = 1024;
          *&v262[12] = *v255;
          *&v262[16] = 1024;
          *&v262[18] = v40;
          v35 = "%{public}s __nw_frame_set_internet_checksum failed: is_partial=%d; start=%u; stuff=%u %{darwin.errno}d";
          v36 = v43;
          v37 = OS_LOG_TYPE_ERROR;
          v38 = 36;
          goto LABEL_99;
        }

        if (internet_checksum_handler == 45)
        {
          goto LABEL_133;
        }

        goto LABEL_97;
      }

      v171 = __nwlog_obj();
      *buf = 136446210;
      v260 = "__nw_frame_get_internet_checksum";
      LODWORD(v238) = 12;
      v172 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v171, 16, "%{public}s called with null frame", buf, v238);
      v254[0] = OS_LOG_TYPE_ERROR;
      v257 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v172, v254, &v257))
      {
        if (v254[0] == OS_LOG_TYPE_FAULT)
        {
          v173 = __nwlog_obj();
          v174 = v254[0];
          if (os_log_type_enabled(v173, v254[0]))
          {
            *buf = 136446210;
            v260 = "__nw_frame_get_internet_checksum";
            v175 = "%{public}s called with null frame";
LABEL_423:
            _os_log_impl(&dword_181A37000, v173, v174, v175, buf, 0xCu);
          }
        }

        else if (v257 == OS_LOG_TYPE_INFO)
        {
          v186 = __nw_create_backtrace_string();
          v173 = __nwlog_obj();
          v174 = v254[0];
          v187 = os_log_type_enabled(v173, v254[0]);
          if (v186)
          {
            if (v187)
            {
              *buf = 136446466;
              v260 = "__nw_frame_get_internet_checksum";
              v261 = 2082;
              *v262 = v186;
              _os_log_impl(&dword_181A37000, v173, v174, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v186);
            goto LABEL_424;
          }

          if (v187)
          {
            *buf = 136446210;
            v260 = "__nw_frame_get_internet_checksum";
            v175 = "%{public}s called with null frame, no backtrace";
            goto LABEL_423;
          }
        }

        else
        {
          v173 = __nwlog_obj();
          v174 = v254[0];
          if (os_log_type_enabled(v173, v254[0]))
          {
            *buf = 136446210;
            v260 = "__nw_frame_get_internet_checksum";
            v175 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_423;
          }
        }
      }

LABEL_424:
      if (v172)
      {
        free(v172);
      }

      internet_checksum_handler = 22;
LABEL_97:
      v33 = internet_checksum_handler;
      v34 = __nwlog_obj();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_133;
      }

      *buf = 136446466;
      v260 = "nw_channel_finalize_output_frame";
      v261 = 1024;
      *v262 = v33;
      v35 = "%{public}s __nw_frame_get_internet_checksum failed %{darwin.errno}d";
      v36 = v34;
      v37 = OS_LOG_TYPE_ERROR;
      v38 = 18;
LABEL_99:
      _os_log_impl(&dword_181A37000, v36, v37, v35, buf, v38);
      goto LABEL_133;
    }

    if ((a3[462] & 8) != 0)
    {
      goto LABEL_91;
    }

    v25 = v24;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
      goto LABEL_91;
    }

    v199 = __nwlog_obj();
    *buf = 136446466;
    v260 = "nw_channel_finalize_output_frame";
    v261 = 1024;
    *v262 = v25;
    v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s os_buflet_set_data_length failed %{darwin.errno}d", buf, 18);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (__nwlog_fault(v200, &v263, type))
    {
      if (v263 == 17)
      {
        v201 = __nwlog_obj();
        v202 = v263;
        if (!os_log_type_enabled(v201, v263))
        {
          goto LABEL_517;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v25;
        v203 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d";
        goto LABEL_516;
      }

      if (LOBYTE(type[0]) != 1)
      {
        v201 = __nwlog_obj();
        v202 = v263;
        if (!os_log_type_enabled(v201, v263))
        {
          goto LABEL_517;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v25;
        v203 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_516;
      }

      v213 = __nw_create_backtrace_string();
      v201 = __nwlog_obj();
      v202 = v263;
      v214 = os_log_type_enabled(v201, v263);
      if (v213)
      {
        if (v214)
        {
          *buf = 136446722;
          v260 = "nw_channel_finalize_output_frame";
          v261 = 1024;
          *v262 = v25;
          *&v262[4] = 2082;
          *&v262[6] = v213;
          _os_log_impl(&dword_181A37000, v201, v202, "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v213);
        goto LABEL_517;
      }

      if (v214)
      {
        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v25;
        v203 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, no backtrace";
LABEL_516:
        _os_log_impl(&dword_181A37000, v201, v202, v203, buf, 0x12u);
      }
    }

LABEL_517:
    if (v200)
    {
      free(v200);
    }

    goto LABEL_91;
  }

  nw_frame_effective_length(a1);
  v8 = os_buflet_set_data_length();
  if (!v8)
  {
    goto LABEL_64;
  }

  if (*(a3 + 17))
  {
    if ((a3[462] & 8) != 0)
    {
      goto LABEL_64;
    }

    v9 = v8;
    if (os_channel_is_defunct())
    {
      nw_channel_handle_defunct(a3);
      goto LABEL_64;
    }

    v194 = __nwlog_obj();
    *buf = 136446466;
    v260 = "nw_channel_finalize_output_frame";
    v261 = 1024;
    *v262 = v9;
    v195 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v194, 16, "%{public}s os_buflet_set_data_length failed %{darwin.errno}d", buf, 18);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (!__nwlog_fault(v195, &v263, type))
    {
      goto LABEL_512;
    }

    if (v263 == 17)
    {
      v196 = __nwlog_obj();
      v197 = v263;
      if (!os_log_type_enabled(v196, v263))
      {
        goto LABEL_512;
      }

      *buf = 136446466;
      v260 = "nw_channel_finalize_output_frame";
      v261 = 1024;
      *v262 = v9;
      v198 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d";
    }

    else if (LOBYTE(type[0]) == 1)
    {
      v211 = __nw_create_backtrace_string();
      v196 = __nwlog_obj();
      v197 = v263;
      v212 = os_log_type_enabled(v196, v263);
      if (v211)
      {
        if (v212)
        {
          *buf = 136446722;
          v260 = "nw_channel_finalize_output_frame";
          v261 = 1024;
          *v262 = v9;
          *&v262[4] = 2082;
          *&v262[6] = v211;
          _os_log_impl(&dword_181A37000, v196, v197, "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v211);
        goto LABEL_512;
      }

      if (!v212)
      {
LABEL_512:
        if (v195)
        {
          free(v195);
        }

        goto LABEL_64;
      }

      *buf = 136446466;
      v260 = "nw_channel_finalize_output_frame";
      v261 = 1024;
      *v262 = v9;
      v198 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      v196 = __nwlog_obj();
      v197 = v263;
      if (!os_log_type_enabled(v196, v263))
      {
        goto LABEL_512;
      }

      *buf = 136446466;
      v260 = "nw_channel_finalize_output_frame";
      v261 = 1024;
      *v262 = v9;
      v198 = "%{public}s os_buflet_set_data_length failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v196, v197, v198, buf, 0x12u);
    goto LABEL_512;
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

LABEL_64:
  if (!*(a3 + 17))
  {
    v170 = __nwlog_obj();
    if (!os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_133;
    }

    *buf = 136446210;
    v260 = "nw_channel_finalize_output_frame";
    v35 = "%{public}s Channel is newly defunct, cannot write frame";
    v36 = v170;
    v37 = OS_LOG_TYPE_DEBUG;
    v38 = 12;
    goto LABEL_99;
  }

  if (a1)
  {
    goto LABEL_66;
  }

  v176 = __nwlog_obj();
  *buf = 136446210;
  v260 = "__nw_frame_get_service_class";
  LODWORD(v238) = 12;
  v177 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v176, 16, "%{public}s called with null frame", buf, v238);
  LOBYTE(v263) = 16;
  LOBYTE(type[0]) = 0;
  if (__nwlog_fault(v177, &v263, type))
  {
    if (v263 == 17)
    {
      v178 = __nwlog_obj();
      v179 = v263;
      if (!os_log_type_enabled(v178, v263))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      v260 = "__nw_frame_get_service_class";
      v180 = "%{public}s called with null frame";
      goto LABEL_429;
    }

    if (LOBYTE(type[0]) != 1)
    {
      v178 = __nwlog_obj();
      v179 = v263;
      if (!os_log_type_enabled(v178, v263))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      v260 = "__nw_frame_get_service_class";
      v180 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_429;
    }

    v188 = __nw_create_backtrace_string();
    v178 = __nwlog_obj();
    v179 = v263;
    v189 = os_log_type_enabled(v178, v263);
    if (v188)
    {
      if (v189)
      {
        *buf = 136446466;
        v260 = "__nw_frame_get_service_class";
        v261 = 2082;
        *v262 = v188;
        _os_log_impl(&dword_181A37000, v178, v179, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v188);
      goto LABEL_430;
    }

    if (v189)
    {
      *buf = 136446210;
      v260 = "__nw_frame_get_service_class";
      v180 = "%{public}s called with null frame, no backtrace";
LABEL_429:
      _os_log_impl(&dword_181A37000, v178, v179, v180, buf, 0xCu);
    }
  }

LABEL_430:
  if (v177)
  {
    free(v177);
  }

LABEL_66:
  os_packet_set_service_class();
  if ((*(a3 + 230) & 0x400) != 0)
  {
    if (a1)
    {
      if ((*(a1 + 186) & 3) == 1)
      {
        os_packet_set_l4s_flag();
        if (!*(a1 + 20))
        {
          goto LABEL_71;
        }
      }

      else if (!*(a1 + 20))
      {
LABEL_71:
        if ((*(a1 + 186) & 4) != 0)
        {
          os_packet_set_transport_retransmit();
          if ((*(a1 + 186) & 8) == 0)
          {
            goto LABEL_73;
          }
        }

        else if ((*(a1 + 186) & 8) == 0)
        {
          goto LABEL_73;
        }

        os_packet_set_transport_last_packet();
LABEL_73:
        if ((*(a1 + 186) & 0x10) != 0)
        {
          os_packet_set_transport_traffic_background();
          if ((*(a1 + 186) & 0x20) == 0)
          {
LABEL_75:
            v26 = *(a1 + 102);
            if ((v26 & 0x20) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_359;
          }
        }

        else if ((*(a1 + 186) & 0x20) == 0)
        {
          goto LABEL_75;
        }

        os_packet_set_transport_traffic_realtime();
        v26 = *(a1 + 102);
        if ((v26 & 0x20) == 0)
        {
LABEL_76:
          if ((v26 & 0x10) == 0)
          {
            goto LABEL_79;
          }

LABEL_77:
          if (*(a1 + 19))
          {
            os_packet_set_expire_time();
            v26 = *(a1 + 102);
          }

LABEL_79:
          if ((v26 & 0x40) == 0)
          {
            if (*(a1 + 48))
            {
              os_packet_set_compression_generation_count();
            }

            goto LABEL_128;
          }

          v27 = __nwlog_obj();
          *buf = 136446210;
          v260 = "__nw_frame_get_compression_generation_count";
          LODWORD(v238) = 12;
          v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s Attempt to get generation-count on a chain-member", buf, v238);
          LOBYTE(v263) = 16;
          LOBYTE(type[0]) = 0;
          if (__nwlog_fault(v28, &v263, type))
          {
            if (v263 == 17)
            {
              v29 = __nwlog_obj();
              v30 = v263;
              if (!os_log_type_enabled(v29, v263))
              {
                goto LABEL_126;
              }

              *buf = 136446210;
              v260 = "__nw_frame_get_compression_generation_count";
              v31 = "%{public}s Attempt to get generation-count on a chain-member";
              goto LABEL_125;
            }

            if (LOBYTE(type[0]) != 1)
            {
              v29 = __nwlog_obj();
              v30 = v263;
              if (!os_log_type_enabled(v29, v263))
              {
                goto LABEL_126;
              }

              *buf = 136446210;
              v260 = "__nw_frame_get_compression_generation_count";
              v31 = "%{public}s Attempt to get generation-count on a chain-member, backtrace limit exceeded";
              goto LABEL_125;
            }

            v44 = __nw_create_backtrace_string();
            v29 = __nwlog_obj();
            v30 = v263;
            v45 = os_log_type_enabled(v29, v263);
            if (v44)
            {
              if (v45)
              {
                *buf = 136446466;
                v260 = "__nw_frame_get_compression_generation_count";
                v261 = 2082;
                *v262 = v44;
                _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Attempt to get generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v44);
              goto LABEL_126;
            }

            if (v45)
            {
              *buf = 136446210;
              v260 = "__nw_frame_get_compression_generation_count";
              v31 = "%{public}s Attempt to get generation-count on a chain-member, no backtrace";
LABEL_125:
              _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
            }
          }

LABEL_126:
          if (v28)
          {
            free(v28);
          }

LABEL_128:
          if (*(a1 + 206))
          {
            os_packet_set_keep_alive();
            if ((*(a1 + 206) & 2) == 0)
            {
LABEL_130:
              if (!*(a1 + 99))
              {
LABEL_132:
                os_packet_add_inet_csum_flags();
                goto LABEL_133;
              }

LABEL_131:
              os_packet_set_tso_flags();
              os_packet_set_protocol_segment_size();
              goto LABEL_132;
            }
          }

          else if ((*(a1 + 206) & 2) == 0)
          {
            goto LABEL_130;
          }

          os_packet_set_app_metadata();
          if (!*(a1 + 99))
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

LABEL_359:
        os_packet_set_packetid();
        v26 = *(a1 + 102);
        if ((v26 & 0x10) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      os_packet_set_tx_timestamp();
      goto LABEL_71;
    }

    v181 = __nwlog_obj();
    *buf = 136446210;
    v260 = "__nw_frame_get_ecn_flag";
    LODWORD(v238) = 12;
    v182 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v181, 16, "%{public}s called with null frame", buf, v238);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (__nwlog_fault(v182, &v263, type))
    {
      if (v263 == 17)
      {
        v183 = __nwlog_obj();
        v184 = v263;
        if (!os_log_type_enabled(v183, v263))
        {
          goto LABEL_452;
        }

        *buf = 136446210;
        v260 = "__nw_frame_get_ecn_flag";
        v185 = "%{public}s called with null frame";
LABEL_451:
        _os_log_impl(&dword_181A37000, v183, v184, v185, buf, 0xCu);
        goto LABEL_452;
      }

      if (LOBYTE(type[0]) != 1)
      {
        v183 = __nwlog_obj();
        v184 = v263;
        if (!os_log_type_enabled(v183, v263))
        {
          goto LABEL_452;
        }

        *buf = 136446210;
        v260 = "__nw_frame_get_ecn_flag";
        v185 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_451;
      }

      v192 = __nw_create_backtrace_string();
      v183 = __nwlog_obj();
      v184 = v263;
      v193 = os_log_type_enabled(v183, v263);
      if (!v192)
      {
        if (!v193)
        {
          goto LABEL_452;
        }

        *buf = 136446210;
        v260 = "__nw_frame_get_ecn_flag";
        v185 = "%{public}s called with null frame, no backtrace";
        goto LABEL_451;
      }

      if (v193)
      {
        *buf = 136446466;
        v260 = "__nw_frame_get_ecn_flag";
        v261 = 2082;
        *v262 = v192;
        _os_log_impl(&dword_181A37000, v183, v184, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v192);
    }

LABEL_452:
    if (v182)
    {
      free(v182);
    }

    v217 = __nwlog_obj();
    *buf = 136446210;
    v260 = "__nw_frame_get_departure_time";
    LODWORD(v239) = 12;
    v218 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v217, 16, "%{public}s called with null frame", buf, v239);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (__nwlog_fault(v218, &v263, type))
    {
      if (v263 == 17)
      {
        v219 = __nwlog_obj();
        v220 = v263;
        if (!os_log_type_enabled(v219, v263))
        {
          goto LABEL_468;
        }

        *buf = 136446210;
        v260 = "__nw_frame_get_departure_time";
        v221 = "%{public}s called with null frame";
LABEL_467:
        _os_log_impl(&dword_181A37000, v219, v220, v221, buf, 0xCu);
        goto LABEL_468;
      }

      if (LOBYTE(type[0]) != 1)
      {
        v219 = __nwlog_obj();
        v220 = v263;
        if (!os_log_type_enabled(v219, v263))
        {
          goto LABEL_468;
        }

        *buf = 136446210;
        v260 = "__nw_frame_get_departure_time";
        v221 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_467;
      }

      v222 = __nw_create_backtrace_string();
      v219 = __nwlog_obj();
      v220 = v263;
      v223 = os_log_type_enabled(v219, v263);
      if (!v222)
      {
        if (!v223)
        {
          goto LABEL_468;
        }

        *buf = 136446210;
        v260 = "__nw_frame_get_departure_time";
        v221 = "%{public}s called with null frame, no backtrace";
        goto LABEL_467;
      }

      if (v223)
      {
        *buf = 136446466;
        v260 = "__nw_frame_get_departure_time";
        v261 = 2082;
        *v262 = v222;
        _os_log_impl(&dword_181A37000, v219, v220, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v222);
    }

LABEL_468:
    if (v218)
    {
      free(v218);
    }

    v224 = __nwlog_obj();
    *buf = 136446210;
    v260 = "__nw_frame_is_retransmit";
    LODWORD(v240) = 12;
    v225 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v224, 16, "%{public}s called with null frame", buf, v240);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (__nwlog_fault(v225, &v263, type))
    {
      if (v263 == 17)
      {
        v226 = __nwlog_obj();
        v227 = v263;
        if (!os_log_type_enabled(v226, v263))
        {
          goto LABEL_484;
        }

        *buf = 136446210;
        v260 = "__nw_frame_is_retransmit";
        v228 = "%{public}s called with null frame";
LABEL_483:
        _os_log_impl(&dword_181A37000, v226, v227, v228, buf, 0xCu);
        goto LABEL_484;
      }

      if (LOBYTE(type[0]) != 1)
      {
        v226 = __nwlog_obj();
        v227 = v263;
        if (!os_log_type_enabled(v226, v263))
        {
          goto LABEL_484;
        }

        *buf = 136446210;
        v260 = "__nw_frame_is_retransmit";
        v228 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_483;
      }

      v229 = __nw_create_backtrace_string();
      v226 = __nwlog_obj();
      v227 = v263;
      v230 = os_log_type_enabled(v226, v263);
      if (!v229)
      {
        if (!v230)
        {
          goto LABEL_484;
        }

        *buf = 136446210;
        v260 = "__nw_frame_is_retransmit";
        v228 = "%{public}s called with null frame, no backtrace";
        goto LABEL_483;
      }

      if (v230)
      {
        *buf = 136446466;
        v260 = "__nw_frame_is_retransmit";
        v261 = 2082;
        *v262 = v229;
        _os_log_impl(&dword_181A37000, v226, v227, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v229);
    }

LABEL_484:
    if (v225)
    {
      free(v225);
    }

    v231 = __nwlog_obj();
    *buf = 136446210;
    v260 = "__nw_frame_is_last_frame";
    LODWORD(v241) = 12;
    v232 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v231, 16, "%{public}s called with null frame", buf, v241);
    LOBYTE(v263) = 16;
    LOBYTE(type[0]) = 0;
    if (!__nwlog_fault(v232, &v263, type))
    {
      goto LABEL_500;
    }

    if (v263 == 17)
    {
      v233 = __nwlog_obj();
      v234 = v263;
      if (!os_log_type_enabled(v233, v263))
      {
        goto LABEL_500;
      }

      *buf = 136446210;
      v260 = "__nw_frame_is_last_frame";
      v235 = "%{public}s called with null frame";
    }

    else if (LOBYTE(type[0]) == 1)
    {
      v236 = __nw_create_backtrace_string();
      v233 = __nwlog_obj();
      v234 = v263;
      v237 = os_log_type_enabled(v233, v263);
      if (v236)
      {
        if (v237)
        {
          *buf = 136446466;
          v260 = "__nw_frame_is_last_frame";
          v261 = 2082;
          *v262 = v236;
          _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v236);
        goto LABEL_500;
      }

      if (!v237)
      {
LABEL_500:
        if (v232)
        {
          free(v232);
        }

        goto LABEL_73;
      }

      *buf = 136446210;
      v260 = "__nw_frame_is_last_frame";
      v235 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v233 = __nwlog_obj();
      v234 = v263;
      if (!os_log_type_enabled(v233, v263))
      {
        goto LABEL_500;
      }

      *buf = 136446210;
      v260 = "__nw_frame_is_last_frame";
      v235 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v233, v234, v235, buf, 0xCu);
    goto LABEL_500;
  }

LABEL_133:
  if (*(a3 + 17))
  {
    v263 = 0;
    v264 = 0;
    os_packet_get_flow_uuid();
    node = nw_hash_table_get_node(*(a3 + 35), &v263, 16);
    if (node)
    {
      if ((*(a3 + 230) & 0x200) != 0 && (*(node + 153) & 3) == 0)
      {
        node[9] = 0;
        v47 = node + 9;
        v48 = *(a3 + 49);
        v47[1] = v48;
        *v48 = v47 - 5;
        *(a3 + 49) = v47;
        *(v47 + 81) |= 1u;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v49 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1042;
        *v262 = 16;
        *&v262[4] = 2098;
        *&v262[6] = &v263;
        _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s Node not found for flow id %{public,uuid_t}.16P", buf, 0x1Cu);
      }
    }

    os_packet_finalize();
    if ((*(a3 + 230) & 0x1000) != 0)
    {
      if (*(a3 + 27))
      {
        v50 = os_channel_slot_attach_packet();
        if (v50)
        {
          v51 = v50;
          if ((nw_channel_check_defunct(a3) & 1) == 0)
          {
            v52 = __nwlog_obj();
            *buf = 136446466;
            v260 = "nw_channel_finalize_output_frame";
            v261 = 1024;
            *v262 = v51;
            LODWORD(v238) = 18;
            v53 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d", buf, v238);
            LOBYTE(type[0]) = 16;
            v255[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v53, type, v255))
            {
              goto LABEL_507;
            }

            if (LOBYTE(type[0]) == 17)
            {
              v54 = __nwlog_obj();
              v55 = type[0];
              if (!os_log_type_enabled(v54, type[0]))
              {
                goto LABEL_507;
              }

              *buf = 136446466;
              v260 = "nw_channel_finalize_output_frame";
              v261 = 1024;
              *v262 = v51;
              v56 = "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d";
            }

            else if (v255[0] == OS_LOG_TYPE_INFO)
            {
              v204 = __nw_create_backtrace_string();
              v54 = __nwlog_obj();
              v55 = type[0];
              v205 = os_log_type_enabled(v54, type[0]);
              if (v204)
              {
                if (v205)
                {
                  *buf = 136446722;
                  v260 = "nw_channel_finalize_output_frame";
                  v261 = 1024;
                  *v262 = v51;
                  *&v262[4] = 2082;
                  *&v262[6] = v204;
                  _os_log_impl(&dword_181A37000, v54, v55, "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v204);
                goto LABEL_507;
              }

              if (!v205)
              {
LABEL_507:
                if (v53)
                {
                  free(v53);
                }

                goto LABEL_15;
              }

              *buf = 136446466;
              v260 = "nw_channel_finalize_output_frame";
              v261 = 1024;
              *v262 = v51;
              v56 = "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d, no backtrace";
            }

            else
            {
              v54 = __nwlog_obj();
              v55 = type[0];
              if (!os_log_type_enabled(v54, type[0]))
              {
                goto LABEL_507;
              }

              *buf = 136446466;
              v260 = "nw_channel_finalize_output_frame";
              v261 = 1024;
              *v262 = v51;
              v56 = "%{public}s os_channel_slot_attach_packet failed %{darwin.errno}d, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v54, v55, v56, buf, 0x12u);
            goto LABEL_507;
          }
        }
      }
    }
  }

LABEL_15:
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  v14 = (a1 + 16);
  v17 = a3 + 312;
  if (v15)
  {
    v17 = (v15 + 24);
  }

  *v17 = v16;
  *v16 = v15;
  *v14 = 0;
  *(a1 + 3) = 0;
  --*(a3 + 109);
  if (v7 && *v7)
  {
    *v7 = 0;
    v7[1] = 0;
  }

  *(a1 + 2) = 0;
  v18 = *(a3 + 37);
  *(a1 + 3) = v18;
  *v18 = a1;
  *(a3 + 37) = v14;
  if (*(a3 + 38))
  {
    return;
  }

  if (!*(a3 + 53) || !*(a3 + 27))
  {
    goto LABEL_25;
  }

  v19 = os_channel_advance_slot();
  if (v19)
  {
    v164 = v19;
    if ((nw_channel_check_defunct(a3) & 1) == 0)
    {
      v165 = __nwlog_obj();
      *buf = 136446466;
      v260 = "nw_channel_finalize_output_frame";
      v261 = 1024;
      *v262 = v164;
      LODWORD(v238) = 18;
      v166 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v165, 16, "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d", buf, v238);
      LOBYTE(v263) = 16;
      LOBYTE(type[0]) = 0;
      if (!__nwlog_fault(v166, &v263, type))
      {
        goto LABEL_436;
      }

      if (v263 == 17)
      {
        v167 = __nwlog_obj();
        v168 = v263;
        if (!os_log_type_enabled(v167, v263))
        {
          goto LABEL_436;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v164;
        v169 = "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d";
      }

      else if (LOBYTE(type[0]) == 1)
      {
        v190 = __nw_create_backtrace_string();
        v167 = __nwlog_obj();
        v168 = v263;
        v191 = os_log_type_enabled(v167, v263);
        if (v190)
        {
          if (v191)
          {
            *buf = 136446722;
            v260 = "nw_channel_finalize_output_frame";
            v261 = 1024;
            *v262 = v164;
            *&v262[4] = 2082;
            *&v262[6] = v190;
            _os_log_impl(&dword_181A37000, v167, v168, "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v190);
          goto LABEL_436;
        }

        if (!v191)
        {
LABEL_436:
          if (v166)
          {
            free(v166);
          }

          goto LABEL_24;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v164;
        v169 = "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d, no backtrace";
      }

      else
      {
        v167 = __nwlog_obj();
        v168 = v263;
        if (!os_log_type_enabled(v167, v263))
        {
          goto LABEL_436;
        }

        *buf = 136446466;
        v260 = "nw_channel_finalize_output_frame";
        v261 = 1024;
        *v262 = v164;
        v169 = "%{public}s os_channel_advance_slot(tx) %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v167, v168, v169, buf, 0x12u);
      goto LABEL_436;
    }
  }

LABEL_24:
  *(a3 + 53) = 0;
LABEL_25:
  if (*(a3 + 230) < 0)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    a3[462] |= 1u;
  }

  else
  {
    a3[462] &= ~1u;
    if (*(a3 + 17))
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (os_channel_sync())
      {
        nw_channel_check_defunct(a3);
      }
    }
  }

  if ((*(a3 + 230) & 0x200) == 0 || !*(a3 + 17) || !*(a3 + 27))
  {
    return;
  }

  *type = 0;
  *v254 = 0;
  *v255 = 0;
  v22 = *(a3 + 48);
  if (!v22)
  {
    goto LABEL_264;
  }

  do
  {
    v57 = v22;
    v22 = *(v22 + 40);
    v58 = *(v57 + 24);
    feedback = os_channel_flow_adv_get_feedback();
    switch(feedback)
    {
      case 0:
        v60 = *type;
        if (!*type)
        {
          if (!*v255 || !*v254)
          {
            break;
          }

          v60 = 0;
        }

        v263 = __PAIR64__(*v255, v60);
        LODWORD(v264) = *v254;
        if (!v58)
        {
          v94 = __nwlog_obj();
          *buf = 136446210;
          v260 = "__nw_protocol_notify";
          LODWORD(v238) = 12;
          v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s called with null protocol", buf, v238);
          v257 = OS_LOG_TYPE_ERROR;
          v256 = 0;
          if (!__nwlog_fault(v58, &v257, &v256))
          {
            goto LABEL_260;
          }

          if (v257 == OS_LOG_TYPE_FAULT)
          {
            v95 = __nwlog_obj();
            v96 = v257;
            if (os_log_type_enabled(v95, v257))
            {
              *buf = 136446210;
              v260 = "__nw_protocol_notify";
              v97 = v95;
              v98 = v96;
              v99 = "%{public}s called with null protocol";
              goto LABEL_253;
            }

LABEL_260:
            if (v58)
            {
              goto LABEL_149;
            }

            break;
          }

          if (v256 == 1)
          {
            v108 = __nw_create_backtrace_string();
            v109 = __nwlog_obj();
            v110 = v257;
            v111 = os_log_type_enabled(v109, v257);
            if (v108)
            {
              if (v111)
              {
                *buf = 136446466;
                v260 = "__nw_protocol_notify";
                v261 = 2082;
                *v262 = v108;
                _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_148;
            }

            if (!v111)
            {
              goto LABEL_260;
            }

            *buf = 136446210;
            v260 = "__nw_protocol_notify";
            v97 = v109;
            v98 = v110;
            v99 = "%{public}s called with null protocol, no backtrace";
          }

          else
          {
            v116 = __nwlog_obj();
            v117 = v257;
            if (!os_log_type_enabled(v116, v257))
            {
              goto LABEL_260;
            }

            *buf = 136446210;
            v260 = "__nw_protocol_notify";
            v97 = v116;
            v98 = v117;
            v99 = "%{public}s called with null protocol, backtrace limit exceeded";
          }

LABEL_253:
          v122 = 12;
LABEL_259:
          _os_log_impl(&dword_181A37000, v97, v98, v99, buf, v122);
          goto LABEL_260;
        }

        v61 = *(v58 + 40);
        v62 = v58;
        if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v62 = *(v58 + 64)) != 0)
        {
          v64 = *(v62 + 88);
          v63 = 0;
          if (v64)
          {
            *(v62 + 88) = v64 + 1;
          }
        }

        else
        {
          v63 = 1;
        }

        v65 = *(a3 + 8);
        v66 = a3 + 24;
        if (v65 == &nw_protocol_ref_counted_handle || v65 == &nw_protocol_ref_counted_additional_handle && (v66 = *(a3 + 11)) != 0)
        {
          v69 = *(v66 + 11);
          if (v69)
          {
            v67 = 0;
            *(v66 + 11) = v69 + 1;
            v68 = *(v58 + 24);
            if (!v68)
            {
              goto LABEL_197;
            }
          }

          else
          {
            v67 = 0;
            v68 = *(v58 + 24);
            if (!v68)
            {
              goto LABEL_197;
            }
          }
        }

        else
        {
          v67 = 1;
          v68 = *(v58 + 24);
          if (!v68)
          {
            goto LABEL_197;
          }
        }

        v70 = *(v68 + 160);
        if (v70)
        {
          v70(v58, a3 + 24, 20, &v263, 12);
          goto LABEL_174;
        }

LABEL_197:
        v82 = __nwlog_obj();
        v83 = *(v58 + 16);
        if (!v83)
        {
          v83 = "invalid";
        }

        *buf = 136446722;
        v260 = "__nw_protocol_notify";
        v261 = 2082;
        *v262 = v83;
        *&v262[8] = 2048;
        *&v262[10] = v58;
        LODWORD(v238) = 32;
        v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s protocol %{public}s (%p) has invalid notify callback", buf, v238);
        v257 = OS_LOG_TYPE_ERROR;
        v256 = 0;
        v248 = v84;
        if (!__nwlog_fault(v84, &v257, &v256))
        {
          goto LABEL_245;
        }

        if (v257 == OS_LOG_TYPE_FAULT)
        {
          v85 = __nwlog_obj();
          v86 = v257;
          if (!os_log_type_enabled(v85, v257))
          {
            goto LABEL_245;
          }

          v87 = *(v58 + 16);
          if (!v87)
          {
            v87 = "invalid";
          }

          *buf = 136446722;
          v260 = "__nw_protocol_notify";
          v261 = 2082;
          *v262 = v87;
          *&v262[8] = 2048;
          *&v262[10] = v58;
          v88 = v85;
          v89 = v86;
          v90 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
        }

        else if (v256 == 1)
        {
          v100 = __nw_create_backtrace_string();
          v101 = __nwlog_obj();
          v244 = v257;
          v102 = os_log_type_enabled(v101, v257);
          if (v100)
          {
            if (v102)
            {
              v103 = *(v58 + 16);
              if (!v103)
              {
                v103 = "invalid";
              }

              *buf = 136446978;
              v260 = "__nw_protocol_notify";
              v261 = 2082;
              *v262 = v103;
              *&v262[8] = 2048;
              *&v262[10] = v58;
              *&v262[18] = 2082;
              *&v262[20] = v100;
              _os_log_impl(&dword_181A37000, v101, v244, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v100);
            goto LABEL_245;
          }

          if (!v102)
          {
LABEL_245:
            if (v248)
            {
              free(v248);
            }

LABEL_174:
            if ((v67 & 1) == 0)
            {
              v71 = *(a3 + 8);
              v72 = a3 + 24;
              if (v71 == &nw_protocol_ref_counted_handle || v71 == &nw_protocol_ref_counted_additional_handle && (v72 = *(a3 + 11)) != 0)
              {
                v73 = *(v72 + 11);
                if (v73)
                {
                  v74 = v73 - 1;
                  *(v72 + 11) = v74;
                  if (!v74)
                  {
                    v75 = *(v72 + 8);
                    if (v75)
                    {
                      *(v72 + 8) = 0;
                      v75[2](v75);
                      _Block_release(v75);
                    }

                    if (v72[72])
                    {
                      v76 = *(v72 + 8);
                      if (v76)
                      {
                        _Block_release(v76);
                      }
                    }

                    free(v72);
                  }
                }
              }
            }

            if ((v63 & 1) == 0)
            {
              v77 = *(v58 + 40);
              if (v77 == &nw_protocol_ref_counted_handle || v77 == &nw_protocol_ref_counted_additional_handle && (v58 = *(v58 + 64)) != 0)
              {
                v78 = *(v58 + 88);
                if (v78)
                {
                  v79 = v78 - 1;
                  *(v58 + 88) = v79;
                  if (!v79)
                  {
                    v80 = *(v58 + 64);
                    if (v80)
                    {
                      *(v58 + 64) = 0;
                      v80[2](v80);
                      _Block_release(v80);
                    }

                    if (*(v58 + 72))
                    {
                      v81 = *(v58 + 64);
                      if (v81)
                      {
                        _Block_release(v81);
                      }
                    }

LABEL_149:
                    free(v58);
                    break;
                  }
                }
              }
            }

            break;
          }

          v118 = *(v58 + 16);
          if (!v118)
          {
            v118 = "invalid";
          }

          *buf = 136446722;
          v260 = "__nw_protocol_notify";
          v261 = 2082;
          *v262 = v118;
          *&v262[8] = 2048;
          *&v262[10] = v58;
          v88 = v101;
          v89 = v244;
          v90 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
        }

        else
        {
          v112 = __nwlog_obj();
          v113 = v257;
          if (!os_log_type_enabled(v112, v257))
          {
            goto LABEL_245;
          }

          v114 = *(v58 + 16);
          if (!v114)
          {
            v114 = "invalid";
          }

          *buf = 136446722;
          v260 = "__nw_protocol_notify";
          v261 = 2082;
          *v262 = v114;
          *&v262[8] = 2048;
          *&v262[10] = v58;
          v88 = v112;
          v89 = v113;
          v90 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0x20u);
        goto LABEL_245;
      case 6:
        if (gLogDatapath == 1)
        {
          v91 = __nwlog_obj();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v260 = "nw_channel_flows_adv_get_feedback";
            v261 = 2082;
            *v262 = v57 + 84;
            v92 = v91;
            v93 = "%{public}s Channel doesn't support flow-advisory %{public}s";
LABEL_237:
            _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, v93, buf, 0x16u);
          }
        }

        break;
      case 22:
        v104 = __nwlog_obj();
        *buf = 136446722;
        v105 = v57 + 84;
        v260 = "nw_channel_flows_adv_get_feedback";
        v261 = 2082;
        *v262 = v105;
        *&v262[8] = 1024;
        *&v262[10] = 22;
        LODWORD(v238) = 28;
        v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v104, 16, "%{public}s Ring is not TX %{public}s %{darwin.errno}d", buf, v238);
        LOBYTE(v263) = 16;
        v257 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v58, &v263, &v257))
        {
          goto LABEL_260;
        }

        if (v263 == 17)
        {
          v106 = __nwlog_obj();
          v107 = v263;
          if (!os_log_type_enabled(v106, v263))
          {
            goto LABEL_260;
          }

          *buf = 136446722;
          v260 = "nw_channel_flows_adv_get_feedback";
          v261 = 2082;
          *v262 = v105;
          *&v262[8] = 1024;
          *&v262[10] = 22;
          v97 = v106;
          v98 = v107;
          v99 = "%{public}s Ring is not TX %{public}s %{darwin.errno}d";
        }

        else if (v257 == OS_LOG_TYPE_INFO)
        {
          v108 = __nw_create_backtrace_string();
          v119 = __nwlog_obj();
          v120 = v263;
          v121 = os_log_type_enabled(v119, v263);
          if (v108)
          {
            if (v121)
            {
              *buf = 136446978;
              v260 = "nw_channel_flows_adv_get_feedback";
              v261 = 2082;
              *v262 = v105;
              *&v262[8] = 1024;
              *&v262[10] = 22;
              *&v262[14] = 2082;
              *&v262[16] = v108;
              _os_log_impl(&dword_181A37000, v119, v120, "%{public}s Ring is not TX %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
            }

LABEL_148:
            free(v108);
            if (!v58)
            {
              break;
            }

            goto LABEL_149;
          }

          if (!v121)
          {
            goto LABEL_260;
          }

          *buf = 136446722;
          v260 = "nw_channel_flows_adv_get_feedback";
          v261 = 2082;
          *v262 = v105;
          *&v262[8] = 1024;
          *&v262[10] = 22;
          v97 = v119;
          v98 = v120;
          v99 = "%{public}s Ring is not TX %{public}s %{darwin.errno}d, no backtrace";
        }

        else
        {
          v123 = __nwlog_obj();
          v124 = v263;
          if (!os_log_type_enabled(v123, v263))
          {
            goto LABEL_260;
          }

          *buf = 136446722;
          v260 = "nw_channel_flows_adv_get_feedback";
          v261 = 2082;
          *v262 = v105;
          *&v262[8] = 1024;
          *&v262[10] = 22;
          v97 = v123;
          v98 = v124;
          v99 = "%{public}s Ring is not TX %{public}s %{darwin.errno}d, backtrace limit exceeded";
        }

        v122 = 28;
        goto LABEL_259;
      default:
        if (feedback == 2 && gLogDatapath == 1)
        {
          v115 = __nwlog_obj();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v260 = "nw_channel_flows_adv_get_feedback";
            v261 = 2082;
            *v262 = v57 + 84;
            v92 = v115;
            v93 = "%{public}s Flow advisory is not not valid for flow id %{public}s";
            goto LABEL_237;
          }
        }

        break;
    }
  }

  while (v22);
  if (*(a3 + 17) && *(a3 + 27))
  {
LABEL_264:
    v125 = *(a3 + 48);
    if (v125)
    {
      do
      {
        v126 = *(v125 + 40);
        v127 = *(v125 + 24);
        v128 = os_channel_flow_admissible();
        if (v128)
        {
          v132 = v128;
          if (v128 == 55)
          {
            if (nw_link_set_flow_control_status(*(v125 + 72), 1))
            {
              v133 = __nwlog_obj();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
              {
                *buf = 136446466;
                v260 = "nw_channel_check_flows_controlled";
                v261 = 2082;
                *v262 = v125 + 84;
                _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_INFO, "%{public}s Flow controlled for flow id %{public}s", buf, 0x16u);
              }
            }

            if (v127)
            {
              v134 = *(v127 + 24);
              if (v134)
              {
                v135 = *(v125 + 72);
                if (*(v134 + 104) && v135 != 0)
                {
                  nw::share(&v263, v127);
                  nw::share(type, a3 + 3);
                  v137 = *(v127 + 24);
                  if (v137)
                  {
                    v138 = *(v137 + 104);
                    if (v138)
                    {
                      v138(v127, a3 + 24, v135);
                      goto LABEL_285;
                    }
                  }

                  v149 = __nwlog_obj();
                  v150 = *(v127 + 16);
                  if (!v150)
                  {
                    v150 = "invalid";
                  }

                  *buf = 136446722;
                  v260 = "__nw_protocol_link_state";
                  v261 = 2082;
                  *v262 = v150;
                  *&v262[8] = 2048;
                  *&v262[10] = v127;
                  LODWORD(v238) = 32;
                  v151 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v149, 16, "%{public}s protocol %{public}s (%p) has invalid link_state callback", buf, v238);
                  v255[0] = OS_LOG_TYPE_ERROR;
                  v254[0] = OS_LOG_TYPE_DEFAULT;
                  v253 = v151;
                  if (!__nwlog_fault(v151, v255, v254))
                  {
                    goto LABEL_333;
                  }

                  if (v255[0] == OS_LOG_TYPE_FAULT)
                  {
                    v152 = __nwlog_obj();
                    v249 = v255[0];
                    if (os_log_type_enabled(v152, v255[0]))
                    {
                      v153 = *(v127 + 16);
                      if (!v153)
                      {
                        v153 = "invalid";
                      }

                      *buf = 136446722;
                      v260 = "__nw_protocol_link_state";
                      v261 = 2082;
                      *v262 = v153;
                      *&v262[8] = 2048;
                      *&v262[10] = v127;
                      v154 = v152;
                      v155 = v249;
                      v156 = "%{public}s protocol %{public}s (%p) has invalid link_state callback";
                      goto LABEL_332;
                    }

                    goto LABEL_333;
                  }

                  if (v254[0] != OS_LOG_TYPE_INFO)
                  {
                    v161 = __nwlog_obj();
                    v251 = v255[0];
                    if (!os_log_type_enabled(v161, v255[0]))
                    {
                      goto LABEL_333;
                    }

                    v162 = *(v127 + 16);
                    if (!v162)
                    {
                      v162 = "invalid";
                    }

                    *buf = 136446722;
                    v260 = "__nw_protocol_link_state";
                    v261 = 2082;
                    *v262 = v162;
                    *&v262[8] = 2048;
                    *&v262[10] = v127;
                    v154 = v161;
                    v155 = v251;
                    v156 = "%{public}s protocol %{public}s (%p) has invalid link_state callback, backtrace limit exceeded";
                    goto LABEL_332;
                  }

                  v157 = __nw_create_backtrace_string();
                  v250 = __nwlog_obj();
                  v247 = v255[0];
                  v158 = os_log_type_enabled(v250, v255[0]);
                  if (v157)
                  {
                    if (v158)
                    {
                      v159 = *(v127 + 16);
                      if (!v159)
                      {
                        v159 = "invalid";
                      }

                      *buf = 136446978;
                      v260 = "__nw_protocol_link_state";
                      v261 = 2082;
                      *v262 = v159;
                      *&v262[8] = 2048;
                      *&v262[10] = v127;
                      *&v262[18] = 2082;
                      *&v262[20] = v157;
                      _os_log_impl(&dword_181A37000, v250, v247, "%{public}s protocol %{public}s (%p) has invalid link_state callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v157);
                    goto LABEL_333;
                  }

                  if (v158)
                  {
                    v163 = *(v127 + 16);
                    if (!v163)
                    {
                      v163 = "invalid";
                    }

                    *buf = 136446722;
                    v260 = "__nw_protocol_link_state";
                    v261 = 2082;
                    *v262 = v163;
                    *&v262[8] = 2048;
                    *&v262[10] = v127;
                    v154 = v250;
                    v155 = v247;
                    v156 = "%{public}s protocol %{public}s (%p) has invalid link_state callback, no backtrace";
LABEL_332:
                    _os_log_impl(&dword_181A37000, v154, v155, v156, buf, 0x20u);
                  }

LABEL_333:
                  if (v253)
                  {
                    free(v253);
                  }

LABEL_285:
                  nw::retained_ptr<nw_protocol *>::~retained_ptr(type);
                  nw::retained_ptr<nw_protocol *>::~retained_ptr(&v263);
                }
              }
            }

            *(v125 + 56) = 0;
            v139 = *(a3 + 51);
            *(v125 + 64) = v139;
            *v139 = v125;
            *(a3 + 51) = v125 + 56;
            *(v125 + 121) |= 2u;
            goto LABEL_268;
          }

          if (v128 == 2)
          {
            if (gLogDatapath == 1)
            {
              v160 = __nwlog_obj();
              if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v260 = "nw_channel_check_flows_controlled";
                v261 = 2082;
                *v262 = v125 + 84;
                _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_DEBUG, "%{public}s Flow(%{public}s) is no longer present, disconnecting", buf, 0x16u);
              }
            }

            nw_channel_disconnect_flow(a3, v125);
          }

          else if ((nw_channel_check_defunct(a3) & 1) == 0)
          {
            v140 = __nwlog_obj();
            *buf = 136446722;
            v260 = "nw_channel_check_flows_controlled";
            v261 = 2082;
            *v262 = v125 + 84;
            *&v262[8] = 1024;
            *&v262[10] = v132;
            LODWORD(v238) = 28;
            v141 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v140, 16, "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d", buf, v238);
            LOBYTE(v263) = 16;
            LOBYTE(type[0]) = 0;
            v252 = v141;
            if (!__nwlog_fault(v141, &v263, type))
            {
              goto LABEL_305;
            }

            if (v263 == 17)
            {
              v142 = __nwlog_obj();
              v245 = v263;
              if (os_log_type_enabled(v142, v263))
              {
                *buf = 136446722;
                v260 = "nw_channel_check_flows_controlled";
                v261 = 2082;
                *v262 = v125 + 84;
                *&v262[8] = 1024;
                *&v262[10] = v132;
                v143 = v142;
                v144 = v245;
                v145 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d";
                goto LABEL_304;
              }

              goto LABEL_305;
            }

            if (LOBYTE(type[0]) == 1)
            {
              v146 = __nw_create_backtrace_string();
              log = __nwlog_obj();
              v243 = v263;
              v147 = os_log_type_enabled(log, v263);
              if (v146)
              {
                if (v147)
                {
                  *buf = 136446978;
                  v260 = "nw_channel_check_flows_controlled";
                  v261 = 2082;
                  *v262 = v125 + 84;
                  *&v262[8] = 1024;
                  *&v262[10] = v132;
                  *&v262[14] = 2082;
                  *&v262[16] = v146;
                  _os_log_impl(&dword_181A37000, log, v243, "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                }

                free(v146);
                goto LABEL_305;
              }

              if (!v147)
              {
LABEL_305:
                if (v252)
                {
                  free(v252);
                }

                goto LABEL_268;
              }

              *buf = 136446722;
              v260 = "nw_channel_check_flows_controlled";
              v261 = 2082;
              *v262 = v125 + 84;
              *&v262[8] = 1024;
              *&v262[10] = v132;
              v143 = log;
              v144 = v243;
              v145 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, no backtrace";
            }

            else
            {
              v148 = __nwlog_obj();
              v246 = v263;
              if (!os_log_type_enabled(v148, v263))
              {
                goto LABEL_305;
              }

              *buf = 136446722;
              v260 = "nw_channel_check_flows_controlled";
              v261 = 2082;
              *v262 = v125 + 84;
              *&v262[8] = 1024;
              *&v262[10] = v132;
              v143 = v148;
              v144 = v246;
              v145 = "%{public}s Flow admissible check failed %{public}s %{darwin.errno}d, backtrace limit exceeded";
            }

LABEL_304:
            _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0x1Cu);
            goto LABEL_305;
          }
        }

LABEL_268:
        if (*(v125 + 121))
        {
          v129 = *(v125 + 40);
          v130 = *(v125 + 48);
          v131 = (v129 + 48);
          if (!v129)
          {
            v131 = a3 + 392;
          }

          *v131 = v130;
          *v130 = v129;
          *(v125 + 121) &= ~1u;
        }

        v125 = v126;
      }

      while (v126);
    }
  }
}

uint64_t nw_frame_effective_length(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 52);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "__nw_frame_effective_length";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null frame", buf, 12);
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
        v12 = "__nw_frame_effective_length";
        v6 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v9 == 1)
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
          v12 = "__nw_frame_effective_length";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        v12 = "__nw_frame_effective_length";
        v6 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "__nw_frame_effective_length";
        v6 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

id *nw_write_request_copy_next_incomplete_request(void *a1, char a2, int a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_write_request_copy_next_incomplete_request";
    v12 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v11, 16, "%{public}s called with null request", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v12, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_write_request_copy_next_incomplete_request";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v22 = "nw_write_request_copy_next_incomplete_request";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_write_request_copy_next_incomplete_request";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_write_request_copy_next_incomplete_request";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_39:
    if (v12)
    {
      free(v12);
    }

    v9 = 0;
    goto LABEL_15;
  }

  if (a3 && (a2 & 1) == 0)
  {
    while ((v7[16] & 2) != 0 || !v7[7] && !v7[9] || nw_content_context_is_blocked_by_antecedents(v7[8]) || v7[8] != v8)
    {
      v9 = v7[1];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    while ((v7[16] & 2) != 0 || !v7[7] && !v7[9] || nw_content_context_is_blocked_by_antecedents(v7[8]))
    {
      v9 = v7[1];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  if (v7[7] || v7[9])
  {
    v7 = v7;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

LABEL_15:
  return v9;
}

uint64_t nw_flow_service_writes(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2, nw_flow_protocol *a3)
{
  v365 = *MEMORY[0x1E69E9840];
  v310 = a1;
  v314 = a2;
  if (!a3)
  {
    v281 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_flow_service_writes";
    v282 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v281, 16, "%{public}s called with null flow_protocol", buf, 12);

    LOBYTE(applier[0]) = 16;
    LOBYTE(foreach_block[0]) = 0;
    if (__nwlog_fault(v282, applier, foreach_block))
    {
      if (LOBYTE(applier[0]) == 17)
      {
        v283 = __nwlog_obj();
        v284 = applier[0];
        if (os_log_type_enabled(v283, applier[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_service_writes";
          _os_log_impl(&dword_181A37000, v283, v284, "%{public}s called with null flow_protocol", buf, 0xCu);
        }
      }

      else if (LOBYTE(foreach_block[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v283 = __nwlog_obj();
        v286 = applier[0];
        v287 = os_log_type_enabled(v283, applier[0]);
        if (backtrace_string)
        {
          if (v287)
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_service_writes";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v283, v286, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_373;
        }

        if (v287)
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_service_writes";
          _os_log_impl(&dword_181A37000, v283, v286, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v283 = __nwlog_obj();
        v288 = applier[0];
        if (os_log_type_enabled(v283, applier[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_flow_service_writes";
          _os_log_impl(&dword_181A37000, v283, v288, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_373:
    if (v282)
    {
      free(v282);
    }

    goto LABEL_324;
  }

  output_handler = a3->protocol.output_handler;
  if (output_handler)
  {
    v6 = *(a3 + 166);
    if ((v6 & 8) == 0)
    {
      *(a3 + 166) = v6 | 8;
      v338 = 0;
      get_message_properties = output_handler->callbacks->get_message_properties;
      if (get_message_properties)
      {
        get_message_properties(output_handler, a3, &v338);
      }

      v308 = output_handler;
      v317 = a3;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      while (1)
      {
        write_requests = v317->write_requests;
        initial_write_requests = v317->initial_write_requests;
        if (write_requests)
        {
          if (!initial_write_requests)
          {
            goto LABEL_13;
          }
        }

        else if (!initial_write_requests)
        {
          goto LABEL_355;
        }

        v10 = nw_write_request_copy_next_incomplete_request(v317->initial_write_requests, (v338 & 0x200000000) != 0, (*(v317 + 166) >> 1) & 1, v317->last_output_context);
        if (v10)
        {
          goto LABEL_14;
        }

        write_requests = v317->write_requests;
        if (!write_requests)
        {
          goto LABEL_325;
        }

LABEL_13:
        v10 = nw_write_request_copy_next_incomplete_request(write_requests, (v338 & 0x200000000) != 0, (*(v317 + 166) >> 1) & 1, v317->last_output_context);
        if (!v10)
        {
LABEL_325:
          if (nw_flow_handle_send_complete(v310, v314, v317))
          {
LABEL_326:

            goto LABEL_355;
          }

          v252 = nw_write_request_list_prune(v317->initial_write_requests);
          v253 = v317->initial_write_requests;
          v317->initial_write_requests = v252;

          v254 = nw_write_request_list_prune(v317->write_requests);
          v255 = v317->write_requests;
          v317->write_requests = v254;

          minimize_logging = nw_endpoint_handler_get_minimize_logging(v310);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v310);
          if (minimize_logging)
          {
            if (logging_disabled)
            {
              goto LABEL_326;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v246 = gconnectionLogObj;
            if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
            {
              id_string = nw_endpoint_handler_get_id_string(v310);
              v297 = nw_endpoint_handler_dry_run_string(v310);
              v298 = nw_endpoint_handler_copy_endpoint(v310);
              logging_description = nw_endpoint_get_logging_description(v298);
              v300 = nw_endpoint_handler_state_string(v310);
              v301 = nw_endpoint_handler_mode_string(v310);
              v302 = nw_endpoint_handler_copy_current_path(v310);
              *buf = 136447746;
              *&buf[4] = "nw_flow_service_writes";
              *&buf[12] = 2082;
              *&buf[14] = id_string;
              *&buf[22] = 2082;
              v357 = v297;
              *v358 = 2082;
              *&v358[2] = logging_description;
              *&v358[10] = 2082;
              *&v358[12] = v300;
              *&v358[20] = 2082;
              *&v358[22] = v301;
              v359 = 2114;
              v360 = v302;
              _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No unblocked write requests, stopping servicing writes", buf, 0x48u);
            }
          }

          else
          {
            if (logging_disabled)
            {
              goto LABEL_326;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v246 = gconnectionLogObj;
            if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
            {
              v258 = nw_endpoint_handler_get_id_string(v310);
              v259 = nw_endpoint_handler_dry_run_string(v310);
              v260 = nw_endpoint_handler_copy_endpoint(v310);
              v261 = nw_endpoint_get_logging_description(v260);
              v262 = nw_endpoint_handler_state_string(v310);
              v263 = nw_endpoint_handler_mode_string(v310);
              v264 = nw_endpoint_handler_copy_current_path(v310);
              *buf = 136447746;
              *&buf[4] = "nw_flow_service_writes";
              *&buf[12] = 2082;
              *&buf[14] = v258;
              *&buf[22] = 2082;
              v357 = v259;
              *v358 = 2082;
              *&v358[2] = v261;
              *&v358[10] = 2082;
              *&v358[12] = v262;
              *&v358[20] = 2082;
              *&v358[22] = v263;
              v359 = 2114;
              v360 = v264;
              _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No unblocked write requests, stopping servicing writes", buf, 0x48u);
            }
          }

          v312 = 0;
          goto LABEL_353;
        }

LABEL_14:
        v11 = v10;
        if ((*(v317 + 166) & 0x800) != 0)
        {
          v12 = v10;
          v13 = *(v12 + 128);
          v312 = v12;

          if ((v13 & 4) == 0)
          {
            v244 = nw_endpoint_handler_get_minimize_logging(v310);
            v245 = nw_endpoint_handler_get_logging_disabled(v310);
            if (v244)
            {
              if ((v245 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v246 = gconnectionLogObj;
                if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
                {
                  v289 = nw_endpoint_handler_get_id_string(v310);
                  v290 = nw_endpoint_handler_dry_run_string(v310);
                  v291 = nw_endpoint_handler_copy_endpoint(v310);
                  v292 = nw_endpoint_get_logging_description(v291);
                  v293 = nw_endpoint_handler_state_string(v310);
                  v294 = nw_endpoint_handler_mode_string(v310);
                  v295 = nw_endpoint_handler_copy_current_path(v310);
                  *buf = 136447746;
                  *&buf[4] = "nw_flow_service_writes";
                  *&buf[12] = 2082;
                  *&buf[14] = v289;
                  *&buf[22] = 2082;
                  v357 = v290;
                  *v358 = 2082;
                  *&v358[2] = v292;
                  *&v358[10] = 2082;
                  *&v358[12] = v293;
                  *&v358[20] = 2082;
                  *&v358[22] = v294;
                  v359 = 2114;
                  v360 = v295;
                  _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping servicing writes", buf, 0x48u);
                }

LABEL_353:
              }
            }

            else if ((v245 & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v246 = gconnectionLogObj;
              if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
              {
                v247 = nw_endpoint_handler_get_id_string(v310);
                v248 = nw_endpoint_handler_dry_run_string(v310);
                v249 = nw_endpoint_handler_copy_endpoint(v310);
                v250 = v249;
                if (v249)
                {
                  v251 = _nw_endpoint_get_logging_description(v249);
                }

                else
                {
                  v251 = "<NULL>";
                }

                v277 = nw_endpoint_handler_state_string(v310);
                v278 = nw_endpoint_handler_mode_string(v310);
                v279 = nw_endpoint_handler_copy_current_path(v310);
                *buf = 136447746;
                *&buf[4] = "nw_flow_service_writes";
                *&buf[12] = 2082;
                *&buf[14] = v247;
                *&buf[22] = 2082;
                v357 = v248;
                *v358 = 2082;
                *&v358[2] = v251;
                *&v358[10] = 2082;
                *&v358[12] = v277;
                *&v358[20] = 2082;
                *&v358[22] = v278;
                v359 = 2114;
                v360 = v279;
                _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping servicing writes", buf, 0x48u);
              }

              goto LABEL_353;
            }

LABEL_354:

            goto LABEL_355;
          }
        }

        v14 = v11;
        v15 = v14[7];
        v312 = v14;
        v16 = v14[9];
        if (!v15)
        {
          if (!v16)
          {

            if ((v338 & 0x100000000) != 0)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          }

LABEL_20:
          v18 = v312;
          size = v312[12];
          goto LABEL_21;
        }

        if (v16)
        {
          goto LABEL_20;
        }

        size = dispatch_data_get_size(v15);
        v18 = v312;
LABEL_21:
        if (size <= v18[14])
        {
          v19 = 0;
        }

        else
        {
          v19 = v18[14];
        }

        v20 = size - v19;
        if (size - v19 >= 0xFFFFFFFF)
        {
          v20 = -1;
          if ((v338 & 0x100000000) == 0)
          {
            v21 = -1;
            goto LABEL_43;
          }

LABEL_30:
          if (v338 && v20 > v338)
          {
            v21 = 1;
            goto LABEL_43;
          }

LABEL_37:
          v27 = v317->initial_write_requests;
          if (!v27)
          {
            v27 = v317->write_requests;
          }

          v21 = nw_write_request_remaining_datagram_count(v27);
          if (v21)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        if ((v338 & 0x100000000) != 0)
        {
          goto LABEL_30;
        }

        if (v20)
        {
          v21 = -1;
          goto LABEL_43;
        }

LABEL_34:
        v22 = v312;
        v23 = v22[8];

        if (v23)
        {
          v24 = v22;
          v25 = v22[8];

          has_metadata = nw_content_context_has_metadata(v25);
          v21 = -1;
          if (has_metadata)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v21 = -1;
        }

LABEL_42:
        if (nw_flow_handle_send_complete(v310, v314, v317))
        {
          goto LABEL_354;
        }

LABEL_43:
        v336 = 0;
        v337 = &v336;
        v309 = v317->last_error;
        v28 = (v308->callbacks->get_output_frames)();
        if (v21 == -1)
        {
          if ((gLogDatapath & 1) == 0)
          {
            goto LABEL_51;
          }

          v29 = v28;
          v200 = nw_endpoint_handler_get_logging_disabled(v310);
          v28 = v29;
          if (v200)
          {
            goto LABEL_51;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v201 = nw_endpoint_handler_get_id_string(v310);
            v202 = nw_endpoint_handler_dry_run_string(v310);
            v203 = nw_endpoint_handler_copy_endpoint(v310);
            v204 = nw_endpoint_get_logging_description(v203);
            v205 = nw_endpoint_handler_state_string(v310);
            v206 = nw_endpoint_handler_mode_string(v310);
            v207 = nw_endpoint_handler_copy_current_path(v310);
            *buf = 136448002;
            *&buf[4] = "nw_flow_service_writes";
            *&buf[12] = 2082;
            *&buf[14] = v201;
            *&buf[22] = 2082;
            v357 = v202;
            *v358 = 2082;
            *&v358[2] = v204;
            *&v358[10] = 2082;
            *&v358[12] = v205;
            *&v358[20] = 2082;
            *&v358[22] = v206;
            v359 = 2114;
            v360 = v207;
            v361 = 1024;
            v362 = v29;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler has %u frames to write", buf, 0x4Eu);
          }
        }

        else
        {
          if (!gLogDatapath)
          {
            goto LABEL_51;
          }

          v29 = v28;
          v30 = nw_endpoint_handler_get_logging_disabled(v310);
          v28 = v29;
          if (v30)
          {
            goto LABEL_51;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = nw_endpoint_handler_get_id_string(v310);
            v33 = nw_endpoint_handler_dry_run_string(v310);
            v34 = nw_endpoint_handler_copy_endpoint(v310);
            v35 = nw_endpoint_get_logging_description(v34);
            v36 = nw_endpoint_handler_state_string(v310);
            v37 = nw_endpoint_handler_mode_string(v310);
            v38 = nw_endpoint_handler_copy_current_path(v310);
            *buf = 136448258;
            *&buf[4] = "nw_flow_service_writes";
            *&buf[12] = 2082;
            *&buf[14] = v32;
            *&buf[22] = 2082;
            v357 = v33;
            *v358 = 2082;
            *&v358[2] = v35;
            *&v358[10] = 2082;
            *&v358[12] = v36;
            *&v358[20] = 2082;
            *&v358[22] = v37;
            v359 = 2114;
            v360 = v38;
            v361 = 1024;
            v362 = v29;
            v363 = 1024;
            LODWORD(v364) = v21;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler has %u frames to write, request wants %u frames", buf, 0x54u);
          }
        }

        v28 = v29;
LABEL_51:
        if (!v336 || !v28)
        {
          if (v28)
          {
            v233 = v28;
            if ((nw_endpoint_handler_get_logging_disabled(v310) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v234 = gconnectionLogObj;
              if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
              {
                v235 = nw_endpoint_handler_get_id_string(v310);
                v236 = nw_endpoint_handler_dry_run_string(v310);
                v237 = nw_endpoint_handler_copy_endpoint(v310);
                v238 = v237;
                if (v237)
                {
                  v239 = _nw_endpoint_get_logging_description(v237);
                }

                else
                {
                  v239 = "<NULL>";
                }

                v265 = nw_endpoint_handler_state_string(v310);
                v266 = nw_endpoint_handler_mode_string(v310);
                v267 = nw_endpoint_handler_copy_current_path(v310);
                *buf = 136448002;
                *&buf[4] = "nw_flow_service_writes";
                *&buf[12] = 2082;
                *&buf[14] = v235;
                *&buf[22] = 2082;
                v357 = v236;
                *v358 = 2082;
                *&v358[2] = v239;
                *&v358[10] = 2082;
                *&v358[12] = v265;
                *&v358[20] = 2082;
                *&v358[22] = v266;
                v359 = 2114;
                v360 = v267;
                v361 = 1024;
                v362 = v233;
                _os_log_impl(&dword_181A37000, v234, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output handler reported %u frames to write, but array is empty", buf, 0x4Eu);
              }
            }
          }

          last_error = v317->last_error;
          if (last_error)
          {
            if (v309 != last_error)
            {
              v269 = last_error;
              v270 = *(v269 + 2) == 1;

              if (v270)
              {
                error_code = nw_error_get_error_code(v317->last_error);
                v272 = __nwlog_obj();
                if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_flow_service_writes";
                  *&buf[12] = 2114;
                  *&buf[14] = v312;
                  *&buf[22] = 1024;
                  LODWORD(v357) = error_code;
                  _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_ERROR, "%{public}s Failing write request %{public}@ %{darwin.errno}d", buf, 0x1Cu);
                }

                nw_write_request_fail(v312, error_code);
                v273 = nw_write_request_list_prune(v317->initial_write_requests);
                v274 = v317->initial_write_requests;
                v317->initial_write_requests = v273;

                v275 = nw_write_request_list_prune(v317->write_requests);
                v276 = v317->write_requests;
                v317->write_requests = v275;
              }
            }
          }

          goto LABEL_354;
        }

        v311 = v314;
        handle = v317->protocol.handle;
        v313 = *(handle + 160);
        v349 = 0;
        v350 = &v349;
        v348 = 0;
        v40 = nw_flow_copy_write_request(handle, &v338, &v348);
        v41 = v40;
        v334 = handle;
        if (v40 && (v42 = nw_write_request_copy_data(v40)) != 0)
        {
          data = v42;
          v318 = dispatch_data_get_size(v42);
        }

        else
        {
          v318 = 0;
          data = 0;
        }

        v43 = v336;
        v44 = v43;
        v45 = 0;
        if (!v41 || !v43)
        {
          v112 = v43;
          goto LABEL_243;
        }

        v46 = 0;
        v47 = 0;
        while (1)
        {
          v48 = *(v44 + 32);
          if (!v48 && !*(v44 + 40))
          {
            v48 = 0;
          }

          v332 = v48;
          v49 = v41;
          v50 = v49[9];

          if (v50)
          {
            v51 = *(v44 + 52);
            if (v51)
            {
              v52 = *(v44 + 56) + *(v44 + 60);
              v53 = v49;
              v54 = 0;
              v55 = (v51 - v52);
              if (v55 && v49[9])
              {
                v56 = v53;
                v57 = v53[14];
                if (v53[12] - v57 >= v55)
                {
                  v58 = v55;
                }

                else
                {
                  v58 = v53[12] - v57;
                }

                v355 = 0;
                alloc = dispatch_data_create_alloc();
                v351 = 0;
                v352 = &v351;
                v353 = 0x2020000000;
                v354 = 0;
                v60 = v49[9];
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __nw_write_request_copy_data_from_fd_block_invoke;
                v357 = &unk_1E6A31440;
                *v358 = &v351;
                *&v358[8] = v355;
                *&v358[16] = v58;
                nw_fd_wrapper_get_fd(v60, buf);
                v61 = v352[3];
                if (v61)
                {
                  if (v61 == -1)
                  {
                    posix_error = nw_error_create_posix_error(**(StatusReg + 8));
                    nw_write_request_report(v56, 0, posix_error);

                    v54 = 0;
                  }

                  else
                  {
                    if (v61 >= v55)
                    {
                      subrange = alloc;
                    }

                    else
                    {
                      subrange = dispatch_data_create_subrange(alloc, 0, v61);
                    }

                    v54 = subrange;
                  }
                }

                else
                {
                  v54 = 0;
                  *(v56 + 128) |= 0x10u;
                }

                _Block_object_dispose(&v351, 8);
              }
            }

            else
            {
              v63 = v49;
              v54 = 0;
            }

            v65 = v49;
            v66 = v49[9];
            if (v65[7])
            {
              if (!v66)
              {
                v67 = v65;
                v68 = dispatch_data_get_size(v65[7]);
                v65 = v67;
                goto LABEL_86;
              }

LABEL_85:
              v68 = v65[12];
LABEL_86:
              v69 = v65[14];
              if (v68 <= v69)
              {
                v69 = 0;
              }

              v318 = v68 - v69;
            }

            else
            {
              if (v66)
              {
                goto LABEL_85;
              }

              v318 = 0;
            }

            v46 = 0;
            goto LABEL_90;
          }

          v54 = data;
LABEL_90:
          if ((*(v334 + 332) & 0x800) != 0)
          {
            v70 = v49;
            v71 = *(v70 + 128);

            if ((v71 & 4) == 0)
            {
              v119 = nw_endpoint_handler_get_minimize_logging(v313);
              v120 = nw_endpoint_handler_get_logging_disabled(v313);
              if (v119)
              {
                if ((v120 & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  datac = gconnectionLogObj;
                  if (os_log_type_enabled(datac, OS_LOG_TYPE_DEBUG))
                  {
                    v208 = nw_endpoint_handler_get_id_string(v313);
                    v209 = nw_endpoint_handler_dry_run_string(v313);
                    v210 = nw_endpoint_handler_copy_endpoint(v313);
                    v211 = nw_endpoint_get_logging_description(v210);
                    v323 = nw_endpoint_handler_state_string(v313);
                    v212 = nw_endpoint_handler_mode_string(v313);
                    v213 = nw_endpoint_handler_copy_current_path(v313);
                    *buf = 136447746;
                    *&buf[4] = "nw_flow_prepare_output_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v208;
                    *&buf[22] = 2082;
                    v357 = v209;
                    *v358 = 2082;
                    *&v358[2] = v211;
                    *&v358[10] = 2082;
                    v121 = datac;
                    *&v358[12] = v323;
                    *&v358[20] = 2082;
                    *&v358[22] = v212;
                    v359 = 2114;
                    v360 = v213;
                    _os_log_impl(&dword_181A37000, datac, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping preparing frames", buf, 0x48u);
                  }

                  else
                  {
                    v121 = datac;
                  }

LABEL_224:
                }
              }

              else if ((v120 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v121 = gconnectionLogObj;
                if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                {
                  v122 = nw_endpoint_handler_get_id_string(v313);
                  v123 = nw_endpoint_handler_dry_run_string(v313);
                  v124 = nw_endpoint_handler_copy_endpoint(v313);
                  v125 = v124;
                  v320 = v122;
                  if (v124)
                  {
                    v126 = _nw_endpoint_get_logging_description(v124);
                  }

                  else
                  {
                    v126 = "<NULL>";
                  }

                  datad = v121;
                  v149 = nw_endpoint_handler_state_string(v313);
                  v150 = nw_endpoint_handler_mode_string(v313);
                  v151 = nw_endpoint_handler_copy_current_path(v313);
                  *buf = 136447746;
                  *&buf[4] = "nw_flow_prepare_output_frames";
                  *&buf[12] = 2082;
                  *&buf[14] = v320;
                  *&buf[22] = 2082;
                  v357 = v123;
                  *v358 = 2082;
                  *&v358[2] = v126;
                  *&v358[10] = 2082;
                  *&v358[12] = v149;
                  v121 = datad;
                  *&v358[20] = 2082;
                  *&v358[22] = v150;
                  v359 = 2114;
                  v360 = v151;
                  _os_log_impl(&dword_181A37000, datad, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Write request is not idempotent, stopping preparing frames", buf, 0x48u);
                }

                goto LABEL_224;
              }

              v45 = v47;
              v148 = v332;
              goto LABEL_239;
            }
          }

          v70 = v49;
          v45 = v70[8];

          if (v45)
          {
            if (nw_content_context_has_metadata(v45))
            {
              v72 = nw_parameters_copy_default_protocol_stack(*(v334 + 176));
              v73 = nw_protocol_stack_copy_transport_protocol(v72);
              v74 = nw_protocol_options_copy_definition(v73);
              v75 = nw_content_context_copy_protocol_metadata(v45, v74);
              v76 = *(v334 + 232);
              *(v334 + 232) = v75;
            }

            else
            {
              v72 = *(v334 + 232);
              *(v334 + 232) = 0;
            }

            *(v334 + 332) |= 2u;
          }

          v351 = 0;
          v352 = &v351;
          v353 = 0x2020000000;
          LODWORD(v354) = 0;
          if ((*(v44 + 204) & 2) != 0)
          {
            v80 = *(v44 + 52);
            if (v80)
            {
              v81 = v80 - (*(v44 + 56) + *(v44 + 60));
              if ((v338 & 0x100000000) == 0)
              {
LABEL_111:
                if (!nw_frame_set_external_data(v44, v54, &v354))
                {
                  v138 = nw_endpoint_handler_get_logging_disabled(v313);
                  if ((v138 & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v132 = gconnectionLogObj;
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                    {
                      v139 = nw_endpoint_handler_get_id_string(v313);
                      v140 = nw_endpoint_handler_dry_run_string(v313);
                      v141 = nw_endpoint_handler_copy_endpoint(v313);
                      v142 = v141;
                      v321 = v139;
                      if (v141)
                      {
                        v143 = _nw_endpoint_get_logging_description(v141);
                      }

                      else
                      {
                        v143 = "<NULL>";
                      }

                      dataf = v132;
                      v157 = nw_endpoint_handler_state_string(v313);
                      v158 = nw_endpoint_handler_mode_string(v313);
                      v159 = nw_endpoint_handler_copy_current_path(v313);
                      *buf = 136447746;
                      *&buf[4] = "nw_flow_prepare_output_frames";
                      *&buf[12] = 2082;
                      *&buf[14] = v321;
                      *&buf[22] = 2082;
                      v357 = v140;
                      *v358 = 2082;
                      *&v358[2] = v143;
                      *&v358[10] = 2082;
                      *&v358[12] = v157;
                      v132 = dataf;
                      *&v358[20] = 2082;
                      *&v358[22] = v158;
                      v359 = 2114;
                      v360 = v159;
                      _os_log_impl(&dword_181A37000, dataf, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Data cannot be set in frame", buf, 0x48u);
                    }

                    v156 = 12;
                    goto LABEL_236;
                  }

                  v156 = 12;
LABEL_237:
                  v148 = v332;
                  nw_write_request_fail(v70, v156);
                  goto LABEL_238;
                }

                goto LABEL_124;
              }
            }

            else
            {
              v81 = 0;
              if ((v338 & 0x100000000) == 0)
              {
                goto LABEL_111;
              }
            }

            if (v318 > v81)
            {
              if (nw_endpoint_handler_get_logging_disabled(v313))
              {
                v156 = 40;
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v132 = gconnectionLogObj;
                if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                {
                  v133 = nw_endpoint_handler_get_id_string(v313);
                  v134 = nw_endpoint_handler_dry_run_string(v313);
                  v135 = nw_endpoint_handler_copy_endpoint(v313);
                  v136 = v135;
                  log = v134;
                  if (v135)
                  {
                    v137 = _nw_endpoint_get_logging_description(v135);
                  }

                  else
                  {
                    v137 = "<NULL>";
                  }

                  datae = v132;
                  v154 = nw_endpoint_handler_state_string(v313);
                  v304 = nw_endpoint_handler_mode_string(v313);
                  v155 = nw_endpoint_handler_copy_current_path(v313);
                  *buf = 136448258;
                  *&buf[4] = "nw_flow_prepare_output_frames";
                  *&buf[12] = 2082;
                  *&buf[14] = v133;
                  *&buf[22] = 2082;
                  v357 = log;
                  *v358 = 2082;
                  *&v358[2] = v137;
                  *&v358[10] = 2082;
                  *&v358[12] = v154;
                  *&v358[20] = 2082;
                  *&v358[22] = v304;
                  v359 = 2114;
                  v360 = v155;
                  v361 = 1024;
                  v362 = v81;
                  v363 = 2048;
                  v132 = datae;
                  v364 = v318;
                  _os_log_impl(&dword_181A37000, datae, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Data won't fit in frame (%u < %zu)", buf, 0x58u);
                }

                v156 = 40;
LABEL_236:
              }

              goto LABEL_237;
            }

            goto LABEL_111;
          }

          if (!*(v44 + 112) || (*(v44 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v44, *(v44 + 88)))
          {
            v79 = 0;
            v82 = 0;
            if ((v338 & 0x100000000) != 0)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v78 = *(v44 + 52);
            v77 = *(v44 + 56);
            if (v78)
            {
              v79 = v78 - (v77 + *(v44 + 60));
            }

            else
            {
              v79 = 0;
            }

            v82 = *(v44 + 112) + v77;
            if ((v338 & 0x100000000) != 0)
            {
LABEL_115:
              if (v318 > v79)
              {
                if ((nw_endpoint_handler_get_logging_disabled(v313) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v127 = gconnectionLogObj;
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                  {
                    v128 = nw_endpoint_handler_get_id_string(v313);
                    datab = nw_endpoint_handler_dry_run_string(v313);
                    v129 = nw_endpoint_handler_copy_endpoint(v313);
                    v130 = v129;
                    v315 = v128;
                    if (v129)
                    {
                      v131 = _nw_endpoint_get_logging_description(v129);
                    }

                    else
                    {
                      v131 = "<NULL>";
                    }

                    v303 = nw_endpoint_handler_state_string(v313);
                    loga = v127;
                    v152 = nw_endpoint_handler_mode_string(v313);
                    v153 = nw_endpoint_handler_copy_current_path(v313);
                    *buf = 136448258;
                    *&buf[4] = "nw_flow_prepare_output_frames";
                    *&buf[12] = 2082;
                    *&buf[14] = v315;
                    *&buf[22] = 2082;
                    v357 = datab;
                    *v358 = 2082;
                    *&v358[2] = v131;
                    *&v358[10] = 2082;
                    *&v358[12] = v303;
                    *&v358[20] = 2082;
                    *&v358[22] = v152;
                    v127 = loga;
                    v359 = 2114;
                    v360 = v153;
                    v361 = 1024;
                    v362 = v79;
                    v363 = 2048;
                    v364 = v318;
                    _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Data won't fit in frame (%u < %zu)", buf, 0x58u);
                  }
                }

                v148 = v332;
                nw_write_request_fail(v70, 40);
                goto LABEL_238;
              }
            }
          }

          v84 = v70;
          v85 = v49[9];

          if (v85)
          {
            if (!v54)
            {
              goto LABEL_124;
            }

            v86 = dispatch_data_get_size(v54);
LABEL_123:
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke;
            applier[3] = &unk_1E6A2DC08;
            v347 = v86;
            applier[4] = &v351;
            applier[5] = v46;
            applier[6] = v82;
            dispatch_data_apply(v54, applier);
            goto LABEL_124;
          }

          if (v79 >= v318 - v46)
          {
            v86 = v318 - v46;
          }

          else
          {
            v86 = v79;
          }

          if (v54)
          {
            goto LABEL_123;
          }

LABEL_124:
          if (!nw_frame_claim(v44, v83, *(v352 + 6), 0))
          {
            break;
          }

          v87 = v348;
          v88 = *(v352 + 6);
          v89 = (v88 + v46);
          if (v332 && v318 > v89)
          {
            if (nw_write_request_consume_bytes(v70, *(v352 + 6)))
            {
              v90 = 0;
            }

            else
            {
              v90 = 2;
            }

            *(v334 + 332) = *(v334 + 332) & 0xFFFD | v90;
            v41 = v70;
            v91 = *(v41 + 128);

            v46 += v88;
            data = v54;
          }

          else
          {
            if (nw_write_request_consume_bytes(v70, *(v352 + 6)))
            {
              v92 = 0;
            }

            else
            {
              v92 = 2;
            }

            *(v334 + 332) = *(v334 + 332) & 0xFFFD | v92;
            v93 = v70;
            v91 = *(v93 + 128);

            v41 = nw_flow_copy_write_request(v334, &v338, &v348);
            os_unfair_lock_lock(&v314->lock);
            pending_write_bytes = v314->pending_write_bytes;
            v95 = pending_write_bytes >= v89;
            v96 = pending_write_bytes - v89;
            if (!v95)
            {
              v96 = 0;
            }

            v314->pending_write_bytes = v96;
            os_unfair_lock_unlock(&v314->lock);
            if (v41)
            {
              data = nw_write_request_copy_data(v41);

              if (data)
              {
                v318 = dispatch_data_get_size(data);
                v46 = 0;
              }

              else
              {
                v46 = 0;
                v318 = 0;
                data = 0;
              }
            }

            else
            {

              v46 = 0;
              v318 = 0;
              data = 0;
              v41 = 0;
            }
          }

          v314->sent_application_byte_count += *(v352 + 6);
          if (v45)
          {
            v97 = v45;
            v98 = v97;
            if (v97 == &__block_literal_global_10_44685 || v97 == &__block_literal_global_8_44676 || v97 == &__block_literal_global_6_44667 || v97 == &__block_literal_global_44658 || (BYTE6(v97[14].isa) & 8) == 0)
            {
            }

            else
            {

              nw_frame_set_packet_id(v44, &v98[1]);
            }
          }

          if (v87)
          {
            *(v44 + 204) |= 0x10u;
            *(v44 + 152) = v87;
            if (!v45)
            {
              goto LABEL_159;
            }
          }

          else if (!v45)
          {
            goto LABEL_159;
          }

          v99 = v45;
          if (v99 == &__block_literal_global_10_44685 || v99 == &__block_literal_global_8_44676 || v99 == &__block_literal_global_6_44667 || v99 == &__block_literal_global_44658 || (HIBYTE(v99[14].isa) & 1) == 0)
          {
          }

          else
          {
            v100 = BYTE4(v99[14].isa);
            v101 = BYTE5(v99[14].isa);

            v102 = *(v44 + 206);
            if ((v102 & 2) == 0)
            {
              *(v44 + 201) = v100;
              *(v44 + 202) = v101;
              *(v44 + 206) = v102 | 2;
            }
          }

LABEL_159:
          if (v91)
          {
            v103 = (*(v334 + 332) & 2) == 0;
            if (!v45)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v103 = 0;
            if (!v45)
            {
              goto LABEL_165;
            }
          }

          if (nw_content_context_has_metadata(v45))
          {
            foreach_block[0] = MEMORY[0x1E69E9820];
            foreach_block[1] = 3221225472;
            foreach_block[2] = ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke_86;
            foreach_block[3] = &unk_1E6A2DC30;
            v344 = v44;
            v345 = v103;
            nw_content_context_foreach_protocol_metadata(v45, foreach_block);

            goto LABEL_167;
          }

LABEL_165:
          if (!v103)
          {
            goto LABEL_174;
          }

          nw_frame_set_metadata(v44, 0, 0, 1);
          if (!v45)
          {
            goto LABEL_174;
          }

LABEL_167:
          if (v103)
          {
            v104 = v45;
            if (v104 == &__block_literal_global_44658 || v104 == &__block_literal_global_10_44685)
            {

              goto LABEL_174;
            }

            if (v104 == &__block_literal_global_6_44667 || v104 == &__block_literal_global_8_44676)
            {

LABEL_173:
              *(v44 + 186) |= 0x80u;
              goto LABEL_174;
            }

            v105 = (BYTE6(v104[14].isa) & 1) == 0;

            if (!v105)
            {
              goto LABEL_173;
            }
          }

LABEL_174:
          nw_frame_collapse(v44);
          nw_frame_unclaim(v44, v106, *(v352 + 6), 0);
          v107 = *(v44 + 32);
          v108 = *(v44 + 40);
          v109 = v107 + 5;
          if (!v107)
          {
            v109 = &v337;
          }

          *v109 = v108;
          *v108 = v107;
          v110 = v350;
          *(v44 + 32) = 0;
          *(v44 + 40) = v110;
          *v110 = v44;
          v350 = (v44 + 32);

          _Block_object_dispose(&v351, 8);
          if (v41)
          {
            v111 = v332 != 0;
          }

          else
          {
            v111 = 0;
          }

          v47 = v45;
          v112 = v332;
          v44 = v332;
          if (!v111)
          {
            goto LABEL_240;
          }
        }

        if ((nw_endpoint_handler_get_logging_disabled(v313) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v113 = gconnectionLogObj;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            v114 = nw_endpoint_handler_get_id_string(v313);
            v115 = nw_endpoint_handler_dry_run_string(v313);
            v116 = nw_endpoint_handler_copy_endpoint(v313);
            v117 = v116;
            v319 = v115;
            dataa = v114;
            if (v116)
            {
              v118 = _nw_endpoint_get_logging_description(v116);
            }

            else
            {
              v118 = "<NULL>";
            }

            v144 = v117;
            v145 = nw_endpoint_handler_state_string(v313);
            v146 = nw_endpoint_handler_mode_string(v313);
            v147 = nw_endpoint_handler_copy_current_path(v313);
            *buf = 136447746;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = dataa;
            *&buf[22] = 2082;
            v357 = v319;
            *v358 = 2082;
            *&v358[2] = v118;
            *&v358[10] = 2082;
            *&v358[12] = v145;
            *&v358[20] = 2082;
            *&v358[22] = v146;
            v359 = 2114;
            v360 = v147;
            _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Claiming frame failed", buf, 0x48u);
          }
        }

        v148 = v332;
        nw_write_request_fail(v70, 22);
LABEL_238:
        *(v334 + 332) &= ~2u;
        _Block_object_dispose(&v351, 8);
LABEL_239:

        v112 = v44;
        v41 = v70;
        data = v54;
LABEL_240:
        if (v45)
        {
          v160 = v334;
          if ((*(v334 + 332) & 2) != 0)
          {
            v161 = v112;
            objc_storeStrong((v334 + 224), v45);
            v112 = v161;
            goto LABEL_243;
          }
        }

        else
        {
LABEL_243:
          v160 = v334;
        }

        v333 = v112;
        v162 = v160[40];
        (v317->protocol.output_handler->callbacks->finalize_output_frames)();
        v163 = v160[40];
        if (!v163)
        {
          goto LABEL_263;
        }

        if (v162 == v163)
        {
          goto LABEL_263;
        }

        v164 = v163;
        v165 = v164[2] == 1;

        v160 = v334;
        if (!v165)
        {
          goto LABEL_263;
        }

        v166 = nw_error_get_error_code(*(v334 + 320));
        if (v166 == 4 || v166 == 35)
        {
          goto LABEL_263;
        }

        if (v166 != 32)
        {
          v175 = v166;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v169 = gLogObj;
          if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 1024;
            *&buf[14] = v175;
            _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_ERROR, "%{public}s Failing the write requests %{darwin.errno}d", buf, 0x12u);
          }

          goto LABEL_261;
        }

        v167 = nw_endpoint_handler_get_minimize_logging(v313);
        v168 = nw_endpoint_handler_get_logging_disabled(v313);
        if (v167)
        {
          if (v168)
          {
            goto LABEL_262;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v214 = gconnectionLogObj;
          if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
          {
            v215 = nw_endpoint_handler_get_id_string(v313);
            v216 = nw_endpoint_handler_dry_run_string(v313);
            v217 = nw_endpoint_handler_copy_endpoint(v313);
            v218 = nw_endpoint_get_logging_description(v217);
            v324 = nw_endpoint_handler_state_string(v313);
            v316 = nw_endpoint_handler_mode_string(v313);
            v219 = nw_endpoint_handler_copy_current_path(v313);
            *buf = 136447746;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v215;
            *&buf[22] = 2082;
            v357 = v216;
            *v358 = 2082;
            *&v358[2] = v218;
            *&v358[10] = 2082;
            *&v358[12] = v324;
            *&v358[20] = 2082;
            *&v358[22] = v316;
            v359 = 2114;
            v360 = v219;
            v169 = v214;
            _os_log_impl(&dword_181A37000, v214, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failing the write requests due to the connection being closed", buf, 0x48u);
          }

          else
          {
            v169 = v214;
          }

LABEL_261:

          v160 = v334;
          goto LABEL_262;
        }

        if ((v168 & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v169 = gconnectionLogObj;
          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
          {
            v170 = nw_endpoint_handler_get_id_string(v313);
            v171 = nw_endpoint_handler_dry_run_string(v313);
            v172 = nw_endpoint_handler_copy_endpoint(v313);
            v173 = v172;
            v322 = v170;
            if (v172)
            {
              v174 = _nw_endpoint_get_logging_description(v172);
            }

            else
            {
              v174 = "<NULL>";
            }

            v176 = nw_endpoint_handler_state_string(v313);
            v177 = nw_endpoint_handler_mode_string(v313);
            v178 = nw_endpoint_handler_copy_current_path(v313);
            *buf = 136447746;
            *&buf[4] = "nw_flow_prepare_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v322;
            *&buf[22] = 2082;
            v357 = v171;
            *v358 = 2082;
            *&v358[2] = v174;
            *&v358[10] = 2082;
            *&v358[12] = v176;
            *&v358[20] = 2082;
            *&v358[22] = v177;
            v359 = 2114;
            v360 = v178;
            _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failing the write requests due to the connection being closed", buf, 0x48u);
          }

          goto LABEL_261;
        }

LABEL_262:
        nw_write_request_report_error_with_override(v160[25], 0, v160[40]);
        nw_write_request_report_error_with_override(v160[24], 0, v160[40]);
LABEL_263:
        v179 = nw_write_request_list_prune(v160[25]);
        v180 = v160[25];
        v160[25] = v179;

        v181 = nw_write_request_list_prune(*(v334 + 192));
        v182 = *(v334 + 192);
        *(v334 + 192) = v181;

        if (v336)
        {
          v351 = 0;
          v352 = &v351;
          v353 = 0x2020000000;
          LODWORD(v354) = 0;
          v339[0] = MEMORY[0x1E69E9820];
          v339[1] = 3221225472;
          v340 = ___ZL29nw_flow_prepare_output_framesP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sjP30nw_protocol_message_properties_block_invoke_88;
          v341 = &unk_1E6A2DBE0;
          v342 = &v351;
          do
          {
            v183 = v336;
            if (!v336)
            {
              break;
            }

            v184 = v336[4];
            v185 = v336[5];
            v186 = v184 + 5;
            if (!v184)
            {
              v186 = &v337;
            }

            *v186 = v185;
            *v185 = v184;
            v183[4] = 0;
            v183[5] = 0;
          }

          while (((v340)(v339) & 1) != 0);
          if ((nw_endpoint_handler_get_logging_disabled(v313) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v187 = gconnectionLogObj;
            if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
            {
              v188 = nw_endpoint_handler_get_id_string(v313);
              v189 = nw_endpoint_handler_dry_run_string(v313);
              v190 = nw_endpoint_handler_copy_endpoint(v313);
              v191 = v190;
              v335 = v188;
              if (v190)
              {
                v192 = _nw_endpoint_get_logging_description(v190);
              }

              else
              {
                v192 = "<NULL>";
              }

              v193 = nw_endpoint_handler_state_string(v313);
              v194 = v187;
              v195 = v162;
              v196 = nw_endpoint_handler_mode_string(v313);
              v197 = nw_endpoint_handler_copy_current_path(v313);
              v198 = *(v352 + 6);
              *buf = 136448002;
              *&buf[4] = "nw_flow_prepare_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v335;
              *&buf[22] = 2082;
              v357 = v189;
              *v358 = 2082;
              *&v358[2] = v192;
              *&v358[10] = 2082;
              *&v358[12] = v193;
              *&v358[20] = 2082;
              *&v358[22] = v196;
              v162 = v195;
              v187 = v194;
              v359 = 2114;
              v360 = v197;
              v361 = 1024;
              v362 = v198;
              _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to use %u frames, marking as failed", buf, 0x4Eu);
            }
          }

          _Block_object_dispose(&v351, 8);
        }

        v199 = nw_flow_handle_send_complete(v310, v311, v317);
        if (v199)
        {
LABEL_355:
          *(v317 + 166) &= ~8u;
          v243 = 1;
          goto LABEL_356;
        }
      }
    }

    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v310) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v220 = gconnectionLogObj;
      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
      {
        v226 = nw_endpoint_handler_get_id_string(v310);
        v227 = nw_endpoint_handler_dry_run_string(v310);
        v228 = nw_endpoint_handler_copy_endpoint(v310);
        v229 = nw_endpoint_get_logging_description(v228);
        v230 = nw_endpoint_handler_state_string(v310);
        v231 = nw_endpoint_handler_mode_string(v310);
        v232 = nw_endpoint_handler_copy_current_path(v310);
        *buf = 136447746;
        *&buf[4] = "nw_flow_service_writes";
        *&buf[12] = 2082;
        *&buf[14] = v226;
        *&buf[22] = 2082;
        v357 = v227;
        *v358 = 2082;
        *&v358[2] = v229;
        *&v358[10] = 2082;
        *&v358[12] = v230;
        *&v358[20] = 2082;
        *&v358[22] = v231;
        v359 = 2114;
        v360 = v232;
        _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Already servicing writes, ignoring...", buf, 0x48u);
      }

LABEL_323:
    }
  }

  else if ((nw_endpoint_handler_get_logging_disabled(v310) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v220 = gconnectionLogObj;
    if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
    {
      v221 = nw_endpoint_handler_get_id_string(v310);
      v222 = nw_endpoint_handler_dry_run_string(v310);
      v223 = nw_endpoint_handler_copy_endpoint(v310);
      v224 = v223;
      if (v223)
      {
        v225 = _nw_endpoint_get_logging_description(v223);
      }

      else
      {
        v225 = "<NULL>";
      }

      v240 = nw_endpoint_handler_state_string(v310);
      v241 = nw_endpoint_handler_mode_string(v310);
      v242 = nw_endpoint_handler_copy_current_path(v310);
      *buf = 136447746;
      *&buf[4] = "nw_flow_service_writes";
      *&buf[12] = 2082;
      *&buf[14] = v221;
      *&buf[22] = 2082;
      v357 = v222;
      *v358 = 2082;
      *&v358[2] = v225;
      *&v358[10] = 2082;
      *&v358[12] = v240;
      *&v358[20] = 2082;
      *&v358[22] = v241;
      v359 = 2114;
      v360 = v242;
      _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No output handler", buf, 0x48u);
    }

    goto LABEL_323;
  }

LABEL_324:
  v243 = 0;
LABEL_356:

  return v243;
}

BOOL nw_content_context_has_metadata(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v1 + 28);
      v4 = *&v2[22]._os_unfair_lock_opaque;
      if (v4)
      {
        v3 = _nw_array_get_count(v4) != 0;
      }

      else
      {
        v3 = 0;
      }

      os_unfair_lock_unlock(v2 + 28);
    }

    goto LABEL_10;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_content_context_has_metadata";
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
        v17 = "nw_content_context_has_metadata";
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
          v17 = "nw_content_context_has_metadata";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_content_context_has_metadata";
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
        v17 = "nw_content_context_has_metadata";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

dispatch_data_t nw_write_request_copy_data(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!*(v1 + 9))
  {
    v4 = *(v1 + 14);
    v5 = *(v1 + 7);
    if (v4)
    {
      size = dispatch_data_get_size(*(v1 + 7));
      if (size < v4)
      {
        v7 = size;
        nw_write_request_report(v2, 0, 0);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = v2[14];
          v12 = 136446722;
          v13 = "nw_write_request_copy_data";
          v14 = 2048;
          v15 = v7;
          v16 = 2048;
          v17 = v9;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Invalid consumed bytes (%zu < %zu)", &v12, 0x20u);
        }

        goto LABEL_2;
      }

      subrange = dispatch_data_create_subrange(v5, v4, size - v4);
    }

    else
    {
      subrange = v5;
    }

    v3 = subrange;
    goto LABEL_11;
  }

LABEL_2:
  v3 = 0;
LABEL_11:

  return v3;
}

uint64_t nw_write_request_consume_bytes(void *a1, uint64_t a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v4 = *(v3 + 7);
  v5 = *(v3 + 9);
  if (v4)
  {
    if (!v5)
    {
      size = dispatch_data_get_size(*(v3 + 7));
      v7 = *(v3 + 14) + a2;
      if (v7 < size)
      {
        *(v3 + 14) = v7;
LABEL_66:
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
        }

        if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
        }

        v22 = 0;
        goto LABEL_72;
      }

      *(v3 + 14) = 0;
      goto LABEL_33;
    }

LABEL_11:
    v8 = *(v3 + 12);
    v9 = *(v3 + 14) + a2;
    *(v3 + 14) = v9;
    if (v9 >= v8)
    {
      *(v3 + 128) |= 0x10u;
LABEL_33:
      *(v3 + 7) = 0;

      if (*(v3 + 128))
      {
        nw_content_context_mark_completed_send(*(v3 + 8), 0);
      }

      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v22 = *(v3 + 128) & 1;
      goto LABEL_72;
    }

    if ((*(v3 + 128) & 0x20) != 0)
    {
      goto LABEL_66;
    }

    v10 = v3;
    v11 = v10[5];
    if (v11)
    {
      *(v3 + 128) |= 0x20u;
      v12 = *(v11 + 16);
      if (v12 && !_nw_parameters_get_logging_disabled(v12))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(v10[5] + 448);
          v15 = *(v3 + 9);
          *buf = 136446722;
          *&buf[4] = "nw_write_request_start_file_updates";
          *&buf[12] = 1024;
          *&buf[14] = v14;
          *&buf[18] = 2112;
          *&buf[20] = v15;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Activating progress updates on write request on %@", buf, 0x1Cu);
        }
      }

      v16 = v10[10];
      if (v16)
      {
        nw_queue_cancel_source(v16);
        v10[10] = 0;
      }

      objc_initWeak(&location, v10);
      v17 = *(v10[5] + 24);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke;
      *&buf[24] = &unk_1E6A3A6C8;
      objc_copyWeak(v48, &location);
      source = nw_queue_context_create_source(v17, 2, 3, 0, buf, 0);
      v10[10] = source;
      if (source)
      {
        v19 = dispatch_time(0x8000000000000000, 1000000);
        v20 = 1000000 * *(v10 + 22);
        if (*source)
        {
          dispatch_source_set_timer(*source, v19, v20, 0x3E8uLL);
        }

        else
        {
          source[4] = v19;
          source[5] = v20;
          if (*(source + 48) == 1 && *(source + 49) == 1)
          {
            nw_queue_source_run_timer(source);
          }
        }

        nw_queue_activate_source(v10[10]);
        goto LABEL_64;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      *v43 = 136446210;
      v44 = "nw_write_request_start_file_updates";
      v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed", v43, 12);

      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (__nwlog_fault(v24, &type, &v40))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *v43 = 136446210;
            v44 = "nw_write_request_start_file_updates";
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed", v43, 0xCu);
          }
        }

        else if (v40 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v25 = __nwlog_obj();
          v28 = type;
          v29 = os_log_type_enabled(v25, type);
          if (backtrace_string)
          {
            if (v29)
            {
              *v43 = 136446466;
              v44 = "nw_write_request_start_file_updates";
              v45 = 2082;
              v46 = backtrace_string;
              _os_log_impl(&dword_181A37000, v25, v28, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed, dumping backtrace:%{public}s", v43, 0x16u);
            }

            free(backtrace_string);
            if (!v24)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          if (v29)
          {
            *v43 = 136446210;
            v44 = "nw_write_request_start_file_updates";
            _os_log_impl(&dword_181A37000, v25, v28, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed, no backtrace", v43, 0xCu);
          }
        }

        else
        {
          v25 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v25, type))
          {
            *v43 = 136446210;
            v44 = "nw_write_request_start_file_updates";
            _os_log_impl(&dword_181A37000, v25, v30, "%{public}s call to nw_queue_context_create_source(timer) for write request updates failed, backtrace limit exceeded", v43, 0xCu);
          }
        }
      }

      if (!v24)
      {
LABEL_64:
        objc_destroyWeak(v48);
        objc_destroyWeak(&location);
LABEL_65:

        goto LABEL_66;
      }

LABEL_63:
      free(v24);
      goto LABEL_64;
    }

    v32 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_write_request_start_file_updates";
    v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null request->connection", buf, 12);

    v43[0] = 16;
    LOBYTE(location) = 0;
    if (__nwlog_fault(v33, v43, &location))
    {
      if (v43[0] == 17)
      {
        v34 = __nwlog_obj();
        v35 = v43[0];
        if (os_log_type_enabled(v34, v43[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_write_request_start_file_updates";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null request->connection", buf, 0xCu);
        }
      }

      else if (location == 1)
      {
        v36 = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v37 = v43[0];
        v38 = os_log_type_enabled(v34, v43[0]);
        if (v36)
        {
          if (v38)
          {
            *buf = 136446466;
            *&buf[4] = "nw_write_request_start_file_updates";
            *&buf[12] = 2082;
            *&buf[14] = v36;
            _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null request->connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_89;
        }

        if (v38)
        {
          *buf = 136446210;
          *&buf[4] = "nw_write_request_start_file_updates";
          _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null request->connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v34 = __nwlog_obj();
        v39 = v43[0];
        if (os_log_type_enabled(v34, v43[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_write_request_start_file_updates";
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null request->connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_89:
    if (v33)
    {
      free(v33);
    }

    goto LABEL_65;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  if ((*(v3 + 128) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_write_request_consume_bytes";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s No data to consume", buf, 0xCu);
    }
  }

  v22 = 1;
LABEL_72:

  return v22;
}

void sub_181AA0A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t nw_frame_unclaimed_length(_DWORD *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v13 = "__nw_frame_unclaimed_length";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v13 = "__nw_frame_unclaimed_length";
      v7 = "%{public}s called with null frame";
    }

    else if (v10 == 1)
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
          v13 = "__nw_frame_unclaimed_length";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (!v9)
      {
LABEL_18:
        if (v4)
        {
          free(v4);
        }

        return 0;
      }

      *buf = 136446210;
      v13 = "__nw_frame_unclaimed_length";
      v7 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v13 = "__nw_frame_unclaimed_length";
      v7 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_18;
  }

  v1 = a1[13];
  if (v1)
  {
    return (v1 - (a1[14] + a1[15]));
  }

  return 0;
}

void nw_frame_set_metadata(uint64_t a1, void *object, int a3, int a4)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    v60 = "__nw_frame_set_metadata";
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v44, 16, "%{public}s called with null frame", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v18, type, &v57))
    {
      goto LABEL_73;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v60 = "__nw_frame_set_metadata";
      v21 = "%{public}s called with null frame";
    }

    else if (v57 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type[0];
      v48 = os_log_type_enabled(v45, type[0]);
      if (backtrace_string)
      {
        if (v48)
        {
          *buf = 136446466;
          v60 = "__nw_frame_set_metadata";
          v61 = 2082;
          v62 = backtrace_string;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_73;
      }

      if (!v48)
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v60 = "__nw_frame_set_metadata";
      v21 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      v60 = "__nw_frame_set_metadata";
      v21 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    v41 = v45;
    v42 = v46;
    v43 = 12;
    goto LABEL_72;
  }

  if (object)
  {
    if (!_nw_protocol_metadata_is_ip())
    {
LABEL_12:
      v11 = (a1 + 204);
      if ((*(a1 + 204) & 8) == 0)
      {
        goto LABEL_13;
      }

      memset(type, 0, sizeof(type));
      v22 = object;
      _nw_protocol_metadata_copy_identifier(v22, type);

      v23 = *(a1 + 64);
      if (!v23)
      {
        goto LABEL_45;
      }

      v24 = 0;
      if (a4)
      {
        v25 = 64;
      }

      else
      {
        v25 = 0;
      }

      while (1)
      {
        v26 = _nw_protocol_metadata_copy_definition(v22);
        v27 = v23[6];
        if (v27)
        {
          v28 = _nw_protocol_metadata_copy_definition(v27);
          if (nw_protocol_definition_is_equal_unsafe(v26, v28) && !uuid_compare(type, v23 + 16))
          {
            os_retain(v22);
            v29 = v23[6];
            if (v29)
            {
              os_release(v29);
            }

            v23[6] = v22;
            *(v23 + 66) = *(v23 + 66) & 0xBF | v25;
            v24 = 1;
            if (!v28)
            {
              goto LABEL_38;
            }

LABEL_37:
            os_release(v28);
            goto LABEL_38;
          }

          if (v28)
          {
            goto LABEL_37;
          }
        }

LABEL_38:
        if (v26)
        {
          os_release(v26);
        }

        v23 = *v23;
        if (!v23)
        {
          if ((v24 & 1) == 0)
          {
LABEL_45:
            v30 = malloc_type_calloc(1uLL, 0x48uLL, 0x7DE37D5uLL);
            if (v30)
            {
              goto LABEL_51;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            v60 = "__nw_frame_set_metadata";
            if (v32)
            {
              v33 = 3;
            }

            else
            {
              v33 = 2;
            }

            v61 = 2048;
            v62 = 1;
            v63 = 2048;
            v64 = 72;
            LODWORD(v56) = 32;
            v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s strict_calloc(%zu, %zu) failed", buf, v56);
            if (__nwlog_should_abort(v34))
            {
              __break(1u);
            }

            else
            {
              free(v34);
LABEL_51:
              v30[6] = os_retain(v22);
              *(v30 + 1) = *type;
              if (a4)
              {
                v35 = 64;
              }

              else
              {
                v35 = 0;
              }

              *(v30 + 66) = *(v30 + 66) & 0xBF | v35;
              if (a3)
              {
                v36 = *(a1 + 64);
                *v30 = v36;
                if (v36)
                {
                  v37 = (v36 + 8);
                }

                else
                {
                  v37 = (a1 + 72);
                }

                *v37 = v30;
                *(a1 + 64) = v30;
                v30[1] = a1 + 64;
              }

              else
              {
                *v30 = 0;
                v38 = *(a1 + 72);
                v30[1] = v38;
                *v38 = v30;
                *(a1 + 72) = v30;
              }
            }
          }

          return;
        }
      }
    }

    *(a1 + 186) = *(a1 + 186) & 0xFC | _nw_ip_metadata_get_ecn_flag(object) & 3;
    dscp_value = _nw_ip_metadata_get_dscp_value(object);
    if (dscp_value < 0x40)
    {
      *(a1 + 184) = dscp_value;
LABEL_6:
      service_class = _nw_ip_metadata_get_service_class(object);
      if (service_class > 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_182B0E000[service_class];
      }

      *(a1 + 176) = v10;
      *(a1 + 180) = _nw_ip_metadata_get_fragmentation_value(object);
      goto LABEL_12;
    }

    v49 = __nwlog_obj();
    *buf = 136446210;
    v60 = "__nw_frame_set_dscp_value";
    v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null (dscp_value <= _MAX_DSCP)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (__nwlog_fault(v50, type, &v57))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v51 = __nwlog_obj();
        v52 = type[0];
        if (!os_log_type_enabled(v51, type[0]))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v60 = "__nw_frame_set_dscp_value";
        v53 = "%{public}s called with null (dscp_value <= _MAX_DSCP)";
        goto LABEL_103;
      }

      if (v57 != 1)
      {
        v51 = __nwlog_obj();
        v52 = type[0];
        if (!os_log_type_enabled(v51, type[0]))
        {
          goto LABEL_104;
        }

        *buf = 136446210;
        v60 = "__nw_frame_set_dscp_value";
        v53 = "%{public}s called with null (dscp_value <= _MAX_DSCP), backtrace limit exceeded";
        goto LABEL_103;
      }

      v54 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type[0];
      v55 = os_log_type_enabled(v51, type[0]);
      if (v54)
      {
        if (v55)
        {
          *buf = 136446466;
          v60 = "__nw_frame_set_dscp_value";
          v61 = 2082;
          v62 = v54;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null (dscp_value <= _MAX_DSCP), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
        goto LABEL_104;
      }

      if (v55)
      {
        *buf = 136446210;
        v60 = "__nw_frame_set_dscp_value";
        v53 = "%{public}s called with null (dscp_value <= _MAX_DSCP), no backtrace";
LABEL_103:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

LABEL_104:
    if (v50)
    {
      free(v50);
    }

    goto LABEL_6;
  }

  v11 = (a1 + 204);
  if ((*(a1 + 204) & 8) != 0)
  {
    return;
  }

LABEL_13:
  v12 = *(a1 + 168);
  if (v12)
  {
    os_release(v12);
    *(a1 + 168) = 0;
  }

  if (object)
  {
    *(a1 + 168) = os_retain(object);
    v13 = *(a1 + 204);
    if ((v13 & 0x20) == 0)
    {
      v14 = object;
      _nw_protocol_metadata_copy_identifier(v14, (a1 + 136));

      v13 = *(a1 + 204);
    }

    *v11 = v13 | 8;
  }

  v15 = a1 + 120;
  v16 = *(a1 + 64);
  if (a4)
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 186) = *(a1 + 186) & 0xBF | v17;
  if (!v16)
  {
    *(a1 + 64) = v15;
    *(a1 + 72) = v15;
    *(a1 + 120) = 0;
    *(a1 + 128) = a1 + 64;
    return;
  }

  if (v16 != v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v60 = "__nw_frame_set_metadata";
    v61 = 2048;
    v62 = v16;
    v63 = 2048;
    v64 = a1 + 120;
    LODWORD(v56) = 32;
    v18 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Existing metadata %p doesn't match expected %p", buf, v56);
    type[0] = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v18, type, &v57))
    {
      goto LABEL_73;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446722;
      v60 = "__nw_frame_set_metadata";
      v61 = 2048;
      v62 = v16;
      v63 = 2048;
      v64 = v15;
      v21 = "%{public}s Existing metadata %p doesn't match expected %p";
      goto LABEL_71;
    }

    if (v57 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446722;
      v60 = "__nw_frame_set_metadata";
      v61 = 2048;
      v62 = v16;
      v63 = 2048;
      v64 = v15;
      v21 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
      goto LABEL_71;
    }

    v39 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = type[0];
    v40 = os_log_type_enabled(gLogObj, type[0]);
    if (v39)
    {
      if (v40)
      {
        *buf = 136446978;
        v60 = "__nw_frame_set_metadata";
        v61 = 2048;
        v62 = v16;
        v63 = 2048;
        v64 = v15;
        v65 = 2082;
        v66 = v39;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v39);
      if (!v18)
      {
        return;
      }

LABEL_74:
      free(v18);
      return;
    }

    if (v40)
    {
      *buf = 136446722;
      v60 = "__nw_frame_set_metadata";
      v61 = 2048;
      v62 = v16;
      v63 = 2048;
      v64 = v15;
      v21 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
LABEL_71:
      v41 = v19;
      v42 = v20;
      v43 = 32;
LABEL_72:
      _os_log_impl(&dword_181A37000, v41, v42, v21, buf, v43);
    }

LABEL_73:
    if (!v18)
    {
      return;
    }

    goto LABEL_74;
  }
}

void nw_protocol_default_get_message_properties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(v3 + 24);
        if (v4)
        {
          v5 = *(v4 + 248);
          if (v5)
          {

            v5();
          }
        }
      }
    }

    return;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_default_get_message_properties";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_message_properties";
      v10 = "%{public}s called with null protocol";
      goto LABEL_22;
    }

    if (v13 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_message_properties";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_22;
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
        v16 = "nw_protocol_default_get_message_properties";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_23;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_protocol_default_get_message_properties";
      v10 = "%{public}s called with null protocol, no backtrace";
LABEL_22:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }
}

void nw_content_context_mark_completed_send(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (v3 != &__block_literal_global_10_44685 && v3 != &__block_literal_global_8_44676 && v3 != &__block_literal_global_6_44667 && v3 != &__block_literal_global_44658)
    {
      os_unfair_lock_lock(v3 + 28);
      *(v3 + 118) |= 4u;
      objc_storeStrong(v3 + 12, a2);
      *(v3 + 9) = 0;
      os_unfair_lock_unlock(v3 + 28);
    }

    goto LABEL_7;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_content_context_mark_completed_send";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null context", buf, 12);

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
        v16 = "nw_content_context_mark_completed_send";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null context", buf, 0xCu);
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
          v16 = "nw_content_context_mark_completed_send";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_content_context_mark_completed_send";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_content_context_mark_completed_send";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v6)
  {
    free(v6);
  }

LABEL_7:
}

void nw_frame_collapse(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v33 = "__nw_frame_collapse";
    v24 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v23, 16, "%{public}s called with null frame", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v24, &type, &v30))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v33 = "__nw_frame_collapse";
      v27 = "%{public}s called with null frame";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v29 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v33 = "__nw_frame_collapse";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_43;
      }

      if (!v29)
      {
LABEL_43:
        if (v24)
        {
          free(v24);
        }

        return;
      }

      *buf = 136446210;
      v33 = "__nw_frame_collapse";
      v27 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v33 = "__nw_frame_collapse";
      v27 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_43;
  }

  v1 = *(a1 + 52);
  if (v1)
  {
    v3 = *(a1 + 56);
    v2 = *(a1 + 60);
    v4 = (v1 - (v2 + v3));
    if (v1 != v2 + v3)
    {
      if (v2)
      {
        v5 = *(a1 + 112);
        if (v5)
        {
          v6 = a1;
          memmove((v5 + v3), (v5 + v3 + v4), v2);
          a1 = v6;
          v1 = *(v6 + 52);
        }
      }

      *(a1 + 52) = v1 - v4;
      if ((*(a1 + 204) & 0x80) != 0)
      {
        v7 = *(a1 + 196);
        v8 = v7 >= v4;
        v9 = v7 - v4;
        *(a1 + 196) = v9;
        if (!v8 || v9 >= 0x10000)
        {
          v10 = a1;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = v10;
          v12 = *(v10 + 196);
          *buf = 136446978;
          v33 = "__nw_frame_collapse";
          v34 = 2082;
          v35 = "frame->aggregate_buffer_length";
          v36 = 2048;
          v37 = v4;
          v38 = 2048;
          v39 = v12;
          v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
          type = OS_LOG_TYPE_ERROR;
          v30 = 0;
          if (__nwlog_fault(v13, &type, &v30))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type;
              if (os_log_type_enabled(gLogObj, type))
              {
                v16 = *(v11 + 196);
                *buf = 136446978;
                v33 = "__nw_frame_collapse";
                v34 = 2082;
                v35 = "frame->aggregate_buffer_length";
                v36 = 2048;
                v37 = v4;
                v38 = 2048;
                v39 = v16;
                v17 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_24:
                _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x2Au);
              }
            }

            else if (v30 == 1)
            {
              v18 = __nw_create_backtrace_string();
              v14 = __nwlog_obj();
              v15 = type;
              v19 = os_log_type_enabled(v14, type);
              if (v18)
              {
                if (v19)
                {
                  v20 = *(v11 + 196);
                  *buf = 136447234;
                  v33 = "__nw_frame_collapse";
                  v34 = 2082;
                  v35 = "frame->aggregate_buffer_length";
                  v36 = 2048;
                  v37 = v4;
                  v38 = 2048;
                  v39 = v20;
                  v40 = 2082;
                  v41 = v18;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v18);
                goto LABEL_25;
              }

              if (v19)
              {
                v22 = *(v11 + 196);
                *buf = 136446978;
                v33 = "__nw_frame_collapse";
                v34 = 2082;
                v35 = "frame->aggregate_buffer_length";
                v36 = 2048;
                v37 = v4;
                v38 = 2048;
                v39 = v22;
                v17 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_24;
              }
            }

            else
            {
              v14 = __nwlog_obj();
              v15 = type;
              if (os_log_type_enabled(v14, type))
              {
                v21 = *(v11 + 196);
                *buf = 136446978;
                v33 = "__nw_frame_collapse";
                v34 = 2082;
                v35 = "frame->aggregate_buffer_length";
                v36 = 2048;
                v37 = v4;
                v38 = 2048;
                v39 = v21;
                v17 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_24;
              }
            }
          }

LABEL_25:
          if (v13)
          {
            free(v13);
          }

          *(v11 + 196) = 0;
        }
      }
    }
  }
}

void nw_parameters_set_allow_ultra_constrained(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_allow_ultra_constrained(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_allow_ultra_constrained";
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
        v12 = "nw_parameters_set_allow_ultra_constrained";
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
            v12 = "nw_parameters_set_allow_ultra_constrained";
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
        v12 = "nw_parameters_set_allow_ultra_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_allow_ultra_constrained";
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

nw_interface_type_t nw_interface_get_type(nw_interface_t interface)
{
  v15 = *MEMORY[0x1E69E9840];
  if (interface)
  {

    return _nw_interface_get_type(interface);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_type";
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
        v12 = "nw_interface_get_type";
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
            v12 = "nw_interface_get_type";
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
        v12 = "nw_interface_get_type";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_type";
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

uint64_t nw_path_copy_direct_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_direct_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_direct_interface";
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
        v16 = "nw_path_copy_direct_interface";
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
          v16 = "nw_path_copy_direct_interface";
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
        v16 = "nw_path_copy_direct_interface";
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
        v16 = "nw_path_copy_direct_interface";
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

void sub_181AA2924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_181AA2988(uint64_t a1)
{
  sub_181AA2924(319, &qword_1ED40F4B8, 255, type metadata accessor for NWPath, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18207E248(319, qword_1ED40FBF0, &unk_1EA8397F0, &qword_182AE5F58);
    if (v2 <= 0x3F)
    {
      sub_181AA2924(319, &unk_1EA836E70, 255, sub_181AA2FA8, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_181AA2FF4(319);
        if (v5 <= 0x3F)
        {
          sub_181AA2924(319, &qword_1EA836F10, v4, type metadata accessor for NWPathMonitor, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_181AA2B1C(uint64_t a1)
{
  sub_181AA2C74();
  if (v1 <= 0x3F)
  {
    sub_181AA2924(319, &unk_1EA836F40, 255, type metadata accessor for NWEndpoint, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_181AA2924(319, &qword_1ED40F5C0, 255, type metadata accessor for NWEndpoint, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_18207E248(319, &unk_1EA836F50, &qword_1EA839F38, &qword_182AF2120);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_181AA2C74()
{
  if (!qword_1EA836F60)
  {
    v0 = sub_182AD3488();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA836F60);
    }
  }
}

void sub_181AA2CC4(uint64_t a1)
{
  sub_181AA2D74();
  if (v1 <= 0x3F)
  {
    sub_181AA2DD8(319);
    if (v2 <= 0x3F)
    {
      sub_181AA2F14();
      if (v3 <= 0x3F)
      {
        sub_182AD2058();
        if (v4 <= 0x3F)
        {
          sub_181AA2F44();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_181AA2D74()
{
  if (!qword_1EA836FB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836FB0);
    }
  }
}

void sub_181AA2DD8(uint64_t a1)
{
  if (!qword_1EA836FA8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8395A0, &qword_182AEBFE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EA836FA8);
    }
  }
}

uint64_t sub_181AA2F14()
{
  result = qword_1EA836F98;
  if (!qword_1EA836F98)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EA836F98);
  }

  return result;
}

unint64_t sub_181AA2F44()
{
  result = qword_1EA836F80;
  if (!qword_1EA836F80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA836F80);
  }

  return result;
}

unint64_t sub_181AA2FA8()
{
  result = qword_1EA836F30;
  if (!qword_1EA836F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA836F30);
  }

  return result;
}

void sub_181AA2FF4(uint64_t a1)
{
  if (!qword_1EA836E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839610, &qword_182AE6060);
    v1 = sub_182AD2E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA836E80);
    }
  }
}

uint64_t sub_181AA30BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_181AA3140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_181AA31FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_181AA333C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t NWPathMonitor.pathUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_181AA39D0(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
  return sub_181A554F4(a1, a2);
}

uint64_t NWPathMonitor.init()()
{
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  v2 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWPath(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = &v4[v2[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[v2[8]] = 1;
  *&v4[v2[9]] = 0;
  *&v4[v2[10]] = MEMORY[0x1E69E7CC8];
  v4[v2[11]] = 0;
  v4[v2[12]] = 0;
  *&v4[v2[13]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED0, &qword_182AF1AF0);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181AA38E8(v4, v7 + *(*v7 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for NWPathMonitor.LockedState);
  *(v0 + 16) = v7;
  *(v0 + 24) = nw_path_monitor_create();
  return v0;
}

uint64_t sub_181AA3838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_181AA38E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_181AA3950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for NWPathMonitor.LockedState(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  sub_181AA39C0(a2, a3);
  result = sub_181A554F4(v6, v7);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

double sub_181AA39C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t type metadata accessor for NWEndpoint(uint64_t a1)
{
  result = qword_1ED40F6B0;
  if (!qword_1ED40F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_181AA3A38(uint64_t a1, uint64_t a2, void *a3)
{
  result = type metadata accessor for NWPathMonitor.LockedState(0);
  v7 = result[7];
  if (!*(a1 + v7))
  {
    v8 = result[11];

    *(a1 + v8) = a2;
    *(a1 + v7) = a3;
    v9 = a3;
    return sub_181AA3AB8(a1);
  }

  return result;
}

int *sub_181AA3AB8(uint64_t a1)
{
  v3 = sub_182AD27A8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD27C8();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8, &qword_182AF1AE8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for NWPath(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  result = type metadata accessor for NWPathMonitor.LockedState(0);
  v20 = result[9];
  if (*(a1 + v20))
  {
    v21 = (a1 + result[5]);
    v22 = *v21;
    if (*v21 && *(a1 + result[7]))
    {
      v23 = v21[1];
      v39 = *(a1 + result[7]);
      v40 = v23;
      sub_181AB5D28(a1, v11, &qword_1EA839EC8, &qword_182AF1AE8);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        return sub_181F49A88(v11, &qword_1EA839EC8, &qword_182AF1AE8);
      }

      else
      {
        sub_181AA38E8(v11, v18, type metadata accessor for NWPath);
        sub_181B811E4(v18, v15, type metadata accessor for NWPath);
        v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v32 = v22;
        v33 = swift_allocObject();
        v34 = v40;
        *(v33 + 16) = v32;
        *(v33 + 24) = v34;
        sub_181AA38E8(v15, v33 + v31, type metadata accessor for NWPath);
        v50 = sub_181B815C4;
        v51 = v33;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = sub_181B7D048;
        v49 = &block_descriptor_121;
        v35 = _Block_copy(&aBlock);
        sub_181AA39C0(v32, v34);
        sub_181AA39C0(v32, v34);
        v36 = v39;
        sub_182AD27B8();
        v45 = MEMORY[0x1E69E7CC0];
        sub_181B7CF9C(&qword_1ED40F4B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50, &qword_182AF48B0);
        sub_181B7CFE4();
        v37 = v44;
        sub_182AD3AC8();
        MEMORY[0x1865DA490](0, v8, v5, v35);

        _Block_release(v35);
        sub_181A554F4(v32, v34);
        (*(v43 + 8))(v5, v37);
        (*(v41 + 8))(v8, v42);
        sub_181B81280(v18, type metadata accessor for NWPath);
      }
    }
  }

  else
  {
    *(a1 + v20) = 1;
    v24 = *(v1 + 24);
    v25 = swift_allocObject();
    swift_weakInit();
    v50 = sub_181B7F2F0;
    v51 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_181B7F17C;
    v49 = &block_descriptor_16;
    v26 = _Block_copy(&aBlock);

    nw_path_monitor_set_update_handler(v24, v26);
    _Block_release(v26);
    v27 = swift_allocObject();
    swift_weakInit();
    v50 = sub_181C0A9F0;
    v51 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_181B7D048;
    v49 = &block_descriptor_115;
    v28 = _Block_copy(&aBlock);

    nw_path_monitor_set_cancel_handler(v24, v28);
    _Block_release(v28);
    v29 = nw_path_monitor_copy_parameters(v24);
    result = nw_parameters_copy_context(v29);
    if (result)
    {
      v30 = nw_context_copy_workloop(result);
      swift_unknownObjectRelease();
      nw_path_monitor_set_queue(v24, v30);

      nw_path_monitor_start(v24);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_181AA4124()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void NWPathMonitor.start(queue:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181AA415C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void nw_path_monitor_set_update_handler(nw_path_monitor_t monitor, nw_path_monitor_update_handler_t update_handler)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = monitor;
  v4 = update_handler;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_path_monitor_set_update_handler";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null monitor", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_update_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null monitor", buf, 0xCu);
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
          v27 = "nw_path_monitor_set_update_handler";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v11)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v11);
        goto LABEL_4;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_update_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_update_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = v3;
    v7 = v5;
    os_unfair_lock_lock(&v6[12]);
    v8 = _Block_copy(v7);
    isa = v6[8].isa;
    v6[8].isa = v8;

    os_unfair_lock_unlock(&v6[12]);
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_path_monitor_set_update_handler";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null update_handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_path_monitor_set_update_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null update_handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_path_monitor_set_update_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null update_handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
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
      v27 = "nw_path_monitor_set_update_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null update_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_path_monitor_set_update_handler";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null update_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_path_monitor_set_cancel_handler(nw_path_monitor_t monitor, nw_path_monitor_cancel_handler_t cancel_handler)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = monitor;
  v4 = cancel_handler;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_path_monitor_set_cancel_handler";
    v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null monitor", buf, 12);

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null monitor", buf, 0xCu);
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
          v27 = "nw_path_monitor_set_cancel_handler";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v11)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v11);
        goto LABEL_4;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null monitor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_path_monitor_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null monitor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = v4;
    v7 = v3;
    os_unfair_lock_lock(&v3[12]);
    v8 = _Block_copy(v6);

    isa = v7[9].isa;
    v7[9].isa = v8;

    os_unfair_lock_unlock(&v3[12]);
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_path_monitor_set_cancel_handler";
  v11 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null cancel_handler", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_path_monitor_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null cancel_handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_path_monitor_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null cancel_handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
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
      v27 = "nw_path_monitor_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null cancel_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_path_monitor_set_cancel_handler";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null cancel_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_39;
  }

LABEL_4:
}

id nw_path_evaluator_copy_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 24);
    v3 = *&v2[2]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 24);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_evaluator_copy_parameters";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null evaluator", buf, 12);

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
        v16 = "nw_path_evaluator_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null evaluator", buf, 0xCu);
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
          v16 = "nw_path_evaluator_copy_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_evaluator_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_evaluator_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181AA4EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _nw_array_get_count(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v3 = a1;
  swift_beginAccess();
  v4 = *(*&a1[v2] + 24);

  return v4;
}

uint64_t _nw_array_apply(void *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = a1;
  _Block_copy(v3);
  sub_181AA5078(v4, v3, &v6);
  _Block_release(v3);

  return v6;
}

void sub_181AA5078(uint64_t a1@<X0>, uint64_t (**a2)(void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(**(a1 + OBJC_IVAR____TtC7Network7NWArray_applyCount) + 136);
  if (atomic_fetch_add_explicit(v6(), 1u, memory_order_relaxed) == 255)
  {
    goto LABEL_14;
  }

  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v8 = swift_beginAccess();
  v9 = *(*(a1 + v7) + 24);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

  v10 = 0;
  do
  {
    if (v9 == v10)
    {
      *a3 = 1;
      if (!atomic_fetch_add_explicit((v6)(v8), 0xFFu, memory_order_release))
      {
        should_abort = __nwlog_should_abort("unexpected value for apply count");
        _Block_release(a2);
        if (should_abort)
        {
          goto LABEL_24;
        }

        return;
      }

LABEL_17:
      _Block_release(a2);
      return;
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = *(a1 + v7);
    if (v10 >= v11[3])
    {
      goto LABEL_21;
    }

    v12 = v11[4];
    if (v10 + v12 >= v11[2])
    {
      v13 = v11[2];
    }

    else
    {
      v13 = 0;
    }

    v8 = a2[2](a2, v10, v11[v10 + 5 + v12 - v13]);
    ++v10;
  }

  while ((v8 & 1) != 0);
  *a3 = 0;
  if (atomic_fetch_add_explicit(v6(), 0xFFu, memory_order_release))
  {
    goto LABEL_17;
  }

  v14 = __nwlog_should_abort("unexpected value for apply count");
  _Block_release(a2);
  if ((v14 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_14:
  if ((__nwlog_should_abort("maximum applies for array exceeded") & 1) == 0)
  {
    __swp(0xFFFFFFFF, v6());
    _Block_release(a2);
    *a3 = 0;
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

const sockaddr *__cdecl nw_endpoint_get_address(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    address = _nw_endpoint_get_address(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_address";
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
        v16 = "nw_endpoint_get_address";
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
          v16 = "nw_endpoint_get_address";
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
        v16 = "nw_endpoint_get_address";
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
        v16 = "nw_endpoint_get_address";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  address = 0;
LABEL_3:

  return address;
}

void sub_181AA5564(uint64_t a1)
{
  v2 = v1;
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 42);
  if (*(a1 + 42))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 40);
    *__n = *a1;
    *&__n[16] = v3;
    *&__n[24] = v6;
    *&__n[32] = v4;
    *&__n[40] = v7;
    __n[42] = v5;
    *&__n[43] = *(a1 + 43);
    __n[59] = *(a1 + 59);
    v8 = sub_181C1EE60();
    if ((v11 & 0x100000000) == 0)
    {
      *__src = v8;
      *&__src[8] = v9;
      *&__src[16] = v10;
      *&__src[24] = v11;
      v12 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
      v13 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
      v14 = v8;
      if (!v13)
      {
        v13 = swift_slowAlloc();
        *(v2 + v12) = v13;
      }

      v21 = v13;
LABEL_18:
      memcpy(v21, __src, v14);
      return;
    }

    sub_18217B0E0(__n);
    if ((v30 & 1) == 0)
    {
      v14 = __n[0];
      __src[0] = __n[0];
      v24 = *&__n[49];
      v25 = v28;
      *v26 = *v29;
      *&v26[9] = *&v29[9];
      *&__src[1] = *&__n[1];
      *&__src[17] = *&__n[17];
      v23 = *&__n[33];
      v20 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
      v21 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
      if (!v21)
      {
        v21 = swift_slowAlloc();
        *(v2 + v20) = v21;
      }

      goto LABEL_18;
    }

    if (v5 == 3)
    {
      v18 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
      v19 = *(v1 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
      if (!v19)
      {
        v19 = swift_slowAlloc();
        *(v1 + v18) = v19;
      }

      *v19 = 10252;
      v19[1] = HIDWORD(v3);
      v19[2] = v6;
    }
  }

  else
  {
    v15 = bswap32(v4) >> 16;
    v16 = OBJC_IVAR____TtC7Network8Endpoint_addressStorage;
    v17 = *(v2 + OBJC_IVAR____TtC7Network8Endpoint_addressStorage);
    if (!v17)
    {
      v17 = swift_slowAlloc();
      *(v2 + v16) = v17;
    }

    *v17 = 528;
    *(v17 + 2) = v15;
    *(v17 + 4) = v3;
    *(v17 + 8) = 0;
  }
}

void _nw_path_enumerate_interfacesTm(char *a1, void *aBlock, void (*a3)(char *, const void *))
{
  v5 = _Block_copy(aBlock);
  if (a1)
  {
    v6 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v7 = v5;
    v8 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v6], 0x17AuLL);
    _Block_copy(v7);
    sub_181A3DF5C(__dst, v9);

    memcpy(v9, __dst, 0x17AuLL);
    a3(v9, v7);
    _Block_release(v7);
    sub_181A3DFB8(__dst);
    _Block_release(v7);
  }

  else
  {

    _Block_release(v5);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t NetworkAgent.description.getter()
{
  sub_182AD3BA8();

  v0 = sub_181AA5C30();
  MEMORY[0x1865D9CA0](v0);

  MEMORY[0x1865D9CA0](0x203A65707974202CLL, 0xE800000000000000);
  v1 = sub_1820F55CC();
  MEMORY[0x1865D9CA0](v1);

  MEMORY[0x1865D9CA0](0x203A64697575202CLL, 0xE800000000000000);
  v2 = sub_182AD30D8();
  MEMORY[0x1865D9CA0](v2);

  MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
  sub_181AA5BC8();
  v3 = sub_182AD3218();
  MEMORY[0x1865D9CA0](v3);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);

  MEMORY[0x1865D9CA0](0x30203A7367616C66, 0xE900000000000078);

  return 0xD000000000000017;
}

unint64_t sub_181AA5BC8()
{
  result = qword_1ED4105A0;
  if (!qword_1ED4105A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4105A0);
  }

  return result;
}

uint64_t sub_181AA5C1C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_181AA5C30()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
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
      v3 = *(*v0 + 48);
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

nw_txt_record_t nw_endpoint_copy_txt_record(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_txt_record(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_txt_record";
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
        v16 = "nw_endpoint_copy_txt_record";
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
          v16 = "nw_endpoint_copy_txt_record";
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
        v16 = "nw_endpoint_copy_txt_record";
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
        v16 = "nw_endpoint_copy_txt_record";
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

void sub_181AA5FF0(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for URLEndpoint(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v1 + v9, v8, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = *(v8 + 4);
      v21 = *(v8 + 20);
      v22 = v8[42];
      if (v17)
      {
        v23 = *(v17 + 16);
        v24 = *(v17 + 24);
        sub_181E6550C(v23, v24);

        sub_181AD1DE4(v18, v19, v20, v21, v22);
        *a1 = v23;
        a1[1] = v24;
        return;
      }

      sub_181AD1DE4(v18, v19, v20, v21, v22);
      goto LABEL_16;
    }

    v11 = *(*v8 + 24);

    if (v11)
    {
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      sub_181E6550C(v12, v13);

      *a1 = v12;
      a1[1] = v13;
      return;
    }

LABEL_15:

LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    v14 = *(v8 + 1);
    if (v14)
    {
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      sub_181E6550C(v15, v16);

      *a1 = v15;
      a1[1] = v16;
      return;
    }

    goto LABEL_15;
  }

  sub_181AA91BC(v8, v5, type metadata accessor for URLEndpoint);
  v25 = *(v5 + 1);
  if (v25)
  {
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    sub_181E6550C(v26, v27);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  *a1 = v26;
  a1[1] = v27;
  sub_181A5513C(v5, type metadata accessor for URLEndpoint);
}