BOOL ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2000000000;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2000000000;
  v5 = a3[1];
  if (v5 >> 62)
  {
    v15 = 0;
  }

  else
  {
    v6 = v5 >> 14;
    v7 = bswap64(v5 | 0xC000000000000000);
    v8 = bswap32(v5 | 0x80000000);
    if (v5 >> 30)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v5 >> 30)
    {
      v10 = 8;
    }

    else
    {
      v10 = 4;
    }

    v11 = bswap32(v5 | 0x4000) >> 16;
    v12 = v6 == 0;
    if (v6)
    {
      v13 = v9;
    }

    else
    {
      v13 = v11;
    }

    if (v12)
    {
      v14 = 2;
    }

    else
    {
      v14 = v10;
    }

    if (v5 >= 0x40)
    {
      v15 = v14;
    }

    else
    {
      v13 = a3[1];
      v15 = 1;
    }

    v58 = v13;
  }

  v56 = v15;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2000000000;
  v54 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2000000000;
  v16 = a3[2];
  if (v16 >> 62)
  {
    v26 = 0;
  }

  else
  {
    v17 = v16 >> 14;
    v18 = bswap64(v16 | 0xC000000000000000);
    v19 = bswap32(v16 | 0x80000000);
    if (v16 >> 30)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (v16 >> 30)
    {
      v21 = 8;
    }

    else
    {
      v21 = 4;
    }

    v22 = bswap32(v16 | 0x4000) >> 16;
    v23 = v17 == 0;
    if (v17)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    if (v23)
    {
      v25 = 2;
    }

    else
    {
      v25 = v21;
    }

    if (v16 >= 0x40)
    {
      v26 = v25;
    }

    else
    {
      v24 = a3[2];
      v26 = 1;
    }

    v54 = v24;
  }

  v52 = v26;
  v50[0] = 0;
  v50[1] = v50;
  output_frames = nw_http_capsule_framer_get_output_frames(*(a1 + 32) + 96, *(a1 + 32), *a3, v26 + v15, v26 + v15, 1, v50);
  if (output_frames)
  {
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2000000000;
    v49 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = v50;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v35 = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_2;
    v36 = &unk_1E6A31B08;
    v37 = v48;
    v38 = &v44;
    v28 = *(a1 + 32);
    v39 = v57;
    v40 = v55;
    v41 = v53;
    v42 = v51;
    v43 = v28;
    v29 = v50[0];
    do
    {
      if (!v29)
      {
        break;
      }

      v30 = *(v29 + 32);
      v31 = v35(v34);
      v29 = v30;
    }

    while ((v31 & 1) != 0);
    nw_http_capsule_framer_finalize_output_frames(*(a1 + 32) + 96, *(a1 + 32), *a3, v45[3]);
    v32 = *(a1 + 40);
    if (v32)
    {
      _nw_array_append(v32, a3);
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(v48, 8);
  }

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  return output_frames != 0;
}

uint64_t ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  nw_array_remove_object(*(*(a1 + 32) + 200), a3);
  if (a3)
  {
    free(a3);
  }

  return 1;
}

uint64_t ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_2(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v3 = (*(*(a1[5] + 8) + 24) + 8);
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    if (v4)
    {
      v3 = (v4 + 40);
    }

    *v3 = v5;
    *v5 = v4;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v6 = a1[10];
    if ((!v6 || (*(v6 + 580) & 2) == 0) && gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = a1[10];
        v9 = (v8 + 496);
        v10 = "";
        v11 = v8 == 0;
        v12 = *(v8 + 492);
        if (v11)
        {
          v9 = "";
        }

        v16 = "nw_webtransport_http2_send_pending_control_capsules_block_invoke_2";
        v17 = 2082;
        v15 = 136446978;
        if (!v11)
        {
          v10 = " ";
        }

        v18 = v9;
        v19 = 2080;
        v20 = v10;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Dropping unneeded output frame", &v15, 0x26u);
      }
    }
  }

  else
  {
    v13 = nw_frame_unclaimed_bytes(a2, &v15);
    memcpy(v13, (*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    memcpy(&v13[*(*(a1[7] + 8) + 24)], (*(a1[8] + 8) + 24), *(*(a1[9] + 8) + 24));
    *(*(a1[4] + 8) + 24) = 1;
  }

  return 1;
}

void nw_protocol_webtransport_http2_stream_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_http2_stream_input_finished";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_http2_stream_input_finished";
      v8 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v21 = "nw_protocol_webtransport_http2_stream_input_finished";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v5)
        {
          return;
        }

LABEL_42:
        free(v5);
        return;
      }

      if (!v14)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_http2_stream_input_finished";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_http2_stream_input_finished";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_41;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(handle + 11);
        if (v11)
        {
          v12 = *(v11 + 492);
        }

        else
        {
          v12 = -1;
        }

        v17 = *(handle + 8);
        *buf = 136447234;
        v21 = "nw_protocol_webtransport_http2_stream_input_finished";
        v22 = 2082;
        v23 = handle + 192;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v12;
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    if (*(handle + 46) == 2)
    {
      nw_protocol_input_finished(*(handle + 6), a1);
    }

    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_http2_stream_input_finished";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_http2_stream_input_finished";
    v8 = "%{public}s called with null webtransport_stream";
    goto LABEL_40;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_http2_stream_input_finished";
    v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_40;
  }

  v15 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v16 = os_log_type_enabled(v6, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_http2_stream_input_finished";
    v8 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_40;
  }

  if (v16)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_http2_stream_input_finished";
    v22 = 2082;
    v23 = v15;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v5)
  {
    goto LABEL_42;
  }
}

uint64_t nw_protocol_webtransport_http2_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v15, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v16, &type, &v38))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v19 = "%{public}s called with null protocol";
LABEL_56:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }

LABEL_57:
      if (v16)
      {
        free(v16);
      }

      return 0;
    }

    if (v38 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v19 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v27 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v19 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v27)
    {
      *buf = 136446466;
      v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
      v42 = 2082;
      v43 = backtrace_string;
      v28 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_44:
      _os_log_impl(&dword_181A37000, v17, v18, v28, buf, 0x16u);
    }

LABEL_45:
    free(backtrace_string);
    goto LABEL_57;
  }

  handle = a1->handle;
  if (!handle)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
    v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v20, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v16, &type, &v38))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v19 = "%{public}s called with null webtransport_stream";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v38 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v19 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v29 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
        v19 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v29)
    {
      *buf = 136446466;
      v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
      v42 = 2082;
      v43 = backtrace_string;
      v28 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v21 = a1;
    v22 = __nwlog_obj();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    a1 = v21;
    if (v23)
    {
      v24 = handle[11];
      if (v24)
      {
        v25 = *(v24 + 492);
      }

      else
      {
        v25 = -1;
      }

      v30 = handle[8];
      *buf = 136447234;
      v41 = "nw_protocol_webtransport_http2_stream_finalize_output_frames";
      v42 = 2082;
      v43 = (handle + 24);
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v25;
      v48 = 2048;
      v49 = v30;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a1 = v21;
    }
  }

  if ((*(handle + 276) & 8) != 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = handle[8];
    if (v4 >= 0x40)
    {
      if (v4 >> 14)
      {
        if (v4 >> 30)
        {
          if (v4 >> 62)
          {
            v7 = a1;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v9 = 3;
            }

            else
            {
              v9 = 2;
            }

            *buf = 136446466;
            v41 = "_http_vle_encode";
            v42 = 2048;
            v43 = v4;
            v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s unable to encode value: %llu", buf, 22);
            result = __nwlog_should_abort(v10);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v10);
            v4 = 0;
            v5 = 0;
            a1 = v7;
          }

          else
          {
            v4 = bswap64(v4 | 0xC000000000000000);
            v5 = 8;
          }
        }

        else
        {
          v4 = bswap32(v4 | 0x80000000);
          v5 = 4;
        }
      }

      else
      {
        v4 = bswap32(v4 | 0x4000) >> 16;
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v32 = ___ZL60nw_protocol_webtransport_http2_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v33 = &__block_descriptor_tmp_48_37011;
    v37 = v5;
    v34 = a1;
    v35 = v4;
    v36 = handle;
    tqh_first = a2->tqh_first;
    v6 = 420171067;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v13 = *(tqh_first + 4);
      v14 = (v32)(v31);
      tqh_first = v13;
    }

    while ((v14 & 1) != 0);
  }

  return nw_http_capsule_framer_finalize_output_frames(handle[11] + 96, handle[11], v6, a2);
}

uint64_t ___ZL60nw_protocol_webtransport_http2_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_frame_unclaim(a2, a2, *(a1 + 56), 0);
  v6 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v6);
  memcpy(v4, (a1 + 40), *(a1 + 56));
  if (nw_frame_is_metadata_complete(a2))
  {
    *(*(a1 + 48) + 188) = 3;
  }

  return 1;
}

uint64_t nw_protocol_webtransport_http2_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  *&v75[11] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v29, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (!__nwlog_fault(v30, &type, &v66))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null protocol";
      goto LABEL_83;
    }

    if (v66 != 1)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_83;
    }

    backtrace_string = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type;
    v48 = os_log_type_enabled(v31, type);
    if (!backtrace_string)
    {
      if (!v48)
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_83;
    }

    if (!v48)
    {
      goto LABEL_68;
    }

    *buf = 136446466;
    v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v70 = 2082;
    v71 = backtrace_string;
    v49 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_67:
    _os_log_impl(&dword_181A37000, v31, v32, v49, buf, 0x16u);
    goto LABEL_68;
  }

  handle = a1->handle;
  if (!handle)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v34, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (!__nwlog_fault(v30, &type, &v66))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null webtransport_stream";
      goto LABEL_83;
    }

    if (v66 != 1)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_83;
    }

    backtrace_string = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type;
    v50 = os_log_type_enabled(v31, type);
    if (!backtrace_string)
    {
      if (!v50)
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_83;
    }

    if (!v50)
    {
      goto LABEL_68;
    }

    *buf = 136446466;
    v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v70 = 2082;
    v71 = backtrace_string;
    v49 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_67;
  }

  if (!a6)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v30 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null return_array", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v66 = 0;
    if (!__nwlog_fault(v30, &type, &v66))
    {
      goto LABEL_84;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null return_array";
      goto LABEL_83;
    }

    if (v66 != 1)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (!os_log_type_enabled(v31, type))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v33 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_83;
    }

    backtrace_string = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type;
    v51 = os_log_type_enabled(v31, type);
    if (backtrace_string)
    {
      if (v51)
      {
        *buf = 136446466;
        v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
        v70 = 2082;
        v71 = backtrace_string;
        v49 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_67;
      }

LABEL_68:
      free(backtrace_string);
      goto LABEL_84;
    }

    if (!v51)
    {
      goto LABEL_84;
    }

    *buf = 136446210;
    v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
    v33 = "%{public}s called with null return_array, no backtrace";
LABEL_83:
    _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
LABEL_84:
    if (v30)
    {
      free(v30);
    }

    return 0;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v36 = a6;
    v37 = a1;
    v38 = a5;
    v39 = a4;
    v40 = a3;
    v41 = a2;
    v42 = __nwlog_obj();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
    a2 = v41;
    LODWORD(a3) = v40;
    LODWORD(a4) = v39;
    a5 = v38;
    a6 = v36;
    v44 = v43;
    a1 = v37;
    if (v44)
    {
      v45 = *(handle + 11);
      if (v45)
      {
        v46 = *(v45 + 492);
      }

      else
      {
        v46 = -1;
      }

      v52 = *(handle + 8);
      *buf = 136447234;
      v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
      v70 = 2082;
      v71 = handle + 192;
      v72 = 2080;
      v73 = " ";
      v74 = 1024;
      *v75 = v46;
      v75[2] = 2048;
      *&v75[3] = v52;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a6 = v36;
      a1 = v37;
      a5 = v38;
      LODWORD(a4) = v39;
      LODWORD(a3) = v40;
      a2 = v41;
    }
  }

  if (*(handle + 6) != a2)
  {
    return 0;
  }

  if (*(handle + 47) != 2)
  {
    return 0;
  }

  v7 = *(handle + 11);
  v8 = *(handle + 8);
  if (*(v7 + 184) == v8)
  {
    return 0;
  }

  if ((handle[276] & 8) != 0)
  {
    result = nw_http_capsule_framer_get_output_frames(v7 + 96, v7, 0, a3, a4, a5, a6);
  }

  else
  {
    if (v8 >= 0x40)
    {
      if (v8 >= 0x4000)
      {
        if (v8 >> 30)
        {
          if (v8 >> 62)
          {
            v12 = a3;
            v13 = a4;
            v14 = a5;
            v15 = a1;
            v16 = a6;
            v17 = __nwlog_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = 3;
            }

            else
            {
              v18 = 2;
            }

            *buf = 136446466;
            v69 = "_http_vle_length";
            v70 = 2048;
            v71 = v8;
            v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s unable to calculate length, value: %llu", buf, 22);
            result = __nwlog_should_abort(v19);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v19);
            v11 = 0;
            v10 = 1;
            a6 = v16;
            a1 = v15;
            a5 = v14;
            LODWORD(a4) = v13;
            LODWORD(a3) = v12;
          }

          else
          {
            v10 = 0;
            v11 = 8;
          }
        }

        else
        {
          v10 = 0;
          v11 = 4;
        }
      }

      else
      {
        v10 = 0;
        v11 = 2;
      }
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    v20 = a3 + v11;
    if (__CFADD__(a3, v11))
    {
      if (gLogDatapath == 1)
      {
        v53 = a4;
        v54 = a5;
        v55 = a1;
        v56 = a6;
        v57 = __nwlog_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
          v70 = 2082;
          v71 = "minimum_bytes";
          v72 = 2048;
          v73 = v11;
          v74 = 2048;
          *v75 = v20;
          _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        LODWORD(v20) = -1;
        a6 = v56;
        a1 = v55;
        a5 = v54;
        LODWORD(a4) = v53;
      }

      else
      {
        LODWORD(v20) = -1;
      }
    }

    v21 = a5;
    v22 = a1;
    v23 = a6;
    v24 = a4 + v11;
    if (__CFADD__(a4, v11))
    {
      if (gLogDatapath == 1)
      {
        v58 = handle;
        v59 = a4 + v11;
        v60 = __nwlog_obj();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v69 = "nw_protocol_webtransport_http2_stream_get_output_frames";
          v70 = 2082;
          v71 = "maximum_bytes";
          v72 = 2048;
          v73 = v11;
          v74 = 2048;
          *v75 = v59;
          _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }

        v24 = -1;
        handle = v58;
      }

      else
      {
        v24 = -1;
      }
    }

    result = nw_http_capsule_framer_get_output_frames(*(handle + 11) + 96, *(handle + 11), 0x190B4D3BuLL, v20, v24, v21, v23);
    if ((v10 & 1) == 0)
    {
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 0x40000000;
      v62 = ___ZL55nw_protocol_webtransport_http2_stream_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v63 = &__block_descriptor_tmp_47_37033;
      v64 = v22;
      v65 = v11;
      tqh_first = v23->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v26 = *(tqh_first + 4);
        v27 = result;
        v28 = (v62)(v61);
        result = v27;
        tqh_first = v26;
      }

      while ((v28 & 1) != 0);
    }
  }

  if (result)
  {
    *(*(handle + 11) + 184) = *(handle + 8);
  }

  return result;
}

uint64_t nw_protocol_webtransport_http2_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v12, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v13, &type, &v37))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v37 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v26 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v26)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (!v26)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v27 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_39:
    _os_log_impl(&dword_181A37000, v14, v15, v27, buf, 0x16u);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (!handle)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v13, &type, &v37))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null webtransport_stream";
      goto LABEL_55;
    }

    if (v37 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v28 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v28)
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_55;
    }

    if (!v28)
    {
      goto LABEL_40;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v27 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_39;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s called with null input_protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v13, &type, &v37))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null input_protocol";
      goto LABEL_55;
    }

    if (v37 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      v16 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v29 = os_log_type_enabled(v14, type);
    if (backtrace_string)
    {
      if (v29)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v27 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_39;
      }

LABEL_40:
      free(backtrace_string);
      goto LABEL_56;
    }

    if (!v29)
    {
      goto LABEL_56;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
    v16 = "%{public}s called with null input_protocol, no backtrace";
LABEL_55:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
LABEL_56:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v19 = a6;
    v20 = a2;
    v21 = __nwlog_obj();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    a2 = v20;
    a6 = v19;
    if (v22)
    {
      v23 = handle[11];
      if (v23)
      {
        v24 = *(v23 + 492);
      }

      else
      {
        v24 = -1;
      }

      v30 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v24;
      v43 = 2048;
      v44 = v30;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a6 = v19;
      a2 = v20;
    }
  }

  if (handle[6] != a2 || *(handle + 46) != 2)
  {
    return 0;
  }

  a6->tqh_first = 0;
  a6->tqh_last = &a6->tqh_first;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  LODWORD(v40) = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v32 = ___ZL54nw_protocol_webtransport_http2_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
  v33 = &unk_1E6A31AA0;
  v35 = handle;
  v36 = a6;
  v34 = buf;
  v7 = handle[9];
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 32);
    v9 = v32(v31);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  v10 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v10;
}

uint64_t ___ZL54nw_protocol_webtransport_http2_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = (a1[5] + 80);
  v4 = (a2 + 32);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (v5)
  {
    v3 = (v5 + 40);
  }

  *v3 = v6;
  *v6 = v5;
  *(a2 + 40) = 0;
  *v4 = 0;
  v7 = a1[6];
  v8 = *(v7 + 8);
  *(a2 + 40) = v8;
  *v8 = a2;
  *(v7 + 8) = v4;
  if (nw_frame_is_metadata_complete(a2))
  {
    v9 = a1[5];
    if ((*(v9 + 276) & 8) == 0)
    {
      *(v9 + 184) = 3;
    }
  }

  v10 = *(a1[4] + 8);
  v11 = *(v10 + 24) + 1;
  *(v10 + 24) = v11;
  if (v11 != v11 << 31 >> 31)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = *(*(a1[4] + 8) + 24);
    *buf = 136446978;
    v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
    v28 = 2082;
    v29 = "count";
    v30 = 2048;
    v31 = 1;
    v32 = 2048;
    v33 = v12;
    v13 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 42);
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v13, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v16 = *(*(a1[4] + 8) + 24);
          *buf = 136446978;
          v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
          v28 = 2082;
          v29 = "count";
          v30 = 2048;
          v31 = 1;
          v32 = 2048;
          v33 = v16;
          v17 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_20:
          _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x2Au);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        v19 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v19)
          {
            v20 = *(*(a1[4] + 8) + 24);
            *buf = 136447234;
            v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
            v28 = 2082;
            v29 = "count";
            v30 = 2048;
            v31 = 1;
            v32 = 2048;
            v33 = v20;
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v19)
        {
          v22 = *(*(a1[4] + 8) + 24);
          *buf = 136446978;
          v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
          v28 = 2082;
          v29 = "count";
          v30 = 2048;
          v31 = 1;
          v32 = 2048;
          v33 = v22;
          v17 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_20;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v21 = *(*(a1[4] + 8) + 24);
          *buf = 136446978;
          v27 = "nw_protocol_webtransport_http2_stream_get_input_frames_block_invoke";
          v28 = 2082;
          v29 = "count";
          v30 = 2048;
          v31 = 1;
          v32 = 2048;
          v33 = v21;
          v17 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    if (v13)
    {
      free(v13);
    }

    *(*(a1[4] + 8) + 24) = -1;
  }

  return 1;
}

void nw_protocol_webtransport_http2_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v57 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_protocol_webtransport_http2_stream_connected";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (!__nwlog_fault(v58, &type, &v91))
    {
      goto LABEL_147;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_147;
      }

      *buf = 136446210;
      v94 = "nw_protocol_webtransport_http2_stream_connected";
      v61 = "%{public}s called with null protocol";
    }

    else if (v91 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v60 = type;
      v67 = os_log_type_enabled(v59, type);
      if (backtrace_string)
      {
        if (v67)
        {
          *buf = 136446466;
          v94 = "nw_protocol_webtransport_http2_stream_connected";
          v95 = 2082;
          v96 = backtrace_string;
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_147:
        if (!v58)
        {
          return;
        }

LABEL_148:
        free(v58);
        return;
      }

      if (!v67)
      {
        goto LABEL_147;
      }

      *buf = 136446210;
      v94 = "nw_protocol_webtransport_http2_stream_connected";
      v61 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (!os_log_type_enabled(v59, type))
      {
        goto LABEL_147;
      }

      *buf = 136446210;
      v94 = "nw_protocol_webtransport_http2_stream_connected";
      v61 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_146:
    _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
    goto LABEL_147;
  }

  handle = a1->handle;
  if (handle)
  {
    if (!*(handle + 11))
    {
      if ((handle[276] & 0x10) != 0)
      {
        return;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v10 = __nwlog_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v11 = *(handle + 11);
      if (v11)
      {
        v12 = *(v11 + 492);
      }

      else
      {
        v12 = -1;
      }

      v88 = *(handle + 8);
      *buf = 136447234;
      v94 = "nw_protocol_webtransport_http2_stream_connected";
      v95 = 2082;
      v96 = handle + 192;
      v97 = 2080;
      v98 = " ";
      v99 = 1024;
      v100 = v12;
      v101 = 2048;
      v102 = v88;
      v50 = "%{public}s %{public}s%s<i%u:s%llu> Stream is not fully setup. Ignoring connected.";
      v51 = v10;
      v52 = OS_LOG_TYPE_DEBUG;
      goto LABEL_81;
    }

    if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
    {
      v63 = __nwlog_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(handle + 11);
        if (v64)
        {
          v65 = *(v64 + 492);
        }

        else
        {
          v65 = -1;
        }

        v81 = *(handle + 8);
        *buf = 136447234;
        v94 = "nw_protocol_webtransport_http2_stream_connected";
        v95 = 2082;
        v96 = handle + 192;
        v97 = 2080;
        v98 = " ";
        v99 = 1024;
        v100 = v65;
        v101 = 2048;
        v102 = v81;
        _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Got a connected event from the lower layer", buf, 0x30u);
      }
    }

    nw_protocol_connected(a1->default_input_handler, a2);
    v5 = *(handle + 11);
    v6 = handle[276];
    if (v5 != a2)
    {
      if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
      {
        v7 = __nwlog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(handle + 11);
          if (v8)
          {
            v9 = *(v8 + 492);
          }

          else
          {
            v9 = -1;
          }

          v87 = *(handle + 8);
          *buf = 136447490;
          v94 = "nw_protocol_webtransport_http2_stream_connected";
          v95 = 2082;
          v96 = handle + 192;
          v97 = 2080;
          v98 = " ";
          v99 = 1024;
          v100 = v9;
          v101 = 2048;
          v102 = v87;
          v103 = 2048;
          *v104 = v5;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> connected protocol is not our WebTransport session (%p), ignoring", buf, 0x3Au);
        }
      }

      return;
    }

    if ((handle[276] & 4) == 0)
    {
      v13 = *(handle + 47);
      if (v13)
      {
        goto LABEL_19;
      }

LABEL_33:
      v13 = 2;
      *(handle + 47) = 2;
      v14 = *(handle + 46);
      if (v14)
      {
LABEL_20:
        if (a2)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }

LABEL_34:
      v14 = 2;
      *(handle + 46) = 2;
      if (a2)
      {
LABEL_21:
        v15 = *(v5 + 176);
        if (v15 == -1)
        {
          if ((v6 & 8) != 0)
          {
            v15 = -2;
            goto LABEL_40;
          }

          if (v13 == 3)
          {
            v15 = -1;
            goto LABEL_40;
          }

          v46 = *(v5 + 580);
          if (v14 == 3)
          {
            v47 = *(v5 + 296);
            v15 = v46 & 1 | (4 * v47) | 2;
            *(v5 + 296) = v47 + 1;
            *(v5 + 304) = v15;
            if ((v46 & 2) != 0)
            {
              goto LABEL_40;
            }

            v16 = __nwlog_obj();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_40;
            }

            v48 = *(v5 + 492);
            *buf = 136447234;
            v94 = "nw_webtransport_stream_allocate_new_id";
            v95 = 2082;
            v96 = (v5 + 496);
            v97 = 2080;
            v98 = " ";
            v99 = 1024;
            v100 = v48;
            v101 = 2048;
            v102 = v15;
            v18 = "%{public}s %{public}s%s<i%u> allocated new stream id %llu for unidirectional stream";
          }

          else
          {
            v15 = v46 & 1 | (4 * ((*(v5 + 232))++ & 0x3FFFFFFFLL));
            *(v5 + 240) = v15;
            if ((v46 & 2) != 0)
            {
              goto LABEL_40;
            }

            v16 = __nwlog_obj();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_40;
            }

            v53 = *(v5 + 492);
            *buf = 136447234;
            v94 = "nw_webtransport_stream_allocate_new_id";
            v95 = 2082;
            v96 = (v5 + 496);
            v97 = 2080;
            v98 = " ";
            v99 = 1024;
            v100 = v53;
            v101 = 2048;
            v102 = v15;
            v18 = "%{public}s %{public}s%s<i%u> allocated new stream id %llu for bidirectional stream";
          }
        }

        else
        {
          if ((*(v5 + 580) & 2) != 0)
          {
            goto LABEL_40;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_40;
          }

          v17 = *(v5 + 492);
          *buf = 136447234;
          v94 = "nw_webtransport_stream_allocate_new_id";
          v95 = 2082;
          v96 = (v5 + 496);
          v97 = 2080;
          v98 = " ";
          v99 = 1024;
          v100 = v17;
          v101 = 2048;
          v102 = v15;
          v18 = "%{public}s %{public}s%s<i%u> new incoming stream id %llu";
        }

        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, v18, buf, 0x30u);
LABEL_40:
        *(handle + 8) = v15;
        goto LABEL_41;
      }

LABEL_35:
      v19 = __nwlog_obj();
      *buf = 136446210;
      v94 = "nw_webtransport_stream_allocate_new_id";
      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      v20 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v19, 16, "%{public}s called with null webtransport_session", buf, 12);
      if (!__nwlog_fault(v20, &type, &v91))
      {
        goto LABEL_162;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        v94 = "nw_webtransport_stream_allocate_new_id";
        v23 = "%{public}s called with null webtransport_session";
      }

      else if (v91 == 1)
      {
        v79 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v80 = os_log_type_enabled(v21, type);
        if (v79)
        {
          if (v80)
          {
            *buf = 136446466;
            v94 = "nw_webtransport_stream_allocate_new_id";
            v95 = 2082;
            v96 = v79;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v79);
          goto LABEL_162;
        }

        if (!v80)
        {
LABEL_162:
          if (v20)
          {
            free(v20);
          }

LABEL_41:
          v24 = *(handle + 11);
          if (v24)
          {
            if (*(handle + 8) == -2)
            {
              if (*(v24 + 448))
              {
                if ((*(v24 + 580) & 2) != 0)
                {
                  goto LABEL_60;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v25 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_60;
                }

                v26 = *(v24 + 492);
                *buf = 136446978;
                v94 = "nw_webtransport_session_add_stream";
                v95 = 2082;
                v96 = (v24 + 496);
                v97 = 2080;
                v98 = " ";
                v99 = 1024;
                v100 = v26;
                v27 = "%{public}s %{public}s%s<i%u> WebTransport already has datagram stream registered";
                v28 = v25;
                v29 = OS_LOG_TYPE_ERROR;
                v30 = 38;
LABEL_56:
                _os_log_impl(&dword_181A37000, v28, v29, v27, buf, v30);
LABEL_60:
                v35 = handle[276];
                if (a1->default_input_handler)
                {
                  if ((handle[276] & 1) == 0)
                  {
                    v36 = *(handle + 8);
                    if (v36 == -1)
                    {
                      if ((handle[276] & 0x10) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v43 = gLogObj;
                        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                        {
                          v44 = *(handle + 11);
                          if (v44)
                          {
                            v45 = *(v44 + 492);
                          }

                          else
                          {
                            v45 = -1;
                          }

                          v56 = *(handle + 8);
                          *buf = 136447234;
                          v94 = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          v95 = 2082;
                          v96 = handle + 192;
                          v97 = 2080;
                          v98 = " ";
                          v99 = 1024;
                          v100 = v45;
                          v101 = 2048;
                          v102 = v56;
                          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Not configuring webtransport stream metadata with no stream ID set", buf, 0x30u);
                          if ((handle[276] & 0x10) == 0)
                          {
LABEL_89:
                            if (gLogDatapath == 1)
                            {
                              v76 = __nwlog_obj();
                              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                              {
                                v77 = *(handle + 11);
                                if (v77)
                                {
                                  v78 = *(v77 + 492);
                                }

                                else
                                {
                                  v78 = -1;
                                }

                                v89 = *(handle + 8);
                                *buf = 136448002;
                                v94 = "nw_protocol_webtransport_http2_stream_connected";
                                v95 = 2082;
                                v96 = handle + 192;
                                v97 = 2080;
                                v98 = " ";
                                v99 = 1024;
                                v100 = v78;
                                v101 = 2048;
                                v102 = v89;
                                v103 = 2048;
                                *v104 = a1;
                                *&v104[8] = 2048;
                                v105 = v89;
                                v106 = 2048;
                                v107 = a2;
                                _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> webtransport http2 stream %p with id %llu connected with output_handler %p", buf, 0x4Eu);
                              }
                            }
                          }

LABEL_90:
                          nw_protocol_connected(a1->default_input_handler, a1);
                          return;
                        }
                      }
                    }

                    else
                    {
                      handle[276] = v35 & 0xF0 | (4 * ((v36 & 2) != 0)) | 3;
                      if ((v35 & 0x10) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v37 = gLogObj;
                        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                        {
                          v38 = *(handle + 11);
                          if (v38)
                          {
                            v39 = *(v38 + 492);
                          }

                          else
                          {
                            v39 = -1;
                          }

                          v54 = *(handle + 8);
                          v55 = handle[276];
                          *buf = 136448002;
                          v94 = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          v95 = 2082;
                          v96 = handle + 192;
                          v97 = 2080;
                          v98 = " ";
                          v99 = 1024;
                          v100 = v39;
                          v101 = 2048;
                          v102 = v54;
                          v103 = 1024;
                          *v104 = (v55 >> 1) & 1;
                          *&v104[4] = 1024;
                          *&v104[6] = (v55 >> 3) & 1;
                          LOWORD(v105) = 1024;
                          *(&v105 + 2) = (v55 >> 2) & 1;
                          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                        }
                      }

                      nw_webtransport_metadata_set_is_peer_initiated(*(handle + 20), (handle[276] & 2) != 0);
                      nw_webtransport_metadata_set_is_datagram(*(handle + 20), (handle[276] & 8) != 0);
                      nw_webtransport_metadata_set_is_unidirectional(*(handle + 20), (handle[276] & 4) != 0);
                    }
                  }

                  if ((handle[276] & 0x10) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_90;
                }

                if ((handle[276] & 0x10) != 0)
                {
                  return;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v40 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                v41 = *(handle + 11);
                if (v41)
                {
                  v42 = *(v41 + 492);
                }

                else
                {
                  v42 = -1;
                }

                v49 = *(handle + 8);
                *buf = 136447234;
                v94 = "nw_protocol_webtransport_http2_stream_connected";
                v95 = 2082;
                v96 = handle + 192;
                v97 = 2080;
                v98 = " ";
                v99 = 1024;
                v100 = v42;
                v101 = 2048;
                v102 = v49;
                v50 = "%{public}s %{public}s%s<i%u:s%llu> No input handler found, ignoring connected call";
                v51 = v40;
                v52 = OS_LOG_TYPE_ERROR;
LABEL_81:
                _os_log_impl(&dword_181A37000, v51, v52, v50, buf, 0x30u);
                return;
              }

              *(v24 + 448) = handle;
            }

            else
            {
              internal = *(v24 + 192);
              if (!internal)
              {
                internal = nw_hash_table_create_internal(0x11u, 0, nw_webtransport_stream_get_key, nw_webtransport_stream_key_hash, nw_webtransport_stream_matches_key, 0, 0);
                if (internal)
                {
                  *(internal + 56) &= ~2u;
                }

                *(v24 + 192) = internal;
              }

              type = OS_LOG_TYPE_DEFAULT;
              nw_hash_table_add_object(internal, handle, &type);
              if ((type & 1) == 0)
              {
                if ((*(v24 + 580) & 2) != 0)
                {
                  goto LABEL_60;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_60;
                }

                v33 = *(v24 + 492);
                v34 = *(handle + 8);
                *buf = 136447234;
                v94 = "nw_webtransport_session_add_stream";
                v95 = 2082;
                v96 = (v24 + 496);
                v97 = 2080;
                v98 = " ";
                v99 = 1024;
                v100 = v33;
                v101 = 2048;
                v102 = v34;
                v27 = "%{public}s %{public}s%s<i%u> WebTransport already has stream id registered for %llu";
                v28 = v32;
                v29 = OS_LOG_TYPE_ERROR;
LABEL_55:
                v30 = 48;
                goto LABEL_56;
              }
            }

            if ((*(v24 + 580) & 2) != 0)
            {
              goto LABEL_60;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_60;
            }

            v84 = __nwlog_obj();
            if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_60;
            }

            v85 = *(v24 + 492);
            v86 = *(handle + 8);
            *buf = 136447234;
            v94 = "nw_webtransport_session_add_stream";
            v95 = 2082;
            v96 = (v24 + 496);
            v97 = 2080;
            v98 = " ";
            v99 = 1024;
            v100 = v85;
            v101 = 2048;
            v102 = v86;
            v27 = "%{public}s %{public}s%s<i%u> Added stream %llu to WebTransport streams";
            v28 = v84;
            v29 = OS_LOG_TYPE_DEBUG;
            goto LABEL_55;
          }

          v70 = __nwlog_obj();
          *buf = 136446210;
          v94 = "nw_webtransport_session_add_stream";
          LODWORD(v90) = 12;
          v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v70, 16, "%{public}s called with null webtransport_session", buf, v90);
          type = OS_LOG_TYPE_ERROR;
          v91 = 0;
          v72 = v71;
          if (__nwlog_fault(v71, &type, &v91))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v73 = __nwlog_obj();
              v74 = type;
              if (!os_log_type_enabled(v73, type))
              {
                goto LABEL_167;
              }

              *buf = 136446210;
              v94 = "nw_webtransport_session_add_stream";
              v75 = "%{public}s called with null webtransport_session";
              goto LABEL_166;
            }

            if (v91 != 1)
            {
              v73 = __nwlog_obj();
              v74 = type;
              if (!os_log_type_enabled(v73, type))
              {
                goto LABEL_167;
              }

              *buf = 136446210;
              v94 = "nw_webtransport_session_add_stream";
              v75 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
              goto LABEL_166;
            }

            v82 = __nw_create_backtrace_string();
            v73 = __nwlog_obj();
            v74 = type;
            v83 = os_log_type_enabled(v73, type);
            if (v82)
            {
              if (v83)
              {
                *buf = 136446466;
                v94 = "nw_webtransport_session_add_stream";
                v95 = 2082;
                v96 = v82;
                _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v82);
              goto LABEL_167;
            }

            if (v83)
            {
              *buf = 136446210;
              v94 = "nw_webtransport_session_add_stream";
              v75 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_166:
              _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
            }
          }

LABEL_167:
          if (v72)
          {
            free(v72);
          }

          goto LABEL_60;
        }

        *buf = 136446210;
        v94 = "nw_webtransport_stream_allocate_new_id";
        v23 = "%{public}s called with null webtransport_session, no backtrace";
      }

      else
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        v94 = "nw_webtransport_stream_allocate_new_id";
        v23 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
      goto LABEL_162;
    }

    if ((handle[276] & 2) != 0)
    {
      *(handle + 47) = 3;
      v13 = *(handle + 47);
      if (!v13)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *(handle + 46) = 3;
      v13 = *(handle + 47);
      if (!v13)
      {
        goto LABEL_33;
      }
    }

LABEL_19:
    v14 = *(handle + 46);
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  v62 = __nwlog_obj();
  *buf = 136446210;
  v94 = "nw_protocol_webtransport_http2_stream_connected";
  v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s called with null webtransport_stream", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v91 = 0;
  if (!__nwlog_fault(v58, &type, &v91))
  {
    goto LABEL_147;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v59 = __nwlog_obj();
    v60 = type;
    if (!os_log_type_enabled(v59, type))
    {
      goto LABEL_147;
    }

    *buf = 136446210;
    v94 = "nw_protocol_webtransport_http2_stream_connected";
    v61 = "%{public}s called with null webtransport_stream";
    goto LABEL_146;
  }

  if (v91 != 1)
  {
    v59 = __nwlog_obj();
    v60 = type;
    if (!os_log_type_enabled(v59, type))
    {
      goto LABEL_147;
    }

    *buf = 136446210;
    v94 = "nw_protocol_webtransport_http2_stream_connected";
    v61 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_146;
  }

  v68 = __nw_create_backtrace_string();
  v59 = __nwlog_obj();
  v60 = type;
  v69 = os_log_type_enabled(v59, type);
  if (!v68)
  {
    if (!v69)
    {
      goto LABEL_147;
    }

    *buf = 136446210;
    v94 = "nw_protocol_webtransport_http2_stream_connected";
    v61 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_146;
  }

  if (v69)
  {
    *buf = 136446466;
    v94 = "nw_protocol_webtransport_http2_stream_connected";
    v95 = 2082;
    v96 = v68;
    _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v68);
  if (v58)
  {
    goto LABEL_148;
  }
}

uint64_t nw_protocol_webtransport_http2_stream_connect(nw_protocol *a1, nw_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v11 = __nwlog_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = handle[11];
          if (v12)
          {
            v13 = *(v12 + 492);
          }

          else
          {
            v13 = -1;
          }

          v18 = handle[8];
          *buf = 136447234;
          v22 = "nw_protocol_webtransport_http2_stream_connect";
          v23 = 2082;
          v24 = (handle + 24);
          v25 = 2080;
          v26 = " ";
          v27 = 1024;
          v28 = v13;
          v29 = 2048;
          v30 = v18;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      nw_protocol_connected(a1->default_input_handler, a1);
      return 1;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http2_stream_connect";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http2_stream_connect";
        v9 = "%{public}s called with null webtransport_stream";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v19 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http2_stream_connect";
        v9 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v17 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http2_stream_connect";
        v9 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_http2_stream_connect";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_http2_stream_connect";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_39;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v19 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http2_stream_connect";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v15 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_http2_stream_connect";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v15)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_http2_stream_connect";
      v23 = 2082;
      v24 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v7, v8, v16, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_39;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_http2_stream_connect";
    v9 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
  }

LABEL_39:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_http2_stream_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v208 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v141 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v194[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v142, type, v194))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null protocol";
      goto LABEL_279;
    }

    if (v194[0] != OS_LOG_TYPE_INFO)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v152 = os_log_type_enabled(v143, type[0]);
    if (!backtrace_string)
    {
      if (!v152)
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_279;
    }

    if (!v152)
    {
      goto LABEL_253;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v153 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_252:
    _os_log_impl(&dword_181A37000, v143, v144, v153, buf, 0x16u);
    goto LABEL_253;
  }

  handle = a1->handle;
  if (!handle)
  {
    v146 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null webtransport_stream", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v194[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v142, type, v194))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null webtransport_stream";
      goto LABEL_279;
    }

    if (v194[0] != OS_LOG_TYPE_INFO)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v154 = os_log_type_enabled(v143, type[0]);
    if (!backtrace_string)
    {
      if (!v154)
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_279;
    }

    if (!v154)
    {
      goto LABEL_253;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v153 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_252;
  }

  if (!a2)
  {
    v147 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v147, 16, "%{public}s called with null input_protocol", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v194[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v142, type, v194))
    {
      goto LABEL_280;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null input_protocol";
      goto LABEL_279;
    }

    if (v194[0] != OS_LOG_TYPE_INFO)
    {
      v143 = __nwlog_obj();
      v144 = type[0];
      if (!os_log_type_enabled(v143, type[0]))
      {
        goto LABEL_280;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      v145 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_279;
    }

    backtrace_string = __nw_create_backtrace_string();
    v143 = __nwlog_obj();
    v144 = type[0];
    v155 = os_log_type_enabled(v143, type[0]);
    if (backtrace_string)
    {
      if (v155)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v153 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_252;
      }

LABEL_253:
      free(backtrace_string);
      goto LABEL_280;
    }

    if (!v155)
    {
      goto LABEL_280;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
    v145 = "%{public}s called with null input_protocol, no backtrace";
LABEL_279:
    _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0xCu);
LABEL_280:
    if (v142)
    {
      free(v142);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v148 = __nwlog_obj();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
    {
      v149 = handle[11];
      if (v149)
      {
        v150 = *(v149 + 492);
      }

      else
      {
        v150 = -1;
      }

      v161 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v202 = " ";
      *v203 = 1024;
      *&v203[2] = v150;
      *&v203[6] = 2048;
      *&v203[8] = v161;
      _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  v5 = &qword_1ED411000;
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = handle[11];
      if (v7)
      {
        v8 = *(v7 + 492);
      }

      else
      {
        v8 = -1;
      }

      v9 = handle[8];
      default_input_handler = a1->default_input_handler;
      *buf = 136448002;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v202 = " ";
      *v203 = 1024;
      *&v203[2] = v8;
      *&v203[6] = 2048;
      *&v203[8] = v9;
      *&v203[16] = 2048;
      *&v203[18] = a1;
      v204 = 2048;
      v205 = default_input_handler;
      v206 = 2048;
      v207 = a2;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:s%llu> protocol %p, default_input_handler %p, input protocol %p", buf, 0x4Eu);
    }
  }

  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  nw_protocol_set_output_handler(a1, 0);
  v182 = handle[11];
  if (!v182)
  {
    v156 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    v157 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v156, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v194[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v157, type, v194))
    {
      goto LABEL_294;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_294;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v160 = "%{public}s called with null webtransport_session";
    }

    else if (v194[0] == OS_LOG_TYPE_INFO)
    {
      v162 = __nw_create_backtrace_string();
      v158 = __nwlog_obj();
      v159 = type[0];
      v163 = os_log_type_enabled(v158, type[0]);
      if (v162)
      {
        if (v163)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v162;
          _os_log_impl(&dword_181A37000, v158, v159, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v162);
        goto LABEL_294;
      }

      if (!v163)
      {
LABEL_294:
        if (v157)
        {
          free(v157);
        }

        goto LABEL_85;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v160 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v158 = __nwlog_obj();
      v159 = type[0];
      if (!os_log_type_enabled(v158, type[0]))
      {
        goto LABEL_294;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v160 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v158, v159, v160, buf, 0xCu);
    goto LABEL_294;
  }

  if ((*(handle + 276) & 0x20) != 0)
  {
    if ((*(v182 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v164 = __nwlog_obj();
      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
      {
        v165 = *(v182 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v182 + 496;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v165;
        *&v203[6] = 2048;
        *&v203[8] = handle;
        _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
      }
    }

    if ((*(handle + 276) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_session_remove_pending_stream";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      v16 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s stream %p not in pending list, cannot remove", buf, 22);
      type[0] = OS_LOG_TYPE_ERROR;
      v194[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v16, type, v194))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            v19 = "%{public}s stream %p not in pending list, cannot remove";
LABEL_57:
            v38 = v17;
            v39 = v18;
LABEL_58:
            _os_log_impl(&dword_181A37000, v38, v39, v19, buf, 0x16u);
          }
        }

        else if (v194[0] == OS_LOG_TYPE_INFO)
        {
          v30 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v32 = type[0];
          v33 = os_log_type_enabled(gLogObj, type[0]);
          if (v30)
          {
            if (v33)
            {
              *buf = 136446722;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              *&buf[12] = 2048;
              *&buf[14] = handle;
              *&buf[22] = 2082;
              v202 = v30;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v30);
            goto LABEL_59;
          }

          if (v33)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            v19 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
            v38 = v31;
            v39 = v32;
            goto LABEL_58;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            v19 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
            goto LABEL_57;
          }
        }
      }

LABEL_59:
      if (v16)
      {
        free(v16);
      }

      v5 = &qword_1ED411000;
      goto LABEL_78;
    }

    v20 = handle[14];
    v21 = handle[15];
    v22 = (v182 + 344);
    if (v20)
    {
      v22 = (v20 + 120);
    }

    *v22 = v21;
    *v21 = v20;
    handle[14] = 0;
    handle[15] = 0;
    v23 = *(v182 + 488);
    *(v182 + 488) = v23 - 1;
    if (v23)
    {
LABEL_76:
      v48 = *(handle + 276);
      *(handle + 276) = v48 & 0xDF;
      if ((v48 & 0x10) == 0 && gLogDatapath == 1)
      {
        v166 = __nwlog_obj();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
        {
          v167 = handle[11];
          if (v167)
          {
            v168 = *(v167 + 492);
          }

          else
          {
            v168 = -1;
          }

          v173 = handle[8];
          v174 = *(v182 + 488);
          *buf = 136447746;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v202 = " ";
          *v203 = 1024;
          *&v203[2] = v168;
          *&v203[6] = 2048;
          *&v203[8] = v173;
          *&v203[16] = 2048;
          *&v203[18] = handle;
          v204 = 1024;
          LODWORD(v205) = v174;
          v15 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
          v35 = v166;
          v36 = OS_LOG_TYPE_DEBUG;
          v37 = 64;
          goto LABEL_54;
        }
      }

      goto LABEL_78;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = *(v182 + 488);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "webtransport_session->pending_stream_count";
    *&buf[22] = 2048;
    v202 = 1;
    *v203 = 2048;
    *&v203[2] = v24;
    v25 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
    type[0] = OS_LOG_TYPE_ERROR;
    v194[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v25, type, v194))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type[0];
        if (os_log_type_enabled(v26, type[0]))
        {
          v28 = *(v182 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v202 = 1;
          *v203 = 2048;
          *&v203[2] = v28;
          v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_71:
          v46 = v26;
          v47 = v27;
LABEL_72:
          _os_log_impl(&dword_181A37000, v46, v47, v29, buf, 0x2Au);
        }
      }

      else if (v194[0] == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type[0];
        v43 = os_log_type_enabled(v41, type[0]);
        if (v40)
        {
          if (v43)
          {
            v44 = *(v182 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "webtransport_session->pending_stream_count";
            *&buf[22] = 2048;
            v202 = 1;
            *v203 = 2048;
            *&v203[2] = v44;
            *&v203[10] = 2082;
            *&v203[12] = v40;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v40);
          goto LABEL_73;
        }

        if (v43)
        {
          v139 = *(v182 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v202 = 1;
          *v203 = 2048;
          *&v203[2] = v139;
          v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          v46 = v41;
          v47 = v42;
          goto LABEL_72;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type[0];
        if (os_log_type_enabled(v26, type[0]))
        {
          v45 = *(v182 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v202 = 1;
          *v203 = 2048;
          *&v203[2] = v45;
          v29 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_73:
    if (v25)
    {
      free(v25);
    }

    *(v182 + 488) = 0;
    v5 = &qword_1ED411000;
    goto LABEL_76;
  }

  if (*(v182 + 440) == handle)
  {
    if ((*(v182 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v169 = __nwlog_obj();
      if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
      {
        v170 = *(v182 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v182 + 496;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v170;
        _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
      }
    }

    *(v182 + 440) = 0;
  }

  else if (*(v182 + 448) == handle)
  {
    if ((*(v182 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v171 = __nwlog_obj();
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
      {
        v172 = *(v182 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v182 + 496;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v172;
        _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
      }
    }

    *(v182 + 448) = 0;
  }

  else
  {
    *type = handle[8];
    node = nw_hash_table_get_node(*(v182 + 192), type, 8);
    if (node)
    {
      if ((nw_hash_table_remove_node(*(v182 + 192), node) & 1) == 0 && (*(v182 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v14 = *(v182 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v182 + 496;
          *&buf[22] = 2080;
          v202 = " ";
          *v203 = 1024;
          *&v203[2] = v14;
          *&v203[6] = 2048;
          *&v203[8] = *type;
          v15 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
LABEL_53:
          v35 = v13;
          v36 = OS_LOG_TYPE_ERROR;
          v37 = 48;
LABEL_54:
          _os_log_impl(&dword_181A37000, v35, v36, v15, buf, v37);
        }
      }
    }

    else if ((*(v182 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v182 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v182 + 496;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v34;
        *&v203[6] = 2048;
        *&v203[8] = *type;
        v15 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
        goto LABEL_53;
      }
    }
  }

LABEL_78:
  handle[11] = 0;
  v49 = v182;
  if (*(v182 + 48) != handle)
  {
    goto LABEL_85;
  }

  if (*(v182 + 476))
  {
    v50 = *(v182 + 448);
    if (v50)
    {
LABEL_81:
      nw_protocol_set_input_handler(v49, v50);
      if ((*(v49 + 580) & 2) != 0)
      {
        goto LABEL_85;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = v5[275];
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      v52 = *(v49 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v49 + 496;
      *&buf[22] = 2080;
      v202 = " ";
      *v203 = 1024;
      *&v203[2] = v52;
      v53 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
      goto LABEL_84;
    }
  }

  else
  {
    if ((*(v182 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v61 = v5[275];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = *(v182 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v182 + 496;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v62;
        _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
      }
    }

    v49 = v182;
    v63 = *(v182 + 464);
    v64 = *(v182 + 416);
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 0x40000000;
    v183[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
    v183[3] = &unk_1E6A31A10;
    v183[4] = v63;
    nw_queue_context_async(v64, v183);
    v50 = *(v182 + 448);
    if (v50)
    {
      goto LABEL_81;
    }
  }

  v65 = *(v49 + 192);
  if (v65 && v65[12]._os_unfair_lock_opaque)
  {
    some_node = nw_hash_table_get_some_node(v65);
    object = nw_hash_node_get_object(some_node);
    nw_protocol_set_input_handler(v182, object);
    if ((*(v182 + 580) & 2) != 0)
    {
      goto LABEL_85;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v51 = v5[275];
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    v68 = *(v182 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    *&buf[12] = 2082;
    *&buf[14] = v182 + 496;
    *&buf[22] = 2080;
    v202 = " ";
    *v203 = 1024;
    *&v203[2] = v68;
    v53 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
    goto LABEL_84;
  }

  if (!*(v182 + 488))
  {
    v79 = *(v182 + 440);
    if (v79)
    {
      nw_protocol_set_input_handler(v182, v79);
      if ((*(v182 + 580) & 2) != 0)
      {
        goto LABEL_85;
      }

      v51 = __nwlog_obj();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      v80 = *(v182 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v182 + 496;
      *&buf[22] = 2080;
      v202 = " ";
      *v203 = 1024;
      *&v203[2] = v80;
      v53 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
      goto LABEL_84;
    }

    nw_protocol_set_input_handler(v182, 0);
    if ((*(v182 + 580) & 2) == 0)
    {
      v81 = __nwlog_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v82 = *(v182 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v182 + 496;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v82;
        _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
      }
    }

    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v182 + 368, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v182 + 384, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v182 + 400, buf);
    nw_http_capsule_framer_cleanup((v182 + 96));
    v83 = *(v182 + 424);
    if (v83)
    {
      (*(*v83 + 8))(v83, v182, 0);
    }

    if ((*(v182 + 580) & 4) != 0)
    {
      if ((nw_protocol_remove_listen_handler(*(v182 + 432), v182 + 64) & 1) == 0 && (*(v182 + 580) & 2) == 0)
      {
        v84 = __nwlog_obj();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = *(v182 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v182 + 496;
          *&buf[22] = 2080;
          v202 = " ";
          *v203 = 1024;
          *&v203[2] = v85;
          _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
        }
      }

      *(v182 + 432) = 0;
    }

    v86 = *(v182 + 32);
    if (v86)
    {
      nw_protocol_remove_input_handler(v86, v182);
      if (*(v182 + 476) != 5)
      {
        nw_protocol_remove_instance(v182);
      }
    }

    v190 = 0;
    v191 = &v190;
    v192 = 0x2000000000;
    v193 = 0;
    v87 = *(v182 + 192);
    if (v87)
    {
      *type = MEMORY[0x1E69E9820];
      v185 = 0x40000000;
      v186 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
      v187 = &unk_1E6A31A38;
      v188 = &v190;
      v189 = v182;
      nw_hash_table_apply(v87, type);
      v88 = *(v182 + 192);
      if (v88)
      {
        _nw_hash_table_release(v88);
        *(v182 + 192) = 0;
      }
    }

    v89 = *(v182 + 336);
    v191[3] = v89;
    if (!v89)
    {
      (*(*(v182 + 464) + 16))();
      v140 = *(v182 + 464);
      if (v140)
      {
        _Block_release(v140);
        *(v182 + 464) = 0;
      }

      std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(v182);
      free(v182);
      _Block_object_dispose(&v190, 8);
      goto LABEL_85;
    }

    for (i = v182; ; i = v182)
    {
      v89 = *(v89 + 112);
      if ((*(i + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v91 = v5[275];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v92 = *(i + 492);
          v93 = v191[3];
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v182 + 496;
          *&buf[22] = 2080;
          v202 = " ";
          *v203 = 1024;
          *&v203[2] = v92;
          *&v203[6] = 2048;
          *&v203[8] = v93;
          _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v94 = v5[275];
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy";
      LODWORD(v181) = 12;
      v95 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v94, 16, "%{public}s should not have streams left when destroying", buf, v181);
      v194[0] = OS_LOG_TYPE_ERROR;
      v200 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v95, v194, &v200))
      {
        if (v194[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v96 = gLogObj;
          v97 = v194[0];
          if (!os_log_type_enabled(gLogObj, v194[0]))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v98 = v96;
          v99 = v97;
          v100 = "%{public}s should not have streams left when destroying";
LABEL_170:
          _os_log_impl(&dword_181A37000, v98, v99, v100, buf, 0xCu);
          goto LABEL_171;
        }

        if (v200 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v105 = gLogObj;
          v106 = v194[0];
          if (!os_log_type_enabled(gLogObj, v194[0]))
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v98 = v105;
          v99 = v106;
          v100 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
          goto LABEL_170;
        }

        v101 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v102 = gLogObj;
        v103 = v194[0];
        v104 = os_log_type_enabled(gLogObj, v194[0]);
        if (!v101)
        {
          if (!v104)
          {
            goto LABEL_171;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v98 = v102;
          v99 = v103;
          v100 = "%{public}s should not have streams left when destroying, no backtrace";
          goto LABEL_170;
        }

        if (v104)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v101;
          _os_log_impl(&dword_181A37000, v102, v103, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v101);
      }

LABEL_171:
      if (v95)
      {
        free(v95);
      }

      v107 = *(v89 + 112);
      v108 = *(v89 + 120);
      v109 = (v107 + 120);
      if (!v107)
      {
        v109 = (v182 + 344);
      }

      *v109 = v108;
      *v108 = v107;
      *(v89 + 112) = 0;
      *(v89 + 120) = 0;
      v110 = v191[3];
      v5 = &qword_1ED411000;
      if (v110)
      {
        if ((*(v110 + 276) & 0x10) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v111 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v112 = *(v110 + 88);
            if (v112)
            {
              v113 = *(v112 + 492);
            }

            else
            {
              v113 = -1;
            }

            v114 = *(v110 + 64);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_stream_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v110 + 192;
            *&buf[22] = 2080;
            v202 = " ";
            *v203 = 1024;
            *&v203[2] = v113;
            *&v203[6] = 2048;
            *&v203[8] = v114;
            *&v203[16] = 2048;
            *&v203[18] = v110;
            _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
          }
        }

        if (*(v110 + 72))
        {
          if ((*(v110 + 276) & 0x10) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v115 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v116 = *(v110 + 88);
              if (v116)
              {
                v117 = *(v116 + 492);
              }

              else
              {
                v117 = -1;
              }

              v118 = *(v110 + 64);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v110 + 192;
              *&buf[22] = 2080;
              v202 = " ";
              *v203 = 1024;
              *&v203[2] = v117;
              *&v203[6] = 2048;
              *&v203[8] = v118;
              _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
            }
          }
        }

        *v194 = MEMORY[0x1E69E9820];
        v195 = 0x40000000;
        v196 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
        v197 = &__block_descriptor_tmp_39_36819;
        v198 = v110;
        v119 = *(v110 + 72);
        do
        {
          if (!v119)
          {
            break;
          }

          v120 = *(v119 + 32);
          v121 = (v196)(v194);
          v119 = v120;
        }

        while ((v121 & 1) != 0);
        (*(*(v110 + 176) + 16))();
        v122 = *(v110 + 176);
        if (v122)
        {
          _Block_release(v122);
          *(v110 + 176) = 0;
        }

        if (*(v110 + 168))
        {
          v123 = *(v110 + 160);
          if (v123)
          {
            os_release(v123);
          }
        }

        *(v110 + 160) = 0;
        if (*(v110 + 152))
        {
          v124 = *(v110 + 144);
          if (v124)
          {
            os_release(v124);
          }
        }

        *(v110 + 144) = 0;
        if (*(v110 + 136))
        {
          v125 = *(v110 + 128);
          if (v125)
          {
            os_release(v125);
          }
        }

        free(v110);
        goto LABEL_153;
      }

      v126 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_stream_destroy";
      LODWORD(v181) = 12;
      v127 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v126, 16, "%{public}s called with null webtransport_stream", buf, v181);
      v200 = OS_LOG_TYPE_ERROR;
      v199 = 0;
      if (__nwlog_fault(v127, &v200, &v199))
      {
        if (v200 == OS_LOG_TYPE_FAULT)
        {
          v128 = __nwlog_obj();
          v129 = v200;
          if (os_log_type_enabled(v128, v200))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v130 = v128;
            v131 = v129;
            v132 = "%{public}s called with null webtransport_stream";
LABEL_216:
            _os_log_impl(&dword_181A37000, v130, v131, v132, buf, 0xCu);
          }
        }

        else if (v199 == 1)
        {
          v133 = __nw_create_backtrace_string();
          v134 = __nwlog_obj();
          v135 = v200;
          v136 = os_log_type_enabled(v134, v200);
          if (v133)
          {
            if (v136)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v133;
              _os_log_impl(&dword_181A37000, v134, v135, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v133);
            goto LABEL_217;
          }

          if (v136)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v130 = v134;
            v131 = v135;
            v132 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_216;
          }
        }

        else
        {
          v137 = __nwlog_obj();
          v138 = v200;
          if (os_log_type_enabled(v137, v200))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v130 = v137;
            v131 = v138;
            v132 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_216;
          }
        }
      }

LABEL_217:
      if (v127)
      {
        free(v127);
      }

      v5 = &qword_1ED411000;
LABEL_153:
      v191[3] = v89;
    }
  }

  v77 = *(v182 + 336);
  if (v77)
  {
    if ((*(v77 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v175 = *(v182 + 336);
      v176 = __nwlog_obj();
      v177 = os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG);
      v77 = v175;
      if (v177)
      {
        v178 = *(v175 + 88);
        if (v178)
        {
          v179 = *(v178 + 492);
        }

        else
        {
          v179 = -1;
        }

        v180 = *(v175 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v175 + 192;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v179;
        *&v203[6] = 2048;
        *&v203[8] = v180;
        *&v203[16] = 2048;
        *&v203[18] = v175;
        _os_log_impl(&dword_181A37000, v176, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
        v77 = v175;
      }
    }
  }

  nw_protocol_set_input_handler(v182, v77);
  if ((*(v182 + 580) & 2) != 0)
  {
    goto LABEL_85;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v51 = v5[275];
  if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    goto LABEL_85;
  }

  v78 = *(v182 + 492);
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_session_remove_stream";
  *&buf[12] = 2082;
  *&buf[14] = v182 + 496;
  *&buf[22] = 2080;
  v202 = " ";
  *v203 = 1024;
  *&v203[2] = v78;
  v53 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_84:
  _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_INFO, v53, buf, 0x26u);
LABEL_85:
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = v5[275];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = handle[11];
      if (v55)
      {
        v56 = *(v55 + 492);
      }

      else
      {
        v56 = -1;
      }

      v57 = handle[8];
      *buf = 136447490;
      *&buf[4] = "nw_webtransport_stream_destroy";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v202 = " ";
      *v203 = 1024;
      *&v203[2] = v56;
      *&v203[6] = 2048;
      *&v203[8] = v57;
      *&v203[16] = 2048;
      *&v203[18] = handle;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
    }
  }

  if (handle[9])
  {
    if ((*(handle + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v58 = v5[275];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = handle[11];
        if (v59)
        {
          v60 = *(v59 + 492);
        }

        else
        {
          v60 = -1;
        }

        v69 = handle[8];
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = handle + 24;
        *&buf[22] = 2080;
        v202 = " ";
        *v203 = 1024;
        *&v203[2] = v60;
        *&v203[6] = 2048;
        *&v203[8] = v69;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
      }
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
  v202 = &__block_descriptor_tmp_39_36819;
  *v203 = handle;
  v70 = handle[9];
  do
  {
    if (!v70)
    {
      break;
    }

    v71 = *(v70 + 32);
    v72 = (*&buf[16])(buf);
    v70 = v71;
  }

  while ((v72 & 1) != 0);
  (*(handle[22] + 16))();
  v73 = handle[22];
  if (v73)
  {
    _Block_release(v73);
    handle[22] = 0;
  }

  if (handle[21])
  {
    v74 = handle[20];
    if (v74)
    {
      os_release(v74);
    }
  }

  handle[20] = 0;
  if (handle[19])
  {
    v75 = handle[18];
    if (v75)
    {
      os_release(v75);
    }
  }

  handle[18] = 0;
  if (handle[17])
  {
    v76 = handle[16];
    if (v76)
    {
      os_release(v76);
    }
  }

  free(handle);
  return 1;
}

uint64_t nw_protocol_webtransport_session_listen_protocol_new_flow(nw_listen_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v275 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v79 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v79, 16, "%{public}s called with null listener", buf, 12);
    LOBYTE(iterate_block) = 16;
    LOBYTE(v249) = 0;
    if (!__nwlog_fault(v22, &iterate_block, &v249))
    {
      goto LABEL_46;
    }

    if (iterate_block == 17)
    {
      v23 = __nwlog_obj();
      v24 = iterate_block;
      if (!os_log_type_enabled(v23, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s called with null listener";
    }

    else if (v249 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = iterate_block;
      v89 = os_log_type_enabled(v23, iterate_block);
      if (backtrace_string)
      {
        if (v89)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_46;
      }

      if (!v89)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s called with null listener, no backtrace";
    }

    else
    {
      v23 = __nwlog_obj();
      v24 = iterate_block;
      if (!os_log_type_enabled(v23, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s called with null listener, backtrace limit exceeded";
    }

    goto LABEL_44;
  }

  handle = a1->handle;
  if (!handle)
  {
    v80 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v80, 16, "%{public}s called with null webtransport_session", buf, 12);
    LOBYTE(iterate_block) = 16;
    LOBYTE(v249) = 0;
    if (!__nwlog_fault(v22, &iterate_block, &v249))
    {
      goto LABEL_46;
    }

    if (iterate_block == 17)
    {
      v23 = __nwlog_obj();
      v24 = iterate_block;
      if (!os_log_type_enabled(v23, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s called with null webtransport_session";
    }

    else if (v249 == 1)
    {
      v90 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = iterate_block;
      v91 = os_log_type_enabled(v23, iterate_block);
      if (v90)
      {
        if (!v91)
        {
          goto LABEL_135;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v90;
        v92 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
        goto LABEL_134;
      }

      if (!v91)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v23 = __nwlog_obj();
      v24 = iterate_block;
      if (!os_log_type_enabled(v23, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

LABEL_44:
    v36 = v23;
    v37 = v24;
LABEL_45:
    _os_log_impl(&dword_181A37000, v36, v37, v25, buf, 0xCu);
    goto LABEL_46;
  }

  v4 = *(handle + 53);
  LOBYTE(v5) = handle[580];
  if ((v5 & 2) == 0)
  {
    LOBYTE(v5) = gLogDatapath;
    if (gLogDatapath == 1)
    {
      v81 = a1;
      v82 = a3;
      v83 = a2;
      v84 = __nwlog_obj();
      v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG);
      a2 = v83;
      a3 = v82;
      v5 = v85;
      a1 = v81;
      if (v5)
      {
        v86 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v269 = " ";
        *v270 = 1024;
        *&v270[2] = v86;
        *&v270[6] = 2112;
        *&v270[8] = v83;
        _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> creating new inbound flow from %@", buf, 0x30u);
        a2 = v83;
        a3 = v82;
        a1 = v81;
      }
    }
  }

  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, gLogObj, 16, "%{public}s No listener found for webtransport inbound stream", buf, 12);
    LOBYTE(iterate_block) = 16;
    LOBYTE(v249) = 0;
    if (!__nwlog_fault(v22, &iterate_block, &v249))
    {
      goto LABEL_46;
    }

    if (iterate_block == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = iterate_block;
      if (!os_log_type_enabled(gLogObj, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s No listener found for webtransport inbound stream";
      goto LABEL_44;
    }

    if (v249 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = iterate_block;
      if (!os_log_type_enabled(gLogObj, iterate_block))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s No listener found for webtransport inbound stream, backtrace limit exceeded";
      goto LABEL_44;
    }

    v26 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    v28 = iterate_block;
    v29 = os_log_type_enabled(gLogObj, iterate_block);
    if (v26)
    {
      if (v29)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = v26;
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s No listener found for webtransport inbound stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v26);
      if (!v22)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v29)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      v25 = "%{public}s No listener found for webtransport inbound stream, no backtrace";
      v36 = v27;
      v37 = v28;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v6 = *(handle + 120);
  if (!v6)
  {
    if ((handle[580] & 2) != 0)
    {
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v33 = *(handle + 123);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = handle + 496;
    *&buf[22] = 2080;
    v269 = " ";
    *v270 = 1024;
    *&v270[2] = v33;
    v32 = "%{public}s %{public}s%s<i%u> Inbound flows should be created by incoming capsules on H2 CONNECT stream";
    goto LABEL_40;
  }

  if (v6 == 2)
  {
    if ((handle[580] & 2) != 0)
    {
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v31 = *(handle + 123);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
    *&buf[12] = 2082;
    *&buf[14] = handle + 496;
    *&buf[22] = 2080;
    v269 = " ";
    *v270 = 1024;
    *&v270[2] = v31;
    v32 = "%{public}s %{public}s%s<i%u> Cannot create new inbound flow with unknown transport mode";
    goto LABEL_40;
  }

  if (v6 != 1)
  {
    return v5 & 1;
  }

  if (*(handle + 119) != 2)
  {
    v39 = a2;
    v40 = a3;
    handle[580] |= 0x20u;
    v41 = *(v4 + 8);
    if (v41)
    {
      v249 = 0;
      v250 = &v249;
      v251 = 0x2000000000;
      v252 = -1;
      v42 = nw_protocol_copy_info(v41);
      v43 = v42;
      if (v42)
      {
        iterate_block = MEMORY[0x1E69E9820];
        v258 = 0x40000000;
        v259 = ___ZL48nw_webtransport_session_get_underlying_stream_idP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
        v260 = &unk_1E6A31968;
        v261 = &v249;
        _nw_array_apply(v42, &iterate_block);
      }

      if ((handle[580] & 2) == 0 && gLogDatapath == 1)
      {
        v138 = __nwlog_obj();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
        {
          v139 = *(handle + 123);
          v140 = *(v250 + 24);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v269 = " ";
          *v270 = 1024;
          *&v270[2] = v139;
          *&v270[6] = 2048;
          *&v270[8] = v140;
          _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got underlying stream ID: %llu", buf, 0x30u);
        }
      }

      if (v43)
      {
        os_release(v43);
      }

      v44 = *(v250 + 24);
      _Block_object_dispose(&v249, 8);
LABEL_58:
      *(handle + 22) = v44;
      LOBYTE(v5) = (**v4)(v4, v39, v40);
      handle[580] &= ~0x20u;
      *(handle + 22) = -1;
      return v5 & 1;
    }

    v133 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
    v134 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v133, 16, "%{public}s called with null output_protocol", buf, 12);
    LOBYTE(iterate_block) = 16;
    LOBYTE(v249) = 0;
    if (__nwlog_fault(v134, &iterate_block, &v249))
    {
      if (iterate_block == 17)
      {
        v135 = __nwlog_obj();
        v136 = iterate_block;
        if (os_log_type_enabled(v135, iterate_block))
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          v137 = "%{public}s called with null output_protocol";
LABEL_278:
          _os_log_impl(&dword_181A37000, v135, v136, v137, buf, 0xCu);
        }
      }

      else if (v249 == 1)
      {
        v151 = __nw_create_backtrace_string();
        v135 = __nwlog_obj();
        v136 = iterate_block;
        v152 = os_log_type_enabled(v135, iterate_block);
        if (v151)
        {
          if (v152)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
            *&buf[12] = 2082;
            *&buf[14] = v151;
            _os_log_impl(&dword_181A37000, v135, v136, "%{public}s called with null output_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v151);
          goto LABEL_279;
        }

        if (v152)
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          v137 = "%{public}s called with null output_protocol, no backtrace";
          goto LABEL_278;
        }
      }

      else
      {
        v135 = __nwlog_obj();
        v136 = iterate_block;
        if (os_log_type_enabled(v135, iterate_block))
        {
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_get_underlying_stream_id";
          v137 = "%{public}s called with null output_protocol, backtrace limit exceeded";
          goto LABEL_278;
        }
      }
    }

LABEL_279:
    if (v134)
    {
      free(v134);
    }

    v44 = -1;
    goto LABEL_58;
  }

  if ((handle[580] & 0x40) == 0)
  {
    goto LABEL_74;
  }

  v7 = a1;
  protocol_handler = a1->protocol_handler;
  parameters = nw_protocol_get_parameters(handle);
  if (!parameters)
  {
    v141 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
    v142 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v141, 16, "%{public}s called with null parameters", buf, 12);
    LOBYTE(iterate_block) = 16;
    LOBYTE(v249) = 0;
    if (!__nwlog_fault(v142, &iterate_block, &v249))
    {
      goto LABEL_285;
    }

    if (iterate_block == 17)
    {
      v143 = __nwlog_obj();
      v144 = iterate_block;
      if (!os_log_type_enabled(v143, iterate_block))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
      v145 = "%{public}s called with null parameters";
    }

    else if (v249 == 1)
    {
      v155 = __nw_create_backtrace_string();
      v143 = __nwlog_obj();
      v144 = iterate_block;
      v156 = os_log_type_enabled(v143, iterate_block);
      if (v155)
      {
        if (v156)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
          *&buf[12] = 2082;
          *&buf[14] = v155;
          _os_log_impl(&dword_181A37000, v143, v144, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v155);
        goto LABEL_285;
      }

      if (!v156)
      {
LABEL_285:
        if (v142)
        {
          free(v142);
        }

        goto LABEL_73;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
      v145 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v143 = __nwlog_obj();
      v144 = iterate_block;
      if (!os_log_type_enabled(v143, iterate_block))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
      v145 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0xCu);
    goto LABEL_285;
  }

  nw_parameters_log_protocol_instances(parameters);
  v10 = _nw_parameters_copy_default_protocol_stack();
  v249 = 0;
  v250 = &v249;
  v251 = 0x2000000000;
  LOBYTE(v252) = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v269 = __Block_byref_object_copy__59;
  *v270 = __Block_byref_object_dispose__60;
  *&v270[8] = 0;
  v270[16] |= 1u;
  iterate_block = MEMORY[0x1E69E9820];
  v258 = 0x40000000;
  v259 = ___ZL48nw_webtransport_session_setup_for_http_messagingP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
  v260 = &unk_1E6A31BF8;
  v261 = &v249;
  v262 = buf;
  v263 = handle;
  nw_protocol_stack_iterate_application_protocols(v10, &iterate_block);
  v11 = *(*&buf[8] + 40);
  if (!v11)
  {
    v146 = __nwlog_obj();
    *v264 = 136446210;
    *&v264[4] = "nw_webtransport_session_setup_for_http_messaging";
    v147 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v146, 16, "%{public}s called with null options", v264, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v242[0]) = 0;
    if (!__nwlog_fault(v147, type, v242))
    {
      goto LABEL_290;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v148 = __nwlog_obj();
      v149 = type[0];
      if (!os_log_type_enabled(v148, type[0]))
      {
        goto LABEL_290;
      }

      *v264 = 136446210;
      *&v264[4] = "nw_webtransport_session_setup_for_http_messaging";
      v150 = "%{public}s called with null options";
    }

    else if (LOBYTE(v242[0]) == 1)
    {
      v157 = __nw_create_backtrace_string();
      v148 = __nwlog_obj();
      v149 = type[0];
      v158 = os_log_type_enabled(v148, type[0]);
      if (v157)
      {
        if (v158)
        {
          *v264 = 136446466;
          *&v264[4] = "nw_webtransport_session_setup_for_http_messaging";
          *&v264[12] = 2082;
          *&v264[14] = v157;
          _os_log_impl(&dword_181A37000, v148, v149, "%{public}s called with null options, dumping backtrace:%{public}s", v264, 0x16u);
        }

        free(v157);
        goto LABEL_290;
      }

      if (!v158)
      {
LABEL_290:
        if (v147)
        {
          free(v147);
        }

        goto LABEL_68;
      }

      *v264 = 136446210;
      *&v264[4] = "nw_webtransport_session_setup_for_http_messaging";
      v150 = "%{public}s called with null options, no backtrace";
    }

    else
    {
      v148 = __nwlog_obj();
      v149 = type[0];
      if (!os_log_type_enabled(v148, type[0]))
      {
        goto LABEL_290;
      }

      *v264 = 136446210;
      *&v264[4] = "nw_webtransport_session_setup_for_http_messaging";
      v150 = "%{public}s called with null options, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v148, v149, v150, v264, 0xCu);
    goto LABEL_290;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v12 = nw_protocol_copy_http_messaging_definition_definition;
  v13 = v11;
  _nw_protocol_options_set_instance(v13, protocol_handler);

  if (v12)
  {
    os_release(v12);
  }

  if (!nw_protocol_get_parameters(protocol_handler))
  {
    goto LABEL_67;
  }

  v14 = _nw_parameters_copy_default_protocol_stack();
  v15 = _nw_parameters_copy_default_protocol_stack();
  v16 = nw_protocol_stack_copy_transport_protocol(v14);
  v17 = nw_protocol_stack_copy_transport_protocol(v15);
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      v19 = _nw_protocol_options_copy_definition();
      if (nw_protocol_options_matches_definition(v18, v19))
      {
        protocol_handle = _nw_protocol_options_get_protocol_handle(v16);
        nw_parameters_set_protocol_instance(v18, v21, protocol_handle);
      }

      os_release(v18);
    }

    v18 = v16;
    goto LABEL_62;
  }

  if (v17)
  {
LABEL_62:
    os_release(v18);
  }

  if (v15)
  {
    os_release(v15);
  }

  if (v14)
  {
    os_release(v14);
  }

LABEL_67:
  nw_protocol_set_output_handler(handle, 0);
LABEL_68:
  _Block_object_dispose(buf, 8);
  if ((v270[16] & 1) != 0 && *&v270[8])
  {
    os_release(*&v270[8]);
  }

  _Block_object_dispose(&v249, 8);
  if (v10)
  {
    os_release(v10);
  }

LABEL_73:
  a1 = v7;
LABEL_74:
  nw_protocol_add_input_handler(a1->protocol_handler->flow_id, handle);
  if (!*(handle + 4))
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v50 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v51 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v269 = " ";
        *v270 = 1024;
        *&v270[2] = v51;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to get output handler for HTTP/3 CONNECT stream, failing", buf, 0x26u);
      }
    }

    if (*(handle + 119) == 5)
    {
      if ((handle[580] & 2) != 0)
      {
        goto LABEL_48;
      }

      v52 = __nwlog_obj();
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        goto LABEL_48;
      }

      v53 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v269 = " ";
      *v270 = 1024;
      *&v270[2] = v53;
      v32 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
      v34 = v52;
      v35 = OS_LOG_TYPE_INFO;
      goto LABEL_41;
    }

    if ((handle[580] & 2) == 0)
    {
      v54 = __nwlog_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v269 = " ";
        *v270 = 1024;
        *&v270[2] = v55;
        *&v270[6] = 1024;
        *&v270[8] = 57;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
      }
    }

    v56 = *(handle + 119);
    *(handle + 119) = 5;
    v57 = *(handle + 24);
    if (v57)
    {
      v242[0] = MEMORY[0x1E69E9820];
      v242[1] = 0x40000000;
      v242[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
      v242[3] = &__block_descriptor_tmp_24_36439;
      v243 = 57;
      nw_hash_table_apply(v57, v242);
    }

    v58 = *(handle + 56);
    if (v58)
    {
      v59 = *(v58 + 88);
      nw_protocol_error(*(v58 + 48), *(handle + 56));
      nw_protocol_disconnect(v58, v59);
    }

    v60 = *(handle + 42);
    if (v60)
    {
      do
      {
        v61 = *(v60 + 112);
        v62 = *(v60 + 88);
        nw_protocol_error(*(v60 + 48), v60);
        nw_protocol_disconnect(v60, v62);
        v60 = v61;
      }

      while (v61);
    }

    v63 = *(handle + 55);
    if (v63)
    {
      v64 = *(v63 + 88);
      nw_protocol_error(*(v63 + 48), *(handle + 55));
      nw_protocol_disconnect(v63, v64);
    }

    if (*(handle + 4))
    {
      nw_protocol_remove_instance(handle);
      nw_protocol_disconnect(*(handle + 4), handle);
    }

    v65 = *(handle + 50);
    if (!v65)
    {
      goto LABEL_48;
    }

    webtransport_state = nw_http_connection_metadata_get_webtransport_state(v65);
    if (!webtransport_state)
    {
      goto LABEL_48;
    }

    v67 = webtransport_state;
    if (v56 != 4 && v56 != 1)
    {
      goto LABEL_48;
    }

    v68 = *(webtransport_state + 16);
    *(webtransport_state + 16) = v68 - 1;
    if (v68)
    {
LABEL_143:
      if (handle[580])
      {
        goto LABEL_48;
      }

      v94 = *v67;
      if (!*v67)
      {
        goto LABEL_48;
      }

      v95 = *(v94 + 352);
      v96 = *(v94 + 360);
      v97 = (v95 + 360);
      if (!v95)
      {
        v97 = v67 + 1;
      }

      *v97 = v96;
      *v96 = v95;
      *(v94 + 352) = 0;
      *(v94 + 360) = 0;
      v98 = *(v94 + 32);
      if (!v98 || *(v94 + 480) != 2)
      {
        goto LABEL_183;
      }

      v99 = v98[2];
      if (nw_protocol_http2_identifier::onceToken != -1)
      {
        v209 = v98[2];
        dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
        v99 = v209;
      }

      if (!nw_protocols_are_equal(v99, &nw_protocol_http2_identifier::http2_protocol_identifier))
      {
        v100 = v98[2];
        if (nw_protocol_http3_identifier::onceToken != -1)
        {
          v211 = v98[2];
          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
          v100 = v211;
        }

        if (!nw_protocols_are_equal(v100, &nw_protocol_http3_identifier::http3_protocol_identifier))
        {
          v101 = v98[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
          }

          if (!nw_protocols_are_equal(v101, &nw_protocol_http_messaging_identifier::protocol_identifier))
          {
            goto LABEL_183;
          }
        }
      }

      v102 = nw_protocol_copy_info(v98);
      v103 = v102;
      *type = MEMORY[0x1E69E9820];
      v245 = 0x40000000;
      v246 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      v247 = &__block_descriptor_tmp_27_36446;
      v248 = v94;
      if (v102)
      {
        _nw_array_apply(v102, type);
        v104 = *(v94 + 400);
        if (!v104)
        {
          os_release(v103);
          goto LABEL_48;
        }
      }

      else
      {
        v104 = *(v94 + 400);
        if (!v104)
        {
          goto LABEL_48;
        }
      }

      version = nw_http_connection_metadata_get_version(v104);
      v106 = version;
      if (version == 4)
      {
        v107 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_171:
          v108 = v98[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v210 = v98[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v108 = v210;
          }

          v109 = nw_protocols_are_equal(v108, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v110 = *(v94 + 580);
          if (v109)
          {
            v110 |= 0x40u;
            *(v94 + 580) = v110;
          }

          if ((v110 & 2) == 0)
          {
            v111 = __nwlog_obj();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
            {
              v112 = *(v94 + 492);
              if (v106 == 4)
              {
                v113 = 2;
              }

              else
              {
                v113 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v94 + 496;
              *&buf[22] = 2080;
              v269 = " ";
              *v270 = 1024;
              *&v270[2] = v112;
              *&v270[6] = 1024;
              *&v270[8] = v113;
              _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v103)
          {
            os_release(v103);
          }

LABEL_183:
          v114 = *(v94 + 480);
          if (v114 <= 1)
          {
            if ((*(v94 + 580) & 1) == 0)
            {
              if (!*(v94 + 476))
              {
                nw_webtransport_http_send_connect(v94);
              }

              goto LABEL_48;
            }

            v116 = *(v94 + 476);
            if (v114 == 1)
            {
              if (v116 != 3)
              {
                if (v116)
                {
                  goto LABEL_48;
                }

                v117 = *(v94 + 48);
                if (v117)
                {
                  v118 = *(v117 + 40);
                  if (v118)
                  {
                    nw_protocol_replace_input_handler(*(v94 + 32), v94, *(v117 + 40));
                    *(v94 + 440) = v118;
                    nw_protocol_set_output_handler(v94, 0);
                    nw_protocol_set_input_handler(v94, 0);
                    if (*(v94 + 580))
                    {
                      v119 = *(*(v94 + 440) + 32);
                      v120 = *(v119 + 16);
                      if (nw_protocol_http_messaging_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                      }

                      if (nw_protocols_are_equal(v120, &nw_protocol_http_messaging_identifier::protocol_identifier))
                      {
                        goto LABEL_202;
                      }

                      v121 = *(v119 + 16);
                      if (nw_protocol_http3_identifier::onceToken != -1)
                      {
                        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                      }

                      if (nw_protocols_are_equal(v121, &nw_protocol_http3_identifier::http3_protocol_identifier))
                      {
LABEL_202:
                        v122 = *(v94 + 368);
                        if (v122)
                        {
                          v123 = nw_parameters_copy_protocol_options_legacy(v122, v119);
                          if (v123)
                          {
                            v124 = v123;
                            if ((*(v118 + 276) & 0x10) == 0 && gLogDatapath == 1)
                            {
                              v232 = __nwlog_obj();
                              if (os_log_type_enabled(v232, OS_LOG_TYPE_DEBUG))
                              {
                                v233 = *(v118 + 88);
                                if (v233)
                                {
                                  v234 = *(v233 + 492);
                                }

                                else
                                {
                                  v234 = -1;
                                }

                                v239 = *(v118 + 64);
                                *buf = 136447490;
                                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v118 + 192;
                                *&buf[22] = 2080;
                                v269 = " ";
                                *v270 = 1024;
                                *&v270[2] = v234;
                                *&v270[6] = 2048;
                                *&v270[8] = v239;
                                *&v270[16] = 2048;
                                *&v270[18] = v124;
                                _os_log_impl(&dword_181A37000, v232, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                              }
                            }

                            nw_http3_set_stream_mode(v124, 0);
                            os_release(v124);
                          }

                          else
                          {
                            if ((*(v94 + 580) & 2) == 0 && gLogDatapath == 1)
                            {
                              v237 = __nwlog_obj();
                              if (os_log_type_enabled(v237, OS_LOG_TYPE_DEBUG))
                              {
                                v238 = *(v94 + 492);
                                *buf = 136446978;
                                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v94 + 496;
                                *&buf[22] = 2080;
                                v269 = " ";
                                *v270 = 1024;
                                *&v270[2] = v238;
                                _os_log_impl(&dword_181A37000, v237, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                              }
                            }

                            v160 = *(v118 + 88);
                            nw_protocol_error(*(v118 + 48), v118);
                            nw_protocol_disconnect(v118, v160);
                          }
                        }
                      }
                    }

                    goto LABEL_275;
                  }

                  v223 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  LODWORD(v240) = 12;
                  v218 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v223, 16, "%{public}s called with null webtransport_stream", buf, v240);
                  LOBYTE(iterate_block) = 16;
                  LOBYTE(v249) = 0;
                  if (__nwlog_fault(v218, &iterate_block, &v249))
                  {
                    if (iterate_block == 17)
                    {
                      v219 = __nwlog_obj();
                      v220 = iterate_block;
                      if (!os_log_type_enabled(v219, iterate_block))
                      {
                        goto LABEL_482;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v221 = "%{public}s called with null webtransport_stream";
                      goto LABEL_481;
                    }

                    if (v249 != 1)
                    {
                      v219 = __nwlog_obj();
                      v220 = iterate_block;
                      if (!os_log_type_enabled(v219, iterate_block))
                      {
                        goto LABEL_482;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v221 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                      goto LABEL_481;
                    }

                    v230 = __nw_create_backtrace_string();
                    v219 = __nwlog_obj();
                    v220 = iterate_block;
                    v231 = os_log_type_enabled(v219, iterate_block);
                    if (v230)
                    {
                      if (v231)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v230;
                        _os_log_impl(&dword_181A37000, v219, v220, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v230);
                      if (!v218)
                      {
                        goto LABEL_275;
                      }

                      goto LABEL_483;
                    }

                    if (v231)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v221 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_481:
                      _os_log_impl(&dword_181A37000, v219, v220, v221, buf, 0xCu);
                    }
                  }
                }

                else
                {
                  v217 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                  LODWORD(v240) = 12;
                  v218 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v217, 16, "%{public}s called with null input_protocol", buf, v240);
                  LOBYTE(iterate_block) = 16;
                  LOBYTE(v249) = 0;
                  if (!__nwlog_fault(v218, &iterate_block, &v249))
                  {
                    goto LABEL_482;
                  }

                  if (iterate_block == 17)
                  {
                    v219 = __nwlog_obj();
                    v220 = iterate_block;
                    if (!os_log_type_enabled(v219, iterate_block))
                    {
                      goto LABEL_482;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v221 = "%{public}s called with null input_protocol";
                    goto LABEL_481;
                  }

                  if (v249 != 1)
                  {
                    v219 = __nwlog_obj();
                    v220 = iterate_block;
                    if (!os_log_type_enabled(v219, iterate_block))
                    {
                      goto LABEL_482;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v221 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_481;
                  }

                  v227 = __nw_create_backtrace_string();
                  v219 = __nwlog_obj();
                  v220 = iterate_block;
                  v228 = os_log_type_enabled(v219, iterate_block);
                  if (!v227)
                  {
                    if (!v228)
                    {
                      goto LABEL_482;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    v221 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_481;
                  }

                  if (v228)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v227;
                    _os_log_impl(&dword_181A37000, v219, v220, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v227);
                }

LABEL_482:
                if (!v218)
                {
LABEL_275:
                  *(v94 + 476) = 2;
                  goto LABEL_48;
                }

LABEL_483:
                free(v218);
                goto LABEL_275;
              }

              v127 = *(v94 + 32);
              if (v127)
              {
                v128 = v127[3];
                if (v128 && *(v128 + 80))
                {
                  for (i = 3; (i | 2) == 3; i = *(v94 + 476))
                  {
                    if (!nw_protocol_get_input_frames(v127, v94, 0, 0, 0xFFFFFFFFLL, v94 + 120))
                    {
                      goto LABEL_48;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v269 = __Block_byref_object_copy__36471;
                    *v270 = __Block_byref_object_dispose__36472;
                    *&v270[8] = nw_protocol_copy_http_definition();
                    v270[16] |= 1u;
                    iterate_block = MEMORY[0x1E69E9820];
                    v258 = 0x40000000;
                    v259 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v260 = &unk_1E6A31940;
                    v261 = buf;
                    v262 = v94;
                    v263 = (v94 + 120);
                    v130 = *(v94 + 120);
                    do
                    {
                      if (!v130)
                      {
                        break;
                      }

                      v131 = *(v130 + 32);
                      v132 = (v259)(&iterate_block);
                      v130 = v131;
                    }

                    while ((v132 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v270[16] & 1) != 0 && *&v270[8])
                    {
                      os_release(*&v270[8]);
                    }
                  }

                  v153 = *(v94 + 480);
                  if (v153 == 1)
                  {
                    nw_webtransport_http3_handle_input(v94);
                    v159 = *(v94 + 448);
                    if (v159 && *(v159 + 72))
                    {
                      nw_protocol_input_available(*(v159 + 48), v159);
                    }

                    goto LABEL_48;
                  }

                  if (v153)
                  {
                    goto LABEL_48;
                  }

                  if ((*(v94 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v235 = __nwlog_obj();
                    if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
                    {
                      v236 = *(v94 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v94 + 496;
                      *&buf[22] = 2080;
                      v269 = " ";
                      *v270 = 1024;
                      *&v270[2] = v236;
                      _os_log_impl(&dword_181A37000, v235, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v94 + 476) != 4)
                  {
LABEL_48:
                    LOBYTE(v5) = 0;
                    return v5 & 1;
                  }

                  v154 = (v94 + 96);
                  while (1)
                  {
                    capsule = nw_http_capsule_framer_read_capsule((v94 + 96), v94);
                    if (!capsule && !*(v94 + 136))
                    {
                      goto LABEL_48;
                    }

                    if (*(v94 + 456))
                    {
                      goto LABEL_299;
                    }

                    v166 = *v154;
                    if (*v154 == -1)
                    {
LABEL_356:
                      v180 = __nwlog_obj();
                      if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2048;
                        *&buf[14] = v166;
                        _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                      }

                      goto LABEL_299;
                    }

                    v167 = *(v94 + 104) != -1 && *(v94 + 112) == 0;
                    if (v166 <= 16770303)
                    {
                      if ((v166 - 16770048) < 6 || (v166 + 1) <= 4 && v166)
                      {
                        goto LABEL_356;
                      }
                    }

                    else if ((v166 - 420171065) <= 9 && ((1 << (v166 - 57)) & 0x2EF) != 0)
                    {
                      v256 = -1;
                      if (nw_http_capsule_framer_parse_vle_value((v94 + 96), v94, &v256))
                      {
                        stream = nw_webtransport_session_get_stream(v94, v256);
                        if (stream)
                        {
                          goto LABEL_350;
                        }

                        if ((v166 - 420171067) > 1)
                        {
                          goto LABEL_381;
                        }

                        v187 = v256;
                        v188 = *(v94 + 580);
                        if (v256 >> 60 || ((v256 ^ v188) & 1) == 0)
                        {
                          if ((v188 & 2) == 0)
                          {
                            v196 = __nwlog_obj();
                            if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                            {
                              v197 = *(v94 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v94 + 496;
                              *&buf[22] = 2080;
                              v269 = " ";
                              *v270 = 1024;
                              *&v270[2] = v197;
                              v198 = v196;
                              v199 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                              goto LABEL_380;
                            }
                          }

LABEL_381:
                          if ((*(v94 + 580) & 2) == 0)
                          {
                            v200 = __nwlog_obj();
                            if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                            {
                              v201 = *(v94 + 492);
                              *buf = 136447490;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v94 + 496;
                              *&buf[22] = 2080;
                              v269 = " ";
                              *v270 = 1024;
                              *&v270[2] = v201;
                              *&v270[6] = 2048;
                              *&v270[8] = v256;
                              *&v270[16] = 2048;
                              *&v270[18] = v166;
                              _os_log_impl(&dword_181A37000, v200, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                            }
                          }

                          goto LABEL_299;
                        }

                        v189 = *(v94 + 424);
                        if (!v189 || (v190 = *v189) == 0 || !*v190)
                        {
                          if ((v188 & 2) == 0)
                          {
                            v202 = __nwlog_obj();
                            if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                            {
                              v203 = *(v94 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v94 + 496;
                              *&buf[22] = 2080;
                              v269 = " ";
                              *v270 = 1024;
                              *&v270[2] = v203;
                              v198 = v202;
                              v199 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_380:
                              _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_ERROR, v199, buf, 0x26u);
                            }
                          }

                          goto LABEL_381;
                        }

                        v191 = _nw_parameters_copy();
                        *(v94 + 580) |= 0x20u;
                        *(v94 + 176) = v187;
                        v192 = (***(v94 + 424))(*(v94 + 424), *(v94 + 384), v191);
                        *(v94 + 176) = -1;
                        *(v94 + 580) &= ~0x20u;
                        if (v192)
                        {
                          stream = nw_webtransport_session_get_stream(v94, v187);
                        }

                        else
                        {
                          stream = 0;
                        }

                        if (v191)
                        {
                          os_release(v191);
                        }

                        if (!stream)
                        {
                          goto LABEL_381;
                        }

                        if (*(stream + 46) != 3)
                        {
LABEL_350:
                          *(v94 + 456) = stream;
                          goto LABEL_299;
                        }

                        if ((*(v94 + 580) & 2) != 0)
                        {
                          goto LABEL_299;
                        }

                        v204 = __nwlog_obj();
                        if (!os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_299;
                        }

                        v205 = *(v94 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v94 + 496;
                        *&buf[22] = 2080;
                        v269 = " ";
                        *v270 = 1024;
                        *&v270[2] = v205;
                        *&v270[6] = 2048;
                        *&v270[8] = v256;
                        v183 = v204;
                        v184 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                      }

                      else
                      {
                        if (!v167)
                        {
                          goto LABEL_299;
                        }

                        if ((*(v94 + 580) & 2) != 0)
                        {
                          goto LABEL_299;
                        }

                        v181 = __nwlog_obj();
                        if (!os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_299;
                        }

                        v182 = *(v94 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v94 + 496;
                        *&buf[22] = 2080;
                        v269 = " ";
                        *v270 = 1024;
                        *&v270[2] = v182;
                        *&v270[6] = 2048;
                        *&v270[8] = v166;
                        v183 = v181;
                        v184 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                      }

                      _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_ERROR, v184, buf, 0x30u);
                    }

                    else if ((v166 - 16770304) < 4)
                    {
                      goto LABEL_356;
                    }

LABEL_299:
                    v165 = *(v94 + 96);
                    if ((*(v94 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v206 = __nwlog_obj();
                      if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                      {
                        v207 = *(v94 + 492);
                        v208 = *(v94 + 104);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2082;
                        *&buf[14] = v94 + 496;
                        *&buf[22] = 2080;
                        v269 = " ";
                        *v270 = 1024;
                        *&v270[2] = v207;
                        *&v270[6] = 2048;
                        *&v270[8] = v165;
                        *&v270[16] = 2048;
                        *&v270[18] = v208;
                        _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                      }
                    }

                    if (v165 > 16770303)
                    {
                      if (v165 <= 420171064)
                      {
                        if ((v165 - 16770304) < 4)
                        {
                          goto LABEL_318;
                        }

                        if (v165 == 420171064)
                        {
                          goto LABEL_317;
                        }

                        goto LABEL_320;
                      }

                      if ((v165 - 420171065) >= 2)
                      {
                        if ((v165 - 420171067) < 2)
                        {
                          v168 = *(v94 + 456);
                          v170 = v165 == 420171068 && capsule;
                          v249 = MEMORY[0x1E69E9820];
                          v250 = 0x40000000;
                          v251 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                          v252 = &__block_descriptor_tmp_34_36485;
                          v255 = v170;
                          v253 = v94 + 96;
                          v254 = v168;
                          v171 = *(v94 + 136);
                          do
                          {
                            if (!v171)
                            {
                              break;
                            }

                            v172 = *(v171 + 32);
                            v173 = (v251)(&v249);
                            v171 = v172;
                          }

                          while ((v173 & 1) != 0);
                          if (!v170)
                          {
                            goto LABEL_376;
                          }

                          nw_protocol_input_finished(v168, v94);
                        }

                        goto LABEL_320;
                      }

                      if (capsule)
                      {
                        v174 = *(v94 + 456);
                        v256 = -1;
                        if (nw_http_capsule_framer_parse_vle_value((v94 + 96), v94, &v256))
                        {
                          if (!v174 || (*(v174 + 276) & 0x10) == 0)
                          {
                            v175 = __nwlog_obj();
                            if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
                            {
                              if (v174)
                              {
                                v176 = (v174 + 192);
                              }

                              else
                              {
                                v176 = "";
                              }

                              v177 = " ";
                              if (!v174)
                              {
                                v177 = "";
                              }

                              v178 = *(v174 + 88);
                              if (v178)
                              {
                                v161 = *(v178 + 492);
                              }

                              else
                              {
                                v161 = -1;
                              }

                              v162 = *(v174 + 64);
                              *buf = 136448002;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v176;
                              *&buf[22] = 2080;
                              v269 = v177;
                              *v270 = 1024;
                              *&v270[2] = v161;
                              *&v270[6] = 2048;
                              *&v270[8] = v162;
                              *&v270[16] = 2048;
                              *&v270[18] = v165;
                              v271 = 2048;
                              v272 = v162;
                              v273 = 2048;
                              v274 = v256;
                              _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                            }
                          }

                          nw_protocol_webtransport_stream_error(v174, v94);
                          nw_protocol_webtransport_stream_disconnect(v174, v163);
                        }

                        else if ((*(v94 + 580) & 2) == 0)
                        {
                          v185 = __nwlog_obj();
                          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
                          {
                            v186 = *(v94 + 492);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2082;
                            *&buf[14] = v94 + 496;
                            *&buf[22] = 2080;
                            v269 = " ";
                            *v270 = 1024;
                            *&v270[2] = v186;
                            *&v270[6] = 2048;
                            *&v270[8] = v165;
                            _os_log_impl(&dword_181A37000, v185, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                          }
                        }

LABEL_295:
                        *(v94 + 456) = 0;
                        nw_http_capsule_complete_capsule(v94 + 96);
                      }
                    }

                    else
                    {
                      if (v165 <= 16770047)
                      {
                        if ((v165 - 1) < 3 || v165 == -1)
                        {
LABEL_318:
                          v169 = __nwlog_obj();
                          if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2048;
                            *&buf[14] = v165;
                            _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                          }

                          goto LABEL_320;
                        }

                        if (!v165)
                        {
                          v168 = *(v94 + 448);
                          if (v168 && *(v168 + 184) != 3)
                          {
                            *v264 = MEMORY[0x1E69E9820];
                            *&v264[8] = 0x40000000;
                            *&v264[16] = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                            v265 = &__block_descriptor_tmp_35_36486;
                            v266 = v94 + 96;
                            v267 = v168;
                            v193 = *(v94 + 136);
                            do
                            {
                              if (!v193)
                              {
                                break;
                              }

                              v194 = *(v193 + 32);
                              v195 = (*&v264[16])(v264);
                              v193 = v194;
                            }

                            while ((v195 & 1) != 0);
LABEL_376:
                            nw_protocol_input_available(v168, v94);
                            goto LABEL_320;
                          }

LABEL_317:
                          nw_frame_array_finalize(v94 + 136, 1, 1);
                        }
                      }

                      else if ((v165 - 16770048) < 6)
                      {
                        goto LABEL_318;
                      }

LABEL_320:
                      if (capsule)
                      {
                        goto LABEL_295;
                      }
                    }
                  }
                }

                if ((*(v94 + 580) & 2) == 0)
                {
                  v212 = __nwlog_obj();
                  if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
                  {
                    v213 = *(v94 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v94 + 496;
                    *&buf[22] = 2080;
                    v269 = " ";
                    *v270 = 1024;
                    *&v270[2] = v213;
                    _os_log_impl(&dword_181A37000, v212, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                v214 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                LODWORD(v240) = 12;
                v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v214, 16, "%{public}s output handler has no get_input_frames callback", buf, v240);
                LOBYTE(iterate_block) = 16;
                LOBYTE(v249) = 0;
                if (!__nwlog_fault(v22, &iterate_block, &v249))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v25 = "%{public}s output handler has no get_input_frames callback";
                    goto LABEL_44;
                  }

LABEL_46:
                  if (!v22)
                  {
                    goto LABEL_48;
                  }

LABEL_47:
                  free(v22);
                  goto LABEL_48;
                }

                if (v249 != 1)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v25 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v90 = __nw_create_backtrace_string();
                v23 = __nwlog_obj();
                v24 = iterate_block;
                v224 = os_log_type_enabled(v23, iterate_block);
                if (!v90)
                {
                  if (v224)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v25 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v224)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v90;
                  v92 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_134:
                  _os_log_impl(&dword_181A37000, v23, v24, v92, buf, 0x16u);
                }
              }

              else
              {
                v222 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                LODWORD(v240) = 12;
                v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v222, 16, "%{public}s called with null output_handler", buf, v240);
                LOBYTE(iterate_block) = 16;
                LOBYTE(v249) = 0;
                if (!__nwlog_fault(v22, &iterate_block, &v249))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v25 = "%{public}s called with null output_handler";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v249 != 1)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v25 = "%{public}s called with null output_handler, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v90 = __nw_create_backtrace_string();
                v23 = __nwlog_obj();
                v24 = iterate_block;
                v229 = os_log_type_enabled(v23, iterate_block);
                if (!v90)
                {
                  if (v229)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v25 = "%{public}s called with null output_handler, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v229)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v90;
                  v92 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                  goto LABEL_134;
                }
              }
            }

            else
            {
              if (v116)
              {
                goto LABEL_48;
              }

              *(v94 + 476) = 3;
              v125 = *(v94 + 48);
              if (v125)
              {
                v126 = *(v125 + 40);
                if (v126)
                {
                  *(v94 + 440) = v126;
                  goto LABEL_48;
                }

                v216 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                LODWORD(v240) = 12;
                v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v216, 16, "%{public}s called with null webtransport_stream", buf, v240);
                LOBYTE(iterate_block) = 16;
                LOBYTE(v249) = 0;
                if (!__nwlog_fault(v22, &iterate_block, &v249))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v25 = "%{public}s called with null webtransport_stream";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v249 != 1)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v25 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v90 = __nw_create_backtrace_string();
                v23 = __nwlog_obj();
                v24 = iterate_block;
                v226 = os_log_type_enabled(v23, iterate_block);
                if (!v90)
                {
                  if (v226)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v25 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v226)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v90;
                  v92 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                  goto LABEL_134;
                }
              }

              else
              {
                v215 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                LODWORD(v240) = 12;
                v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v215, 16, "%{public}s called with null input_protocol", buf, v240);
                LOBYTE(iterate_block) = 16;
                LOBYTE(v249) = 0;
                if (!__nwlog_fault(v22, &iterate_block, &v249))
                {
                  goto LABEL_46;
                }

                if (iterate_block == 17)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v25 = "%{public}s called with null input_protocol";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v249 != 1)
                {
                  v23 = __nwlog_obj();
                  v24 = iterate_block;
                  if (os_log_type_enabled(v23, iterate_block))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v25 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                v90 = __nw_create_backtrace_string();
                v23 = __nwlog_obj();
                v24 = iterate_block;
                v225 = os_log_type_enabled(v23, iterate_block);
                if (!v90)
                {
                  if (v225)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v25 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_44;
                  }

                  goto LABEL_46;
                }

                if (v225)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = v90;
                  v92 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                  goto LABEL_134;
                }
              }
            }

LABEL_135:
            free(v90);
            if (!v22)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if ((*(v94 + 580) & 2) != 0)
          {
            goto LABEL_48;
          }

          v30 = __nwlog_obj();
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          v115 = *(v94 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_establish";
          *&buf[12] = 2082;
          *&buf[14] = v94 + 496;
          *&buf[22] = 2080;
          v269 = " ";
          *v270 = 1024;
          *&v270[2] = v115;
          v32 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
LABEL_40:
          v34 = v30;
          v35 = OS_LOG_TYPE_ERROR;
LABEL_41:
          _os_log_impl(&dword_181A37000, v34, v35, v32, buf, 0x26u);
          goto LABEL_48;
        }

        v107 = 1;
      }

      *(v94 + 480) = v107;
      goto LABEL_171;
    }

    v69 = __nwlog_obj();
    v70 = v67[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v269 = 1;
    *v270 = 2048;
    *&v270[2] = v70;
    LODWORD(v240) = 42;
    v71 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v69, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, v240);
    LOBYTE(iterate_block) = 16;
    LOBYTE(v249) = 0;
    if (__nwlog_fault(v71, &iterate_block, &v249))
    {
      if (iterate_block == 17)
      {
        v72 = __nwlog_obj();
        v73 = iterate_block;
        if (os_log_type_enabled(v72, iterate_block))
        {
          v74 = v67[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v269 = 1;
          *v270 = 2048;
          *&v270[2] = v74;
          v75 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_139:
          _os_log_impl(&dword_181A37000, v72, v73, v75, buf, 0x2Au);
        }
      }

      else if (v249 == 1)
      {
        v76 = __nw_create_backtrace_string();
        v72 = __nwlog_obj();
        v73 = iterate_block;
        v77 = os_log_type_enabled(v72, iterate_block);
        if (v76)
        {
          if (v77)
          {
            v78 = v67[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v269 = 1;
            *v270 = 2048;
            *&v270[2] = v78;
            *&v270[10] = 2082;
            *&v270[12] = v76;
            _os_log_impl(&dword_181A37000, v72, v73, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v76);
          goto LABEL_140;
        }

        if (v77)
        {
          v93 = v67[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v269 = 1;
          *v270 = 2048;
          *&v270[2] = v93;
          v75 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_139;
        }
      }

      else
      {
        v72 = __nwlog_obj();
        v73 = iterate_block;
        if (os_log_type_enabled(v72, iterate_block))
        {
          v87 = v67[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v269 = 1;
          *v270 = 2048;
          *&v270[2] = v87;
          v75 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_139;
        }
      }
    }

LABEL_140:
    if (v71)
    {
      free(v71);
    }

    v67[2] = 0;
    goto LABEL_143;
  }

  if ((handle[580] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v46 = *(handle + 123);
      v47 = *(handle + 4);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_session_listen_protocol_new_flow";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v269 = " ";
      *v270 = 1024;
      *&v270[2] = v46;
      *&v270[6] = 2048;
      *&v270[8] = v47;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Got output handler from new_flow %p for CONNECT stream, sending async connect and awaiting input for session", buf, 0x30u);
    }
  }

  *(handle + 119) = 3;
  v48 = *(handle + 58);
  v49 = *(handle + 52);
  v241[0] = MEMORY[0x1E69E9820];
  v241[1] = 0x40000000;
  v241[2] = ___ZL57nw_protocol_webtransport_session_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke;
  v241[3] = &unk_1E6A31C80;
  v241[4] = v48;
  nw_queue_context_async(v49, v241);
  LOBYTE(v5) = 1;
  return v5 & 1;
}

uint64_t ___ZL57nw_protocol_webtransport_session_listen_protocol_new_flowP18nw_listen_protocolP11nw_endpointP13nw_parameters_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);

    return nw_protocol_connect(v3, v2);
  }

  return result;
}

void ___ZL42nw_protocol_webtransport_session_callbacksv_block_invoke()
{
  qword_1EA842000 = nw_protocol_default_replace_input_handler;
  qword_1EA8420F8 = nw_protocol_default_input_flush;
  qword_1EA8420E8 = nw_protocol_default_get_message_properties;
  qword_1EA842058 = nw_protocol_default_link_state;
  qword_1EA842070 = nw_protocol_default_get_local;
  qword_1EA842068 = nw_protocol_default_get_path;
  qword_1EA842098 = nw_protocol_default_updated_path;
  qword_1EA8420B8 = nw_protocol_default_get_output_local;
  qword_1EA8420C0 = nw_protocol_default_get_output_interface;
  qword_1EA8420F0 = nw_protocol_default_reset;
  qword_1EA8420A0 = nw_protocol_default_supports_external_data;
  qword_1EA8420C8 = nw_protocol_default_waiting_for_output;
  qword_1EA842080 = nw_protocol_default_register_notification;
  qword_1EA842088 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_session_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_session_add_input_handler;
  qword_1EA841FF8 = nw_protocol_webtransport_session_remove_input_handler;
  qword_1EA842008 = nw_protocol_webtransport_session_connect;
  qword_1EA842010 = nw_protocol_webtransport_session_disconnect;
  qword_1EA842018 = nw_protocol_webtransport_session_connected;
  qword_1EA842020 = nw_protocol_webtransport_session_disconnected;
  qword_1EA842028 = nw_protocol_webtransport_session_error;
  qword_1EA842030 = nw_protocol_webtransport_session_input_available;
  qword_1EA842038 = nw_protocol_webtransport_session_output_available;
  qword_1EA842040 = nw_protocol_webtransport_session_get_input_frames;
  qword_1EA842048 = nw_protocol_webtransport_session_get_output_frames;
  qword_1EA842050 = nw_protocol_webtransport_session_finalize_output_frames;
  qword_1EA842060 = nw_protocol_webtransport_session_get_parameters;
  qword_1EA842078 = nw_protocol_webtransport_session_get_remote_endpoint;
  qword_1EA842090 = nw_protocol_webtransport_session_notify;
  qword_1EA8420A8 = nw_protocol_webtransport_session_input_finished;
  qword_1EA8420B0 = nw_protocol_webtransport_session_output_finished;
  qword_1EA8420D0 = nw_protocol_webtransport_session_copy_info;
  qword_1EA8420D8 = nw_protocol_webtransport_session_add_listen_handler;
  qword_1EA8420E0 = nw_protocol_webtransport_session_remove_listen_handler;
}

uint64_t nw_protocol_webtransport_session_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v229 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[580] & 2) == 0 && gLogDatapath == 1)
      {
        v89 = a2;
        v90 = __nwlog_obj();
        v91 = os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG);
        a2 = v89;
        if (v91)
        {
          v92 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v223 = " ";
          *v224 = 1024;
          *&v224[2] = v92;
          _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
          a2 = v89;
        }
      }

      if (*(handle + 53) != a2)
      {
        if ((handle[580] & 2) != 0)
        {
          return 1;
        }

        if (gLogDatapath != 1)
        {
          return 1;
        }

        v93 = __nwlog_obj();
        if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v94 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v223 = " ";
        *v224 = 1024;
        *&v224[2] = v94;
        v6 = "%{public}s %{public}s%s<i%u> ignoring request to remove webtransport listen handler, does not match our handler";
        v7 = v93;
        v8 = OS_LOG_TYPE_DEBUG;
        goto LABEL_15;
      }

      if ((handle[580] & 2) == 0 && gLogDatapath == 1)
      {
        v101 = a2;
        v102 = __nwlog_obj();
        v103 = os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG);
        a2 = v101;
        if (v103)
        {
          v104 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v223 = " ";
          *v224 = 1024;
          *&v224[2] = v104;
          _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removing protocol listen handler", buf, 0x26u);
          a2 = v101;
        }
      }

      handle[580] |= 8u;
      *(handle + 53) = 0;
      a2->protocol_handler = 0;
      if (*(handle + 119) == 5)
      {
        if ((handle[580] & 2) != 0)
        {
          return 1;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          return 1;
        }

        v5 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v223 = " ";
        *v224 = 1024;
        *&v224[2] = v5;
        v6 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v7 = v4;
        v8 = OS_LOG_TYPE_INFO;
        goto LABEL_15;
      }

      v9 = *(handle + 121);
      if (v9)
      {
        if ((handle[580] & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v11 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v223 = " ";
            *v224 = 1024;
            *&v224[2] = v11;
            *&v224[6] = 1024;
            *&v224[8] = v9;
            v12 = "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d";
            v13 = v10;
            v14 = 44;
LABEL_23:
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
          }
        }
      }

      else if ((handle[580] & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v16 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v223 = " ";
          *v224 = 1024;
          *&v224[2] = v16;
          v12 = "%{public}s %{public}s%s<i%u> Closing webtransport session without error";
          v13 = v15;
          v14 = 38;
          goto LABEL_23;
        }
      }

      v17 = *(handle + 119);
      *(handle + 119) = 5;
      v18 = *(handle + 24);
      if (v18)
      {
        v200[0] = MEMORY[0x1E69E9820];
        v200[1] = 0x40000000;
        v200[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
        v200[3] = &__block_descriptor_tmp_24_36439;
        v201 = v9;
        nw_hash_table_apply(v18, v200);
      }

      v19 = *(handle + 56);
      if (v19)
      {
        v20 = *(v19 + 88);
        if (v9)
        {
          nw_protocol_error(*(v19 + 48), *(handle + 56));
        }

        nw_protocol_disconnect(v19, v20);
      }

      v21 = *(handle + 42);
      if (v21)
      {
        if (v9)
        {
          do
          {
            v22 = *(v21 + 112);
            v23 = *(v21 + 88);
            nw_protocol_error(*(v21 + 48), v21);
            nw_protocol_disconnect(v21, v23);
            v21 = v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v24 = *(v21 + 112);
            nw_protocol_disconnect(v21, *(v21 + 88));
            v21 = v24;
          }

          while (v24);
        }
      }

      v25 = *(handle + 55);
      if (v25)
      {
        v26 = *(v25 + 88);
        if (v9)
        {
          nw_protocol_error(*(v25 + 48), *(handle + 55));
        }

        nw_protocol_disconnect(v25, v26);
      }

      if (*(handle + 4))
      {
        nw_protocol_remove_instance(handle);
        nw_protocol_disconnect(*(handle + 4), handle);
      }

      v27 = *(handle + 50);
      if (!v27)
      {
        return 1;
      }

      webtransport_state = nw_http_connection_metadata_get_webtransport_state(v27);
      if (!webtransport_state)
      {
        return 1;
      }

      v29 = webtransport_state;
      if (v17 != 4 && v17 != 1)
      {
        return 1;
      }

      v30 = *(webtransport_state + 16);
      *(webtransport_state + 16) = v30 - 1;
      if (v30)
      {
LABEL_63:
        if (handle[580])
        {
          return 1;
        }

        v43 = *v29;
        if (!*v29)
        {
          return 1;
        }

        v44 = *(v43 + 352);
        v45 = *(v43 + 360);
        v46 = (v44 + 360);
        if (!v44)
        {
          v46 = v29 + 1;
        }

        *v46 = v45;
        *v45 = v44;
        *(v43 + 352) = 0;
        *(v43 + 360) = 0;
        v47 = *(v43 + 32);
        if (!v47 || *(v43 + 480) != 2)
        {
          goto LABEL_99;
        }

        v48 = v47[2];
        if (nw_protocol_http2_identifier::onceToken != -1)
        {
          v156 = v47[2];
          dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
          v48 = v156;
        }

        if (!nw_protocols_are_equal(v48, &nw_protocol_http2_identifier::http2_protocol_identifier))
        {
          v49 = v47[2];
          if (nw_protocol_http3_identifier::onceToken != -1)
          {
            v158 = v47[2];
            dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
            v49 = v158;
          }

          if (!nw_protocols_are_equal(v49, &nw_protocol_http3_identifier::http3_protocol_identifier))
          {
            v50 = v47[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v159 = v47[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v50 = v159;
            }

            if (!nw_protocols_are_equal(v50, &nw_protocol_http_messaging_identifier::protocol_identifier))
            {
LABEL_99:
              v63 = *(v43 + 480);
              if (v63 > 1)
              {
                if ((*(v43 + 580) & 2) != 0)
                {
                  return 1;
                }

                v64 = __nwlog_obj();
                if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  return 1;
                }

                v65 = *(v43 + 492);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v43 + 496;
                *&buf[22] = 2080;
                v223 = " ";
                *v224 = 1024;
                *&v224[2] = v65;
                v6 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
                v7 = v64;
                v8 = OS_LOG_TYPE_ERROR;
LABEL_15:
                _os_log_impl(&dword_181A37000, v7, v8, v6, buf, 0x26u);
                return 1;
              }

              if ((*(v43 + 580) & 1) == 0)
              {
                if (!*(v43 + 476))
                {
                  nw_webtransport_http_send_connect(v43);
                }

                return 1;
              }

              v66 = *(v43 + 476);
              if (v63 == 1)
              {
                if (v66 != 3)
                {
                  if (v66)
                  {
                    return 1;
                  }

                  v67 = *(v43 + 48);
                  if (v67)
                  {
                    v68 = *(v67 + 40);
                    if (v68)
                    {
                      nw_protocol_replace_input_handler(*(v43 + 32), v43, *(v67 + 40));
                      *(v43 + 440) = v68;
                      nw_protocol_set_output_handler(v43, 0);
                      nw_protocol_set_input_handler(v43, 0);
                      if (*(v43 + 580))
                      {
                        v69 = *(*(v43 + 440) + 32);
                        v70 = *(v69 + 16);
                        if (nw_protocol_http_messaging_identifier::onceToken != -1)
                        {
                          v185 = *(v69 + 16);
                          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                          v70 = v185;
                        }

                        if (nw_protocols_are_equal(v70, &nw_protocol_http_messaging_identifier::protocol_identifier))
                        {
                          goto LABEL_118;
                        }

                        v71 = *(v69 + 16);
                        if (nw_protocol_http3_identifier::onceToken != -1)
                        {
                          v188 = *(v69 + 16);
                          dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                          v71 = v188;
                        }

                        if (nw_protocols_are_equal(v71, &nw_protocol_http3_identifier::http3_protocol_identifier))
                        {
LABEL_118:
                          v72 = *(v43 + 368);
                          if (v72)
                          {
                            v73 = nw_parameters_copy_protocol_options_legacy(v72, v69);
                            if (v73)
                            {
                              if ((*(v68 + 276) & 0x10) == 0 && gLogDatapath == 1)
                              {
                                v189 = v73;
                                v190 = __nwlog_obj();
                                v191 = os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG);
                                v73 = v189;
                                if (v191)
                                {
                                  v192 = *(v68 + 88);
                                  if (v192)
                                  {
                                    v193 = *(v192 + 492);
                                  }

                                  else
                                  {
                                    v193 = -1;
                                  }

                                  v198 = *(v68 + 64);
                                  *buf = 136447490;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v68 + 192;
                                  *&buf[22] = 2080;
                                  v223 = " ";
                                  *v224 = 1024;
                                  *&v224[2] = v193;
                                  *&v224[6] = 2048;
                                  *&v224[8] = v198;
                                  *&v224[16] = 2048;
                                  *&v224[18] = v189;
                                  _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                                  v73 = v189;
                                }
                              }

                              v74 = v73;
                              nw_http3_set_stream_mode(v73, 0);
                              os_release(v74);
                            }

                            else
                            {
                              if ((*(v43 + 580) & 2) == 0 && gLogDatapath == 1)
                              {
                                v196 = __nwlog_obj();
                                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
                                {
                                  v197 = *(v43 + 492);
                                  *buf = 136446978;
                                  *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v43 + 496;
                                  *&buf[22] = 2080;
                                  v223 = " ";
                                  *v224 = 1024;
                                  *&v224[2] = v197;
                                  _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                                }
                              }

                              v106 = *(v68 + 88);
                              nw_protocol_error(*(v68 + 48), v68);
                              nw_protocol_disconnect(v68, v106);
                            }
                          }
                        }
                      }

                      goto LABEL_180;
                    }

                    v175 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    LODWORD(v199) = 12;
                    v170 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v175, 16, "%{public}s called with null webtransport_stream", buf, v199);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v215[0]) = 0;
                    if (__nwlog_fault(v170, type, v215))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v171 = __nwlog_obj();
                        v172 = type[0];
                        if (!os_log_type_enabled(v171, type[0]))
                        {
                          goto LABEL_386;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v173 = "%{public}s called with null webtransport_stream";
                        goto LABEL_385;
                      }

                      if (LOBYTE(v215[0]) != 1)
                      {
                        v171 = __nwlog_obj();
                        v172 = type[0];
                        if (!os_log_type_enabled(v171, type[0]))
                        {
                          goto LABEL_386;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v173 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                        goto LABEL_385;
                      }

                      backtrace_string = __nw_create_backtrace_string();
                      v171 = __nwlog_obj();
                      v172 = type[0];
                      v187 = os_log_type_enabled(v171, type[0]);
                      if (backtrace_string)
                      {
                        if (v187)
                        {
                          *buf = 136446466;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          *&buf[12] = 2082;
                          *&buf[14] = backtrace_string;
                          _os_log_impl(&dword_181A37000, v171, v172, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(backtrace_string);
                        if (!v170)
                        {
                          goto LABEL_180;
                        }

                        goto LABEL_387;
                      }

                      if (v187)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        v173 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_385:
                        _os_log_impl(&dword_181A37000, v171, v172, v173, buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v169 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    LODWORD(v199) = 12;
                    v170 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v169, 16, "%{public}s called with null input_protocol", buf, v199);
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v215[0]) = 0;
                    if (!__nwlog_fault(v170, type, v215))
                    {
                      goto LABEL_386;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v171 = __nwlog_obj();
                      v172 = type[0];
                      if (!os_log_type_enabled(v171, type[0]))
                      {
                        goto LABEL_386;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v173 = "%{public}s called with null input_protocol";
                      goto LABEL_385;
                    }

                    if (LOBYTE(v215[0]) != 1)
                    {
                      v171 = __nwlog_obj();
                      v172 = type[0];
                      if (!os_log_type_enabled(v171, type[0]))
                      {
                        goto LABEL_386;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v173 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                      goto LABEL_385;
                    }

                    v181 = __nw_create_backtrace_string();
                    v171 = __nwlog_obj();
                    v172 = type[0];
                    v182 = os_log_type_enabled(v171, type[0]);
                    if (!v181)
                    {
                      if (!v182)
                      {
                        goto LABEL_386;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v173 = "%{public}s called with null input_protocol, no backtrace";
                      goto LABEL_385;
                    }

                    if (v182)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v181;
                      _os_log_impl(&dword_181A37000, v171, v172, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v181);
                  }

LABEL_386:
                  if (!v170)
                  {
LABEL_180:
                    *(v43 + 476) = 2;
                    return 1;
                  }

LABEL_387:
                  free(v170);
                  goto LABEL_180;
                }

                v77 = *(v43 + 32);
                if (!v77)
                {
                  v174 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  LODWORD(v199) = 12;
                  v163 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v174, 16, "%{public}s called with null output_handler", buf, v199);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v215[0]) = 0;
                  if (!__nwlog_fault(v163, type, v215))
                  {
                    goto LABEL_381;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    if (!os_log_type_enabled(v164, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v166 = "%{public}s called with null output_handler";
                  }

                  else if (LOBYTE(v215[0]) == 1)
                  {
                    v183 = __nw_create_backtrace_string();
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    v184 = os_log_type_enabled(v164, type[0]);
                    if (v183)
                    {
                      if (v184)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v183;
                        _os_log_impl(&dword_181A37000, v164, v165, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v183);
LABEL_381:
                      if (!v163)
                      {
                        return 1;
                      }

LABEL_382:
                      free(v163);
                      return 1;
                    }

                    if (!v184)
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v166 = "%{public}s called with null output_handler, no backtrace";
                  }

                  else
                  {
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    if (!os_log_type_enabled(v164, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v166 = "%{public}s called with null output_handler, backtrace limit exceeded";
                  }

LABEL_380:
                  _os_log_impl(&dword_181A37000, v164, v165, v166, buf, 0xCu);
                  goto LABEL_381;
                }

                v78 = v77[3];
                if (v78 && *(v78 + 80))
                {
                  for (i = 3; (i | 2) == 3; i = *(v43 + 476))
                  {
                    if (!nw_protocol_get_input_frames(v77, v43, 0, 0, 0xFFFFFFFFLL, v43 + 120))
                    {
                      return 1;
                    }

                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x3802000000;
                    v223 = __Block_byref_object_copy__36471;
                    *v224 = __Block_byref_object_dispose__36472;
                    *&v224[8] = nw_protocol_copy_http_definition();
                    v224[16] |= 1u;
                    *type = MEMORY[0x1E69E9820];
                    v204 = 0x40000000;
                    v205 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                    v206 = &unk_1E6A31940;
                    v207 = buf;
                    v208 = v43;
                    v209 = v43 + 120;
                    v80 = *(v43 + 120);
                    do
                    {
                      if (!v80)
                      {
                        break;
                      }

                      v81 = *(v80 + 32);
                      v82 = (v205)(type);
                      v80 = v81;
                    }

                    while ((v82 & 1) != 0);
                    _Block_object_dispose(buf, 8);
                    if ((v224[16] & 1) != 0 && *&v224[8])
                    {
                      os_release(*&v224[8]);
                    }
                  }

                  v99 = *(v43 + 480);
                  if (v99 == 1)
                  {
                    nw_webtransport_http3_handle_input(v43);
                    v105 = *(v43 + 448);
                    if (v105 && *(v105 + 72))
                    {
                      nw_protocol_input_available(*(v105 + 48), v105);
                    }

                    return 1;
                  }

                  if (v99)
                  {
                    return 1;
                  }

                  if ((*(v43 + 580) & 2) == 0 && gLogDatapath == 1)
                  {
                    v194 = __nwlog_obj();
                    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
                    {
                      v195 = *(v43 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v43 + 496;
                      *&buf[22] = 2080;
                      v223 = " ";
                      *v224 = 1024;
                      *&v224[2] = v195;
                      _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                    }
                  }

                  if (*(v43 + 476) != 4)
                  {
                    return 1;
                  }

                  v100 = (v43 + 96);
                  while (1)
                  {
                    capsule = nw_http_capsule_framer_read_capsule((v43 + 96), v43);
                    if (!capsule && !*(v43 + 136))
                    {
                      return 1;
                    }

                    if (*(v43 + 456))
                    {
                      goto LABEL_196;
                    }

                    v112 = *v100;
                    if (*v100 == -1)
                    {
LABEL_251:
                      v126 = __nwlog_obj();
                      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2048;
                        *&buf[14] = v112;
                        _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                      }

                      goto LABEL_196;
                    }

                    v113 = *(v43 + 104) != -1 && *(v43 + 112) == 0;
                    if (v112 <= 16770303)
                    {
                      if ((v112 - 16770048) < 6 || (v112 + 1) <= 4 && v112)
                      {
                        goto LABEL_251;
                      }
                    }

                    else if ((v112 - 420171065) <= 9 && ((1 << (v112 - 57)) & 0x2EF) != 0)
                    {
                      v221 = -1;
                      if (nw_http_capsule_framer_parse_vle_value((v43 + 96), v43, &v221))
                      {
                        stream = nw_webtransport_session_get_stream(v43, v221);
                        if (stream)
                        {
                          goto LABEL_245;
                        }

                        if ((v112 - 420171067) > 1)
                        {
                          goto LABEL_278;
                        }

                        v133 = v221;
                        v134 = *(v43 + 580);
                        if (v221 >> 60 || ((v221 ^ v134) & 1) == 0)
                        {
                          if ((v134 & 2) == 0)
                          {
                            v143 = __nwlog_obj();
                            if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                            {
                              v144 = *(v43 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v43 + 496;
                              *&buf[22] = 2080;
                              v223 = " ";
                              *v224 = 1024;
                              *&v224[2] = v144;
                              v145 = v143;
                              v146 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                              goto LABEL_277;
                            }
                          }

LABEL_278:
                          if ((*(v43 + 580) & 2) == 0)
                          {
                            v147 = __nwlog_obj();
                            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                            {
                              v148 = *(v43 + 492);
                              *buf = 136447490;
                              *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                              *&buf[12] = 2082;
                              *&buf[14] = v43 + 496;
                              *&buf[22] = 2080;
                              v223 = " ";
                              *v224 = 1024;
                              *&v224[2] = v148;
                              *&v224[6] = 2048;
                              *&v224[8] = v221;
                              *&v224[16] = 2048;
                              *&v224[18] = v112;
                              _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                            }
                          }

                          goto LABEL_196;
                        }

                        v135 = *(v43 + 424);
                        if (!v135 || (v136 = *v135) == 0 || !*v136)
                        {
                          if ((v134 & 2) == 0)
                          {
                            v149 = __nwlog_obj();
                            if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                            {
                              v150 = *(v43 + 492);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v43 + 496;
                              *&buf[22] = 2080;
                              v223 = " ";
                              *v224 = 1024;
                              *&v224[2] = v150;
                              v145 = v149;
                              v146 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_277:
                              _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_ERROR, v146, buf, 0x26u);
                            }
                          }

                          goto LABEL_278;
                        }

                        v137 = _nw_parameters_copy();
                        *(v43 + 580) |= 0x20u;
                        *(v43 + 176) = v133;
                        v138 = (***(v43 + 424))(*(v43 + 424), *(v43 + 384), v137);
                        *(v43 + 176) = -1;
                        *(v43 + 580) &= ~0x20u;
                        if (v138)
                        {
                          v139 = nw_webtransport_session_get_stream(v43, v133);
                        }

                        else
                        {
                          v139 = 0;
                        }

                        if (v137)
                        {
                          os_release(v137);
                        }

                        if (!v139)
                        {
                          goto LABEL_278;
                        }

                        stream = v139;
                        if (*(v139 + 46) != 3)
                        {
LABEL_245:
                          *(v43 + 456) = stream;
                          goto LABEL_196;
                        }

                        if ((*(v43 + 580) & 2) != 0)
                        {
                          goto LABEL_196;
                        }

                        v151 = __nwlog_obj();
                        if (!os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_196;
                        }

                        v152 = *(v43 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v43 + 496;
                        *&buf[22] = 2080;
                        v223 = " ";
                        *v224 = 1024;
                        *&v224[2] = v152;
                        *&v224[6] = 2048;
                        *&v224[8] = v221;
                        v129 = v151;
                        v130 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                      }

                      else
                      {
                        if (!v113)
                        {
                          goto LABEL_196;
                        }

                        if ((*(v43 + 580) & 2) != 0)
                        {
                          goto LABEL_196;
                        }

                        v127 = __nwlog_obj();
                        if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_196;
                        }

                        v128 = *(v43 + 492);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                        *&buf[12] = 2082;
                        *&buf[14] = v43 + 496;
                        *&buf[22] = 2080;
                        v223 = " ";
                        *v224 = 1024;
                        *&v224[2] = v128;
                        *&v224[6] = 2048;
                        *&v224[8] = v112;
                        v129 = v127;
                        v130 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                      }

                      _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, v130, buf, 0x30u);
                    }

                    else if ((v112 - 16770304) < 4)
                    {
                      goto LABEL_251;
                    }

LABEL_196:
                    v111 = *(v43 + 96);
                    if ((*(v43 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v153 = __nwlog_obj();
                      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
                      {
                        v154 = *(v43 + 492);
                        v155 = *(v43 + 104);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http2_handle_capsules";
                        *&buf[12] = 2082;
                        *&buf[14] = v43 + 496;
                        *&buf[22] = 2080;
                        v223 = " ";
                        *v224 = 1024;
                        *&v224[2] = v154;
                        *&v224[6] = 2048;
                        *&v224[8] = v111;
                        *&v224[16] = 2048;
                        *&v224[18] = v155;
                        _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                      }
                    }

                    if (v111 > 16770303)
                    {
                      if (v111 <= 420171064)
                      {
                        if ((v111 - 16770304) < 4)
                        {
                          goto LABEL_215;
                        }

                        if (v111 == 420171064)
                        {
                          goto LABEL_214;
                        }

                        goto LABEL_272;
                      }

                      if ((v111 - 420171065) >= 2)
                      {
                        if ((v111 - 420171067) < 2)
                        {
                          v114 = *(v43 + 456);
                          v116 = v111 == 420171068 && capsule;
                          v215[0] = MEMORY[0x1E69E9820];
                          v215[1] = 0x40000000;
                          v216 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                          v217 = &__block_descriptor_tmp_34_36485;
                          v220 = v116;
                          v218 = v43 + 96;
                          v219 = v114;
                          v117 = *(v43 + 136);
                          do
                          {
                            if (!v117)
                            {
                              break;
                            }

                            v118 = *(v117 + 32);
                            v119 = (v216)(v215);
                            v117 = v118;
                          }

                          while ((v119 & 1) != 0);
                          if (!v116)
                          {
                            goto LABEL_271;
                          }

                          nw_protocol_input_finished(v114, v43);
                        }

                        goto LABEL_272;
                      }

                      if (capsule)
                      {
                        v120 = *(v43 + 456);
                        v221 = -1;
                        if (nw_http_capsule_framer_parse_vle_value((v43 + 96), v43, &v221))
                        {
                          if (!v120 || (*(v120 + 276) & 0x10) == 0)
                          {
                            v121 = __nwlog_obj();
                            if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                            {
                              if (v120)
                              {
                                v122 = (v120 + 192);
                              }

                              else
                              {
                                v122 = "";
                              }

                              v123 = " ";
                              if (!v120)
                              {
                                v123 = "";
                              }

                              v124 = *(v120 + 88);
                              if (v124)
                              {
                                v107 = *(v124 + 492);
                              }

                              else
                              {
                                v107 = -1;
                              }

                              v108 = *(v120 + 64);
                              *buf = 136448002;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = v122;
                              *&buf[22] = 2080;
                              v223 = v123;
                              *v224 = 1024;
                              *&v224[2] = v107;
                              *&v224[6] = 2048;
                              *&v224[8] = v108;
                              *&v224[16] = 2048;
                              *&v224[18] = v111;
                              v225 = 2048;
                              v226 = v108;
                              v227 = 2048;
                              v228 = v221;
                              _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                            }
                          }

                          nw_protocol_webtransport_stream_error(v120, v43);
                          nw_protocol_webtransport_stream_disconnect(v120, v109);
                        }

                        else if ((*(v43 + 580) & 2) == 0)
                        {
                          v131 = __nwlog_obj();
                          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                          {
                            v132 = *(v43 + 492);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2082;
                            *&buf[14] = v43 + 496;
                            *&buf[22] = 2080;
                            v223 = " ";
                            *v224 = 1024;
                            *&v224[2] = v132;
                            *&v224[6] = 2048;
                            *&v224[8] = v111;
                            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                          }
                        }

LABEL_192:
                        *(v43 + 456) = 0;
                        nw_http_capsule_complete_capsule(v43 + 96);
                      }
                    }

                    else
                    {
                      if (v111 <= 16770047)
                      {
                        if ((v111 - 1) < 3 || v111 == -1)
                        {
LABEL_215:
                          v115 = __nwlog_obj();
                          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_handle_capsules";
                            *&buf[12] = 2048;
                            *&buf[14] = v111;
                            _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                          }

                          goto LABEL_272;
                        }

                        if (!v111)
                        {
                          v114 = *(v43 + 448);
                          if (v114 && *(v114 + 184) != 3)
                          {
                            v210[0] = MEMORY[0x1E69E9820];
                            v210[1] = 0x40000000;
                            v211 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                            v212 = &__block_descriptor_tmp_35_36486;
                            v213 = v43 + 96;
                            v214 = v114;
                            v140 = *(v43 + 136);
                            do
                            {
                              if (!v140)
                              {
                                break;
                              }

                              v141 = *(v140 + 32);
                              v142 = (v211)(v210);
                              v140 = v141;
                            }

                            while ((v142 & 1) != 0);
LABEL_271:
                            nw_protocol_input_available(v114, v43);
                            goto LABEL_272;
                          }

LABEL_214:
                          nw_frame_array_finalize(v43 + 136, 1, 1);
                        }
                      }

                      else if ((v111 - 16770048) < 6)
                      {
                        goto LABEL_215;
                      }

LABEL_272:
                      if (capsule)
                      {
                        goto LABEL_192;
                      }
                    }
                  }
                }

                if ((*(v43 + 580) & 2) == 0)
                {
                  v160 = __nwlog_obj();
                  if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                  {
                    v161 = *(v43 + 492);
                    *buf = 136446978;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v43 + 496;
                    *&buf[22] = 2080;
                    v223 = " ";
                    *v224 = 1024;
                    *&v224[2] = v161;
                    _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                  }
                }

                v162 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                LODWORD(v199) = 12;
                v163 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v162, 16, "%{public}s output handler has no get_input_frames callback", buf, v199);
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v215[0]) = 0;
                if (!__nwlog_fault(v163, type, v215))
                {
                  goto LABEL_381;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v164 = __nwlog_obj();
                  v165 = type[0];
                  if (!os_log_type_enabled(v164, type[0]))
                  {
                    goto LABEL_381;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v166 = "%{public}s output handler has no get_input_frames callback";
                  goto LABEL_380;
                }

                if (LOBYTE(v215[0]) != 1)
                {
                  v164 = __nwlog_obj();
                  v165 = type[0];
                  if (!os_log_type_enabled(v164, type[0]))
                  {
                    goto LABEL_381;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v166 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                  goto LABEL_380;
                }

                v176 = __nw_create_backtrace_string();
                v164 = __nwlog_obj();
                v165 = type[0];
                v177 = os_log_type_enabled(v164, type[0]);
                if (!v176)
                {
                  if (!v177)
                  {
                    goto LABEL_381;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  v166 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                  goto LABEL_380;
                }

                if (v177)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_http_get_input";
                  *&buf[12] = 2082;
                  *&buf[14] = v176;
                  v178 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_334:
                  _os_log_impl(&dword_181A37000, v164, v165, v178, buf, 0x16u);
                }
              }

              else
              {
                if (v66)
                {
                  return 1;
                }

                *(v43 + 476) = 3;
                v75 = *(v43 + 48);
                if (v75)
                {
                  v76 = *(v75 + 40);
                  if (v76)
                  {
                    *(v43 + 440) = v76;
                    return 1;
                  }

                  v168 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  LODWORD(v199) = 12;
                  v163 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v168, 16, "%{public}s called with null webtransport_stream", buf, v199);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v215[0]) = 0;
                  if (!__nwlog_fault(v163, type, v215))
                  {
                    goto LABEL_381;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    if (!os_log_type_enabled(v164, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v166 = "%{public}s called with null webtransport_stream";
                    goto LABEL_380;
                  }

                  if (LOBYTE(v215[0]) != 1)
                  {
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    if (!os_log_type_enabled(v164, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v166 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_380;
                  }

                  v176 = __nw_create_backtrace_string();
                  v164 = __nwlog_obj();
                  v165 = type[0];
                  v180 = os_log_type_enabled(v164, type[0]);
                  if (!v176)
                  {
                    if (!v180)
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v166 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_380;
                  }

                  if (v180)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v176;
                    v178 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                    goto LABEL_334;
                  }
                }

                else
                {
                  v167 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                  LODWORD(v199) = 12;
                  v163 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v167, 16, "%{public}s called with null input_protocol", buf, v199);
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v215[0]) = 0;
                  if (!__nwlog_fault(v163, type, v215))
                  {
                    goto LABEL_381;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    if (!os_log_type_enabled(v164, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v166 = "%{public}s called with null input_protocol";
                    goto LABEL_380;
                  }

                  if (LOBYTE(v215[0]) != 1)
                  {
                    v164 = __nwlog_obj();
                    v165 = type[0];
                    if (!os_log_type_enabled(v164, type[0]))
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v166 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                    goto LABEL_380;
                  }

                  v176 = __nw_create_backtrace_string();
                  v164 = __nwlog_obj();
                  v165 = type[0];
                  v179 = os_log_type_enabled(v164, type[0]);
                  if (!v176)
                  {
                    if (!v179)
                    {
                      goto LABEL_381;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    v166 = "%{public}s called with null input_protocol, no backtrace";
                    goto LABEL_380;
                  }

                  if (v179)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v176;
                    v178 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                    goto LABEL_334;
                  }
                }
              }

              free(v176);
              if (!v163)
              {
                return 1;
              }

              goto LABEL_382;
            }
          }
        }

        v51 = nw_protocol_copy_info(v47);
        v52 = v51;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_27_36446;
        aBlock[4] = v43;
        if (v51)
        {
          _nw_array_apply(v51, aBlock);
          v53 = *(v43 + 400);
          if (!v53)
          {
            os_release(v52);
            return 1;
          }
        }

        else
        {
          v53 = *(v43 + 400);
          if (!v53)
          {
            return 1;
          }
        }

        version = nw_http_connection_metadata_get_version(v53);
        v55 = version;
        if (version == 4)
        {
          v56 = 0;
        }

        else
        {
          if (version != 5)
          {
LABEL_87:
            v57 = v47[2];
            if (nw_protocol_http_messaging_identifier::onceToken != -1)
            {
              v157 = v47[2];
              dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
              v57 = v157;
            }

            v58 = nw_protocols_are_equal(v57, &nw_protocol_http_messaging_identifier::protocol_identifier);
            v59 = *(v43 + 580);
            if (v58)
            {
              v59 |= 0x40u;
              *(v43 + 580) = v59;
            }

            if ((v59 & 2) == 0)
            {
              v60 = __nwlog_obj();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                v61 = *(v43 + 492);
                if (v55 == 4)
                {
                  v62 = 2;
                }

                else
                {
                  v62 = 3;
                }

                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_establish";
                *&buf[12] = 2082;
                *&buf[14] = v43 + 496;
                *&buf[22] = 2080;
                v223 = " ";
                *v224 = 1024;
                *&v224[2] = v61;
                *&v224[6] = 1024;
                *&v224[8] = v62;
                _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
              }
            }

            if (v52)
            {
              os_release(v52);
            }

            goto LABEL_99;
          }

          v56 = 1;
        }

        *(v43 + 480) = v56;
        goto LABEL_87;
      }

      v31 = __nwlog_obj();
      v32 = v29[2];
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = "connection_state->local_sessions";
      *&buf[22] = 2048;
      v223 = 1;
      *v224 = 2048;
      *&v224[2] = v32;
      v33 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v31, 16, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 42);
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v215[0]) = 0;
      if (__nwlog_fault(v33, type, v215))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v34 = __nwlog_obj();
          v35 = type[0];
          if (os_log_type_enabled(v34, type[0]))
          {
            v36 = v29[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v223 = 1;
            *v224 = 2048;
            *&v224[2] = v36;
            v37 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_59:
            _os_log_impl(&dword_181A37000, v34, v35, v37, buf, 0x2Au);
          }
        }

        else if (LOBYTE(v215[0]) == 1)
        {
          v38 = __nw_create_backtrace_string();
          v34 = __nwlog_obj();
          v35 = type[0];
          v39 = os_log_type_enabled(v34, type[0]);
          if (v38)
          {
            if (v39)
            {
              v40 = v29[2];
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v223 = 1;
              *v224 = 2048;
              *&v224[2] = v40;
              *&v224[10] = 2082;
              *&v224[12] = v38;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v38);
            goto LABEL_60;
          }

          if (v39)
          {
            v42 = v29[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v223 = 1;
            *v224 = 2048;
            *&v224[2] = v42;
            v37 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_59;
          }
        }

        else
        {
          v34 = __nwlog_obj();
          v35 = type[0];
          if (os_log_type_enabled(v34, type[0]))
          {
            v41 = v29[2];
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v223 = 1;
            *v224 = 2048;
            *&v224[2] = v41;
            v37 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      if (v33)
      {
        free(v33);
      }

      v29[2] = 0;
      goto LABEL_63;
    }

    v88 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
    v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null webtransport_session", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v215[0]) = 0;
    if (!__nwlog_fault(v84, type, v215))
    {
      goto LABEL_186;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (os_log_type_enabled(v85, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v87 = "%{public}s called with null webtransport_session";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (LOBYTE(v215[0]) != 1)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (os_log_type_enabled(v85, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v87 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    v95 = __nw_create_backtrace_string();
    v85 = __nwlog_obj();
    v86 = type[0];
    v98 = os_log_type_enabled(v85, type[0]);
    if (!v95)
    {
      if (v98)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v87 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v98)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = v95;
      v97 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_160;
    }

    goto LABEL_161;
  }

  v83 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
  v84 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null protocol", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v215[0]) = 0;
  if (!__nwlog_fault(v84, type, v215))
  {
    goto LABEL_186;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (LOBYTE(v215[0]) != 1)
    {
      v85 = __nwlog_obj();
      v86 = type[0];
      if (os_log_type_enabled(v85, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v87 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    v95 = __nw_create_backtrace_string();
    v85 = __nwlog_obj();
    v86 = type[0];
    v96 = os_log_type_enabled(v85, type[0]);
    if (!v95)
    {
      if (v96)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
        v87 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_185;
      }

      goto LABEL_186;
    }

    if (v96)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = v95;
      v97 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_160:
      _os_log_impl(&dword_181A37000, v85, v86, v97, buf, 0x16u);
    }

LABEL_161:
    free(v95);
    goto LABEL_186;
  }

  v85 = __nwlog_obj();
  v86 = type[0];
  if (os_log_type_enabled(v85, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_remove_listen_handler";
    v87 = "%{public}s called with null protocol";
LABEL_185:
    _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0xCu);
  }

LABEL_186:
  if (v84)
  {
    free(v84);
  }

  return 0;
}

BOOL nw_protocol_webtransport_session_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_add_listen_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_46;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_46;
        }

        *buf = 136446210;
        v29 = "nw_protocol_webtransport_session_add_listen_handler";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_45;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v20 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v20)
        {
          goto LABEL_46;
        }

        *buf = 136446210;
        v29 = "nw_protocol_webtransport_session_add_listen_handler";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_45;
      }

      if (v20)
      {
        *buf = 136446466;
        v29 = "nw_protocol_webtransport_session_add_listen_handler";
        v30 = 2082;
        v31 = backtrace_string;
        v21 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_33:
        _os_log_impl(&dword_181A37000, v10, v11, v21, buf, 0x16u);
      }

LABEL_34:
      free(backtrace_string);
      goto LABEL_46;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_add_listen_handler";
    v12 = "%{public}s called with null protocol";
LABEL_45:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
LABEL_46:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_add_listen_handler";
    v9 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v13, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &type, &v26))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v29 = "nw_protocol_webtransport_session_add_listen_handler";
      v12 = "%{public}s called with null webtransport_session";
      goto LABEL_45;
    }

    if (v26 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v29 = "nw_protocol_webtransport_session_add_listen_handler";
      v12 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v22 = os_log_type_enabled(v10, type);
    if (backtrace_string)
    {
      if (v22)
      {
        *buf = 136446466;
        v29 = "nw_protocol_webtransport_session_add_listen_handler";
        v30 = 2082;
        v31 = backtrace_string;
        v21 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (!v22)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v29 = "nw_protocol_webtransport_session_add_listen_handler";
    v12 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_45;
  }

  if ((handle[145] & 2) == 0 && gLogDatapath == 1)
  {
    v14 = a2;
    v15 = a3;
    v16 = __nwlog_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    a3 = v15;
    a2 = v14;
    if (v17)
    {
      v18 = handle[123];
      *buf = 136446978;
      v29 = "nw_protocol_webtransport_session_add_listen_handler";
      v30 = 2082;
      v31 = (handle + 124);
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v18;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      a3 = v15;
      a2 = v14;
    }
  }

  if (*(handle + 53))
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v6 = handle[123];
        *buf = 136446978;
        v29 = "nw_protocol_webtransport_session_add_listen_handler";
        v30 = 2082;
        v31 = (handle + 124);
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        v35 = v6;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Already have a listen handler, ignoring add", buf, 0x26u);
        return 0;
      }

      return result;
    }

    return 0;
  }

  *(handle + 53) = a2;
  a2->protocol_handler = handle;
  if (a3)
  {
    *(handle + 580) |= 8u;
    v7 = a2;
    nw_protocol_remove_instance(handle);
    a2 = v7;
  }

  if ((handle[145] & 2) == 0 && gLogDatapath == 1)
  {
    v23 = a2;
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = handle[123];
      *buf = 136447234;
      v29 = "nw_protocol_webtransport_session_add_listen_handler";
      v30 = 2082;
      v31 = (handle + 124);
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v25;
      v36 = 2048;
      v37 = v23;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol listen handler %p", buf, 0x30u);
    }
  }

  return 1;
}

uint64_t nw_protocol_webtransport_session_copy_info(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if ((*(v2 + 580) & 2) == 0 && gLogDatapath == 1)
      {
        v10 = a2;
        v11 = a1;
        v12 = __nwlog_obj();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        a2 = v10;
        v14 = v13;
        a1 = v11;
        if (v14)
        {
          v15 = *(v2 + 492);
          *buf = 136446978;
          v23 = "nw_protocol_webtransport_session_copy_info";
          v24 = 2082;
          v25 = (v2 + 496);
          v26 = 2080;
          v27 = " ";
          v28 = 1024;
          v29 = v15;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
          a1 = v11;
          a2 = v10;
        }
      }

      return nw_protocol_common_copy_info(a1, a2);
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_webtransport_session_copy_info";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_session", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v5, &type, &v20))
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
        v23 = "nw_protocol_webtransport_session_copy_info";
        v8 = "%{public}s called with null webtransport_session";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v20 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_webtransport_session_copy_info";
        v8 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v23 = "nw_protocol_webtransport_session_copy_info";
        v8 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v19)
    {
      *buf = 136446466;
      v23 = "nw_protocol_webtransport_session_copy_info";
      v24 = 2082;
      v25 = backtrace_string;
      v18 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_webtransport_session_copy_info";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v5, &type, &v20))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v20 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_webtransport_session_copy_info";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v23 = "nw_protocol_webtransport_session_copy_info";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v17)
    {
      *buf = 136446466;
      v23 = "nw_protocol_webtransport_session_copy_info";
      v24 = 2082;
      v25 = backtrace_string;
      v18 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v18, buf, 0x16u);
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
    v23 = "nw_protocol_webtransport_session_copy_info";
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

void nw_protocol_webtransport_session_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_output_finished";
    v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v5, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_session_output_finished";
      v9 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
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
          v18 = "nw_protocol_webtransport_session_output_finished";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v6)
        {
          return;
        }

LABEL_36:
        free(v6);
        return;
      }

      if (!v12)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_session_output_finished";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_session_output_finished";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v4 = handle[123];
        *buf = 136446978;
        v18 = "nw_protocol_webtransport_session_output_finished";
        v19 = 2082;
        v20 = (handle + 124);
        v21 = 2080;
        v22 = " ";
        v23 = 1024;
        v24 = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    return;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_webtransport_session_output_finished";
  v6 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_output_finished";
    v9 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_output_finished";
    v9 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_output_finished";
    v9 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_webtransport_session_output_finished";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_36;
  }
}

void nw_protocol_webtransport_session_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_input_finished";
    v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v3, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v4, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_session_input_finished";
      v7 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v12 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_protocol_webtransport_session_input_finished";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v4)
        {
          return;
        }

LABEL_37:
        free(v4);
        return;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_session_input_finished";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v18 = "nw_protocol_webtransport_session_input_finished";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = handle[123];
        *buf = 136446978;
        v18 = "nw_protocol_webtransport_session_input_finished";
        v19 = 2082;
        v20 = (handle + 124);
        v21 = 2080;
        v22 = " ";
        v23 = 1024;
        v24 = v10;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_webtransport_session_input_finished";
  v4 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v8, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v4, &type, &v15))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_input_finished";
    v7 = "%{public}s called with null webtransport_session";
    goto LABEL_35;
  }

  if (v15 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_input_finished";
    v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_35;
  }

  v13 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v14 = os_log_type_enabled(v5, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v18 = "nw_protocol_webtransport_session_input_finished";
    v7 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_webtransport_session_input_finished";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v4)
  {
    goto LABEL_37;
  }
}

void nw_protocol_webtransport_session_notify(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_session_notify";
    v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null protocol", buf, 12);
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v5, &type, &v21))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_session_notify";
      v8 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v18 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_protocol_webtransport_session_notify";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v5)
        {
          return;
        }

LABEL_38:
        free(v5);
        return;
      }

      if (!v18)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_session_notify";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_session_notify";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_37;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if ((*(v3 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v10 = a3;
      v11 = a2;
      v12 = a1;
      v13 = __nwlog_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      a2 = v11;
      a3 = v10;
      v15 = v14;
      a1 = v12;
      if (v15)
      {
        v16 = *(v3 + 492);
        *buf = 136446978;
        v24 = "nw_protocol_webtransport_session_notify";
        v25 = 2082;
        v26 = (v3 + 496);
        v27 = 2080;
        v28 = " ";
        v29 = 1024;
        v30 = v16;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        a1 = v12;
        a2 = v11;
        a3 = v10;
      }
    }

    nw_protocol_notify_quiet(*(a1 + 48), a2, a3);
    return;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_webtransport_session_notify";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null webtransport_session", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v5, &type, &v21))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_session_notify";
    v8 = "%{public}s called with null webtransport_session";
    goto LABEL_36;
  }

  if (v21 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_session_notify";
    v8 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_36;
  }

  v19 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v20 = os_log_type_enabled(v6, type);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_session_notify";
    v8 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_36;
  }

  if (v20)
  {
    *buf = 136446466;
    v24 = "nw_protocol_webtransport_session_notify";
    v25 = 2082;
    v26 = v19;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v5)
  {
    goto LABEL_38;
  }
}